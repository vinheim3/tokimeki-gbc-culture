; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $096", ROMX[$4000], BANK[$96]

	db $fc                                           ; $4000: $fc
	ldh a, [c]                                       ; $4001: $f2
	nop                                              ; $4002: $00
	ld d, e                                          ; $4003: $53
	xor h                                            ; $4004: $ac
	ldh a, [$ce]                                     ; $4005: $f0 $ce
	ld h, e                                          ; $4007: $63
	dec sp                                           ; $4008: $3b
	ccf                                              ; $4009: $3f
	pop af                                           ; $400a: $f1
	db $28, $f0                                      ; $400b: $28 $f0
	ld b, h                                          ; $400d: $44
	ld b, a                                          ; $400e: $47
	ldh a, [$e8]                                     ; $400f: $f0 $e8
	dec sp                                           ; $4011: $3b
	dec a                                            ; $4012: $3d
	and e                                            ; $4013: $a3
	ld a, [hl-]                                      ; $4014: $3a
	inc [hl]                                         ; $4015: $34
	ld l, e                                          ; $4016: $6b
	ccf                                              ; $4017: $3f
	sbc d                                            ; $4018: $9a
	xor l                                            ; $4019: $ad
	ld l, a                                          ; $401a: $6f
	ld b, d                                          ; $401b: $42
	ldh a, [$f6]                                     ; $401c: $f0 $f6
	pop af                                           ; $401e: $f1
	inc [hl]                                         ; $401f: $34
	ldh a, [c]                                       ; $4020: $f2
	pop bc                                           ; $4021: $c1
	pop af                                           ; $4022: $f1
	ld a, d                                          ; $4023: $7a
	ldh a, [$1f]                                     ; $4024: $f0 $1f
	ldh a, [$6e]                                     ; $4026: $f0 $6e
	ld d, e                                          ; $4028: $53
	xor e                                            ; $4029: $ab
	ld d, d                                          ; $402a: $52
	ld b, h                                          ; $402b: $44
	ldh a, [$75]                                     ; $402c: $f0 $75
	ldh a, [c]                                       ; $402e: $f2
	db $fd                                           ; $402f: $fd
	ldh a, [$d0]                                     ; $4030: $f0 $d0
	pop af                                           ; $4032: $f1
	cp [hl]                                          ; $4033: $be
	ld b, h                                          ; $4034: $44
	dec sp                                           ; $4035: $3b
	dec a                                            ; $4036: $3d
	ld b, d                                          ; $4037: $42
	ld c, h                                          ; $4038: $4c
	and b                                            ; $4039: $a0
	ldh a, [$f4]                                     ; $403a: $f0 $f4
	ld e, [hl]                                       ; $403c: $5e
	ccf                                              ; $403d: $3f
	ld a, [hl-]                                      ; $403e: $3a
	ld e, b                                          ; $403f: $58
	db $38, $a0                                      ; $4040: $38 $a0
	ldh a, [$fc]                                     ; $4042: $f0 $fc
	jr c, jr_096_408d                                ; $4044: $38 $47

	ld c, e                                          ; $4046: $4b
	ldh a, [$6f]                                     ; $4047: $f0 $6f
	dec sp                                           ; $4049: $3b
	dec a                                            ; $404a: $3d
	ld e, l                                          ; $404b: $5d
	ld e, d                                          ; $404c: $5a
	xor e                                            ; $404d: $ab
	ldh a, [$1f]                                     ; $404e: $f0 $1f
	ldh a, [$6e]                                     ; $4050: $f0 $6e
	ld b, d                                          ; $4052: $42
	ldh a, [$c3]                                     ; $4053: $f0 $c3
	ld e, c                                          ; $4055: $59
	ld l, c                                          ; $4056: $69
	ldh a, [rAUD4LEN]                                ; $4057: $f0 $20
	ldh a, [rSC]                                     ; $4059: $f0 $02
	ld h, l                                          ; $405b: $65
	ldh a, [rAUD4POLY]                               ; $405c: $f0 $22
	ld e, c                                          ; $405e: $59
	ld d, e                                          ; $405f: $53
	xor e                                            ; $4060: $ab
	ldh a, [c]                                       ; $4061: $f2
	ld [bc], a                                       ; $4062: $02
	ldh a, [$7a]                                     ; $4063: $f0 $7a
	ld c, e                                          ; $4065: $4b
	db $f4                                           ; $4066: $f4
	xor c                                            ; $4067: $a9
	pop af                                           ; $4068: $f1
	rst SubAFromBC                                          ; $4069: $e7
	ld d, c                                          ; $406a: $51
	ld c, [hl]                                       ; $406b: $4e
	ld a, $3c                                        ; $406c: $3e $3c
	ldh a, [rAUD1LOW]                                ; $406e: $f0 $13
	jr c, jr_096_40d5                                ; $4070: $38 $63

	ld c, h                                          ; $4072: $4c
	ld c, b                                          ; $4073: $48
	add hl, bc                                       ; $4074: $09
	cpl                                              ; $4075: $2f
	ld b, e                                          ; $4076: $43
	ld l, e                                          ; $4077: $6b
	ld b, h                                          ; $4078: $44
	inc a                                            ; $4079: $3c
	ld a, [hl]                                       ; $407a: $7e
	ld d, l                                          ; $407b: $55
	inc de                                           ; $407c: $13
	ldh a, [rTAC]                                    ; $407d: $f0 $07
	inc a                                            ; $407f: $3c
	ld d, b                                          ; $4080: $50
	ld a, [hl-]                                      ; $4081: $3a
	inc a                                            ; $4082: $3c
	dec sp                                           ; $4083: $3b
	dec a                                            ; $4084: $3d
	ld e, l                                          ; $4085: $5d
	ld e, d                                          ; $4086: $5a
	xor h                                            ; $4087: $ac
	ldh a, [$f6]                                     ; $4088: $f0 $f6
	pop af                                           ; $408a: $f1
	inc [hl]                                         ; $408b: $34
	ld b, d                                          ; $408c: $42

jr_096_408d:
	pop af                                           ; $408d: $f1
	ld l, c                                          ; $408e: $69
	ldh a, [hDisp1_OBP0]                                     ; $408f: $f0 $93
	ld c, e                                          ; $4091: $4b
	ldh a, [c]                                       ; $4092: $f2
	dec c                                            ; $4093: $0d
	ld d, b                                          ; $4094: $50
	ld c, l                                          ; $4095: $4d
	dec a                                            ; $4096: $3d
	ld b, l                                          ; $4097: $45
	add hl, sp                                       ; $4098: $39
	ld b, h                                          ; $4099: $44
	xor b                                            ; $409a: $a8
	db $ec                                           ; $409b: $ec
	and $48                                          ; $409c: $e6 $48
	add a                                            ; $409e: $87
	ldh a, [$5b]                                     ; $409f: $f0 $5b
	ldh a, [$5e]                                     ; $40a1: $f0 $5e
	and c                                            ; $40a3: $a1
	xor $20                                          ; $40a4: $ee $20
	ld l, a                                          ; $40a6: $6f
	inc [hl]                                         ; $40a7: $34
	ld a, a                                          ; $40a8: $7f
	ld h, d                                          ; $40a9: $62
	ldh a, [rHDMA5]                                  ; $40aa: $f0 $55
	dec sp                                           ; $40ac: $3b
	ccf                                              ; $40ad: $3f
	inc de                                           ; $40ae: $13
	jr c, jr_096_40ee                                ; $40af: $38 $3d

	ld b, d                                          ; $40b1: $42
	ld c, h                                          ; $40b2: $4c
	dec [hl]                                         ; $40b3: $35
	ld e, d                                          ; $40b4: $5a
	add hl, sp                                       ; $40b5: $39
	ld a, [hl-]                                      ; $40b6: $3a
	dec sp                                           ; $40b7: $3b
	dec a                                            ; $40b8: $3d
	ld b, d                                          ; $40b9: $42
	and c                                            ; $40ba: $a1
	cpl                                              ; $40bb: $2f
	ld b, e                                          ; $40bc: $43
	ldh a, [$f7]                                     ; $40bd: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $40bf: $f0 $17
	ld b, d                                          ; $40c1: $42
	ldh a, [rAUD2LOW]                                ; $40c2: $f0 $18
	pop af                                           ; $40c4: $f1
	ld l, d                                          ; $40c5: $6a
	ld c, e                                          ; $40c6: $4b
	inc de                                           ; $40c7: $13
	push af                                          ; $40c8: $f5
	rla                                              ; $40c9: $17
	pop af                                           ; $40ca: $f1
	jr nc, jr_096_4117                               ; $40cb: $30 $4a

	ld e, h                                          ; $40cd: $5c
	dec a                                            ; $40ce: $3d
	ld l, h                                          ; $40cf: $6c
	dec a                                            ; $40d0: $3d
	jr c, jr_096_4117                                ; $40d1: $38 $44

	ld b, l                                          ; $40d3: $45
	and b                                            ; $40d4: $a0

jr_096_40d5:
	ldh a, [rOCPD]                                   ; $40d5: $f0 $6b
	inc [hl]                                         ; $40d7: $34
	db $ed                                           ; $40d8: $ed
	ld b, c                                          ; $40d9: $41
	and c                                            ; $40da: $a1
	cpl                                              ; $40db: $2f
	ld b, e                                          ; $40dc: $43
	ld b, [hl]                                       ; $40dd: $46
	ld [hl], h                                       ; $40de: $74
	xor b                                            ; $40df: $a8
	ld b, l                                          ; $40e0: $45
	ld d, l                                          ; $40e1: $55
	sub d                                            ; $40e2: $92
	adc [hl]                                         ; $40e3: $8e
	dec sp                                           ; $40e4: $3b
	dec a                                            ; $40e5: $3d
	ld c, h                                          ; $40e6: $4c
	and b                                            ; $40e7: $a0
	ld b, l                                          ; $40e8: $45
	inc a                                            ; $40e9: $3c
	dec sp                                           ; $40ea: $3b
	dec a                                            ; $40eb: $3d
	ld [hl], h                                       ; $40ec: $74
	xor b                                            ; $40ed: $a8

jr_096_40ee:
	ld d, h                                          ; $40ee: $54
	ld c, l                                          ; $40ef: $4d
	ld c, d                                          ; $40f0: $4a
	db $f4                                           ; $40f1: $f4
	ld a, $f0                                        ; $40f2: $3e $f0
	rst GetHLinHL                                          ; $40f4: $cf
	ld c, c                                          ; $40f5: $49
	pop af                                           ; $40f6: $f1
	rst $38                                          ; $40f7: $ff
	ldh a, [c]                                       ; $40f8: $f2
	ld l, e                                          ; $40f9: $6b
	ld c, d                                          ; $40fa: $4a
	ld e, h                                          ; $40fb: $5c
	ld c, [hl]                                       ; $40fc: $4e
	ld h, e                                          ; $40fd: $63
	and b                                            ; $40fe: $a0
	cpl                                              ; $40ff: $2f
	ld b, e                                          ; $4100: $43
	pop af                                           ; $4101: $f1
	rst $38                                          ; $4102: $ff
	ldh a, [c]                                       ; $4103: $f2
	ld l, e                                          ; $4104: $6b
	and c                                            ; $4105: $a1
	ld e, [hl]                                       ; $4106: $5e
	ld [hl], $3a                                     ; $4107: $36 $3a
	inc [hl]                                         ; $4109: $34
	db $eb                                           ; $410a: $eb
	ld b, d                                          ; $410b: $42
	ld b, d                                          ; $410c: $42
	xor b                                            ; $410d: $a8
	db $ed                                           ; $410e: $ed
	ld d, a                                          ; $410f: $57
	ld b, [hl]                                       ; $4110: $46
	ld d, a                                          ; $4111: $57
	ld d, e                                          ; $4112: $53
	ld c, c                                          ; $4113: $49
	add hl, sp                                       ; $4114: $39
	and b                                            ; $4115: $a0
	cpl                                              ; $4116: $2f

jr_096_4117:
	ld b, e                                          ; $4117: $43
	db $eb                                           ; $4118: $eb
	inc a                                            ; $4119: $3c
	xor h                                            ; $411a: $ac
	db $ec                                           ; $411b: $ec
	ldh [$ec], a                                     ; $411c: $e0 $ec
	inc h                                            ; $411e: $24
	inc de                                           ; $411f: $13
	db $ec                                           ; $4120: $ec
	ret c                                            ; $4121: $d8

	inc a                                            ; $4122: $3c
	and b                                            ; $4123: $a0
	cpl                                              ; $4124: $2f
	ld b, e                                          ; $4125: $43
	ld c, d                                          ; $4126: $4a
	ld c, a                                          ; $4127: $4f
	inc [hl]                                         ; $4128: $34
	db $eb                                           ; $4129: $eb
	dec a                                            ; $412a: $3d
	inc de                                           ; $412b: $13
	pop af                                           ; $412c: $f1
	ld a, h                                          ; $412d: $7c
	ld a, c                                          ; $412e: $79
	ld c, [hl]                                       ; $412f: $4e
	di                                               ; $4130: $f3
	ld [hl], h                                       ; $4131: $74
	push af                                          ; $4132: $f5
	ld d, $ec                                        ; $4133: $16 $ec
	ret c                                            ; $4135: $d8

	ld b, l                                          ; $4136: $45
	ld a, [hl-]                                      ; $4137: $3a
	xor $10                                          ; $4138: $ee $10
	xor b                                            ; $413a: $a8
	ld [hl-], a                                      ; $413b: $32
	pop af                                           ; $413c: $f1
	ld de, $ee42                                     ; $413d: $11 $42 $ee
	ld d, $62                                        ; $4140: $16 $62
	ldh a, [$78]                                     ; $4142: $f0 $78
	ld e, e                                          ; $4144: $5b
	ld c, [hl]                                       ; $4145: $4e
	adc l                                            ; $4146: $8d
	inc sp                                           ; $4147: $33
	add hl, bc                                       ; $4148: $09
	cpl                                              ; $4149: $2f
	ld b, e                                          ; $414a: $43
	ld l, d                                          ; $414b: $6a
	ldh a, [$d3]                                     ; $414c: $f0 $d3
	ld c, e                                          ; $414e: $4b
	ld l, [hl]                                       ; $414f: $6e
	ld [hl], c                                       ; $4150: $71
	ccf                                              ; $4151: $3f
	ld h, h                                          ; $4152: $64
	ld d, h                                          ; $4153: $54
	add hl, sp                                       ; $4154: $39
	and b                                            ; $4155: $a0
	add hl, bc                                       ; $4156: $09
	cpl                                              ; $4157: $2f
	ld b, e                                          ; $4158: $43
	ld l, d                                          ; $4159: $6a
	ldh a, [rAUD1HIGH]                               ; $415a: $f0 $14
	ld b, d                                          ; $415c: $42
	db $eb                                           ; $415d: $eb
	cpl                                              ; $415e: $2f
	ld c, e                                          ; $415f: $4b
	inc de                                           ; $4160: $13
	ld l, b                                          ; $4161: $68
	pop af                                           ; $4162: $f1
	sbc h                                            ; $4163: $9c
	ld a, [hl-]                                      ; $4164: $3a
	ld b, d                                          ; $4165: $42
	ld c, d                                          ; $4166: $4a
	inc [hl]                                         ; $4167: $34
	pop hl                                           ; $4168: $e1
	ldh a, [rSTAT]                                   ; $4169: $f0 $41
	ld c, e                                          ; $416b: $4b
	ld l, d                                          ; $416c: $6a
	ld l, b                                          ; $416d: $68
	inc de                                           ; $416e: $13
	ldh a, [rHDMA1]                                  ; $416f: $f0 $51
	dec sp                                           ; $4171: $3b
	ccf                                              ; $4172: $3f
	ld e, h                                          ; $4173: $5c
	ccf                                              ; $4174: $3f
	ld c, [hl]                                       ; $4175: $4e
	ld l, h                                          ; $4176: $6c
	dec a                                            ; $4177: $3d
	jr c, jr_096_41be                                ; $4178: $38 $44

	ld a, [hl-]                                      ; $417a: $3a
	and b                                            ; $417b: $a0
	ld l, [hl]                                       ; $417c: $6e
	ld [hl], h                                       ; $417d: $74
	inc [hl]                                         ; $417e: $34
	ld h, h                                          ; $417f: $64
	ld c, e                                          ; $4180: $4b
	ld b, l                                          ; $4181: $45
	add hl, sp                                       ; $4182: $39
	and b                                            ; $4183: $a0
	cpl                                              ; $4184: $2f
	ld b, e                                          ; $4185: $43
	ld l, e                                          ; $4186: $6b
	ld b, h                                          ; $4187: $44
	ld b, l                                          ; $4188: $45
	inc [hl]                                         ; $4189: $34
	db $ec                                           ; $418a: $ec
	di                                               ; $418b: $f3
	and b                                            ; $418c: $a0
	db $ed                                           ; $418d: $ed
	ld d, a                                          ; $418e: $57
	inc de                                           ; $418f: $13
	db $eb                                           ; $4190: $eb
	cpl                                              ; $4191: $2f
	ld b, h                                          ; $4192: $44
	ld c, h                                          ; $4193: $4c
	xor b                                            ; $4194: $a8
	ldh a, [rRP]                                     ; $4195: $f0 $56
	ld b, a                                          ; $4197: $47
	ld c, e                                          ; $4198: $4b
	inc a                                            ; $4199: $3c
	ld a, [hl-]                                      ; $419a: $3a
	ld h, e                                          ; $419b: $63
	ld a, [hl-]                                      ; $419c: $3a
	jr c, jr_096_41f2                                ; $419d: $38 $53

	xor h                                            ; $419f: $ac
	pop af                                           ; $41a0: $f1
	or [hl]                                          ; $41a1: $b6
	ld c, a                                          ; $41a2: $4f
	ldh a, [rHDMA4]                                  ; $41a3: $f0 $54
	ldh a, [$cf]                                     ; $41a5: $f0 $cf
	ld c, a                                          ; $41a7: $4f
	ld d, b                                          ; $41a8: $50
	dec sp                                           ; $41a9: $3b
	dec a                                            ; $41aa: $3d
	ld b, l                                          ; $41ab: $45
	and b                                            ; $41ac: $a0
	cpl                                              ; $41ad: $2f
	ld b, e                                          ; $41ae: $43
	ld b, b                                          ; $41af: $40
	add hl, sp                                       ; $41b0: $39
	inc a                                            ; $41b1: $3c
	ld b, l                                          ; $41b2: $45
	xor b                                            ; $41b3: $a8
	db $eb                                           ; $41b4: $eb
	adc [hl]                                         ; $41b5: $8e
	and b                                            ; $41b6: $a0
	ldh a, [$08]                                     ; $41b7: $f0 $08
	ld d, b                                          ; $41b9: $50
	inc [hl]                                         ; $41ba: $34
	ld [hl], d                                       ; $41bb: $72
	dec a                                            ; $41bc: $3d
	ld d, d                                          ; $41bd: $52

jr_096_41be:
	ld e, [hl]                                       ; $41be: $5e
	xor b                                            ; $41bf: $a8
	ld d, d                                          ; $41c0: $52
	ld b, h                                          ; $41c1: $44

jr_096_41c2:
	inc [hl]                                         ; $41c2: $34
	xor $1e                                          ; $41c3: $ee $1e
	pop af                                           ; $41c5: $f1
	rst SubAFromHL                                          ; $41c6: $d7
	ldh a, [$0d]                                     ; $41c7: $f0 $0d
	ld e, b                                          ; $41c9: $58
	and b                                            ; $41ca: $a0
	ld b, b                                          ; $41cb: $40
	ld b, c                                          ; $41cc: $41
	ld a, [hl-]                                      ; $41cd: $3a
	sbc d                                            ; $41ce: $9a
	ld c, e                                          ; $41cf: $4b
	ld a, [hl-]                                      ; $41d0: $3a
	jr c, jr_096_4217                                ; $41d1: $38 $44

	ld e, a                                          ; $41d3: $5f
	add hl, sp                                       ; $41d4: $39
	ld d, e                                          ; $41d5: $53
	xor h                                            ; $41d6: $ac
	ld a, d                                          ; $41d7: $7a
	ld d, a                                          ; $41d8: $57
	ld b, a                                          ; $41d9: $47
	db $f4                                           ; $41da: $f4
	xor b                                            ; $41db: $a8
	ld d, e                                          ; $41dc: $53
	ldh a, [$c9]                                     ; $41dd: $f0 $c9
	jr c, jr_096_4220                                ; $41df: $38 $3f

	dec a                                            ; $41e1: $3d
	ld d, b                                          ; $41e2: $50
	xor h                                            ; $41e3: $ac
	add d                                            ; $41e4: $82
	dec sp                                           ; $41e5: $3b
	ccf                                              ; $41e6: $3f
	ld d, l                                          ; $41e7: $55
	ld c, l                                          ; $41e8: $4d
	ldh a, [c]                                       ; $41e9: $f2
	add d                                            ; $41ea: $82
	ld e, [hl]                                       ; $41eb: $5e
	and b                                            ; $41ec: $a0
	cpl                                              ; $41ed: $2f
	ld b, e                                          ; $41ee: $43
	ld l, e                                          ; $41ef: $6b
	ld c, d                                          ; $41f0: $4a
	ld b, h                                          ; $41f1: $44

jr_096_41f2:
	ld b, l                                          ; $41f2: $45
	and b                                            ; $41f3: $a0
	pop af                                           ; $41f4: $f1
	or [hl]                                          ; $41f5: $b6
	ld b, d                                          ; $41f6: $42
	ld h, d                                          ; $41f7: $62
	ldh a, [$08]                                     ; $41f8: $f0 $08
	ld b, c                                          ; $41fa: $41
	ld b, d                                          ; $41fb: $42
	ldh a, [rHDMA4]                                  ; $41fc: $f0 $54
	ld a, $44                                        ; $41fe: $3e $44
	ld e, l                                          ; $4200: $5d
	inc de                                           ; $4201: $13
	ldh a, [rTAC]                                    ; $4202: $f0 $07
	ld e, l                                          ; $4204: $5d
	ccf                                              ; $4205: $3f
	rst SubAFromDE                                          ; $4206: $df
	ld b, l                                          ; $4207: $45
	dec [hl]                                         ; $4208: $35
	ld hl, $1323                                     ; $4209: $21 $23 $13
	jr nz, jr_096_41c2                               ; $420c: $20 $b4

jr_096_420e:
	inc [hl]                                         ; $420e: $34
	ld d, d                                          ; $420f: $52
	dec a                                            ; $4210: $3d
	xor b                                            ; $4211: $a8
	ld c, e                                          ; $4212: $4b
	ld e, c                                          ; $4213: $59
	dec sp                                           ; $4214: $3b
	inc [hl]                                         ; $4215: $34
	ld c, e                                          ; $4216: $4b

jr_096_4217:
	dec sp                                           ; $4217: $3b
	ld c, e                                          ; $4218: $4b
	dec sp                                           ; $4219: $3b
	ld c, e                                          ; $421a: $4b
	dec sp                                           ; $421b: $3b
	ld c, b                                          ; $421c: $48
	and b                                            ; $421d: $a0
	cpl                                              ; $421e: $2f
	ld b, e                                          ; $421f: $43

jr_096_4220:
	ldh a, [c]                                       ; $4220: $f2
	ld a, d                                          ; $4221: $7a
	ld b, c                                          ; $4222: $41
	ld c, d                                          ; $4223: $4a
	ld a, $52                                        ; $4224: $3e $52
	ld e, [hl]                                       ; $4226: $5e
	and b                                            ; $4227: $a0
	db $ed                                           ; $4228: $ed
	ld d, a                                          ; $4229: $57
	inc de                                           ; $422a: $13
	db $eb                                           ; $422b: $eb
	cpl                                              ; $422c: $2f
	ld b, h                                          ; $422d: $44
	ld c, h                                          ; $422e: $4c
	xor b                                            ; $422f: $a8
	pop af                                           ; $4230: $f1
	cp l                                             ; $4231: $bd
	ldh a, [rAUD1HIGH]                               ; $4232: $f0 $14
	ld b, d                                          ; $4234: $42
	sbc d                                            ; $4235: $9a
	ld b, h                                          ; $4236: $44
	ld d, e                                          ; $4237: $53
	xor h                                            ; $4238: $ac
	ldh a, [rOBP1]                                   ; $4239: $f0 $49
	ld d, l                                          ; $423b: $55
	ld d, d                                          ; $423c: $52
	jr c, @+$3d                                      ; $423d: $38 $3b

	ccf                                              ; $423f: $3f
	ld a, $52                                        ; $4240: $3e $52
	add hl, sp                                       ; $4242: $39
	ld b, l                                          ; $4243: $45
	and b                                            ; $4244: $a0
	ldh a, [$08]                                     ; $4245: $f0 $08
	ld d, b                                          ; $4247: $50
	inc [hl]                                         ; $4248: $34
	ld [hl], d                                       ; $4249: $72
	dec a                                            ; $424a: $3d
	ld d, d                                          ; $424b: $52
	ld e, [hl]                                       ; $424c: $5e
	xor b                                            ; $424d: $a8
	ld l, d                                          ; $424e: $6a
	ldh a, [rAUD1HIGH]                               ; $424f: $f0 $14
	ld c, a                                          ; $4251: $4f

jr_096_4252:
	ld b, [hl]                                       ; $4252: $46
	ld c, l                                          ; $4253: $4d
	ld b, h                                          ; $4254: $44
	ld c, b                                          ; $4255: $48
	and b                                            ; $4256: $a0
	db $f4                                           ; $4257: $f4
	dec h                                            ; $4258: $25
	ldh a, [rTAC]                                    ; $4259: $f0 $07
	ld b, a                                          ; $425b: $47
	pop af                                           ; $425c: $f1
	sbc $3b                                          ; $425d: $de $3b
	ccf                                              ; $425f: $3f
	ld c, [hl]                                       ; $4260: $4e
	ld b, c                                          ; $4261: $41
	ld b, h                                          ; $4262: $44
	xor b                                            ; $4263: $a8
	ld b, l                                          ; $4264: $45
	inc a                                            ; $4265: $3c
	dec sp                                           ; $4266: $3b
	dec a                                            ; $4267: $3d
	ld d, b                                          ; $4268: $50
	inc [hl]                                         ; $4269: $34
	ldh a, [c]                                       ; $426a: $f2
	ld a, [hl-]                                      ; $426b: $3a
	ldh a, [rTAC]                                    ; $426c: $f0 $07
	ldh a, [rHDMA1]                                  ; $426e: $f0 $51
	dec sp                                           ; $4270: $3b
	ccf                                              ; $4271: $3f
	inc de                                           ; $4272: $13
	jr c, jr_096_42b0                                ; $4273: $38 $3b

	ccf                                              ; $4275: $3f
	ld d, l                                          ; $4276: $55
	ld c, l                                          ; $4277: $4d
	ld a, [hl-]                                      ; $4278: $3a
	jr c, jr_096_42b7                                ; $4279: $38 $3c

	and c                                            ; $427b: $a1
	cpl                                              ; $427c: $2f
	ld b, e                                          ; $427d: $43
	jr c, jr_096_42d0                                ; $427e: $38 $50

	ld c, h                                          ; $4280: $4c
	ld e, [hl]                                       ; $4281: $5e
	ld b, l                                          ; $4282: $45
	and b                                            ; $4283: $a0
	pop af                                           ; $4284: $f1
	add hl, hl                                       ; $4285: $29
	ld a, $3c                                        ; $4286: $3e $3c
	dec sp                                           ; $4288: $3b
	dec a                                            ; $4289: $3d
	ld d, b                                          ; $428a: $50
	xor h                                            ; $428b: $ac
	jr c, jr_096_420e                                ; $428c: $38 $80

	ld c, d                                          ; $428e: $4a
	ld c, a                                          ; $428f: $4f
	add d                                            ; $4290: $82
	dec sp                                           ; $4291: $3b
	ccf                                              ; $4292: $3f
	ld d, l                                          ; $4293: $55
	ld c, l                                          ; $4294: $4d
	ldh a, [c]                                       ; $4295: $f2
	add d                                            ; $4296: $82
	ld e, [hl]                                       ; $4297: $5e
	dec [hl]                                         ; $4298: $35
	ld hl, $1323                                     ; $4299: $21 $23 $13
	jr nz, jr_096_4252                               ; $429c: $20 $b4

	inc [hl]                                         ; $429e: $34
	ld d, d                                          ; $429f: $52
	dec a                                            ; $42a0: $3d
	xor b                                            ; $42a1: $a8
	ld c, e                                          ; $42a2: $4b
	ld e, c                                          ; $42a3: $59
	dec sp                                           ; $42a4: $3b
	inc [hl]                                         ; $42a5: $34
	ld c, e                                          ; $42a6: $4b
	ld c, e                                          ; $42a7: $4b
	ld c, e                                          ; $42a8: $4b
	ld c, e                                          ; $42a9: $4b
	ld c, e                                          ; $42aa: $4b
	ld c, e                                          ; $42ab: $4b
	ld c, b                                          ; $42ac: $48
	and b                                            ; $42ad: $a0
	cpl                                              ; $42ae: $2f
	ld b, e                                          ; $42af: $43

jr_096_42b0:
	jr c, jr_096_42ea                                ; $42b0: $38 $38

	pop af                                           ; $42b2: $f1
	cp $f2                                           ; $42b3: $fe $f2
	ccf                                              ; $42b5: $3f
	ld b, a                                          ; $42b6: $47

jr_096_42b7:
	ld a, $5f                                        ; $42b7: $3e $5f
	ld b, l                                          ; $42b9: $45
	and b                                            ; $42ba: $a0
	cpl                                              ; $42bb: $2f
	ld b, e                                          ; $42bc: $43
	pop af                                           ; $42bd: $f1
	cp l                                             ; $42be: $bd
	ldh a, [rAUD1HIGH]                               ; $42bf: $f0 $14
	inc [hl]                                         ; $42c1: $34
	add hl, sp                                       ; $42c2: $39
	ld c, [hl]                                       ; $42c3: $4e
	ld a, c                                          ; $42c4: $79

jr_096_42c5:
	ld e, [hl]                                       ; $42c5: $5e
	sub a                                            ; $42c6: $97
	xor b                                            ; $42c7: $a8
	db $ec                                           ; $42c8: $ec
	di                                               ; $42c9: $f3
	and b                                            ; $42ca: $a0
	ld b, b                                          ; $42cb: $40
	ld b, c                                          ; $42cc: $41
	ld a, [hl-]                                      ; $42cd: $3a
	ld b, a                                          ; $42ce: $47
	pop af                                           ; $42cf: $f1

jr_096_42d0:
	ld [hl-], a                                      ; $42d0: $32
	ld c, [hl]                                       ; $42d1: $4e
	ld d, h                                          ; $42d2: $54
	ld c, c                                          ; $42d3: $49
	ld c, e                                          ; $42d4: $4b
	xor h                                            ; $42d5: $ac
	ld a, [hl-]                                      ; $42d6: $3a
	jr c, jr_096_42c5                                ; $42d7: $38 $ec

	ret c                                            ; $42d9: $d8

	inc a                                            ; $42da: $3c
	and b                                            ; $42db: $a0
	cpl                                              ; $42dc: $2f
	ld b, e                                          ; $42dd: $43
	pop af                                           ; $42de: $f1
	ld [hl-], a                                      ; $42df: $32
	ld d, a                                          ; $42e0: $57
	dec a                                            ; $42e1: $3d
	ld d, l                                          ; $42e2: $55
	ld c, a                                          ; $42e3: $4f
	ld a, [hl-]                                      ; $42e4: $3a
	ld c, [hl]                                       ; $42e5: $4e
	adc l                                            ; $42e6: $8d
	xor b                                            ; $42e7: $a8
	pop af                                           ; $42e8: $f1
	cp l                                             ; $42e9: $bd

jr_096_42ea:
	ldh a, [rAUD1HIGH]                               ; $42ea: $f0 $14
	ld d, h                                          ; $42ec: $54
	ld c, l                                          ; $42ed: $4d
	ld e, e                                          ; $42ee: $5b
	ld d, [hl]                                       ; $42ef: $56
	ld c, b                                          ; $42f0: $48
	and b                                            ; $42f1: $a0
	ld d, d                                          ; $42f2: $52
	ld [hl], h                                       ; $42f3: $74
	inc [hl]                                         ; $42f4: $34
	ld b, b                                          ; $42f5: $40
	add hl, sp                                       ; $42f6: $39
	ldh a, [$d8]                                     ; $42f7: $f0 $d8
	ld d, e                                          ; $42f9: $53
	ld d, d                                          ; $42fa: $52
	ld a, [hl-]                                      ; $42fb: $3a
	jr c, @+$4c                                      ; $42fc: $38 $4a

	inc de                                           ; $42fe: $13
	ld d, l                                          ; $42ff: $55
	ld c, l                                          ; $4300: $4d
	ldh a, [c]                                       ; $4301: $f2
	add d                                            ; $4302: $82
	ld e, [hl]                                       ; $4303: $5e
	xor b                                            ; $4304: $a8
	ld c, e                                          ; $4305: $4b
	ld e, c                                          ; $4306: $59
	dec sp                                           ; $4307: $3b
	inc [hl]                                         ; $4308: $34
	ld c, e                                          ; $4309: $4b
	ld c, e                                          ; $430a: $4b
	ld c, e                                          ; $430b: $4b
	ld c, e                                          ; $430c: $4b
	ld c, e                                          ; $430d: $4b
	ld c, b                                          ; $430e: $48
	and b                                            ; $430f: $a0
	cpl                                              ; $4310: $2f
	ld b, e                                          ; $4311: $43
	xor $10                                          ; $4312: $ee $10
	xor $10                                          ; $4314: $ee $10
	and b                                            ; $4316: $a0
	ld b, [hl]                                       ; $4317: $46
	dec sp                                           ; $4318: $3b
	inc [hl]                                         ; $4319: $34
	ld d, $a8                                        ; $431a: $16 $a8
	ld d, h                                          ; $431c: $54
	ld c, l                                          ; $431d: $4d
	inc [hl]                                         ; $431e: $34
	pop af                                           ; $431f: $f1
	ld c, d                                          ; $4320: $4a
	ld e, l                                          ; $4321: $5d
	pop af                                           ; $4322: $f1
	inc b                                            ; $4323: $04
	dec sp                                           ; $4324: $3b
	ccf                                              ; $4325: $3f
	inc de                                           ; $4326: $13
	ld d, l                                          ; $4327: $55
	ld b, h                                          ; $4328: $44
	ld e, b                                          ; $4329: $58
	jr c, jr_096_4374                                ; $432a: $38 $48

	and b                                            ; $432c: $a0
	cpl                                              ; $432d: $2f
	ld b, e                                          ; $432e: $43
	ld b, [hl]                                       ; $432f: $46
	inc [hl]                                         ; $4330: $34
	ld b, [hl]                                       ; $4331: $46
	ld d, a                                          ; $4332: $57
	ld d, e                                          ; $4333: $53
	ld c, c                                          ; $4334: $49
	add hl, sp                                       ; $4335: $39
	xor b                                            ; $4336: $a8
	ldh a, [$29]                                     ; $4337: $f0 $29
	ld a, $38                                        ; $4339: $3e $38
	ld b, l                                          ; $433b: $45
	and b                                            ; $433c: $a0
	db $ed                                           ; $433d: $ed
	ld c, [hl]                                       ; $433e: $4e
	inc [hl]                                         ; $433f: $34
	ldh a, [rAUD2HIGH]                               ; $4340: $f0 $19
	ld b, a                                          ; $4342: $47
	ld c, b                                          ; $4343: $48
	and b                                            ; $4344: $a0
	cpl                                              ; $4345: $2f
	ld b, e                                          ; $4346: $43
	ldh a, [rAUD2HIGH]                               ; $4347: $f0 $19
	ld b, a                                          ; $4349: $47
	ld l, e                                          ; $434a: $6b
	and c                                            ; $434b: $a1
	jr c, jr_096_4382                                ; $434c: $38 $34

	jr c, jr_096_43ae                                ; $434e: $38 $5e

	xor h                                            ; $4350: $ac
	ld l, e                                          ; $4351: $6b
	ld c, d                                          ; $4352: $4a
	ld c, a                                          ; $4353: $4f
	ld a, [hl-]                                      ; $4354: $3a
	jr c, jr_096_43a1                                ; $4355: $38 $4a

	ld d, c                                          ; $4357: $51
	xor b                                            ; $4358: $a8
	ld a, $34                                        ; $4359: $3e $34
	db $eb                                           ; $435b: $eb
	ld e, d                                          ; $435c: $5a
	and b                                            ; $435d: $a0
	cpl                                              ; $435e: $2f
	ld b, e                                          ; $435f: $43
	ldh a, [rAUD2HIGH]                               ; $4360: $f0 $19
	ld b, a                                          ; $4362: $47
	ld c, b                                          ; $4363: $48
	inc [hl]                                         ; $4364: $34
	ld l, e                                          ; $4365: $6b
	ld b, h                                          ; $4366: $44
	ld e, a                                          ; $4367: $5f
	add hl, sp                                       ; $4368: $39
	and b                                            ; $4369: $a0
	cpl                                              ; $436a: $2f
	ld [hl], b                                       ; $436b: $70
	ld b, b                                          ; $436c: $40
	ld [hl], b                                       ; $436d: $70
	ld b, b                                          ; $436e: $40
	add hl, bc                                       ; $436f: $09
	cpl                                              ; $4370: $2f
	ld b, e                                          ; $4371: $43
	ld b, [hl]                                       ; $4372: $46
	ld c, l                                          ; $4373: $4d

jr_096_4374:
	inc [hl]                                         ; $4374: $34
	ldh a, [rAUD2HIGH]                               ; $4375: $f0 $19
	ld b, a                                          ; $4377: $47
	di                                               ; $4378: $f3
	ld c, c                                          ; $4379: $49
	ld d, e                                          ; $437a: $53
	inc de                                           ; $437b: $13
	sub [hl]                                         ; $437c: $96
	dec sp                                           ; $437d: $3b
	ccf                                              ; $437e: $3f
	ld c, [hl]                                       ; $437f: $4e
	sub a                                            ; $4380: $97
	xor b                                            ; $4381: $a8

jr_096_4382:
	ld d, h                                          ; $4382: $54
	ld c, l                                          ; $4383: $4d
	ld c, e                                          ; $4384: $4b
	db $ec                                           ; $4385: $ec
	rst SubAFromDE                                          ; $4386: $df
	ld b, d                                          ; $4387: $42
	db $ec                                           ; $4388: $ec
	ei                                               ; $4389: $fb
	inc de                                           ; $438a: $13
	sbc e                                            ; $438b: $9b
	db $ec                                           ; $438c: $ec
	ret c                                            ; $438d: $d8

	inc a                                            ; $438e: $3c
	dec [hl]                                         ; $438f: $35
	ld e, d                                          ; $4390: $5a
	ld c, l                                          ; $4391: $4d
	ld e, d                                          ; $4392: $5a
	ld c, l                                          ; $4393: $4d
	ld c, b                                          ; $4394: $48
	and b                                            ; $4395: $a0
	cpl                                              ; $4396: $2f
	ld [hl-], a                                      ; $4397: $32
	ld a, [hl-]                                      ; $4398: $3a
	inc [hl]                                         ; $4399: $34
	ld a, [hl-]                                      ; $439a: $3a
	ld b, c                                          ; $439b: $41
	inc a                                            ; $439c: $3c
	inc de                                           ; $439d: $13
	pop af                                           ; $439e: $f1
	sbc c                                            ; $439f: $99
	ld c, l                                          ; $43a0: $4d

jr_096_43a1:
	ld h, c                                          ; $43a1: $61
	ld d, [hl]                                       ; $43a2: $56
	add hl, sp                                       ; $43a3: $39
	ld a, [hl-]                                      ; $43a4: $3a
	ld c, b                                          ; $43a5: $48
	and e                                            ; $43a6: $a3
	ld d, h                                          ; $43a7: $54
	ld c, l                                          ; $43a8: $4d
	inc [hl]                                         ; $43a9: $34
	ld [$4ab5], a                                    ; $43aa: $ea $b5 $4a
	ld d, c                                          ; $43ad: $51

jr_096_43ae:
	xor b                                            ; $43ae: $a8
	ld e, d                                          ; $43af: $5a
	add hl, sp                                       ; $43b0: $39
	sub a                                            ; $43b1: $97
	and b                                            ; $43b2: $a0
	cpl                                              ; $43b3: $2f
	ld b, e                                          ; $43b4: $43
	ld b, [hl]                                       ; $43b5: $46
	inc [hl]                                         ; $43b6: $34
	ld b, [hl]                                       ; $43b7: $46
	ld d, a                                          ; $43b8: $57
	ld d, e                                          ; $43b9: $53
	ld c, c                                          ; $43ba: $49
	add hl, sp                                       ; $43bb: $39
	xor b                                            ; $43bc: $a8
	ld [hl-], a                                      ; $43bd: $32
	ld d, h                                          ; $43be: $54
	ld c, l                                          ; $43bf: $4d
	ld c, e                                          ; $43c0: $4b
	db $ed                                           ; $43c1: $ed
	ld a, [hl]                                       ; $43c2: $7e
	inc a                                            ; $43c3: $3c
	ld a, [hl-]                                      ; $43c4: $3a
	ld c, b                                          ; $43c5: $48
	and e                                            ; $43c6: $a3
	ld b, [hl]                                       ; $43c7: $46
	dec sp                                           ; $43c8: $3b
	inc [hl]                                         ; $43c9: $34
	ld d, $a8                                        ; $43ca: $16 $a8
	ld d, h                                          ; $43cc: $54
	ld c, l                                          ; $43cd: $4d
	inc [hl]                                         ; $43ce: $34
	xor $2a                                          ; $43cf: $ee $2a
	ld b, d                                          ; $43d1: $42
	add b                                            ; $43d2: $80
	jr c, jr_096_441f                                ; $43d3: $38 $4a

	ld b, a                                          ; $43d5: $47
	inc de                                           ; $43d6: $13
	ldh a, [$a5]                                     ; $43d7: $f0 $a5
	dec sp                                           ; $43d9: $3b
	dec a                                            ; $43da: $3d
	inc a                                            ; $43db: $3c
	ld d, b                                          ; $43dc: $50
	rst SubAFromDE                                          ; $43dd: $df
	ld h, e                                          ; $43de: $63
	and b                                            ; $43df: $a0
	add a                                            ; $43e0: $87
	ldh a, [$5b]                                     ; $43e1: $f0 $5b
	ldh a, [$5e]                                     ; $43e3: $f0 $5e
	ld b, h                                          ; $43e5: $44
	ld c, c                                          ; $43e6: $49
	ld c, e                                          ; $43e7: $4b
	ld [hl], a                                       ; $43e8: $77
	add hl, sp                                       ; $43e9: $39
	ld e, l                                          ; $43ea: $5d
	ld e, d                                          ; $43eb: $5a
	rla                                              ; $43ec: $17
	ldh a, [$0b]                                     ; $43ed: $f0 $0b
	pop af                                           ; $43ef: $f1
	cp [hl]                                          ; $43f0: $be
	ld d, e                                          ; $43f1: $53
	ld a, $f0                                        ; $43f2: $3e $f0
	ld c, l                                          ; $43f4: $4d
	ld c, l                                          ; $43f5: $4d
	dec a                                            ; $43f6: $3d
	ld c, c                                          ; $43f7: $49
	ld e, h                                          ; $43f8: $5c
	ld c, e                                          ; $43f9: $4b
	inc de                                           ; $43fa: $13
	ld d, c                                          ; $43fb: $51
	sbc l                                            ; $43fc: $9d
	add d                                            ; $43fd: $82
	jr c, jr_096_443a                                ; $43fe: $38 $3a

	ld e, b                                          ; $4400: $58
	jr c, jr_096_4448                                ; $4401: $38 $45

	and b                                            ; $4403: $a0
	cpl                                              ; $4404: $2f
	ld b, e                                          ; $4405: $43
	db $ec                                           ; $4406: $ec
	db $d3                                           ; $4407: $d3
	and c                                            ; $4408: $a1
	ret                                              ; $4409: $c9


	ld b, h                                          ; $440a: $44
	ld e, l                                          ; $440b: $5d
	xor h                                            ; $440c: $ac
	db $eb                                           ; $440d: $eb
	or l                                             ; $440e: $b5
	ld h, d                                          ; $440f: $62
	inc de                                           ; $4410: $13
	pop af                                           ; $4411: $f1
	adc c                                            ; $4412: $89
	ld [hl], c                                       ; $4413: $71
	ccf                                              ; $4414: $3f
	ld b, [hl]                                       ; $4415: $46
	ld c, [hl]                                       ; $4416: $4e
	ld b, d                                          ; $4417: $42
	ld b, l                                          ; $4418: $45
	ld c, b                                          ; $4419: $48
	and b                                            ; $441a: $a0
	cpl                                              ; $441b: $2f
	ld b, e                                          ; $441c: $43
	db $eb                                           ; $441d: $eb
	or l                                             ; $441e: $b5

jr_096_441f:
	ld c, e                                          ; $441f: $4b
	inc de                                           ; $4420: $13
	ldh a, [$29]                                     ; $4421: $f0 $29
	ld a, $38                                        ; $4423: $3e $38
	ld b, c                                          ; $4425: $41
	ld b, h                                          ; $4426: $44
	ld e, l                                          ; $4427: $5d
	ld e, d                                          ; $4428: $5a
	ld c, b                                          ; $4429: $48
	and b                                            ; $442a: $a0
	ld [$a021], a                                    ; $442b: $ea $21 $a0
	cpl                                              ; $442e: $2f
	ld b, e                                          ; $442f: $43
	ld l, e                                          ; $4430: $6b
	ld d, e                                          ; $4431: $53
	xor h                                            ; $4432: $ac
	sub [hl]                                         ; $4433: $96
	dec sp                                           ; $4434: $3b
	ccf                                              ; $4435: $3f
	ld c, [hl]                                       ; $4436: $4e
	ld b, c                                          ; $4437: $41
	ld b, h                                          ; $4438: $44
	ld e, a                                          ; $4439: $5f

jr_096_443a:
	add hl, sp                                       ; $443a: $39
	ld c, b                                          ; $443b: $48
	and c                                            ; $443c: $a1
	ld d, $a8                                        ; $443d: $16 $a8
	ld [$45b5], a                                    ; $443f: $ea $b5 $45
	and b                                            ; $4442: $a0
	cpl                                              ; $4443: $2f
	ld b, e                                          ; $4444: $43
	ldh a, [$d8]                                     ; $4445: $f0 $d8
	inc [hl]                                         ; $4447: $34

jr_096_4448:
	db $ec                                           ; $4448: $ec
	ldh [rHDMA3], a                                  ; $4449: $e0 $53
	halt                                             ; $444b: $76
	ld b, a                                          ; $444c: $47
	xor c                                            ; $444d: $a9
	ldh a, [$29]                                     ; $444e: $f0 $29
	ld a, $38                                        ; $4450: $3e $38
	ld a, [hl-]                                      ; $4452: $3a
	xor b                                            ; $4453: $a8
	ld b, [hl]                                       ; $4454: $46
	ld d, a                                          ; $4455: $57
	ld d, e                                          ; $4456: $53
	ld c, c                                          ; $4457: $49
	add hl, sp                                       ; $4458: $39
	and b                                            ; $4459: $a0
	ld d, h                                          ; $445a: $54
	ld c, l                                          ; $445b: $4d
	ld h, d                                          ; $445c: $62
	ldh a, [$b7]                                     ; $445d: $f0 $b7
	ldh a, [$8c]                                     ; $445f: $f0 $8c
	ccf                                              ; $4461: $3f
	sub h                                            ; $4462: $94
	dec a                                            ; $4463: $3d
	inc de                                           ; $4464: $13
	di                                               ; $4465: $f3
	jp z, Jump_096_74f3                              ; $4466: $ca $f3 $74

	ld h, d                                          ; $4469: $62
	ld [hl], l                                       ; $446a: $75
	pop af                                           ; $446b: $f1
	ld [de], a                                       ; $446c: $12
	ld e, c                                          ; $446d: $59
	ld l, c                                          ; $446e: $69
	ld c, d                                          ; $446f: $4a
	db $f4                                           ; $4470: $f4
	and [hl]                                         ; $4471: $a6
	sub h                                            ; $4472: $94
	ld a, $3f                                        ; $4473: $3e $3f
	ld c, h                                          ; $4475: $4c
	xor b                                            ; $4476: $a8
	ld [$a021], a                                    ; $4477: $ea $21 $a0
	cpl                                              ; $447a: $2f
	ld b, e                                          ; $447b: $43
	ld a, [hl-]                                      ; $447c: $3a
	inc [hl]                                         ; $447d: $34
	ld l, e                                          ; $447e: $6b
	ld d, e                                          ; $447f: $53
	inc de                                           ; $4480: $13
	sub [hl]                                         ; $4481: $96
	dec sp                                           ; $4482: $3b
	ccf                                              ; $4483: $3f
	ld c, [hl]                                       ; $4484: $4e
	ld b, c                                          ; $4485: $41
	ld b, h                                          ; $4486: $44
	ld e, a                                          ; $4487: $5f
	add hl, sp                                       ; $4488: $39
	and c                                            ; $4489: $a1
	ld b, [hl]                                       ; $448a: $46
	dec sp                                           ; $448b: $3b
	inc [hl]                                         ; $448c: $34
	ld d, $a8                                        ; $448d: $16 $a8
	db $eb                                           ; $448f: $eb
	jp $2fa0                                         ; $4490: $c3 $a0 $2f


	ld b, e                                          ; $4493: $43
	ld [$44b5], a                                    ; $4494: $ea $b5 $44
	ld c, h                                          ; $4497: $4c
	xor b                                            ; $4498: $a8
	ld b, [hl]                                       ; $4499: $46
	inc [hl]                                         ; $449a: $34
	ld b, [hl]                                       ; $449b: $46
	ld d, a                                          ; $449c: $57
	ld d, e                                          ; $449d: $53
	ld c, c                                          ; $449e: $49
	add hl, sp                                       ; $449f: $39
	xor b                                            ; $44a0: $a8
	ldh a, [$29]                                     ; $44a1: $f0 $29
	ld a, $38                                        ; $44a3: $3e $38
	ld b, l                                          ; $44a5: $45
	and b                                            ; $44a6: $a0
	ldh a, [$cb]                                     ; $44a7: $f0 $cb
	inc [hl]                                         ; $44a9: $34
	db $ed                                           ; $44aa: $ed
	ld a, [hl]                                       ; $44ab: $7e
	ld b, l                                          ; $44ac: $45
	inc [hl]                                         ; $44ad: $34
	db $ed                                           ; $44ae: $ed
	ld a, [hl]                                       ; $44af: $7e
	xor b                                            ; $44b0: $a8
	ld c, d                                          ; $44b1: $4a
	ld c, a                                          ; $44b2: $4f
	inc [hl]                                         ; $44b3: $34
	ret                                              ; $44b4: $c9


	ld b, h                                          ; $44b5: $44
	ld e, l                                          ; $44b6: $5d
	inc de                                           ; $44b7: $13
	db $ed                                           ; $44b8: $ed
	ld a, [hl]                                       ; $44b9: $7e
	db $ec                                           ; $44ba: $ec
	ret c                                            ; $44bb: $d8

	ld b, d                                          ; $44bc: $42
	and b                                            ; $44bd: $a0
	cpl                                              ; $44be: $2f
	ld b, e                                          ; $44bf: $43
	ld l, e                                          ; $44c0: $6b
	add d                                            ; $44c1: $82
	dec sp                                           ; $44c2: $3b
	ccf                                              ; $44c3: $3f
	ld b, c                                          ; $44c4: $41
	ld b, h                                          ; $44c5: $44
	inc a                                            ; $44c6: $3c
	inc de                                           ; $44c7: $13
	ldh a, [rTAC]                                    ; $44c8: $f0 $07
	inc a                                            ; $44ca: $3c
	ld b, c                                          ; $44cb: $41
	ld a, [hl-]                                      ; $44cc: $3a
	jr c, jr_096_4514                                ; $44cd: $38 $45

	and b                                            ; $44cf: $a0
	ld b, b                                          ; $44d0: $40
	inc [hl]                                         ; $44d1: $34
	ld b, b                                          ; $44d2: $40
	ld c, l                                          ; $44d3: $4d
	ld e, e                                          ; $44d4: $5b
	ld d, [hl]                                       ; $44d5: $56
	xor h                                            ; $44d6: $ac
	ld e, b                                          ; $44d7: $58
	ld b, l                                          ; $44d8: $45
	ld a, [hl-]                                      ; $44d9: $3a
	ld d, b                                          ; $44da: $50
	and b                                            ; $44db: $a0
	cpl                                              ; $44dc: $2f
	ld b, e                                          ; $44dd: $43
	ld l, e                                          ; $44de: $6b
	ld b, h                                          ; $44df: $44
	ld e, a                                          ; $44e0: $5f
	xor h                                            ; $44e1: $ac
	db $ec                                           ; $44e2: $ec
	dec hl                                           ; $44e3: $2b
	di                                               ; $44e4: $f3
	rrca                                             ; $44e5: $0f
	ccf                                              ; $44e6: $3f
	ccf                                              ; $44e7: $3f
	ld c, b                                          ; $44e8: $48
	and b                                            ; $44e9: $a0
	ld b, [hl]                                       ; $44ea: $46
	dec sp                                           ; $44eb: $3b
	inc [hl]                                         ; $44ec: $34
	ld d, $a8                                        ; $44ed: $16 $a8
	xor $2d                                          ; $44ef: $ee $2d
	inc [hl]                                         ; $44f1: $34
	db $ed                                           ; $44f2: $ed
	ld a, [hl]                                       ; $44f3: $7e
	ldh a, [$2b]                                     ; $44f4: $f0 $2b
	ldh a, [rWX]                                     ; $44f6: $f0 $4b
	ldh a, [rAUD1LEN]                                ; $44f8: $f0 $11
	ld b, l                                          ; $44fa: $45
	and b                                            ; $44fb: $a0
	cpl                                              ; $44fc: $2f
	ld b, e                                          ; $44fd: $43
	ld b, [hl]                                       ; $44fe: $46
	inc [hl]                                         ; $44ff: $34
	ld b, [hl]                                       ; $4500: $46
	ld d, a                                          ; $4501: $57
	ld d, e                                          ; $4502: $53
	ld c, c                                          ; $4503: $49
	add hl, sp                                       ; $4504: $39
	dec [hl]                                         ; $4505: $35
	rla                                              ; $4506: $17
	ld [hl-], a                                      ; $4507: $32
	ld l, e                                          ; $4508: $6b
	ld c, a                                          ; $4509: $4f
	xor h                                            ; $450a: $ac
	ld c, e                                          ; $450b: $4b
	dec sp                                           ; $450c: $3b
	ld e, h                                          ; $450d: $5c
	ld d, a                                          ; $450e: $57
	add d                                            ; $450f: $82
	ld h, e                                          ; $4510: $63
	ld a, [hl-]                                      ; $4511: $3a
	ld d, l                                          ; $4512: $55
	ccf                                              ; $4513: $3f

jr_096_4514:
	ld c, a                                          ; $4514: $4f
	ld c, b                                          ; $4515: $48
	and e                                            ; $4516: $a3
	ld b, [hl]                                       ; $4517: $46
	dec sp                                           ; $4518: $3b
	inc [hl]                                         ; $4519: $34
	ld d, $a8                                        ; $451a: $16 $a8
	ld [$45b5], a                                    ; $451c: $ea $b5 $45
	and b                                            ; $451f: $a0
	cpl                                              ; $4520: $2f
	ld b, e                                          ; $4521: $43
	ld b, [hl]                                       ; $4522: $46
	inc [hl]                                         ; $4523: $34
	ld b, [hl]                                       ; $4524: $46
	ld d, a                                          ; $4525: $57
	ld d, e                                          ; $4526: $53
	ld c, c                                          ; $4527: $49
	add hl, sp                                       ; $4528: $39
	and b                                            ; $4529: $a0
	db $eb                                           ; $452a: $eb
	cpl                                              ; $452b: $2f
	ld c, e                                          ; $452c: $4b
	add a                                            ; $452d: $87
	ldh a, [$5d]                                     ; $452e: $f0 $5d
	ld b, h                                          ; $4530: $44
	ld h, e                                          ; $4531: $63
	dec [hl]                                         ; $4532: $35
	rla                                              ; $4533: $17
	adc $42                                          ; $4534: $ce $42
	add h                                            ; $4536: $84
	ld b, a                                          ; $4537: $47
	ldh a, [$b0]                                     ; $4538: $f0 $b0
	ld d, b                                          ; $453a: $50
	ld a, [hl-]                                      ; $453b: $3a
	ld e, h                                          ; $453c: $5c
	ld d, [hl]                                       ; $453d: $56
	inc de                                           ; $453e: $13
	jr c, jr_096_459e                                ; $453f: $38 $5d

	ld a, [hl-]                                      ; $4541: $3a
	jr c, jr_096_4580                                ; $4542: $38 $3c

	ld d, b                                          ; $4544: $50
	ld c, b                                          ; $4545: $48
	and b                                            ; $4546: $a0
	cpl                                              ; $4547: $2f
	ld b, e                                          ; $4548: $43
	ld b, [hl]                                       ; $4549: $46
	ld c, l                                          ; $454a: $4d
	xor c                                            ; $454b: $a9
	ld d, h                                          ; $454c: $54
	ld c, l                                          ; $454d: $4d
	inc [hl]                                         ; $454e: $34
	ld l, h                                          ; $454f: $6c
	ld b, c                                          ; $4550: $41
	ld a, [hl-]                                      ; $4551: $3a
	ld b, d                                          ; $4552: $42
	ld c, c                                          ; $4553: $49
	ldh a, [$f5]                                     ; $4554: $f0 $f5
	add hl, sp                                       ; $4556: $39
	ld b, l                                          ; $4557: $45
	and b                                            ; $4558: $a0
	dec a                                            ; $4559: $3d
	inc [hl]                                         ; $455a: $34
	db $ec                                           ; $455b: $ec
	ld a, [de]                                       ; $455c: $1a
	inc [hl]                                         ; $455d: $34
	ld b, b                                          ; $455e: $40
	add hl, sp                                       ; $455f: $39
	jr c, @+$3b                                      ; $4560: $38 $39

	ld b, d                                          ; $4562: $42
	ld c, a                                          ; $4563: $4f
	inc de                                           ; $4564: $13
	jr c, jr_096_459f                                ; $4565: $38 $38

	ld b, c                                          ; $4567: $41
	db $ec                                           ; $4568: $ec
	ret c                                            ; $4569: $d8

	inc a                                            ; $456a: $3c
	ld a, $50                                        ; $456b: $3e $50
	and c                                            ; $456d: $a1
	cpl                                              ; $456e: $2f
	ld b, e                                          ; $456f: $43
	halt                                             ; $4570: $76
	ld b, h                                          ; $4571: $44
	ld e, l                                          ; $4572: $5d
	inc [hl]                                         ; $4573: $34
	ldh a, [$b6]                                     ; $4574: $f0 $b6
	ldh a, [$34]                                     ; $4576: $f0 $34
	ld a, [hl-]                                      ; $4578: $3a
	ld b, d                                          ; $4579: $42
	and c                                            ; $457a: $a1
	jr c, jr_096_45b1                                ; $457b: $38 $34

	jr c, jr_096_45b7                                ; $457d: $38 $38

	db $ec                                           ; $457f: $ec

jr_096_4580:
	ret c                                            ; $4580: $d8

	ld b, d                                          ; $4581: $42
	xor b                                            ; $4582: $a8
	pop af                                           ; $4583: $f1
	adc a                                            ; $4584: $8f
	ld a, $38                                        ; $4585: $3e $38
	inc a                                            ; $4587: $3c
	ld d, b                                          ; $4588: $50
	inc [hl]                                         ; $4589: $34
	ldh a, [rHDMA5]                                  ; $458a: $f0 $55
	ldh a, [rBCPS]                                   ; $458c: $f0 $68
	ld d, c                                          ; $458e: $51
	ld c, [hl]                                       ; $458f: $4e
	ld h, e                                          ; $4590: $63
	and b                                            ; $4591: $a0
	cpl                                              ; $4592: $2f
	ld b, e                                          ; $4593: $43
	di                                               ; $4594: $f3
	rrca                                             ; $4595: $0f
	ccf                                              ; $4596: $3f
	ccf                                              ; $4597: $3f
	xor h                                            ; $4598: $ac
	ld [$7fbe], a                                    ; $4599: $ea $be $7f
	ld d, e                                          ; $459c: $53
	ld d, c                                          ; $459d: $51

jr_096_459e:
	ld c, [hl]                                       ; $459e: $4e

jr_096_459f:
	xor l                                            ; $459f: $ad
	ld [hl-], a                                      ; $45a0: $32
	ld l, e                                          ; $45a1: $6b
	ld b, a                                          ; $45a2: $47
	ld a, $3f                                        ; $45a3: $3e $3f
	ld c, a                                          ; $45a5: $4f
	ldh a, [$b6]                                     ; $45a6: $f0 $b6
	ldh a, [$34]                                     ; $45a8: $f0 $34
	ld c, e                                          ; $45aa: $4b
	ld a, [hl]                                       ; $45ab: $7e
	jr c, jr_096_45e8                                ; $45ac: $38 $3a

	and e                                            ; $45ae: $a3
	db $ed                                           ; $45af: $ed
	push de                                          ; $45b0: $d5

jr_096_45b1:
	jr c, jr_096_45f1                                ; $45b1: $38 $3e

	ld a, [hl-]                                      ; $45b3: $3a
	jr c, jr_096_4600                                ; $45b4: $38 $4a

	ld c, h                                          ; $45b6: $4c

jr_096_45b7:
	xor b                                            ; $45b7: $a8
	db $ed                                           ; $45b8: $ed
	ld a, [hl]                                       ; $45b9: $7e
	ld b, l                                          ; $45ba: $45
	db $ed                                           ; $45bb: $ed
	ld a, [hl]                                       ; $45bc: $7e
	and b                                            ; $45bd: $a0
	cpl                                              ; $45be: $2f
	ld b, e                                          ; $45bf: $43
	ldh a, [$34]                                     ; $45c0: $f0 $34
	ld b, a                                          ; $45c2: $47
	db $ec                                           ; $45c3: $ec
	ld [$1735], sp                                   ; $45c4: $08 $35 $17
	ld [hl-], a                                      ; $45c7: $32
	ld e, d                                          ; $45c8: $5a
	ld d, h                                          ; $45c9: $54
	inc a                                            ; $45ca: $3c
	ld d, b                                          ; $45cb: $50
	ld [hl], d                                       ; $45cc: $72
	ccf                                              ; $45cd: $3f
	ld c, a                                          ; $45ce: $4f
	xor h                                            ; $45cf: $ac
	db $ed                                           ; $45d0: $ed
	ld a, [hl]                                       ; $45d1: $7e
	ld b, a                                          ; $45d2: $47
	ld a, $3c                                        ; $45d3: $3e $3c
	ld [hl], d                                       ; $45d5: $72
	ld e, [hl]                                       ; $45d6: $5e
	ld b, c                                          ; $45d7: $41
	and e                                            ; $45d8: $a3
	ld b, [hl]                                       ; $45d9: $46
	dec sp                                           ; $45da: $3b
	inc [hl]                                         ; $45db: $34
	ld d, $a8                                        ; $45dc: $16 $a8
	xor $2d                                          ; $45de: $ee $2d
	inc [hl]                                         ; $45e0: $34
	ld [$a0b5], a                                    ; $45e1: $ea $b5 $a0
	cpl                                              ; $45e4: $2f
	ld b, e                                          ; $45e5: $43
	ld b, [hl]                                       ; $45e6: $46
	inc [hl]                                         ; $45e7: $34

jr_096_45e8:
	ld b, [hl]                                       ; $45e8: $46
	ld d, a                                          ; $45e9: $57
	ld d, e                                          ; $45ea: $53
	ld c, c                                          ; $45eb: $49
	add hl, sp                                       ; $45ec: $39
	xor b                                            ; $45ed: $a8
	ld d, h                                          ; $45ee: $54
	ld c, l                                          ; $45ef: $4d
	inc [hl]                                         ; $45f0: $34

jr_096_45f1:
	pop af                                           ; $45f1: $f1
	adc d                                            ; $45f2: $8a
	ldh a, [$fb]                                     ; $45f3: $f0 $fb
	ld a, [hl-]                                      ; $45f5: $3a
	xor $1e                                          ; $45f6: $ee $1e
	di                                               ; $45f8: $f3
	cp l                                             ; $45f9: $bd
	ld b, d                                          ; $45fa: $42
	inc de                                           ; $45fb: $13
	ldh a, [$2b]                                     ; $45fc: $f0 $2b
	ldh a, [rWX]                                     ; $45fe: $f0 $4b

jr_096_4600:
	ldh a, [rAUD1LEN]                                ; $4600: $f0 $11
	db $ec                                           ; $4602: $ec
	ret c                                            ; $4603: $d8

	inc a                                            ; $4604: $3c
	and b                                            ; $4605: $a0
	ld e, [hl]                                       ; $4606: $5e
	dec sp                                           ; $4607: $3b
	inc [hl]                                         ; $4608: $34
	ldh a, [rTAC]                                    ; $4609: $f0 $07
	inc a                                            ; $460b: $3c
	ld c, [hl]                                       ; $460c: $4e
	xor c                                            ; $460d: $a9
	db $ed                                           ; $460e: $ed
	ld a, e                                          ; $460f: $7b
	ld b, a                                          ; $4610: $47
	db $f4                                           ; $4611: $f4
	dec a                                            ; $4612: $3d
	ldh a, [$78]                                     ; $4613: $f0 $78
	ld c, h                                          ; $4615: $4c
	and b                                            ; $4616: $a0
	cpl                                              ; $4617: $2f
	ld b, e                                          ; $4618: $43
	ld b, l                                          ; $4619: $45
	ld d, l                                          ; $461a: $55
	pop af                                           ; $461b: $f1
	ld c, $5e                                        ; $461c: $0e $5e
	dec a                                            ; $461e: $3d
	ld c, h                                          ; $461f: $4c
	and b                                            ; $4620: $a0
	ldh a, [$7d]                                     ; $4621: $f0 $7d
	pop af                                           ; $4623: $f1
	pop de                                           ; $4624: $d1
	ldh a, [rBGP]                                    ; $4625: $f0 $47
	inc a                                            ; $4627: $3c
	ld d, b                                          ; $4628: $50
	inc de                                           ; $4629: $13
	ldh a, [c]                                       ; $462a: $f2
	dec a                                            ; $462b: $3d
	ld b, c                                          ; $462c: $41
	ld b, h                                          ; $462d: $44
	inc a                                            ; $462e: $3c
	ld d, b                                          ; $462f: $50
	ld c, h                                          ; $4630: $4c
	and b                                            ; $4631: $a0
	cpl                                              ; $4632: $2f
	ld b, e                                          ; $4633: $43
	halt                                             ; $4634: $76
	ld b, a                                          ; $4635: $47
	ld d, l                                          ; $4636: $55
	ld c, l                                          ; $4637: $4d
	ld c, [hl]                                       ; $4638: $4e
	dec a                                            ; $4639: $3d
	ld [hl], c                                       ; $463a: $71
	ld b, a                                          ; $463b: $47
	xor h                                            ; $463c: $ac
	ld h, e                                          ; $463d: $63
	ldh a, [rAUD1SWEEP]                              ; $463e: $f0 $10
	ld h, e                                          ; $4640: $63
	ldh a, [rAUD1SWEEP]                              ; $4641: $f0 $10
	inc [hl]                                         ; $4643: $34
	ld b, b                                          ; $4644: $40
	ld b, c                                          ; $4645: $41
	ld a, [hl-]                                      ; $4646: $3a
	sbc d                                            ; $4647: $9a
	ld h, d                                          ; $4648: $62
	ld c, b                                          ; $4649: $48
	and b                                            ; $464a: $a0
	db $ec                                           ; $464b: $ec
	reti                                             ; $464c: $d9


	inc [hl]                                         ; $464d: $34
	pop af                                           ; $464e: $f1
	ld a, h                                          ; $464f: $7c
	ld d, c                                          ; $4650: $51
	ld a, [hl-]                                      ; $4651: $3a
	ld d, b                                          ; $4652: $50

Call_096_4653:
	xor h                                            ; $4653: $ac
	ld d, h                                          ; $4654: $54
	ld b, d                                          ; $4655: $42
	sbc l                                            ; $4656: $9d
	ld d, b                                          ; $4657: $50
	jr c, jr_096_4698                                ; $4658: $38 $3e

	ld a, [hl-]                                      ; $465a: $3a
	jr c, jr_096_46a6                                ; $465b: $38 $49

	ld c, b                                          ; $465d: $48
	and b                                            ; $465e: $a0
	cpl                                              ; $465f: $2f
	ld b, e                                          ; $4660: $43
	add sp, -$1b                                     ; $4661: $e8 $e5
	and b                                            ; $4663: $a0
	ld b, b                                          ; $4664: $40
	ld c, l                                          ; $4665: $4d
	ld e, e                                          ; $4666: $5b
	ld d, [hl]                                       ; $4667: $56
	xor h                                            ; $4668: $ac
	pop af                                           ; $4669: $f1
	ld d, $9d                                        ; $466a: $16 $9d
	inc a                                            ; $466c: $3c
	ld d, b                                          ; $466d: $50
	ld c, b                                          ; $466e: $48
	and b                                            ; $466f: $a0
	cpl                                              ; $4670: $2f
	ld b, e                                          ; $4671: $43
	ld b, [hl]                                       ; $4672: $46
	inc [hl]                                         ; $4673: $34
	ld b, [hl]                                       ; $4674: $46
	ld d, a                                          ; $4675: $57
	ld d, e                                          ; $4676: $53
	ld c, c                                          ; $4677: $49
	add hl, sp                                       ; $4678: $39
	xor b                                            ; $4679: $a8
	ld c, d                                          ; $467a: $4a
	ld c, a                                          ; $467b: $4f
	inc [hl]                                         ; $467c: $34
	ld l, l                                          ; $467d: $6d
	di                                               ; $467e: $f3
	ld [hl], l                                       ; $467f: $75
	ldh a, [c]                                       ; $4680: $f2
	ld l, a                                          ; $4681: $6f
	push af                                          ; $4682: $f5
	inc d                                            ; $4683: $14
	ld b, d                                          ; $4684: $42
	ld b, h                                          ; $4685: $44
	ld c, h                                          ; $4686: $4c
	and b                                            ; $4687: $a0
	ld l, a                                          ; $4688: $6f
	inc [hl]                                         ; $4689: $34
	ld l, d                                          ; $468a: $6a
	ldh a, [rKEY1]                                   ; $468b: $f0 $4d
	ld b, c                                          ; $468d: $41
	pop af                                           ; $468e: $f1
	halt                                             ; $468f: $76
	ld e, c                                          ; $4690: $59
	ld a, [hl-]                                      ; $4691: $3a
	ld b, d                                          ; $4692: $42
	xor h                                            ; $4693: $ac
	ld [hl], b                                       ; $4694: $70
	ld [hl], c                                       ; $4695: $71
	ld b, c                                          ; $4696: $41
	ld c, h                                          ; $4697: $4c

jr_096_4698:
	and b                                            ; $4698: $a0
	ld b, [hl]                                       ; $4699: $46
	dec sp                                           ; $469a: $3b
	inc [hl]                                         ; $469b: $34
	ld d, $a8                                        ; $469c: $16 $a8
	ld d, h                                          ; $469e: $54
	ld c, l                                          ; $469f: $4d
	inc [hl]                                         ; $46a0: $34
	ld [$4ab5], a                                    ; $46a1: $ea $b5 $4a
	ld d, c                                          ; $46a4: $51
	and b                                            ; $46a5: $a0

jr_096_46a6:
	cpl                                              ; $46a6: $2f
	ld b, e                                          ; $46a7: $43
	ld b, [hl]                                       ; $46a8: $46
	inc [hl]                                         ; $46a9: $34
	ld b, [hl]                                       ; $46aa: $46
	ld d, a                                          ; $46ab: $57
	ld d, e                                          ; $46ac: $53
	ld c, c                                          ; $46ad: $49
	add hl, sp                                       ; $46ae: $39
	xor b                                            ; $46af: $a8
	ldh a, [$29]                                     ; $46b0: $f0 $29
	ld a, $38                                        ; $46b2: $3e $38
	ld b, l                                          ; $46b4: $45
	xor b                                            ; $46b5: $a8
	db $eb                                           ; $46b6: $eb
	db $fc                                           ; $46b7: $fc
	and b                                            ; $46b8: $a0
	ld d, h                                          ; $46b9: $54
	ld c, l                                          ; $46ba: $4d
	pop af                                           ; $46bb: $f1
	ld c, e                                          ; $46bc: $4b
	ldh a, [$f0]                                     ; $46bd: $f0 $f0
	ld b, d                                          ; $46bf: $42
	inc de                                           ; $46c0: $13
	ld [$4bb5], a                                    ; $46c1: $ea $b5 $4b
	inc de                                           ; $46c4: $13
	pop af                                           ; $46c5: $f1
	and c                                            ; $46c6: $a1
	dec sp                                           ; $46c7: $3b
	ccf                                              ; $46c8: $3f
	ld c, a                                          ; $46c9: $4f
	db $ec                                           ; $46ca: $ec
	ld [$f1ac], sp                                   ; $46cb: $08 $ac $f1
	ld a, [de]                                       ; $46ce: $1a
	pop af                                           ; $46cf: $f1
	inc c                                            ; $46d0: $0c
	ldh a, [$b7]                                     ; $46d1: $f0 $b7
	ldh a, [$8c]                                     ; $46d3: $f0 $8c
	ld a, [hl-]                                      ; $46d5: $3a
	jr c, jr_096_4722                                ; $46d6: $38 $4a

	db $ec                                           ; $46d8: $ec
	rst FarCall                                          ; $46d9: $f7
	ld c, h                                          ; $46da: $4c
	and b                                            ; $46db: $a0
	cpl                                              ; $46dc: $2f
	ld b, e                                          ; $46dd: $43
	ld e, [hl]                                       ; $46de: $5e
	dec sp                                           ; $46df: $3b
	xor c                                            ; $46e0: $a9
	add hl, sp                                       ; $46e1: $39
	inc [hl]                                         ; $46e2: $34
	xor $1f                                          ; $46e3: $ee $1f
	and b                                            ; $46e5: $a0
	db $ed                                           ; $46e6: $ed
	ld b, c                                          ; $46e7: $41
	xor c                                            ; $46e8: $a9
	pop af                                           ; $46e9: $f1
	ld a, [de]                                       ; $46ea: $1a
	pop af                                           ; $46eb: $f1
	inc c                                            ; $46ec: $0c
	inc [hl]                                         ; $46ed: $34
	xor $1d                                          ; $46ee: $ee $1d
	ld b, h                                          ; $46f0: $44
	ld b, l                                          ; $46f1: $45
	xor b                                            ; $46f2: $a8
	or h                                             ; $46f3: $b4
	and b                                            ; $46f4: $a0
	cpl                                              ; $46f5: $2f
	ld [hl-], a                                      ; $46f6: $32
	ldh a, [c]                                       ; $46f7: $f2
	ld c, h                                          ; $46f8: $4c
	ld c, e                                          ; $46f9: $4b
	sbc h                                            ; $46fa: $9c
	ld l, h                                          ; $46fb: $6c
	ld a, [hl-]                                      ; $46fc: $3a
	xor h                                            ; $46fd: $ac
	xor $1d                                          ; $46fe: $ee $1d
	db $eb                                           ; $4700: $eb
	ld d, [hl]                                       ; $4701: $56
	inc a                                            ; $4702: $3c
	ld a, [hl-]                                      ; $4703: $3a
	ld c, b                                          ; $4704: $48
	and e                                            ; $4705: $a3
	ld d, $a8                                        ; $4706: $16 $a8
	db $eb                                           ; $4708: $eb
	pop af                                           ; $4709: $f1
	ld b, d                                          ; $470a: $42
	db $ed                                           ; $470b: $ed
	ld h, d                                          ; $470c: $62
	ld b, h                                          ; $470d: $44
	inc a                                            ; $470e: $3c
	ld d, b                                          ; $470f: $50
	xor h                                            ; $4710: $ac
	ld [$dfb5], a                                    ; $4711: $ea $b5 $df
	and b                                            ; $4714: $a0
	cpl                                              ; $4715: $2f
	ld b, e                                          ; $4716: $43
	ld b, [hl]                                       ; $4717: $46
	inc [hl]                                         ; $4718: $34
	ld b, [hl]                                       ; $4719: $46
	ld d, a                                          ; $471a: $57
	ld d, e                                          ; $471b: $53
	ld c, c                                          ; $471c: $49
	add hl, sp                                       ; $471d: $39
	xor b                                            ; $471e: $a8
	db $eb                                           ; $471f: $eb
	db $fc                                           ; $4720: $fc
	and b                                            ; $4721: $a0

jr_096_4722:
	ld b, [hl]                                       ; $4722: $46
	dec sp                                           ; $4723: $3b
	inc [hl]                                         ; $4724: $34
	ld d, $a8                                        ; $4725: $16 $a8
	ld d, h                                          ; $4727: $54
	ld c, l                                          ; $4728: $4d
	ld c, b                                          ; $4729: $48
	and b                                            ; $472a: $a0
	cpl                                              ; $472b: $2f
	ld b, e                                          ; $472c: $43
	ld b, [hl]                                       ; $472d: $46
	inc [hl]                                         ; $472e: $34
	ld [$44b5], a                                    ; $472f: $ea $b5 $44
	ld c, h                                          ; $4732: $4c
	xor b                                            ; $4733: $a8
	ld b, [hl]                                       ; $4734: $46
	ld d, a                                          ; $4735: $57
	ld d, e                                          ; $4736: $53
	ld c, c                                          ; $4737: $49
	add hl, sp                                       ; $4738: $39
	dec [hl]                                         ; $4739: $35
	ldh a, [$29]                                     ; $473a: $f0 $29
	ld a, $38                                        ; $473c: $3e $38
	ld b, l                                          ; $473e: $45
	and b                                            ; $473f: $a0
	ldh a, [$0b]                                     ; $4740: $f0 $0b
	ldh a, [$a5]                                     ; $4742: $f0 $a5
	ld d, a                                          ; $4744: $57
	ld a, [hl-]                                      ; $4745: $3a
	ld b, c                                          ; $4746: $41
	ccf                                              ; $4747: $3f
	inc de                                           ; $4748: $13
	ldh a, [hDisp1_OBP1]                                     ; $4749: $f0 $94
	ld [hl], c                                       ; $474b: $71
	ccf                                              ; $474c: $3f
	ld b, h                                          ; $474d: $44
	inc a                                            ; $474e: $3c
	ld d, b                                          ; $474f: $50
	ld c, b                                          ; $4750: $48
	xor h                                            ; $4751: $ac
	ldh a, [$5d]                                     ; $4752: $f0 $5d
	ld b, h                                          ; $4754: $44
	dec sp                                           ; $4755: $3b
	dec a                                            ; $4756: $3d
	ld d, b                                          ; $4757: $50
	ldh a, [rAUD1LOW]                                ; $4758: $f0 $13
	ldh a, [$63]                                     ; $475a: $f0 $63
	ld b, a                                          ; $475c: $47
	ldh a, [$b7]                                     ; $475d: $f0 $b7
	ldh a, [$8c]                                     ; $475f: $f0 $8c
	ld a, [hl-]                                      ; $4761: $3a
	jr c, jr_096_47ae                                ; $4762: $38 $4a

	ld c, h                                          ; $4764: $4c
	and b                                            ; $4765: $a0
	ld l, d                                          ; $4766: $6a
	ldh a, [rAUD1HIGH]                               ; $4767: $f0 $14
	ld c, a                                          ; $4769: $4f
	ldh a, [$0b]                                     ; $476a: $f0 $0b
	ldh a, [$a5]                                     ; $476c: $f0 $a5
	ld d, a                                          ; $476e: $57
	ld a, [hl-]                                      ; $476f: $3a
	ld b, d                                          ; $4770: $42
	dec [hl]                                         ; $4771: $35
	rla                                              ; $4772: $17
	ldh a, [$5d]                                     ; $4773: $f0 $5d
	ld b, h                                          ; $4775: $44
	dec sp                                           ; $4776: $3b
	dec a                                            ; $4777: $3d
	ld d, b                                          ; $4778: $50
	ldh a, [rAUD1LOW]                                ; $4779: $f0 $13
	ldh a, [$63]                                     ; $477b: $f0 $63
	ld b, a                                          ; $477d: $47
	ldh a, [$b7]                                     ; $477e: $f0 $b7
	ldh a, [$8c]                                     ; $4780: $f0 $8c
	ld a, [hl-]                                      ; $4782: $3a
	jr c, jr_096_47cf                                ; $4783: $38 $4a

	ld c, h                                          ; $4785: $4c
	and b                                            ; $4786: $a0
	cpl                                              ; $4787: $2f
	ld b, e                                          ; $4788: $43
	db $ec                                           ; $4789: $ec
	and $42                                          ; $478a: $e6 $42
	ldh a, [$0b]                                     ; $478c: $f0 $0b
	ldh a, [$a5]                                     ; $478e: $f0 $a5
	ld d, a                                          ; $4790: $57
	inc de                                           ; $4791: $13
	ld a, [hl-]                                      ; $4792: $3a
	ld d, b                                          ; $4793: $50
	inc [hl]                                         ; $4794: $34
	di                                               ; $4795: $f3
	inc e                                            ; $4796: $1c
	ld d, l                                          ; $4797: $55
	ccf                                              ; $4798: $3f
	ld c, a                                          ; $4799: $4f
	ldh a, [$b7]                                     ; $479a: $f0 $b7
	ldh a, [$8c]                                     ; $479c: $f0 $8c
	ld c, [hl]                                       ; $479e: $4e
	ld b, l                                          ; $479f: $45
	and b                                            ; $47a0: $a0
	ld b, [hl]                                       ; $47a1: $46
	ld d, a                                          ; $47a2: $57
	ld d, e                                          ; $47a3: $53
	ld c, c                                          ; $47a4: $49
	add hl, sp                                       ; $47a5: $39
	xor b                                            ; $47a6: $a8
	ld b, b                                          ; $47a7: $40
	ld c, l                                          ; $47a8: $4d
	ld e, e                                          ; $47a9: $5b
	ld d, [hl]                                       ; $47aa: $56
	and b                                            ; $47ab: $a0
	xor $2d                                          ; $47ac: $ee $2d

jr_096_47ae:
	ld d, h                                          ; $47ae: $54
	ld c, l                                          ; $47af: $4d
	scf                                              ; $47b0: $37
	inc de                                           ; $47b1: $13
	ld [$a0b5], a                                    ; $47b2: $ea $b5 $a0
	ld b, [hl]                                       ; $47b5: $46
	dec sp                                           ; $47b6: $3b
	inc [hl]                                         ; $47b7: $34
	ld d, $35                                        ; $47b8: $16 $35
	rla                                              ; $47ba: $17
	ld d, h                                          ; $47bb: $54
	ld c, l                                          ; $47bc: $4d
	inc [hl]                                         ; $47bd: $34
	ldh a, [c]                                       ; $47be: $f2
	ret z                                            ; $47bf: $c8

	ld d, e                                          ; $47c0: $53
	di                                               ; $47c1: $f3
	xor e                                            ; $47c2: $ab
	ld c, l                                          ; $47c3: $4d
	ccf                                              ; $47c4: $3f
	ld c, [hl]                                       ; $47c5: $4e
	inc a                                            ; $47c6: $3c
	ld c, a                                          ; $47c7: $4f
	inc de                                           ; $47c8: $13
	ld a, $4d                                        ; $47c9: $3e $4d
	ld a, [hl-]                                      ; $47cb: $3a
	jr c, jr_096_482b                                ; $47cc: $38 $5d

	ld e, d                                          ; $47ce: $5a

jr_096_47cf:
	ld c, b                                          ; $47cf: $48
	and b                                            ; $47d0: $a0
	ret                                              ; $47d1: $c9


	adc c                                            ; $47d2: $89
	sbc a                                            ; $47d3: $9f
	ld c, d                                          ; $47d4: $4a
	ld c, e                                          ; $47d5: $4b
	inc de                                           ; $47d6: $13
	db $eb                                           ; $47d7: $eb
	ld l, d                                          ; $47d8: $6a
	ccf                                              ; $47d9: $3f
	pop af                                           ; $47da: $f1
	ld a, h                                          ; $47db: $7c
	ld a, c                                          ; $47dc: $79
	ld a, [hl-]                                      ; $47dd: $3a
	inc a                                            ; $47de: $3c
	dec sp                                           ; $47df: $3b
	dec a                                            ; $47e0: $3d
	ld b, d                                          ; $47e1: $42
	ld c, b                                          ; $47e2: $48
	and b                                            ; $47e3: $a0
	db $ed                                           ; $47e4: $ed
	ld b, e                                          ; $47e5: $43
	ld c, b                                          ; $47e6: $48
	dec [hl]                                         ; $47e7: $35
	rla                                              ; $47e8: $17
	db $eb                                           ; $47e9: $eb
	or l                                             ; $47ea: $b5
	ld h, d                                          ; $47eb: $62
	ld d, h                                          ; $47ec: $54
	ld [hl], c                                       ; $47ed: $71
	dec a                                            ; $47ee: $3d
	inc de                                           ; $47ef: $13
	ldh a, [$2b]                                     ; $47f0: $f0 $2b
	ldh a, [rWX]                                     ; $47f2: $f0 $4b
	ldh a, [rAUD1LEN]                                ; $47f4: $f0 $11
	ld b, h                                          ; $47f6: $44

jr_096_47f7:
	inc a                                            ; $47f7: $3c
	ld d, b                                          ; $47f8: $50
	ld c, b                                          ; $47f9: $48
	and b                                            ; $47fa: $a0
	cpl                                              ; $47fb: $2f
	ld b, e                                          ; $47fc: $43
	ld e, [hl]                                       ; $47fd: $5e
	dec sp                                           ; $47fe: $3b
	xor c                                            ; $47ff: $a9
	ld b, b                                          ; $4800: $40
	ld c, l                                          ; $4801: $4d
	dec sp                                           ; $4802: $3b
	ccf                                              ; $4803: $3f
	ld c, b                                          ; $4804: $48
	and b                                            ; $4805: $a0
	ld b, b                                          ; $4806: $40
	inc [hl]                                         ; $4807: $34
	ld [$a044], a                                    ; $4808: $ea $44 $a0
	cpl                                              ; $480b: $2f
	ld b, e                                          ; $480c: $43
	db $eb                                           ; $480d: $eb
	or l                                             ; $480e: $b5
	inc a                                            ; $480f: $3c
	ld c, b                                          ; $4810: $48
	and b                                            ; $4811: $a0
	cpl                                              ; $4812: $2f
	ld b, e                                          ; $4813: $43
	ld b, [hl]                                       ; $4814: $46
	inc [hl]                                         ; $4815: $34
	ld b, [hl]                                       ; $4816: $46
	ld d, a                                          ; $4817: $57
	ld d, e                                          ; $4818: $53
	ld c, c                                          ; $4819: $49
	add hl, sp                                       ; $481a: $39
	xor b                                            ; $481b: $a8
	ld [hl-], a                                      ; $481c: $32
	pop af                                           ; $481d: $f1
	add hl, de                                       ; $481e: $19
	ld e, b                                          ; $481f: $58
	jr c, jr_096_485c                                ; $4820: $38 $3a

	inc [hl]                                         ; $4822: $34
	db $ed                                           ; $4823: $ed
	ld a, [hl]                                       ; $4824: $7e
	inc a                                            ; $4825: $3c
	ld a, [hl-]                                      ; $4826: $3a
	ld c, b                                          ; $4827: $48
	and e                                            ; $4828: $a3
	cpl                                              ; $4829: $2f
	ld b, e                                          ; $482a: $43

jr_096_482b:
	adc $f1                                          ; $482b: $ce $f1
	and c                                            ; $482d: $a1
	ld e, [hl]                                       ; $482e: $5e
	dec a                                            ; $482f: $3d
	ld a, [hl-]                                      ; $4830: $3a
	xor b                                            ; $4831: $a8
	halt                                             ; $4832: $76
	dec sp                                           ; $4833: $3b
	ccf                                              ; $4834: $3f
	inc [hl]                                         ; $4835: $34
	ld d, c                                          ; $4836: $51
	ld [hl], b                                       ; $4837: $70
	jr c, jr_096_487b                                ; $4838: $38 $41

	db $ec                                           ; $483a: $ec
	ret c                                            ; $483b: $d8

	and b                                            ; $483c: $a0
	cpl                                              ; $483d: $2f
	ld b, e                                          ; $483e: $43
	ld h, e                                          ; $483f: $63
	ld d, a                                          ; $4840: $57
	ld c, c                                          ; $4841: $49
	pop af                                           ; $4842: $f1
	sub d                                            ; $4843: $92
	ld d, l                                          ; $4844: $55
	ld c, a                                          ; $4845: $4f
	ld d, b                                          ; $4846: $50
	ld e, [hl]                                       ; $4847: $5e
	dec a                                            ; $4848: $3d
	ld a, [hl-]                                      ; $4849: $3a
	xor b                                            ; $484a: $a8
	ldh a, [$80]                                     ; $484b: $f0 $80
	ldh a, [$c5]                                     ; $484d: $f0 $c5
	db $ed                                           ; $484f: $ed

jr_096_4850:
	ld l, c                                          ; $4850: $69
	ld b, [hl]                                       ; $4851: $46
	ld c, [hl]                                       ; $4852: $4e
	ld l, h                                          ; $4853: $6c
	dec a                                            ; $4854: $3d
	jr c, jr_096_47f7                                ; $4855: $38 $a0

	cpl                                              ; $4857: $2f
	ld b, e                                          ; $4858: $43
	ld d, h                                          ; $4859: $54
	ld b, d                                          ; $485a: $42
	sbc l                                            ; $485b: $9d

jr_096_485c:
	ld d, b                                          ; $485c: $50
	jr c, jr_096_4850                                ; $485d: $38 $f1

	and c                                            ; $485f: $a1
	ld e, [hl]                                       ; $4860: $5e
	ld c, l                                          ; $4861: $4d
	ld a, e                                          ; $4862: $7b
	xor h                                            ; $4863: $ac
	jr c, jr_096_489e                                ; $4864: $38 $38

	ldh a, [$38]                                     ; $4866: $f0 $38
	inc a                                            ; $4868: $3c
	ld a, [hl-]                                      ; $4869: $3a
	and b                                            ; $486a: $a0
	cpl                                              ; $486b: $2f
	ld b, e                                          ; $486c: $43
	ld b, [hl]                                       ; $486d: $46
	ld d, d                                          ; $486e: $52
	ld d, a                                          ; $486f: $57
	inc de                                           ; $4870: $13
	pop af                                           ; $4871: $f1
	and c                                            ; $4872: $a1
	ld e, [hl]                                       ; $4873: $5e
	ld a, [hl-]                                      ; $4874: $3a
	inc a                                            ; $4875: $3c
	dec sp                                           ; $4876: $3b
	dec a                                            ; $4877: $3d
	ld e, l                                          ; $4878: $5d
	ld e, d                                          ; $4879: $5a
	xor h                                            ; $487a: $ac

jr_096_487b:
	ld [$a076], a                                    ; $487b: $ea $76 $a0
	cpl                                              ; $487e: $2f
	ld b, e                                          ; $487f: $43
	db $ed                                           ; $4880: $ed
	ld d, a                                          ; $4881: $57
	xor h                                            ; $4882: $ac
	ld l, l                                          ; $4883: $6d
	di                                               ; $4884: $f3
	ld [hl], l                                       ; $4885: $75
	ld c, a                                          ; $4886: $4f
	pop af                                           ; $4887: $f1
	and c                                            ; $4888: $a1
	ld e, [hl]                                       ; $4889: $5e
	ld a, [hl-]                                      ; $488a: $3a
	inc a                                            ; $488b: $3c
	dec sp                                           ; $488c: $3b
	dec a                                            ; $488d: $3d
	ld b, l                                          ; $488e: $45
	xor b                                            ; $488f: $a8
	pop af                                           ; $4890: $f1
	xor b                                            ; $4891: $a8
	ld a, $38                                        ; $4892: $3e $38
	ld a, [hl-]                                      ; $4894: $3a
	ld [hl], h                                       ; $4895: $74
	ld c, b                                          ; $4896: $48
	and b                                            ; $4897: $a0
	cpl                                              ; $4898: $2f
	ld b, e                                          ; $4899: $43
	ld b, [hl]                                       ; $489a: $46
	dec sp                                           ; $489b: $3b
	inc [hl]                                         ; $489c: $34
	pop af                                           ; $489d: $f1

jr_096_489e:
	dec d                                            ; $489e: $15
	ld c, l                                          ; $489f: $4d
	ccf                                              ; $48a0: $3f
	dec a                                            ; $48a1: $3d
	ld e, l                                          ; $48a2: $5d
	ld e, d                                          ; $48a3: $5a
	inc de                                           ; $48a4: $13
	db $ed                                           ; $48a5: $ed
	ld d, a                                          ; $48a6: $57
	inc [hl]                                         ; $48a7: $34
	db $ed                                           ; $48a8: $ed
	xor c                                            ; $48a9: $a9
	db $ec                                           ; $48aa: $ec
	inc h                                            ; $48ab: $24
	inc de                                           ; $48ac: $13
	db $ec                                           ; $48ad: $ec
	ret c                                            ; $48ae: $d8

	inc a                                            ; $48af: $3c
	and b                                            ; $48b0: $a0
	cpl                                              ; $48b1: $2f
	ld [$ac10], a                                    ; $48b2: $ea $10 $ac
	jp hl                                            ; $48b5: $e9


	add l                                            ; $48b6: $85
	add hl, bc                                       ; $48b7: $09
	cpl                                              ; $48b8: $2f
	ld [$0912], a                                    ; $48b9: $ea $12 $09
	cpl                                              ; $48bc: $2f
	jp hl                                            ; $48bd: $e9


	add [hl]                                         ; $48be: $86
	add hl, bc                                       ; $48bf: $09
	cpl                                              ; $48c0: $2f
	ld b, e                                          ; $48c1: $43
	db $eb                                           ; $48c2: $eb
	dec a                                            ; $48c3: $3d
	inc de                                           ; $48c4: $13
	ld [$a011], a                                    ; $48c5: $ea $11 $a0
	add hl, bc                                       ; $48c8: $09
	cpl                                              ; $48c9: $2f
	ld b, e                                          ; $48ca: $43
	ld l, d                                          ; $48cb: $6a
	ldh a, [rAUD1HIGH]                               ; $48cc: $f0 $14
	ld b, d                                          ; $48ce: $42
	db $eb                                           ; $48cf: $eb
	jr nc, jr_096_491d                               ; $48d0: $30 $4b

	inc de                                           ; $48d2: $13
	ld l, b                                          ; $48d3: $68
	pop af                                           ; $48d4: $f1
	sbc h                                            ; $48d5: $9c
	ld b, h                                          ; $48d6: $44
	inc a                                            ; $48d7: $3c
	ld d, b                                          ; $48d8: $50
	xor h                                            ; $48d9: $ac
	ld l, d                                          ; $48da: $6a
	ld l, b                                          ; $48db: $68
	pop af                                           ; $48dc: $f1
	ld a, h                                          ; $48dd: $7c
	ld e, b                                          ; $48de: $58
	ld a, [hl-]                                      ; $48df: $3a
	jr c, jr_096_492b                                ; $48e0: $38 $49

	ld a, [hl-]                                      ; $48e2: $3a
	and b                                            ; $48e3: $a0
	ld l, [hl]                                       ; $48e4: $6e

jr_096_48e5:
	ld [hl], h                                       ; $48e5: $74
	inc [hl]                                         ; $48e6: $34
	ld h, h                                          ; $48e7: $64
	ld c, e                                          ; $48e8: $4b
	ld b, l                                          ; $48e9: $45
	add hl, sp                                       ; $48ea: $39
	and b                                            ; $48eb: $a0
	cpl                                              ; $48ec: $2f
	ld b, e                                          ; $48ed: $43
	ld l, e                                          ; $48ee: $6b
	ld b, h                                          ; $48ef: $44
	ld b, l                                          ; $48f0: $45
	inc [hl]                                         ; $48f1: $34
	db $ec                                           ; $48f2: $ec
	di                                               ; $48f3: $f3
	and b                                            ; $48f4: $a0
	ld h, h                                          ; $48f5: $64
	pop af                                           ; $48f6: $f1
	ld d, a                                          ; $48f7: $57
	jr c, jr_096_48e5                                ; $48f8: $38 $eb

	jr nc, jr_096_4947                               ; $48fa: $30 $4b

	inc de                                           ; $48fc: $13
	add a                                            ; $48fd: $87
	ldh a, [$5d]                                     ; $48fe: $f0 $5d
	ld b, h                                          ; $4900: $44
	ld c, h                                          ; $4901: $4c
	and b                                            ; $4902: $a0
	cpl                                              ; $4903: $2f
	ld b, e                                          ; $4904: $43
	ld l, e                                          ; $4905: $6b
	ld c, d                                          ; $4906: $4a
	ld b, h                                          ; $4907: $44
	ld b, l                                          ; $4908: $45
	and b                                            ; $4909: $a0
	pop af                                           ; $490a: $f1
	or [hl]                                          ; $490b: $b6
	ld c, a                                          ; $490c: $4f
	ldh a, [$7d]                                     ; $490d: $f0 $7d
	inc a                                            ; $490f: $3c
	ld d, b                                          ; $4910: $50
	ldh a, [rSVBK]                                   ; $4911: $f0 $70
	ld b, d                                          ; $4913: $42
	pop af                                           ; $4914: $f1
	ld b, d                                          ; $4915: $42
	ld h, d                                          ; $4916: $62
	inc de                                           ; $4917: $13
	pop af                                           ; $4918: $f1
	sbc l                                            ; $4919: $9d
	dec sp                                           ; $491a: $3b
	ccf                                              ; $491b: $3f
	inc [hl]                                         ; $491c: $34

jr_096_491d:
	ld h, h                                          ; $491d: $64
	ldh a, [$e0]                                     ; $491e: $f0 $e0
	ld a, $3e                                        ; $4920: $3e $3e
	ccf                                              ; $4922: $3f
	jr c, jr_096_4973                                ; $4923: $38 $4e

	ld d, e                                          ; $4925: $53
	xor h                                            ; $4926: $ac
	ld c, c                                          ; $4927: $49
	ccf                                              ; $4928: $3f
	ld c, a                                          ; $4929: $4f
	inc [hl]                                         ; $492a: $34

jr_096_492b:
	ld l, d                                          ; $492b: $6a
	ld l, b                                          ; $492c: $68
	ldh a, [rAUD2HIGH]                               ; $492d: $f0 $19
	ld b, a                                          ; $492f: $47
	inc de                                           ; $4930: $13
	ldh a, [$b0]                                     ; $4931: $f0 $b0
	ld d, a                                          ; $4933: $57
	ld e, h                                          ; $4934: $5c
	ld c, l                                          ; $4935: $4d
	ld b, b                                          ; $4936: $40
	add hl, sp                                       ; $4937: $39
	ld b, a                                          ; $4938: $47
	ld a, [hl-]                                      ; $4939: $3a
	jr c, @+$47                                      ; $493a: $38 $45

	and b                                            ; $493c: $a0
	cpl                                              ; $493d: $2f
	ld b, e                                          ; $493e: $43
	xor $10                                          ; $493f: $ee $10
	xor $10                                          ; $4941: $ee $10
	and b                                            ; $4943: $a0
	ld d, d                                          ; $4944: $52
	ld e, b                                          ; $4945: $58

jr_096_4946:
	inc a                                            ; $4946: $3c

jr_096_4947:
	inc [hl]                                         ; $4947: $34
	ldh a, [rRP]                                     ; $4948: $f0 $56
	ld c, e                                          ; $494a: $4b
	inc de                                           ; $494b: $13
	ld h, h                                          ; $494c: $64
	ldh a, [$e0]                                     ; $494d: $f0 $e0
	ld a, $62                                        ; $494f: $3e $62
	ld a, $3a                                        ; $4951: $3e $3a
	jr c, jr_096_4946                                ; $4953: $38 $f1

	dec bc                                           ; $4955: $0b
	ld e, e                                          ; $4956: $5b
	ld d, [hl]                                       ; $4957: $56
	inc de                                           ; $4958: $13
	ld a, [hl-]                                      ; $4959: $3a
	jr c, jr_096_49a0                                ; $495a: $38 $44

	ld e, a                                          ; $495c: $5f
	add hl, sp                                       ; $495d: $39
	ld c, h                                          ; $495e: $4c
	and b                                            ; $495f: $a0
	cpl                                              ; $4960: $2f
	ld b, e                                          ; $4961: $43
	ld a, $3a                                        ; $4962: $3e $3a
	jr c, jr_096_49ab                                ; $4964: $38 $45

	and b                                            ; $4966: $a0
	jr c, jr_096_49d7                                ; $4967: $38 $6e

	xor h                                            ; $4969: $ac
	pop af                                           ; $496a: $f1
	or [hl]                                          ; $496b: $b6
	ld c, c                                          ; $496c: $49
	ld a, $3d                                        ; $496d: $3e $3d
	ld d, h                                          ; $496f: $54
	ld c, c                                          ; $4970: $49
	ld d, e                                          ; $4971: $53
	ld c, b                                          ; $4972: $48

jr_096_4973:
	and b                                            ; $4973: $a0
	cpl                                              ; $4974: $2f
	ld b, e                                          ; $4975: $43
	xor $10                                          ; $4976: $ee $10
	xor $10                                          ; $4978: $ee $10
	and c                                            ; $497a: $a1
	ldh a, [rRP]                                     ; $497b: $f0 $56
	ld d, e                                          ; $497d: $53
	inc [hl]                                         ; $497e: $34
	ld [$62b5], a                                    ; $497f: $ea $b5 $62
	inc de                                           ; $4982: $13
	pop af                                           ; $4983: $f1
	and c                                            ; $4984: $a1
	ld e, [hl]                                       ; $4985: $5e
	dec a                                            ; $4986: $3d
	inc a                                            ; $4987: $3c
	ld e, d                                          ; $4988: $5a
	add hl, sp                                       ; $4989: $39
	inc a                                            ; $498a: $3c
	ld h, d                                          ; $498b: $62
	ldh a, [$a4]                                     ; $498c: $f0 $a4
	ld e, [hl]                                       ; $498e: $5e
	ld c, l                                          ; $498f: $4d
	ld a, e                                          ; $4990: $7b
	xor h                                            ; $4991: $ac
	ld d, c                                          ; $4992: $51
	sbc l                                            ; $4993: $9d
	ld b, a                                          ; $4994: $47
	ldh a, [rTAC]                                    ; $4995: $f0 $07
	inc a                                            ; $4997: $3c
	dec sp                                           ; $4998: $3b
	dec a                                            ; $4999: $3d
	ld c, a                                          ; $499a: $4f
	ld b, d                                          ; $499b: $42
	ld h, d                                          ; $499c: $62
	xor l                                            ; $499d: $ad
	jr c, jr_096_4a0e                                ; $499e: $38 $6e

jr_096_49a0:
	inc [hl]                                         ; $49a0: $34
	ldh a, [rHDMA5]                                  ; $49a1: $f0 $55
	ldh a, [rBCPS]                                   ; $49a3: $f0 $68
	ld a, $3d                                        ; $49a5: $3e $3d
	xor b                                            ; $49a7: $a8
	ld c, e                                          ; $49a8: $4b
	ld c, e                                          ; $49a9: $4b
	ld c, e                                          ; $49aa: $4b

jr_096_49ab:
	ld c, e                                          ; $49ab: $4b
	ld c, e                                          ; $49ac: $4b
	ld c, e                                          ; $49ad: $4b
	ld c, e                                          ; $49ae: $4b
	ld c, e                                          ; $49af: $4b
	and b                                            ; $49b0: $a0

jr_096_49b1:
	cpl                                              ; $49b1: $2f
	ld b, e                                          ; $49b2: $43
	db $ec                                           ; $49b3: $ec
	di                                               ; $49b4: $f3
	ld b, d                                          ; $49b5: $42
	db $ed                                           ; $49b6: $ed
	ldh [c], a                                       ; $49b7: $e2
	dec [hl]                                         ; $49b8: $35
	rla                                              ; $49b9: $17
	add d                                            ; $49ba: $82
	jr c, jr_096_49fa                                ; $49bb: $38 $3d

	jr c, jr_096_49b1                                ; $49bd: $38 $f2

	dec l                                            ; $49bf: $2d
	pop af                                           ; $49c0: $f1
	jp $8213                                         ; $49c1: $c3 $13 $82


	jr c, jr_096_4a34                                ; $49c4: $38 $6e

	ld d, e                                          ; $49c6: $53
	dec sp                                           ; $49c7: $3b
	ccf                                              ; $49c8: $3f
	ld c, b                                          ; $49c9: $48
	and b                                            ; $49ca: $a0
	cpl                                              ; $49cb: $2f
	ld b, e                                          ; $49cc: $43
	ld d, c                                          ; $49cd: $51
	ld c, [hl]                                       ; $49ce: $4e
	ld b, a                                          ; $49cf: $47
	ldh a, [$ec]                                     ; $49d0: $f0 $ec
	ld d, d                                          ; $49d2: $52
	dec sp                                           ; $49d3: $3b
	ccf                                              ; $49d4: $3f
	ld b, c                                          ; $49d5: $41
	ld b, h                                          ; $49d6: $44

jr_096_49d7:
	ld e, a                                          ; $49d7: $5f
	and b                                            ; $49d8: $a0
	ldh a, [$08]                                     ; $49d9: $f0 $08
	add hl, sp                                       ; $49db: $39
	xor l                                            ; $49dc: $ad
	ldh a, [rRP]                                     ; $49dd: $f0 $56
	ld b, a                                          ; $49df: $47
	ld c, a                                          ; $49e0: $4f
	ldh a, [$e0]                                     ; $49e1: $f0 $e0
	ld d, c                                          ; $49e3: $51
	ldh a, [$e9]                                     ; $49e4: $f0 $e9
	ldh a, [$0b]                                     ; $49e6: $f0 $0b
	ld d, e                                          ; $49e8: $53
	jr c, jr_096_4a28                                ; $49e9: $38 $3d

	ld c, c                                          ; $49eb: $49
	ld c, e                                          ; $49ec: $4b
	xor h                                            ; $49ed: $ac
	ldh a, [$c0]                                     ; $49ee: $f0 $c0
	ldh a, [$f0]                                     ; $49f0: $f0 $f0
	ld b, h                                          ; $49f2: $44
	dec sp                                           ; $49f3: $3b
	dec a                                            ; $49f4: $3d
	ld b, l                                          ; $49f5: $45
	xor b                                            ; $49f6: $a8
	ld d, d                                          ; $49f7: $52
	ld [hl], h                                       ; $49f8: $74
	inc [hl]                                         ; $49f9: $34

jr_096_49fa:
	db $ed                                           ; $49fa: $ed
	nop                                              ; $49fb: $00
	dec a                                            ; $49fc: $3d
	ld d, d                                          ; $49fd: $52
	ld e, [hl]                                       ; $49fe: $5e
	and b                                            ; $49ff: $a0
	jp hl                                            ; $4a00: $e9


	dec bc                                           ; $4a01: $0b
	ld c, e                                          ; $4a02: $4b
	inc de                                           ; $4a03: $13
	ldh a, [rHDMA1]                                  ; $4a04: $f0 $51
	dec sp                                           ; $4a06: $3b
	ccf                                              ; $4a07: $3f
	ld e, h                                          ; $4a08: $5c
	dec a                                            ; $4a09: $3d
	ld b, d                                          ; $4a0a: $42
	inc a                                            ; $4a0b: $3c
	ld c, h                                          ; $4a0c: $4c
	and b                                            ; $4a0d: $a0

jr_096_4a0e:
	cpl                                              ; $4a0e: $2f
	ld b, e                                          ; $4a0f: $43
	ldh a, [rHDMA1]                                  ; $4a10: $f0 $51
	dec sp                                           ; $4a12: $3b
	ccf                                              ; $4a13: $3f
	ld e, h                                          ; $4a14: $5c
	ccf                                              ; $4a15: $3f
	ld a, [hl-]                                      ; $4a16: $3a
	jr c, jr_096_4a5e                                ; $4a17: $38 $45

	and b                                            ; $4a19: $a0
	jr c, jr_096_4a8a                                ; $4a1a: $38 $6e

	inc [hl]                                         ; $4a1c: $34
	ldh a, [rHDMA5]                                  ; $4a1d: $f0 $55
	ldh a, [rBCPS]                                   ; $4a1f: $f0 $68
	ld a, $3d                                        ; $4a21: $3e $3d
	xor l                                            ; $4a23: $ad
	ld l, [hl]                                       ; $4a24: $6e
	ld c, e                                          ; $4a25: $4b
	ld d, a                                          ; $4a26: $57
	ld a, [hl-]                                      ; $4a27: $3a

jr_096_4a28:
	xor l                                            ; $4a28: $ad
	ld c, e                                          ; $4a29: $4b
	dec sp                                           ; $4a2a: $3b
	ld c, e                                          ; $4a2b: $4b
	ld c, e                                          ; $4a2c: $4b
	ld c, e                                          ; $4a2d: $4b
	ld c, e                                          ; $4a2e: $4b
	ld c, e                                          ; $4a2f: $4b
	and b                                            ; $4a30: $a0
	cpl                                              ; $4a31: $2f
	ld b, e                                          ; $4a32: $43
	ld l, e                                          ; $4a33: $6b

jr_096_4a34:
	ld d, e                                          ; $4a34: $53
	inc [hl]                                         ; $4a35: $34
	ld l, [hl]                                       ; $4a36: $6e
	ld c, e                                          ; $4a37: $4b
	ld d, a                                          ; $4a38: $57
	ld a, [hl-]                                      ; $4a39: $3a
	inc [hl]                                         ; $4a3a: $34
	ld b, h                                          ; $4a3b: $44
	and b                                            ; $4a3c: $a0
	cpl                                              ; $4a3d: $2f
	ld b, e                                          ; $4a3e: $43
	ldh a, [rHDMA1]                                  ; $4a3f: $f0 $51
	dec sp                                           ; $4a41: $3b
	ccf                                              ; $4a42: $3f
	ld e, h                                          ; $4a43: $5c
	dec a                                            ; $4a44: $3d
	ld b, a                                          ; $4a45: $47
	inc de                                           ; $4a46: $13
	ldh a, [$ec]                                     ; $4a47: $f0 $ec
	ld d, d                                          ; $4a49: $52
	dec sp                                           ; $4a4a: $3b
	ccf                                              ; $4a4b: $3f
	ld c, [hl]                                       ; $4a4c: $4e
	ld b, h                                          ; $4a4d: $44
	ld e, a                                          ; $4a4e: $5f
	and b                                            ; $4a4f: $a0
	ldh a, [$08]                                     ; $4a50: $f0 $08
	add hl, sp                                       ; $4a52: $39
	xor l                                            ; $4a53: $ad
	ld d, d                                          ; $4a54: $52
	ld [hl], h                                       ; $4a55: $74
	inc [hl]                                         ; $4a56: $34
	db $ed                                           ; $4a57: $ed
	nop                                              ; $4a58: $00
	ldh a, [c]                                       ; $4a59: $f2
	add d                                            ; $4a5a: $82
	ld e, [hl]                                       ; $4a5b: $5e
	and b                                            ; $4a5c: $a0
	cpl                                              ; $4a5d: $2f

jr_096_4a5e:
	ld [hl-], a                                      ; $4a5e: $32
	ld a, a                                          ; $4a5f: $7f
	ld h, d                                          ; $4a60: $62
	pop af                                           ; $4a61: $f1
	inc b                                            ; $4a62: $04
	ld d, a                                          ; $4a63: $57
	ldh a, [hDisp1_WX]                                     ; $4a64: $f0 $96
	ld a, $3f                                        ; $4a66: $3e $3f
	xor h                                            ; $4a68: $ac
	db $eb                                           ; $4a69: $eb
	cpl                                              ; $4a6a: $2f
	ld b, d                                          ; $4a6b: $42
	ld h, h                                          ; $4a6c: $64
	ldh a, [rBCPS]                                   ; $4a6d: $f0 $68
	ld h, d                                          ; $4a6f: $62
	ld a, $47                                        ; $4a70: $3e $47
	xor h                                            ; $4a72: $ac
	ld h, a                                          ; $4a73: $67
	ld d, l                                          ; $4a74: $55
	inc a                                            ; $4a75: $3c
	and e                                            ; $4a76: $a3
	cpl                                              ; $4a77: $2f
	ld [hl-], a                                      ; $4a78: $32
	ldh a, [$31]                                     ; $4a79: $f0 $31
	ld c, e                                          ; $4a7b: $4b
	ldh a, [$b6]                                     ; $4a7c: $f0 $b6
	ldh a, [$34]                                     ; $4a7e: $f0 $34
	ld b, a                                          ; $4a80: $47
	inc de                                           ; $4a81: $13
	pop af                                           ; $4a82: $f1
	inc l                                            ; $4a83: $2c
	di                                               ; $4a84: $f3
	ld [hl], l                                       ; $4a85: $75
	ld b, h                                          ; $4a86: $44
	ld e, l                                          ; $4a87: $5d
	inc [hl]                                         ; $4a88: $34
	db $f4                                           ; $4a89: $f4

jr_096_4a8a:
	ld h, b                                          ; $4a8a: $60
	pop af                                           ; $4a8b: $f1
	xor l                                            ; $4a8c: $ad
	ld a, $3d                                        ; $4a8d: $3e $3d
	ld b, c                                          ; $4a8f: $41
	ld b, h                                          ; $4a90: $44
	and e                                            ; $4a91: $a3
	cpl                                              ; $4a92: $2f
	ld b, e                                          ; $4a93: $43
	ld e, b                                          ; $4a94: $58
	ccf                                              ; $4a95: $3f
	inc [hl]                                         ; $4a96: $34
	ldh a, [$98]                                     ; $4a97: $f0 $98
	ld b, a                                          ; $4a99: $47
	ldh a, [$b6]                                     ; $4a9a: $f0 $b6
	ldh a, [$34]                                     ; $4a9c: $f0 $34
	ld b, d                                          ; $4a9e: $42
	inc de                                           ; $4a9f: $13
	ld h, h                                          ; $4aa0: $64
	ldh a, [$e0]                                     ; $4aa1: $f0 $e0
	ld a, $62                                        ; $4aa3: $3e $62
	db $ec                                           ; $4aa5: $ec
	inc c                                            ; $4aa6: $0c
	ld a, [hl-]                                      ; $4aa7: $3a
	and b                                            ; $4aa8: $a0
	cpl                                              ; $4aa9: $2f
	ld b, e                                          ; $4aaa: $43
	ld b, [hl]                                       ; $4aab: $46
	dec sp                                           ; $4aac: $3b
	inc [hl]                                         ; $4aad: $34
	db $ed                                           ; $4aae: $ed
	xor c                                            ; $4aaf: $a9
	and b                                            ; $4ab0: $a0
	ld d, $a8                                        ; $4ab1: $16 $a8
	db $eb                                           ; $4ab3: $eb
	rst FarCall                                          ; $4ab4: $f7
	and c                                            ; $4ab5: $a1
	cpl                                              ; $4ab6: $2f
	ld b, e                                          ; $4ab7: $43
	db $eb                                           ; $4ab8: $eb
	jp $e9a8                                         ; $4ab9: $c3 $a8 $e9


	dec bc                                           ; $4abc: $0b
	and b                                            ; $4abd: $a0
	ld e, [hl]                                       ; $4abe: $5e
	dec sp                                           ; $4abf: $3b
	ld [hl], $f0                                     ; $4ac0: $36 $f0
	add hl, hl                                       ; $4ac2: $29
	ld a, $38                                        ; $4ac3: $3e $38
	xor l                                            ; $4ac5: $ad
	ld b, [hl]                                       ; $4ac6: $46
	ld d, a                                          ; $4ac7: $57
	ld d, e                                          ; $4ac8: $53
	ld c, c                                          ; $4ac9: $49
	add hl, sp                                       ; $4aca: $39
	and b                                            ; $4acb: $a0
	cpl                                              ; $4acc: $2f
	ld b, e                                          ; $4acd: $43
	db $ec                                           ; $4ace: $ec
	cp c                                             ; $4acf: $b9
	xor b                                            ; $4ad0: $a8
	ld [$a057], a                                    ; $4ad1: $ea $57 $a0
	db $ed                                           ; $4ad4: $ed
	ld b, e                                          ; $4ad5: $43
	inc [hl]                                         ; $4ad6: $34
	ld l, a                                          ; $4ad7: $6f
	xor l                                            ; $4ad8: $ad
	ld b, [hl]                                       ; $4ad9: $46
	dec sp                                           ; $4ada: $3b
	inc [hl]                                         ; $4adb: $34
	ld c, a                                          ; $4adc: $4f
	add hl, sp                                       ; $4add: $39
	pop af                                           ; $4ade: $f1
	nop                                              ; $4adf: $00
	pop af                                           ; $4ae0: $f1
	ld l, b                                          ; $4ae1: $68
	ld b, a                                          ; $4ae2: $47
	db $eb                                           ; $4ae3: $eb
	ld [hl], d                                       ; $4ae4: $72
	ld c, b                                          ; $4ae5: $48
	and b                                            ; $4ae6: $a0
	cpl                                              ; $4ae7: $2f
	ld [hl-], a                                      ; $4ae8: $32
	ld d, c                                          ; $4ae9: $51
	ld [hl], b                                       ; $4aea: $70
	ld d, l                                          ; $4aeb: $55
	di                                               ; $4aec: $f3
	rrca                                             ; $4aed: $0f
	ccf                                              ; $4aee: $3f
	ccf                                              ; $4aef: $3f
	dec a                                            ; $4af0: $3d
	ld a, [hl-]                                      ; $4af1: $3a
	xor b                                            ; $4af2: $a8
	add sp, -$03                                     ; $4af3: $e8 $fd
	and e                                            ; $4af5: $a3
	db $eb                                           ; $4af6: $eb
	rst FarCall                                          ; $4af7: $f7
	db $ed                                           ; $4af8: $ed
	ld d, a                                          ; $4af9: $57
	and c                                            ; $4afa: $a1
	ld e, [hl]                                       ; $4afb: $5e
	dec sp                                           ; $4afc: $3b
	inc [hl]                                         ; $4afd: $34
	ld l, a                                          ; $4afe: $6f
	ld b, a                                          ; $4aff: $47
	xor c                                            ; $4b00: $a9
	ld b, [hl]                                       ; $4b01: $46
	ld d, a                                          ; $4b02: $57
	ld d, e                                          ; $4b03: $53
	ld c, c                                          ; $4b04: $49
	add hl, sp                                       ; $4b05: $39
	and b                                            ; $4b06: $a0
	cpl                                              ; $4b07: $2f
	ld [hl-], a                                      ; $4b08: $32
	ld a, [hl-]                                      ; $4b09: $3a
	ld b, c                                          ; $4b0a: $41
	inc a                                            ; $4b0b: $3c
	ldh a, [$66]                                     ; $4b0c: $f0 $66
	ld b, c                                          ; $4b0e: $41
	ld c, d                                          ; $4b0f: $4a
	ld d, l                                          ; $4b10: $55
	ld c, l                                          ; $4b11: $4d
	dec a                                            ; $4b12: $3d
	inc de                                           ; $4b13: $13
	db $eb                                           ; $4b14: $eb
	sbc l                                            ; $4b15: $9d
	and e                                            ; $4b16: $a3
	db $eb                                           ; $4b17: $eb
	rst FarCall                                          ; $4b18: $f7
	and c                                            ; $4b19: $a1
	ld e, [hl]                                       ; $4b1a: $5e
	dec sp                                           ; $4b1b: $3b
	inc [hl]                                         ; $4b1c: $34
	ld l, a                                          ; $4b1d: $6f
	ld b, a                                          ; $4b1e: $47
	xor c                                            ; $4b1f: $a9
	ld b, b                                          ; $4b20: $40
	ld c, l                                          ; $4b21: $4d
	ld e, e                                          ; $4b22: $5b
	ld d, [hl]                                       ; $4b23: $56
	inc [hl]                                         ; $4b24: $34
	ld b, [hl]                                       ; $4b25: $46
	ld d, a                                          ; $4b26: $57
	ld d, e                                          ; $4b27: $53
	dec a                                            ; $4b28: $3d
	ld d, l                                          ; $4b29: $55
	ld c, a                                          ; $4b2a: $4f
	ld d, b                                          ; $4b2b: $50
	add hl, sp                                       ; $4b2c: $39
	ld c, h                                          ; $4b2d: $4c
	and b                                            ; $4b2e: $a0
	ld hl, $10ee                                     ; $4b2f: $21 $ee $10
	xor $10                                          ; $4b32: $ee $10
	xor b                                            ; $4b34: $a8
	jr nz, jr_096_4ba2                               ; $4b35: $20 $6b

	and c                                            ; $4b37: $a1
	ld b, b                                          ; $4b38: $40
	add hl, sp                                       ; $4b39: $39
	xor l                                            ; $4b3a: $ad
	ld c, c                                          ; $4b3b: $49
	ld d, a                                          ; $4b3c: $57
	ld b, [hl]                                       ; $4b3d: $46
	ld e, [hl]                                       ; $4b3e: $5e
	sbc h                                            ; $4b3f: $9c
	inc [hl]                                         ; $4b40: $34
	pop af                                           ; $4b41: $f1
	and c                                            ; $4b42: $a1
	dec sp                                           ; $4b43: $3b
	ccf                                              ; $4b44: $3f
	ld h, h                                          ; $4b45: $64
	ld d, l                                          ; $4b46: $55
	ld h, e                                          ; $4b47: $63
	and b                                            ; $4b48: $a0
	cpl                                              ; $4b49: $2f
	db $eb                                           ; $4b4a: $eb
	dec de                                           ; $4b4b: $1b
	inc de                                           ; $4b4c: $13
	ld c, a                                          ; $4b4d: $4f
	ld d, b                                          ; $4b4e: $50
	dec sp                                           ; $4b4f: $3b
	ccf                                              ; $4b50: $3f
	ld d, l                                          ; $4b51: $55
	ld c, l                                          ; $4b52: $4d
	dec a                                            ; $4b53: $3d
	ld a, [hl-]                                      ; $4b54: $3a
	ld c, b                                          ; $4b55: $48
	and e                                            ; $4b56: $a3
	cpl                                              ; $4b57: $2f
	ld b, e                                          ; $4b58: $43
	ld b, [hl]                                       ; $4b59: $46
	dec sp                                           ; $4b5a: $3b
	inc [hl]                                         ; $4b5b: $34
	db $ec                                           ; $4b5c: $ec
	rst SubAFromDE                                          ; $4b5d: $df
	and b                                            ; $4b5e: $a0
	ld d, $a8                                        ; $4b5f: $16 $a8
	ld e, d                                          ; $4b61: $5a
	add hl, sp                                       ; $4b62: $39
	ld a, $3d                                        ; $4b63: $3e $3d
	ld b, c                                          ; $4b65: $41
	ld c, d                                          ; $4b66: $4a
	ld d, c                                          ; $4b67: $51
	inc a                                            ; $4b68: $3c
	and c                                            ; $4b69: $a1
	ld e, [hl]                                       ; $4b6a: $5e
	dec sp                                           ; $4b6b: $3b
	inc [hl]                                         ; $4b6c: $34
	ld l, a                                          ; $4b6d: $6f
	ld b, a                                          ; $4b6e: $47
	ld c, d                                          ; $4b6f: $4a
	ld d, c                                          ; $4b70: $51
	inc a                                            ; $4b71: $3c
	xor c                                            ; $4b72: $a9
	jp hl                                            ; $4b73: $e9


	inc d                                            ; $4b74: $14
	xor b                                            ; $4b75: $a8
	ld d, c                                          ; $4b76: $51
	ld [hl], b                                       ; $4b77: $70
	ld d, l                                          ; $4b78: $55
	ldh a, [$29]                                     ; $4b79: $f0 $29
	ld a, $38                                        ; $4b7b: $3e $38
	ld c, d                                          ; $4b7d: $4a
	ld d, c                                          ; $4b7e: $51
	ld c, b                                          ; $4b7f: $48
	and b                                            ; $4b80: $a0
	db $ed                                           ; $4b81: $ed
	ld b, e                                          ; $4b82: $43
	inc [hl]                                         ; $4b83: $34
	ld l, a                                          ; $4b84: $6f
	xor l                                            ; $4b85: $ad
	pop af                                           ; $4b86: $f1
	and c                                            ; $4b87: $a1
	ld e, [hl]                                       ; $4b88: $5e
	ld c, [hl]                                       ; $4b89: $4e
	ld c, c                                          ; $4b8a: $49
	ld c, e                                          ; $4b8b: $4b
	xor h                                            ; $4b8c: $ac
	ld [hl], a                                       ; $4b8d: $77
	dec sp                                           ; $4b8e: $3b
	ccf                                              ; $4b8f: $3f
	ld a, [hl-]                                      ; $4b90: $3a
	inc a                                            ; $4b91: $3c
	dec sp                                           ; $4b92: $3b
	dec a                                            ; $4b93: $3d
	inc a                                            ; $4b94: $3c
	ld d, b                                          ; $4b95: $50
	ld c, b                                          ; $4b96: $48
	and b                                            ; $4b97: $a0
	cpl                                              ; $4b98: $2f
	ld b, e                                          ; $4b99: $43
	db $ec                                           ; $4b9a: $ec
	rst SubAFromDE                                          ; $4b9b: $df
	ld b, a                                          ; $4b9c: $47

jr_096_4b9d:
	pop af                                           ; $4b9d: $f1
	and c                                            ; $4b9e: $a1
	dec sp                                           ; $4b9f: $3b
	ccf                                              ; $4ba0: $3f
	inc de                                           ; $4ba1: $13

jr_096_4ba2:
	ldh a, [$e0]                                     ; $4ba2: $f0 $e0
	ld e, b                                          ; $4ba4: $58
	ld a, [hl-]                                      ; $4ba5: $3a
	jr c, jr_096_4b9d                                ; $4ba6: $38 $f5

	ld de, $3d91                                     ; $4ba8: $11 $91 $3d
	ld d, a                                          ; $4bab: $57
	ld a, [hl-]                                      ; $4bac: $3a
	inc de                                           ; $4bad: $13
	ldh a, [$f8]                                     ; $4bae: $f0 $f8
	ld a, [hl-]                                      ; $4bb0: $3a
	ld b, c                                          ; $4bb1: $41
	ccf                                              ; $4bb2: $3f
	jr c, jr_096_4bef                                ; $4bb3: $38 $3a

	jr c, jr_096_4bfc                                ; $4bb5: $38 $45

	and b                                            ; $4bb7: $a0
	ld b, b                                          ; $4bb8: $40
	inc [hl]                                         ; $4bb9: $34
	ld b, b                                          ; $4bba: $40
	ld b, c                                          ; $4bbb: $41
	ld a, [hl-]                                      ; $4bbc: $3a
	ld d, h                                          ; $4bbd: $54
	ld c, c                                          ; $4bbe: $49
	inc de                                           ; $4bbf: $13
	ld a, [hl-]                                      ; $4bc0: $3a
	jr c, jr_096_4c0d                                ; $4bc1: $38 $4a

	ld d, c                                          ; $4bc3: $51
	ld e, l                                          ; $4bc4: $5d
	ld e, d                                          ; $4bc5: $5a
	xor l                                            ; $4bc6: $ad
	ld c, d                                          ; $4bc7: $4a
	inc [hl]                                         ; $4bc8: $34
	ld c, d                                          ; $4bc9: $4a
	ld c, e                                          ; $4bca: $4b
	inc [hl]                                         ; $4bcb: $34
	db $eb                                           ; $4bcc: $eb
	ld e, d                                          ; $4bcd: $5a
	and b                                            ; $4bce: $a0
	ld e, d                                          ; $4bcf: $5a
	add hl, sp                                       ; $4bd0: $39
	ld a, $3d                                        ; $4bd1: $3e $3d
	ld b, c                                          ; $4bd3: $41
	ld c, d                                          ; $4bd4: $4a
	ld d, c                                          ; $4bd5: $51
	inc a                                            ; $4bd6: $3c
	and c                                            ; $4bd7: $a1
	ld e, [hl]                                       ; $4bd8: $5e
	dec sp                                           ; $4bd9: $3b
	inc [hl]                                         ; $4bda: $34
	ld l, a                                          ; $4bdb: $6f
	ld b, a                                          ; $4bdc: $47
	xor c                                            ; $4bdd: $a9
	ld b, [hl]                                       ; $4bde: $46
	ld d, a                                          ; $4bdf: $57
	ld d, e                                          ; $4be0: $53
	ld c, c                                          ; $4be1: $49
	add hl, sp                                       ; $4be2: $39
	ld [hl], b                                       ; $4be3: $70
	ld e, b                                          ; $4be4: $58
	jr c, jr_096_4c39                                ; $4be5: $38 $52

	ld d, c                                          ; $4be7: $51
	xor b                                            ; $4be8: $a8
	ldh a, [$29]                                     ; $4be9: $f0 $29
	ld a, $38                                        ; $4beb: $3e $38
	ld c, d                                          ; $4bed: $4a
	ld d, c                                          ; $4bee: $51

jr_096_4bef:
	ld c, h                                          ; $4bef: $4c
	and b                                            ; $4bf0: $a0
	ld e, [hl]                                       ; $4bf1: $5e
	dec sp                                           ; $4bf2: $3b
	inc [hl]                                         ; $4bf3: $34
	ld l, a                                          ; $4bf4: $6f
	ld b, a                                          ; $4bf5: $47
	ld c, d                                          ; $4bf6: $4a
	ld d, c                                          ; $4bf7: $51
	inc a                                            ; $4bf8: $3c
	xor c                                            ; $4bf9: $a9
	jp hl                                            ; $4bfa: $e9


	inc d                                            ; $4bfb: $14

jr_096_4bfc:
	and b                                            ; $4bfc: $a0
	ld hl, $10ee                                     ; $4bfd: $21 $ee $10
	xor $10                                          ; $4c00: $ee $10
	xor b                                            ; $4c02: $a8
	jr nz, @+$6d                                     ; $4c03: $20 $6b

	ld c, d                                          ; $4c05: $4a
	ld d, c                                          ; $4c06: $51
	inc a                                            ; $4c07: $3c
	and c                                            ; $4c08: $a1
	cp [hl]                                          ; $4c09: $be
	xor b                                            ; $4c0a: $a8
	jp hl                                            ; $4c0b: $e9


	inc d                                            ; $4c0c: $14

jr_096_4c0d:
	and b                                            ; $4c0d: $a0
	cpl                                              ; $4c0e: $2f
	ld b, e                                          ; $4c0f: $43
	ld b, [hl]                                       ; $4c10: $46
	dec sp                                           ; $4c11: $3b
	inc [hl]                                         ; $4c12: $34
	db $ec                                           ; $4c13: $ec
	ldh [$a0], a                                     ; $4c14: $e0 $a0
	ld d, $a8                                        ; $4c16: $16 $a8
	ld l, e                                          ; $4c18: $6b
	inc a                                            ; $4c19: $3c
	ldh a, [rAUD2LEN]                                ; $4c1a: $f0 $16
	and c                                            ; $4c1c: $a1
	ld b, b                                          ; $4c1d: $40
	ld c, l                                          ; $4c1e: $4d
	ld c, e                                          ; $4c1f: $4b
	xor h                                            ; $4c20: $ac
	push af                                          ; $4c21: $f5
	db $10                                           ; $4c22: $10
	ldh a, [$6f]                                     ; $4c23: $f0 $6f
	ld a, [hl-]                                      ; $4c25: $3a
	ldh a, [rVBK]                                    ; $4c26: $f0 $4f
	ldh a, [c]                                       ; $4c28: $f2
	push af                                          ; $4c29: $f5
	ld e, l                                          ; $4c2a: $5d
	ld c, h                                          ; $4c2b: $4c
	xor b                                            ; $4c2c: $a8
	ld b, [hl]                                       ; $4c2d: $46
	ld d, a                                          ; $4c2e: $57
	ld d, e                                          ; $4c2f: $53
	dec a                                            ; $4c30: $3d
	ld d, l                                          ; $4c31: $55
	db $eb                                           ; $4c32: $eb
	ld a, a                                          ; $4c33: $7f
	and b                                            ; $4c34: $a0
	ld b, l                                          ; $4c35: $45
	inc [hl]                                         ; $4c36: $34
	ldh a, [$66]                                     ; $4c37: $f0 $66

jr_096_4c39:
	ld b, c                                          ; $4c39: $41
	ld c, d                                          ; $4c3a: $4a
	ld a, [hl-]                                      ; $4c3b: $3a
	ld b, c                                          ; $4c3c: $41
	inc a                                            ; $4c3d: $3c
	xor h                                            ; $4c3e: $ac
	jr c, jr_096_4c7b                                ; $4c3f: $38 $3a

	jr c, jr_096_4ca6                                ; $4c41: $38 $63

	ld b, l                                          ; $4c43: $45
	xor b                                            ; $4c44: $a8
	ld [$a021], a                                    ; $4c45: $ea $21 $a0
	ld l, e                                          ; $4c48: $6b
	inc a                                            ; $4c49: $3c
	ldh a, [rAUD2LEN]                                ; $4c4a: $f0 $16
	and c                                            ; $4c4c: $a1
	sub c                                            ; $4c4d: $91
	ldh a, [$59]                                     ; $4c4e: $f0 $59
	ld b, d                                          ; $4c50: $42
	ld h, a                                          ; $4c51: $67
	di                                               ; $4c52: $f3
	ld b, e                                          ; $4c53: $43
	ld c, h                                          ; $4c54: $4c
	xor b                                            ; $4c55: $a8
	ld l, l                                          ; $4c56: $6d
	ldh a, [$a9]                                     ; $4c57: $f0 $a9
	inc [hl]                                         ; $4c59: $34
	ldh a, [rBCPS]                                   ; $4c5a: $f0 $68
	ld b, h                                          ; $4c5c: $44
	ld e, l                                          ; $4c5d: $5d
	ld c, e                                          ; $4c5e: $4b
	add d                                            ; $4c5f: $82
	add hl, sp                                       ; $4c60: $39
	ld h, e                                          ; $4c61: $63
	xor b                                            ; $4c62: $a8
	ld b, b                                          ; $4c63: $40
	ld c, l                                          ; $4c64: $4d
	ld e, e                                          ; $4c65: $5b
	ld d, [hl]                                       ; $4c66: $56
	inc [hl]                                         ; $4c67: $34
	ld e, b                                          ; $4c68: $58
	ld b, l                                          ; $4c69: $45
	ld a, [hl-]                                      ; $4c6a: $3a
	ld d, b                                          ; $4c6b: $50
	and b                                            ; $4c6c: $a0
	ld l, e                                          ; $4c6d: $6b
	ld b, d                                          ; $4c6e: $42
	ldh a, [rAUD2LEN]                                ; $4c6f: $f0 $16
	and c                                            ; $4c71: $a1
	ld b, [hl]                                       ; $4c72: $46
	ld d, a                                          ; $4c73: $57
	ld d, e                                          ; $4c74: $53
	ld c, c                                          ; $4c75: $49
	xor b                                            ; $4c76: $a8
	ld c, a                                          ; $4c77: $4f
	ld d, b                                          ; $4c78: $50
	add hl, sp                                       ; $4c79: $39
	ld h, e                                          ; $4c7a: $63

jr_096_4c7b:
	ld c, h                                          ; $4c7b: $4c
	and b                                            ; $4c7c: $a0
	ld b, b                                          ; $4c7d: $40
	add hl, sp                                       ; $4c7e: $39
	xor l                                            ; $4c7f: $ad
	ld b, [hl]                                       ; $4c80: $46
	ld d, a                                          ; $4c81: $57
	ld d, e                                          ; $4c82: $53
	ld c, c                                          ; $4c83: $49
	and b                                            ; $4c84: $a0
	cpl                                              ; $4c85: $2f
	ld b, e                                          ; $4c86: $43
	ld b, [hl]                                       ; $4c87: $46
	dec sp                                           ; $4c88: $3b
	inc [hl]                                         ; $4c89: $34
	db $ec                                           ; $4c8a: $ec
	pop hl                                           ; $4c8b: $e1
	and b                                            ; $4c8c: $a0
	ld d, $a8                                        ; $4c8d: $16 $a8
	ld l, a                                          ; $4c8f: $6f
	ld b, a                                          ; $4c90: $47
	ld l, e                                          ; $4c91: $6b
	inc a                                            ; $4c92: $3c
	ldh a, [rAUD2LEN]                                ; $4c93: $f0 $16
	and c                                            ; $4c95: $a1
	ld h, e                                          ; $4c96: $63
	inc [hl]                                         ; $4c97: $34
	ld l, a                                          ; $4c98: $6f
	ld b, a                                          ; $4c99: $47
	xor c                                            ; $4c9a: $a9
	db $ec                                           ; $4c9b: $ec
	sub e                                            ; $4c9c: $93
	inc [hl]                                         ; $4c9d: $34
	ldh a, [$29]                                     ; $4c9e: $f0 $29
	ld a, $38                                        ; $4ca0: $3e $38
	ld c, b                                          ; $4ca2: $48
	and b                                            ; $4ca3: $a0
	ld c, a                                          ; $4ca4: $4f
	dec sp                                           ; $4ca5: $3b

jr_096_4ca6:
	dec a                                            ; $4ca6: $3d
	jr c, jr_096_4ce3                                ; $4ca7: $38 $3a

	ld d, l                                          ; $4ca9: $55
	ccf                                              ; $4caa: $3f
	xor h                                            ; $4cab: $ac
	ldh a, [$b7]                                     ; $4cac: $f0 $b7
	ldh a, [$8c]                                     ; $4cae: $f0 $8c
	ld d, b                                          ; $4cb0: $50
	ld c, l                                          ; $4cb1: $4d
	db $ec                                           ; $4cb2: $ec
	dec bc                                           ; $4cb3: $0b
	xor b                                            ; $4cb4: $a8
	ld b, b                                          ; $4cb5: $40
	ld c, l                                          ; $4cb6: $4d
	ld e, e                                          ; $4cb7: $5b
	ld d, [hl]                                       ; $4cb8: $56
	inc [hl]                                         ; $4cb9: $34
	ld b, [hl]                                       ; $4cba: $46
	ld d, a                                          ; $4cbb: $57
	ld d, e                                          ; $4cbc: $53
	ld c, c                                          ; $4cbd: $49
	add hl, sp                                       ; $4cbe: $39
	and b                                            ; $4cbf: $a0
	cpl                                              ; $4cc0: $2f
	ld [hl-], a                                      ; $4cc1: $32
	ld b, [hl]                                       ; $4cc2: $46
	ldh a, [rSB]                                     ; $4cc3: $f0 $01
	ccf                                              ; $4cc5: $3f
	ld b, l                                          ; $4cc6: $45
	inc a                                            ; $4cc7: $3c
	dec sp                                           ; $4cc8: $3b
	dec a                                            ; $4cc9: $3d
	and e                                            ; $4cca: $a3
	db $ed                                           ; $4ccb: $ed
	ld b, [hl]                                       ; $4ccc: $46
	xor b                                            ; $4ccd: $a8
	ld l, e                                          ; $4cce: $6b
	inc a                                            ; $4ccf: $3c
	ldh a, [rAUD2LEN]                                ; $4cd0: $f0 $16
	and c                                            ; $4cd2: $a1
	db $ec                                           ; $4cd3: $ec
	scf                                              ; $4cd4: $37
	inc [hl]                                         ; $4cd5: $34
	sbc $a9                                          ; $4cd6: $de $a9
	ldh a, [$29]                                     ; $4cd8: $f0 $29
	ld a, $38                                        ; $4cda: $3e $38
	ld h, e                                          ; $4cdc: $63
	and b                                            ; $4cdd: $a0
	db $eb                                           ; $4cde: $eb
	ld e, l                                          ; $4cdf: $5d
	inc [hl]                                         ; $4ce0: $34
	ld b, [hl]                                       ; $4ce1: $46
	ld d, a                                          ; $4ce2: $57

jr_096_4ce3:
	ld d, e                                          ; $4ce3: $53
	ld c, c                                          ; $4ce4: $49
	and b                                            ; $4ce5: $a0
	ld hl, $10ee                                     ; $4ce6: $21 $ee $10
	xor $10                                          ; $4ce9: $ee $10
	xor b                                            ; $4ceb: $a8
	jr nz, jr_096_4d59                               ; $4cec: $20 $6b

	ld b, d                                          ; $4cee: $42
	ldh a, [rAUD2LEN]                                ; $4cef: $f0 $16
	ld b, l                                          ; $4cf1: $45
	and c                                            ; $4cf2: $a1
	cpl                                              ; $4cf3: $2f
	ld b, e                                          ; $4cf4: $43
	ld b, [hl]                                       ; $4cf5: $46
	dec sp                                           ; $4cf6: $3b
	inc [hl]                                         ; $4cf7: $34
	db $ed                                           ; $4cf8: $ed
	ld d, e                                          ; $4cf9: $53
	and b                                            ; $4cfa: $a0
	xor $14                                          ; $4cfb: $ee $14
	inc [hl]                                         ; $4cfd: $34
	ld d, $a8                                        ; $4cfe: $16 $a8
	ld l, a                                          ; $4d00: $6f
	ld b, a                                          ; $4d01: $47
	ld l, e                                          ; $4d02: $6b
	inc a                                            ; $4d03: $3c
	xor $1c                                          ; $4d04: $ee $1c
	ld c, d                                          ; $4d06: $4a
	ld c, a                                          ; $4d07: $4f
	and c                                            ; $4d08: $a1
	ldh a, [c]                                       ; $4d09: $f2
	rra                                              ; $4d0a: $1f
	ldh a, [$38]                                     ; $4d0b: $f0 $38
	ld d, e                                          ; $4d0d: $53
	inc [hl]                                         ; $4d0e: $34
	ld l, a                                          ; $4d0f: $6f
	ld b, a                                          ; $4d10: $47
	xor c                                            ; $4d11: $a9
	rst JumpTable                                          ; $4d12: $c7
	xor b                                            ; $4d13: $a8
	ld b, [hl]                                       ; $4d14: $46
	ld d, a                                          ; $4d15: $57
	ld d, e                                          ; $4d16: $53
	ld c, c                                          ; $4d17: $49
	add hl, sp                                       ; $4d18: $39
	and b                                            ; $4d19: $a0
	ld l, d                                          ; $4d1a: $6a
	ldh a, [$0d]                                     ; $4d1b: $f0 $0d
	inc [hl]                                         ; $4d1d: $34
	ldh a, [rWY]                                     ; $4d1e: $f0 $4a
	ld e, c                                          ; $4d20: $59
	ld l, c                                          ; $4d21: $69
	ld a, $3f                                        ; $4d22: $3e $3f
	inc de                                           ; $4d24: $13
	ld b, [hl]                                       ; $4d25: $46
	ldh a, [rSB]                                     ; $4d26: $f0 $01
	ccf                                              ; $4d28: $3f
	ld c, a                                          ; $4d29: $4f
	ret nc                                           ; $4d2a: $d0

	xor b                                            ; $4d2b: $a8
	ld [$5121], a                                    ; $4d2c: $ea $21 $51
	ld c, [hl]                                       ; $4d2f: $4e
	ld h, e                                          ; $4d30: $63
	and b                                            ; $4d31: $a0
	xor $14                                          ; $4d32: $ee $14
	inc [hl]                                         ; $4d34: $34
	ld d, $a8                                        ; $4d35: $16 $a8
	ld l, e                                          ; $4d37: $6b
	inc a                                            ; $4d38: $3c
	xor $1c                                          ; $4d39: $ee $1c
	inc a                                            ; $4d3b: $3c
	ld a, $50                                        ; $4d3c: $3e $50
	and c                                            ; $4d3e: $a1
	ld b, [hl]                                       ; $4d3f: $46
	ld d, a                                          ; $4d40: $57
	ld d, e                                          ; $4d41: $53
	ld c, c                                          ; $4d42: $49
	add hl, sp                                       ; $4d43: $39
	xor b                                            ; $4d44: $a8
	db $eb                                           ; $4d45: $eb
	ld a, a                                          ; $4d46: $7f
	and b                                            ; $4d47: $a0
	xor $14                                          ; $4d48: $ee $14
	inc [hl]                                         ; $4d4a: $34
	ld l, a                                          ; $4d4b: $6f
	ld b, a                                          ; $4d4c: $47
	ld l, e                                          ; $4d4d: $6b
	inc a                                            ; $4d4e: $3c
	xor $1c                                          ; $4d4f: $ee $1c

Call_096_4d51:
	and c                                            ; $4d51: $a1
	ld d, d                                          ; $4d52: $52
	dec a                                            ; $4d53: $3d
	xor c                                            ; $4d54: $a9
	ld a, d                                          ; $4d55: $7a
	ld d, a                                          ; $4d56: $57
	ld d, e                                          ; $4d57: $53
	pop af                                           ; $4d58: $f1

jr_096_4d59:
	sbc $3b                                          ; $4d59: $de $3b
	ld h, c                                          ; $4d5b: $61
	ld d, [hl]                                       ; $4d5c: $56
	add hl, sp                                       ; $4d5d: $39
	ld h, e                                          ; $4d5e: $63
	ld c, h                                          ; $4d5f: $4c
	and b                                            ; $4d60: $a0
	ldh a, [rSCY]                                    ; $4d61: $f0 $42
	ld b, c                                          ; $4d63: $41
	scf                                              ; $4d64: $37
	inc de                                           ; $4d65: $13
	ld l, e                                          ; $4d66: $6b
	ld b, d                                          ; $4d67: $42
	xor $1c                                          ; $4d68: $ee $1c
	inc a                                            ; $4d6a: $3c
	ld a, $50                                        ; $4d6b: $3e $50
	and c                                            ; $4d6d: $a1
	ld b, b                                          ; $4d6e: $40
	add hl, sp                                       ; $4d6f: $39
	xor b                                            ; $4d70: $a8
	db $eb                                           ; $4d71: $eb
	ld a, a                                          ; $4d72: $7f
	and b                                            ; $4d73: $a0
	cpl                                              ; $4d74: $2f
	ld b, e                                          ; $4d75: $43
	ld b, [hl]                                       ; $4d76: $46
	dec sp                                           ; $4d77: $3b
	inc [hl]                                         ; $4d78: $34
	db $eb                                           ; $4d79: $eb
	ld a, [$16a0]                                    ; $4d7a: $fa $a0 $16
	xor b                                            ; $4d7d: $a8
	ld l, e                                          ; $4d7e: $6b
	inc [hl]                                         ; $4d7f: $34
	db $eb                                           ; $4d80: $eb
	rst FarCall                                          ; $4d81: $f7
	and c                                            ; $4d82: $a1
	pop af                                           ; $4d83: $f1
	ld a, [hl]                                       ; $4d84: $7e
	dec sp                                           ; $4d85: $3b
	inc [hl]                                         ; $4d86: $34
	ld l, a                                          ; $4d87: $6f
	ld b, a                                          ; $4d88: $47
	xor c                                            ; $4d89: $a9
	ld b, [hl]                                       ; $4d8a: $46
	ld d, a                                          ; $4d8b: $57
	ld d, e                                          ; $4d8c: $53
	ld c, c                                          ; $4d8d: $49
	add hl, sp                                       ; $4d8e: $39
	xor b                                            ; $4d8f: $a8
	pop af                                           ; $4d90: $f1
	ld d, d                                          ; $4d91: $52
	ldh a, [$29]                                     ; $4d92: $f0 $29
	ld a, $38                                        ; $4d94: $3e $38
	and b                                            ; $4d96: $a0
	ld b, b                                          ; $4d97: $40
	ld c, l                                          ; $4d98: $4d
	ld e, e                                          ; $4d99: $5b
	ld d, [hl]                                       ; $4d9a: $56
	xor h                                            ; $4d9b: $ac
	ld d, d                                          ; $4d9c: $52
	dec a                                            ; $4d9d: $3d
	ld e, d                                          ; $4d9e: $5a
	ld d, h                                          ; $4d9f: $54
	inc a                                            ; $4da0: $3c
	ld h, a                                          ; $4da1: $67
	ld d, h                                          ; $4da2: $54
	add hl, sp                                       ; $4da3: $39
	ld c, h                                          ; $4da4: $4c
	and b                                            ; $4da5: $a0
	ld b, [hl]                                       ; $4da6: $46
	dec sp                                           ; $4da7: $3b
	inc [hl]                                         ; $4da8: $34
	ld d, $a8                                        ; $4da9: $16 $a8
	ld l, e                                          ; $4dab: $6b
	ldh a, [$cf]                                     ; $4dac: $f0 $cf
	and c                                            ; $4dae: $a1
	ld e, [hl]                                       ; $4daf: $5e
	dec sp                                           ; $4db0: $3b
	inc [hl]                                         ; $4db1: $34
	pop af                                           ; $4db2: $f1
	ld d, d                                          ; $4db3: $52
	ldh a, [$29]                                     ; $4db4: $f0 $29
	ld a, $38                                        ; $4db6: $3e $38
	xor b                                            ; $4db8: $a8
	ld b, [hl]                                       ; $4db9: $46
	ld d, a                                          ; $4dba: $57
	ld d, e                                          ; $4dbb: $53
	ld c, c                                          ; $4dbc: $49
	add hl, sp                                       ; $4dbd: $39
	and b                                            ; $4dbe: $a0
	db $ec                                           ; $4dbf: $ec
	ld b, e                                          ; $4dc0: $43
	inc [hl]                                         ; $4dc1: $34
	ld l, a                                          ; $4dc2: $6f
	ld b, a                                          ; $4dc3: $47
	xor c                                            ; $4dc4: $a9
	ld b, b                                          ; $4dc5: $40
	ld c, l                                          ; $4dc6: $4d
	ld e, e                                          ; $4dc7: $5b
	ld d, [hl]                                       ; $4dc8: $56
	inc [hl]                                         ; $4dc9: $34
	ld b, [hl]                                       ; $4dca: $46
	ld d, a                                          ; $4dcb: $57
	ld d, e                                          ; $4dcc: $53
	ld c, c                                          ; $4dcd: $49
	add hl, sp                                       ; $4dce: $39
	and b                                            ; $4dcf: $a0
	add hl, sp                                       ; $4dd0: $39
	ldh a, [rAUD1SWEEP]                              ; $4dd1: $f0 $10
	dec sp                                           ; $4dd3: $3b
	dec a                                            ; $4dd4: $3d
	jr c, jr_096_4e13                                ; $4dd5: $38 $3c

	ld d, b                                          ; $4dd7: $50
	xor h                                            ; $4dd8: $ac
	pop af                                           ; $4dd9: $f1
	and c                                            ; $4dda: $a1
	dec sp                                           ; $4ddb: $3b
	ccf                                              ; $4ddc: $3f
	ld h, h                                          ; $4ddd: $64
	ld d, l                                          ; $4dde: $55
	ld h, e                                          ; $4ddf: $63
	and b                                            ; $4de0: $a0
	cpl                                              ; $4de1: $2f
	ld [hl-], a                                      ; $4de2: $32
	db $eb                                           ; $4de3: $eb
	db $fc                                           ; $4de4: $fc
	ld c, e                                          ; $4de5: $4b
	xor h                                            ; $4de6: $ac
	ldh a, [$a3]                                     ; $4de7: $f0 $a3
	ld b, d                                          ; $4de9: $42
	db $f4                                           ; $4dea: $f4
	ld h, l                                          ; $4deb: $65
	ld b, h                                          ; $4dec: $44
	dec sp                                           ; $4ded: $3b
	dec a                                            ; $4dee: $3d
	ld a, [hl-]                                      ; $4def: $3a
	and e                                            ; $4df0: $a3
	cpl                                              ; $4df1: $2f
	ld b, e                                          ; $4df2: $43
	ld b, [hl]                                       ; $4df3: $46
	dec sp                                           ; $4df4: $3b
	inc [hl]                                         ; $4df5: $34
	db $eb                                           ; $4df6: $eb
	db $fc                                           ; $4df7: $fc
	and b                                            ; $4df8: $a0
	ld d, $a8                                        ; $4df9: $16 $a8
	xor $27                                          ; $4dfb: $ee $27
	ld b, a                                          ; $4dfd: $47
	ldh a, [rAUD2LEN]                                ; $4dfe: $f0 $16
	ld c, d                                          ; $4e00: $4a
	ld d, c                                          ; $4e01: $51
	inc a                                            ; $4e02: $3c
	and c                                            ; $4e03: $a1
	ld h, e                                          ; $4e04: $63
	dec sp                                           ; $4e05: $3b
	inc [hl]                                         ; $4e06: $34
	db $ed                                           ; $4e07: $ed
	ld b, c                                          ; $4e08: $41
	ld b, a                                          ; $4e09: $47
	xor c                                            ; $4e0a: $a9
	ldh a, [$29]                                     ; $4e0b: $f0 $29
	ld a, $38                                        ; $4e0d: $3e $38
	ld c, d                                          ; $4e0f: $4a
	ld d, c                                          ; $4e10: $51
	and b                                            ; $4e11: $a0
	cpl                                              ; $4e12: $2f

jr_096_4e13:
	ld b, e                                          ; $4e13: $43
	db $eb                                           ; $4e14: $eb
	ld e, a                                          ; $4e15: $5f
	xor b                                            ; $4e16: $a8
	ld [$a057], a                                    ; $4e17: $ea $57 $a0
	xor $27                                          ; $4e1a: $ee $27
	ld b, d                                          ; $4e1c: $42
	db $ed                                           ; $4e1d: $ed
	ld l, a                                          ; $4e1e: $6f
	ld h, c                                          ; $4e1f: $61
	ld d, e                                          ; $4e20: $53
	inc de                                           ; $4e21: $13
	ldh a, [c]                                       ; $4e22: $f2
	db $fc                                           ; $4e23: $fc
	db $ec                                           ; $4e24: $ec
	ld l, $48                                        ; $4e25: $2e $48
	and b                                            ; $4e27: $a0

jr_096_4e28:
	cpl                                              ; $4e28: $2f
	ld b, e                                          ; $4e29: $43
	or h                                             ; $4e2a: $b4
	xor h                                            ; $4e2b: $ac
	pop af                                           ; $4e2c: $f1
	nop                                              ; $4e2d: $00
	pop af                                           ; $4e2e: $f1
	ld l, b                                          ; $4e2f: $68
	ld d, e                                          ; $4e30: $53
	pop af                                           ; $4e31: $f1
	ld b, $38                                        ; $4e32: $06 $38
	inc a                                            ; $4e34: $3c
	ld d, b                                          ; $4e35: $50
	xor h                                            ; $4e36: $ac
	ld c, a                                          ; $4e37: $4f
	add hl, sp                                       ; $4e38: $39
	ldh a, [$e8]                                     ; $4e39: $f0 $e8
	ld c, [hl]                                       ; $4e3b: $4e
	ld c, h                                          ; $4e3c: $4c
	and b                                            ; $4e3d: $a0
	xor $1f                                          ; $4e3e: $ee $1f
	xor b                                            ; $4e40: $a8
	add sp, -$80                                     ; $4e41: $e8 $80
	and b                                            ; $4e43: $a0
	xor $27                                          ; $4e44: $ee $27
	ld b, a                                          ; $4e46: $47
	ldh a, [rAUD2LEN]                                ; $4e47: $f0 $16
	ld c, d                                          ; $4e49: $4a
	ld d, c                                          ; $4e4a: $51
	inc a                                            ; $4e4b: $3c
	and c                                            ; $4e4c: $a1
	ldh a, [$a0]                                     ; $4e4d: $f0 $a0
	ld e, c                                          ; $4e4f: $59
	ld a, l                                          ; $4e50: $7d
	xor b                                            ; $4e51: $a8
	ldh a, [$29]                                     ; $4e52: $f0 $29
	ld a, $38                                        ; $4e54: $3e $38
	ld a, [hl-]                                      ; $4e56: $3a
	xor b                                            ; $4e57: $a8
	jp hl                                            ; $4e58: $e9


	inc d                                            ; $4e59: $14
	and b                                            ; $4e5a: $a0
	xor $27                                          ; $4e5b: $ee $27
	ld b, a                                          ; $4e5d: $47
	inc [hl]                                         ; $4e5e: $34
	ld l, e                                          ; $4e5f: $6b
	inc a                                            ; $4e60: $3c
	ldh a, [rAUD2LEN]                                ; $4e61: $f0 $16
	and c                                            ; $4e63: $a1
	ldh a, [$29]                                     ; $4e64: $f0 $29
	ld a, $38                                        ; $4e66: $3e $38
	ld a, [hl-]                                      ; $4e68: $3a
	xor b                                            ; $4e69: $a8
	ld b, [hl]                                       ; $4e6a: $46
	ld d, a                                          ; $4e6b: $57
	ld d, e                                          ; $4e6c: $53
	ld c, c                                          ; $4e6d: $49
	add hl, sp                                       ; $4e6e: $39
	and b                                            ; $4e6f: $a0
	ld l, d                                          ; $4e70: $6a
	ld c, e                                          ; $4e71: $4b
	pop af                                           ; $4e72: $f1
	sbc $4e                                          ; $4e73: $de $4e
	inc a                                            ; $4e75: $3c
	ld d, b                                          ; $4e76: $50
	xor h                                            ; $4e77: $ac
	db $eb                                           ; $4e78: $eb
	pop af                                           ; $4e79: $f1
	ld b, a                                          ; $4e7a: $47
	inc de                                           ; $4e7b: $13
	pop af                                           ; $4e7c: $f1
	ld a, h                                          ; $4e7d: $7c
	ld a, $3f                                        ; $4e7e: $3e $3f
	ld h, h                                          ; $4e80: $64
	jr c, jr_096_4ec2                                ; $4e81: $38 $3f

	ld d, l                                          ; $4e83: $55
	ld b, h                                          ; $4e84: $44
	ld e, b                                          ; $4e85: $58
	jr c, jr_096_4e28                                ; $4e86: $38 $a0

	cpl                                              ; $4e88: $2f
	ld [$a833], a                                    ; $4e89: $ea $33 $a8
	adc e                                            ; $4e8c: $8b
	ldh a, [$72]                                     ; $4e8d: $f0 $72
	ld b, a                                          ; $4e8f: $47
	pop af                                           ; $4e90: $f1
	ld a, h                                          ; $4e91: $7c
	ld a, $3f                                        ; $4e92: $3e $3f
	ld h, h                                          ; $4e94: $64
	ld d, l                                          ; $4e95: $55
	inc a                                            ; $4e96: $3c
	ld c, b                                          ; $4e97: $48
	and e                                            ; $4e98: $a3
	cpl                                              ; $4e99: $2f
	ld b, e                                          ; $4e9a: $43
	ld b, [hl]                                       ; $4e9b: $46
	dec sp                                           ; $4e9c: $3b
	inc [hl]                                         ; $4e9d: $34
	db $ec                                           ; $4e9e: $ec
	and $a0                                          ; $4e9f: $e6 $a0
	xor $20                                          ; $4ea1: $ee $20
	ld d, $a8                                        ; $4ea3: $16 $a8
	db $eb                                           ; $4ea5: $eb
	rst FarCall                                          ; $4ea6: $f7
	and c                                            ; $4ea7: $a1
	ld e, [hl]                                       ; $4ea8: $5e
	dec sp                                           ; $4ea9: $3b
	ld [hl], $6f                                     ; $4eaa: $36 $6f
	ld b, a                                          ; $4eac: $47
	ld c, b                                          ; $4ead: $48
	xor c                                            ; $4eae: $a9
	ld b, [hl]                                       ; $4eaf: $46
	ld d, a                                          ; $4eb0: $57
	ld d, e                                          ; $4eb1: $53
	ld c, c                                          ; $4eb2: $49
	add hl, sp                                       ; $4eb3: $39
	xor b                                            ; $4eb4: $a8
	ldh a, [$29]                                     ; $4eb5: $f0 $29
	ld a, $38                                        ; $4eb7: $3e $38
	ld c, b                                          ; $4eb9: $48
	and b                                            ; $4eba: $a0
	cpl                                              ; $4ebb: $2f
	ld b, e                                          ; $4ebc: $43
	ldh a, [$0b]                                     ; $4ebd: $f0 $0b
	ldh a, [$a5]                                     ; $4ebf: $f0 $a5
	ld d, a                                          ; $4ec1: $57

jr_096_4ec2:
	ldh a, [$2b]                                     ; $4ec2: $f0 $2b
	ldh a, [rWX]                                     ; $4ec4: $f0 $4b
	ldh a, [rAUD1LEN]                                ; $4ec6: $f0 $11
	xor e                                            ; $4ec8: $ab
	ld h, h                                          ; $4ec9: $64
	jr c, jr_096_4f0a                                ; $4eca: $38 $3e

	inc a                                            ; $4ecc: $3c
	dec sp                                           ; $4ecd: $3b
	dec a                                            ; $4ece: $3d
	ld b, l                                          ; $4ecf: $45
	and b                                            ; $4ed0: $a0
	ldh a, [$08]                                     ; $4ed1: $f0 $08
	inc [hl]                                         ; $4ed3: $34
	adc b                                            ; $4ed4: $88
	sub c                                            ; $4ed5: $91
	ld [hl], $45                                     ; $4ed6: $36 $45
	inc a                                            ; $4ed8: $3c
	dec sp                                           ; $4ed9: $3b
	dec a                                            ; $4eda: $3d
	ld c, b                                          ; $4edb: $48
	dec [hl]                                         ; $4edc: $35
	rla                                              ; $4edd: $17
	ld b, [hl]                                       ; $4ede: $46
	inc [hl]                                         ; $4edf: $34
	ld c, a                                          ; $4ee0: $4f
	add hl, sp                                       ; $4ee1: $39
	di                                               ; $4ee2: $f3
	inc hl                                           ; $4ee3: $23
	ldh a, [hDisp0_LCDC]                                     ; $4ee4: $f0 $82
	ld d, e                                          ; $4ee6: $53
	ldh a, [$bb]                                     ; $4ee7: $f0 $bb
	ld d, d                                          ; $4ee9: $52
	ld c, [hl]                                       ; $4eea: $4e
	inc de                                           ; $4eeb: $13
	db $eb                                           ; $4eec: $eb
	dec [hl]                                         ; $4eed: $35
	ld c, b                                          ; $4eee: $48
	and b                                            ; $4eef: $a0
	ld b, [hl]                                       ; $4ef0: $46
	inc [hl]                                         ; $4ef1: $34
	ld d, $a8                                        ; $4ef2: $16 $a8
	db $eb                                           ; $4ef4: $eb
	rst FarCall                                          ; $4ef5: $f7
	and c                                            ; $4ef6: $a1
	ld b, [hl]                                       ; $4ef7: $46
	ld d, a                                          ; $4ef8: $57
	ld d, e                                          ; $4ef9: $53
	ld c, c                                          ; $4efa: $49
	add hl, sp                                       ; $4efb: $39
	xor b                                            ; $4efc: $a8
	ldh a, [$29]                                     ; $4efd: $f0 $29
	ld a, $38                                        ; $4eff: $3e $38
	and b                                            ; $4f01: $a0
	ld b, [hl]                                       ; $4f02: $46
	dec sp                                           ; $4f03: $3b
	inc [hl]                                         ; $4f04: $34
	db $eb                                           ; $4f05: $eb
	rst FarCall                                          ; $4f06: $f7
	and c                                            ; $4f07: $a1
	ld l, a                                          ; $4f08: $6f
	ld b, a                                          ; $4f09: $47

jr_096_4f0a:
	xor c                                            ; $4f0a: $a9
	ld b, [hl]                                       ; $4f0b: $46
	ld d, a                                          ; $4f0c: $57
	ld d, e                                          ; $4f0d: $53
	ld c, c                                          ; $4f0e: $49
	add hl, sp                                       ; $4f0f: $39
	and b                                            ; $4f10: $a0
	ld b, [hl]                                       ; $4f11: $46
	ld d, a                                          ; $4f12: $57
	ld d, e                                          ; $4f13: $53
	ld c, c                                          ; $4f14: $49
	add hl, sp                                       ; $4f15: $39
	xor b                                            ; $4f16: $a8
	ld c, c                                          ; $4f17: $49
	ld d, a                                          ; $4f18: $57
	ld b, [hl]                                       ; $4f19: $46
	ld e, [hl]                                       ; $4f1a: $5e
	sbc h                                            ; $4f1b: $9c
	pop af                                           ; $4f1c: $f1
	and c                                            ; $4f1d: $a1
	dec sp                                           ; $4f1e: $3b
	ccf                                              ; $4f1f: $3f
	ld h, h                                          ; $4f20: $64
	ld d, l                                          ; $4f21: $55
	ld h, e                                          ; $4f22: $63
	and b                                            ; $4f23: $a0
	cpl                                              ; $4f24: $2f
	ld b, e                                          ; $4f25: $43
	ld b, [hl]                                       ; $4f26: $46
	dec sp                                           ; $4f27: $3b
	inc [hl]                                         ; $4f28: $34
	pop af                                           ; $4f29: $f1
	dec d                                            ; $4f2a: $15
	ld c, l                                          ; $4f2b: $4d
	ccf                                              ; $4f2c: $3f
	dec a                                            ; $4f2d: $3d
	ld e, l                                          ; $4f2e: $5d
	ld e, d                                          ; $4f2f: $5a
	inc de                                           ; $4f30: $13
	db $ed                                           ; $4f31: $ed
	ld d, a                                          ; $4f32: $57
	inc [hl]                                         ; $4f33: $34
	db $ed                                           ; $4f34: $ed
	xor c                                            ; $4f35: $a9
	db $ec                                           ; $4f36: $ec
	inc h                                            ; $4f37: $24
	inc de                                           ; $4f38: $13
	db $ec                                           ; $4f39: $ec
	ret c                                            ; $4f3a: $d8

	inc a                                            ; $4f3b: $3c
	and b                                            ; $4f3c: $a0
	cpl                                              ; $4f3d: $2f
	ld [$ac10], a                                    ; $4f3e: $ea $10 $ac
	jp hl                                            ; $4f41: $e9


	add l                                            ; $4f42: $85
	add hl, bc                                       ; $4f43: $09
	cpl                                              ; $4f44: $2f
	ld [$0912], a                                    ; $4f45: $ea $12 $09
	cpl                                              ; $4f48: $2f
	jp hl                                            ; $4f49: $e9


	add [hl]                                         ; $4f4a: $86
	add hl, bc                                       ; $4f4b: $09
	cpl                                              ; $4f4c: $2f
	ld b, e                                          ; $4f4d: $43
	db $eb                                           ; $4f4e: $eb
	dec a                                            ; $4f4f: $3d
	inc de                                           ; $4f50: $13
	ld [$a011], a                                    ; $4f51: $ea $11 $a0
	add hl, bc                                       ; $4f54: $09
	cpl                                              ; $4f55: $2f
	ld b, e                                          ; $4f56: $43
	ld l, d                                          ; $4f57: $6a
	pop af                                           ; $4f58: $f1
	ld l, h                                          ; $4f59: $6c
	ld c, e                                          ; $4f5a: $4b
	xor h                                            ; $4f5b: $ac
	add sp, -$31                                     ; $4f5c: $e8 $cf
	and b                                            ; $4f5e: $a0
	db $ec                                           ; $4f5f: $ec
	sbc d                                            ; $4f60: $9a
	dec sp                                           ; $4f61: $3b
	ccf                                              ; $4f62: $3f
	ld c, h                                          ; $4f63: $4c
	and b                                            ; $4f64: $a0
	cpl                                              ; $4f65: $2f
	ld b, e                                          ; $4f66: $43
	ld b, [hl]                                       ; $4f67: $46
	ld d, a                                          ; $4f68: $57
	ld d, e                                          ; $4f69: $53
	ld c, c                                          ; $4f6a: $49
	add hl, sp                                       ; $4f6b: $39
	xor b                                            ; $4f6c: $a8
	ld [hl-], a                                      ; $4f6d: $32
	db $dd                                           ; $4f6e: $dd
	ld l, [hl]                                       ; $4f6f: $6e
	ld c, [hl]                                       ; $4f70: $4e
	ld a, a                                          ; $4f71: $7f
	ld d, e                                          ; $4f72: $53
	sub h                                            ; $4f73: $94
	ccf                                              ; $4f74: $3f
	ld e, h                                          ; $4f75: $5c
	dec a                                            ; $4f76: $3d
	sub a                                            ; $4f77: $97
	inc sp                                           ; $4f78: $33
	add hl, bc                                       ; $4f79: $09
	ldh a, [$5f]                                     ; $4f7a: $f0 $5f
	ldh a, [$9b]                                     ; $4f7c: $f0 $9b
	inc [hl]                                         ; $4f7e: $34
	ldh a, [$2d]                                     ; $4f7f: $f0 $2d
	pop af                                           ; $4f81: $f1
	ld a, [bc]                                       ; $4f82: $0a
	ld d, e                                          ; $4f83: $53
	ldh a, [$d2]                                     ; $4f84: $f0 $d2
	ld b, a                                          ; $4f86: $47
	inc de                                           ; $4f87: $13
	ld b, a                                          ; $4f88: $47
	ld e, e                                          ; $4f89: $5b
	ld l, h                                          ; $4f8a: $6c
	sub h                                            ; $4f8b: $94
	ccf                                              ; $4f8c: $3f
	ld e, h                                          ; $4f8d: $5c
	ccf                                              ; $4f8e: $3f
	ld c, [hl]                                       ; $4f8f: $4e
	ld c, h                                          ; $4f90: $4c
	and b                                            ; $4f91: $a0
	cpl                                              ; $4f92: $2f
	ld b, e                                          ; $4f93: $43
	rst JumpTable                                          ; $4f94: $c7
	xor c                                            ; $4f95: $a9
	ld b, [hl]                                       ; $4f96: $46
	ld d, a                                          ; $4f97: $57
	ld d, e                                          ; $4f98: $53
	ld c, c                                          ; $4f99: $49
	add hl, sp                                       ; $4f9a: $39
	xor b                                            ; $4f9b: $a8
	add sp, $23                                      ; $4f9c: $e8 $23
	add hl, bc                                       ; $4f9e: $09
	ldh a, [$57]                                     ; $4f9f: $f0 $57
	ldh a, [$ae]                                     ; $4fa1: $f0 $ae
	ld a, [hl-]                                      ; $4fa3: $3a
	ldh a, [$3f]                                     ; $4fa4: $f0 $3f
	ld c, h                                          ; $4fa6: $4c
	xor b                                            ; $4fa7: $a8

Call_096_4fa8:
	sub h                                            ; $4fa8: $94
	ld a, b                                          ; $4fa9: $78
	ldh a, [$3e]                                     ; $4faa: $f0 $3e
	ld d, e                                          ; $4fac: $53
	dec sp                                           ; $4fad: $3b
	dec a                                            ; $4fae: $3d
	ld d, b                                          ; $4faf: $50
	inc [hl]                                         ; $4fb0: $34
	ld [hl], d                                       ; $4fb1: $72
	ld a, c                                          ; $4fb2: $79
	ccf                                              ; $4fb3: $3f
	ld c, h                                          ; $4fb4: $4c
	and b                                            ; $4fb5: $a0
	xor $14                                          ; $4fb6: $ee $14
	xor c                                            ; $4fb8: $a9
	ldh a, [$3f]                                     ; $4fb9: $f0 $3f
	ld h, d                                          ; $4fbb: $62
	ldh a, [$bd]                                     ; $4fbc: $f0 $bd
	jr c, jr_096_4fff                                ; $4fbe: $38 $3f

	ld c, [hl]                                       ; $4fc0: $4e
	ld b, d                                          ; $4fc1: $42
	ld c, h                                          ; $4fc2: $4c
	xor b                                            ; $4fc3: $a8
	cp d                                             ; $4fc4: $ba
	and b                                            ; $4fc5: $a0
	cpl                                              ; $4fc6: $2f
	ld b, e                                          ; $4fc7: $43
	ld b, [hl]                                       ; $4fc8: $46
	ld d, a                                          ; $4fc9: $57
	ld d, e                                          ; $4fca: $53
	ld c, c                                          ; $4fcb: $49
	add hl, sp                                       ; $4fcc: $39
	xor b                                            ; $4fcd: $a8
	ld [hl-], a                                      ; $4fce: $32
	db $dd                                           ; $4fcf: $dd
	sub d                                            ; $4fd0: $92
	adc [hl]                                         ; $4fd1: $8e
	ld c, [hl]                                       ; $4fd2: $4e
	sub a                                            ; $4fd3: $97
	inc sp                                           ; $4fd4: $33
	add hl, bc                                       ; $4fd5: $09
	sub d                                            ; $4fd6: $92
	adc [hl]                                         ; $4fd7: $8e
	dec sp                                           ; $4fd8: $3b
	ccf                                              ; $4fd9: $3f
	ld c, [hl]                                       ; $4fda: $4e
	ld c, h                                          ; $4fdb: $4c
	xor b                                            ; $4fdc: $a8
	ld c, d                                          ; $4fdd: $4a
	ld c, a                                          ; $4fde: $4f
	inc [hl]                                         ; $4fdf: $34
	ld b, [hl]                                       ; $4fe0: $46
	ld d, d                                          ; $4fe1: $52
	ld d, a                                          ; $4fe2: $57
	ldh a, [rAUD1LOW]                                ; $4fe3: $f0 $13
	ldh a, [$63]                                     ; $4fe5: $f0 $63
	ld c, e                                          ; $4fe7: $4b
	ld a, $3a                                        ; $4fe8: $3e $3a
	jr c, @+$4c                                      ; $4fea: $38 $4a

	ld c, h                                          ; $4fec: $4c
	and b                                            ; $4fed: $a0
	cpl                                              ; $4fee: $2f
	ld b, e                                          ; $4fef: $43
	ld b, [hl]                                       ; $4ff0: $46
	ld d, a                                          ; $4ff1: $57
	ld d, e                                          ; $4ff2: $53
	ld c, c                                          ; $4ff3: $49
	add hl, sp                                       ; $4ff4: $39
	xor b                                            ; $4ff5: $a8
	add sp, $26                                      ; $4ff6: $e8 $26
	add hl, bc                                       ; $4ff8: $09
	ldh a, [$5f]                                     ; $4ff9: $f0 $5f
	ldh a, [$9b]                                     ; $4ffb: $f0 $9b
	xor h                                            ; $4ffd: $ac
	dec a                                            ; $4ffe: $3d

jr_096_4fff:
	ld d, l                                          ; $4fff: $55
	ld d, d                                          ; $5000: $52
	ld a, $55                                        ; $5001: $3e $55
	ld a, [hl-]                                      ; $5003: $3a
	dec sp                                           ; $5004: $3b
	ccf                                              ; $5005: $3f
	ld e, h                                          ; $5006: $5c
	dec a                                            ; $5007: $3d
	ld c, h                                          ; $5008: $4c
	and b                                            ; $5009: $a0
	cpl                                              ; $500a: $2f
	ld b, e                                          ; $500b: $43
	rst JumpTable                                          ; $500c: $c7
	xor c                                            ; $500d: $a9
	ld b, [hl]                                       ; $500e: $46
	ld d, a                                          ; $500f: $57
	ld d, e                                          ; $5010: $53
	ld c, c                                          ; $5011: $49
	add hl, sp                                       ; $5012: $39
	xor b                                            ; $5013: $a8
	add sp, $26                                      ; $5014: $e8 $26
	add hl, bc                                       ; $5016: $09
	ldh a, [$5f]                                     ; $5017: $f0 $5f
	ldh a, [$9b]                                     ; $5019: $f0 $9b
	inc a                                            ; $501b: $3c
	dec sp                                           ; $501c: $3b
	ld d, h                                          ; $501d: $54
	ld a, [hl]                                       ; $501e: $7e
	ld d, l                                          ; $501f: $55
	inc de                                           ; $5020: $13
	ld a, [hl-]                                      ; $5021: $3a
	dec sp                                           ; $5022: $3b
	ccf                                              ; $5023: $3f
	ld e, h                                          ; $5024: $5c
	dec a                                            ; $5025: $3d
	ld c, h                                          ; $5026: $4c
	and b                                            ; $5027: $a0
	cpl                                              ; $5028: $2f
	ld b, e                                          ; $5029: $43
	ld b, [hl]                                       ; $502a: $46
	ld d, a                                          ; $502b: $57
	ld d, e                                          ; $502c: $53
	ld c, c                                          ; $502d: $49
	add hl, sp                                       ; $502e: $39
	xor b                                            ; $502f: $a8
	add sp, $23                                      ; $5030: $e8 $23
	add hl, bc                                       ; $5032: $09
	ldh a, [$5f]                                     ; $5033: $f0 $5f
	ldh a, [$9b]                                     ; $5035: $f0 $9b
	inc [hl]                                         ; $5037: $34
	ldh a, [$7b]                                     ; $5038: $f0 $7b
	ld h, l                                          ; $503a: $65
	add e                                            ; $503b: $83
	inc de                                           ; $503c: $13
	ld a, [hl]                                       ; $503d: $7e
	ld d, l                                          ; $503e: $55
	ld a, [hl-]                                      ; $503f: $3a
	dec sp                                           ; $5040: $3b
	ccf                                              ; $5041: $3f
	ld e, h                                          ; $5042: $5c
	dec a                                            ; $5043: $3d
	ld c, h                                          ; $5044: $4c
	and b                                            ; $5045: $a0
	db $ec                                           ; $5046: $ec
	sbc d                                            ; $5047: $9a
	dec sp                                           ; $5048: $3b
	ccf                                              ; $5049: $3f
	inc de                                           ; $504a: $13
	ld d, l                                          ; $504b: $55
	ld b, h                                          ; $504c: $44
	ld e, b                                          ; $504d: $58
	jr c, jr_096_509c                                ; $504e: $38 $4c

	and b                                            ; $5050: $a0
	ld b, [hl]                                       ; $5051: $46
	ld d, d                                          ; $5052: $52
	ld d, a                                          ; $5053: $57
	ldh a, [rAUD1LOW]                                ; $5054: $f0 $13
	ldh a, [$63]                                     ; $5056: $f0 $63
	ld c, e                                          ; $5058: $4b
	xor h                                            ; $5059: $ac
	ld a, $3a                                        ; $505a: $3e $3a

jr_096_505c:
	jr c, jr_096_50a8                                ; $505c: $38 $4a

	ld d, l                                          ; $505e: $55
	ld b, h                                          ; $505f: $44
	ld e, b                                          ; $5060: $58
	jr c, jr_096_50af                                ; $5061: $38 $4c

	and b                                            ; $5063: $a0
	cpl                                              ; $5064: $2f
	ld b, e                                          ; $5065: $43
	ld b, [hl]                                       ; $5066: $46
	ld d, a                                          ; $5067: $57
	ld d, e                                          ; $5068: $53
	ld c, c                                          ; $5069: $49
	add hl, sp                                       ; $506a: $39
	and b                                            ; $506b: $a0
	pop de                                           ; $506c: $d1
	xor h                                            ; $506d: $ac
	sub d                                            ; $506e: $92
	adc [hl]                                         ; $506f: $8e
	dec sp                                           ; $5070: $3b
	ccf                                              ; $5071: $3f
	ld c, [hl]                                       ; $5072: $4e
	db $ec                                           ; $5073: $ec
	ret c                                            ; $5074: $d8

	and b                                            ; $5075: $a0
	ldh a, [$5f]                                     ; $5076: $f0 $5f
	ldh a, [$9b]                                     ; $5078: $f0 $9b
	inc [hl]                                         ; $507a: $34
	pop af                                           ; $507b: $f1
	or d                                             ; $507c: $b2
	pop af                                           ; $507d: $f1
	ld c, b                                          ; $507e: $48
	ldh a, [rAUD4ENV]                                ; $507f: $f0 $21
	ld e, e                                          ; $5081: $5b
	ld d, [hl]                                       ; $5082: $56
	inc de                                           ; $5083: $13
	ldh a, [rAUD1LOW]                                ; $5084: $f0 $13
	ld d, l                                          ; $5086: $55
	ld a, [hl-]                                      ; $5087: $3a
	dec sp                                           ; $5088: $3b
	ccf                                              ; $5089: $3f
	ld e, h                                          ; $508a: $5c
	ldh [$a0], a                                     ; $508b: $e0 $a0
	cpl                                              ; $508d: $2f
	ld b, e                                          ; $508e: $43
	rst JumpTable                                          ; $508f: $c7
	xor c                                            ; $5090: $a9
	ld b, [hl]                                       ; $5091: $46
	ld d, a                                          ; $5092: $57
	ld d, e                                          ; $5093: $53
	ld c, c                                          ; $5094: $49
	add hl, sp                                       ; $5095: $39
	and b                                            ; $5096: $a0
	ld [$a840], a                                    ; $5097: $ea $40 $a8
	ldh a, [$57]                                     ; $509a: $f0 $57

jr_096_509c:
	ldh a, [$ae]                                     ; $509c: $f0 $ae
	ld a, [hl-]                                      ; $509e: $3a
	ldh a, [$3f]                                     ; $509f: $f0 $3f
	ld c, h                                          ; $50a1: $4c
	add hl, bc                                       ; $50a2: $09
	xor $04                                          ; $50a3: $ee $04
	ld a, $3d                                        ; $50a5: $3e $3d
	ld d, b                                          ; $50a7: $50

jr_096_50a8:
	ld [hl], d                                       ; $50a8: $72
	ld a, c                                          ; $50a9: $79
	ccf                                              ; $50aa: $3f
	ld c, h                                          ; $50ab: $4c
	and b                                            ; $50ac: $a0
	xor $14                                          ; $50ad: $ee $14

jr_096_50af:
	xor c                                            ; $50af: $a9
	pop de                                           ; $50b0: $d1
	jr c, jr_096_50eb                                ; $50b1: $38 $38

	ldh a, [$3f]                                     ; $50b3: $f0 $3f
	ld c, h                                          ; $50b5: $4c
	and b                                            ; $50b6: $a0
	ldh a, [$5f]                                     ; $50b7: $f0 $5f
	ldh a, [$9b]                                     ; $50b9: $f0 $9b
	xor h                                            ; $50bb: $ac
	ldh a, [rAUD4ENV]                                ; $50bc: $f0 $21
	ldh a, [rAUD4GO]                                 ; $50be: $f0 $23
	jr c, jr_096_505c                                ; $50c0: $38 $9a

	ld b, [hl]                                       ; $50c2: $46
	dec sp                                           ; $50c3: $3b
	dec a                                            ; $50c4: $3d
	and c                                            ; $50c5: $a1
	cpl                                              ; $50c6: $2f
	ld b, e                                          ; $50c7: $43
	pop af                                           ; $50c8: $f1
	halt                                             ; $50c9: $76
	ld h, c                                          ; $50ca: $61
	pop af                                           ; $50cb: $f1
	halt                                             ; $50cc: $76
	ld h, c                                          ; $50cd: $61
	inc a                                            ; $50ce: $3c
	ld a, [hl-]                                      ; $50cf: $3a
	ld c, b                                          ; $50d0: $48
	and b                                            ; $50d1: $a0
	ld l, e                                          ; $50d2: $6b
	inc a                                            ; $50d3: $3c
	db $ed                                           ; $50d4: $ed
	sbc c                                            ; $50d5: $99
	ld d, e                                          ; $50d6: $53
	ld b, [hl]                                       ; $50d7: $46
	dec sp                                           ; $50d8: $3b
	dec a                                            ; $50d9: $3d
	ld d, b                                          ; $50da: $50
	xor h                                            ; $50db: $ac
	db $ec                                           ; $50dc: $ec
	db $ed                                           ; $50dd: $ed
	ld c, h                                          ; $50de: $4c
	and b                                            ; $50df: $a0
	ld l, d                                          ; $50e0: $6a
	ldh a, [$0d]                                     ; $50e1: $f0 $0d
	xor h                                            ; $50e3: $ac
	ld e, d                                          ; $50e4: $5a
	ld d, h                                          ; $50e5: $54
	inc a                                            ; $50e6: $3c
	ldh a, [$a7]                                     ; $50e7: $f0 $a7
	ld c, l                                          ; $50e9: $4d
	ccf                                              ; $50ea: $3f

jr_096_50eb:
	dec sp                                           ; $50eb: $3b
	ccf                                              ; $50ec: $3f
	ld b, l                                          ; $50ed: $45
	and b                                            ; $50ee: $a0
	cpl                                              ; $50ef: $2f
	ld b, e                                          ; $50f0: $43
	ld b, b                                          ; $50f1: $40
	add hl, sp                                       ; $50f2: $39
	ld b, h                                          ; $50f3: $44
	ld c, h                                          ; $50f4: $4c
	xor b                                            ; $50f5: $a8
	ld b, b                                          ; $50f6: $40
	ld b, d                                          ; $50f7: $42
	add hl, sp                                       ; $50f8: $39
	ld h, c                                          ; $50f9: $61
	db $ec                                           ; $50fa: $ec
	inc l                                            ; $50fb: $2c
	ld b, l                                          ; $50fc: $45
	and b                                            ; $50fd: $a0
	ldh a, [$5f]                                     ; $50fe: $f0 $5f
	ldh a, [$9b]                                     ; $5100: $f0 $9b
	xor h                                            ; $5102: $ac
	ld h, e                                          ; $5103: $63
	ld d, a                                          ; $5104: $57
	ld c, c                                          ; $5105: $49
	ld [hl], d                                       ; $5106: $72
	ld d, b                                          ; $5107: $50
	ld c, l                                          ; $5108: $4d
	ld c, [hl]                                       ; $5109: $4e
	ld b, l                                          ; $510a: $45
	add hl, sp                                       ; $510b: $39
	ld b, a                                          ; $510c: $47
	inc de                                           ; $510d: $13
	ld a, [hl-]                                      ; $510e: $3a
	dec sp                                           ; $510f: $3b
	ccf                                              ; $5110: $3f
	ld e, h                                          ; $5111: $5c
	ldh [$a0], a                                     ; $5112: $e0 $a0
	cpl                                              ; $5114: $2f
	ld b, e                                          ; $5115: $43
	ld b, [hl]                                       ; $5116: $46
	inc [hl]                                         ; $5117: $34
	ld b, [hl]                                       ; $5118: $46
	ld d, a                                          ; $5119: $57
	ld d, e                                          ; $511a: $53
	ld c, c                                          ; $511b: $49
	add hl, sp                                       ; $511c: $39
	and b                                            ; $511d: $a0
	ld b, b                                          ; $511e: $40
	ld c, l                                          ; $511f: $4d
	sbc l                                            ; $5120: $9d
	ld d, b                                          ; $5121: $50
	jr c, jr_096_5166                                ; $5122: $38 $42

	ldh a, [$7b]                                     ; $5124: $f0 $7b
	ld h, l                                          ; $5126: $65
	add e                                            ; $5127: $83
	ld a, [hl-]                                      ; $5128: $3a
	ld d, b                                          ; $5129: $50
	xor h                                            ; $512a: $ac
	ld l, d                                          ; $512b: $6a
	ldh a, [$0d]                                     ; $512c: $f0 $0d
	ldh a, [rWY]                                     ; $512e: $f0 $4a
	ld e, c                                          ; $5130: $59
	ld l, c                                          ; $5131: $69
	ld a, $3f                                        ; $5132: $3e $3f
	inc de                                           ; $5134: $13
	ld b, [hl]                                       ; $5135: $46
	ldh a, [rSB]                                     ; $5136: $f0 $01
	ccf                                              ; $5138: $3f
	ld c, a                                          ; $5139: $4f
	ret nc                                           ; $513a: $d0

	and b                                            ; $513b: $a0
	cpl                                              ; $513c: $2f
	ld b, e                                          ; $513d: $43
	ld b, [hl]                                       ; $513e: $46
	ld d, a                                          ; $513f: $57
	ld d, e                                          ; $5140: $53
	ld c, c                                          ; $5141: $49
	add hl, sp                                       ; $5142: $39
	xor b                                            ; $5143: $a8
	ld b, b                                          ; $5144: $40
	ld b, d                                          ; $5145: $42
	add hl, sp                                       ; $5146: $39
	ld h, c                                          ; $5147: $61
	db $ec                                           ; $5148: $ec
	inc l                                            ; $5149: $2c
	ld b, l                                          ; $514a: $45
	and b                                            ; $514b: $a0
	ld d, e                                          ; $514c: $53
	ld b, c                                          ; $514d: $41
	ld a, e                                          ; $514e: $7b
	dec sp                                           ; $514f: $3b
	ccf                                              ; $5150: $3f
	ld c, [hl]                                       ; $5151: $4e
	ld l, h                                          ; $5152: $6c
	dec a                                            ; $5153: $3d
	jr c, @+$46                                      ; $5154: $38 $44

	ld c, h                                          ; $5156: $4c
	and b                                            ; $5157: $a0
	cpl                                              ; $5158: $2f
	ld b, e                                          ; $5159: $43
	ld d, d                                          ; $515a: $52
	inc [hl]                                         ; $515b: $34
	ld d, d                                          ; $515c: $52
	ld b, [hl]                                       ; $515d: $46
	ld c, h                                          ; $515e: $4c
	xor b                                            ; $515f: $a8
	ld [hl-], a                                      ; $5160: $32
	ld [hl], d                                       ; $5161: $72
	ccf                                              ; $5162: $3f
	ld d, l                                          ; $5163: $55
	ld c, l                                          ; $5164: $4d
	ccf                                              ; $5165: $3f

jr_096_5166:
	jr c, jr_096_51b6                                ; $5166: $38 $4e

	ld b, d                                          ; $5168: $42
	inc a                                            ; $5169: $3c
	and e                                            ; $516a: $a3
	ldh a, [$5f]                                     ; $516b: $f0 $5f
	ldh a, [$9b]                                     ; $516d: $f0 $9b
	xor h                                            ; $516f: $ac
	dec a                                            ; $5170: $3d
	ld d, l                                          ; $5171: $55
	ld d, d                                          ; $5172: $52
	ld a, $55                                        ; $5173: $3e $55
	ld a, [hl-]                                      ; $5175: $3a
	dec sp                                           ; $5176: $3b
	ccf                                              ; $5177: $3f
	ld e, h                                          ; $5178: $5c
	dec a                                            ; $5179: $3d
	ld b, c                                          ; $517a: $41
	db $ec                                           ; $517b: $ec
	ret c                                            ; $517c: $d8

	and c                                            ; $517d: $a1
	ld l, d                                          ; $517e: $6a
	ld l, b                                          ; $517f: $68
	ld b, d                                          ; $5180: $42
	xor $2b                                          ; $5181: $ee $2b
	xor h                                            ; $5183: $ac
	ld d, c                                          ; $5184: $51
	ld [hl], b                                       ; $5185: $70
	ld d, l                                          ; $5186: $55
	inc [hl]                                         ; $5187: $34
	db $eb                                           ; $5188: $eb
	ld e, a                                          ; $5189: $5f
	and b                                            ; $518a: $a0
	ld l, d                                          ; $518b: $6a

jr_096_518c:
	ld l, b                                          ; $518c: $68
	ld c, a                                          ; $518d: $4f
	xor $19                                          ; $518e: $ee $19
	inc de                                           ; $5190: $13
	sub d                                            ; $5191: $92
	adc [hl]                                         ; $5192: $8e
	ld e, a                                          ; $5193: $5f
	add hl, sp                                       ; $5194: $39
	ld c, h                                          ; $5195: $4c
	and b                                            ; $5196: $a0
	cpl                                              ; $5197: $2f
	ld b, e                                          ; $5198: $43
	xor $1f                                          ; $5199: $ee $1f
	inc [hl]                                         ; $519b: $34
	sub d                                            ; $519c: $92
	adc [hl]                                         ; $519d: $8e
	ld e, a                                          ; $519e: $5f
	add hl, sp                                       ; $519f: $39
	and b                                            ; $51a0: $a0
	ld l, d                                          ; $51a1: $6a
	ld l, b                                          ; $51a2: $68
	ld [hl], d                                       ; $51a3: $72
	ld a, c                                          ; $51a4: $79
	ccf                                              ; $51a5: $3f
	ld c, a                                          ; $51a6: $4f
	ld d, b                                          ; $51a7: $50
	dec sp                                           ; $51a8: $3b
	dec a                                            ; $51a9: $3d
	sbc e                                            ; $51aa: $9b
	inc de                                           ; $51ab: $13
	ldh a, [$57]                                     ; $51ac: $f0 $57
	ldh a, [$ae]                                     ; $51ae: $f0 $ae
	ld c, d                                          ; $51b0: $4a
	ld a, $3d                                        ; $51b1: $3e $3d
	ld b, l                                          ; $51b3: $45
	and b                                            ; $51b4: $a0
	cpl                                              ; $51b5: $2f

jr_096_51b6:
	ld b, e                                          ; $51b6: $43
	ld b, [hl]                                       ; $51b7: $46
	ld d, a                                          ; $51b8: $57
	ld d, e                                          ; $51b9: $53
	ld c, c                                          ; $51ba: $49
	add hl, sp                                       ; $51bb: $39
	xor b                                            ; $51bc: $a8
	ldh a, [$29]                                     ; $51bd: $f0 $29
	ld a, $38                                        ; $51bf: $3e $38
	ld b, l                                          ; $51c1: $45
	and b                                            ; $51c2: $a0
	adc b                                            ; $51c3: $88
	ld h, d                                          ; $51c4: $62
	ldh a, [$fa]                                     ; $51c5: $f0 $fa
	ld b, c                                          ; $51c7: $41
	ld c, d                                          ; $51c8: $4a
	ld c, [hl]                                       ; $51c9: $4e
	di                                               ; $51ca: $f3
	add hl, de                                       ; $51cb: $19
	ld d, e                                          ; $51cc: $53
	inc de                                           ; $51cd: $13
	ld e, b                                          ; $51ce: $58
	ld d, d                                          ; $51cf: $52
	ld b, a                                          ; $51d0: $47
	ld a, [hl-]                                      ; $51d1: $3a
	dec sp                                           ; $51d2: $3b
	ccf                                              ; $51d3: $3f
	ccf                                              ; $51d4: $3f
	inc de                                           ; $51d5: $13
	ldh a, [$57]                                     ; $51d6: $f0 $57
	ldh a, [$ae]                                     ; $51d8: $f0 $ae
	ld c, d                                          ; $51da: $4a
	ld d, c                                          ; $51db: $51
	ld c, h                                          ; $51dc: $4c
	and b                                            ; $51dd: $a0
	db $eb                                           ; $51de: $eb
	ld d, l                                          ; $51df: $55
	xor $2a                                          ; $51e0: $ee $2a
	ld c, h                                          ; $51e2: $4c
	xor b                                            ; $51e3: $a8
	ld d, d                                          ; $51e4: $52
	inc [hl]                                         ; $51e5: $34
	db $ed                                           ; $51e6: $ed
	nop                                              ; $51e7: $00
	ld a, [hl-]                                      ; $51e8: $3a
	ld e, b                                          ; $51e9: $58
	jr c, jr_096_518c                                ; $51ea: $38 $a0

	cpl                                              ; $51ec: $2f
	ld b, e                                          ; $51ed: $43
	ld b, [hl]                                       ; $51ee: $46
	inc [hl]                                         ; $51ef: $34
	ld b, [hl]                                       ; $51f0: $46
	ld d, a                                          ; $51f1: $57
	ld d, e                                          ; $51f2: $53
	ld c, c                                          ; $51f3: $49
	add hl, sp                                       ; $51f4: $39
	xor b                                            ; $51f5: $a8
	sub d                                            ; $51f6: $92
	adc [hl]                                         ; $51f7: $8e
	ld c, [hl]                                       ; $51f8: $4e
	ld b, l                                          ; $51f9: $45
	and b                                            ; $51fa: $a0
	ld c, c                                          ; $51fb: $49
	ld d, a                                          ; $51fc: $57
	ld b, [hl]                                       ; $51fd: $46
	ld e, [hl]                                       ; $51fe: $5e
	sbc h                                            ; $51ff: $9c
	xor h                                            ; $5200: $ac
	sub h                                            ; $5201: $94
	ld a, b                                          ; $5202: $78
	ccf                                              ; $5203: $3f
	ld c, [hl]                                       ; $5204: $4e
	db $ec                                           ; $5205: $ec
	ret c                                            ; $5206: $d8

	xor b                                            ; $5207: $a8
	sub c                                            ; $5208: $91
	ldh a, [$59]                                     ; $5209: $f0 $59
	ld b, h                                          ; $520b: $44
	ld e, l                                          ; $520c: $5d
	ld e, d                                          ; $520d: $5a
	and b                                            ; $520e: $a0
	cpl                                              ; $520f: $2f
	ld b, e                                          ; $5210: $43
	ld b, [hl]                                       ; $5211: $46
	inc [hl]                                         ; $5212: $34
	ld b, [hl]                                       ; $5213: $46
	ld d, a                                          ; $5214: $57
	ld d, e                                          ; $5215: $53
	ld c, c                                          ; $5216: $49
	add hl, sp                                       ; $5217: $39
	dec [hl]                                         ; $5218: $35
	rla                                              ; $5219: $17
	ld [hl-], a                                      ; $521a: $32
	ld d, h                                          ; $521b: $54
	ld b, d                                          ; $521c: $42
	ldh a, [$d6]                                     ; $521d: $f0 $d6
	ld c, e                                          ; $521f: $4b
	inc [hl]                                         ; $5220: $34
	db $ec                                           ; $5221: $ec
	ldh [$62], a                                     ; $5222: $e0 $62
	inc de                                           ; $5224: $13
	ldh a, [c]                                       ; $5225: $f2
	sub d                                            ; $5226: $92
	inc a                                            ; $5227: $3c
	ld a, $3f                                        ; $5228: $3e $3f
	ld l, [hl]                                       ; $522a: $6e
	ld c, [hl]                                       ; $522b: $4e
	adc l                                            ; $522c: $8d
	inc sp                                           ; $522d: $33
	add hl, bc                                       ; $522e: $09
	ld [$a840], a                                    ; $522f: $ea $40 $a8
	ldh a, [$57]                                     ; $5232: $f0 $57

Jump_096_5234:
	ldh a, [$ae]                                     ; $5234: $f0 $ae
	ld a, [hl-]                                      ; $5236: $3a
	ldh a, [$3f]                                     ; $5237: $f0 $3f
	ld c, h                                          ; $5239: $4c
	and b                                            ; $523a: $a0
	cpl                                              ; $523b: $2f
	ld b, e                                          ; $523c: $43
	ld b, [hl]                                       ; $523d: $46
	ld d, a                                          ; $523e: $57
	ld d, e                                          ; $523f: $53
	ld c, c                                          ; $5240: $49
	add hl, sp                                       ; $5241: $39
	xor b                                            ; $5242: $a8
	ld [hl-], a                                      ; $5243: $32
	ld c, a                                          ; $5244: $4f
	dec sp                                           ; $5245: $3b
	ld c, c                                          ; $5246: $49
	inc [hl]                                         ; $5247: $34
	sub d                                            ; $5248: $92
	adc [hl]                                         ; $5249: $8e
	ld c, [hl]                                       ; $524a: $4e

jr_096_524b:
	sub a                                            ; $524b: $97
	inc sp                                           ; $524c: $33
	add hl, bc                                       ; $524d: $09
	ld l, d                                          ; $524e: $6a
	ld l, b                                          ; $524f: $68
	ld c, a                                          ; $5250: $4f
	inc [hl]                                         ; $5251: $34
	sub d                                            ; $5252: $92
	adc [hl]                                         ; $5253: $8e
	dec sp                                           ; $5254: $3b
	ccf                                              ; $5255: $3f
	inc de                                           ; $5256: $13
	db $eb                                           ; $5257: $eb
	sbc d                                            ; $5258: $9a
	ld a, [hl-]                                      ; $5259: $3a
	ldh a, [$3f]                                     ; $525a: $f0 $3f
	ld h, d                                          ; $525c: $62
	ldh a, [$bd]                                     ; $525d: $f0 $bd
	ld e, h                                          ; $525f: $5c
	ld d, d                                          ; $5260: $52
	ld a, $66                                        ; $5261: $3e $66
	add hl, sp                                       ; $5263: $39
	and b                                            ; $5264: $a0
	add hl, bc                                       ; $5265: $09
	ld b, l                                          ; $5266: $45
	add hl, sp                                       ; $5267: $39
	inc [hl]                                         ; $5268: $34
	ld [de], a                                       ; $5269: $12
	xor b                                            ; $526a: $a8
	ld l, d                                          ; $526b: $6a
	inc a                                            ; $526c: $3c
	ld d, b                                          ; $526d: $50
	ld a, d                                          ; $526e: $7a
	ld d, a                                          ; $526f: $57
	inc a                                            ; $5270: $3c
	ld [hl], $f0                                     ; $5271: $36 $f0
	sbc d                                            ; $5273: $9a

jr_096_5274:
	ld e, h                                          ; $5274: $5c
	ldh a, [rTMA]                                    ; $5275: $f0 $06
	add hl, sp                                       ; $5277: $39
	adc l                                            ; $5278: $8d
	and b                                            ; $5279: $a0
	cpl                                              ; $527a: $2f
	ld b, e                                          ; $527b: $43
	ldh a, [$ab]                                     ; $527c: $f0 $ab
	ld c, c                                          ; $527e: $49
	xor $06                                          ; $527f: $ee $06
	ld b, a                                          ; $5281: $47
	inc de                                           ; $5282: $13
	ld a, d                                          ; $5283: $7a
	ld c, [hl]                                       ; $5284: $4e
	ld b, d                                          ; $5285: $42
	inc a                                            ; $5286: $3c
	ld c, b                                          ; $5287: $48
	and b                                            ; $5288: $a0
	add b                                            ; $5289: $80
	ld c, l                                          ; $528a: $4d
	ld a, [hl-]                                      ; $528b: $3a
	jr c, jr_096_52e2                                ; $528c: $38 $54

	ld c, c                                          ; $528e: $49
	add d                                            ; $528f: $82
	add hl, sp                                       ; $5290: $39
	ld a, [hl-]                                      ; $5291: $3a
	ld b, l                                          ; $5292: $45
	xor b                                            ; $5293: $a8
	ldh a, [$f7]                                     ; $5294: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $5296: $f0 $17
	jr c, @+$3c                                      ; $5298: $38 $3a

	jr c, @-$0d                                      ; $529a: $38 $f1

	ld b, d                                          ; $529c: $42
	ldh a, [$cd]                                     ; $529d: $f0 $cd
	ldh a, [c]                                       ; $529f: $f2
	ld sp, $5f44                                     ; $52a0: $31 $44 $5f
	and c                                            ; $52a3: $a1
	cpl                                              ; $52a4: $2f
	ld b, e                                          ; $52a5: $43
	ld l, c                                          ; $52a6: $69
	ldh a, [rOCPD]                                   ; $52a7: $f0 $6b
	ldh a, [rOCPD]                                   ; $52a9: $f0 $6b
	ld c, b                                          ; $52ab: $48
	and b                                            ; $52ac: $a0
	ld l, [hl]                                       ; $52ad: $6e
	ld b, [hl]                                       ; $52ae: $46
	inc [hl]                                         ; $52af: $34
	ldh a, [rRP]                                     ; $52b0: $f0 $56
	inc a                                            ; $52b2: $3c
	and b                                            ; $52b3: $a0
	cpl                                              ; $52b4: $2f
	ld b, e                                          ; $52b5: $43
	ldh a, [rSB]                                     ; $52b6: $f0 $01
	inc [hl]                                         ; $52b8: $34
	db $ec                                           ; $52b9: $ec
	di                                               ; $52ba: $f3
	xor b                                            ; $52bb: $a8
	ld l, e                                          ; $52bc: $6b
	ld c, d                                          ; $52bd: $4a
	ld d, h                                          ; $52be: $54
	ld b, c                                          ; $52bf: $41
	ld a, [hl-]                                      ; $52c0: $3a
	ldh a, [$28]                                     ; $52c1: $f0 $28
	ld b, a                                          ; $52c3: $47
	jr c, jr_096_5314                                ; $52c4: $38 $4e

	ld b, c                                          ; $52c6: $41
	ld b, h                                          ; $52c7: $44
	and c                                            ; $52c8: $a1
	jr c, jr_096_524b                                ; $52c9: $38 $80

	ld c, a                                          ; $52cb: $4f
	ld a, [hl-]                                      ; $52cc: $3a
	ld d, b                                          ; $52cd: $50
	xor h                                            ; $52ce: $ac
	ldh a, [c]                                       ; $52cf: $f2
	ld d, d                                          ; $52d0: $52
	ld e, [hl]                                       ; $52d1: $5e
	ld b, d                                          ; $52d2: $42
	ldh a, [rP1]                                     ; $52d3: $f0 $00
	ldh a, [$27]                                     ; $52d5: $f0 $27
	ldh a, [$7e]                                     ; $52d7: $f0 $7e
	ld h, l                                          ; $52d9: $65
	ld d, e                                          ; $52da: $53
	inc de                                           ; $52db: $13
	ld a, b                                          ; $52dc: $78
	ccf                                              ; $52dd: $3f
	jr c, jr_096_532e                                ; $52de: $38 $4e

	ld c, e                                          ; $52e0: $4b
	sbc h                                            ; $52e1: $9c

jr_096_52e2:
	ld a, [hl-]                                      ; $52e2: $3a
	ld b, d                                          ; $52e3: $42
	ld b, h                                          ; $52e4: $44
	ld d, e                                          ; $52e5: $53
	xor l                                            ; $52e6: $ad
	db $ed                                           ; $52e7: $ed
	ld d, a                                          ; $52e8: $57
	ld a, b                                          ; $52e9: $78
	ccf                                              ; $52ea: $3f
	jr c, jr_096_5327                                ; $52eb: $38 $3a

	jr c, jr_096_5331                                ; $52ed: $38 $42

	ld c, d                                          ; $52ef: $4a
	ld c, h                                          ; $52f0: $4c
	and b                                            ; $52f1: $a0
	jr c, jr_096_5274                                ; $52f2: $38 $80

	ld c, a                                          ; $52f4: $4f
	ld a, [hl-]                                      ; $52f5: $3a
	ld d, b                                          ; $52f6: $50
	ldh a, [c]                                       ; $52f7: $f2
	ld d, d                                          ; $52f8: $52
	ld e, [hl]                                       ; $52f9: $5e
	ld b, d                                          ; $52fa: $42
	pop af                                           ; $52fb: $f1
	sub a                                            ; $52fc: $97
	ldh a, [rP1]                                     ; $52fd: $f0 $00
	ld d, e                                          ; $52ff: $53
	inc de                                           ; $5300: $13
	ld a, b                                          ; $5301: $78
	ccf                                              ; $5302: $3f
	jr c, jr_096_5353                                ; $5303: $38 $4e

	ld c, e                                          ; $5305: $4b
	sbc h                                            ; $5306: $9c
	ld a, [hl-]                                      ; $5307: $3a
	ld b, d                                          ; $5308: $42
	ld b, h                                          ; $5309: $44
	ld d, e                                          ; $530a: $53
	xor l                                            ; $530b: $ad
	db $ed                                           ; $530c: $ed
	ld d, a                                          ; $530d: $57
	ld a, b                                          ; $530e: $78
	ccf                                              ; $530f: $3f
	jr c, jr_096_534c                                ; $5310: $38 $3a

	jr c, jr_096_5356                                ; $5312: $38 $42

jr_096_5314:
	ld c, d                                          ; $5314: $4a
	ld c, h                                          ; $5315: $4c
	and b                                            ; $5316: $a0
	cpl                                              ; $5317: $2f
	ld b, e                                          ; $5318: $43
	ld b, h                                          ; $5319: $44
	inc a                                            ; $531a: $3c
	ld d, b                                          ; $531b: $50
	and c                                            ; $531c: $a1
	db $ec                                           ; $531d: $ec
	ld a, [de]                                       ; $531e: $1a

jr_096_531f:
	inc de                                           ; $531f: $13
	db $ed                                           ; $5320: $ed
	and a                                            ; $5321: $a7
	ld b, d                                          ; $5322: $42
	ldh a, [rTIMA]                                   ; $5323: $f0 $05

Jump_096_5325:
	pop af                                           ; $5325: $f1
	rrca                                             ; $5326: $0f

jr_096_5327:
	ld h, d                                          ; $5327: $62
	ld [hl], d                                       ; $5328: $72
	ld a, [hl-]                                      ; $5329: $3a
	ld d, e                                          ; $532a: $53
	ld d, b                                          ; $532b: $50
	ld a, d                                          ; $532c: $7a
	ld c, [hl]                                       ; $532d: $4e

jr_096_532e:
	ld b, d                                          ; $532e: $42
	ld c, a                                          ; $532f: $4f
	inc de                                           ; $5330: $13

jr_096_5331:
	pop af                                           ; $5331: $f1
	ld a, [hl+]                                      ; $5332: $2a
	ldh a, [rHDMA3]                                  ; $5333: $f0 $53
	ldh a, [$dd]                                     ; $5335: $f0 $dd
	ldh a, [$9c]                                     ; $5337: $f0 $9c
	ld b, h                                          ; $5339: $44
	ld c, c                                          ; $533a: $49
	ld [hl], a                                       ; $533b: $77
	dec sp                                           ; $533c: $3b
	ccf                                              ; $533d: $3f
	ld c, h                                          ; $533e: $4c
	dec [hl]                                         ; $533f: $35
	rla                                              ; $5340: $17
	db $ed                                           ; $5341: $ed
	xor l                                            ; $5342: $ad
	ld d, d                                          ; $5343: $52
	ld c, d                                          ; $5344: $4a
	xor $06                                          ; $5345: $ee $06
	ld b, a                                          ; $5347: $47
	ld a, d                                          ; $5348: $7a
	dec sp                                           ; $5349: $3b
	ccf                                              ; $534a: $3f
	inc de                                           ; $534b: $13

jr_096_534c:
	ld b, [hl]                                       ; $534c: $46
	ldh a, [rSB]                                     ; $534d: $f0 $01
	ld b, l                                          ; $534f: $45
	add hl, sp                                       ; $5350: $39
	db $ec                                           ; $5351: $ec
	ret c                                            ; $5352: $d8

jr_096_5353:
	inc a                                            ; $5353: $3c
	and b                                            ; $5354: $a0
	cpl                                              ; $5355: $2f

jr_096_5356:
	ld b, e                                          ; $5356: $43
	jr c, @+$3a                                      ; $5357: $38 $38

	ld b, l                                          ; $5359: $45
	xor h                                            ; $535a: $ac
	xor $08                                          ; $535b: $ee $08
	ld c, d                                          ; $535d: $4a
	db $ed                                           ; $535e: $ed
	ld e, b                                          ; $535f: $58
	ld d, b                                          ; $5360: $50
	and b                                            ; $5361: $a0
	ld e, b                                          ; $5362: $58
	ld [hl], h                                       ; $5363: $74
	inc [hl]                                         ; $5364: $34
	ld h, a                                          ; $5365: $67
	ld d, h                                          ; $5366: $54
	add hl, sp                                       ; $5367: $39
	and b                                            ; $5368: $a0
	cpl                                              ; $5369: $2f
	ld b, e                                          ; $536a: $43
	ld h, h                                          ; $536b: $64
	inc [hl]                                         ; $536c: $34
	ld h, h                                          ; $536d: $64
	jr c, jr_096_53d4                                ; $536e: $38 $64

	jr c, jr_096_531f                                ; $5370: $38 $ad

jr_096_5372:
	ld [hl-], a                                      ; $5372: $32
	ld a, [hl-]                                      ; $5373: $3a
	ld b, c                                          ; $5374: $41
	ccf                                              ; $5375: $3f
	ldh a, [$9c]                                     ; $5376: $f0 $9c
	pop af                                           ; $5378: $f1
	ld e, a                                          ; $5379: $5f
	ld a, [hl-]                                      ; $537a: $3a
	ldh a, [$f8]                                     ; $537b: $f0 $f8
	ld b, h                                          ; $537d: $44
	inc sp                                           ; $537e: $33
	add hl, bc                                       ; $537f: $09
	cpl                                              ; $5380: $2f
	ld b, e                                          ; $5381: $43
	ld [$42f4], a                                    ; $5382: $ea $f4 $42
	inc de                                           ; $5385: $13
	ldh a, [rTIMA]                                   ; $5386: $f0 $05
	pop af                                           ; $5388: $f1
	ldh a, [c]                                       ; $5389: $f2
	inc a                                            ; $538a: $3c
	ld a, [hl-]                                      ; $538b: $3a
	and c                                            ; $538c: $a1
	ldh a, [rSCX]                                    ; $538d: $f0 $43
	adc c                                            ; $538f: $89
	ldh a, [rHDMA4]                                  ; $5390: $f0 $54
	ldh a, [rAUD2ENV]                                ; $5392: $f0 $17
	xor h                                            ; $5394: $ac
	dec sp                                           ; $5395: $3b
	ccf                                              ; $5396: $3f
	ldh a, [$78]                                     ; $5397: $f0 $78
	ld e, e                                          ; $5399: $5b
	ld b, h                                          ; $539a: $44
	ld a, [hl-]                                      ; $539b: $3a
	and b                                            ; $539c: $a0
	cpl                                              ; $539d: $2f
	ld b, e                                          ; $539e: $43
	ld b, b                                          ; $539f: $40
	add hl, sp                                       ; $53a0: $39
	ld b, h                                          ; $53a1: $44
	ld a, [hl-]                                      ; $53a2: $3a
	ld c, b                                          ; $53a3: $48
	and b                                            ; $53a4: $a0
	ldh a, [rRP]                                     ; $53a5: $f0 $56
	ld b, d                                          ; $53a7: $42
	ld b, l                                          ; $53a8: $45
	add hl, sp                                       ; $53a9: $39
	ld b, a                                          ; $53aa: $47
	inc de                                           ; $53ab: $13
	ldh a, [rSCX]                                    ; $53ac: $f0 $43
	adc c                                            ; $53ae: $89
	ld b, d                                          ; $53af: $42
	ldh a, [$2d]                                     ; $53b0: $f0 $2d
	ldh a, [c]                                       ; $53b2: $f2
	xor [hl]                                         ; $53b3: $ae
	ld b, a                                          ; $53b4: $47
	db $f4                                           ; $53b5: $f4
	rla                                              ; $53b6: $17
	ld a, $38                                        ; $53b7: $3e $38
	ldh a, [$ab]                                     ; $53b9: $f0 $ab
	ld c, e                                          ; $53bb: $4b
	inc de                                           ; $53bc: $13
	ldh a, [$e9]                                     ; $53bd: $f0 $e9
	ldh a, [$0b]                                     ; $53bf: $f0 $0b
	ld b, a                                          ; $53c1: $47
	ld c, a                                          ; $53c2: $4f
	ld a, $3f                                        ; $53c3: $3e $3f
	ld d, l                                          ; $53c5: $55
	ld c, l                                          ; $53c6: $4d
	ld d, d                                          ; $53c7: $52
	jr c, jr_096_5372                                ; $53c8: $38 $a8

	ld c, e                                          ; $53ca: $4b
	dec sp                                           ; $53cb: $3b
	ld c, e                                          ; $53cc: $4b
	dec sp                                           ; $53cd: $3b
	ld c, e                                          ; $53ce: $4b
	ld c, b                                          ; $53cf: $48
	and b                                            ; $53d0: $a0
	ld e, h                                          ; $53d1: $5c

jr_096_53d2:
	dec sp                                           ; $53d2: $3b
	ld c, c                                          ; $53d3: $49

jr_096_53d4:
	inc de                                           ; $53d4: $13
	inc [hl]                                         ; $53d5: $34
	adc d                                            ; $53d6: $8a
	ldh a, [$73]                                     ; $53d7: $f0 $73
	adc a                                            ; $53d9: $8f
	ld b, d                                          ; $53da: $42
	ldh a, [rTIMA]                                   ; $53db: $f0 $05
	pop af                                           ; $53dd: $f1
	ldh a, [c]                                       ; $53de: $f2
	ld b, h                                          ; $53df: $44
	adc l                                            ; $53e0: $8d
	xor b                                            ; $53e1: $a8
	ld b, [hl]                                       ; $53e2: $46
	ld e, c                                          ; $53e3: $59
	xor $20                                          ; $53e4: $ee $20
	xor h                                            ; $53e6: $ac
	halt                                             ; $53e7: $76
	ld b, a                                          ; $53e8: $47
	ld c, a                                          ; $53e9: $4f
	db $eb                                           ; $53ea: $eb
	call Call_096_4653                               ; $53eb: $cd $53 $46
	ld c, l                                          ; $53ee: $4d
	ld a, e                                          ; $53ef: $7b
	ld a, [hl-]                                      ; $53f0: $3a
	ld [hl], h                                       ; $53f1: $74
	xor b                                            ; $53f2: $a8
	ld h, h                                          ; $53f3: $64
	ldh a, [$9b]                                     ; $53f4: $f0 $9b
	ldh a, [c]                                       ; $53f6: $f2
	ld h, a                                          ; $53f7: $67
	ld e, h                                          ; $53f8: $5c
	ld b, a                                          ; $53f9: $47
	ld a, [hl-]                                      ; $53fa: $3a
	ld c, l                                          ; $53fb: $4d
	db $d3                                           ; $53fc: $d3
	ld b, a                                          ; $53fd: $47
	ld c, b                                          ; $53fe: $48
	and b                                            ; $53ff: $a0
	ldh a, [rRP]                                     ; $5400: $f0 $56
	ld c, e                                          ; $5402: $4b
	db $eb                                           ; $5403: $eb
	call $5313                                       ; $5404: $cd $13 $53
	ldh a, [rAUD1LOW]                                ; $5407: $f0 $13
	jr c, jr_096_5447                                ; $5409: $38 $3c

	ld d, b                                          ; $540b: $50
	ld c, h                                          ; $540c: $4c
	add l                                            ; $540d: $85
	xor b                                            ; $540e: $a8
	ldh a, [$f7]                                     ; $540f: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $5411: $f0 $17
	ld b, d                                          ; $5413: $42
	ld b, l                                          ; $5414: $45
	add hl, sp                                       ; $5415: $39
	ld a, [hl-]                                      ; $5416: $3a
	ldh a, [rAUD2ENV]                                ; $5417: $f0 $17
	pop af                                           ; $5419: $f1
	ld a, [bc]                                       ; $541a: $0a
	ld c, e                                          ; $541b: $4b
	inc de                                           ; $541c: $13
	ldh a, [$e9]                                     ; $541d: $f0 $e9
	ldh a, [$0b]                                     ; $541f: $f0 $0b
	ld b, a                                          ; $5421: $47
	ld c, a                                          ; $5422: $4f
	ld a, $3f                                        ; $5423: $3e $3f
	ld d, l                                          ; $5425: $55
	ld c, l                                          ; $5426: $4d
	ld d, d                                          ; $5427: $52
	jr c, jr_096_53d2                                ; $5428: $38 $a8

	ld c, e                                          ; $542a: $4b
	dec sp                                           ; $542b: $3b
	ld c, e                                          ; $542c: $4b
	dec sp                                           ; $542d: $3b
	ld c, e                                          ; $542e: $4b
	ld c, b                                          ; $542f: $48
	and b                                            ; $5430: $a0
	cpl                                              ; $5431: $2f
	ld b, e                                          ; $5432: $43
	add hl, sp                                       ; $5433: $39
	ld c, [hl]                                       ; $5434: $4e
	ld a, c                                          ; $5435: $79
	add l                                            ; $5436: $85
	ld c, b                                          ; $5437: $48
	and b                                            ; $5438: $a0
	ld b, [hl]                                       ; $5439: $46
	ld e, c                                          ; $543a: $59
	jr c, jr_096_5476                                ; $543b: $38 $39

	pop af                                           ; $543d: $f1
	ld b, [hl]                                       ; $543e: $46
	ld c, e                                          ; $543f: $4b
	inc [hl]                                         ; $5440: $34
	ld h, h                                          ; $5441: $64
	ld a, $56                                        ; $5442: $3e $56
	ld c, l                                          ; $5444: $4d
	ld b, a                                          ; $5445: $47
	inc de                                           ; $5446: $13

jr_096_5447:
	add hl, sp                                       ; $5447: $39
	ld c, [hl]                                       ; $5448: $4e
	ld e, b                                          ; $5449: $58
	ld b, b                                          ; $544a: $40
	add hl, sp                                       ; $544b: $39
	ld b, h                                          ; $544c: $44
	ld a, [hl-]                                      ; $544d: $3a
	ld c, b                                          ; $544e: $48
	and b                                            ; $544f: $a0
	ldh a, [rRP]                                     ; $5450: $f0 $56
	ld c, e                                          ; $5452: $4b
	ld h, h                                          ; $5453: $64
	ld a, $56                                        ; $5454: $3e $56
	ld c, l                                          ; $5456: $4d
	ld b, d                                          ; $5457: $42
	inc de                                           ; $5458: $13
	ldh a, [$7b]                                     ; $5459: $f0 $7b
	ld h, l                                          ; $545b: $65
	add e                                            ; $545c: $83
	ld d, e                                          ; $545d: $53
	ldh a, [rAUD1LOW]                                ; $545e: $f0 $13
	jr c, jr_096_549e                                ; $5460: $38 $3c

	ld d, b                                          ; $5462: $50
	ld c, h                                          ; $5463: $4c
	add l                                            ; $5464: $85
	xor b                                            ; $5465: $a8
	ldh a, [$f7]                                     ; $5466: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $5468: $f0 $17
	ld b, d                                          ; $546a: $42
	ld b, l                                          ; $546b: $45
	add hl, sp                                       ; $546c: $39
	ld a, [hl-]                                      ; $546d: $3a
	ldh a, [rAUD2ENV]                                ; $546e: $f0 $17
	pop af                                           ; $5470: $f1
	ld a, [bc]                                       ; $5471: $0a
	ld c, e                                          ; $5472: $4b
	inc de                                           ; $5473: $13
	ldh a, [$e9]                                     ; $5474: $f0 $e9

jr_096_5476:
	ldh a, [$0b]                                     ; $5476: $f0 $0b
	ld b, a                                          ; $5478: $47
	ld c, a                                          ; $5479: $4f
	ld a, $3f                                        ; $547a: $3e $3f
	ld d, l                                          ; $547c: $55
	ld c, l                                          ; $547d: $4d
	ld d, d                                          ; $547e: $52
	jr c, @-$56                                      ; $547f: $38 $a8

	ld c, e                                          ; $5481: $4b
	dec sp                                           ; $5482: $3b
	ld c, e                                          ; $5483: $4b
	dec sp                                           ; $5484: $3b
	ld c, e                                          ; $5485: $4b
	ld c, b                                          ; $5486: $48
	and b                                            ; $5487: $a0
	xor $20                                          ; $5488: $ee $20
	and b                                            ; $548a: $a0
	cpl                                              ; $548b: $2f
	ld b, e                                          ; $548c: $43
	ldh a, [$2d]                                     ; $548d: $f0 $2d
	dec sp                                           ; $548f: $3b
	ccf                                              ; $5490: $3f
	ld c, [hl]                                       ; $5491: $4e
	ld b, d                                          ; $5492: $42
	inc a                                            ; $5493: $3c
	and c                                            ; $5494: $a1
	ret                                              ; $5495: $c9


	ld a, [hl-]                                      ; $5496: $3a

jr_096_5497:
	ld c, b                                          ; $5497: $48
	inc hl                                           ; $5498: $23
	inc de                                           ; $5499: $13
	jr c, jr_096_54d4                                ; $549a: $38 $38

	pop af                                           ; $549c: $f1
	ld b, [hl]                                       ; $549d: $46

jr_096_549e:
	ld a, [hl-]                                      ; $549e: $3a
	ld b, c                                          ; $549f: $41
	ld b, h                                          ; $54a0: $44
	ld d, e                                          ; $54a1: $53
	xor e                                            ; $54a2: $ab
	ld d, c                                          ; $54a3: $51
	ld [hl], b                                       ; $54a4: $70
	jr c, jr_096_5497                                ; $54a5: $38 $f0

	or d                                             ; $54a7: $b2
	ldh a, [rKEY1]                                   ; $54a8: $f0 $4d
	adc e                                            ; $54aa: $8b
	ld e, h                                          ; $54ab: $5c
	ld a, [hl-]                                      ; $54ac: $3a
	ld b, d                                          ; $54ad: $42
	ld d, e                                          ; $54ae: $53
	ld a, [hl-]                                      ; $54af: $3a
	ld c, b                                          ; $54b0: $48
	add hl, bc                                       ; $54b1: $09
	ldh a, [rRP]                                     ; $54b2: $f0 $56
	ld b, d                                          ; $54b4: $42
	ld b, l                                          ; $54b5: $45
	add hl, sp                                       ; $54b6: $39
	ld a, [hl-]                                      ; $54b7: $3a
	ldh a, [rAUDVOL]                                 ; $54b8: $f0 $24
	pop af                                           ; $54ba: $f1
	jp $1347                                         ; $54bb: $c3 $47 $13


	db $f4                                           ; $54be: $f4
	rla                                              ; $54bf: $17
	ld a, $38                                        ; $54c0: $3e $38
	ldh a, [$ab]                                     ; $54c2: $f0 $ab
	ld c, e                                          ; $54c4: $4b
	inc de                                           ; $54c5: $13
	ldh a, [$e9]                                     ; $54c6: $f0 $e9
	ldh a, [$0b]                                     ; $54c8: $f0 $0b
	ld b, a                                          ; $54ca: $47
	ld c, a                                          ; $54cb: $4f
	ld a, $3f                                        ; $54cc: $3e $3f
	ld d, l                                          ; $54ce: $55
	ld c, l                                          ; $54cf: $4d
	ld d, d                                          ; $54d0: $52
	jr c, @-$56                                      ; $54d1: $38 $a8

	ld c, e                                          ; $54d3: $4b

jr_096_54d4:
	dec sp                                           ; $54d4: $3b
	ld c, e                                          ; $54d5: $4b
	dec sp                                           ; $54d6: $3b
	ld c, e                                          ; $54d7: $4b
	ld c, b                                          ; $54d8: $48
	and b                                            ; $54d9: $a0
	cpl                                              ; $54da: $2f
	ld [hl-], a                                      ; $54db: $32
	ld d, h                                          ; $54dc: $54
	ld b, d                                          ; $54dd: $42
	db $ed                                           ; $54de: $ed
	ldh [c], a                                       ; $54df: $e2
	ld c, b                                          ; $54e0: $48
	and e                                            ; $54e1: $a3
	ld h, h                                          ; $54e2: $64
	jr c, jr_096_5519                                ; $54e3: $38 $34

	ld [de], a                                       ; $54e5: $12
	xor b                                            ; $54e6: $a8
	ld b, [hl]                                       ; $54e7: $46
	ld b, b                                          ; $54e8: $40
	ld d, h                                          ; $54e9: $54
	ld [hl], d                                       ; $54ea: $72
	ld e, a                                          ; $54eb: $5f
	ld b, l                                          ; $54ec: $45
	ld c, b                                          ; $54ed: $48
	add hl, bc                                       ; $54ee: $09
	cpl                                              ; $54ef: $2f
	ld b, e                                          ; $54f0: $43
	ld b, c                                          ; $54f1: $41
	and c                                            ; $54f2: $a1
	ld b, c                                          ; $54f3: $41
	and c                                            ; $54f4: $a1
	cpl                                              ; $54f5: $2f
	ld b, e                                          ; $54f6: $43
	ld e, d                                          ; $54f7: $5a
	add hl, sp                                       ; $54f8: $39
	ld a, $3d                                        ; $54f9: $3e $3d
	and c                                            ; $54fb: $a1
	ld h, h                                          ; $54fc: $64
	jr c, jr_096_5533                                ; $54fd: $38 $34

	ld [de], a                                       ; $54ff: $12
	xor b                                            ; $5500: $a8
	ldh a, [rAUD1LEN]                                ; $5501: $f0 $11
	ld e, c                                          ; $5503: $59
	pop af                                           ; $5504: $f1
	ld [hl+], a                                      ; $5505: $22
	ld e, c                                          ; $5506: $59
	ld c, d                                          ; $5507: $4a

jr_096_5508:
	ld c, a                                          ; $5508: $4f
	ldh a, [c]                                       ; $5509: $f2
	and a                                            ; $550a: $a7
	ld b, c                                          ; $550b: $41
	ld c, d                                          ; $550c: $4a
	jr c, jr_096_554b                                ; $550d: $38 $3c

	ld a, [hl-]                                      ; $550f: $3a
	jr c, jr_096_554e                                ; $5510: $38 $3c

	and c                                            ; $5512: $a1
	cpl                                              ; $5513: $2f
	ld b, e                                          ; $5514: $43
	ld b, b                                          ; $5515: $40
	add hl, sp                                       ; $5516: $39
	ld b, h                                          ; $5517: $44
	ld a, [hl-]                                      ; $5518: $3a

jr_096_5519:
	and b                                            ; $5519: $a0
	ld d, h                                          ; $551a: $54
	ld d, h                                          ; $551b: $54
	ld c, e                                          ; $551c: $4b
	ld c, b                                          ; $551d: $48
	and c                                            ; $551e: $a1
	cpl                                              ; $551f: $2f
	ld b, e                                          ; $5520: $43
	push af                                          ; $5521: $f5
	dec c                                            ; $5522: $0d
	di                                               ; $5523: $f3
	sbc b                                            ; $5524: $98
	di                                               ; $5525: $f3

jr_096_5526:
	cp l                                             ; $5526: $bd
	db $ec                                           ; $5527: $ec
	ret c                                            ; $5528: $d8

	inc a                                            ; $5529: $3c
	xor b                                            ; $552a: $a8
	ldh a, [$2d]                                     ; $552b: $f0 $2d
	ld d, b                                          ; $552d: $50
	ld c, h                                          ; $552e: $4c
	add l                                            ; $552f: $85
	ld b, d                                          ; $5530: $42
	inc a                                            ; $5531: $3c
	and c                                            ; $5532: $a1

jr_096_5533:
	ldh a, [$08]                                     ; $5533: $f0 $08
	add hl, sp                                       ; $5535: $39
	ld c, b                                          ; $5536: $48
	inc hl                                           ; $5537: $23
	db $ed                                           ; $5538: $ed
	and a                                            ; $5539: $a7
	ld b, d                                          ; $553a: $42
	push af                                          ; $553b: $f5
	inc c                                            ; $553c: $0c
	jr c, @+$44                                      ; $553d: $38 $42

	ldh a, [$30]                                     ; $553f: $f0 $30
	inc de                                           ; $5541: $13
	inc a                                            ; $5542: $3c
	ld c, b                                          ; $5543: $48
	ld [hl+], a                                      ; $5544: $22
	inc de                                           ; $5545: $13
	ret                                              ; $5546: $c9


	ld [hl], d                                       ; $5547: $72
	ccf                                              ; $5548: $3f
	jr c, jr_096_559f                                ; $5549: $38 $54

jr_096_554b:
	add hl, sp                                       ; $554b: $39
	ld c, d                                          ; $554c: $4a
	ld c, e                                          ; $554d: $4b

jr_096_554e:
	ld a, [hl-]                                      ; $554e: $3a
	jr c, jr_096_558d                                ; $554f: $38 $3c

	and b                                            ; $5551: $a0
	cpl                                              ; $5552: $2f
	ld b, e                                          ; $5553: $43
	ld h, h                                          ; $5554: $64
	inc [hl]                                         ; $5555: $34
	ld h, h                                          ; $5556: $64
	jr c, jr_096_55bd                                ; $5557: $38 $64

	jr c, jr_096_5508                                ; $5559: $38 $ad

	ld [hl-], a                                      ; $555b: $32
	ld a, [hl-]                                      ; $555c: $3a
	ld b, c                                          ; $555d: $41
	ld c, d                                          ; $555e: $4a
	ld h, h                                          ; $555f: $64
	sbc [hl]                                         ; $5560: $9e
	ld c, c                                          ; $5561: $49
	ld c, b                                          ; $5562: $48
	inc sp                                           ; $5563: $33
	add hl, bc                                       ; $5564: $09
	cpl                                              ; $5565: $2f
	ld b, e                                          ; $5566: $43
	ld a, [hl-]                                      ; $5567: $3a
	inc [hl]                                         ; $5568: $34
	ld l, e                                          ; $5569: $6b
	ld b, h                                          ; $556a: $44
	scf                                              ; $556b: $37
	and c                                            ; $556c: $a1
	ld [hl], l                                       ; $556d: $75
	ld a, l                                          ; $556e: $7d
	ldh a, [hDisp0_OBP1]                                     ; $556f: $f0 $87
	inc [hl]                                         ; $5571: $34
	ldh a, [$c7]                                     ; $5572: $f0 $c7
	ld c, l                                          ; $5574: $4d
	ccf                                              ; $5575: $3f
	ld a, $52                                        ; $5576: $3e $52
	jr c, jr_096_5526                                ; $5578: $38 $ac

	jp hl                                            ; $557a: $e9


	ei                                               ; $557b: $fb
	and b                                            ; $557c: $a0
	ld hl, $395a                                     ; $557d: $21 $5a $39
	ld a, $3d                                        ; $5580: $3e $3d
	ld b, c                                          ; $5582: $41
	ld b, h                                          ; $5583: $44
	xor c                                            ; $5584: $a9
	pop af                                           ; $5585: $f1
	ld d, b                                          ; $5586: $50
	ld d, e                                          ; $5587: $53
	db $ec                                           ; $5588: $ec
	ld e, [hl]                                       ; $5589: $5e
	ld b, d                                          ; $558a: $42
	inc de                                           ; $558b: $13
	pop af                                           ; $558c: $f1

jr_096_558d:
	ld d, d                                          ; $558d: $52
	ldh a, [rAUD3HIGH]                               ; $558e: $f0 $1e
	ldh a, [rAUD1ENV]                                ; $5590: $f0 $12
	pop af                                           ; $5592: $f1
	ret nz                                           ; $5593: $c0

	ldh a, [rP1]                                     ; $5594: $f0 $00
	ldh a, [$27]                                     ; $5596: $f0 $27
	ldh a, [$7e]                                     ; $5598: $f0 $7e
	ld h, l                                          ; $559a: $65
	ld d, e                                          ; $559b: $53
	pop af                                           ; $559c: $f1
	ld sp, hl                                        ; $559d: $f9
	di                                               ; $559e: $f3

jr_096_559f:
	or h                                             ; $559f: $b4
	inc de                                           ; $55a0: $13
	ld d, c                                          ; $55a1: $51
	ld c, [hl]                                       ; $55a2: $4e
	ld c, c                                          ; $55a3: $49
	ld c, e                                          ; $55a4: $4b
	ld [hl], a                                       ; $55a5: $77
	ld e, [hl]                                       ; $55a6: $5e
	ld a, [hl-]                                      ; $55a7: $3a
	jr c, jr_096_55fd                                ; $55a8: $38 $53

	ld c, b                                          ; $55aa: $48
	add hl, bc                                       ; $55ab: $09
	ld b, b                                          ; $55ac: $40
	ld c, l                                          ; $55ad: $4d
	ld d, e                                          ; $55ae: $53
	ld c, b                                          ; $55af: $48
	inc hl                                           ; $55b0: $23
	inc de                                           ; $55b1: $13
	db $f4                                           ; $55b2: $f4
	adc b                                            ; $55b3: $88
	push af                                          ; $55b4: $f5
	dec bc                                           ; $55b5: $0b
	ld b, a                                          ; $55b6: $47
	db $f4                                           ; $55b7: $f4
	ld l, d                                          ; $55b8: $6a
	jr c, @+$54                                      ; $55b9: $38 $52

	ld a, $3f                                        ; $55bb: $3e $3f

jr_096_55bd:
	ld c, b                                          ; $55bd: $48
	and b                                            ; $55be: $a0
	ld hl, $3940                                     ; $55bf: $21 $40 $39
	inc a                                            ; $55c2: $3c
	ld c, b                                          ; $55c3: $48
	inc hl                                           ; $55c4: $23
	db $ed                                           ; $55c5: $ed
	xor a                                            ; $55c6: $af
	ld a, [hl-]                                      ; $55c7: $3a
	jr c, jr_096_5604                                ; $55c8: $38 $3a

	xor b                                            ; $55ca: $a8
	ldh a, [$79]                                     ; $55cb: $f0 $79
	ld l, b                                          ; $55cd: $68
	inc a                                            ; $55ce: $3c
	ld d, b                                          ; $55cf: $50
	ld c, e                                          ; $55d0: $4b
	ldh a, [$67]                                     ; $55d1: $f0 $67
	ldh a, [rSVBK]                                   ; $55d3: $f0 $70
	ldh a, [rAUD2LEN]                                ; $55d5: $f0 $16
	pop af                                           ; $55d7: $f1
	sub a                                            ; $55d8: $97
	ldh a, [rP1]                                     ; $55d9: $f0 $00
	ld c, d                                          ; $55db: $4a
	inc de                                           ; $55dc: $13
	ldh a, [rOCPS]                                   ; $55dd: $f0 $6a
	add hl, sp                                       ; $55df: $39
	ld c, c                                          ; $55e0: $49
	ld a, $45                                        ; $55e1: $3e $45
	add hl, sp                                       ; $55e3: $39
	xor b                                            ; $55e4: $a8
	or h                                             ; $55e5: $b4
	inc [hl]                                         ; $55e6: $34
	ld [hl], b                                       ; $55e7: $70
	ld e, h                                          ; $55e8: $5c
	ldh a, [rSB]                                     ; $55e9: $f0 $01
	ld b, c                                          ; $55eb: $41
	ld b, l                                          ; $55ec: $45
	add hl, sp                                       ; $55ed: $39
	and b                                            ; $55ee: $a0
	ld hl, $395a                                     ; $55ef: $21 $5a $39
	ld a, $3d                                        ; $55f2: $3e $3d
	ld b, c                                          ; $55f4: $41
	ld b, h                                          ; $55f5: $44
	xor c                                            ; $55f6: $a9
	pop af                                           ; $55f7: $f1
	ld d, b                                          ; $55f8: $50
	ld d, e                                          ; $55f9: $53
	db $ec                                           ; $55fa: $ec
	ld e, [hl]                                       ; $55fb: $5e
	ld b, d                                          ; $55fc: $42

jr_096_55fd:
	inc de                                           ; $55fd: $13
	pop af                                           ; $55fe: $f1
	ld d, d                                          ; $55ff: $52
	ldh a, [rAUD3HIGH]                               ; $5600: $f0 $1e
	db $ed                                           ; $5602: $ed
	ld c, b                                          ; $5603: $48

jr_096_5604:
	ldh a, [$7e]                                     ; $5604: $f0 $7e
	pop af                                           ; $5606: $f1
	inc sp                                           ; $5607: $33
	ld [hl], e                                       ; $5608: $73
	ld l, c                                          ; $5609: $69
	pop af                                           ; $560a: $f1
	sub a                                            ; $560b: $97
	ldh a, [rP1]                                     ; $560c: $f0 $00
	ld d, e                                          ; $560e: $53
	inc de                                           ; $560f: $13
	pop af                                           ; $5610: $f1
	ld sp, hl                                        ; $5611: $f9
	di                                               ; $5612: $f3
	or h                                             ; $5613: $b4
	ld d, c                                          ; $5614: $51
	ld c, [hl]                                       ; $5615: $4e
	ld c, c                                          ; $5616: $49
	ld c, e                                          ; $5617: $4b
	ld [hl], a                                       ; $5618: $77
	ld e, [hl]                                       ; $5619: $5e
	ld a, [hl-]                                      ; $561a: $3a
	jr c, jr_096_5670                                ; $561b: $38 $53

	ld c, b                                          ; $561d: $48
	add hl, bc                                       ; $561e: $09
	ld b, b                                          ; $561f: $40
	ld c, l                                          ; $5620: $4d
	ld d, e                                          ; $5621: $53
	ld c, b                                          ; $5622: $48
	inc hl                                           ; $5623: $23
	ld l, a                                          ; $5624: $6f
	ldh a, [c]                                       ; $5625: $f2
	dec b                                            ; $5626: $05
	db $ed                                           ; $5627: $ed
	add $42                                          ; $5628: $c6 $42
	inc de                                           ; $562a: $13
	ldh a, [$a8]                                     ; $562b: $f0 $a8
	ldh a, [$15]                                     ; $562d: $f0 $15
	ld b, a                                          ; $562f: $47
	pop af                                           ; $5630: $f1
	sbc l                                            ; $5631: $9d
	ldh a, [rAUD2LEN]                                ; $5632: $f0 $16
	ld e, b                                          ; $5634: $58
	ld c, l                                          ; $5635: $4d
	ccf                                              ; $5636: $3f
	jr c, jr_096_568b                                ; $5637: $38 $52

	ld a, $3f                                        ; $5639: $3e $3f
	ld c, b                                          ; $563b: $48
	and b                                            ; $563c: $a0
	ld hl, $3940                                     ; $563d: $21 $40 $39
	inc a                                            ; $5640: $3c
	ld c, b                                          ; $5641: $48
	inc hl                                           ; $5642: $23
	db $ed                                           ; $5643: $ed
	xor a                                            ; $5644: $af
	ld a, [hl-]                                      ; $5645: $3a
	jr c, jr_096_5682                                ; $5646: $38 $3a

	xor b                                            ; $5648: $a8
	ldh a, [$79]                                     ; $5649: $f0 $79
	ld l, b                                          ; $564b: $68

jr_096_564c:
	inc a                                            ; $564c: $3c
	ld d, b                                          ; $564d: $50
	ld c, e                                          ; $564e: $4b
	inc [hl]                                         ; $564f: $34
	ldh a, [$67]                                     ; $5650: $f0 $67
	ldh a, [rSVBK]                                   ; $5652: $f0 $70
	ldh a, [rAUD2LEN]                                ; $5654: $f0 $16
	ldh a, [rP1]                                     ; $5656: $f0 $00
	ldh a, [$27]                                     ; $5658: $f0 $27
	ldh a, [$7e]                                     ; $565a: $f0 $7e
	ld h, l                                          ; $565c: $65
	ld c, d                                          ; $565d: $4a
	inc de                                           ; $565e: $13
	ldh a, [rOCPS]                                   ; $565f: $f0 $6a
	add hl, sp                                       ; $5661: $39
	ld c, c                                          ; $5662: $49
	ld a, $45                                        ; $5663: $3e $45
	add hl, sp                                       ; $5665: $39
	xor b                                            ; $5666: $a8
	or h                                             ; $5667: $b4
	inc [hl]                                         ; $5668: $34
	ld [hl], b                                       ; $5669: $70
	ld e, h                                          ; $566a: $5c
	ldh a, [rSB]                                     ; $566b: $f0 $01
	ld b, c                                          ; $566d: $41
	ld b, l                                          ; $566e: $45
	add hl, sp                                       ; $566f: $39

jr_096_5670:
	and b                                            ; $5670: $a0
	cpl                                              ; $5671: $2f
	ld b, e                                          ; $5672: $43
	sbc l                                            ; $5673: $9d
	inc [hl]                                         ; $5674: $34
	ldh a, [c]                                       ; $5675: $f2
	add c                                            ; $5676: $81
	ldh a, [rAUD2LEN]                                ; $5677: $f0 $16
	pop af                                           ; $5679: $f1
	sub a                                            ; $567a: $97
	ldh a, [rP1]                                     ; $567b: $f0 $00
	ld a, [hl-]                                      ; $567d: $3a
	ld b, d                                          ; $567e: $42
	inc a                                            ; $567f: $3c
	ld c, b                                          ; $5680: $48
	and b                                            ; $5681: $a0

jr_096_5682:
	add hl, bc                                       ; $5682: $09
	ld b, [hl]                                       ; $5683: $46
	dec sp                                           ; $5684: $3b
	inc [hl]                                         ; $5685: $34
	dec d                                            ; $5686: $15
	xor b                                            ; $5687: $a8
	db $ed                                           ; $5688: $ed
	add hl, bc                                       ; $5689: $09
	pop af                                           ; $568a: $f1

jr_096_568b:
	ld c, d                                          ; $568b: $4a
	ldh a, [c]                                       ; $568c: $f2
	ld a, [hl+]                                      ; $568d: $2a
	inc [hl]                                         ; $568e: $34
	db $eb                                           ; $568f: $eb
	ld e, [hl]                                       ; $5690: $5e
	xor b                                            ; $5691: $a8
	ld b, l                                          ; $5692: $45
	inc a                                            ; $5693: $3c
	dec sp                                           ; $5694: $3b
	dec a                                            ; $5695: $3d
	ld c, h                                          ; $5696: $4c
	and b                                            ; $5697: $a0
	cpl                                              ; $5698: $2f
	ld b, e                                          ; $5699: $43
	ld b, [hl]                                       ; $569a: $46
	ld d, a                                          ; $569b: $57
	ld d, e                                          ; $569c: $53
	ld c, c                                          ; $569d: $49
	add hl, sp                                       ; $569e: $39
	and b                                            ; $569f: $a0
	ld d, c                                          ; $56a0: $51
	ld [hl], b                                       ; $56a1: $70
	jr c, jr_096_56f0                                ; $56a2: $38 $4c

	ld c, b                                          ; $56a4: $48
	dec [hl]                                         ; $56a5: $35
	pop af                                           ; $56a6: $f1
	add sp, $6c                                      ; $56a7: $e8 $6c
	dec a                                            ; $56a9: $3d
	jr c, jr_096_564c                                ; $56aa: $38 $a0

	ld b, [hl]                                       ; $56ac: $46
	dec sp                                           ; $56ad: $3b
	inc [hl]                                         ; $56ae: $34
	ld de, $56f0                                     ; $56af: $11 $f0 $56
	xor b                                            ; $56b2: $a8
	db $ed                                           ; $56b3: $ed
	add hl, bc                                       ; $56b4: $09
	pop af                                           ; $56b5: $f1
	ld c, d                                          ; $56b6: $4a
	ldh a, [c]                                       ; $56b7: $f2
	ld a, [hl+]                                      ; $56b8: $2a
	xor h                                            ; $56b9: $ac
	add sp, -$2e                                     ; $56ba: $e8 $d2
	and b                                            ; $56bc: $a0
	ld d, c                                          ; $56bd: $51
	ld [hl], b                                       ; $56be: $70
	jr c, jr_096_570b                                ; $56bf: $38 $4a

	ld d, c                                          ; $56c1: $51
	ld c, h                                          ; $56c2: $4c
	xor e                                            ; $56c3: $ab
	db $ed                                           ; $56c4: $ed
	ld h, l                                          ; $56c5: $65
	ld a, $52                                        ; $56c6: $3e $52
	ld a, $3d                                        ; $56c8: $3e $3d
	and b                                            ; $56ca: $a0
	ld b, [hl]                                       ; $56cb: $46
	dec sp                                           ; $56cc: $3b
	inc [hl]                                         ; $56cd: $34
	ld de, $56f0                                     ; $56ce: $11 $f0 $56
	xor b                                            ; $56d1: $a8
	db $ed                                           ; $56d2: $ed
	add hl, bc                                       ; $56d3: $09
	inc [hl]                                         ; $56d4: $34
	ld c, c                                          ; $56d5: $49
	dec sp                                           ; $56d6: $3b
	ldh [$a8], a                                     ; $56d7: $e0 $a8
	ldh a, [$fa]                                     ; $56d9: $f0 $fa
	ld b, c                                          ; $56db: $41
	ld b, h                                          ; $56dc: $44
	ld h, e                                          ; $56dd: $63
	ld b, l                                          ; $56de: $45
	and b                                            ; $56df: $a0
	db $eb                                           ; $56e0: $eb
	ld d, l                                          ; $56e1: $55
	ld e, l                                          ; $56e2: $5d
	ld e, d                                          ; $56e3: $5a
	xor h                                            ; $56e4: $ac
	pop af                                           ; $56e5: $f1
	ld l, a                                          ; $56e6: $6f
	add h                                            ; $56e7: $84
	ld b, l                                          ; $56e8: $45
	ld d, a                                          ; $56e9: $57
	ldh a, [$4e]                                     ; $56ea: $f0 $4e
	ld c, l                                          ; $56ec: $4d
	ccf                                              ; $56ed: $3f
	jr c, jr_096_573e                                ; $56ee: $38 $4e

Jump_096_56f0:
jr_096_56f0:
	ld b, d                                          ; $56f0: $42
	ld c, e                                          ; $56f1: $4b
	inc de                                           ; $56f2: $13
	jr c, jr_096_572d                                ; $56f3: $38 $38

	ld d, h                                          ; $56f5: $54
	ld c, c                                          ; $56f6: $49
	ld b, l                                          ; $56f7: $45
	and b                                            ; $56f8: $a0
	db $ed                                           ; $56f9: $ed
	ld b, [hl]                                       ; $56fa: $46
	inc [hl]                                         ; $56fb: $34
	dec d                                            ; $56fc: $15
	xor b                                            ; $56fd: $a8
	db $ed                                           ; $56fe: $ed
	add hl, bc                                       ; $56ff: $09
	inc [hl]                                         ; $5700: $34
	db $eb                                           ; $5701: $eb
	ld e, [hl]                                       ; $5702: $5e
	xor b                                            ; $5703: $a8
	ldh a, [$fa]                                     ; $5704: $f0 $fa
	ld b, c                                          ; $5706: $41
	ld b, h                                          ; $5707: $44
	ld h, e                                          ; $5708: $63
	ld b, l                                          ; $5709: $45
	and b                                            ; $570a: $a0

jr_096_570b:
	cpl                                              ; $570b: $2f
	ld b, e                                          ; $570c: $43
	ld b, [hl]                                       ; $570d: $46
	ld d, a                                          ; $570e: $57
	ld d, e                                          ; $570f: $53
	ld c, c                                          ; $5710: $49
	add hl, sp                                       ; $5711: $39
	dec [hl]                                         ; $5712: $35
	db $eb                                           ; $5713: $eb
	ld d, b                                          ; $5714: $50
	and c                                            ; $5715: $a1
	db $eb                                           ; $5716: $eb
	sbc d                                            ; $5717: $9a
	xor h                                            ; $5718: $ac
	ldh a, [$57]                                     ; $5719: $f0 $57
	pop af                                           ; $571b: $f1
	ld e, $50                                        ; $571c: $1e $50
	ld a, $3c                                        ; $571e: $3e $3c
	dec sp                                           ; $5720: $3b
	dec a                                            ; $5721: $3d
	ld h, e                                          ; $5722: $63
	and b                                            ; $5723: $a0
	ld b, [hl]                                       ; $5724: $46
	dec sp                                           ; $5725: $3b
	inc [hl]                                         ; $5726: $34
	ld de, $56f0                                     ; $5727: $11 $f0 $56
	xor b                                            ; $572a: $a8
	db $ed                                           ; $572b: $ed
	add hl, bc                                       ; $572c: $09

jr_096_572d:
	inc [hl]                                         ; $572d: $34
	db $eb                                           ; $572e: $eb
	ld e, [hl]                                       ; $572f: $5e
	and b                                            ; $5730: $a0
	cpl                                              ; $5731: $2f
	ld b, e                                          ; $5732: $43
	ld b, [hl]                                       ; $5733: $46
	ld d, a                                          ; $5734: $57
	ld d, e                                          ; $5735: $53
	ld c, c                                          ; $5736: $49
	add hl, sp                                       ; $5737: $39
	xor b                                            ; $5738: $a8
	ldh a, [$fa]                                     ; $5739: $f0 $fa
	ld b, c                                          ; $573b: $41
	ld c, d                                          ; $573c: $4a
	ld d, l                                          ; $573d: $55

jr_096_573e:
	ld c, l                                          ; $573e: $4d
	dec a                                            ; $573f: $3d
	ld b, d                                          ; $5740: $42
	and c                                            ; $5741: $a1
	ld b, [hl]                                       ; $5742: $46
	ld b, [hl]                                       ; $5743: $46
	jr c, jr_096_577f                                ; $5744: $38 $39

	ld b, d                                          ; $5746: $42
	ld c, a                                          ; $5747: $4f
	xor h                                            ; $5748: $ac
	db $ec                                           ; $5749: $ec
	ld a, [de]                                       ; $574a: $1a
	ldh a, [$5c]                                     ; $574b: $f0 $5c
	ld d, l                                          ; $574d: $55
	db $ec                                           ; $574e: $ec
	dec bc                                           ; $574f: $0b
	and b                                            ; $5750: $a0
	ld b, [hl]                                       ; $5751: $46
	dec sp                                           ; $5752: $3b
	inc [hl]                                         ; $5753: $34
	dec d                                            ; $5754: $15
	xor b                                            ; $5755: $a8
	db $ed                                           ; $5756: $ed
	add hl, bc                                       ; $5757: $09
	ld c, c                                          ; $5758: $49
	dec sp                                           ; $5759: $3b
	dec a                                            ; $575a: $3d
	ld b, c                                          ; $575b: $41
	db $ed                                           ; $575c: $ed
	ld b, e                                          ; $575d: $43
	ld c, h                                          ; $575e: $4c
	and b                                            ; $575f: $a0
	cpl                                              ; $5760: $2f
	ld b, e                                          ; $5761: $43
	ld e, b                                          ; $5762: $58

Call_096_5763:
	ld d, c                                          ; $5763: $51
	ld d, e                                          ; $5764: $53
	db $eb                                           ; $5765: $eb
	ld a, [$edac]                                    ; $5766: $fa $ac $ed
	sbc c                                            ; $5769: $99
	ld d, e                                          ; $576a: $53
	ldh a, [$0a]                                     ; $576b: $f0 $0a
	jr c, jr_096_57bb                                ; $576d: $38 $4c

	and b                                            ; $576f: $a0
	ld c, a                                          ; $5770: $4f
	ld h, c                                          ; $5771: $61
	scf                                              ; $5772: $37
	inc de                                           ; $5773: $13
	ld b, [hl]                                       ; $5774: $46
	ld a, [hl-]                                      ; $5775: $3a
	dec a                                            ; $5776: $3d
	ld b, d                                          ; $5777: $42
	ld d, h                                          ; $5778: $54
	ld c, c                                          ; $5779: $49
	ld b, h                                          ; $577a: $44
	ld c, a                                          ; $577b: $4f
	ld b, c                                          ; $577c: $41
	ld c, h                                          ; $577d: $4c
	and b                                            ; $577e: $a0

jr_096_577f:
	ld b, [hl]                                       ; $577f: $46
	dec sp                                           ; $5780: $3b
	inc [hl]                                         ; $5781: $34
	ld de, $4158                                     ; $5782: $11 $58 $41
	xor b                                            ; $5785: $a8
	db $ed                                           ; $5786: $ed
	add hl, bc                                       ; $5787: $09
	pop af                                           ; $5788: $f1
	ld c, d                                          ; $5789: $4a
	ldh a, [c]                                       ; $578a: $f2
	ld a, [hl+]                                      ; $578b: $2a
	xor h                                            ; $578c: $ac
	add sp, -$2e                                     ; $578d: $e8 $d2
	and b                                            ; $578f: $a0
	cpl                                              ; $5790: $2f
	ld b, e                                          ; $5791: $43
	ld b, [hl]                                       ; $5792: $46
	ld d, a                                          ; $5793: $57
	ld d, e                                          ; $5794: $53
	ld c, c                                          ; $5795: $49
	add hl, sp                                       ; $5796: $39
	xor h                                            ; $5797: $ac
	db $eb                                           ; $5798: $eb
	db $fc                                           ; $5799: $fc
	and b                                            ; $579a: $a0
	ld l, d                                          ; $579b: $6a
	ldh a, [$0d]                                     ; $579c: $f0 $0d
	xor h                                            ; $579e: $ac
	ldh a, [rAUD4POLY]                               ; $579f: $f0 $22
	ld a, l                                          ; $57a1: $7d
	ld h, l                                          ; $57a2: $65
	ld d, l                                          ; $57a3: $55
	ld b, h                                          ; $57a4: $44
	ld e, b                                          ; $57a5: $58
	jr c, jr_096_57f4                                ; $57a6: $38 $4c

	and b                                            ; $57a8: $a0
	ld b, [hl]                                       ; $57a9: $46
	dec sp                                           ; $57aa: $3b
	inc [hl]                                         ; $57ab: $34
	ld d, $a8                                        ; $57ac: $16 $a8
	db $ed                                           ; $57ae: $ed
	add hl, bc                                       ; $57af: $09
	pop af                                           ; $57b0: $f1
	ld c, d                                          ; $57b1: $4a
	ldh a, [c]                                       ; $57b2: $f2
	ld a, [hl+]                                      ; $57b3: $2a
	xor h                                            ; $57b4: $ac
	db $eb                                           ; $57b5: $eb
	ld e, [hl]                                       ; $57b6: $5e
	and b                                            ; $57b7: $a0
	sub c                                            ; $57b8: $91
	ldh a, [$59]                                     ; $57b9: $f0 $59

jr_096_57bb:
	ld c, d                                          ; $57bb: $4a
	ld a, $66                                        ; $57bc: $3e $66
	xor b                                            ; $57be: $a8
	ld b, [hl]                                       ; $57bf: $46
	ld a, [hl-]                                      ; $57c0: $3a
	dec a                                            ; $57c1: $3d
	ld b, d                                          ; $57c2: $42
	ldh a, [$a5]                                     ; $57c3: $f0 $a5
	ldh a, [c]                                       ; $57c5: $f2
	ld a, [bc]                                       ; $57c6: $0a
	ld b, h                                          ; $57c7: $44
	inc a                                            ; $57c8: $3c
	ld d, b                                          ; $57c9: $50
	ld c, h                                          ; $57ca: $4c
	and b                                            ; $57cb: $a0
	cpl                                              ; $57cc: $2f
	ld [hl-], a                                      ; $57cd: $32
	ldh a, [$32]                                     ; $57ce: $f0 $32
	ld h, l                                          ; $57d0: $65
	inc sp                                           ; $57d1: $33
	jr jr_096_57dd                                   ; $57d2: $18 $09

	ld b, [hl]                                       ; $57d4: $46
	dec sp                                           ; $57d5: $3b
	inc [hl]                                         ; $57d6: $34
	db $eb                                           ; $57d7: $eb
	ccf                                              ; $57d8: $3f
	and b                                            ; $57d9: $a0
	cpl                                              ; $57da: $2f
	ld b, e                                          ; $57db: $43
	ld b, [hl]                                       ; $57dc: $46

jr_096_57dd:
	dec sp                                           ; $57dd: $3b
	inc [hl]                                         ; $57de: $34
	ldh a, [rRP]                                     ; $57df: $f0 $56
	ld c, e                                          ; $57e1: $4b
	ld c, b                                          ; $57e2: $48
	add hl, bc                                       ; $57e3: $09
	ld b, [hl]                                       ; $57e4: $46
	dec sp                                           ; $57e5: $3b
	inc [hl]                                         ; $57e6: $34
	db $ed                                           ; $57e7: $ed
	add hl, bc                                       ; $57e8: $09
	ldh a, [$a5]                                     ; $57e9: $f0 $a5
	ldh a, [rSVBK]                                   ; $57eb: $f0 $70
	ld b, d                                          ; $57ed: $42
	ld c, b                                          ; $57ee: $48
	add hl, bc                                       ; $57ef: $09
	cpl                                              ; $57f0: $2f
	ld b, e                                          ; $57f1: $43
	ld e, [hl]                                       ; $57f2: $5e
	dec sp                                           ; $57f3: $3b

jr_096_57f4:
	and c                                            ; $57f4: $a1
	sbc $34                                          ; $57f5: $de $34
	db $eb                                           ; $57f7: $eb
	ccf                                              ; $57f8: $3f
	xor b                                            ; $57f9: $a8
	ld b, b                                          ; $57fa: $40
	ld c, l                                          ; $57fb: $4d
	ld e, e                                          ; $57fc: $5b
	ld d, [hl]                                       ; $57fd: $56
	ld c, b                                          ; $57fe: $48
	add hl, bc                                       ; $57ff: $09
	cpl                                              ; $5800: $2f
	ld b, e                                          ; $5801: $43
	ld h, h                                          ; $5802: $64
	pop af                                           ; $5803: $f1
	dec [hl]                                         ; $5804: $35
	jr c, @-$5e                                      ; $5805: $38 $a0

	ld l, [hl]                                       ; $5807: $6e
	ld b, [hl]                                       ; $5808: $46
	inc [hl]                                         ; $5809: $34
	ld h, h                                          ; $580a: $64
	ld c, e                                          ; $580b: $4b
	ld b, l                                          ; $580c: $45
	add hl, sp                                       ; $580d: $39
	and b                                            ; $580e: $a0
	cpl                                              ; $580f: $2f
	ld b, e                                          ; $5810: $43
	jr c, jr_096_5847                                ; $5811: $38 $34

	db $ec                                           ; $5813: $ec
	di                                               ; $5814: $f3
	xor b                                            ; $5815: $a8
	ld a, [hl-]                                      ; $5816: $3a
	ld b, c                                          ; $5817: $41
	ld c, d                                          ; $5818: $4a
	ld d, h                                          ; $5819: $54
	ld b, c                                          ; $581a: $41
	ld a, [hl-]                                      ; $581b: $3a
	ld c, c                                          ; $581c: $49
	ld d, h                                          ; $581d: $54
	ld e, a                                          ; $581e: $5f
	ld b, a                                          ; $581f: $47
	and b                                            ; $5820: $a0
	jr c, jr_096_5891                                ; $5821: $38 $6e

	ld a, [hl-]                                      ; $5823: $3a
	ld b, a                                          ; $5824: $47
	xor h                                            ; $5825: $ac
	ldh a, [rRP]                                     ; $5826: $f0 $56
	ld d, e                                          ; $5828: $53
	db $ed                                           ; $5829: $ed
	add hl, bc                                       ; $582a: $09
	ld h, d                                          ; $582b: $62
	ld c, c                                          ; $582c: $49
	dec sp                                           ; $582d: $3b
	dec a                                            ; $582e: $3d
	ld c, c                                          ; $582f: $49
	jr c, jr_096_586b                                ; $5830: $38 $39

	ld b, d                                          ; $5832: $42
	ld c, d                                          ; $5833: $4a
	xor h                                            ; $5834: $ac
	adc b                                            ; $5835: $88
	sub c                                            ; $5836: $91
	inc a                                            ; $5837: $3c
	ld e, d                                          ; $5838: $5a
	add hl, sp                                       ; $5839: $39
	inc a                                            ; $583a: $3c
	pop af                                           ; $583b: $f1
	add d                                            ; $583c: $82
	inc a                                            ; $583d: $3c
	ld [hl], c                                       ; $583e: $71
	ld b, a                                          ; $583f: $47
	ld c, b                                          ; $5840: $48
	add hl, bc                                       ; $5841: $09
	cpl                                              ; $5842: $2f
	ld b, e                                          ; $5843: $43
	xor $10                                          ; $5844: $ee $10
	dec [hl]                                         ; $5846: $35

jr_096_5847:
	rla                                              ; $5847: $17
	ld h, h                                          ; $5848: $64
	ld d, d                                          ; $5849: $52
	ld e, [hl]                                       ; $584a: $5e
	ld c, a                                          ; $584b: $4f
	ldh a, [$ea]                                     ; $584c: $f0 $ea
	ld b, h                                          ; $584e: $44
	ld a, [hl-]                                      ; $584f: $3a
	xor b                                            ; $5850: $a8
	db $ec                                           ; $5851: $ec
	ld sp, $ec34                                     ; $5852: $31 $34 $ec
	di                                               ; $5855: $f3
	and b                                            ; $5856: $a0
	ld b, [hl]                                       ; $5857: $46
	dec sp                                           ; $5858: $3b
	inc [hl]                                         ; $5859: $34
	sbc c                                            ; $585a: $99
	ld h, c                                          ; $585b: $61
	dec a                                            ; $585c: $3d
	ld d, d                                          ; $585d: $52
	ld e, [hl]                                       ; $585e: $5e
	and d                                            ; $585f: $a2
	cpl                                              ; $5860: $2f
	ld b, e                                          ; $5861: $43
	ld [hl], $37                                     ; $5862: $36 $37
	inc de                                           ; $5864: $13
	ld b, [hl]                                       ; $5865: $46
	ld b, c                                          ; $5866: $41
	dec a                                            ; $5867: $3d
	ld c, e                                          ; $5868: $4b
	pop af                                           ; $5869: $f1
	add d                                            ; $586a: $82

jr_096_586b:
	inc a                                            ; $586b: $3c
	ld c, b                                          ; $586c: $48

jr_096_586d:
	add hl, bc                                       ; $586d: $09
	db $ed                                           ; $586e: $ed
	add hl, bc                                       ; $586f: $09
	pop af                                           ; $5870: $f1
	ld c, d                                          ; $5871: $4a
	ldh a, [c]                                       ; $5872: $f2
	ld a, [hl+]                                      ; $5873: $2a
	xor h                                            ; $5874: $ac
	add sp, -$2e                                     ; $5875: $e8 $d2
	xor b                                            ; $5877: $a8
	ld d, h                                          ; $5878: $54
	ld c, l                                          ; $5879: $4d
	ld b, h                                          ; $587a: $44
	ld e, l                                          ; $587b: $5d
	ld d, e                                          ; $587c: $53
	add d                                            ; $587d: $82
	jr c, jr_096_58bd                                ; $587e: $38 $3d

	inc a                                            ; $5880: $3c
	dec sp                                           ; $5881: $3b
	dec a                                            ; $5882: $3d
	ld b, d                                          ; $5883: $42
	ld c, d                                          ; $5884: $4a
	ld d, c                                          ; $5885: $51
	and b                                            ; $5886: $a0
	cpl                                              ; $5887: $2f
	ld b, e                                          ; $5888: $43
	ld b, [hl]                                       ; $5889: $46
	inc [hl]                                         ; $588a: $34
	ld b, [hl]                                       ; $588b: $46
	ld [hl], h                                       ; $588c: $74
	inc [hl]                                         ; $588d: $34
	ld b, [hl]                                       ; $588e: $46
	ld d, a                                          ; $588f: $57
	ld d, e                                          ; $5890: $53

jr_096_5891:
	ld c, c                                          ; $5891: $49
	add hl, sp                                       ; $5892: $39
	ld c, b                                          ; $5893: $48
	and b                                            ; $5894: $a0
	jp z, Jump_096_5234                              ; $5895: $ca $34 $52

	dec a                                            ; $5898: $3d
	ld c, b                                          ; $5899: $48
	and b                                            ; $589a: $a0
	cpl                                              ; $589b: $2f
	ld [hl-], a                                      ; $589c: $32
	ld d, d                                          ; $589d: $52
	dec a                                            ; $589e: $3d
	ld c, b                                          ; $589f: $48
	ld [hl], $33                                     ; $58a0: $36 $33
	add hl, bc                                       ; $58a2: $09
	cpl                                              ; $58a3: $2f
	ld [hl-], a                                      ; $58a4: $32
	sub d                                            ; $58a5: $92
	adc [hl]                                         ; $58a6: $8e
	dec sp                                           ; $58a7: $3b
	dec a                                            ; $58a8: $3d
	ldh a, [$b1]                                     ; $58a9: $f0 $b1
	ldh a, [c]                                       ; $58ab: $f2
	ld [hl+], a                                      ; $58ac: $22
	ld d, e                                          ; $58ad: $53
	inc de                                           ; $58ae: $13
	ld b, [hl]                                       ; $58af: $46
	dec sp                                           ; $58b0: $3b
	dec a                                            ; $58b1: $3d
	adc l                                            ; $58b2: $8d
	and e                                            ; $58b3: $a3
	ld b, [hl]                                       ; $58b4: $46
	dec sp                                           ; $58b5: $3b
	inc [hl]                                         ; $58b6: $34
	dec d                                            ; $58b7: $15
	xor b                                            ; $58b8: $a8
	ld [$3b96], a                                    ; $58b9: $ea $96 $3b
	ccf                                              ; $58bc: $3f

jr_096_58bd:
	inc [hl]                                         ; $58bd: $34
	adc b                                            ; $58be: $88
	sub c                                            ; $58bf: $91
	and c                                            ; $58c0: $a1
	cpl                                              ; $58c1: $2f
	ld b, e                                          ; $58c2: $43
	ld a, [hl-]                                      ; $58c3: $3a
	ld b, c                                          ; $58c4: $41
	inc a                                            ; $58c5: $3c
	inc [hl]                                         ; $58c6: $34
	adc b                                            ; $58c7: $88
	sub c                                            ; $58c8: $91
	ld l, h                                          ; $58c9: $6c
	dec a                                            ; $58ca: $3d
	jr c, jr_096_586d                                ; $58cb: $38 $a0

	ld b, [hl]                                       ; $58cd: $46
	dec sp                                           ; $58ce: $3b
	inc [hl]                                         ; $58cf: $34
	ld de, $56f0                                     ; $58d0: $11 $f0 $56
	xor b                                            ; $58d3: $a8
	ld [$ac96], a                                    ; $58d4: $ea $96 $ac
	add sp, -$2e                                     ; $58d7: $e8 $d2
	and b                                            ; $58d9: $a0
	ld d, c                                          ; $58da: $51
	ld [hl], b                                       ; $58db: $70
	jr c, jr_096_5928                                ; $58dc: $38 $4a

	ld d, c                                          ; $58de: $51
	ld c, h                                          ; $58df: $4c
	xor e                                            ; $58e0: $ab
	ldh a, [$9f]                                     ; $58e1: $f0 $9f
	ld e, e                                          ; $58e3: $5b
	ld d, b                                          ; $58e4: $50
	ld c, l                                          ; $58e5: $4d
	ld d, d                                          ; $58e6: $52
	ld a, c                                          ; $58e7: $79
	ld b, c                                          ; $58e8: $41
	and b                                            ; $58e9: $a0
	ld b, b                                          ; $58ea: $40
	ld b, d                                          ; $58eb: $42
	pop af                                           ; $58ec: $f1
	sub $f4                                          ; $58ed: $d6 $f4
	or c                                             ; $58ef: $b1
	ld h, d                                          ; $58f0: $62
	xor h                                            ; $58f1: $ac
	ld a, [hl-]                                      ; $58f2: $3a
	adc l                                            ; $58f3: $8d
	ld c, a                                          ; $58f4: $4f
	dec sp                                           ; $58f5: $3b
	ld c, c                                          ; $58f6: $49
	ldh a, [$f5]                                     ; $58f7: $f0 $f5
	add hl, sp                                       ; $58f9: $39
	ldh a, [$38]                                     ; $58fa: $f0 $38
	pop af                                           ; $58fc: $f1
	dec a                                            ; $58fd: $3d
	ld b, a                                          ; $58fe: $47
	inc de                                           ; $58ff: $13
	pop af                                           ; $5900: $f1
	dec a                                            ; $5901: $3d
	ld e, l                                          ; $5902: $5d
	ld a, [hl-]                                      ; $5903: $3a
	jr c, jr_096_5948                                ; $5904: $38 $42

	inc a                                            ; $5906: $3c
	ld a, $50                                        ; $5907: $3e $50
	and b                                            ; $5909: $a0
	cpl                                              ; $590a: $2f
	ld b, e                                          ; $590b: $43
	ld h, c                                          ; $590c: $61
	inc [hl]                                         ; $590d: $34
	ldh a, [$f5]                                     ; $590e: $f0 $f5
	add hl, sp                                       ; $5910: $39
	ldh a, [$38]                                     ; $5911: $f0 $38
	pop af                                           ; $5913: $f1
	dec a                                            ; $5914: $3d
	dec sp                                           ; $5915: $3b
	ccf                                              ; $5916: $3f
	ld c, b                                          ; $5917: $48
	add hl, bc                                       ; $5918: $09
	ld d, d                                          ; $5919: $52
	ld b, [hl]                                       ; $591a: $46
	jr c, jr_096_5955                                ; $591b: $38 $38

	ld h, e                                          ; $591d: $63
	inc [hl]                                         ; $591e: $34
	pop af                                           ; $591f: $f1
	ld l, a                                          ; $5920: $6f
	add h                                            ; $5921: $84
	ld b, l                                          ; $5922: $45
	ld d, a                                          ; $5923: $57
	inc de                                           ; $5924: $13
	ldh a, [$4e]                                     ; $5925: $f0 $4e
	ld c, l                                          ; $5927: $4d

jr_096_5928:
	ccf                                              ; $5928: $3f
	jr c, jr_096_5979                                ; $5929: $38 $4e

	ld b, d                                          ; $592b: $42
	xor $2d                                          ; $592c: $ee $2d
	jr c, jr_096_5984                                ; $592e: $38 $54

	ld c, c                                          ; $5930: $49
	ld b, l                                          ; $5931: $45
	and b                                            ; $5932: $a0
	db $ed                                           ; $5933: $ed
	ld b, [hl]                                       ; $5934: $46
	inc [hl]                                         ; $5935: $34
	dec d                                            ; $5936: $15
	xor b                                            ; $5937: $a8
	db $eb                                           ; $5938: $eb
	ld e, [hl]                                       ; $5939: $5e
	dec [hl]                                         ; $593a: $35
	db $eb                                           ; $593b: $eb
	cp h                                             ; $593c: $bc
	ld a, [hl-]                                      ; $593d: $3a
	ld b, c                                          ; $593e: $41
	ccf                                              ; $593f: $3f
	xor h                                            ; $5940: $ac
	db $eb                                           ; $5941: $eb
	ld a, d                                          ; $5942: $7a
	jr c, jr_096_59a8                                ; $5943: $38 $63

	and b                                            ; $5945: $a0
	db $eb                                           ; $5946: $eb
	sbc d                                            ; $5947: $9a

jr_096_5948:
	xor h                                            ; $5948: $ac
	ld b, [hl]                                       ; $5949: $46
	ld a, [hl-]                                      ; $594a: $3a
	dec a                                            ; $594b: $3d
	dec sp                                           ; $594c: $3b
	ccf                                              ; $594d: $3f
	ld d, c                                          ; $594e: $51
	ld [hl], b                                       ; $594f: $70
	jr c, jr_096_5994                                ; $5950: $38 $42

	ld c, h                                          ; $5952: $4c
	and b                                            ; $5953: $a0
	ld b, [hl]                                       ; $5954: $46

jr_096_5955:
	dec sp                                           ; $5955: $3b
	inc [hl]                                         ; $5956: $34
	ld de, $56f0                                     ; $5957: $11 $f0 $56
	xor b                                            ; $595a: $a8
	db $eb                                           ; $595b: $eb
	cp h                                             ; $595c: $bc
	inc [hl]                                         ; $595d: $34
	db $eb                                           ; $595e: $eb
	ld e, [hl]                                       ; $595f: $5e
	and b                                            ; $5960: $a0
	ld b, [hl]                                       ; $5961: $46
	ld a, [hl-]                                      ; $5962: $3a
	dec a                                            ; $5963: $3d
	ld d, e                                          ; $5964: $53

jr_096_5965:
	pop af                                           ; $5965: $f1
	ld c, d                                          ; $5966: $4a
	ldh a, [c]                                       ; $5967: $f2
	ld a, [hl+]                                      ; $5968: $2a
	ld d, c                                          ; $5969: $51
	ld c, [hl]                                       ; $596a: $4e
	ld b, d                                          ; $596b: $42
	ld c, e                                          ; $596c: $4b
	xor h                                            ; $596d: $ac
	ldh a, [$5c]                                     ; $596e: $f0 $5c
	jr c, jr_096_59f1                                ; $5970: $38 $7f

	ldh a, [rTAC]                                    ; $5972: $f0 $07
	db $ec                                           ; $5974: $ec
	ret c                                            ; $5975: $d8

	ld h, e                                          ; $5976: $63
	ld c, h                                          ; $5977: $4c
	and b                                            ; $5978: $a0

jr_096_5979:
	ld b, [hl]                                       ; $5979: $46
	dec sp                                           ; $597a: $3b
	inc [hl]                                         ; $597b: $34
	dec d                                            ; $597c: $15
	xor b                                            ; $597d: $a8
	db $ed                                           ; $597e: $ed
	rlca                                             ; $597f: $07
	ld [hl], d                                       ; $5980: $72
	dec a                                            ; $5981: $3d
	ld b, l                                          ; $5982: $45
	xor b                                            ; $5983: $a8

jr_096_5984:
	db $eb                                           ; $5984: $eb
	cp h                                             ; $5985: $bc
	ld a, [hl-]                                      ; $5986: $3a
	ld b, c                                          ; $5987: $41
	ccf                                              ; $5988: $3f
	add e                                            ; $5989: $83
	ld [hl], e                                       ; $598a: $73
	pop af                                           ; $598b: $f1
	ld c, c                                          ; $598c: $49
	ld e, c                                          ; $598d: $59
	ld a, l                                          ; $598e: $7d
	and d                                            ; $598f: $a2
	cpl                                              ; $5990: $2f
	ld b, e                                          ; $5991: $43
	ld c, e                                          ; $5992: $4b
	ld c, e                                          ; $5993: $4b

jr_096_5994:
	ld c, e                                          ; $5994: $4b
	inc [hl]                                         ; $5995: $34
	ld b, [hl]                                       ; $5996: $46
	ld d, a                                          ; $5997: $57
	ld d, e                                          ; $5998: $53
	ld c, c                                          ; $5999: $49
	add hl, sp                                       ; $599a: $39
	and b                                            ; $599b: $a0
	ld d, h                                          ; $599c: $54
	ld c, l                                          ; $599d: $4d
	ld c, d                                          ; $599e: $4a
	xor h                                            ; $599f: $ac
	ld b, [hl]                                       ; $59a0: $46
	ld a, [hl-]                                      ; $59a1: $3a
	dec a                                            ; $59a2: $3d
	ld c, a                                          ; $59a3: $4f
	pop af                                           ; $59a4: $f1
	adc d                                            ; $59a5: $8a
	ldh a, [$fb]                                     ; $59a6: $f0 $fb

jr_096_59a8:
	add h                                            ; $59a8: $84
	ld b, h                                          ; $59a9: $44
	ld c, h                                          ; $59aa: $4c
	and b                                            ; $59ab: $a0
	ld b, [hl]                                       ; $59ac: $46
	dec sp                                           ; $59ad: $3b
	inc [hl]                                         ; $59ae: $34
	ld de, $4158                                     ; $59af: $11 $58 $41
	xor b                                            ; $59b2: $a8
	db $eb                                           ; $59b3: $eb
	cp h                                             ; $59b4: $bc
	dec sp                                           ; $59b5: $3b
	ccf                                              ; $59b6: $3f
	adc b                                            ; $59b7: $88
	sub c                                            ; $59b8: $91
	ld c, d                                          ; $59b9: $4a
	ld d, c                                          ; $59ba: $51
	inc a                                            ; $59bb: $3c
	and c                                            ; $59bc: $a1
	cpl                                              ; $59bd: $2f
	ld b, e                                          ; $59be: $43
	adc b                                            ; $59bf: $88
	sub c                                            ; $59c0: $91
	ld l, h                                          ; $59c1: $6c
	dec a                                            ; $59c2: $3d
	jr c, jr_096_5965                                ; $59c3: $38 $a0

	ld d, c                                          ; $59c5: $51
	dec sp                                           ; $59c6: $3b
	ld [hl], b                                       ; $59c7: $70
	ld e, c                                          ; $59c8: $59
	jr c, @-$56                                      ; $59c9: $38 $a8

	ld l, d                                          ; $59cb: $6a
	ldh a, [$0d]                                     ; $59cc: $f0 $0d
	inc [hl]                                         ; $59ce: $34
	ldh a, [rAUD4POLY]                               ; $59cf: $f0 $22
	ld a, l                                          ; $59d1: $7d
	ld h, l                                          ; $59d2: $65
	ld d, l                                          ; $59d3: $55
	ld b, h                                          ; $59d4: $44
	ld e, b                                          ; $59d5: $58
	jr c, jr_096_5a24                                ; $59d6: $38 $4c

	and b                                            ; $59d8: $a0
	ld b, [hl]                                       ; $59d9: $46
	dec sp                                           ; $59da: $3b
	inc [hl]                                         ; $59db: $34
	ld d, $a8                                        ; $59dc: $16 $a8
	db $eb                                           ; $59de: $eb
	cp h                                             ; $59df: $bc
	pop af                                           ; $59e0: $f1
	ld c, d                                          ; $59e1: $4a
	ldh a, [c]                                       ; $59e2: $f2
	ld a, [hl+]                                      ; $59e3: $2a
	xor h                                            ; $59e4: $ac
	db $eb                                           ; $59e5: $eb
	ld e, [hl]                                       ; $59e6: $5e
	and b                                            ; $59e7: $a0
	db $eb                                           ; $59e8: $eb
	ld a, d                                          ; $59e9: $7a
	jr c, jr_096_5a4f                                ; $59ea: $38 $63

	ld c, h                                          ; $59ec: $4c
	and b                                            ; $59ed: $a0
	ld b, [hl]                                       ; $59ee: $46
	dec sp                                           ; $59ef: $3b
	xor h                                            ; $59f0: $ac

jr_096_59f1:
	ld [$4296], a                                    ; $59f1: $ea $96 $42
	ld c, b                                          ; $59f4: $48
	add hl, bc                                       ; $59f5: $09
	jr c, jr_096_5a66                                ; $59f6: $38 $6e

	ld a, [hl-]                                      ; $59f8: $3a
	ld b, a                                          ; $59f9: $47
	xor h                                            ; $59fa: $ac
	ldh a, [rRP]                                     ; $59fb: $f0 $56
	ld d, e                                          ; $59fd: $53
	db $eb                                           ; $59fe: $eb
	cp h                                             ; $59ff: $bc
	ld h, d                                          ; $5a00: $62
	inc de                                           ; $5a01: $13
	ld c, c                                          ; $5a02: $49
	dec sp                                           ; $5a03: $3b
	dec a                                            ; $5a04: $3d
	ld c, c                                          ; $5a05: $49
	jr c, jr_096_5a41                                ; $5a06: $38 $39

	ld b, d                                          ; $5a08: $42
	ld c, d                                          ; $5a09: $4a
	xor h                                            ; $5a0a: $ac
	adc b                                            ; $5a0b: $88
	sub c                                            ; $5a0c: $91
	inc a                                            ; $5a0d: $3c
	ld e, d                                          ; $5a0e: $5a
	add hl, sp                                       ; $5a0f: $39
	inc a                                            ; $5a10: $3c
	pop af                                           ; $5a11: $f1
	add d                                            ; $5a12: $82
	inc a                                            ; $5a13: $3c
	ld [hl], c                                       ; $5a14: $71
	ld b, a                                          ; $5a15: $47
	ld c, b                                          ; $5a16: $48
	add hl, bc                                       ; $5a17: $09
	db $eb                                           ; $5a18: $eb
	cp h                                             ; $5a19: $bc
	pop af                                           ; $5a1a: $f1
	ld c, d                                          ; $5a1b: $4a
	ldh a, [c]                                       ; $5a1c: $f2
	ld a, [hl+]                                      ; $5a1d: $2a
	xor h                                            ; $5a1e: $ac
	add sp, -$2e                                     ; $5a1f: $e8 $d2
	xor b                                            ; $5a21: $a8
	ld d, h                                          ; $5a22: $54
	ld c, l                                          ; $5a23: $4d

jr_096_5a24:
	ld b, h                                          ; $5a24: $44
	ld e, l                                          ; $5a25: $5d
	ld d, e                                          ; $5a26: $53
	add d                                            ; $5a27: $82
	jr c, @+$3f                                      ; $5a28: $38 $3d

	inc a                                            ; $5a2a: $3c
	dec sp                                           ; $5a2b: $3b
	dec a                                            ; $5a2c: $3d
	ld b, d                                          ; $5a2d: $42
	ld c, d                                          ; $5a2e: $4a
	ld d, c                                          ; $5a2f: $51
	and b                                            ; $5a30: $a0
	ld b, [hl]                                       ; $5a31: $46
	dec sp                                           ; $5a32: $3b
	inc [hl]                                         ; $5a33: $34
	dec d                                            ; $5a34: $15
	xor b                                            ; $5a35: $a8
	db $ed                                           ; $5a36: $ed
	ret                                              ; $5a37: $c9


	add a                                            ; $5a38: $87
	ldh a, [c]                                       ; $5a39: $f2
	ld a, [hl+]                                      ; $5a3a: $2a
	inc [hl]                                         ; $5a3b: $34
	db $eb                                           ; $5a3c: $eb
	ld e, [hl]                                       ; $5a3d: $5e
	xor b                                            ; $5a3e: $a8
	ld d, c                                          ; $5a3f: $51
	ld [hl], b                                       ; $5a40: $70

jr_096_5a41:
	ld d, l                                          ; $5a41: $55
	jr c, jr_096_5a7c                                ; $5a42: $38 $38

	ldh a, [$3f]                                     ; $5a44: $f0 $3f
	ld c, h                                          ; $5a46: $4c
	and b                                            ; $5a47: $a0
	ld b, [hl]                                       ; $5a48: $46
	dec sp                                           ; $5a49: $3b
	inc [hl]                                         ; $5a4a: $34
	ld de, $56f0                                     ; $5a4b: $11 $f0 $56
	xor b                                            ; $5a4e: $a8

jr_096_5a4f:
	db $ed                                           ; $5a4f: $ed
	ret                                              ; $5a50: $c9


	add a                                            ; $5a51: $87
	ldh a, [c]                                       ; $5a52: $f2
	ld a, [hl+]                                      ; $5a53: $2a
	xor h                                            ; $5a54: $ac
	add sp, -$2e                                     ; $5a55: $e8 $d2
	xor b                                            ; $5a57: $a8
	ldh a, [$57]                                     ; $5a58: $f0 $57
	ldh a, [$ae]                                     ; $5a5a: $f0 $ae
	ld a, [hl-]                                      ; $5a5c: $3a
	ldh a, [$3f]                                     ; $5a5d: $f0 $3f
	ld c, d                                          ; $5a5f: $4a
	ld d, c                                          ; $5a60: $51
	ld c, h                                          ; $5a61: $4c
	and b                                            ; $5a62: $a0
	ld b, [hl]                                       ; $5a63: $46
	dec sp                                           ; $5a64: $3b
	inc [hl]                                         ; $5a65: $34

jr_096_5a66:
	ld de, $56f0                                     ; $5a66: $11 $f0 $56
	xor b                                            ; $5a69: $a8
	db $ed                                           ; $5a6a: $ed
	ret                                              ; $5a6b: $c9


	ld c, d                                          ; $5a6c: $4a
	add a                                            ; $5a6d: $87
	ldh a, [c]                                       ; $5a6e: $f2

jr_096_5a6f:
	ld a, [hl+]                                      ; $5a6f: $2a
	ld h, d                                          ; $5a70: $62
	ld c, c                                          ; $5a71: $49
	dec sp                                           ; $5a72: $3b
	dec a                                            ; $5a73: $3d
	ldh a, [$3f]                                     ; $5a74: $f0 $3f
	xor h                                            ; $5a76: $ac
	ld e, d                                          ; $5a77: $5a
	add hl, sp                                       ; $5a78: $39
	ld a, c                                          ; $5a79: $79
	ld a, [hl-]                                      ; $5a7a: $3a
	ld d, b                                          ; $5a7b: $50

jr_096_5a7c:
	jr nc, jr_096_5a6f                               ; $5a7c: $30 $f1

	or l                                             ; $5a7e: $b5
	ld a, b                                          ; $5a7f: $78
	ld b, d                                          ; $5a80: $42
	di                                               ; $5a81: $f3
	ld d, [hl]                                       ; $5a82: $56
	ldh a, [$b0]                                     ; $5a83: $f0 $b0
	pop af                                           ; $5a85: $f1
	ld b, d                                          ; $5a86: $42
	ld sp, $1347                                     ; $5a87: $31 $47 $13
	ld d, c                                          ; $5a8a: $51
	ld c, [hl]                                       ; $5a8b: $4e
	ldh a, [$8c]                                     ; $5a8c: $f0 $8c
	ld e, h                                          ; $5a8e: $5c
	ld b, h                                          ; $5a8f: $44
	dec sp                                           ; $5a90: $3b
	dec a                                            ; $5a91: $3d
	ld h, e                                          ; $5a92: $63
	and b                                            ; $5a93: $a0
	cpl                                              ; $5a94: $2f
	ld b, e                                          ; $5a95: $43
	ld a, $34                                        ; $5a96: $3e $34
	di                                               ; $5a98: $f3
	ld d, [hl]                                       ; $5a99: $56
	ldh a, [$b0]                                     ; $5a9a: $f0 $b0
	pop af                                           ; $5a9c: $f1
	ld b, d                                          ; $5a9d: $42
	ld c, b                                          ; $5a9e: $48
	and c                                            ; $5a9f: $a1
	db $ec                                           ; $5aa0: $ec
	ld [hl], a                                       ; $5aa1: $77
	scf                                              ; $5aa2: $37
	inc de                                           ; $5aa3: $13
	db $ed                                           ; $5aa4: $ed
	ret                                              ; $5aa5: $c9


	add a                                            ; $5aa6: $87
	ldh a, [c]                                       ; $5aa7: $f2
	ld a, [hl+]                                      ; $5aa8: $2a
	inc [hl]                                         ; $5aa9: $34
	db $eb                                           ; $5aaa: $eb
	ld e, [hl]                                       ; $5aab: $5e
	and b                                            ; $5aac: $a0
	ld b, [hl]                                       ; $5aad: $46
	dec sp                                           ; $5aae: $3b
	inc [hl]                                         ; $5aaf: $34
	ld de, $56f0                                     ; $5ab0: $11 $f0 $56
	xor b                                            ; $5ab3: $a8
	db $ed                                           ; $5ab4: $ed
	ret                                              ; $5ab5: $c9


	add a                                            ; $5ab6: $87
	ldh a, [c]                                       ; $5ab7: $f2
	ld a, [hl+]                                      ; $5ab8: $2a
	inc [hl]                                         ; $5ab9: $34
	db $eb                                           ; $5aba: $eb
	ld e, [hl]                                       ; $5abb: $5e
	and b                                            ; $5abc: $a0
	ld e, d                                          ; $5abd: $5a
	add hl, sp                                       ; $5abe: $39
	ld a, c                                          ; $5abf: $79
	ld a, [hl-]                                      ; $5ac0: $3a
	ld d, b                                          ; $5ac1: $50
	inc [hl]                                         ; $5ac2: $34
	ld l, a                                          ; $5ac3: $6f
	ld h, d                                          ; $5ac4: $62
	pop af                                           ; $5ac5: $f1
	dec b                                            ; $5ac6: $05
	ldh a, [rWY]                                     ; $5ac7: $f0 $4a
	ldh a, [$03]                                     ; $5ac9: $f0 $03
	ld b, a                                          ; $5acb: $47
	inc de                                           ; $5acc: $13
	ld d, c                                          ; $5acd: $51
	ld c, l                                          ; $5ace: $4d
	ld a, e                                          ; $5acf: $7b
	db $ec                                           ; $5ad0: $ec
	cp c                                             ; $5ad1: $b9
	ld b, d                                          ; $5ad2: $42
	ld b, a                                          ; $5ad3: $47
	and b                                            ; $5ad4: $a0
	ld b, [hl]                                       ; $5ad5: $46
	dec sp                                           ; $5ad6: $3b
	inc [hl]                                         ; $5ad7: $34
	dec d                                            ; $5ad8: $15
	xor b                                            ; $5ad9: $a8
	db $ed                                           ; $5ada: $ed
	ret                                              ; $5adb: $c9


	ld c, d                                          ; $5adc: $4a
	add a                                            ; $5add: $87
	ldh a, [c]                                       ; $5ade: $f2
	ld a, [hl+]                                      ; $5adf: $2a
	ld h, d                                          ; $5ae0: $62
	inc de                                           ; $5ae1: $13
	ld c, a                                          ; $5ae2: $4f
	ld d, b                                          ; $5ae3: $50
	dec sp                                           ; $5ae4: $3b
	ld h, c                                          ; $5ae5: $61
	ld d, [hl]                                       ; $5ae6: $56
	dec sp                                           ; $5ae7: $3b
	dec a                                            ; $5ae8: $3d
	ld b, c                                          ; $5ae9: $41
	db $ed                                           ; $5aea: $ed
	ld b, e                                          ; $5aeb: $43
	ld c, h                                          ; $5aec: $4c
	and b                                            ; $5aed: $a0
	ld b, [hl]                                       ; $5aee: $46
	dec sp                                           ; $5aef: $3b
	inc [hl]                                         ; $5af0: $34
	ld de, $4158                                     ; $5af1: $11 $58 $41
	xor b                                            ; $5af4: $a8
	db $ed                                           ; $5af5: $ed
	ret                                              ; $5af6: $c9


	add a                                            ; $5af7: $87
	ldh a, [c]                                       ; $5af8: $f2
	ld a, [hl+]                                      ; $5af9: $2a
	xor h                                            ; $5afa: $ac
	add sp, -$2e                                     ; $5afb: $e8 $d2
	and b                                            ; $5afd: $a0
	xor $27                                          ; $5afe: $ee $27
	inc [hl]                                         ; $5b00: $34
	db $ed                                           ; $5b01: $ed
	ld h, d                                          ; $5b02: $62
	ld b, a                                          ; $5b03: $47
	inc de                                           ; $5b04: $13
	ldh a, [$67]                                     ; $5b05: $f0 $67
	ldh a, [c]                                       ; $5b07: $f2
	dec h                                            ; $5b08: $25
	ld a, $61                                        ; $5b09: $3e $61
	ld d, [hl]                                       ; $5b0b: $56
	xor $1f                                          ; $5b0c: $ee $1f
	ld b, h                                          ; $5b0e: $44
	ld e, c                                          ; $5b0f: $59
	and b                                            ; $5b10: $a0
	ld b, [hl]                                       ; $5b11: $46
	dec sp                                           ; $5b12: $3b
	inc [hl]                                         ; $5b13: $34
	ld d, $a8                                        ; $5b14: $16 $a8
	db $ed                                           ; $5b16: $ed
	ret                                              ; $5b17: $c9


	add a                                            ; $5b18: $87
	ldh a, [c]                                       ; $5b19: $f2
	ld a, [hl+]                                      ; $5b1a: $2a
	pop af                                           ; $5b1b: $f1
	ld c, d                                          ; $5b1c: $4a
	ldh a, [c]                                       ; $5b1d: $f2
	ld a, [hl+]                                      ; $5b1e: $2a
	xor h                                            ; $5b1f: $ac
	db $eb                                           ; $5b20: $eb
	ld e, [hl]                                       ; $5b21: $5e
	and b                                            ; $5b22: $a0
	db $eb                                           ; $5b23: $eb
	ld d, h                                          ; $5b24: $54
	ldh a, [$3f]                                     ; $5b25: $f0 $3f
	ld b, h                                          ; $5b27: $44
	dec sp                                           ; $5b28: $3b
	dec a                                            ; $5b29: $3d
	ld b, l                                          ; $5b2a: $45
	xor b                                            ; $5b2b: $a8
	db $ed                                           ; $5b2c: $ed
	ld h, l                                          ; $5b2d: $65
	ld a, $3d                                        ; $5b2e: $3e $3d
	ld c, b                                          ; $5b30: $48
	and b                                            ; $5b31: $a0
	ld b, [hl]                                       ; $5b32: $46
	dec sp                                           ; $5b33: $3b
	inc [hl]                                         ; $5b34: $34
	pop af                                           ; $5b35: $f1
	xor d                                            ; $5b36: $aa
	pop af                                           ; $5b37: $f1
	and e                                            ; $5b38: $a3
	ldh a, [$7a]                                     ; $5b39: $f0 $7a
	ldh a, [rSVBK]                                   ; $5b3b: $f0 $70
	ld b, d                                          ; $5b3d: $42
	ld c, b                                          ; $5b3e: $48
	add hl, bc                                       ; $5b3f: $09
	jr c, jr_096_5bb0                                ; $5b40: $38 $6e

	ld a, [hl-]                                      ; $5b42: $3a
	ld b, a                                          ; $5b43: $47
	xor h                                            ; $5b44: $ac
	ldh a, [rRP]                                     ; $5b45: $f0 $56
	ld d, e                                          ; $5b47: $53
	db $ed                                           ; $5b48: $ed
	ret                                              ; $5b49: $c9


	add a                                            ; $5b4a: $87
	ldh a, [c]                                       ; $5b4b: $f2
	ld a, [hl+]                                      ; $5b4c: $2a
	ld h, d                                          ; $5b4d: $62
	inc de                                           ; $5b4e: $13
	ld c, c                                          ; $5b4f: $49
	dec sp                                           ; $5b50: $3b
	dec a                                            ; $5b51: $3d
	ld c, c                                          ; $5b52: $49
	jr c, jr_096_5b8e                                ; $5b53: $38 $39

	ld b, d                                          ; $5b55: $42
	ld c, d                                          ; $5b56: $4a
	xor h                                            ; $5b57: $ac
	adc b                                            ; $5b58: $88
	sub c                                            ; $5b59: $91
	inc a                                            ; $5b5a: $3c
	ld e, d                                          ; $5b5b: $5a
	add hl, sp                                       ; $5b5c: $39
	inc a                                            ; $5b5d: $3c
	pop af                                           ; $5b5e: $f1
	add d                                            ; $5b5f: $82
	inc a                                            ; $5b60: $3c
	ld [hl], c                                       ; $5b61: $71
	ld b, a                                          ; $5b62: $47
	ld c, b                                          ; $5b63: $48
	add hl, bc                                       ; $5b64: $09
	db $ed                                           ; $5b65: $ed
	ret                                              ; $5b66: $c9


	add a                                            ; $5b67: $87
	ldh a, [c]                                       ; $5b68: $f2
	ld a, [hl+]                                      ; $5b69: $2a
	pop af                                           ; $5b6a: $f1
	ld c, d                                          ; $5b6b: $4a
	ldh a, [c]                                       ; $5b6c: $f2
	ld a, [hl+]                                      ; $5b6d: $2a
	xor h                                            ; $5b6e: $ac
	add sp, -$2e                                     ; $5b6f: $e8 $d2
	xor b                                            ; $5b71: $a8
	ld d, h                                          ; $5b72: $54
	ld c, l                                          ; $5b73: $4d
	ld b, h                                          ; $5b74: $44
	ld e, l                                          ; $5b75: $5d
	ld d, e                                          ; $5b76: $53
	add d                                            ; $5b77: $82
	jr c, jr_096_5bb7                                ; $5b78: $38 $3d

	inc a                                            ; $5b7a: $3c
	dec sp                                           ; $5b7b: $3b
	dec a                                            ; $5b7c: $3d
	ld b, d                                          ; $5b7d: $42
	ld c, d                                          ; $5b7e: $4a
	ld d, c                                          ; $5b7f: $51
	and b                                            ; $5b80: $a0
	ld l, a                                          ; $5b81: $6f
	ldh a, [rSTAT]                                   ; $5b82: $f0 $41
	xor e                                            ; $5b84: $ab
	ldh a, [$4e]                                     ; $5b85: $f0 $4e
	ldh a, [$6f]                                     ; $5b87: $f0 $6f
	db $eb                                           ; $5b89: $eb
	ld d, [hl]                                       ; $5b8a: $56
	ld b, d                                          ; $5b8b: $42
	ld b, l                                          ; $5b8c: $45
	ld c, h                                          ; $5b8d: $4c

jr_096_5b8e:
	and b                                            ; $5b8e: $a0
	cpl                                              ; $5b8f: $2f
	ld b, e                                          ; $5b90: $43
	xor $1f                                          ; $5b91: $ee $1f
	inc [hl]                                         ; $5b93: $34
	ldh a, [$4e]                                     ; $5b94: $f0 $4e
	ldh a, [$6f]                                     ; $5b96: $f0 $6f
	db $eb                                           ; $5b98: $eb
	ld d, [hl]                                       ; $5b99: $56
	and b                                            ; $5b9a: $a0
	ld b, [hl]                                       ; $5b9b: $46
	dec sp                                           ; $5b9c: $3b
	inc [hl]                                         ; $5b9d: $34
	dec d                                            ; $5b9e: $15
	xor b                                            ; $5b9f: $a8
	ldh a, [$ca]                                     ; $5ba0: $f0 $ca
	ldh a, [c]                                       ; $5ba2: $f2
	or [hl]                                          ; $5ba3: $b6
	pop af                                           ; $5ba4: $f1
	ld b, c                                          ; $5ba5: $41
	ldh a, [$8b]                                     ; $5ba6: $f0 $8b
	sub b                                            ; $5ba8: $90
	ldh a, [rAUD1LEN]                                ; $5ba9: $f0 $11
	ld h, l                                          ; $5bab: $65
	sub e                                            ; $5bac: $93
	ld e, c                                          ; $5bad: $59
	ldh a, [$03]                                     ; $5bae: $f0 $03

jr_096_5bb0:
	ldh a, [$4e]                                     ; $5bb0: $f0 $4e
	ldh a, [$6f]                                     ; $5bb2: $f0 $6f
	xor h                                            ; $5bb4: $ac
	db $eb                                           ; $5bb5: $eb
	ld e, [hl]                                       ; $5bb6: $5e

jr_096_5bb7:
	xor b                                            ; $5bb7: $a8
	jr c, jr_096_5bf2                                ; $5bb8: $38 $38

	xor $2b                                          ; $5bba: $ee $2b
	ld b, h                                          ; $5bbc: $44
	dec sp                                           ; $5bbd: $3b
	dec a                                            ; $5bbe: $3d
	ld h, e                                          ; $5bbf: $63
	and b                                            ; $5bc0: $a0
	ld b, [hl]                                       ; $5bc1: $46
	dec sp                                           ; $5bc2: $3b
	inc [hl]                                         ; $5bc3: $34
	ld de, $56f0                                     ; $5bc4: $11 $f0 $56
	xor b                                            ; $5bc7: $a8
	ldh a, [$ca]                                     ; $5bc8: $f0 $ca
	ldh a, [c]                                       ; $5bca: $f2
	or [hl]                                          ; $5bcb: $b6
	pop af                                           ; $5bcc: $f1
	ld b, c                                          ; $5bcd: $41
	ldh a, [$8b]                                     ; $5bce: $f0 $8b
	sub b                                            ; $5bd0: $90
	ldh a, [rAUD1LEN]                                ; $5bd1: $f0 $11
	ld h, l                                          ; $5bd3: $65
	sub e                                            ; $5bd4: $93
	ld e, c                                          ; $5bd5: $59
	ldh a, [$03]                                     ; $5bd6: $f0 $03
	ldh a, [$4e]                                     ; $5bd8: $f0 $4e
	ldh a, [$6f]                                     ; $5bda: $f0 $6f
	xor h                                            ; $5bdc: $ac
	add sp, -$2e                                     ; $5bdd: $e8 $d2
	and b                                            ; $5bdf: $a0
	ld b, [hl]                                       ; $5be0: $46
	dec sp                                           ; $5be1: $3b
	inc [hl]                                         ; $5be2: $34
	ld de, $56f0                                     ; $5be3: $11 $f0 $56
	xor b                                            ; $5be6: $a8
	ldh a, [$ca]                                     ; $5be7: $f0 $ca
	ldh a, [c]                                       ; $5be9: $f2
	or [hl]                                          ; $5bea: $b6
	pop af                                           ; $5beb: $f1
	ld b, c                                          ; $5bec: $41
	ldh a, [$8b]                                     ; $5bed: $f0 $8b
	sub b                                            ; $5bef: $90
	ldh a, [rAUD1LEN]                                ; $5bf0: $f0 $11

jr_096_5bf2:
	ld h, l                                          ; $5bf2: $65
	sub e                                            ; $5bf3: $93
	ld e, c                                          ; $5bf4: $59
	ldh a, [$03]                                     ; $5bf5: $f0 $03
	ld c, d                                          ; $5bf7: $4a
	inc de                                           ; $5bf8: $13
	ldh a, [$4e]                                     ; $5bf9: $f0 $4e
	ldh a, [$6f]                                     ; $5bfb: $f0 $6f
	ld a, $e0                                        ; $5bfd: $3e $e0
	and b                                            ; $5bff: $a0
	cpl                                              ; $5c00: $2f
	ld b, e                                          ; $5c01: $43
	ldh a, [$0c]                                     ; $5c02: $f0 $0c
	jr c, jr_096_5c45                                ; $5c04: $38 $3f

	ld d, l                                          ; $5c06: $55
	ld c, l                                          ; $5c07: $4d
	dec a                                            ; $5c08: $3d
	ld b, d                                          ; $5c09: $42
	xor c                                            ; $5c0a: $a9
	db $eb                                           ; $5c0b: $eb
	ld d, b                                          ; $5c0c: $50
	and c                                            ; $5c0d: $a1
	db $ed                                           ; $5c0e: $ed
	ld b, [hl]                                       ; $5c0f: $46
	inc [hl]                                         ; $5c10: $34
	dec d                                            ; $5c11: $15
	xor b                                            ; $5c12: $a8
	ldh a, [$ca]                                     ; $5c13: $f0 $ca
	ldh a, [c]                                       ; $5c15: $f2
	or [hl]                                          ; $5c16: $b6
	pop af                                           ; $5c17: $f1
	ld b, c                                          ; $5c18: $41
	ldh a, [$8b]                                     ; $5c19: $f0 $8b
	sub b                                            ; $5c1b: $90
	ldh a, [rAUD1LEN]                                ; $5c1c: $f0 $11
	ld h, l                                          ; $5c1e: $65
	sub e                                            ; $5c1f: $93
	ld e, c                                          ; $5c20: $59
	ldh a, [$03]                                     ; $5c21: $f0 $03
	ldh a, [$4e]                                     ; $5c23: $f0 $4e
	ldh a, [$6f]                                     ; $5c25: $f0 $6f
	xor h                                            ; $5c27: $ac
	db $eb                                           ; $5c28: $eb
	ld e, [hl]                                       ; $5c29: $5e
	xor b                                            ; $5c2a: $a8
	ldh a, [$0c]                                     ; $5c2b: $f0 $0c
	jr c, jr_096_5c6e                                ; $5c2d: $38 $3f

	dec a                                            ; $5c2f: $3d
	ld h, e                                          ; $5c30: $63
	ld b, l                                          ; $5c31: $45
	and b                                            ; $5c32: $a0
	cpl                                              ; $5c33: $2f
	ld b, e                                          ; $5c34: $43
	ld b, [hl]                                       ; $5c35: $46
	ld d, a                                          ; $5c36: $57
	ld d, e                                          ; $5c37: $53
	ld c, c                                          ; $5c38: $49
	add hl, sp                                       ; $5c39: $39
	xor b                                            ; $5c3a: $a8
	db $eb                                           ; $5c3b: $eb
	ld d, b                                          ; $5c3c: $50
	and c                                            ; $5c3d: $a1
	ld b, [hl]                                       ; $5c3e: $46
	dec sp                                           ; $5c3f: $3b
	inc [hl]                                         ; $5c40: $34
	dec d                                            ; $5c41: $15
	xor b                                            ; $5c42: $a8
	ldh a, [$ca]                                     ; $5c43: $f0 $ca

jr_096_5c45:
	ldh a, [c]                                       ; $5c45: $f2
	or [hl]                                          ; $5c46: $b6
	pop af                                           ; $5c47: $f1
	ld b, c                                          ; $5c48: $41
	ldh a, [$8b]                                     ; $5c49: $f0 $8b
	sub b                                            ; $5c4b: $90
	ldh a, [rAUD1LEN]                                ; $5c4c: $f0 $11
	ld h, l                                          ; $5c4e: $65
	sub e                                            ; $5c4f: $93
	ld e, c                                          ; $5c50: $59
	ldh a, [$03]                                     ; $5c51: $f0 $03
	xor h                                            ; $5c53: $ac
	ldh a, [$4e]                                     ; $5c54: $f0 $4e
	ldh a, [$6f]                                     ; $5c56: $f0 $6f
	db $eb                                           ; $5c58: $eb
	ld e, [hl]                                       ; $5c59: $5e
	and b                                            ; $5c5a: $a0
	ld b, [hl]                                       ; $5c5b: $46
	dec sp                                           ; $5c5c: $3b
	inc [hl]                                         ; $5c5d: $34
	dec d                                            ; $5c5e: $15
	xor b                                            ; $5c5f: $a8
	ldh a, [$ca]                                     ; $5c60: $f0 $ca
	ldh a, [c]                                       ; $5c62: $f2
	or [hl]                                          ; $5c63: $b6
	pop af                                           ; $5c64: $f1
	ld b, c                                          ; $5c65: $41
	ldh a, [$8b]                                     ; $5c66: $f0 $8b
	sub b                                            ; $5c68: $90
	ldh a, [rAUD1LEN]                                ; $5c69: $f0 $11
	ld h, l                                          ; $5c6b: $65
	sub e                                            ; $5c6c: $93
	ld e, c                                          ; $5c6d: $59

jr_096_5c6e:
	ldh a, [$03]                                     ; $5c6e: $f0 $03
	ldh a, [$4e]                                     ; $5c70: $f0 $4e
	ldh a, [$6f]                                     ; $5c72: $f0 $6f
	xor h                                            ; $5c74: $ac
	db $eb                                           ; $5c75: $eb
	ld e, [hl]                                       ; $5c76: $5e
	and b                                            ; $5c77: $a0
	ld d, h                                          ; $5c78: $54
	ld c, l                                          ; $5c79: $4d
	ld c, d                                          ; $5c7a: $4a
	ld b, [hl]                                       ; $5c7b: $46
	ld a, [hl-]                                      ; $5c7c: $3a
	dec a                                            ; $5c7d: $3d
	ld c, a                                          ; $5c7e: $4f
	inc de                                           ; $5c7f: $13
	pop af                                           ; $5c80: $f1
	adc d                                            ; $5c81: $8a
	ldh a, [$fb]                                     ; $5c82: $f0 $fb
	add h                                            ; $5c84: $84
	ld b, h                                          ; $5c85: $44
	ld c, h                                          ; $5c86: $4c
	and b                                            ; $5c87: $a0
	ld b, [hl]                                       ; $5c88: $46
	dec sp                                           ; $5c89: $3b
	inc [hl]                                         ; $5c8a: $34
	ld de, $4158                                     ; $5c8b: $11 $58 $41
	xor b                                            ; $5c8e: $a8
	ldh a, [$ca]                                     ; $5c8f: $f0 $ca
	ldh a, [c]                                       ; $5c91: $f2
	or [hl]                                          ; $5c92: $b6
	pop af                                           ; $5c93: $f1
	ld b, c                                          ; $5c94: $41
	ldh a, [$8b]                                     ; $5c95: $f0 $8b
	sub b                                            ; $5c97: $90
	ldh a, [rAUD1LEN]                                ; $5c98: $f0 $11
	ld h, l                                          ; $5c9a: $65
	sub e                                            ; $5c9b: $93
	ld e, c                                          ; $5c9c: $59
	ldh a, [$03]                                     ; $5c9d: $f0 $03
	ldh a, [$4e]                                     ; $5c9f: $f0 $4e
	ldh a, [$6f]                                     ; $5ca1: $f0 $6f
	xor h                                            ; $5ca3: $ac
	add sp, -$2e                                     ; $5ca4: $e8 $d2
	and b                                            ; $5ca6: $a0
	ld b, [hl]                                       ; $5ca7: $46
	dec sp                                           ; $5ca8: $3b
	inc [hl]                                         ; $5ca9: $34
	ld d, $a8                                        ; $5caa: $16 $a8
	ldh a, [$ca]                                     ; $5cac: $f0 $ca
	ldh a, [c]                                       ; $5cae: $f2
	or [hl]                                          ; $5caf: $b6
	pop af                                           ; $5cb0: $f1
	ld b, c                                          ; $5cb1: $41
	ldh a, [$8b]                                     ; $5cb2: $f0 $8b
	sub b                                            ; $5cb4: $90
	ldh a, [rAUD1LEN]                                ; $5cb5: $f0 $11
	ld h, l                                          ; $5cb7: $65
	sub e                                            ; $5cb8: $93
	ld e, c                                          ; $5cb9: $59
	ldh a, [$03]                                     ; $5cba: $f0 $03
	ldh a, [$4e]                                     ; $5cbc: $f0 $4e
	ldh a, [$6f]                                     ; $5cbe: $f0 $6f
	xor h                                            ; $5cc0: $ac
	db $eb                                           ; $5cc1: $eb
	ld e, [hl]                                       ; $5cc2: $5e
	and b                                            ; $5cc3: $a0
	db $eb                                           ; $5cc4: $eb
	ld d, h                                          ; $5cc5: $54
	inc de                                           ; $5cc6: $13
	xor $2b                                          ; $5cc7: $ee $2b
	ld b, h                                          ; $5cc9: $44
	dec sp                                           ; $5cca: $3b
	dec a                                            ; $5ccb: $3d
	ld b, l                                          ; $5ccc: $45
	dec [hl]                                         ; $5ccd: $35
	db $ed                                           ; $5cce: $ed
	ld h, l                                          ; $5ccf: $65
	ld a, $3d                                        ; $5cd0: $3e $3d
	ld c, b                                          ; $5cd2: $48
	and b                                            ; $5cd3: $a0
	ld b, [hl]                                       ; $5cd4: $46
	dec sp                                           ; $5cd5: $3b
	inc [hl]                                         ; $5cd6: $34
	pop af                                           ; $5cd7: $f1
	xor d                                            ; $5cd8: $aa
	pop af                                           ; $5cd9: $f1
	and e                                            ; $5cda: $a3
	ldh a, [$99]                                     ; $5cdb: $f0 $99
	sub b                                            ; $5cdd: $90
	ldh a, [rSVBK]                                   ; $5cde: $f0 $70
	ld b, d                                          ; $5ce0: $42
	ld c, b                                          ; $5ce1: $48
	add hl, bc                                       ; $5ce2: $09
	jr c, jr_096_5d53                                ; $5ce3: $38 $6e

	ld a, [hl-]                                      ; $5ce5: $3a
	ld b, a                                          ; $5ce6: $47
	xor h                                            ; $5ce7: $ac
	ldh a, [rRP]                                     ; $5ce8: $f0 $56
	ld d, e                                          ; $5cea: $53
	ldh a, [$ca]                                     ; $5ceb: $f0 $ca
	ldh a, [c]                                       ; $5ced: $f2
	or [hl]                                          ; $5cee: $b6
	pop af                                           ; $5cef: $f1
	ld b, c                                          ; $5cf0: $41
	ldh a, [$8b]                                     ; $5cf1: $f0 $8b
	sub b                                            ; $5cf3: $90
	ldh a, [rAUD1LEN]                                ; $5cf4: $f0 $11
	ld h, l                                          ; $5cf6: $65
	sub e                                            ; $5cf7: $93
	ld e, c                                          ; $5cf8: $59
	ldh a, [$03]                                     ; $5cf9: $f0 $03
	ld c, d                                          ; $5cfb: $4a
	inc de                                           ; $5cfc: $13
	ldh a, [$4e]                                     ; $5cfd: $f0 $4e
	ldh a, [$6f]                                     ; $5cff: $f0 $6f

jr_096_5d01:
	ld a, $3d                                        ; $5d01: $3e $3d
	ld c, c                                          ; $5d03: $49
	jr c, @+$3b                                      ; $5d04: $38 $39

	ld b, d                                          ; $5d06: $42
	ld c, d                                          ; $5d07: $4a
	xor h                                            ; $5d08: $ac
	adc b                                            ; $5d09: $88
	sub c                                            ; $5d0a: $91
	inc a                                            ; $5d0b: $3c
	ld e, d                                          ; $5d0c: $5a
	add hl, sp                                       ; $5d0d: $39
	inc a                                            ; $5d0e: $3c
	pop af                                           ; $5d0f: $f1
	add d                                            ; $5d10: $82
	inc a                                            ; $5d11: $3c
	ld [hl], c                                       ; $5d12: $71
	ld b, a                                          ; $5d13: $47
	ld c, b                                          ; $5d14: $48
	add hl, bc                                       ; $5d15: $09
	ldh a, [$ca]                                     ; $5d16: $f0 $ca
	ldh a, [c]                                       ; $5d18: $f2
	or [hl]                                          ; $5d19: $b6
	pop af                                           ; $5d1a: $f1
	ld b, c                                          ; $5d1b: $41
	ldh a, [$8b]                                     ; $5d1c: $f0 $8b
	sub b                                            ; $5d1e: $90
	ldh a, [rAUD1LEN]                                ; $5d1f: $f0 $11
	ld h, l                                          ; $5d21: $65
	sub e                                            ; $5d22: $93
	ld e, c                                          ; $5d23: $59
	ldh a, [$03]                                     ; $5d24: $f0 $03
	inc de                                           ; $5d26: $13
	ldh a, [$4e]                                     ; $5d27: $f0 $4e
	ldh a, [$6f]                                     ; $5d29: $f0 $6f
	add sp, -$2e                                     ; $5d2b: $e8 $d2
	xor b                                            ; $5d2d: $a8
	ld d, h                                          ; $5d2e: $54
	ld c, l                                          ; $5d2f: $4d
	ld b, h                                          ; $5d30: $44
	ld e, l                                          ; $5d31: $5d
	ld d, e                                          ; $5d32: $53
	add d                                            ; $5d33: $82
	jr c, jr_096_5d73                                ; $5d34: $38 $3d

	inc a                                            ; $5d36: $3c
	dec sp                                           ; $5d37: $3b
	dec a                                            ; $5d38: $3d
	ld b, d                                          ; $5d39: $42
	ld c, d                                          ; $5d3a: $4a
	ld d, c                                          ; $5d3b: $51
	and b                                            ; $5d3c: $a0
	add hl, bc                                       ; $5d3d: $09
	ldh a, [$08]                                     ; $5d3e: $f0 $08
	ld d, b                                          ; $5d40: $50
	ld [de], a                                       ; $5d41: $12
	xor b                                            ; $5d42: $a8
	db $ed                                           ; $5d43: $ed
	xor c                                            ; $5d44: $a9
	ld h, c                                          ; $5d45: $61
	ld d, [hl]                                       ; $5d46: $56
	ld b, c                                          ; $5d47: $41
	ld d, e                                          ; $5d48: $53
	ld h, h                                          ; $5d49: $64
	ld [hl], d                                       ; $5d4a: $72
	pop af                                           ; $5d4b: $f1
	add e                                            ; $5d4c: $83
	jr c, jr_096_5d96                                ; $5d4d: $38 $47

	inc de                                           ; $5d4f: $13
	ld a, b                                          ; $5d50: $78
	ccf                                              ; $5d51: $3f
	ld d, l                                          ; $5d52: $55

jr_096_5d53:
	ld c, l                                          ; $5d53: $4d
	dec a                                            ; $5d54: $3d
	ld h, e                                          ; $5d55: $63
	ld b, l                                          ; $5d56: $45
	xor b                                            ; $5d57: $a8
	ldh a, [c]                                       ; $5d58: $f2
	rlca                                             ; $5d59: $07
	ld e, h                                          ; $5d5a: $5c
	ccf                                              ; $5d5b: $3f
	ld e, h                                          ; $5d5c: $5c
	ld a, [hl-]                                      ; $5d5d: $3a
	ld e, b                                          ; $5d5e: $58
	jr c, jr_096_5d01                                ; $5d5f: $38 $a0

	cpl                                              ; $5d61: $2f
	ld [hl-], a                                      ; $5d62: $32
	ld e, [hl]                                       ; $5d63: $5e
	dec sp                                           ; $5d64: $3b
	inc [hl]                                         ; $5d65: $34
	db $ed                                           ; $5d66: $ed
	xor c                                            ; $5d67: $a9
	ld d, e                                          ; $5d68: $53
	inc de                                           ; $5d69: $13
	ld h, h                                          ; $5d6a: $64
	ld [hl], d                                       ; $5d6b: $72
	pop af                                           ; $5d6c: $f1
	add e                                            ; $5d6d: $83
	jr c, @+$49                                      ; $5d6e: $38 $47

	ld c, b                                          ; $5d70: $48
	and e                                            ; $5d71: $a3
	ld e, d                                          ; $5d72: $5a

jr_096_5d73:
	add hl, sp                                       ; $5d73: $39
	inc [hl]                                         ; $5d74: $34
	ld a, a                                          ; $5d75: $7f
	ldh a, [rTAC]                                    ; $5d76: $f0 $07
	ld c, e                                          ; $5d78: $4b
	and c                                            ; $5d79: $a1
	cpl                                              ; $5d7a: $2f
	ld b, e                                          ; $5d7b: $43
	ld c, a                                          ; $5d7c: $4f
	add hl, sp                                       ; $5d7d: $39
	inc [hl]                                         ; $5d7e: $34
	inc a                                            ; $5d7f: $3c
	ld a, [hl-]                                      ; $5d80: $3a
	ld d, a                                          ; $5d81: $57
	inc de                                           ; $5d82: $13
	ld a, [hl]                                       ; $5d83: $7e
	ld d, l                                          ; $5d84: $55
	ld a, [hl-]                                      ; $5d85: $3a
	dec sp                                           ; $5d86: $3b
	dec a                                            ; $5d87: $3d
	ld b, l                                          ; $5d88: $45
	xor b                                            ; $5d89: $a8
	ld d, d                                          ; $5d8a: $52
	ld b, h                                          ; $5d8b: $44
	ldh a, [rHDMA4]                                  ; $5d8c: $f0 $54
	ld a, $f1                                        ; $5d8e: $3e $f1
	push hl                                          ; $5d90: $e5
	dec sp                                           ; $5d91: $3b
	pop af                                           ; $5d92: $f1
	rla                                              ; $5d93: $17
	jr c, jr_096_5df3                                ; $5d94: $38 $5d

jr_096_5d96:
	ld e, d                                          ; $5d96: $5a
	ld c, b                                          ; $5d97: $48
	and b                                            ; $5d98: $a0
	ld c, d                                          ; $5d99: $4a
	ld c, a                                          ; $5d9a: $4f
	inc [hl]                                         ; $5d9b: $34
	db $ec                                           ; $5d9c: $ec
	cp c                                             ; $5d9d: $b9
	xor b                                            ; $5d9e: $a8
	pop af                                           ; $5d9f: $f1
	rra                                              ; $5da0: $1f
	ld a, a                                          ; $5da1: $7f
	ld b, b                                          ; $5da2: $40
	add hl, sp                                       ; $5da3: $39
	ld c, d                                          ; $5da4: $4a
	xor b                                            ; $5da5: $a8
	ld b, b                                          ; $5da6: $40
	ld b, d                                          ; $5da7: $42
	ldh a, [rTAC]                                    ; $5da8: $f0 $07
	ld a, [hl-]                                      ; $5daa: $3a
	ld d, b                                          ; $5dab: $50
	add a                                            ; $5dac: $87
	ldh a, [$5b]                                     ; $5dad: $f0 $5b
	ldh a, [$5e]                                     ; $5daf: $f0 $5e
	ld c, h                                          ; $5db1: $4c
	and b                                            ; $5db2: $a0
	cpl                                              ; $5db3: $2f
	ld b, e                                          ; $5db4: $43
	ld h, e                                          ; $5db5: $63
	ldh a, [rAUD1SWEEP]                              ; $5db6: $f0 $10
	ld h, e                                          ; $5db8: $63
	ldh a, [rAUD1SWEEP]                              ; $5db9: $f0 $10
	ld b, [hl]                                       ; $5dbb: $46
	ld d, a                                          ; $5dbc: $57
	ld d, e                                          ; $5dbd: $53
	ld c, c                                          ; $5dbe: $49
	add hl, sp                                       ; $5dbf: $39
	xor b                                            ; $5dc0: $a8
	ld h, h                                          ; $5dc1: $64
	ld [hl], d                                       ; $5dc2: $72
	pop af                                           ; $5dc3: $f1
	add e                                            ; $5dc4: $83
	jr c, jr_096_5e0e                                ; $5dc5: $38 $47

	ld a, b                                          ; $5dc7: $78
	ccf                                              ; $5dc8: $3f
	ld d, l                                          ; $5dc9: $55
	ld c, l                                          ; $5dca: $4d
	ccf                                              ; $5dcb: $3f
	and b                                            ; $5dcc: $a0
	add hl, sp                                       ; $5dcd: $39
	xor $1f                                          ; $5dce: $ee $1f
	inc [hl]                                         ; $5dd0: $34
	jr c, jr_096_5e0b                                ; $5dd1: $38 $38

	ld b, d                                          ; $5dd3: $42
	xor b                                            ; $5dd4: $a8
	ldh a, [rSVBK]                                   ; $5dd5: $f0 $70
	ld c, a                                          ; $5dd7: $4f
	ldh a, [c]                                       ; $5dd8: $f2
	ld d, c                                          ; $5dd9: $51
	ld b, h                                          ; $5dda: $44
	ld a, $ad                                        ; $5ddb: $3e $ad
	ld b, b                                          ; $5ddd: $40
	ld c, l                                          ; $5dde: $4d
	ld e, e                                          ; $5ddf: $5b
	ld d, [hl]                                       ; $5de0: $56
	ld d, d                                          ; $5de1: $52
	dec a                                            ; $5de2: $3d
	adc c                                            ; $5de3: $89
	sbc a                                            ; $5de4: $9f
	ld c, d                                          ; $5de5: $4a
	ld c, b                                          ; $5de6: $48
	and b                                            ; $5de7: $a0
	ld a, a                                          ; $5de8: $7f
	ldh a, [rTAC]                                    ; $5de9: $f0 $07
	ld c, e                                          ; $5deb: $4b
	inc [hl]                                         ; $5dec: $34
	ld e, d                                          ; $5ded: $5a
	add hl, sp                                       ; $5dee: $39
	ld c, d                                          ; $5def: $4a
	ld d, c                                          ; $5df0: $51
	inc a                                            ; $5df1: $3c
	and c                                            ; $5df2: $a1

jr_096_5df3:
	cpl                                              ; $5df3: $2f
	ld b, e                                          ; $5df4: $43
	db $ec                                           ; $5df5: $ec
	rst SubAFromDE                                          ; $5df6: $df
	ld b, h                                          ; $5df7: $44
	dec sp                                           ; $5df8: $3b
	dec a                                            ; $5df9: $3d
	ld b, d                                          ; $5dfa: $42
	inc a                                            ; $5dfb: $3c
	xor b                                            ; $5dfc: $a8
	ld c, a                                          ; $5dfd: $4f
	add hl, sp                                       ; $5dfe: $39
	inc [hl]                                         ; $5dff: $34
	inc a                                            ; $5e00: $3c
	ld a, [hl-]                                      ; $5e01: $3a
	ld d, a                                          ; $5e02: $57
	ld a, [hl]                                       ; $5e03: $7e
	ld d, l                                          ; $5e04: $55
	ld a, [hl-]                                      ; $5e05: $3a
	dec sp                                           ; $5e06: $3b
	dec a                                            ; $5e07: $3d
	ld b, l                                          ; $5e08: $45
	xor b                                            ; $5e09: $a8
	ld d, d                                          ; $5e0a: $52

jr_096_5e0b:
	ld b, h                                          ; $5e0b: $44
	ldh a, [rHDMA4]                                  ; $5e0c: $f0 $54

jr_096_5e0e:
	ld a, $f1                                        ; $5e0e: $3e $f1
	push hl                                          ; $5e10: $e5
	dec sp                                           ; $5e11: $3b
	pop af                                           ; $5e12: $f1
	rla                                              ; $5e13: $17
	jr c, jr_096_5e73                                ; $5e14: $38 $5d

	ld e, d                                          ; $5e16: $5a
	ld c, b                                          ; $5e17: $48
	and b                                            ; $5e18: $a0
	ld c, d                                          ; $5e19: $4a
	ld c, a                                          ; $5e1a: $4f
	inc [hl]                                         ; $5e1b: $34
	pop af                                           ; $5e1c: $f1
	rra                                              ; $5e1d: $1f
	ld a, a                                          ; $5e1e: $7f
	db $d3                                           ; $5e1f: $d3
	ld c, d                                          ; $5e20: $4a
	xor h                                            ; $5e21: $ac
	pop af                                           ; $5e22: $f1
	cp c                                             ; $5e23: $b9
	ldh a, [rVBK]                                    ; $5e24: $f0 $4f
	ld a, $52                                        ; $5e26: $3e $52
	ld a, $3d                                        ; $5e28: $3e $3d
	and b                                            ; $5e2a: $a0
	db $ed                                           ; $5e2b: $ed
	ld e, c                                          ; $5e2c: $59
	inc [hl]                                         ; $5e2d: $34
	xor $07                                          ; $5e2e: $ee $07
	ld b, d                                          ; $5e30: $42
	add b                                            ; $5e31: $80
	jr c, jr_096_5e7e                                ; $5e32: $38 $4a

	ld b, a                                          ; $5e34: $47
	inc de                                           ; $5e35: $13
	ret                                              ; $5e36: $c9


	ldh a, [c]                                       ; $5e37: $f2
	add $3b                                          ; $5e38: $c6 $3b
	dec a                                            ; $5e3a: $3d
	ld b, h                                          ; $5e3b: $44
	ld e, l                                          ; $5e3c: $5d
	ld c, d                                          ; $5e3d: $4a
	ld d, c                                          ; $5e3e: $51
	inc a                                            ; $5e3f: $3c
	ld d, b                                          ; $5e40: $50
	xor l                                            ; $5e41: $ad
	jp z, Jump_096_5234                              ; $5e42: $ca $34 $52

	dec a                                            ; $5e45: $3d
	adc c                                            ; $5e46: $89
	sbc a                                            ; $5e47: $9f
	ld c, d                                          ; $5e48: $4a
	ld c, b                                          ; $5e49: $48
	and b                                            ; $5e4a: $a0
	cpl                                              ; $5e4b: $2f
	ld b, e                                          ; $5e4c: $43
	db $ec                                           ; $5e4d: $ec
	ldh [rLY], a                                     ; $5e4e: $e0 $44
	dec sp                                           ; $5e50: $3b
	dec a                                            ; $5e51: $3d
	ld b, d                                          ; $5e52: $42
	inc a                                            ; $5e53: $3c
	xor b                                            ; $5e54: $a8
	ld c, a                                          ; $5e55: $4f
	add hl, sp                                       ; $5e56: $39
	inc [hl]                                         ; $5e57: $34
	inc a                                            ; $5e58: $3c
	ld a, [hl-]                                      ; $5e59: $3a
	ld d, a                                          ; $5e5a: $57
	ld a, [hl]                                       ; $5e5b: $7e
	ld d, l                                          ; $5e5c: $55
	ld a, [hl-]                                      ; $5e5d: $3a
	dec sp                                           ; $5e5e: $3b
	dec a                                            ; $5e5f: $3d
	ld b, l                                          ; $5e60: $45
	xor b                                            ; $5e61: $a8
	ld d, d                                          ; $5e62: $52
	ld b, h                                          ; $5e63: $44
	ldh a, [rHDMA4]                                  ; $5e64: $f0 $54
	ld a, $f1                                        ; $5e66: $3e $f1
	push hl                                          ; $5e68: $e5
	dec sp                                           ; $5e69: $3b
	pop af                                           ; $5e6a: $f1
	rla                                              ; $5e6b: $17
	jr c, jr_096_5ecb                                ; $5e6c: $38 $5d

	ld e, d                                          ; $5e6e: $5a
	ld c, b                                          ; $5e6f: $48
	and b                                            ; $5e70: $a0
	ld l, e                                          ; $5e71: $6b
	inc [hl]                                         ; $5e72: $34

jr_096_5e73:
	ld c, a                                          ; $5e73: $4f
	add hl, sp                                       ; $5e74: $39
	ld a, [hl]                                       ; $5e75: $7e
	ld d, l                                          ; $5e76: $55
	ld a, [hl-]                                      ; $5e77: $3a
	dec sp                                           ; $5e78: $3b
	dec a                                            ; $5e79: $3d
	ld b, d                                          ; $5e7a: $42
	xor b                                            ; $5e7b: $a8
	db $ec                                           ; $5e7c: $ec
	add hl, bc                                       ; $5e7d: $09

jr_096_5e7e:
	xor h                                            ; $5e7e: $ac
	ldh a, [c]                                       ; $5e7f: $f2
	xor a                                            ; $5e80: $af
	ld h, d                                          ; $5e81: $62
	ldh a, [$75]                                     ; $5e82: $f0 $75
	ldh a, [rTMA]                                    ; $5e84: $f0 $06
	ld a, $3f                                        ; $5e86: $3e $3f
	ld e, h                                          ; $5e88: $5c
	dec a                                            ; $5e89: $3d
	ld b, d                                          ; $5e8a: $42
	ld b, a                                          ; $5e8b: $47
	and b                                            ; $5e8c: $a0
	cpl                                              ; $5e8d: $2f
	ld b, e                                          ; $5e8e: $43
	ld h, e                                          ; $5e8f: $63
	inc [hl]                                         ; $5e90: $34
	ld h, e                                          ; $5e91: $63
	ldh a, [rAUD1SWEEP]                              ; $5e92: $f0 $10
	ld h, e                                          ; $5e94: $63
	ldh a, [rAUD1SWEEP]                              ; $5e95: $f0 $10
	ld b, [hl]                                       ; $5e97: $46
	ld d, a                                          ; $5e98: $57
	ld d, e                                          ; $5e99: $53
	ld c, c                                          ; $5e9a: $49
	add hl, sp                                       ; $5e9b: $39
	xor b                                            ; $5e9c: $a8
	ld h, h                                          ; $5e9d: $64
	ld [hl], d                                       ; $5e9e: $72
	pop af                                           ; $5e9f: $f1
	add e                                            ; $5ea0: $83
	jr c, jr_096_5eea                                ; $5ea1: $38 $47

	ld a, b                                          ; $5ea3: $78
	ccf                                              ; $5ea4: $3f
	ld d, l                                          ; $5ea5: $55
	ld c, l                                          ; $5ea6: $4d
	ccf                                              ; $5ea7: $3f
	xor b                                            ; $5ea8: $a8
	ld c, d                                          ; $5ea9: $4a
	ld c, a                                          ; $5eaa: $4f
	inc [hl]                                         ; $5eab: $34
	ldh a, [c]                                       ; $5eac: $f2
	xor a                                            ; $5ead: $af
	xor $2d                                          ; $5eae: $ee $2d
	jr c, jr_096_5eee                                ; $5eb0: $38 $3c

	ld d, b                                          ; $5eb2: $50
	ld c, b                                          ; $5eb3: $48
	and b                                            ; $5eb4: $a0
	ld d, h                                          ; $5eb5: $54
	ld b, d                                          ; $5eb6: $42
	ldh a, [$d6]                                     ; $5eb7: $f0 $d6
	ld c, e                                          ; $5eb9: $4b
	xor h                                            ; $5eba: $ac
	ld c, a                                          ; $5ebb: $4f
	dec sp                                           ; $5ebc: $3b
	ld c, c                                          ; $5ebd: $49
	ldh a, [$5c]                                     ; $5ebe: $f0 $5c
	jr c, jr_096_5efb                                ; $5ec0: $38 $39

	ld h, c                                          ; $5ec2: $61
	ld b, a                                          ; $5ec3: $47
	ld a, b                                          ; $5ec4: $78
	ld c, [hl]                                       ; $5ec5: $4e
	ld h, e                                          ; $5ec6: $63
	xor b                                            ; $5ec7: $a8
	ld b, b                                          ; $5ec8: $40
	ld c, l                                          ; $5ec9: $4d
	ld e, e                                          ; $5eca: $5b

jr_096_5ecb:
	ld d, [hl]                                       ; $5ecb: $56
	inc [hl]                                         ; $5ecc: $34
	ld e, b                                          ; $5ecd: $58
	ld b, l                                          ; $5ece: $45
	ld a, [hl-]                                      ; $5ecf: $3a
	ld d, b                                          ; $5ed0: $50
	and b                                            ; $5ed1: $a0
	ld a, a                                          ; $5ed2: $7f
	ldh a, [rTAC]                                    ; $5ed3: $f0 $07
	ld c, e                                          ; $5ed5: $4b
	inc [hl]                                         ; $5ed6: $34
	ld e, d                                          ; $5ed7: $5a
	add hl, sp                                       ; $5ed8: $39
	and c                                            ; $5ed9: $a1
	cpl                                              ; $5eda: $2f
	ld b, e                                          ; $5edb: $43
	db $ec                                           ; $5edc: $ec
	pop hl                                           ; $5edd: $e1
	ld b, h                                          ; $5ede: $44
	dec sp                                           ; $5edf: $3b
	dec a                                            ; $5ee0: $3d
	ld b, d                                          ; $5ee1: $42
	inc a                                            ; $5ee2: $3c
	xor b                                            ; $5ee3: $a8
	ld c, a                                          ; $5ee4: $4f
	add hl, sp                                       ; $5ee5: $39
	inc [hl]                                         ; $5ee6: $34
	inc a                                            ; $5ee7: $3c
	ld a, [hl-]                                      ; $5ee8: $3a
	ld d, a                                          ; $5ee9: $57

jr_096_5eea:
	ld a, [hl]                                       ; $5eea: $7e
	ld d, l                                          ; $5eeb: $55
	ld a, [hl-]                                      ; $5eec: $3a
	dec sp                                           ; $5eed: $3b

jr_096_5eee:
	dec a                                            ; $5eee: $3d
	ld b, l                                          ; $5eef: $45
	xor b                                            ; $5ef0: $a8
	ld d, d                                          ; $5ef1: $52
	ld b, h                                          ; $5ef2: $44
	ldh a, [rHDMA4]                                  ; $5ef3: $f0 $54
	ld a, $f1                                        ; $5ef5: $3e $f1
	push hl                                          ; $5ef7: $e5
	dec sp                                           ; $5ef8: $3b
	pop af                                           ; $5ef9: $f1
	rla                                              ; $5efa: $17

jr_096_5efb:
	jr c, jr_096_5f5a                                ; $5efb: $38 $5d

	ld e, d                                          ; $5efd: $5a
	ld c, b                                          ; $5efe: $48
	and b                                            ; $5eff: $a0
	ld c, a                                          ; $5f00: $4f
	add hl, sp                                       ; $5f01: $39
	inc a                                            ; $5f02: $3c
	ld a, [hl-]                                      ; $5f03: $3a
	ld d, a                                          ; $5f04: $57
	pop af                                           ; $5f05: $f1
	rra                                              ; $5f06: $1f
	ld a, a                                          ; $5f07: $7f
	call c, Call_096_4fa8                            ; $5f08: $dc $a8 $4f
	dec sp                                           ; $5f0b: $3b
	ld c, c                                          ; $5f0c: $49
	ldh a, [$d8]                                     ; $5f0d: $f0 $d8
	ld e, d                                          ; $5f0f: $5a
	jr c, jr_096_5f5b                                ; $5f10: $38 $49

	inc [hl]                                         ; $5f12: $34
	ld [hl], a                                       ; $5f13: $77
	dec sp                                           ; $5f14: $3b
	ccf                                              ; $5f15: $3f
	dec a                                            ; $5f16: $3d
	ld b, d                                          ; $5f17: $42
	ld b, a                                          ; $5f18: $47
	and b                                            ; $5f19: $a0
	ldh a, [$34]                                     ; $5f1a: $f0 $34
	ld b, a                                          ; $5f1c: $47
	inc [hl]                                         ; $5f1d: $34
	jr c, jr_096_5f58                                ; $5f1e: $38 $38

	ld b, d                                          ; $5f20: $42
	ld b, l                                          ; $5f21: $45
	xor b                                            ; $5f22: $a8
	ret                                              ; $5f23: $c9


	inc [hl]                                         ; $5f24: $34
	inc a                                            ; $5f25: $3c
	ld d, b                                          ; $5f26: $50
	inc a                                            ; $5f27: $3c
	jr c, jr_096_5f71                                ; $5f28: $38 $47

	inc de                                           ; $5f2a: $13
	ld a, b                                          ; $5f2b: $78
	dec a                                            ; $5f2c: $3d
	ld b, h                                          ; $5f2d: $44
	ld e, l                                          ; $5f2e: $5d
	ld b, h                                          ; $5f2f: $44
	inc a                                            ; $5f30: $3c
	ld d, b                                          ; $5f31: $50
	and b                                            ; $5f32: $a0
	cpl                                              ; $5f33: $2f
	ld b, e                                          ; $5f34: $43
	ld b, b                                          ; $5f35: $40
	ld b, c                                          ; $5f36: $41
	ld a, [hl-]                                      ; $5f37: $3a
	sbc d                                            ; $5f38: $9a
	ld c, d                                          ; $5f39: $4a
	xor h                                            ; $5f3a: $ac
	ld a, b                                          ; $5f3b: $78
	ld a, [hl-]                                      ; $5f3c: $3a
	ld d, l                                          ; $5f3d: $55
	ccf                                              ; $5f3e: $3f
	ld c, a                                          ; $5f3f: $4f
	jr c, @+$3a                                      ; $5f40: $38 $38

	ld b, l                                          ; $5f42: $45
	and b                                            ; $5f43: $a0
	ld c, d                                          ; $5f44: $4a
	ld c, a                                          ; $5f45: $4f
	inc [hl]                                         ; $5f46: $34
	sbc $ec                                          ; $5f47: $de $ec
	cp c                                             ; $5f49: $b9
	xor b                                            ; $5f4a: $a8
	ld [$8944], a                                    ; $5f4b: $ea $44 $89
	sbc a                                            ; $5f4e: $9f
	ld c, d                                          ; $5f4f: $4a
	xor b                                            ; $5f50: $a8
	jp hl                                            ; $5f51: $e9


	jr nz, @-$5e                                     ; $5f52: $20 $a0

	ld a, a                                          ; $5f54: $7f
	ldh a, [rTAC]                                    ; $5f55: $f0 $07
	ld c, e                                          ; $5f57: $4b

jr_096_5f58:
	ld e, d                                          ; $5f58: $5a
	add hl, sp                                       ; $5f59: $39

jr_096_5f5a:
	inc a                                            ; $5f5a: $3c

jr_096_5f5b:
	ld a, $50                                        ; $5f5b: $3e $50
	and c                                            ; $5f5d: $a1
	cpl                                              ; $5f5e: $2f
	ld b, e                                          ; $5f5f: $43
	db $ed                                           ; $5f60: $ed
	ld d, e                                          ; $5f61: $53
	ld b, h                                          ; $5f62: $44
	dec sp                                           ; $5f63: $3b
	dec a                                            ; $5f64: $3d
	ld b, d                                          ; $5f65: $42
	inc a                                            ; $5f66: $3c
	xor b                                            ; $5f67: $a8
	ld c, a                                          ; $5f68: $4f
	add hl, sp                                       ; $5f69: $39
	inc [hl]                                         ; $5f6a: $34
	inc a                                            ; $5f6b: $3c
	ld a, [hl-]                                      ; $5f6c: $3a
	ld d, a                                          ; $5f6d: $57
	ld a, [hl]                                       ; $5f6e: $7e
	ld d, l                                          ; $5f6f: $55
	ld a, [hl-]                                      ; $5f70: $3a

jr_096_5f71:
	dec sp                                           ; $5f71: $3b
	dec a                                            ; $5f72: $3d
	ld b, l                                          ; $5f73: $45
	xor b                                            ; $5f74: $a8
	ld d, d                                          ; $5f75: $52
	ld b, h                                          ; $5f76: $44
	ldh a, [rHDMA4]                                  ; $5f77: $f0 $54
	ld a, $f1                                        ; $5f79: $3e $f1
	push hl                                          ; $5f7b: $e5
	dec sp                                           ; $5f7c: $3b
	pop af                                           ; $5f7d: $f1
	rla                                              ; $5f7e: $17
	jr c, jr_096_5fde                                ; $5f7f: $38 $5d

	ld e, d                                          ; $5f81: $5a
	ld c, b                                          ; $5f82: $48
	and b                                            ; $5f83: $a0
	ld c, c                                          ; $5f84: $49
	ld d, a                                          ; $5f85: $57
	ld b, [hl]                                       ; $5f86: $46
	ld e, [hl]                                       ; $5f87: $5e
	sbc h                                            ; $5f88: $9c
	xor h                                            ; $5f89: $ac
	pop af                                           ; $5f8a: $f1
	rra                                              ; $5f8b: $1f
	ld a, a                                          ; $5f8c: $7f
	call c, $e8a8                                    ; $5f8d: $dc $a8 $e8
	db $ed                                           ; $5f90: $ed
	inc [hl]                                         ; $5f91: $34
	db $ed                                           ; $5f92: $ed
	ld h, h                                          ; $5f93: $64
	inc de                                           ; $5f94: $13
	ld b, h                                          ; $5f95: $44
	dec sp                                           ; $5f96: $3b
	dec a                                            ; $5f97: $3d
	ld h, e                                          ; $5f98: $63
	ld e, l                                          ; $5f99: $5d
	db $ec                                           ; $5f9a: $ec
	ret c                                            ; $5f9b: $d8

	ld b, c                                          ; $5f9c: $41
	ld b, h                                          ; $5f9d: $44
	inc a                                            ; $5f9e: $3c
	ld d, b                                          ; $5f9f: $50
	ld c, h                                          ; $5fa0: $4c
	and b                                            ; $5fa1: $a0
	cpl                                              ; $5fa2: $2f
	ld b, e                                          ; $5fa3: $43
	xor $2d                                          ; $5fa4: $ee $2d
	xor $2d                                          ; $5fa6: $ee $2d
	xor b                                            ; $5fa8: $a8
	ld h, e                                          ; $5fa9: $63
	ldh a, [rAUD1SWEEP]                              ; $5faa: $f0 $10
	ld h, e                                          ; $5fac: $63
	ldh a, [rAUD1SWEEP]                              ; $5fad: $f0 $10
	ld b, [hl]                                       ; $5faf: $46
	ld d, a                                          ; $5fb0: $57
	ld d, e                                          ; $5fb1: $53
	ld c, c                                          ; $5fb2: $49
	add hl, sp                                       ; $5fb3: $39
	xor b                                            ; $5fb4: $a8
	ld h, h                                          ; $5fb5: $64
	ld [hl], d                                       ; $5fb6: $72
	pop af                                           ; $5fb7: $f1
	add e                                            ; $5fb8: $83
	jr c, jr_096_6002                                ; $5fb9: $38 $47

	ld a, b                                          ; $5fbb: $78
	ccf                                              ; $5fbc: $3f
	ld d, l                                          ; $5fbd: $55
	ld c, l                                          ; $5fbe: $4d
	ccf                                              ; $5fbf: $3f
	and b                                            ; $5fc0: $a0
	ld l, a                                          ; $5fc1: $6f
	ld b, d                                          ; $5fc2: $42
	adc d                                            ; $5fc3: $8a
	db $f4                                           ; $5fc4: $f4
	ld l, b                                          ; $5fc5: $68
	ld h, d                                          ; $5fc6: $62
	ld [hl], d                                       ; $5fc7: $72
	dec a                                            ; $5fc8: $3d
	inc a                                            ; $5fc9: $3c
	ld d, b                                          ; $5fca: $50
	xor h                                            ; $5fcb: $ac
	ld d, c                                          ; $5fcc: $51
	sbc l                                            ; $5fcd: $9d
	ld b, a                                          ; $5fce: $47
	ld a, [hl]                                       ; $5fcf: $7e
	ld d, l                                          ; $5fd0: $55
	ld a, [hl-]                                      ; $5fd1: $3a
	ld c, [hl]                                       ; $5fd2: $4e
	ld h, e                                          ; $5fd3: $63
	xor b                                            ; $5fd4: $a8
	ld d, d                                          ; $5fd5: $52
	dec a                                            ; $5fd6: $3d
	inc [hl]                                         ; $5fd7: $34
	ld h, h                                          ; $5fd8: $64
	ldh a, [rHDMA3]                                  ; $5fd9: $f0 $53
	jr c, jr_096_601b                                ; $5fdb: $38 $3e

	ld d, d                                          ; $5fdd: $52

jr_096_5fde:
	ld a, $66                                        ; $5fde: $3e $66
	add hl, sp                                       ; $5fe0: $39
	and b                                            ; $5fe1: $a0
	ld a, a                                          ; $5fe2: $7f
	ldh a, [rTAC]                                    ; $5fe3: $f0 $07
	ld c, e                                          ; $5fe5: $4b
	ld e, d                                          ; $5fe6: $5a
	add hl, sp                                       ; $5fe7: $39
	and c                                            ; $5fe8: $a1
	cpl                                              ; $5fe9: $2f
	ld b, e                                          ; $5fea: $43
	db $eb                                           ; $5feb: $eb
	ld a, [$3b44]                                    ; $5fec: $fa $44 $3b
	dec a                                            ; $5fef: $3d
	ld b, d                                          ; $5ff0: $42
	inc a                                            ; $5ff1: $3c
	xor b                                            ; $5ff2: $a8

jr_096_5ff3:
	ld c, a                                          ; $5ff3: $4f
	add hl, sp                                       ; $5ff4: $39
	inc [hl]                                         ; $5ff5: $34
	inc a                                            ; $5ff6: $3c
	ld a, [hl-]                                      ; $5ff7: $3a
	ld d, a                                          ; $5ff8: $57
	ld a, [hl]                                       ; $5ff9: $7e
	ld d, l                                          ; $5ffa: $55
	ld a, [hl-]                                      ; $5ffb: $3a
	dec sp                                           ; $5ffc: $3b
	dec a                                            ; $5ffd: $3d
	ld b, l                                          ; $5ffe: $45
	xor b                                            ; $5fff: $a8
	ld d, d                                          ; $6000: $52
	ld b, h                                          ; $6001: $44

jr_096_6002:
	ldh a, [rHDMA4]                                  ; $6002: $f0 $54
	ld a, $f1                                        ; $6004: $3e $f1
	push hl                                          ; $6006: $e5
	dec sp                                           ; $6007: $3b
	pop af                                           ; $6008: $f1
	rla                                              ; $6009: $17
	jr c, jr_096_6069                                ; $600a: $38 $5d

	ld e, d                                          ; $600c: $5a
	ld c, b                                          ; $600d: $48
	and b                                            ; $600e: $a0
	ld c, d                                          ; $600f: $4a
	ld c, a                                          ; $6010: $4f
	inc [hl]                                         ; $6011: $34
	pop af                                           ; $6012: $f1
	rra                                              ; $6013: $1f
	ld a, a                                          ; $6014: $7f
	call c, $eba8                                    ; $6015: $dc $a8 $eb
	adc c                                            ; $6018: $89
	inc [hl]                                         ; $6019: $34
	pop af                                           ; $601a: $f1

jr_096_601b:
	cp c                                             ; $601b: $b9
	ldh a, [rVBK]                                    ; $601c: $f0 $4f
	and b                                            ; $601e: $a0
	ldh a, [$0a]                                     ; $601f: $f0 $0a
	ld d, l                                          ; $6021: $55
	pop af                                           ; $6022: $f1
	rra                                              ; $6023: $1f
	ld a, a                                          ; $6024: $7f
	ld b, a                                          ; $6025: $47
	ld a, [hl-]                                      ; $6026: $3a
	dec sp                                           ; $6027: $3b
	ccf                                              ; $6028: $3f
	xor h                                            ; $6029: $ac
	ld d, d                                          ; $602a: $52
	dec a                                            ; $602b: $3d
	ld e, d                                          ; $602c: $5a
	dec sp                                           ; $602d: $3b
	inc a                                            ; $602e: $3c
	xor h                                            ; $602f: $ac
	ldh a, [$b2]                                     ; $6030: $f0 $b2
	ldh a, [rKEY1]                                   ; $6032: $f0 $4d
	ld b, a                                          ; $6034: $47
	ld h, a                                          ; $6035: $67
	ld d, h                                          ; $6036: $54
	add hl, sp                                       ; $6037: $39
	ld c, h                                          ; $6038: $4c
	and b                                            ; $6039: $a0
	ld b, [hl]                                       ; $603a: $46
	ld e, c                                          ; $603b: $59
	ld b, c                                          ; $603c: $41
	xor b                                            ; $603d: $a8
	ldh a, [rTIMA]                                   ; $603e: $f0 $05
	ld e, h                                          ; $6040: $5c
	ccf                                              ; $6041: $3f
	ccf                                              ; $6042: $3f
	db $ec                                           ; $6043: $ec
	cp c                                             ; $6044: $b9
	and b                                            ; $6045: $a0
	cpl                                              ; $6046: $2f
	ld b, e                                          ; $6047: $43
	db $eb                                           ; $6048: $eb

jr_096_6049:
	db $fc                                           ; $6049: $fc
	ld b, h                                          ; $604a: $44
	dec sp                                           ; $604b: $3b
	dec a                                            ; $604c: $3d
	ld b, d                                          ; $604d: $42
	inc a                                            ; $604e: $3c
	xor b                                            ; $604f: $a8
	ld b, b                                          ; $6050: $40
	ld b, c                                          ; $6051: $41
	ld a, [hl-]                                      ; $6052: $3a
	xor h                                            ; $6053: $ac
	ldh a, [c]                                       ; $6054: $f2
	ld a, d                                          ; $6055: $7a
	pop af                                           ; $6056: $f1
	ld a, b                                          ; $6057: $78
	ld h, e                                          ; $6058: $63
	ld e, l                                          ; $6059: $5d
	ld a, [hl-]                                      ; $605a: $3a
	jr c, jr_096_6049                                ; $605b: $38 $ec

	ret c                                            ; $605d: $d8

	inc a                                            ; $605e: $3c
	and b                                            ; $605f: $a0
	db $ed                                           ; $6060: $ed
	ld b, e                                          ; $6061: $43
	ld c, b                                          ; $6062: $48
	inc [hl]                                         ; $6063: $34
	db $ed                                           ; $6064: $ed
	ld b, e                                          ; $6065: $43
	xor h                                            ; $6066: $ac
	db $eb                                           ; $6067: $eb
	pop af                                           ; $6068: $f1

jr_096_6069:
	ld b, a                                          ; $6069: $47
	ldh a, [$0c]                                     ; $606a: $f0 $0c
	jr c, jr_096_60ab                                ; $606c: $38 $3d

	ld d, b                                          ; $606e: $50
	xor h                                            ; $606f: $ac
	ld b, [hl]                                       ; $6070: $46
	jr c, jr_096_5ff3                                ; $6071: $38 $80

	ld c, e                                          ; $6073: $4b
	ldh a, [c]                                       ; $6074: $f2
	ld a, d                                          ; $6075: $7a
	ld b, c                                          ; $6076: $41
	db $ed                                           ; $6077: $ed
	ld b, e                                          ; $6078: $43
	and b                                            ; $6079: $a0
	cpl                                              ; $607a: $2f
	ld b, e                                          ; $607b: $43
	xor $10                                          ; $607c: $ee $10
	xor $10                                          ; $607e: $ee $10
	xor b                                            ; $6080: $a8
	ld [hl-], a                                      ; $6081: $32
	adc e                                            ; $6082: $8b
	ldh a, [$72]                                     ; $6083: $f0 $72
	ld b, d                                          ; $6085: $42
	ldh a, [$f8]                                     ; $6086: $f0 $f8
	inc [hl]                                         ; $6088: $34
	db $f4                                           ; $6089: $f4
	and l                                            ; $608a: $a5
	ld d, c                                          ; $608b: $51
	and e                                            ; $608c: $a3
	ld c, d                                          ; $608d: $4a
	ld c, a                                          ; $608e: $4f
	xor h                                            ; $608f: $ac
	sbc $ec                                          ; $6090: $de $ec
	cp c                                             ; $6092: $b9
	ld c, d                                          ; $6093: $4a
	ld d, c                                          ; $6094: $51
	xor b                                            ; $6095: $a8
	pop af                                           ; $6096: $f1
	rra                                              ; $6097: $1f
	ld a, a                                          ; $6098: $7f
	ld b, b                                          ; $6099: $40
	add hl, sp                                       ; $609a: $39
	ld c, d                                          ; $609b: $4a
	and b                                            ; $609c: $a0
	cpl                                              ; $609d: $2f
	ld b, e                                          ; $609e: $43
	ld d, d                                          ; $609f: $52
	ld b, h                                          ; $60a0: $44
	pop af                                           ; $60a1: $f1
	push hl                                          ; $60a2: $e5
	dec sp                                           ; $60a3: $3b
	pop af                                           ; $60a4: $f1
	rla                                              ; $60a5: $17
	jr c, jr_096_6105                                ; $60a6: $38 $5d

	ld e, d                                          ; $60a8: $5a
	xor h                                            ; $60a9: $ac
	ld c, a                                          ; $60aa: $4f

jr_096_60ab:
	add hl, sp                                       ; $60ab: $39
	add a                                            ; $60ac: $87
	ldh a, [$5b]                                     ; $60ad: $f0 $5b
	ldh a, [$5e]                                     ; $60af: $f0 $5e
	ld b, h                                          ; $60b1: $44
	ld b, l                                          ; $60b2: $45
	xor b                                            ; $60b3: $a8
	db $ed                                           ; $60b4: $ed
	ld h, h                                          ; $60b5: $64
	inc a                                            ; $60b6: $3c
	ld e, l                                          ; $60b7: $5d
	ld h, c                                          ; $60b8: $61
	ld d, [hl]                                       ; $60b9: $56
	dec sp                                           ; $60ba: $3b
	dec a                                            ; $60bb: $3d
	ld c, h                                          ; $60bc: $4c
	and b                                            ; $60bd: $a0
	ld c, a                                          ; $60be: $4f
	dec sp                                           ; $60bf: $3b
	ld c, c                                          ; $60c0: $49
	inc [hl]                                         ; $60c1: $34
	ldh a, [$d8]                                     ; $60c2: $f0 $d8
	ld e, d                                          ; $60c4: $5a
	ld d, l                                          ; $60c5: $55
	ld a, [hl-]                                      ; $60c6: $3a
	dec sp                                           ; $60c7: $3b
	dec a                                            ; $60c8: $3d
	ld d, b                                          ; $60c9: $50
	xor h                                            ; $60ca: $ac
	xor $27                                          ; $60cb: $ee $27
	ld d, e                                          ; $60cd: $53
	sbc h                                            ; $60ce: $9c
	dec sp                                           ; $60cf: $3b
	ld c, c                                          ; $60d0: $49
	inc de                                           ; $60d1: $13
	db $f4                                           ; $60d2: $f4
	ld c, $f1                                        ; $60d3: $0e $f1
	ld [$3f3e], a                                    ; $60d5: $ea $3e $3f
	rst SubAFromDE                                          ; $60d8: $df
	and b                                            ; $60d9: $a0
	cpl                                              ; $60da: $2f
	ld b, e                                          ; $60db: $43
	ld b, [hl]                                       ; $60dc: $46
	inc [hl]                                         ; $60dd: $34
	ld b, [hl]                                       ; $60de: $46
	ld d, a                                          ; $60df: $57
	ld d, e                                          ; $60e0: $53
	ld c, c                                          ; $60e1: $49
	add hl, sp                                       ; $60e2: $39
	xor b                                            ; $60e3: $a8
	ld b, b                                          ; $60e4: $40
	ld b, d                                          ; $60e5: $42
	db $ed                                           ; $60e6: $ed
	ld l, a                                          ; $60e7: $6f
	ld h, c                                          ; $60e8: $61
	ld b, h                                          ; $60e9: $44
	ld e, l                                          ; $60ea: $5d
	ld c, d                                          ; $60eb: $4a
	xor h                                            ; $60ec: $ac
	ldh a, [$29]                                     ; $60ed: $f0 $29
	ld a, $38                                        ; $60ef: $3e $38
	ld b, l                                          ; $60f1: $45
	and b                                            ; $60f2: $a0
	ld b, b                                          ; $60f3: $40
	ld c, l                                          ; $60f4: $4d
	ld e, e                                          ; $60f5: $5b
	ld d, [hl]                                       ; $60f6: $56
	inc [hl]                                         ; $60f7: $34
	ldh a, [$0a]                                     ; $60f8: $f0 $0a
	ld d, l                                          ; $60fa: $55
	ldh a, [c]                                       ; $60fb: $f2
	cp d                                             ; $60fc: $ba
	ld a, $3f                                        ; $60fd: $3e $3f
	xor h                                            ; $60ff: $ac
	adc c                                            ; $6100: $89
	sbc a                                            ; $6101: $9f
	ld b, a                                          ; $6102: $47
	ld a, b                                          ; $6103: $78
	ccf                                              ; $6104: $3f

jr_096_6105:
	db $ec                                           ; $6105: $ec
	rst FarCall                                          ; $6106: $f7
	ld c, h                                          ; $6107: $4c
	and b                                            ; $6108: $a0
	cpl                                              ; $6109: $2f
	ld b, e                                          ; $610a: $43
	db $ec                                           ; $610b: $ec
	and $44                                          ; $610c: $e6 $44
	dec sp                                           ; $610e: $3b
	dec a                                            ; $610f: $3d
	ld b, d                                          ; $6110: $42
	inc a                                            ; $6111: $3c
	xor b                                            ; $6112: $a8
	ld c, a                                          ; $6113: $4f

jr_096_6114:
	add hl, sp                                       ; $6114: $39
	inc [hl]                                         ; $6115: $34
	inc a                                            ; $6116: $3c
	ld a, [hl-]                                      ; $6117: $3a
	ld d, a                                          ; $6118: $57
	ld a, [hl]                                       ; $6119: $7e
	ld d, l                                          ; $611a: $55
	ld a, [hl-]                                      ; $611b: $3a
	dec sp                                           ; $611c: $3b
	dec a                                            ; $611d: $3d
	ld b, l                                          ; $611e: $45
	xor b                                            ; $611f: $a8
	ld d, d                                          ; $6120: $52
	ld b, h                                          ; $6121: $44
	ldh a, [rHDMA4]                                  ; $6122: $f0 $54
	ld a, $f1                                        ; $6124: $3e $f1
	push hl                                          ; $6126: $e5
	dec sp                                           ; $6127: $3b
	pop af                                           ; $6128: $f1
	rla                                              ; $6129: $17
	jr c, jr_096_6189                                ; $612a: $38 $5d

	ld e, d                                          ; $612c: $5a
	ld c, b                                          ; $612d: $48
	and b                                            ; $612e: $a0
	ld b, l                                          ; $612f: $45
	inc a                                            ; $6130: $3c
	dec sp                                           ; $6131: $3b
	dec a                                            ; $6132: $3d
	ld c, b                                          ; $6133: $48
	pop af                                           ; $6134: $f1
	rra                                              ; $6135: $1f
	ld a, a                                          ; $6136: $7f
	ld b, b                                          ; $6137: $40
	add hl, sp                                       ; $6138: $39
	ld c, d                                          ; $6139: $4a
	xor b                                            ; $613a: $a8
	db $ed                                           ; $613b: $ed
	ld h, h                                          ; $613c: $64
	ld a, $3d                                        ; $613d: $3e $3d
	ld b, d                                          ; $613f: $42
	ld b, l                                          ; $6140: $45
	and b                                            ; $6141: $a0
	add hl, sp                                       ; $6142: $39
	xor $1f                                          ; $6143: $ee $1f
	xor b                                            ; $6145: $a8
	ldh a, [$0a]                                     ; $6146: $f0 $0a
	ld d, l                                          ; $6148: $55
	ld a, [hl]                                       ; $6149: $7e
	ld d, l                                          ; $614a: $55
	ld a, [hl-]                                      ; $614b: $3a
	dec sp                                           ; $614c: $3b
	ccf                                              ; $614d: $3f
	ld c, h                                          ; $614e: $4c
	xor b                                            ; $614f: $a8
	ld b, b                                          ; $6150: $40
	ld c, l                                          ; $6151: $4d
	ld e, e                                          ; $6152: $5b
	ld d, [hl]                                       ; $6153: $56
	and b                                            ; $6154: $a0
	ldh a, [$08]                                     ; $6155: $f0 $08
	ld d, b                                          ; $6157: $50
	ld [de], a                                       ; $6158: $12
	xor b                                            ; $6159: $a8
	pop hl                                           ; $615a: $e1
	ld d, e                                          ; $615b: $53
	ld h, h                                          ; $615c: $64
	ld [hl], d                                       ; $615d: $72
	pop af                                           ; $615e: $f1
	add e                                            ; $615f: $83
	jr c, jr_096_61a9                                ; $6160: $38 $47

	inc de                                           ; $6162: $13
	ld a, b                                          ; $6163: $78
	ccf                                              ; $6164: $3f
	ld d, l                                          ; $6165: $55
	ld c, l                                          ; $6166: $4d
	dec a                                            ; $6167: $3d
	ld h, e                                          ; $6168: $63
	ld b, l                                          ; $6169: $45
	xor b                                            ; $616a: $a8
	ldh a, [c]                                       ; $616b: $f2
	rlca                                             ; $616c: $07
	ld e, h                                          ; $616d: $5c
	ccf                                              ; $616e: $3f
	ld e, h                                          ; $616f: $5c
	ld a, [hl-]                                      ; $6170: $3a
	ld e, b                                          ; $6171: $58
	jr c, jr_096_6114                                ; $6172: $38 $a0

	cpl                                              ; $6174: $2f
	ld [hl-], a                                      ; $6175: $32
	ld e, [hl]                                       ; $6176: $5e
	dec sp                                           ; $6177: $3b
	inc [hl]                                         ; $6178: $34
	pop hl                                           ; $6179: $e1
	ld [hl], $23                                     ; $617a: $36 $23
	inc de                                           ; $617c: $13
	ldh a, [$98]                                     ; $617d: $f0 $98
	ld b, h                                          ; $617f: $44
	ld e, a                                          ; $6180: $5f
	add hl, sp                                       ; $6181: $39
	ld [hl], $33                                     ; $6182: $36 $33
	add hl, bc                                       ; $6184: $09
	cpl                                              ; $6185: $2f
	ld [hl-], a                                      ; $6186: $32
	ld h, h                                          ; $6187: $64
	ld [hl], d                                       ; $6188: $72

jr_096_6189:
	pop af                                           ; $6189: $f1
	add e                                            ; $618a: $83
	jr c, jr_096_61c7                                ; $618b: $38 $3a

	ld b, c                                          ; $618d: $41
	ccf                                              ; $618e: $3f
	xor h                                            ; $618f: $ac
	ldh a, [$29]                                     ; $6190: $f0 $29
	ld a, $38                                        ; $6192: $3e $38
	ld a, [hl-]                                      ; $6194: $3a
	xor b                                            ; $6195: $a8
	ld l, e                                          ; $6196: $6b
	inc a                                            ; $6197: $3c
	inc [hl]                                         ; $6198: $34
	pop af                                           ; $6199: $f1
	rra                                              ; $619a: $1f
	ld a, a                                          ; $619b: $7f
	ld b, a                                          ; $619c: $47
	ld a, [hl-]                                      ; $619d: $3a
	dec sp                                           ; $619e: $3b
	ccf                                              ; $619f: $3f
	ld e, h                                          ; $61a0: $5c
	dec a                                            ; $61a1: $3d
	inc de                                           ; $61a2: $13
	ld a, a                                          ; $61a3: $7f
	ld d, e                                          ; $61a4: $53
	ld d, c                                          ; $61a5: $51
	ld c, [hl]                                       ; $61a6: $4e
	sub a                                            ; $61a7: $97
	and e                                            ; $61a8: $a3

jr_096_61a9:
	cpl                                              ; $61a9: $2f
	ld h, $f1                                        ; $61aa: $26 $f1
	ld [$257f], a                                    ; $61ac: $ea $7f $25
	ld d, e                                          ; $61af: $53
	ld a, [hl-]                                      ; $61b0: $3a
	ld h, h                                          ; $61b1: $64
	dec sp                                           ; $61b2: $3b
	dec a                                            ; $61b3: $3d
	and d                                            ; $61b4: $a2
	add hl, bc                                       ; $61b5: $09
	cpl                                              ; $61b6: $2f
	ld b, e                                          ; $61b7: $43
	db $ec                                           ; $61b8: $ec
	ld h, [hl]                                       ; $61b9: $66
	xor h                                            ; $61ba: $ac
	halt                                             ; $61bb: $76
	ld c, a                                          ; $61bc: $4f
	ldh a, [$e5]                                     ; $61bd: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $61bf: $f0 $14
	ldh a, [rTIMA]                                   ; $61c1: $f0 $05
	ld b, h                                          ; $61c3: $44
	and b                                            ; $61c4: $a0
	cpl                                              ; $61c5: $2f
	ld b, e                                          ; $61c6: $43

jr_096_61c7:
	db $ed                                           ; $61c7: $ed
	ld a, c                                          ; $61c8: $79
	ld d, d                                          ; $61c9: $52
	ld c, d                                          ; $61ca: $4a
	xor h                                            ; $61cb: $ac
	ld b, [hl]                                       ; $61cc: $46
	ld c, c                                          ; $61cd: $49
	ld l, l                                          ; $61ce: $6d
	ldh a, [rAUD1HIGH]                               ; $61cf: $f0 $14
	inc a                                            ; $61d1: $3c
	xor l                                            ; $61d2: $ad
	ld d, h                                          ; $61d3: $54
	ld b, d                                          ; $61d4: $42
	ldh a, [$75]                                     ; $61d5: $f0 $75
	adc h                                            ; $61d7: $8c
	ld c, d                                          ; $61d8: $4a
	jr c, jr_096_6238                                ; $61d9: $38 $5d

	ld a, e                                          ; $61db: $7b
	xor h                                            ; $61dc: $ac
	db $ed                                           ; $61dd: $ed
	xor c                                            ; $61de: $a9
	ld b, d                                          ; $61df: $42
	ldh a, [$63]                                     ; $61e0: $f0 $63
	pop af                                           ; $61e2: $f1
	ld c, h                                          ; $61e3: $4c
	ld b, a                                          ; $61e4: $47
	ldh a, [c]                                       ; $61e5: $f2
	db $fc                                           ; $61e6: $fc
	ld d, l                                          ; $61e7: $55
	inc a                                            ; $61e8: $3c
	ld a, [hl-]                                      ; $61e9: $3a
	ld c, b                                          ; $61ea: $48
	and c                                            ; $61eb: $a1
	cpl                                              ; $61ec: $2f
	ld b, e                                          ; $61ed: $43
	db $ed                                           ; $61ee: $ed
	ld a, c                                          ; $61ef: $79
	ld d, d                                          ; $61f0: $52
	ld c, d                                          ; $61f1: $4a
	xor h                                            ; $61f2: $ac
	ld b, [hl]                                       ; $61f3: $46
	ld c, c                                          ; $61f4: $49
	ld l, l                                          ; $61f5: $6d
	ldh a, [rAUD1HIGH]                               ; $61f6: $f0 $14
	inc a                                            ; $61f8: $3c
	xor l                                            ; $61f9: $ad
	ld d, h                                          ; $61fa: $54
	ld b, d                                          ; $61fb: $42
	ldh a, [$75]                                     ; $61fc: $f0 $75
	adc h                                            ; $61fe: $8c
	ld b, h                                          ; $61ff: $44
	ld c, c                                          ; $6200: $49
	inc [hl]                                         ; $6201: $34
	db $ed                                           ; $6202: $ed
	xor c                                            ; $6203: $a9
	ld b, d                                          ; $6204: $42
	inc de                                           ; $6205: $13
	ldh a, [$63]                                     ; $6206: $f0 $63
	pop af                                           ; $6208: $f1
	ld c, h                                          ; $6209: $4c
	ld b, a                                          ; $620a: $47
	ld c, e                                          ; $620b: $4b
	ret                                              ; $620c: $c9


	ld a, [hl-]                                      ; $620d: $3a
	ld c, b                                          ; $620e: $48
	and b                                            ; $620f: $a0
	cpl                                              ; $6210: $2f
	ld b, e                                          ; $6211: $43
	db $ed                                           ; $6212: $ed
	ld a, c                                          ; $6213: $79
	ld d, d                                          ; $6214: $52
	ld c, d                                          ; $6215: $4a
	xor h                                            ; $6216: $ac
	ld b, [hl]                                       ; $6217: $46
	ld c, c                                          ; $6218: $49
	ld l, l                                          ; $6219: $6d
	ldh a, [rAUD1HIGH]                               ; $621a: $f0 $14
	inc a                                            ; $621c: $3c
	xor l                                            ; $621d: $ad
	db $ed                                           ; $621e: $ed
	xor c                                            ; $621f: $a9
	ld b, d                                          ; $6220: $42
	ldh a, [$63]                                     ; $6221: $f0 $63
	pop af                                           ; $6223: $f1
	ld c, h                                          ; $6224: $4c
	ld b, a                                          ; $6225: $47
	ldh a, [c]                                       ; $6226: $f2
	db $fc                                           ; $6227: $fc
	ld d, l                                          ; $6228: $55
	ld b, a                                          ; $6229: $47
	ld c, e                                          ; $622a: $4b
	ld c, b                                          ; $622b: $48
	and b                                            ; $622c: $a0
	cpl                                              ; $622d: $2f
	ld b, e                                          ; $622e: $43
	ldh a, [$dd]                                     ; $622f: $f0 $dd
	ldh a, [$9c]                                     ; $6231: $f0 $9c
	ld c, e                                          ; $6233: $4b
	daa                                              ; $6234: $27
	ldh a, [$d0]                                     ; $6235: $f0 $d0
	pop af                                           ; $6237: $f1

jr_096_6238:
	ld l, e                                          ; $6238: $6b
	ldh a, [$c0]                                     ; $6239: $f0 $c0
	ldh a, [$aa]                                     ; $623b: $f0 $aa
	ldh a, [rAUD3LEVEL]                              ; $623d: $f0 $1c
	dec h                                            ; $623f: $25
	inc de                                           ; $6240: $13
	ld d, e                                          ; $6241: $53
	ld a, [hl-]                                      ; $6242: $3a
	ld [hl], h                                       ; $6243: $74
	ld c, b                                          ; $6244: $48
	and b                                            ; $6245: $a0
	cpl                                              ; $6246: $2f
	ld b, e                                          ; $6247: $43
	ldh a, [$dd]                                     ; $6248: $f0 $dd
	ldh a, [$9c]                                     ; $624a: $f0 $9c
	ld c, e                                          ; $624c: $4b
	inc de                                           ; $624d: $13
	daa                                              ; $624e: $27
	pop af                                           ; $624f: $f1
	ld l, e                                          ; $6250: $6b
	ldh a, [$c0]                                     ; $6251: $f0 $c0
	ldh a, [$aa]                                     ; $6253: $f0 $aa
	ldh a, [rAUD3LEVEL]                              ; $6255: $f0 $1c
	pop af                                           ; $6257: $f1
	ld c, e                                          ; $6258: $4b
	ldh a, [$f0]                                     ; $6259: $f0 $f0
	dec h                                            ; $625b: $25
	ld d, e                                          ; $625c: $53
	ld a, [hl-]                                      ; $625d: $3a
	ld [hl], h                                       ; $625e: $74
	ld c, b                                          ; $625f: $48
	and b                                            ; $6260: $a0
	cpl                                              ; $6261: $2f
	ld b, e                                          ; $6262: $43
	ldh a, [$dd]                                     ; $6263: $f0 $dd
	ldh a, [$9c]                                     ; $6265: $f0 $9c
	ld d, e                                          ; $6267: $53
	inc de                                           ; $6268: $13
	daa                                              ; $6269: $27
	db $ed                                           ; $626a: $ed
	ld e, [hl]                                       ; $626b: $5e
	pop af                                           ; $626c: $f1
	cp [hl]                                          ; $626d: $be
	ld d, a                                          ; $626e: $57
	ld a, [hl-]                                      ; $626f: $3a
	jr c, jr_096_6297                                ; $6270: $38 $25

	ld a, [hl-]                                      ; $6272: $3a
	and b                                            ; $6273: $a0
	cpl                                              ; $6274: $2f
	ld b, e                                          ; $6275: $43
	ld c, a                                          ; $6276: $4f
	dec sp                                           ; $6277: $3b
	ld c, c                                          ; $6278: $49
	daa                                              ; $6279: $27
	pop af                                           ; $627a: $f1
	ld de, $4f25                                     ; $627b: $11 $25 $4f
	daa                                              ; $627e: $27
	ldh a, [rVBK]                                    ; $627f: $f0 $4f
	dec h                                            ; $6281: $25
	ld c, a                                          ; $6282: $4f
	inc de                                           ; $6283: $13
	pop af                                           ; $6284: $f1
	cp e                                             ; $6285: $bb
	ld e, [hl]                                       ; $6286: $5e
	ld a, [hl-]                                      ; $6287: $3a
	jr c, @+$4b                                      ; $6288: $38 $49

	ld a, [hl-]                                      ; $628a: $3a
	and b                                            ; $628b: $a0
	cpl                                              ; $628c: $2f
	ld b, e                                          ; $628d: $43
	ld c, a                                          ; $628e: $4f
	dec sp                                           ; $628f: $3b
	ld c, c                                          ; $6290: $49
	daa                                              ; $6291: $27
	pop af                                           ; $6292: $f1
	ld de, $65f0                                     ; $6293: $11 $f0 $65
	dec h                                            ; $6296: $25

jr_096_6297:
	ld h, d                                          ; $6297: $62
	inc de                                           ; $6298: $13
	pop af                                           ; $6299: $f1
	cp e                                             ; $629a: $bb
	ld e, [hl]                                       ; $629b: $5e
	ld a, [hl-]                                      ; $629c: $3a
	jr c, jr_096_62e8                                ; $629d: $38 $49

	ld a, [hl-]                                      ; $629f: $3a
	and b                                            ; $62a0: $a0
	cpl                                              ; $62a1: $2f
	ld b, e                                          ; $62a2: $43
	ld c, a                                          ; $62a3: $4f
	dec sp                                           ; $62a4: $3b
	ld c, c                                          ; $62a5: $49
	daa                                              ; $62a6: $27
	ldh a, [c]                                       ; $62a7: $f2
	and l                                            ; $62a8: $a5
	ldh a, [$d4]                                     ; $62a9: $f0 $d4
	dec h                                            ; $62ab: $25
	ld h, d                                          ; $62ac: $62
	inc de                                           ; $62ad: $13
	pop af                                           ; $62ae: $f1
	cp e                                             ; $62af: $bb
	ld e, [hl]                                       ; $62b0: $5e
	ld a, [hl-]                                      ; $62b1: $3a
	jr c, jr_096_62fd                                ; $62b2: $38 $49

	ld a, [hl-]                                      ; $62b4: $3a
	and b                                            ; $62b5: $a0
	cpl                                              ; $62b6: $2f
	ld b, e                                          ; $62b7: $43
	pop af                                           ; $62b8: $f1
	ld l, [hl]                                       ; $62b9: $6e
	ldh a, [$cf]                                     ; $62ba: $f0 $cf
	ld a, [hl-]                                      ; $62bc: $3a
	daa                                              ; $62bd: $27
	ldh a, [rAUDVOL]                                 ; $62be: $f0 $24
	pop af                                           ; $62c0: $f1
	jp Jump_096_5325                                 ; $62c1: $c3 $25 $53


	inc de                                           ; $62c4: $13
	ldh a, [rHDMA4]                                  ; $62c5: $f0 $54
	ld a, [hl-]                                      ; $62c7: $3a
	jr c, @+$3c                                      ; $62c8: $38 $3a

	and b                                            ; $62ca: $a0
	cpl                                              ; $62cb: $2f
	ld b, e                                          ; $62cc: $43
	ret                                              ; $62cd: $c9


	daa                                              ; $62ce: $27
	inc a                                            ; $62cf: $3c
	dec sp                                           ; $62d0: $3b
	ld d, h                                          ; $62d1: $54
	ldh a, [$5c]                                     ; $62d2: $f0 $5c
	jr c, jr_096_62fb                                ; $62d4: $38 $25

	ld b, l                                          ; $62d6: $45
	ld a, [hl-]                                      ; $62d7: $3a
	and b                                            ; $62d8: $a0
	cpl                                              ; $62d9: $2f
	ld b, e                                          ; $62da: $43
	ld c, d                                          ; $62db: $4a
	ld c, a                                          ; $62dc: $4f
	inc [hl]                                         ; $62dd: $34
	db $ec                                           ; $62de: $ec
	rst SubAFromDE                                          ; $62df: $df
	ld c, c                                          ; $62e0: $49
	ld c, e                                          ; $62e1: $4b
	inc de                                           ; $62e2: $13
	pop af                                           ; $62e3: $f1
	ld h, b                                          ; $62e4: $60
	ld a, [hl]                                       ; $62e5: $7e
	ld d, l                                          ; $62e6: $55
	ld l, [hl]                                       ; $62e7: $6e

jr_096_62e8:
	dec sp                                           ; $62e8: $3b
	ccf                                              ; $62e9: $3f
	jr c, jr_096_6349                                ; $62ea: $38 $5d

	db $ec                                           ; $62ec: $ec
	ld d, $a0                                        ; $62ed: $16 $a0
	cpl                                              ; $62ef: $2f
	ld b, e                                          ; $62f0: $43
	ld c, d                                          ; $62f1: $4a
	ld c, a                                          ; $62f2: $4f
	inc [hl]                                         ; $62f3: $34
	db $ec                                           ; $62f4: $ec
	ldh [rOBP1], a                                   ; $62f5: $e0 $49
	ld c, e                                          ; $62f7: $4b
	inc de                                           ; $62f8: $13
	pop af                                           ; $62f9: $f1
	ld h, b                                          ; $62fa: $60

jr_096_62fb:
	ld a, [hl]                                       ; $62fb: $7e
	ld d, l                                          ; $62fc: $55

jr_096_62fd:
	ld l, [hl]                                       ; $62fd: $6e
	dec sp                                           ; $62fe: $3b
	ccf                                              ; $62ff: $3f
	jr c, jr_096_635f                                ; $6300: $38 $5d

	db $ec                                           ; $6302: $ec
	ld d, $a0                                        ; $6303: $16 $a0
	cpl                                              ; $6305: $2f
	ld b, e                                          ; $6306: $43
	ld c, d                                          ; $6307: $4a
	ld c, a                                          ; $6308: $4f
	inc [hl]                                         ; $6309: $34
	db $ec                                           ; $630a: $ec
	pop hl                                           ; $630b: $e1
	ld c, c                                          ; $630c: $49
	ld c, e                                          ; $630d: $4b
	inc de                                           ; $630e: $13
	pop af                                           ; $630f: $f1
	ld h, b                                          ; $6310: $60
	ld a, [hl]                                       ; $6311: $7e
	ld d, l                                          ; $6312: $55
	ld l, [hl]                                       ; $6313: $6e
	dec sp                                           ; $6314: $3b
	ccf                                              ; $6315: $3f
	jr c, jr_096_6375                                ; $6316: $38 $5d

	db $ec                                           ; $6318: $ec
	ld d, $a0                                        ; $6319: $16 $a0
	cpl                                              ; $631b: $2f
	ld b, e                                          ; $631c: $43
	ld c, d                                          ; $631d: $4a
	ld c, a                                          ; $631e: $4f
	inc [hl]                                         ; $631f: $34
	db $ed                                           ; $6320: $ed
	ld d, e                                          ; $6321: $53
	ld c, c                                          ; $6322: $49
	ld c, e                                          ; $6323: $4b
	inc de                                           ; $6324: $13
	pop af                                           ; $6325: $f1
	ld h, b                                          ; $6326: $60
	ld a, [hl]                                       ; $6327: $7e
	ld d, l                                          ; $6328: $55
	ld l, [hl]                                       ; $6329: $6e
	dec sp                                           ; $632a: $3b
	ccf                                              ; $632b: $3f
	jr c, jr_096_638b                                ; $632c: $38 $5d

	db $ec                                           ; $632e: $ec
	ld d, $a0                                        ; $632f: $16 $a0
	cpl                                              ; $6331: $2f
	ld b, e                                          ; $6332: $43
	ld c, d                                          ; $6333: $4a
	ld c, a                                          ; $6334: $4f
	inc [hl]                                         ; $6335: $34
	db $eb                                           ; $6336: $eb
	ld a, [$4b49]                                    ; $6337: $fa $49 $4b
	inc de                                           ; $633a: $13
	pop af                                           ; $633b: $f1
	ld h, b                                          ; $633c: $60
	ld a, [hl]                                       ; $633d: $7e
	ld d, l                                          ; $633e: $55
	ld l, [hl]                                       ; $633f: $6e
	dec sp                                           ; $6340: $3b
	ccf                                              ; $6341: $3f
	jr c, jr_096_63a1                                ; $6342: $38 $5d

	db $ec                                           ; $6344: $ec
	ld d, $a0                                        ; $6345: $16 $a0
	cpl                                              ; $6347: $2f
	ld b, e                                          ; $6348: $43

jr_096_6349:
	ld c, d                                          ; $6349: $4a
	ld c, a                                          ; $634a: $4f
	inc [hl]                                         ; $634b: $34
	db $eb                                           ; $634c: $eb
	db $fc                                           ; $634d: $fc
	ld c, c                                          ; $634e: $49
	ld c, e                                          ; $634f: $4b
	inc de                                           ; $6350: $13
	pop af                                           ; $6351: $f1
	ld h, b                                          ; $6352: $60
	ld a, [hl]                                       ; $6353: $7e
	ld d, l                                          ; $6354: $55
	ld l, [hl]                                       ; $6355: $6e
	dec sp                                           ; $6356: $3b
	ccf                                              ; $6357: $3f
	jr c, jr_096_63b7                                ; $6358: $38 $5d

	db $ec                                           ; $635a: $ec
	ld d, $a0                                        ; $635b: $16 $a0
	cpl                                              ; $635d: $2f
	ld b, e                                          ; $635e: $43

jr_096_635f:
	ld c, d                                          ; $635f: $4a
	ld c, a                                          ; $6360: $4f
	inc [hl]                                         ; $6361: $34
	db $ec                                           ; $6362: $ec
	and $49                                          ; $6363: $e6 $49
	ld c, e                                          ; $6365: $4b
	inc de                                           ; $6366: $13
	pop af                                           ; $6367: $f1
	ld h, b                                          ; $6368: $60
	ld a, [hl]                                       ; $6369: $7e
	ld d, l                                          ; $636a: $55
	ld l, [hl]                                       ; $636b: $6e
	dec sp                                           ; $636c: $3b
	ccf                                              ; $636d: $3f
	jr c, jr_096_63cd                                ; $636e: $38 $5d

	db $ec                                           ; $6370: $ec
	ld d, $a0                                        ; $6371: $16 $a0
	cpl                                              ; $6373: $2f
	ld b, e                                          ; $6374: $43

jr_096_6375:
	ld c, c                                          ; $6375: $49
	ld b, a                                          ; $6376: $47
	inc a                                            ; $6377: $3c
	ld d, l                                          ; $6378: $55
	inc [hl]                                         ; $6379: $34
	sub d                                            ; $637a: $92
	adc [hl]                                         ; $637b: $8e
	ld d, b                                          ; $637c: $50
	ld c, h                                          ; $637d: $4c
	ld a, e                                          ; $637e: $7b
	and b                                            ; $637f: $a0
	cpl                                              ; $6380: $2f
	ld b, e                                          ; $6381: $43
	ld b, [hl]                                       ; $6382: $46
	dec sp                                           ; $6383: $3b
	inc [hl]                                         ; $6384: $34
	db $eb                                           ; $6385: $eb
	ld d, c                                          ; $6386: $51
	inc de                                           ; $6387: $13
	pop af                                           ; $6388: $f1
	dec hl                                           ; $6389: $2b
	pop af                                           ; $638a: $f1

jr_096_638b:
	db $ec                                           ; $638b: $ec
	db $ed                                           ; $638c: $ed
	db $d3                                           ; $638d: $d3
	ld d, e                                          ; $638e: $53
	ld b, [hl]                                       ; $638f: $46
	ld c, [hl]                                       ; $6390: $4e
	ld b, c                                          ; $6391: $41
	ld b, h                                          ; $6392: $44
	xor b                                            ; $6393: $a8
	ldh a, [$d7]                                     ; $6394: $f0 $d7
	ld c, d                                          ; $6396: $4a
	inc [hl]                                         ; $6397: $34
	db $ed                                           ; $6398: $ed
	ld [hl+], a                                      ; $6399: $22
	ld b, a                                          ; $639a: $47
	ld h, a                                          ; $639b: $67
	inc a                                            ; $639c: $3c
	ld a, [hl-]                                      ; $639d: $3a
	ld d, l                                          ; $639e: $55
	ld h, c                                          ; $639f: $61
	ld d, [hl]                                       ; $63a0: $56

jr_096_63a1:
	and b                                            ; $63a1: $a0
	cpl                                              ; $63a2: $2f
	ld [hl-], a                                      ; $63a3: $32
	halt                                             ; $63a4: $76
	ld b, d                                          ; $63a5: $42
	pop af                                           ; $63a6: $f1
	dec hl                                           ; $63a7: $2b
	pop af                                           ; $63a8: $f1
	db $ec                                           ; $63a9: $ec
	ld c, e                                          ; $63aa: $4b
	xor h                                            ; $63ab: $ac
	jp hl                                            ; $63ac: $e9


	add l                                            ; $63ad: $85
	add hl, bc                                       ; $63ae: $09
	cpl                                              ; $63af: $2f
	ld [hl-], a                                      ; $63b0: $32
	ld e, e                                          ; $63b1: $5b
	ld d, [hl]                                       ; $63b2: $56
	ld b, [hl]                                       ; $63b3: $46
	inc [hl]                                         ; $63b4: $34
	halt                                             ; $63b5: $76
	ld b, d                                          ; $63b6: $42

jr_096_63b7:
	pop af                                           ; $63b7: $f1
	dec hl                                           ; $63b8: $2b
	pop af                                           ; $63b9: $f1
	db $ec                                           ; $63ba: $ec
	ld c, e                                          ; $63bb: $4b
	inc de                                           ; $63bc: $13
	jp hl                                            ; $63bd: $e9


	add l                                            ; $63be: $85
	add hl, bc                                       ; $63bf: $09
	cpl                                              ; $63c0: $2f
	halt                                             ; $63c1: $76
	ld c, e                                          ; $63c2: $4b
	inc [hl]                                         ; $63c3: $34
	pop af                                           ; $63c4: $f1
	dec hl                                           ; $63c5: $2b
	adc c                                            ; $63c6: $89
	ld a, $3d                                        ; $63c7: $3e $3d
	jr c, @+$0b                                      ; $63c9: $38 $09

	cpl                                              ; $63cb: $2f
	halt                                             ; $63cc: $76

jr_096_63cd:
	ld c, e                                          ; $63cd: $4b
	inc [hl]                                         ; $63ce: $34
	ldh a, [c]                                       ; $63cf: $f2
	ld [hl-], a                                      ; $63d0: $32
	pop af                                           ; $63d1: $f1
	rst FarCall                                          ; $63d2: $f7
	ld a, $3d                                        ; $63d3: $3e $3d
	jr c, jr_096_63e0                                ; $63d5: $38 $09

	cpl                                              ; $63d7: $2f
	pop af                                           ; $63d8: $f1
	ld l, a                                          ; $63d9: $6f
	ld b, d                                          ; $63da: $42
	add h                                            ; $63db: $84
	ld b, d                                          ; $63dc: $42
	pop af                                           ; $63dd: $f1
	dec hl                                           ; $63de: $2b
	pop af                                           ; $63df: $f1

jr_096_63e0:
	db $ec                                           ; $63e0: $ec
	ld h, d                                          ; $63e1: $62
	ldh a, [$75]                                     ; $63e2: $f0 $75
	ldh a, [$8c]                                     ; $63e4: $f0 $8c
	ld c, [hl]                                       ; $63e6: $4e
	add hl, bc                                       ; $63e7: $09
	cpl                                              ; $63e8: $2f
	ld b, e                                          ; $63e9: $43
	ld e, [hl]                                       ; $63ea: $5e
	ld e, c                                          ; $63eb: $59
	ld c, c                                          ; $63ec: $49
	inc [hl]                                         ; $63ed: $34
	db $ed                                           ; $63ee: $ed
	xor c                                            ; $63ef: $a9
	ld c, e                                          ; $63f0: $4b
	xor h                                            ; $63f1: $ac

Call_096_63f2:
	db $ec                                           ; $63f2: $ec
	sub a                                            ; $63f3: $97
	ld b, a                                          ; $63f4: $47
	pop af                                           ; $63f5: $f1
	dec hl                                           ; $63f6: $2b
	adc c                                            ; $63f7: $89
	inc a                                            ; $63f8: $3c
	ld [hl], h                                       ; $63f9: $74
	xor b                                            ; $63fa: $a8
	db $ed                                           ; $63fb: $ed
	xor c                                            ; $63fc: $a9
	ld a, [hl-]                                      ; $63fd: $3a
	ld d, b                                          ; $63fe: $50
	inc [hl]                                         ; $63ff: $34
	ldh a, [rTMA]                                    ; $6400: $f0 $06
	pop af                                           ; $6402: $f1
	inc h                                            ; $6403: $24
	ld d, c                                          ; $6404: $51
	ld c, [hl]                                       ; $6405: $4e
	ld b, h                                          ; $6406: $44
	ld e, a                                          ; $6407: $5f
	add hl, sp                                       ; $6408: $39
	ld a, [hl-]                                      ; $6409: $3a
	and b                                            ; $640a: $a0
	cpl                                              ; $640b: $2f
	ld b, e                                          ; $640c: $43
	ld e, [hl]                                       ; $640d: $5e
	ld e, c                                          ; $640e: $59
	ld c, c                                          ; $640f: $49
	inc [hl]                                         ; $6410: $34
	db $ec                                           ; $6411: $ec
	rst SubAFromDE                                          ; $6412: $df
	ld c, e                                          ; $6413: $4b
	xor h                                            ; $6414: $ac
	db $ec                                           ; $6415: $ec
	sub a                                            ; $6416: $97
	ld b, a                                          ; $6417: $47
	pop af                                           ; $6418: $f1
	dec hl                                           ; $6419: $2b
	adc c                                            ; $641a: $89
	inc a                                            ; $641b: $3c
	ld [hl], h                                       ; $641c: $74
	xor b                                            ; $641d: $a8
	db $ec                                           ; $641e: $ec
	rst SubAFromDE                                          ; $641f: $df
	ld a, [hl-]                                      ; $6420: $3a
	ld d, b                                          ; $6421: $50
	inc [hl]                                         ; $6422: $34
	add a                                            ; $6423: $87
	ldh a, [$5b]                                     ; $6424: $f0 $5b
	ldh a, [$5e]                                     ; $6426: $f0 $5e
	ld b, h                                          ; $6428: $44
	ld a, [hl-]                                      ; $6429: $3a
	and b                                            ; $642a: $a0
	cpl                                              ; $642b: $2f
	ld b, e                                          ; $642c: $43
	ld e, [hl]                                       ; $642d: $5e
	ld e, c                                          ; $642e: $59
	ld c, c                                          ; $642f: $49
	inc [hl]                                         ; $6430: $34
	db $ec                                           ; $6431: $ec
	ldh [rWX], a                                     ; $6432: $e0 $4b
	xor h                                            ; $6434: $ac
	db $ec                                           ; $6435: $ec
	ld [bc], a                                       ; $6436: $02
	ldh a, [c]                                       ; $6437: $f2
	ld [hl-], a                                      ; $6438: $32
	pop af                                           ; $6439: $f1
	rst FarCall                                          ; $643a: $f7
	inc a                                            ; $643b: $3c
	ld [hl], h                                       ; $643c: $74
	xor b                                            ; $643d: $a8
	db $ec                                           ; $643e: $ec
	ldh [rWX], a                                     ; $643f: $e0 $4b
	ldh a, [c]                                       ; $6441: $f2
	ld [hl-], a                                      ; $6442: $32
	pop af                                           ; $6443: $f1
	rst FarCall                                          ; $6444: $f7
	ld d, c                                          ; $6445: $51
	ld c, [hl]                                       ; $6446: $4e
	ld b, d                                          ; $6447: $42
	inc a                                            ; $6448: $3c
	and b                                            ; $6449: $a0
	cpl                                              ; $644a: $2f
	ld b, e                                          ; $644b: $43
	ld e, [hl]                                       ; $644c: $5e
	ld e, c                                          ; $644d: $59
	ld c, c                                          ; $644e: $49
	inc [hl]                                         ; $644f: $34
	db $ec                                           ; $6450: $ec
	pop hl                                           ; $6451: $e1
	ld c, e                                          ; $6452: $4b
	xor h                                            ; $6453: $ac
	ldh a, [$3f]                                     ; $6454: $f0 $3f
	ld b, d                                          ; $6456: $42
	ldh a, [$dd]                                     ; $6457: $f0 $dd
	ldh a, [$9c]                                     ; $6459: $f0 $9c
	ld c, d                                          ; $645b: $4a
	inc [hl]                                         ; $645c: $34
	db $ed                                           ; $645d: $ed
	cp d                                             ; $645e: $ba
	db $ed                                           ; $645f: $ed
	sub b                                            ; $6460: $90
	inc a                                            ; $6461: $3c
	xor b                                            ; $6462: $a8
	db $ec                                           ; $6463: $ec
	pop hl                                           ; $6464: $e1
	ld c, e                                          ; $6465: $4b
	db $ed                                           ; $6466: $ed
	sub b                                            ; $6467: $90
	ld d, c                                          ; $6468: $51
	ld c, [hl]                                       ; $6469: $4e
	ld b, d                                          ; $646a: $42
	inc a                                            ; $646b: $3c
	and b                                            ; $646c: $a0
	cpl                                              ; $646d: $2f
	ld b, e                                          ; $646e: $43
	ld e, [hl]                                       ; $646f: $5e
	ld e, c                                          ; $6470: $59
	ld c, c                                          ; $6471: $49
	inc [hl]                                         ; $6472: $34
	db $ed                                           ; $6473: $ed
	ld d, e                                          ; $6474: $53
	ld c, e                                          ; $6475: $4b
	xor h                                            ; $6476: $ac
	ldh a, [hDisp0_SCX]                                     ; $6477: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $6479: $f0 $85
	pop af                                           ; $647b: $f1
	ld a, l                                          ; $647c: $7d
	ldh a, [hDisp0_LCDC]                                     ; $647d: $f0 $82
	ld b, a                                          ; $647f: $47
	ldh a, [c]                                       ; $6480: $f2
	ld [hl-], a                                      ; $6481: $32
	pop af                                           ; $6482: $f1
	rst FarCall                                          ; $6483: $f7
	inc a                                            ; $6484: $3c
	ld [hl], h                                       ; $6485: $74
	xor b                                            ; $6486: $a8
	ld c, d                                          ; $6487: $4a
	ld c, a                                          ; $6488: $4f
	inc [hl]                                         ; $6489: $34
	db $ed                                           ; $648a: $ed
	ld d, e                                          ; $648b: $53
	ld c, e                                          ; $648c: $4b
	inc de                                           ; $648d: $13
	pop af                                           ; $648e: $f1
	dec b                                            ; $648f: $05
	ldh a, [rWY]                                     ; $6490: $f0 $4a
	ldh a, [$03]                                     ; $6492: $f0 $03
	ld b, d                                          ; $6494: $42
	pop af                                           ; $6495: $f1
	adc e                                            ; $6496: $8b
	ld c, a                                          ; $6497: $4f
	inc de                                           ; $6498: $13
	ldh a, [hDisp0_BGP]                                     ; $6499: $f0 $85
	ld c, l                                          ; $649b: $4d
	ccf                                              ; $649c: $3f
	jr c, jr_096_64ed                                ; $649d: $38 $4e

	ld a, $3a                                        ; $649f: $3e $3a
	ld [hl], h                                       ; $64a1: $74
	and b                                            ; $64a2: $a0
	cpl                                              ; $64a3: $2f
	ld b, e                                          ; $64a4: $43
	ld e, [hl]                                       ; $64a5: $5e
	ld e, c                                          ; $64a6: $59
	ld c, c                                          ; $64a7: $49
	inc [hl]                                         ; $64a8: $34
	db $eb                                           ; $64a9: $eb
	ld a, [$ac4b]                                    ; $64aa: $fa $4b $ac
	db $ec                                           ; $64ad: $ec
	xor c                                            ; $64ae: $a9
	ld b, a                                          ; $64af: $47
	pop af                                           ; $64b0: $f1
	dec hl                                           ; $64b1: $2b
	adc c                                            ; $64b2: $89
	inc a                                            ; $64b3: $3c
	ld [hl], h                                       ; $64b4: $74
	xor b                                            ; $64b5: $a8
	ldh a, [rTMA]                                    ; $64b6: $f0 $06
	pop af                                           ; $64b8: $f1
	inc h                                            ; $64b9: $24
	ld c, d                                          ; $64ba: $4a
	ld e, h                                          ; $64bb: $5c
	ld c, [hl]                                       ; $64bc: $4e
	ld b, d                                          ; $64bd: $42
	inc a                                            ; $64be: $3c
	ld a, [hl-]                                      ; $64bf: $3a
	and c                                            ; $64c0: $a1
	cpl                                              ; $64c1: $2f
	ld b, e                                          ; $64c2: $43
	ld e, [hl]                                       ; $64c3: $5e
	ld e, c                                          ; $64c4: $59
	ld c, c                                          ; $64c5: $49
	inc [hl]                                         ; $64c6: $34
	db $ec                                           ; $64c7: $ec
	and $4b                                          ; $64c8: $e6 $4b
	xor h                                            ; $64ca: $ac
	ldh a, [c]                                       ; $64cb: $f2
	jp nc, $adf2                                     ; $64cc: $d2 $f2 $ad

	adc c                                            ; $64cf: $89
	sbc a                                            ; $64d0: $9f
	ld b, a                                          ; $64d1: $47
	pop af                                           ; $64d2: $f1
	dec hl                                           ; $64d3: $2b
	adc c                                            ; $64d4: $89
	inc a                                            ; $64d5: $3c
	ld [hl], h                                       ; $64d6: $74
	xor b                                            ; $64d7: $a8
	db $ec                                           ; $64d8: $ec
	and $4b                                          ; $64d9: $e6 $4b
	pop af                                           ; $64db: $f1
	dec hl                                           ; $64dc: $2b
	adc c                                            ; $64dd: $89
	ld d, c                                          ; $64de: $51
	ld c, [hl]                                       ; $64df: $4e
	ld b, d                                          ; $64e0: $42
	inc a                                            ; $64e1: $3c
	and b                                            ; $64e2: $a0
	cpl                                              ; $64e3: $2f
	ld b, e                                          ; $64e4: $43
	ld e, [hl]                                       ; $64e5: $5e
	ld e, c                                          ; $64e6: $59
	ld c, c                                          ; $64e7: $49
	xor h                                            ; $64e8: $ac
	db $ec                                           ; $64e9: $ec
	di                                               ; $64ea: $f3
	ld c, e                                          ; $64eb: $4b
	inc [hl]                                         ; $64ec: $34

jr_096_64ed:
	db $ed                                           ; $64ed: $ed
	cp d                                             ; $64ee: $ba
	db $ed                                           ; $64ef: $ed
	sub b                                            ; $64f0: $90
	inc a                                            ; $64f1: $3c
	xor b                                            ; $64f2: $a8
	ld d, h                                          ; $64f3: $54
	ld c, l                                          ; $64f4: $4d
	ld c, d                                          ; $64f5: $4a
	inc [hl]                                         ; $64f6: $34
	pop af                                           ; $64f7: $f1
	ld l, c                                          ; $64f8: $69
	ldh a, [hDisp1_OBP0]                                     ; $64f9: $f0 $93
	ld a, [hl-]                                      ; $64fb: $3a
	ld l, b                                          ; $64fc: $68
	ldh a, [$cf]                                     ; $64fd: $f0 $cf
	ld d, e                                          ; $64ff: $53
	inc de                                           ; $6500: $13
	ldh a, [$e8]                                     ; $6501: $f0 $e8
	dec sp                                           ; $6503: $3b
	ccf                                              ; $6504: $3f
	ld a, b                                          ; $6505: $78
	ld b, b                                          ; $6506: $40
	add hl, sp                                       ; $6507: $39
	ld b, h                                          ; $6508: $44
	adc l                                            ; $6509: $8d
	and b                                            ; $650a: $a0
	cpl                                              ; $650b: $2f
	ld b, e                                          ; $650c: $43
	ld e, [hl]                                       ; $650d: $5e
	ld e, c                                          ; $650e: $59
	ld c, c                                          ; $650f: $49
	inc [hl]                                         ; $6510: $34
	adc e                                            ; $6511: $8b
	ldh a, [$72]                                     ; $6512: $f0 $72
	ld c, e                                          ; $6514: $4b
	xor h                                            ; $6515: $ac
	db $ec                                           ; $6516: $ec
	xor c                                            ; $6517: $a9
	inc a                                            ; $6518: $3c
	xor b                                            ; $6519: $a8
	db $ec                                           ; $651a: $ec
	ldh a, [$34]                                     ; $651b: $f0 $34
	adc e                                            ; $651d: $8b
	ldh a, [$72]                                     ; $651e: $f0 $72
	ld c, e                                          ; $6520: $4b
	pop af                                           ; $6521: $f1
	dec hl                                           ; $6522: $2b
	adc c                                            ; $6523: $89
	ld d, c                                          ; $6524: $51
	ld c, [hl]                                       ; $6525: $4e
	ld b, c                                          ; $6526: $41
	ld b, h                                          ; $6527: $44
	and b                                            ; $6528: $a0
	cpl                                              ; $6529: $2f
	ld b, e                                          ; $652a: $43
	ld e, e                                          ; $652b: $5b
	ld d, [hl]                                       ; $652c: $56
	ld b, [hl]                                       ; $652d: $46
	xor h                                            ; $652e: $ac
	db $ed                                           ; $652f: $ed
	ld [hl+], a                                      ; $6530: $22
	ldh a, [$5a]                                     ; $6531: $f0 $5a
	ld h, a                                          ; $6533: $67
	inc a                                            ; $6534: $3c
	ld a, [hl-]                                      ; $6535: $3a
	ld e, h                                          ; $6536: $5c
	ld d, [hl]                                       ; $6537: $56
	and b                                            ; $6538: $a0
	cpl                                              ; $6539: $2f
	ld [hl-], a                                      ; $653a: $32
	halt                                             ; $653b: $76
	ld c, e                                          ; $653c: $4b
	db $ed                                           ; $653d: $ed
	or l                                             ; $653e: $b5
	ld b, a                                          ; $653f: $47
	xor h                                            ; $6540: $ac
	pop af                                           ; $6541: $f1
	dec hl                                           ; $6542: $2b
	pop af                                           ; $6543: $f1
	db $ec                                           ; $6544: $ec
	ld b, d                                          ; $6545: $42
	db $ed                                           ; $6546: $ed
	db $e4                                           ; $6547: $e4
	ld h, d                                          ; $6548: $62
	pop af                                           ; $6549: $f1
	ld [hl], c                                       ; $654a: $71
	ld e, [hl]                                       ; $654b: $5e
	dec a                                            ; $654c: $3d
	and e                                            ; $654d: $a3
	ld h, h                                          ; $654e: $64
	sbc [hl]                                         ; $654f: $9e
	ld b, d                                          ; $6550: $42
	ld l, d                                          ; $6551: $6a
	ld b, d                                          ; $6552: $42
	inc de                                           ; $6553: $13
	adc c                                            ; $6554: $89
	ldh a, [$7f]                                     ; $6555: $f0 $7f
	ld b, h                                          ; $6557: $44
	dec sp                                           ; $6558: $3b
	dec a                                            ; $6559: $3d
	ld d, b                                          ; $655a: $50
	xor h                                            ; $655b: $ac
	sub d                                            ; $655c: $92
	adc [hl]                                         ; $655d: $8e
	ld d, b                                          ; $655e: $50
	ld a, [hl-]                                      ; $655f: $3a
	jr c, jr_096_65ab                                ; $6560: $38 $49

	xor h                                            ; $6562: $ac
	di                                               ; $6563: $f3
	jp nz, $3e84                                     ; $6564: $c2 $84 $3e

	ccf                                              ; $6567: $3f
	ld a, $52                                        ; $6568: $3e $52
	add hl, sp                                       ; $656a: $39
	sub a                                            ; $656b: $97
	and b                                            ; $656c: $a0
	cpl                                              ; $656d: $2f
	ld b, e                                          ; $656e: $43
	ldh a, [$a6]                                     ; $656f: $f0 $a6
	ld e, c                                          ; $6571: $59
	ld h, l                                          ; $6572: $65
	and b                                            ; $6573: $a0
	ld h, h                                          ; $6574: $64
	sbc [hl]                                         ; $6575: $9e
	ld b, d                                          ; $6576: $42
	ld l, d                                          ; $6577: $6a
	ld b, d                                          ; $6578: $42
	inc de                                           ; $6579: $13
	ldh a, [$75]                                     ; $657a: $f0 $75
	adc h                                            ; $657c: $8c
	ld b, h                                          ; $657d: $44
	dec sp                                           ; $657e: $3b
	dec a                                            ; $657f: $3d
	ld d, b                                          ; $6580: $50
	xor h                                            ; $6581: $ac
	db $ec                                           ; $6582: $ec
	sub a                                            ; $6583: $97
	ld b, a                                          ; $6584: $47
	inc de                                           ; $6585: $13
	ldh a, [rTMA]                                    ; $6586: $f0 $06
	pop af                                           ; $6588: $f1
	inc h                                            ; $6589: $24
	ld c, d                                          ; $658a: $4a
	ld e, h                                          ; $658b: $5c
	ld c, [hl]                                       ; $658c: $4e
	ld b, h                                          ; $658d: $44
	ld e, a                                          ; $658e: $5f
	add hl, sp                                       ; $658f: $39
	and b                                            ; $6590: $a0
	cpl                                              ; $6591: $2f
	ld b, e                                          ; $6592: $43
	ld a, [hl-]                                      ; $6593: $3a
	ld c, [hl]                                       ; $6594: $4e
	ldh a, [$08]                                     ; $6595: $f0 $08
	ld e, d                                          ; $6597: $5a
	and b                                            ; $6598: $a0
	ld h, h                                          ; $6599: $64
	sbc [hl]                                         ; $659a: $9e
	ld b, d                                          ; $659b: $42
	ld l, d                                          ; $659c: $6a
	ld b, d                                          ; $659d: $42
	inc de                                           ; $659e: $13
	ldh a, [$75]                                     ; $659f: $f0 $75
	adc h                                            ; $65a1: $8c
	ld b, h                                          ; $65a2: $44
	dec sp                                           ; $65a3: $3b
	dec a                                            ; $65a4: $3d
	ld d, b                                          ; $65a5: $50
	xor h                                            ; $65a6: $ac
	ldh a, [hDisp0_SCX]                                     ; $65a7: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $65a9: $f0 $85

jr_096_65ab:
	add a                                            ; $65ab: $87
	adc c                                            ; $65ac: $89
	ld b, a                                          ; $65ad: $47
	ld a, [hl-]                                      ; $65ae: $3a
	ld d, b                                          ; $65af: $50
	inc de                                           ; $65b0: $13
	ldh a, [rTMA]                                    ; $65b1: $f0 $06
	pop af                                           ; $65b3: $f1
	inc h                                            ; $65b4: $24
	ld c, d                                          ; $65b5: $4a
	ld e, h                                          ; $65b6: $5c
	ld c, [hl]                                       ; $65b7: $4e
	ld b, h                                          ; $65b8: $44
	ld e, a                                          ; $65b9: $5f
	add hl, sp                                       ; $65ba: $39
	and b                                            ; $65bb: $a0
	cpl                                              ; $65bc: $2f
	ld b, e                                          ; $65bd: $43
	ldh a, [rSCY]                                    ; $65be: $f0 $42
	ldh a, [$be]                                     ; $65c0: $f0 $be
	ldh a, [rSCY]                                    ; $65c2: $f0 $42
	ldh a, [$be]                                     ; $65c4: $f0 $be
	and b                                            ; $65c6: $a0
	ld h, h                                          ; $65c7: $64
	sbc [hl]                                         ; $65c8: $9e
	ld b, d                                          ; $65c9: $42
	ld l, d                                          ; $65ca: $6a
	ld b, d                                          ; $65cb: $42
	inc de                                           ; $65cc: $13
	ldh a, [$75]                                     ; $65cd: $f0 $75
	adc h                                            ; $65cf: $8c
	ld b, h                                          ; $65d0: $44
	dec sp                                           ; $65d1: $3b
	dec a                                            ; $65d2: $3d
	ld d, b                                          ; $65d3: $50
	xor h                                            ; $65d4: $ac
	db $ec                                           ; $65d5: $ec
	xor c                                            ; $65d6: $a9
	ld b, a                                          ; $65d7: $47
	ld c, e                                          ; $65d8: $4b
	inc de                                           ; $65d9: $13
	ldh a, [rTMA]                                    ; $65da: $f0 $06
	pop af                                           ; $65dc: $f1
	inc h                                            ; $65dd: $24
	ld c, d                                          ; $65de: $4a
	ld e, h                                          ; $65df: $5c
	ld c, [hl]                                       ; $65e0: $4e
	ld b, h                                          ; $65e1: $44
	ld e, a                                          ; $65e2: $5f
	add hl, sp                                       ; $65e3: $39
	and b                                            ; $65e4: $a0
	cpl                                              ; $65e5: $2f
	ld b, e                                          ; $65e6: $43
	db $ec                                           ; $65e7: $ec
	ldh a, [$a0]                                     ; $65e8: $f0 $a0
	ld h, h                                          ; $65ea: $64
	sbc [hl]                                         ; $65eb: $9e
	ld b, d                                          ; $65ec: $42
	ld l, d                                          ; $65ed: $6a
	ld b, d                                          ; $65ee: $42
	inc de                                           ; $65ef: $13
	adc c                                            ; $65f0: $89
	ldh a, [$7f]                                     ; $65f1: $f0 $7f
	ld b, h                                          ; $65f3: $44
	dec sp                                           ; $65f4: $3b
	dec a                                            ; $65f5: $3d
	ld d, b                                          ; $65f6: $50
	xor h                                            ; $65f7: $ac
	sub d                                            ; $65f8: $92
	adc [hl]                                         ; $65f9: $8e
	ld d, b                                          ; $65fa: $50
	ld a, [hl-]                                      ; $65fb: $3a
	jr c, jr_096_6647                                ; $65fc: $38 $49

	inc [hl]                                         ; $65fe: $34
	ldh a, [$8e]                                     ; $65ff: $f0 $8e
	ldh a, [rP1]                                     ; $6601: $f0 $00
	ld e, c                                          ; $6603: $59
	ldh a, [rDIV]                                    ; $6604: $f0 $04
	ld e, c                                          ; $6606: $59
	ld b, d                                          ; $6607: $42
	ldh a, [$ee]                                     ; $6608: $f0 $ee
	ld d, e                                          ; $660a: $53
	inc de                                           ; $660b: $13
	sbc c                                            ; $660c: $99
	dec sp                                           ; $660d: $3b
	ccf                                              ; $660e: $3f
	jr c, jr_096_665f                                ; $660f: $38 $4e

	sub a                                            ; $6611: $97
	and b                                            ; $6612: $a0
	ld h, h                                          ; $6613: $64
	sbc [hl]                                         ; $6614: $9e
	ld b, d                                          ; $6615: $42
	ld l, d                                          ; $6616: $6a
	ld b, d                                          ; $6617: $42
	inc de                                           ; $6618: $13
	ldh a, [$75]                                     ; $6619: $f0 $75
	adc h                                            ; $661b: $8c
	ld b, h                                          ; $661c: $44
	dec sp                                           ; $661d: $3b
	dec a                                            ; $661e: $3d
	ld d, b                                          ; $661f: $50
	xor h                                            ; $6620: $ac
	db $ec                                           ; $6621: $ec
	ld [bc], a                                       ; $6622: $02
	inc de                                           ; $6623: $13
	pop af                                           ; $6624: $f1
	ld [hl], a                                       ; $6625: $77
	ldh a, [hDisp0_WY]                                     ; $6626: $f0 $88
	ld c, d                                          ; $6628: $4a
	ld e, h                                          ; $6629: $5c
	ld c, [hl]                                       ; $662a: $4e
	ld b, h                                          ; $662b: $44
	ld e, a                                          ; $662c: $5f
	add hl, sp                                       ; $662d: $39
	and b                                            ; $662e: $a0
	ld h, h                                          ; $662f: $64
	sbc [hl]                                         ; $6630: $9e
	ld b, d                                          ; $6631: $42
	ld l, d                                          ; $6632: $6a
	ld b, d                                          ; $6633: $42
	inc de                                           ; $6634: $13
	ldh a, [$75]                                     ; $6635: $f0 $75
	adc h                                            ; $6637: $8c
	ld b, h                                          ; $6638: $44
	dec sp                                           ; $6639: $3b
	dec a                                            ; $663a: $3d
	ld d, b                                          ; $663b: $50
	xor h                                            ; $663c: $ac
	ldh a, [hDisp0_SCX]                                     ; $663d: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $663f: $f0 $85
	pop af                                           ; $6641: $f1
	ld a, l                                          ; $6642: $7d
	ldh a, [hDisp0_LCDC]                                     ; $6643: $f0 $82
	ld b, a                                          ; $6645: $47
	ld a, [hl-]                                      ; $6646: $3a

jr_096_6647:
	ld d, b                                          ; $6647: $50
	inc de                                           ; $6648: $13
	pop af                                           ; $6649: $f1
	ld [hl], a                                       ; $664a: $77
	ldh a, [hDisp0_WY]                                     ; $664b: $f0 $88
	ld c, d                                          ; $664d: $4a
	ld e, h                                          ; $664e: $5c
	ld c, [hl]                                       ; $664f: $4e
	ld b, h                                          ; $6650: $44
	ld e, a                                          ; $6651: $5f
	add hl, sp                                       ; $6652: $39
	and b                                            ; $6653: $a0
	ld h, h                                          ; $6654: $64
	sbc [hl]                                         ; $6655: $9e
	ld b, d                                          ; $6656: $42
	ld l, d                                          ; $6657: $6a
	ld b, d                                          ; $6658: $42
	inc de                                           ; $6659: $13
	ldh a, [$75]                                     ; $665a: $f0 $75
	adc h                                            ; $665c: $8c
	ld b, h                                          ; $665d: $44
	dec sp                                           ; $665e: $3b

jr_096_665f:
	dec a                                            ; $665f: $3d
	ld d, b                                          ; $6660: $50
	xor h                                            ; $6661: $ac
	pop af                                           ; $6662: $f1
	ld [hl], e                                       ; $6663: $73
	ldh a, [hDisp0_BGP]                                     ; $6664: $f0 $85
	pop af                                           ; $6666: $f1
	ld a, l                                          ; $6667: $7d
	ldh a, [hDisp0_LCDC]                                     ; $6668: $f0 $82
	ld b, a                                          ; $666a: $47
	ld c, e                                          ; $666b: $4b
	inc de                                           ; $666c: $13
	pop af                                           ; $666d: $f1
	ld [hl], a                                       ; $666e: $77
	ldh a, [hDisp0_WY]                                     ; $666f: $f0 $88
	ld c, d                                          ; $6671: $4a
	ld e, h                                          ; $6672: $5c
	ld c, [hl]                                       ; $6673: $4e
	ld b, h                                          ; $6674: $44
	ld e, a                                          ; $6675: $5f
	add hl, sp                                       ; $6676: $39
	and b                                            ; $6677: $a0
	cpl                                              ; $6678: $2f
	ld b, e                                          ; $6679: $43
	pop af                                           ; $667a: $f1
	and h                                            ; $667b: $a4
	inc a                                            ; $667c: $3c
	ld b, a                                          ; $667d: $47
	db $ed                                           ; $667e: $ed
	sub e                                            ; $667f: $93
	ld a, $3f                                        ; $6680: $3e $3f
	jr c, jr_096_66c1                                ; $6682: $38 $3d

	inc de                                           ; $6684: $13
	pop af                                           ; $6685: $f1
	add hl, de                                       ; $6686: $19
	pop af                                           ; $6687: $f1
	dec c                                            ; $6688: $0d
	ld b, e                                          ; $6689: $43
	add h                                            ; $668a: $84
	ldh a, [$2a]                                     ; $668b: $f0 $2a
	ldh a, [rTMA]                                    ; $668d: $f0 $06
	pop af                                           ; $668f: $f1
	inc h                                            ; $6690: $24
	ldh a, [$eb]                                     ; $6691: $f0 $eb
	ld c, d                                          ; $6693: $4a
	inc de                                           ; $6694: $13
	db $ed                                           ; $6695: $ed
	add hl, bc                                       ; $6696: $09
	ld h, d                                          ; $6697: $62
	pop af                                           ; $6698: $f1
	ld c, d                                          ; $6699: $4a
	ldh a, [c]                                       ; $669a: $f2
	ld a, [hl+]                                      ; $669b: $2a
	ld a, $3f                                        ; $669c: $3e $3f
	ld a, $52                                        ; $669e: $3e $52
	add hl, sp                                       ; $66a0: $39
	ld c, c                                          ; $66a1: $49
	ld c, e                                          ; $66a2: $4b
	xor h                                            ; $66a3: $ac
	halt                                             ; $66a4: $76
	dec sp                                           ; $66a5: $3b
	ccf                                              ; $66a6: $3f
	inc [hl]                                         ; $66a7: $34
	ld a, [hl-]                                      ; $66a8: $3a
	ld b, c                                          ; $66a9: $41
	ccf                                              ; $66aa: $3f
	pop af                                           ; $66ab: $f1
	xor d                                            ; $66ac: $aa
	pop af                                           ; $66ad: $f1
	and e                                            ; $66ae: $a3
	ld a, [hl-]                                      ; $66af: $3a
	ld b, c                                          ; $66b0: $41
	ld b, h                                          ; $66b1: $44
	and b                                            ; $66b2: $a0
	cpl                                              ; $66b3: $2f
	ld b, e                                          ; $66b4: $43
	ldh a, [$e5]                                     ; $66b5: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $66b7: $f0 $14
	ldh a, [$2a]                                     ; $66b9: $f0 $2a
	inc [hl]                                         ; $66bb: $34
	ldh a, [rSCX]                                    ; $66bc: $f0 $43
	ldh a, [$b8]                                     ; $66be: $f0 $b8
	adc a                                            ; $66c0: $8f

jr_096_66c1:
	ld c, d                                          ; $66c1: $4a
	inc de                                           ; $66c2: $13
	sub d                                            ; $66c3: $92
	adc [hl]                                         ; $66c4: $8e
	dec sp                                           ; $66c5: $3b
	dec a                                            ; $66c6: $3d
	pop af                                           ; $66c7: $f1
	ld d, e                                          ; $66c8: $53
	ldh a, [c]                                       ; $66c9: $f2
	ld b, [hl]                                       ; $66ca: $46
	ld d, e                                          ; $66cb: $53
	sub h                                            ; $66cc: $94
	dec a                                            ; $66cd: $3d
	adc l                                            ; $66ce: $8d
	and b                                            ; $66cf: $a0
	cpl                                              ; $66d0: $2f
	ld b, e                                          ; $66d1: $43
	ld d, h                                          ; $66d2: $54
	ld c, l                                          ; $66d3: $4d
	ld c, d                                          ; $66d4: $4a
	xor h                                            ; $66d5: $ac
	ldh a, [$a5]                                     ; $66d6: $f0 $a5
	ldh a, [rSVBK]                                   ; $66d8: $f0 $70
	ldh a, [$5a]                                     ; $66da: $f0 $5a
	ld b, d                                          ; $66dc: $42
	ldh a, [$ee]                                     ; $66dd: $f0 $ee
	ld d, e                                          ; $66df: $53
	ldh a, [hLCDCIntHandlerIdx]                                     ; $66e0: $f0 $81
	ld e, l                                          ; $66e2: $5d
	dec a                                            ; $66e3: $3d
	adc l                                            ; $66e4: $8d
	and b                                            ; $66e5: $a0
	cpl                                              ; $66e6: $2f
	ld b, e                                          ; $66e7: $43
	halt                                             ; $66e8: $76
	ld b, d                                          ; $66e9: $42
	ldh a, [hLCDCIntHandlerIdx]                                     ; $66ea: $f0 $81
	pop af                                           ; $66ec: $f1
	xor l                                            ; $66ed: $ad
	ld a, $3d                                        ; $66ee: $3e $3d
	inc [hl]                                         ; $66f0: $34
	pop af                                           ; $66f1: $f1
	ld a, a                                          ; $66f2: $7f
	pop af                                           ; $66f3: $f1
	ld e, l                                          ; $66f4: $5d
	ld b, d                                          ; $66f5: $42
	inc de                                           ; $66f6: $13
	ldh a, [$b6]                                     ; $66f7: $f0 $b6
	di                                               ; $66f9: $f3
	jp $aff2                                         ; $66fa: $c3 $f2 $af


	inc [hl]                                         ; $66fd: $34
	ld b, e                                          ; $66fe: $43
	ldh a, [$35]                                     ; $66ff: $f0 $35
	sub l                                            ; $6701: $95
	ldh a, [$ba]                                     ; $6702: $f0 $ba
	ldh a, [$c3]                                     ; $6704: $f0 $c3
	ld e, c                                          ; $6706: $59
	ldh a, [$03]                                     ; $6707: $f0 $03
	ldh a, [$eb]                                     ; $6709: $f0 $eb
	ld d, e                                          ; $670b: $53
	inc de                                           ; $670c: $13
	ldh a, [$f6]                                     ; $670d: $f0 $f6
	pop af                                           ; $670f: $f1
	inc [hl]                                         ; $6710: $34
	ld b, a                                          ; $6711: $47
	ldh a, [c]                                       ; $6712: $f2
	sbc a                                            ; $6713: $9f
	ld [hl], c                                       ; $6714: $71
	ld d, b                                          ; $6715: $50
	ld c, l                                          ; $6716: $4d
	ccf                                              ; $6717: $3f
	inc de                                           ; $6718: $13
	db $eb                                           ; $6719: $eb
	cp h                                             ; $671a: $bc
	ld h, d                                          ; $671b: $62
	pop af                                           ; $671c: $f1
	ld c, d                                          ; $671d: $4a
	ldh a, [c]                                       ; $671e: $f2
	ld a, [hl+]                                      ; $671f: $2a
	ld a, $3d                                        ; $6720: $3e $3d
	and b                                            ; $6722: $a0
	cpl                                              ; $6723: $2f
	ld b, e                                          ; $6724: $43
	ldh a, [$e5]                                     ; $6725: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $6727: $f0 $14
	ldh a, [$2a]                                     ; $6729: $f0 $2a
	inc [hl]                                         ; $672b: $34
	ldh a, [$aa]                                     ; $672c: $f0 $aa
	adc c                                            ; $672e: $89
	adc a                                            ; $672f: $8f
	ld c, d                                          ; $6730: $4a
	inc de                                           ; $6731: $13
	sub d                                            ; $6732: $92
	adc [hl]                                         ; $6733: $8e
	dec sp                                           ; $6734: $3b
	dec a                                            ; $6735: $3d
	pop af                                           ; $6736: $f1
	ld d, e                                          ; $6737: $53
	ldh a, [c]                                       ; $6738: $f2
	ld b, [hl]                                       ; $6739: $46
	ld d, e                                          ; $673a: $53
	sub h                                            ; $673b: $94
	dec a                                            ; $673c: $3d
	adc l                                            ; $673d: $8d
	and b                                            ; $673e: $a0
	cpl                                              ; $673f: $2f
	ld b, e                                          ; $6740: $43
	ld d, h                                          ; $6741: $54
	ld c, l                                          ; $6742: $4d
	ld c, d                                          ; $6743: $4a
	xor h                                            ; $6744: $ac
	halt                                             ; $6745: $76
	ld b, d                                          ; $6746: $42
	db $f4                                           ; $6747: $f4
	dec bc                                           ; $6748: $0b
	ld a, b                                          ; $6749: $78
	ld d, e                                          ; $674a: $53
	xor $1d                                          ; $674b: $ee $1d
	ld e, b                                          ; $674d: $58
	ld c, l                                          ; $674e: $4d
	dec a                                            ; $674f: $3d
	adc l                                            ; $6750: $8d
	and b                                            ; $6751: $a0
	cpl                                              ; $6752: $2f
	ld b, e                                          ; $6753: $43
	pop af                                           ; $6754: $f1
	and h                                            ; $6755: $a4
	inc a                                            ; $6756: $3c
	ld b, a                                          ; $6757: $47
	sub h                                            ; $6758: $94
	ldh a, [$c1]                                     ; $6759: $f0 $c1
	ld a, $3d                                        ; $675b: $3e $3d
	inc de                                           ; $675d: $13
	pop af                                           ; $675e: $f1
	or b                                             ; $675f: $b0
	ldh a, [$3f]                                     ; $6760: $f0 $3f
	ld b, e                                          ; $6762: $43
	ldh a, [hDisp0_OBP0]                                     ; $6763: $f0 $86
	ld c, c                                          ; $6765: $49
	ldh a, [c]                                       ; $6766: $f2
	rra                                              ; $6767: $1f
	db $f4                                           ; $6768: $f4
	adc h                                            ; $6769: $8c
	add h                                            ; $676a: $84
	ldh a, [$eb]                                     ; $676b: $f0 $eb
	ld c, d                                          ; $676d: $4a
	xor h                                            ; $676e: $ac
	db $ed                                           ; $676f: $ed
	ret                                              ; $6770: $c9


	add a                                            ; $6771: $87
	ldh a, [c]                                       ; $6772: $f2
	ld a, [hl+]                                      ; $6773: $2a
	ld h, d                                          ; $6774: $62
	pop af                                           ; $6775: $f1
	ld c, d                                          ; $6776: $4a
	ldh a, [c]                                       ; $6777: $f2
	ld a, [hl+]                                      ; $6778: $2a
	ld a, $3d                                        ; $6779: $3e $3d
	and b                                            ; $677b: $a0
	cpl                                              ; $677c: $2f
	ld b, e                                          ; $677d: $43
	ldh a, [$e5]                                     ; $677e: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $6780: $f0 $14
	ldh a, [$2a]                                     ; $6782: $f0 $2a
	inc [hl]                                         ; $6784: $34
	adc d                                            ; $6785: $8a
	ldh a, [$73]                                     ; $6786: $f0 $73
	adc a                                            ; $6788: $8f
	ld c, d                                          ; $6789: $4a
	inc de                                           ; $678a: $13
	sub d                                            ; $678b: $92
	adc [hl]                                         ; $678c: $8e
	dec sp                                           ; $678d: $3b
	dec a                                            ; $678e: $3d
	pop af                                           ; $678f: $f1
	ld d, e                                          ; $6790: $53
	ldh a, [c]                                       ; $6791: $f2
	ld b, [hl]                                       ; $6792: $46
	ld d, e                                          ; $6793: $53
	sub h                                            ; $6794: $94
	dec a                                            ; $6795: $3d
	adc l                                            ; $6796: $8d
	and b                                            ; $6797: $a0
	cpl                                              ; $6798: $2f
	ld b, e                                          ; $6799: $43
	ld d, h                                          ; $679a: $54
	ld c, l                                          ; $679b: $4d
	ld c, d                                          ; $679c: $4a
	xor h                                            ; $679d: $ac
	ldh a, [$7a]                                     ; $679e: $f0 $7a
	ldh a, [rSVBK]                                   ; $67a0: $f0 $70
	ldh a, [$5a]                                     ; $67a2: $f0 $5a
	ld b, d                                          ; $67a4: $42
	ldh a, [$ee]                                     ; $67a5: $f0 $ee
	ld d, e                                          ; $67a7: $53
	ldh a, [hLCDCIntHandlerIdx]                                     ; $67a8: $f0 $81
	ld e, l                                          ; $67aa: $5d
	dec a                                            ; $67ab: $3d
	adc l                                            ; $67ac: $8d
	and b                                            ; $67ad: $a0
	cpl                                              ; $67ae: $2f
	ld b, e                                          ; $67af: $43
	db $ed                                           ; $67b0: $ed
	ld [$f342], sp                                   ; $67b1: $08 $42 $f3
	inc de                                           ; $67b4: $13
	ld c, d                                          ; $67b5: $4a
	sub d                                            ; $67b6: $92
	adc [hl]                                         ; $67b7: $8e
	dec sp                                           ; $67b8: $3b
	dec a                                            ; $67b9: $3d
	inc de                                           ; $67ba: $13
	pop af                                           ; $67bb: $f1
	ld b, c                                          ; $67bc: $41
	ldh a, [$8b]                                     ; $67bd: $f0 $8b
	sub b                                            ; $67bf: $90
	ld d, e                                          ; $67c0: $53
	inc de                                           ; $67c1: $13
	ldh a, [$ca]                                     ; $67c2: $f0 $ca
	ldh a, [c]                                       ; $67c4: $f2
	or [hl]                                          ; $67c5: $b6
	pop af                                           ; $67c6: $f1
	ld b, c                                          ; $67c7: $41
	ldh a, [$8b]                                     ; $67c8: $f0 $8b
	sub b                                            ; $67ca: $90
	ldh a, [rAUD1LEN]                                ; $67cb: $f0 $11
	ld h, l                                          ; $67cd: $65
	sub e                                            ; $67ce: $93
	ld e, c                                          ; $67cf: $59
	ldh a, [$03]                                     ; $67d0: $f0 $03
	inc de                                           ; $67d2: $13
	ld c, d                                          ; $67d3: $4a
	ld [hl], d                                       ; $67d4: $72
	sbc d                                            ; $67d5: $9a
	ldh a, [$4e]                                     ; $67d6: $f0 $4e
	ldh a, [$6f]                                     ; $67d8: $f0 $6f
	ld a, $3d                                        ; $67da: $3e $3d
	and b                                            ; $67dc: $a0
	cpl                                              ; $67dd: $2f
	ld b, e                                          ; $67de: $43
	db $ec                                           ; $67df: $ec
	ret nc                                           ; $67e0: $d0

	ld c, d                                          ; $67e1: $4a
	inc [hl]                                         ; $67e2: $34
	ldh a, [$e5]                                     ; $67e3: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $67e5: $f0 $14
	ldh a, [$2a]                                     ; $67e7: $f0 $2a
	inc de                                           ; $67e9: $13
	sub d                                            ; $67ea: $92
	adc [hl]                                         ; $67eb: $8e
	dec sp                                           ; $67ec: $3b
	dec a                                            ; $67ed: $3d
	pop af                                           ; $67ee: $f1
	ld d, e                                          ; $67ef: $53
	ldh a, [c]                                       ; $67f0: $f2
	ld b, [hl]                                       ; $67f1: $46
	ld d, e                                          ; $67f2: $53
	sub h                                            ; $67f3: $94
	dec a                                            ; $67f4: $3d
	adc l                                            ; $67f5: $8d
	and b                                            ; $67f6: $a0
	cpl                                              ; $67f7: $2f
	ld b, e                                          ; $67f8: $43
	ld d, h                                          ; $67f9: $54
	ld c, l                                          ; $67fa: $4d
	ld c, d                                          ; $67fb: $4a
	xor h                                            ; $67fc: $ac
	ldh a, [$99]                                     ; $67fd: $f0 $99
	sub b                                            ; $67ff: $90
	ldh a, [rSVBK]                                   ; $6800: $f0 $70
	ldh a, [$5a]                                     ; $6802: $f0 $5a
	ld b, d                                          ; $6804: $42
	ldh a, [$ee]                                     ; $6805: $f0 $ee
	ld d, e                                          ; $6807: $53
	ldh a, [hLCDCIntHandlerIdx]                                     ; $6808: $f0 $81
	ld e, l                                          ; $680a: $5d
	dec a                                            ; $680b: $3d
	adc l                                            ; $680c: $8d
	and b                                            ; $680d: $a0
	cpl                                              ; $680e: $2f
	ld b, e                                          ; $680f: $43
	db $ed                                           ; $6810: $ed
	ld d, a                                          ; $6811: $57
	xor h                                            ; $6812: $ac
	add a                                            ; $6813: $87
	adc c                                            ; $6814: $89
	ld b, d                                          ; $6815: $42
	xor $2c                                          ; $6816: $ee $2c
	ld l, b                                          ; $6818: $68
	ld b, h                                          ; $6819: $44
	and b                                            ; $681a: $a0
	cpl                                              ; $681b: $2f
	add a                                            ; $681c: $87
	adc c                                            ; $681d: $89
	sub [hl]                                         ; $681e: $96
	pop af                                           ; $681f: $f1
	add hl, sp                                       ; $6820: $39
	ld b, a                                          ; $6821: $47
	ld h, a                                          ; $6822: $67
	ld d, l                                          ; $6823: $55
	add hl, bc                                       ; $6824: $09
	cpl                                              ; $6825: $2f
	ld l, [hl]                                       ; $6826: $6e
	ld [hl], c                                       ; $6827: $71
	ccf                                              ; $6828: $3f
	ldh a, [c]                                       ; $6829: $f2
	ld [hl-], a                                      ; $682a: $32
	pop af                                           ; $682b: $f1
	rst FarCall                                          ; $682c: $f7
	xor $2c                                          ; $682d: $ee $2c
	ld h, d                                          ; $682f: $62
	pop af                                           ; $6830: $f1
	ld c, d                                          ; $6831: $4a
	ld e, l                                          ; $6832: $5d
	ld b, a                                          ; $6833: $47
	ld h, a                                          ; $6834: $67
	ld d, l                                          ; $6835: $55
	add hl, bc                                       ; $6836: $09
	cpl                                              ; $6837: $2f
	ld b, e                                          ; $6838: $43
	db $ed                                           ; $6839: $ed
	ld d, a                                          ; $683a: $57
	xor h                                            ; $683b: $ac
	ldh a, [c]                                       ; $683c: $f2
	ld [hl-], a                                      ; $683d: $32
	pop af                                           ; $683e: $f1
	rst FarCall                                          ; $683f: $f7
	xor $2c                                          ; $6840: $ee $2c
	ld b, d                                          ; $6842: $42
	ld l, b                                          ; $6843: $68
	ld b, h                                          ; $6844: $44
	and b                                            ; $6845: $a0
	cpl                                              ; $6846: $2f
	ldh a, [c]                                       ; $6847: $f2
	ld [hl-], a                                      ; $6848: $32
	pop af                                           ; $6849: $f1
	rst FarCall                                          ; $684a: $f7
	xor $2c                                          ; $684b: $ee $2c
	ld h, d                                          ; $684d: $62
	pop af                                           ; $684e: $f1
	ld c, d                                          ; $684f: $4a
	ld e, l                                          ; $6850: $5d
	ld b, a                                          ; $6851: $47
	ld h, a                                          ; $6852: $67
	ld d, l                                          ; $6853: $55
	add hl, bc                                       ; $6854: $09
	cpl                                              ; $6855: $2f
	ld l, [hl]                                       ; $6856: $6e
	ld [hl], c                                       ; $6857: $71
	ccf                                              ; $6858: $3f
	add a                                            ; $6859: $87
	adc c                                            ; $685a: $89
	sub [hl]                                         ; $685b: $96
	pop af                                           ; $685c: $f1
	add hl, sp                                       ; $685d: $39
	ld b, a                                          ; $685e: $47
	ld h, a                                          ; $685f: $67
	ld d, l                                          ; $6860: $55
	add hl, bc                                       ; $6861: $09
	cpl                                              ; $6862: $2f
	ld [hl-], a                                      ; $6863: $32
	ld e, d                                          ; $6864: $5a
	ld d, h                                          ; $6865: $54
	ld h, d                                          ; $6866: $62
	inc de                                           ; $6867: $13
	pop af                                           ; $6868: $f1
	ld c, d                                          ; $6869: $4a
	ldh a, [$ad]                                     ; $686a: $f0 $ad
	db $ec                                           ; $686c: $ec
	inc c                                            ; $686d: $0c
	ld a, [hl-]                                      ; $686e: $3a
	ld [hl], $33                                     ; $686f: $36 $33
	add hl, bc                                       ; $6871: $09
	cpl                                              ; $6872: $2f
	db $ec                                           ; $6873: $ec
	sub a                                            ; $6874: $97
	ld h, d                                          ; $6875: $62
	pop af                                           ; $6876: $f1
	ld c, d                                          ; $6877: $4a
	ldh a, [$ad]                                     ; $6878: $f0 $ad
	ld d, c                                          ; $687a: $51
	ld c, [hl]                                       ; $687b: $4e
	add hl, bc                                       ; $687c: $09
	cpl                                              ; $687d: $2f
	ld b, e                                          ; $687e: $43
	db $dd                                           ; $687f: $dd
	db $ec                                           ; $6880: $ec
	sub a                                            ; $6881: $97
	ld b, d                                          ; $6882: $42
	inc de                                           ; $6883: $13
	xor $2c                                          ; $6884: $ee $2c
	ld h, d                                          ; $6886: $62
	pop af                                           ; $6887: $f1
	ld c, d                                          ; $6888: $4a
	ld e, l                                          ; $6889: $5d
	ld b, l                                          ; $688a: $45
	add hl, sp                                       ; $688b: $39
	and b                                            ; $688c: $a0
	cpl                                              ; $688d: $2f
	ldh a, [hDisp0_SCX]                                     ; $688e: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $6890: $f0 $85
	add a                                            ; $6892: $87
	adc c                                            ; $6893: $89
	ld h, d                                          ; $6894: $62
	pop af                                           ; $6895: $f1
	ld c, d                                          ; $6896: $4a
	ldh a, [$ad]                                     ; $6897: $f0 $ad
	ld d, c                                          ; $6899: $51
	ld c, [hl]                                       ; $689a: $4e
	add hl, bc                                       ; $689b: $09
	cpl                                              ; $689c: $2f
	ld b, e                                          ; $689d: $43
	db $dd                                           ; $689e: $dd
	ldh a, [hDisp0_SCX]                                     ; $689f: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $68a1: $f0 $85
	add a                                            ; $68a3: $87
	adc c                                            ; $68a4: $89
	ld b, d                                          ; $68a5: $42
	inc de                                           ; $68a6: $13
	xor $2c                                          ; $68a7: $ee $2c
	ld h, d                                          ; $68a9: $62
	pop af                                           ; $68aa: $f1
	ld c, d                                          ; $68ab: $4a
	ld e, l                                          ; $68ac: $5d
	ld b, l                                          ; $68ad: $45
	add hl, sp                                       ; $68ae: $39
	and b                                            ; $68af: $a0
	cpl                                              ; $68b0: $2f
	db $ec                                           ; $68b1: $ec
	xor c                                            ; $68b2: $a9
	ld h, d                                          ; $68b3: $62
	pop af                                           ; $68b4: $f1
	ld c, d                                          ; $68b5: $4a
	ldh a, [$ad]                                     ; $68b6: $f0 $ad
	ld d, c                                          ; $68b8: $51
	ld c, [hl]                                       ; $68b9: $4e
	add hl, bc                                       ; $68ba: $09
	cpl                                              ; $68bb: $2f
	ld b, e                                          ; $68bc: $43
	db $dd                                           ; $68bd: $dd
	db $ec                                           ; $68be: $ec
	xor c                                            ; $68bf: $a9
	ld b, d                                          ; $68c0: $42
	inc de                                           ; $68c1: $13
	xor $2c                                          ; $68c2: $ee $2c
	ld h, d                                          ; $68c4: $62
	pop af                                           ; $68c5: $f1
	ld c, d                                          ; $68c6: $4a
	ld e, l                                          ; $68c7: $5d
	ld b, l                                          ; $68c8: $45
	add hl, sp                                       ; $68c9: $39
	and b                                            ; $68ca: $a0
	cpl                                              ; $68cb: $2f
	ld [hl-], a                                      ; $68cc: $32
	ld e, d                                          ; $68cd: $5a
	ld d, h                                          ; $68ce: $54
	ld b, d                                          ; $68cf: $42
	inc de                                           ; $68d0: $13
	xor $2c                                          ; $68d1: $ee $2c
	ld h, d                                          ; $68d3: $62
	pop af                                           ; $68d4: $f1
	ld c, d                                          ; $68d5: $4a
	ld e, l                                          ; $68d6: $5d
	ld b, l                                          ; $68d7: $45
	add hl, sp                                       ; $68d8: $39
	inc a                                            ; $68d9: $3c
	ld a, [hl-]                                      ; $68da: $3a
	ld [hl], $33                                     ; $68db: $36 $33
	add hl, bc                                       ; $68dd: $09
	cpl                                              ; $68de: $2f
	ld l, l                                          ; $68df: $6d
	ldh a, [hDisp0_BGP]                                     ; $68e0: $f0 $85
	pop af                                           ; $68e2: $f1
	ld a, l                                          ; $68e3: $7d
	ldh a, [hDisp0_LCDC]                                     ; $68e4: $f0 $82
	ld b, d                                          ; $68e6: $42
	xor $2c                                          ; $68e7: $ee $2c
	ld h, d                                          ; $68e9: $62
	pop af                                           ; $68ea: $f1
	ld c, d                                          ; $68eb: $4a
	ld e, l                                          ; $68ec: $5d
	ld c, [hl]                                       ; $68ed: $4e
	add hl, bc                                       ; $68ee: $09
	cpl                                              ; $68ef: $2f
	ld b, e                                          ; $68f0: $43
	db $dd                                           ; $68f1: $dd
	ld l, l                                          ; $68f2: $6d
	ldh a, [hDisp0_BGP]                                     ; $68f3: $f0 $85
	pop af                                           ; $68f5: $f1
	ld a, l                                          ; $68f6: $7d
	ldh a, [hDisp0_LCDC]                                     ; $68f7: $f0 $82
	ld b, d                                          ; $68f9: $42
	inc de                                           ; $68fa: $13
	xor $2c                                          ; $68fb: $ee $2c
	ld h, d                                          ; $68fd: $62
	pop af                                           ; $68fe: $f1
	ld c, d                                          ; $68ff: $4a
	ld e, l                                          ; $6900: $5d
	ld b, l                                          ; $6901: $45
	add hl, sp                                       ; $6902: $39
	and b                                            ; $6903: $a0
	cpl                                              ; $6904: $2f
	ldh a, [hDisp0_SCX]                                     ; $6905: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $6907: $f0 $85
	pop af                                           ; $6909: $f1
	ld a, l                                          ; $690a: $7d
	ldh a, [hDisp0_LCDC]                                     ; $690b: $f0 $82
	ld b, d                                          ; $690d: $42
	xor $2c                                          ; $690e: $ee $2c
	ld h, d                                          ; $6910: $62
	pop af                                           ; $6911: $f1
	ld c, d                                          ; $6912: $4a
	ld e, l                                          ; $6913: $5d
	ld c, [hl]                                       ; $6914: $4e
	add hl, bc                                       ; $6915: $09
	cpl                                              ; $6916: $2f
	ld b, e                                          ; $6917: $43
	db $dd                                           ; $6918: $dd
	ldh a, [hDisp0_SCX]                                     ; $6919: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $691b: $f0 $85
	pop af                                           ; $691d: $f1
	ld a, l                                          ; $691e: $7d
	ldh a, [hDisp0_LCDC]                                     ; $691f: $f0 $82
	ld b, d                                          ; $6921: $42
	inc de                                           ; $6922: $13
	xor $2c                                          ; $6923: $ee $2c
	ld h, d                                          ; $6925: $62
	pop af                                           ; $6926: $f1
	ld c, d                                          ; $6927: $4a
	ld e, l                                          ; $6928: $5d
	ld b, l                                          ; $6929: $45
	add hl, sp                                       ; $692a: $39
	and b                                            ; $692b: $a0
	cpl                                              ; $692c: $2f
	pop af                                           ; $692d: $f1
	ld [hl], e                                       ; $692e: $73
	ldh a, [hDisp0_BGP]                                     ; $692f: $f0 $85
	pop af                                           ; $6931: $f1
	ld a, l                                          ; $6932: $7d
	ldh a, [hDisp0_LCDC]                                     ; $6933: $f0 $82
	ld b, d                                          ; $6935: $42
	xor $2c                                          ; $6936: $ee $2c
	ld h, d                                          ; $6938: $62
	pop af                                           ; $6939: $f1
	ld c, d                                          ; $693a: $4a
	ld e, l                                          ; $693b: $5d
	ld c, [hl]                                       ; $693c: $4e
	add hl, bc                                       ; $693d: $09
	cpl                                              ; $693e: $2f
	ld b, e                                          ; $693f: $43
	db $dd                                           ; $6940: $dd
	pop af                                           ; $6941: $f1
	ld [hl], e                                       ; $6942: $73
	ldh a, [hDisp0_BGP]                                     ; $6943: $f0 $85
	pop af                                           ; $6945: $f1
	ld a, l                                          ; $6946: $7d
	ldh a, [hDisp0_LCDC]                                     ; $6947: $f0 $82
	ld b, d                                          ; $6949: $42
	inc de                                           ; $694a: $13
	xor $2c                                          ; $694b: $ee $2c
	ld h, d                                          ; $694d: $62
	pop af                                           ; $694e: $f1
	ld c, d                                          ; $694f: $4a
	ld e, l                                          ; $6950: $5d
	ld b, l                                          ; $6951: $45
	add hl, sp                                       ; $6952: $39
	and b                                            ; $6953: $a0
	cpl                                              ; $6954: $2f
	pop af                                           ; $6955: $f1
	add hl, de                                       ; $6956: $19
	pop af                                           ; $6957: $f1
	dec c                                            ; $6958: $0d
	ldh a, [rSVBK]                                   ; $6959: $f0 $70
	ld h, d                                          ; $695b: $62
	ldh a, [rAUD3LEVEL]                              ; $695c: $f0 $1c
	ldh a, [$db]                                     ; $695e: $f0 $db
	ld d, c                                          ; $6960: $51
	add hl, bc                                       ; $6961: $09
	cpl                                              ; $6962: $2f
	ld b, e                                          ; $6963: $43
	halt                                             ; $6964: $76
	ld c, e                                          ; $6965: $4b
	inc [hl]                                         ; $6966: $34
	pop af                                           ; $6967: $f1
	add hl, de                                       ; $6968: $19
	pop af                                           ; $6969: $f1
	dec c                                            ; $696a: $0d
	ldh a, [rSVBK]                                   ; $696b: $f0 $70
	ld b, d                                          ; $696d: $42
	ldh a, [$ee]                                     ; $696e: $f0 $ee
	ld h, d                                          ; $6970: $62
	inc de                                           ; $6971: $13
	ldh a, [rAUD3LEVEL]                              ; $6972: $f0 $1c
	ldh a, [$db]                                     ; $6974: $f0 $db
	ld b, b                                          ; $6976: $40
	add hl, sp                                       ; $6977: $39
	and b                                            ; $6978: $a0
	cpl                                              ; $6979: $2f
	di                                               ; $697a: $f3
	ld h, $f2                                        ; $697b: $26 $f2
	xor a                                            ; $697d: $af
	ldh a, [rHDMA3]                                  ; $697e: $f0 $53
	pop af                                           ; $6980: $f1
	ld a, [hl+]                                      ; $6981: $2a
	xor $17                                          ; $6982: $ee $17
	pop af                                           ; $6984: $f1
	ld c, [hl]                                       ; $6985: $4e
	ld h, d                                          ; $6986: $62
	ldh a, [rAUD3LEVEL]                              ; $6987: $f0 $1c
	ldh a, [$db]                                     ; $6989: $f0 $db
	ld d, c                                          ; $698b: $51
	add hl, bc                                       ; $698c: $09
	cpl                                              ; $698d: $2f
	ld b, e                                          ; $698e: $43
	halt                                             ; $698f: $76
	ld c, e                                          ; $6990: $4b
	inc [hl]                                         ; $6991: $34
	di                                               ; $6992: $f3
	ld h, $f2                                        ; $6993: $26 $f2
	xor a                                            ; $6995: $af
	ldh a, [rHDMA3]                                  ; $6996: $f0 $53
	pop af                                           ; $6998: $f1
	ld a, [hl+]                                      ; $6999: $2a
	ld b, d                                          ; $699a: $42
	inc de                                           ; $699b: $13
	xor $17                                          ; $699c: $ee $17
	pop af                                           ; $699e: $f1
	ld c, [hl]                                       ; $699f: $4e
	ld h, d                                          ; $69a0: $62
	ldh a, [rAUD3LEVEL]                              ; $69a1: $f0 $1c
	ldh a, [$db]                                     ; $69a3: $f0 $db
	ld b, b                                          ; $69a5: $40
	add hl, sp                                       ; $69a6: $39
	and b                                            ; $69a7: $a0
	cpl                                              ; $69a8: $2f
	ldh a, [$7a]                                     ; $69a9: $f0 $7a
	ldh a, [rSVBK]                                   ; $69ab: $f0 $70
	ld b, d                                          ; $69ad: $42
	ldh a, [$ee]                                     ; $69ae: $f0 $ee
	ld h, d                                          ; $69b0: $62
	ldh a, [rAUD3LEVEL]                              ; $69b1: $f0 $1c
	ldh a, [$db]                                     ; $69b3: $f0 $db
	ld d, c                                          ; $69b5: $51
	add hl, bc                                       ; $69b6: $09
	cpl                                              ; $69b7: $2f
	ld b, e                                          ; $69b8: $43
	halt                                             ; $69b9: $76
	ld c, e                                          ; $69ba: $4b
	inc [hl]                                         ; $69bb: $34
	ldh a, [$7a]                                     ; $69bc: $f0 $7a
	ldh a, [rSVBK]                                   ; $69be: $f0 $70
	ld b, a                                          ; $69c0: $47
	ld a, [hl-]                                      ; $69c1: $3a
	ld c, [hl]                                       ; $69c2: $4e
	di                                               ; $69c3: $f3
	ld b, e                                          ; $69c4: $43
	xor h                                            ; $69c5: $ac
	db $ed                                           ; $69c6: $ed
	cp d                                             ; $69c7: $ba
	db $ed                                           ; $69c8: $ed
	sub b                                            ; $69c9: $90
	ld a, $45                                        ; $69ca: $3e $45
	add hl, sp                                       ; $69cc: $39
	and b                                            ; $69cd: $a0
	cpl                                              ; $69ce: $2f
	ldh a, [$99]                                     ; $69cf: $f0 $99
	sub b                                            ; $69d1: $90
	ldh a, [rSVBK]                                   ; $69d2: $f0 $70
	ld b, d                                          ; $69d4: $42
	ldh a, [$ee]                                     ; $69d5: $f0 $ee
	ld h, d                                          ; $69d7: $62
	ldh a, [rAUD3LEVEL]                              ; $69d8: $f0 $1c
	ldh a, [$db]                                     ; $69da: $f0 $db
	ld d, c                                          ; $69dc: $51
	add hl, bc                                       ; $69dd: $09
	cpl                                              ; $69de: $2f
	ld b, e                                          ; $69df: $43
	halt                                             ; $69e0: $76
	ld c, e                                          ; $69e1: $4b
	inc [hl]                                         ; $69e2: $34
	ldh a, [$99]                                     ; $69e3: $f0 $99
	sub b                                            ; $69e5: $90
	ldh a, [rSVBK]                                   ; $69e6: $f0 $70
	ld b, a                                          ; $69e8: $47
	ld a, [hl-]                                      ; $69e9: $3a
	ld c, [hl]                                       ; $69ea: $4e
	di                                               ; $69eb: $f3
	ld b, e                                          ; $69ec: $43
	inc de                                           ; $69ed: $13
	db $ed                                           ; $69ee: $ed
	cp d                                             ; $69ef: $ba
	db $ed                                           ; $69f0: $ed
	sub b                                            ; $69f1: $90
	ld a, $45                                        ; $69f2: $3e $45
	add hl, sp                                       ; $69f4: $39
	and b                                            ; $69f5: $a0
	cpl                                              ; $69f6: $2f
	ld b, e                                          ; $69f7: $43
	pop af                                           ; $69f8: $f1
	dec d                                            ; $69f9: $15
	ld c, l                                          ; $69fa: $4d
	ldh a, [$2c]                                     ; $69fb: $f0 $2c
	ld c, e                                          ; $69fd: $4b
	ldh a, [rAUD1LOW]                                ; $69fe: $f0 $13
	jr c, jr_096_6a40                                ; $6a00: $38 $3e

	inc de                                           ; $6a02: $13
	xor $2c                                          ; $6a03: $ee $2c
	ldh a, [rHDMA3]                                  ; $6a05: $f0 $53
	ldh a, [$30]                                     ; $6a07: $f0 $30
	ldh a, [$5a]                                     ; $6a09: $f0 $5a
	db $ec                                           ; $6a0b: $ec
	rlca                                             ; $6a0c: $07
	and b                                            ; $6a0d: $a0
	cpl                                              ; $6a0e: $2f
	ld b, e                                          ; $6a0f: $43
	ldh a, [rOBP1]                                   ; $6a10: $f0 $49
	ldh a, [$7f]                                     ; $6a12: $f0 $7f
	ld h, d                                          ; $6a14: $62
	sub h                                            ; $6a15: $94
	ld a, $3f                                        ; $6a16: $3e $3f
	inc de                                           ; $6a18: $13
	sub d                                            ; $6a19: $92
	adc [hl]                                         ; $6a1a: $8e
	ld c, [hl]                                       ; $6a1b: $4e
	sub a                                            ; $6a1c: $97
	ld e, c                                          ; $6a1d: $59
	and b                                            ; $6a1e: $a0
	cpl                                              ; $6a1f: $2f
	ld b, e                                          ; $6a20: $43
	db $ed                                           ; $6a21: $ed
	ld h, e                                          ; $6a22: $63
	pop af                                           ; $6a23: $f1
	xor l                                            ; $6a24: $ad
	pop af                                           ; $6a25: $f1
	and l                                            ; $6a26: $a5
	ld c, e                                          ; $6a27: $4b
	xor h                                            ; $6a28: $ac
	ldh a, [$e5]                                     ; $6a29: $f0 $e5
	ldh a, [rLYC]                                    ; $6a2b: $f0 $45
	pop af                                           ; $6a2d: $f1
	inc l                                            ; $6a2e: $2c
	ld l, b                                          ; $6a2f: $68
	inc a                                            ; $6a30: $3c
	ld c, b                                          ; $6a31: $48
	and b                                            ; $6a32: $a0
	cpl                                              ; $6a33: $2f
	ld b, e                                          ; $6a34: $43
	db $eb                                           ; $6a35: $eb
	rrca                                             ; $6a36: $0f
	ld b, h                                          ; $6a37: $44
	scf                                              ; $6a38: $37
	inc de                                           ; $6a39: $13
	ldh a, [rTMA]                                    ; $6a3a: $f0 $06
	pop af                                           ; $6a3c: $f1
	inc h                                            ; $6a3d: $24
	ld c, e                                          ; $6a3e: $4b
	ld c, a                                          ; $6a3f: $4f

jr_096_6a40:
	ld d, b                                          ; $6a40: $50
	dec sp                                           ; $6a41: $3b
	dec a                                            ; $6a42: $3d
	adc l                                            ; $6a43: $8d
	and d                                            ; $6a44: $a2
	cpl                                              ; $6a45: $2f
	ld b, e                                          ; $6a46: $43
	db $ec                                           ; $6a47: $ec
	sbc c                                            ; $6a48: $99
	ld c, d                                          ; $6a49: $4a
	ld e, h                                          ; $6a4a: $5c
	dec a                                            ; $6a4b: $3d
	scf                                              ; $6a4c: $37
	inc de                                           ; $6a4d: $13
	ld d, h                                          ; $6a4e: $54
	ld c, l                                          ; $6a4f: $4d
	ld a, [hl-]                                      ; $6a50: $3a
	ld d, b                                          ; $6a51: $50
	add a                                            ; $6a52: $87
	ldh a, [$5b]                                     ; $6a53: $f0 $5b
	ldh a, [$5e]                                     ; $6a55: $f0 $5e
	ld b, h                                          ; $6a57: $44
	ld e, a                                          ; $6a58: $5f
	add hl, sp                                       ; $6a59: $39
	and b                                            ; $6a5a: $a0
	cpl                                              ; $6a5b: $2f
	ld b, e                                          ; $6a5c: $43
	db $eb                                           ; $6a5d: $eb
	rst SubAFromDE                                          ; $6a5e: $df
	ld d, c                                          ; $6a5f: $51
	ld c, l                                          ; $6a60: $4d
	ld d, c                                          ; $6a61: $51
	ld c, l                                          ; $6a62: $4d
	ld c, d                                          ; $6a63: $4a
	xor h                                            ; $6a64: $ac
	ldh a, [rTMA]                                    ; $6a65: $f0 $06
	pop af                                           ; $6a67: $f1
	inc h                                            ; $6a68: $24
	ld c, d                                          ; $6a69: $4a
	ld e, h                                          ; $6a6a: $5c
	ld c, [hl]                                       ; $6a6b: $4e
	inc a                                            ; $6a6c: $3c
	ld e, d                                          ; $6a6d: $5a
	add hl, sp                                       ; $6a6e: $39
	inc a                                            ; $6a6f: $3c
	xor h                                            ; $6a70: $ac
	ld h, e                                          ; $6a71: $63
	inc a                                            ; $6a72: $3c
	ld d, b                                          ; $6a73: $50
	ld a, [hl-]                                      ; $6a74: $3a
	jr c, jr_096_6ab1                                ; $6a75: $38 $3a

	xor b                                            ; $6a77: $a8
	ld c, a                                          ; $6a78: $4f
	add hl, sp                                       ; $6a79: $39
	ldh a, [rHDMA4]                                  ; $6a7a: $f0 $54
	ld a, $f0                                        ; $6a7c: $3e $f0
	db $dd                                           ; $6a7e: $dd
	ldh a, [$9c]                                     ; $6a7f: $f0 $9c
	ld a, $3f                                        ; $6a81: $3e $3f
	jr c, jr_096_6ad2                                ; $6a83: $38 $4d

	ld a, e                                          ; $6a85: $7b
	ld c, b                                          ; $6a86: $48
	and b                                            ; $6a87: $a0
	cpl                                              ; $6a88: $2f
	ld b, e                                          ; $6a89: $43
	ret                                              ; $6a8a: $c9


	ld b, h                                          ; $6a8b: $44
	ld [hl], c                                       ; $6a8c: $71
	ld b, h                                          ; $6a8d: $44
	dec sp                                           ; $6a8e: $3b
	dec a                                            ; $6a8f: $3d
	ld a, [hl-]                                      ; $6a90: $3a
	xor b                                            ; $6a91: $a8
	ld c, a                                          ; $6a92: $4f
	dec sp                                           ; $6a93: $3b
	ld c, c                                          ; $6a94: $49
	ldh a, [$dd]                                     ; $6a95: $f0 $dd
	ldh a, [$9c]                                     ; $6a97: $f0 $9c
	ld a, $3f                                        ; $6a99: $3e $3f
	jr c, jr_096_6aea                                ; $6a9b: $38 $4d

	ld a, e                                          ; $6a9d: $7b
	ld c, b                                          ; $6a9e: $48
	and b                                            ; $6a9f: $a0
	cpl                                              ; $6aa0: $2f
	ld b, e                                          ; $6aa1: $43
	db $ed                                           ; $6aa2: $ed
	ld e, [hl]                                       ; $6aa3: $5e
	ld b, h                                          ; $6aa4: $44
	ld [hl], c                                       ; $6aa5: $71
	ld b, h                                          ; $6aa6: $44
	dec sp                                           ; $6aa7: $3b
	dec a                                            ; $6aa8: $3d
	xor b                                            ; $6aa9: $a8
	ld c, a                                          ; $6aaa: $4f
	dec sp                                           ; $6aab: $3b
	ld c, c                                          ; $6aac: $49
	ldh a, [$dd]                                     ; $6aad: $f0 $dd
	ldh a, [$9c]                                     ; $6aaf: $f0 $9c

jr_096_6ab1:
	ld a, $3f                                        ; $6ab1: $3e $3f
	jr c, jr_096_6b02                                ; $6ab3: $38 $4d

	ld a, e                                          ; $6ab5: $7b
	ld c, b                                          ; $6ab6: $48
	and b                                            ; $6ab7: $a0
	cpl                                              ; $6ab8: $2f
	ld b, e                                          ; $6ab9: $43
	ld c, a                                          ; $6aba: $4f
	add hl, sp                                       ; $6abb: $39
	ld b, h                                          ; $6abc: $44
	ld [hl], c                                       ; $6abd: $71
	ld b, h                                          ; $6abe: $44
	ld e, c                                          ; $6abf: $59
	scf                                              ; $6ac0: $37
	inc de                                           ; $6ac1: $13
	ldh a, [rSVBK]                                   ; $6ac2: $f0 $70
	inc [hl]                                         ; $6ac4: $34
	ld a, d                                          ; $6ac5: $7a
	dec sp                                           ; $6ac6: $3b
	ccf                                              ; $6ac7: $3f
	ldh a, [c]                                       ; $6ac8: $f2
	ld l, c                                          ; $6ac9: $69
	ld b, l                                          ; $6aca: $45
	ld c, b                                          ; $6acb: $48
	and b                                            ; $6acc: $a0
	cpl                                              ; $6acd: $2f
	ld b, e                                          ; $6ace: $43
	db $ec                                           ; $6acf: $ec
	reti                                             ; $6ad0: $d9


	xor h                                            ; $6ad1: $ac

jr_096_6ad2:
	pop af                                           ; $6ad2: $f1
	ld [$3e7f], a                                    ; $6ad3: $ea $7f $3e
	ccf                                              ; $6ad6: $3f
	ld c, [hl]                                       ; $6ad7: $4e
	inc a                                            ; $6ad8: $3c
	ld d, b                                          ; $6ad9: $50
	xor h                                            ; $6ada: $ac
	ldh a, [$75]                                     ; $6adb: $f0 $75
	adc h                                            ; $6add: $8c
	ld d, e                                          ; $6ade: $53
	ldh a, [$5c]                                     ; $6adf: $f0 $5c
	inc a                                            ; $6ae1: $3c
	dec sp                                           ; $6ae2: $3b
	dec a                                            ; $6ae3: $3d
	ld b, d                                          ; $6ae4: $42
	inc a                                            ; $6ae5: $3c
	ld a, [hl-]                                      ; $6ae6: $3a
	ld [hl], h                                       ; $6ae7: $74
	ld c, b                                          ; $6ae8: $48
	and b                                            ; $6ae9: $a0

jr_096_6aea:
	cpl                                              ; $6aea: $2f
	ld b, e                                          ; $6aeb: $43
	db $ec                                           ; $6aec: $ec
	reti                                             ; $6aed: $d9


	xor h                                            ; $6aee: $ac
	pop af                                           ; $6aef: $f1
	inc hl                                           ; $6af0: $23
	ld a, l                                          ; $6af1: $7d
	ldh a, [$1f]                                     ; $6af2: $f0 $1f
	ld e, c                                          ; $6af4: $59
	sub l                                            ; $6af5: $95
	ld b, h                                          ; $6af6: $44
	inc a                                            ; $6af7: $3c
	ld d, b                                          ; $6af8: $50
	xor h                                            ; $6af9: $ac
	ldh a, [$75]                                     ; $6afa: $f0 $75
	adc h                                            ; $6afc: $8c
	ld d, e                                          ; $6afd: $53
	ldh a, [$5c]                                     ; $6afe: $f0 $5c
	inc a                                            ; $6b00: $3c
	dec sp                                           ; $6b01: $3b

jr_096_6b02:
	dec a                                            ; $6b02: $3d
	ld b, d                                          ; $6b03: $42
	inc a                                            ; $6b04: $3c
	ld a, [hl-]                                      ; $6b05: $3a
	ld [hl], h                                       ; $6b06: $74
	ld c, b                                          ; $6b07: $48
	and b                                            ; $6b08: $a0
	cpl                                              ; $6b09: $2f
	ld b, e                                          ; $6b0a: $43
	db $eb                                           ; $6b0b: $eb
	inc a                                            ; $6b0c: $3c
	xor h                                            ; $6b0d: $ac
	add sp, -$38                                     ; $6b0e: $e8 $c8
	and b                                            ; $6b10: $a0
	cpl                                              ; $6b11: $2f
	ld [$ac10], a                                    ; $6b12: $ea $10 $ac
	jp hl                                            ; $6b15: $e9


	add l                                            ; $6b16: $85
	add hl, bc                                       ; $6b17: $09
	cpl                                              ; $6b18: $2f
	ld [$0912], a                                    ; $6b19: $ea $12 $09
	cpl                                              ; $6b1c: $2f
	jp hl                                            ; $6b1d: $e9


	add [hl]                                         ; $6b1e: $86
	add hl, bc                                       ; $6b1f: $09
	cpl                                              ; $6b20: $2f
	ld b, e                                          ; $6b21: $43
	db $eb                                           ; $6b22: $eb
	dec a                                            ; $6b23: $3d
	inc de                                           ; $6b24: $13
	ld [$a011], a                                    ; $6b25: $ea $11 $a0
	add hl, bc                                       ; $6b28: $09
	cpl                                              ; $6b29: $2f
	ld b, e                                          ; $6b2a: $43
	db $ed                                           ; $6b2b: $ed
	ld d, a                                          ; $6b2c: $57
	db $ed                                           ; $6b2d: $ed
	sbc l                                            ; $6b2e: $9d
	pop af                                           ; $6b2f: $f1
	inc e                                            ; $6b30: $1c
	ld b, h                                          ; $6b31: $44
	xor b                                            ; $6b32: $a8
	ld e, d                                          ; $6b33: $5a
	ld b, d                                          ; $6b34: $42
	pop af                                           ; $6b35: $f1
	db $10                                           ; $6b36: $10
	pop af                                           ; $6b37: $f1
	ld [$f147], sp                                   ; $6b38: $08 $47 $f1
	add hl, bc                                       ; $6b3b: $09
	pop af                                           ; $6b3c: $f1
	cp $ec                                           ; $6b3d: $fe $ec
	inc c                                            ; $6b3f: $0c
	ld a, [hl-]                                      ; $6b40: $3a
	and b                                            ; $6b41: $a0
	cpl                                              ; $6b42: $2f
	pop af                                           ; $6b43: $f1
	inc l                                            ; $6b44: $2c
	pop af                                           ; $6b45: $f1
	sbc [hl]                                         ; $6b46: $9e
	pop af                                           ; $6b47: $f1
	sbc [hl]                                         ; $6b48: $9e
	di                                               ; $6b49: $f3
	ld a, [hl+]                                      ; $6b4a: $2a
	pop af                                           ; $6b4b: $f1
	db $10                                           ; $6b4c: $10
	pop af                                           ; $6b4d: $f1
	ld b, e                                          ; $6b4e: $43
	add hl, bc                                       ; $6b4f: $09
	cpl                                              ; $6b50: $2f
	ldh a, [hDisp0_SCX]                                     ; $6b51: $f0 $84
	add h                                            ; $6b53: $84
	pop af                                           ; $6b54: $f1
	ld [hl], e                                       ; $6b55: $73
	di                                               ; $6b56: $f3
	ei                                               ; $6b57: $fb
	add hl, bc                                       ; $6b58: $09
	cpl                                              ; $6b59: $2f
	ldh a, [$34]                                     ; $6b5a: $f0 $34
	ld b, d                                          ; $6b5c: $42
	pop af                                           ; $6b5d: $f1
	db $10                                           ; $6b5e: $10
	pop af                                           ; $6b5f: $f1
	ld [$5147], sp                                   ; $6b60: $08 $47 $51
	ld c, [hl]                                       ; $6b63: $4e
	add hl, bc                                       ; $6b64: $09
	cpl                                              ; $6b65: $2f
	add e                                            ; $6b66: $83
	add c                                            ; $6b67: $81
	ld e, c                                          ; $6b68: $59
	ld h, l                                          ; $6b69: $65
	ldh a, [rP1]                                     ; $6b6a: $f0 $00
	ld [hl], l                                       ; $6b6c: $75
	ld e, c                                          ; $6b6d: $59
	add hl, bc                                       ; $6b6e: $09
	cpl                                              ; $6b6f: $2f
	push af                                          ; $6b70: $f5
	ld [$5ff1], sp                                   ; $6b71: $08 $f1 $5f
	ld e, h                                          ; $6b74: $5c
	add hl, bc                                       ; $6b75: $09
	cpl                                              ; $6b76: $2f
	ldh a, [$34]                                     ; $6b77: $f0 $34
	ld b, d                                          ; $6b79: $42
	pop af                                           ; $6b7a: $f1
	db $10                                           ; $6b7b: $10
	pop af                                           ; $6b7c: $f1
	ld [$5147], sp                                   ; $6b7d: $08 $47 $51
	ld c, [hl]                                       ; $6b80: $4e
	add hl, bc                                       ; $6b81: $09
	cpl                                              ; $6b82: $2f
	ld b, e                                          ; $6b83: $43
	db $dd                                           ; $6b84: $dd
	ldh a, [$8e]                                     ; $6b85: $f0 $8e
	ldh a, [c]                                       ; $6b87: $f2
	daa                                              ; $6b88: $27
	ld e, c                                          ; $6b89: $59
	sub e                                            ; $6b8a: $93
	ldh a, [$f1]                                     ; $6b8b: $f0 $f1
	ld h, l                                          ; $6b8d: $65
	add e                                            ; $6b8e: $83
	ld b, h                                          ; $6b8f: $44
	xor b                                            ; $6b90: $a8
	db $ec                                           ; $6b91: $ec
	sbc c                                            ; $6b92: $99
	inc [hl]                                         ; $6b93: $34
	ld e, h                                          ; $6b94: $5c
	ld [hl], c                                       ; $6b95: $71
	ccf                                              ; $6b96: $3f
	ld l, [hl]                                       ; $6b97: $6e
	ld c, [hl]                                       ; $6b98: $4e
	sub a                                            ; $6b99: $97
	and b                                            ; $6b9a: $a0
	cpl                                              ; $6b9b: $2f
	ld b, e                                          ; $6b9c: $43
	ldh a, [$8e]                                     ; $6b9d: $f0 $8e
	ldh a, [c]                                       ; $6b9f: $f2
	daa                                              ; $6ba0: $27
	ld e, c                                          ; $6ba1: $59
	sub e                                            ; $6ba2: $93
	ldh a, [$f1]                                     ; $6ba3: $f0 $f1
	ld h, l                                          ; $6ba5: $65
	add e                                            ; $6ba6: $83
	ld c, a                                          ; $6ba7: $4f
	inc de                                           ; $6ba8: $13
	di                                               ; $6ba9: $f3
	ld b, d                                          ; $6baa: $42
	ccf                                              ; $6bab: $3f
	dec a                                            ; $6bac: $3d
	ld c, a                                          ; $6bad: $4f
	ld b, c                                          ; $6bae: $41
	db $ec                                           ; $6baf: $ec
	ret c                                            ; $6bb0: $d8

	ld a, [hl-]                                      ; $6bb1: $3a
	and b                                            ; $6bb2: $a0
	cpl                                              ; $6bb3: $2f
	ld b, e                                          ; $6bb4: $43
	ld b, l                                          ; $6bb5: $45
	ld a, $ac                                        ; $6bb6: $3e $ac
	ldh a, [$d6]                                     ; $6bb8: $f0 $d6
	ld c, e                                          ; $6bba: $4b
	add sp, $04                                      ; $6bbb: $e8 $04
	ld b, h                                          ; $6bbd: $44
	and b                                            ; $6bbe: $a0
	xor $10                                          ; $6bbf: $ee $10

jr_096_6bc1:
	and b                                            ; $6bc1: $a0
	ld b, [hl]                                       ; $6bc2: $46
	dec sp                                           ; $6bc3: $3b
	ld c, b                                          ; $6bc4: $48
	dec [hl]                                         ; $6bc5: $35

jr_096_6bc6:
	ld b, [hl]                                       ; $6bc6: $46
	ld a, [hl-]                                      ; $6bc7: $3a
	dec a                                            ; $6bc8: $3d
	ld c, c                                          ; $6bc9: $49
	ld a, [hl-]                                      ; $6bca: $3a
	ld b, d                                          ; $6bcb: $42
	ld c, b                                          ; $6bcc: $48
	and c                                            ; $6bcd: $a1
	db $eb                                           ; $6bce: $eb
	sub [hl]                                         ; $6bcf: $96
	and b                                            ; $6bd0: $a0
	xor $1e                                          ; $6bd1: $ee $1e
	xor h                                            ; $6bd3: $ac
	db $ec                                           ; $6bd4: $ec
	jr jr_096_6bc1                                   ; $6bd5: $18 $ea

	or [hl]                                          ; $6bd7: $b6
	and b                                            ; $6bd8: $a0
	db $ec                                           ; $6bd9: $ec
	jr jr_096_6bc6                                   ; $6bda: $18 $ea

	or [hl]                                          ; $6bdc: $b6
	and b                                            ; $6bdd: $a0
	ld l, a                                          ; $6bde: $6f
	ld b, a                                          ; $6bdf: $47
	di                                               ; $6be0: $f3
	ld b, h                                          ; $6be1: $44
	ld c, l                                          ; $6be2: $4d
	ld d, b                                          ; $6be3: $50
	ld c, l                                          ; $6be4: $4d
	ld c, [hl]                                       ; $6be5: $4e
	ld a, [hl-]                                      ; $6be6: $3a
	ld b, c                                          ; $6be7: $41
	ccf                                              ; $6be8: $3f
	inc de                                           ; $6be9: $13
	di                                               ; $6bea: $f3
	add c                                            ; $6beb: $81
	pop af                                           ; $6bec: $f1
	sub d                                            ; $6bed: $92
	ld b, a                                          ; $6bee: $47
	ld a, [hl-]                                      ; $6bef: $3a
	jr c, jr_096_6c46                                ; $6bf0: $38 $54

	ld c, c                                          ; $6bf2: $49
	ld b, l                                          ; $6bf3: $45
	and b                                            ; $6bf4: $a0
	ld b, [hl]                                       ; $6bf5: $46
	ld a, [hl-]                                      ; $6bf6: $3a
	dec a                                            ; $6bf7: $3d
	xor h                                            ; $6bf8: $ac
	ld d, h                                          ; $6bf9: $54
	ld b, c                                          ; $6bfa: $41
	ld a, [hl-]                                      ; $6bfb: $3a
	ld d, h                                          ; $6bfc: $54
	ld c, c                                          ; $6bfd: $49
	adc e                                            ; $6bfe: $8b
	ld e, h                                          ; $6bff: $5c
	ld a, [hl-]                                      ; $6c00: $3a
	ld b, d                                          ; $6c01: $42
	and c                                            ; $6c02: $a1
	db $ec                                           ; $6c03: $ec
	db $10                                           ; $6c04: $10
	jr c, jr_096_6c3f                                ; $6c05: $38 $38

	ld h, e                                          ; $6c07: $63
	xor h                                            ; $6c08: $ac
	ld d, h                                          ; $6c09: $54
	ld d, h                                          ; $6c0a: $54
	ld c, d                                          ; $6c0b: $4a
	ldh a, [$ce]                                     ; $6c0c: $f0 $ce
	ld d, a                                          ; $6c0e: $57
	ld b, a                                          ; $6c0f: $47
	ld a, $52                                        ; $6c10: $3e $52
	ld a, $66                                        ; $6c12: $3e $66
	add hl, sp                                       ; $6c14: $39
	and b                                            ; $6c15: $a0
	cpl                                              ; $6c16: $2f
	ld [hl-], a                                      ; $6c17: $32
	ld b, [hl]                                       ; $6c18: $46
	ld b, [hl]                                       ; $6c19: $46
	db $ed                                           ; $6c1a: $ed
	xor l                                            ; $6c1b: $ad
	ld c, d                                          ; $6c1c: $4a
	xor h                                            ; $6c1d: $ac
	ld a, d                                          ; $6c1e: $7a
	dec sp                                           ; $6c1f: $3b
	ld h, c                                          ; $6c20: $61
	ld d, [hl]                                       ; $6c21: $56
	dec sp                                           ; $6c22: $3b
	dec a                                            ; $6c23: $3d
	ld b, l                                          ; $6c24: $45
	and e                                            ; $6c25: $a3
	ld [hl], l                                       ; $6c26: $75
	ld [hl], e                                       ; $6c27: $73
	ldh a, [$f2]                                     ; $6c28: $f0 $f2
	ldh a, [$f1]                                     ; $6c2a: $f0 $f1
	ld h, l                                          ; $6c2c: $65
	add e                                            ; $6c2d: $83
	xor b                                            ; $6c2e: $a8
	ld e, b                                          ; $6c2f: $58
	ld b, [hl]                                       ; $6c30: $46
	inc [hl]                                         ; $6c31: $34
	di                                               ; $6c32: $f3
	add b                                            ; $6c33: $80
	ld d, a                                          ; $6c34: $57
	ld d, d                                          ; $6c35: $52
	ld a, $66                                        ; $6c36: $3e $66
	add hl, sp                                       ; $6c38: $39
	and b                                            ; $6c39: $a0
	ldh a, [rAUD3ENA]                                ; $6c3a: $f0 $1a
	pop af                                           ; $6c3c: $f1
	dec [hl]                                         ; $6c3d: $35
	ld a, l                                          ; $6c3e: $7d

jr_096_6c3f:
	xor b                                            ; $6c3f: $a8
	ld l, d                                          ; $6c40: $6a
	ldh a, [$0d]                                     ; $6c41: $f0 $0d
	ld c, e                                          ; $6c43: $4b
	inc [hl]                                         ; $6c44: $34
	ld b, [hl]                                       ; $6c45: $46

jr_096_6c46:
	ld a, [hl-]                                      ; $6c46: $3a
	dec a                                            ; $6c47: $3d
	ld c, c                                          ; $6c48: $49
	ld c, h                                          ; $6c49: $4c
	and b                                            ; $6c4a: $a0
	ldh a, [rAUD4LEN]                                ; $6c4b: $f0 $20
	ld [hl], e                                       ; $6c4d: $73
	xor b                                            ; $6c4e: $a8
	add b                                            ; $6c4f: $80
	jr c, jr_096_6c91                                ; $6c50: $38 $3f

	ld a, [hl-]                                      ; $6c52: $3a
	jr c, @+$65                                      ; $6c53: $38 $63

	and b                                            ; $6c55: $a0
	ld b, [hl]                                       ; $6c56: $46
	ld a, [hl-]                                      ; $6c57: $3a
	dec a                                            ; $6c58: $3d
	ld c, c                                          ; $6c59: $49
	ld b, d                                          ; $6c5a: $42
	ldh a, [rDMA]                                    ; $6c5b: $f0 $46
	ld h, d                                          ; $6c5d: $62
	inc de                                           ; $6c5e: $13
	db $ec                                           ; $6c5f: $ec
	db $dd                                           ; $6c60: $dd
	ld b, d                                          ; $6c61: $42
	ld b, l                                          ; $6c62: $45
	and b                                            ; $6c63: $a0
	add b                                            ; $6c64: $80
	jr c, jr_096_6ca6                                ; $6c65: $38 $3f

	jr c, jr_096_6cb7                                ; $6c67: $38 $4e

	ld h, e                                          ; $6c69: $63
	ld c, h                                          ; $6c6a: $4c
	and b                                            ; $6c6b: $a0
	ld b, [hl]                                       ; $6c6c: $46
	ld d, d                                          ; $6c6d: $52
	ld d, a                                          ; $6c6e: $57
	xor h                                            ; $6c6f: $ac
	di                                               ; $6c70: $f3
	ld b, h                                          ; $6c71: $44
	ld d, b                                          ; $6c72: $50
	ld a, [hl-]                                      ; $6c73: $3a
	jr c, @+$4c                                      ; $6c74: $38 $4a

	ld c, a                                          ; $6c76: $4f
	ld d, b                                          ; $6c77: $50
	ld e, [hl]                                       ; $6c78: $5e
	ld c, [hl]                                       ; $6c79: $4e
	inc a                                            ; $6c7a: $3c
	ld a, $50                                        ; $6c7b: $3e $50
	and d                                            ; $6c7d: $a2
	ld c, h                                          ; $6c7e: $4c
	add l                                            ; $6c7f: $85
	pop af                                           ; $6c80: $f1
	dec [hl]                                         ; $6c81: $35
	xor b                                            ; $6c82: $a8
	ldh a, [hDisp0_SCX]                                     ; $6c83: $f0 $84
	add h                                            ; $6c85: $84
	ld c, d                                          ; $6c86: $4a
	ldh a, [rSCY]                                    ; $6c87: $f0 $42
	ld e, l                                          ; $6c89: $5d
	ld h, c                                          ; $6c8a: $61
	ld d, [hl]                                       ; $6c8b: $56
	ld h, h                                          ; $6c8c: $64
	add hl, sp                                       ; $6c8d: $39
	inc a                                            ; $6c8e: $3c
	and c                                            ; $6c8f: $a1
	ld c, h                                          ; $6c90: $4c

jr_096_6c91:
	add l                                            ; $6c91: $85
	pop af                                           ; $6c92: $f1
	dec [hl]                                         ; $6c93: $35
	xor b                                            ; $6c94: $a8
	ldh a, [hDisp0_SCX]                                     ; $6c95: $f0 $84
	add h                                            ; $6c97: $84
	ld c, d                                          ; $6c98: $4a
	ld e, b                                          ; $6c99: $58
	pop af                                           ; $6c9a: $f1
	halt                                             ; $6c9b: $76
	dec sp                                           ; $6c9c: $3b
	ld h, c                                          ; $6c9d: $61
	ld d, [hl]                                       ; $6c9e: $56
	ld h, h                                          ; $6c9f: $64
	add hl, sp                                       ; $6ca0: $39
	ld b, l                                          ; $6ca1: $45
	and b                                            ; $6ca2: $a0
	ld c, a                                          ; $6ca3: $4f
	dec sp                                           ; $6ca4: $3b
	ld c, c                                          ; $6ca5: $49

jr_096_6ca6:
	inc [hl]                                         ; $6ca6: $34
	ldh a, [rAUD4ENV]                                ; $6ca7: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6ca9: $f0 $23
	jr c, jr_096_6d01                                ; $6cab: $38 $54

	ld c, c                                          ; $6cad: $49
	inc de                                           ; $6cae: $13
	ld d, c                                          ; $6caf: $51
	ld c, l                                          ; $6cb0: $4d
	ld a, e                                          ; $6cb1: $7b
	jr c, jr_096_6cec                                ; $6cb2: $38 $38

	ld b, d                                          ; $6cb4: $42
	ld b, a                                          ; $6cb5: $47
	and b                                            ; $6cb6: $a0

jr_096_6cb7:
	ldh a, [$fe]                                     ; $6cb7: $f0 $fe
	pop af                                           ; $6cb9: $f1
	dec [hl]                                         ; $6cba: $35
	inc [hl]                                         ; $6cbb: $34
	ld c, b                                          ; $6cbc: $48
	and b                                            ; $6cbd: $a0
	ld de, $4158                                     ; $6cbe: $11 $58 $41
	xor b                                            ; $6cc1: $a8
	jr c, jr_096_6cff                                ; $6cc2: $38 $3b

	ld a, $66                                        ; $6cc4: $3e $66
	ld b, a                                          ; $6cc6: $47
	di                                               ; $6cc7: $f3
	add b                                            ; $6cc8: $80
	ld d, a                                          ; $6cc9: $57
	dec a                                            ; $6cca: $3d
	jr c, jr_096_6d0f                                ; $6ccb: $38 $42

	ld c, d                                          ; $6ccd: $4a
	xor h                                            ; $6cce: $ac
	db $ec                                           ; $6ccf: $ec
	xor $42                                          ; $6cd0: $ee $42
	ldh a, [c]                                       ; $6cd2: $f2
	inc [hl]                                         ; $6cd3: $34
	ld b, a                                          ; $6cd4: $47
	ld a, b                                          ; $6cd5: $78
	ld h, c                                          ; $6cd6: $61
	ld d, [hl]                                       ; $6cd7: $56
	jr c, jr_096_6d2c                                ; $6cd8: $38 $52

	ld a, $3d                                        ; $6cda: $3e $3d
	and b                                            ; $6cdc: $a0
	ld de, $4158                                     ; $6cdd: $11 $58 $41
	dec [hl]                                         ; $6ce0: $35
	ld b, [hl]                                       ; $6ce1: $46
	ld c, l                                          ; $6ce2: $4d
	add l                                            ; $6ce3: $85
	xor h                                            ; $6ce4: $ac
	db $ec                                           ; $6ce5: $ec
	db $d3                                           ; $6ce6: $d3
	db $ec                                           ; $6ce7: $ec
	xor $47                                          ; $6ce8: $ee $47
	jr c, jr_096_6d3a                                ; $6cea: $38 $4e

jr_096_6cec:
	ld b, c                                          ; $6cec: $41
	ld c, d                                          ; $6ced: $4a
	ld d, c                                          ; $6cee: $51
	inc a                                            ; $6cef: $3c
	and c                                            ; $6cf0: $a1
	cpl                                              ; $6cf1: $2f
	ld [hl-], a                                      ; $6cf2: $32
	db $eb                                           ; $6cf3: $eb
	db $fc                                           ; $6cf4: $fc
	xor h                                            ; $6cf5: $ac
	db $f4                                           ; $6cf6: $f4
	dec b                                            ; $6cf7: $05
	ld h, d                                          ; $6cf8: $62
	ldh a, [$2a]                                     ; $6cf9: $f0 $2a
	ldh a, [$f5]                                     ; $6cfb: $f0 $f5
	ld e, [hl]                                       ; $6cfd: $5e
	ccf                                              ; $6cfe: $3f

jr_096_6cff:
	ld c, [hl]                                       ; $6cff: $4e
	ld l, h                                          ; $6d00: $6c

jr_096_6d01:
	dec a                                            ; $6d01: $3d
	jr c, jr_096_6d37                                ; $6d02: $38 $33

	add hl, bc                                       ; $6d04: $09
	ld b, [hl]                                       ; $6d05: $46
	dec sp                                           ; $6d06: $3b
	inc [hl]                                         ; $6d07: $34
	xor $27                                          ; $6d08: $ee $27
	xor h                                            ; $6d0a: $ac
	db $f4                                           ; $6d0b: $f4
	dec b                                            ; $6d0c: $05
	ldh a, [$2a]                                     ; $6d0d: $f0 $2a

jr_096_6d0f:
	ldh a, [$f5]                                     ; $6d0f: $f0 $f5
	ld e, [hl]                                       ; $6d11: $5e
	ld h, c                                          ; $6d12: $61
	ld d, [hl]                                       ; $6d13: $56
	dec sp                                           ; $6d14: $3b
	dec a                                            ; $6d15: $3d
	and b                                            ; $6d16: $a0
	cpl                                              ; $6d17: $2f
	ld [hl-], a                                      ; $6d18: $32
	di                                               ; $6d19: $f3
	add b                                            ; $6d1a: $80
	dec sp                                           ; $6d1b: $3b
	ccf                                              ; $6d1c: $3f
	inc a                                            ; $6d1d: $3c
	ld d, b                                          ; $6d1e: $50
	xor h                                            ; $6d1f: $ac
	ldh a, [$e8]                                     ; $6d20: $f0 $e8
	dec sp                                           ; $6d22: $3b
	ccf                                              ; $6d23: $3f
	ld c, a                                          ; $6d24: $4f
	jr c, jr_096_6d5f                                ; $6d25: $38 $38

	ld b, d                                          ; $6d27: $42
	ld b, a                                          ; $6d28: $47
	ld c, b                                          ; $6d29: $48
	inc sp                                           ; $6d2a: $33
	add hl, bc                                       ; $6d2b: $09

jr_096_6d2c:
	xor $20                                          ; $6d2c: $ee $20
	inc [hl]                                         ; $6d2e: $34
	add b                                            ; $6d2f: $80
	jr c, jr_096_6d71                                ; $6d30: $38 $3f

	ld c, [hl]                                       ; $6d32: $4e
	ld h, e                                          ; $6d33: $63
	xor b                                            ; $6d34: $a8
	db $eb                                           ; $6d35: $eb
	sub [hl]                                         ; $6d36: $96

jr_096_6d37:
	and b                                            ; $6d37: $a0
	ld b, [hl]                                       ; $6d38: $46
	inc [hl]                                         ; $6d39: $34

jr_096_6d3a:
	ld de, $56f0                                     ; $6d3a: $11 $f0 $56
	ld b, h                                          ; $6d3d: $44
	xor b                                            ; $6d3e: $a8
	db $eb                                           ; $6d3f: $eb
	sub [hl]                                         ; $6d40: $96
	and b                                            ; $6d41: $a0
	ldh a, [$a6]                                     ; $6d42: $f0 $a6
	ld e, c                                          ; $6d44: $59
	ld h, l                                          ; $6d45: $65
	ld c, b                                          ; $6d46: $48
	xor h                                            ; $6d47: $ac
	add b                                            ; $6d48: $80
	jr c, jr_096_6d8a                                ; $6d49: $38 $3f

	ld a, [hl-]                                      ; $6d4b: $3a
	jr c, jr_096_6d96                                ; $6d4c: $38 $48

	add hl, bc                                       ; $6d4e: $09
	cpl                                              ; $6d4f: $2f
	ld b, e                                          ; $6d50: $43
	ld b, [hl]                                       ; $6d51: $46
	ld b, [hl]                                       ; $6d52: $46
	inc [hl]                                         ; $6d53: $34
	add b                                            ; $6d54: $80
	inc [hl]                                         ; $6d55: $34
	add b                                            ; $6d56: $80
	jr c, jr_096_6d98                                ; $6d57: $38 $3f

	ld a, [hl-]                                      ; $6d59: $3a
	jr c, jr_096_6da4                                ; $6d5a: $38 $48

	and b                                            ; $6d5c: $a0
	cpl                                              ; $6d5d: $2f
	ld b, e                                          ; $6d5e: $43

jr_096_6d5f:
	ld l, d                                          ; $6d5f: $6a
	ld [hl], a                                       ; $6d60: $77
	jr c, jr_096_6da7                                ; $6d61: $38 $44

	ld a, $3d                                        ; $6d63: $3e $3d
	ld e, l                                          ; $6d65: $5d
	ld e, d                                          ; $6d66: $5a
	xor h                                            ; $6d67: $ac
	db $ed                                           ; $6d68: $ed
	ld d, a                                          ; $6d69: $57
	inc [hl]                                         ; $6d6a: $34
	db $ed                                           ; $6d6b: $ed
	xor c                                            ; $6d6c: $a9
	db $ec                                           ; $6d6d: $ec
	inc h                                            ; $6d6e: $24
	inc de                                           ; $6d6f: $13
	db $ec                                           ; $6d70: $ec

jr_096_6d71:
	ret c                                            ; $6d71: $d8

	inc a                                            ; $6d72: $3c
	and b                                            ; $6d73: $a0
	cpl                                              ; $6d74: $2f
	ld [hl-], a                                      ; $6d75: $32
	adc c                                            ; $6d76: $89
	sbc a                                            ; $6d77: $9f
	ld c, d                                          ; $6d78: $4a
	ld c, e                                          ; $6d79: $4b
	inc de                                           ; $6d7a: $13
	pop af                                           ; $6d7b: $f1
	ld a, h                                          ; $6d7c: $7c
	ld a, c                                          ; $6d7d: $79
	ld a, [hl-]                                      ; $6d7e: $3a
	inc a                                            ; $6d7f: $3c
	dec sp                                           ; $6d80: $3b
	dec a                                            ; $6d81: $3d
	ld e, l                                          ; $6d82: $5d
	ld e, d                                          ; $6d83: $5a
	xor h                                            ; $6d84: $ac
	db $eb                                           ; $6d85: $eb
	ld h, b                                          ; $6d86: $60
	ld c, c                                          ; $6d87: $49
	inc a                                            ; $6d88: $3c
	xor h                                            ; $6d89: $ac

jr_096_6d8a:
	db $eb                                           ; $6d8a: $eb
	ld e, c                                          ; $6d8b: $59
	inc a                                            ; $6d8c: $3c
	ld a, [hl-]                                      ; $6d8d: $3a
	and e                                            ; $6d8e: $a3
	cpl                                              ; $6d8f: $2f
	ld [$0912], a                                    ; $6d90: $ea $12 $09
	cpl                                              ; $6d93: $2f
	jp hl                                            ; $6d94: $e9


	add [hl]                                         ; $6d95: $86

jr_096_6d96:
	add hl, bc                                       ; $6d96: $09
	cpl                                              ; $6d97: $2f

jr_096_6d98:
	ld b, e                                          ; $6d98: $43
	db $eb                                           ; $6d99: $eb
	dec a                                            ; $6d9a: $3d
	inc de                                           ; $6d9b: $13
	ld [$a011], a                                    ; $6d9c: $ea $11 $a0
	xor $1e                                          ; $6d9f: $ee $1e
	ldh a, [c]                                       ; $6da1: $f2
	ld l, h                                          ; $6da2: $6c
	ld c, b                                          ; $6da3: $48

jr_096_6da4:
	and b                                            ; $6da4: $a0
	cpl                                              ; $6da5: $2f
	ld b, e                                          ; $6da6: $43

jr_096_6da7:
	ld b, [hl]                                       ; $6da7: $46
	dec sp                                           ; $6da8: $3b
	inc [hl]                                         ; $6da9: $34
	db $ec                                           ; $6daa: $ec
	rst SubAFromDE                                          ; $6dab: $df
	ld b, h                                          ; $6dac: $44
	xor b                                            ; $6dad: $a8
	db $eb                                           ; $6dae: $eb
	rst FarCall                                          ; $6daf: $f7
	and c                                            ; $6db0: $a1
	db $ed                                           ; $6db1: $ed
	ld c, [hl]                                       ; $6db2: $4e
	inc [hl]                                         ; $6db3: $34
	db $eb                                           ; $6db4: $eb
	ld d, a                                          ; $6db5: $57
	xor b                                            ; $6db6: $a8
	ld l, d                                          ; $6db7: $6a
	inc [hl]                                         ; $6db8: $34
	ld h, h                                          ; $6db9: $64
	ldh a, [rBGP]                                    ; $6dba: $f0 $47
	ldh a, [$2a]                                     ; $6dbc: $f0 $2a
	ldh a, [$c9]                                     ; $6dbe: $f0 $c9
	jr c, jr_096_6e01                                ; $6dc0: $38 $3f

	jr c, @+$54                                      ; $6dc2: $38 $52

	ld d, c                                          ; $6dc4: $51
	inc a                                            ; $6dc5: $3c
	and c                                            ; $6dc6: $a1
	cpl                                              ; $6dc7: $2f
	ld b, e                                          ; $6dc8: $43
	add a                                            ; $6dc9: $87
	ldh a, [$5b]                                     ; $6dca: $f0 $5b
	ldh a, [$5e]                                     ; $6dcc: $f0 $5e
	ld b, h                                          ; $6dce: $44
	ld e, l                                          ; $6dcf: $5d
	ld e, d                                          ; $6dd0: $5a
	inc [hl]                                         ; $6dd1: $34
	ld l, e                                          ; $6dd2: $6b
	and c                                            ; $6dd3: $a1
	ld l, a                                          ; $6dd4: $6f
	ld b, d                                          ; $6dd5: $42
	ldh a, [hDisp0_SCX]                                     ; $6dd6: $f0 $84
	add h                                            ; $6dd8: $84
	pop af                                           ; $6dd9: $f1
	ld [hl], e                                       ; $6dda: $73
	di                                               ; $6ddb: $f3
	ei                                               ; $6ddc: $fb
	ld b, d                                          ; $6ddd: $42
	inc de                                           ; $6dde: $13
	ldh a, [$e9]                                     ; $6ddf: $f0 $e9
	ldh a, [$0b]                                     ; $6de1: $f0 $0b
	ld b, d                                          ; $6de3: $42
	add h                                            ; $6de4: $84
	ld d, e                                          ; $6de5: $53
	ld h, h                                          ; $6de6: $64
	ldh a, [hDisp1_LCDC]                                     ; $6de7: $f0 $8f
	ld l, h                                          ; $6de9: $6c
	ld c, d                                          ; $6dea: $4a
	xor h                                            ; $6deb: $ac
	pop af                                           ; $6dec: $f1
	call Call_096_5763                               ; $6ded: $cd $63 $57
	ld b, a                                          ; $6df0: $47
	sub h                                            ; $6df1: $94
	ccf                                              ; $6df2: $3f
	ld c, a                                          ; $6df3: $4f
	ld d, b                                          ; $6df4: $50
	ld e, [hl]                                       ; $6df5: $5e
	ld a, [hl-]                                      ; $6df6: $3a
	jr c, jr_096_6e43                                ; $6df7: $38 $4a

	inc de                                           ; $6df9: $13
	ld a, $66                                        ; $6dfa: $3e $66
	add hl, sp                                       ; $6dfc: $39
	inc a                                            ; $6dfd: $3c
	and c                                            ; $6dfe: $a1
	cpl                                              ; $6dff: $2f
	ld b, e                                          ; $6e00: $43

jr_096_6e01:
	ld e, [hl]                                       ; $6e01: $5e
	dec sp                                           ; $6e02: $3b
	dec [hl]                                         ; $6e03: $35
	halt                                             ; $6e04: $76
	ld d, e                                          ; $6e05: $53
	and c                                            ; $6e06: $a1
	ld b, b                                          ; $6e07: $40
	ld c, l                                          ; $6e08: $4d
	ld c, d                                          ; $6e09: $4a
	inc [hl]                                         ; $6e0a: $34
	ld c, a                                          ; $6e0b: $4f
	ld a, $45                                        ; $6e0c: $3e $45
	inc a                                            ; $6e0e: $3c
	dec sp                                           ; $6e0f: $3b
	dec a                                            ; $6e10: $3d
	ld d, b                                          ; $6e11: $50
	xor h                                            ; $6e12: $ac
	ldh a, [rHDMA4]                                  ; $6e13: $f0 $54
	ld a, $42                                        ; $6e15: $3e $42
	ldh a, [$2a]                                     ; $6e17: $f0 $2a
	xor $19                                          ; $6e19: $ee $19
	ld b, a                                          ; $6e1b: $47
	ldh a, [$9a]                                     ; $6e1c: $f0 $9a
	ld e, h                                          ; $6e1e: $5c
	ldh a, [rTMA]                                    ; $6e1f: $f0 $06
	dec sp                                           ; $6e21: $3b
	ccf                                              ; $6e22: $3f
	inc de                                           ; $6e23: $13
	db $ec                                           ; $6e24: $ec
	push af                                          ; $6e25: $f5
	ld b, d                                          ; $6e26: $42
	ld c, d                                          ; $6e27: $4a
	ld d, c                                          ; $6e28: $51
	ld e, l                                          ; $6e29: $5d
	ld e, d                                          ; $6e2a: $5a
	ld c, b                                          ; $6e2b: $48
	and b                                            ; $6e2c: $a0
	cpl                                              ; $6e2d: $2f
	jr c, jr_096_6e68                                ; $6e2e: $38 $38

	ld b, l                                          ; $6e30: $45
	dec [hl]                                         ; $6e31: $35
	ldh a, [$66]                                     ; $6e32: $f0 $66
	ld b, c                                          ; $6e34: $41
	ld c, d                                          ; $6e35: $4a
	add hl, bc                                       ; $6e36: $09
	ld b, l                                          ; $6e37: $45
	inc a                                            ; $6e38: $3c
	dec sp                                           ; $6e39: $3b
	dec a                                            ; $6e3a: $3d
	inc [hl]                                         ; $6e3b: $34
	ldh a, [$29]                                     ; $6e3c: $f0 $29
	ld a, $38                                        ; $6e3e: $3e $38
	ld c, d                                          ; $6e40: $4a
	ld d, c                                          ; $6e41: $51
	and b                                            ; $6e42: $a0

jr_096_6e43:
	cpl                                              ; $6e43: $2f
	ld b, e                                          ; $6e44: $43
	ld e, e                                          ; $6e45: $5b
	ld d, [hl]                                       ; $6e46: $56
	inc [hl]                                         ; $6e47: $34
	xor $19                                          ; $6e48: $ee $19
	db $ec                                           ; $6e4a: $ec
	inc c                                            ; $6e4b: $0c
	and c                                            ; $6e4c: $a1
	pop af                                           ; $6e4d: $f1
	ld [hl], $41                                     ; $6e4e: $36 $41
	ld b, h                                          ; $6e50: $44
	ld d, a                                          ; $6e51: $57
	ld d, c                                          ; $6e52: $51
	ld c, [hl]                                       ; $6e53: $4e
	ld c, c                                          ; $6e54: $49
	ld d, h                                          ; $6e55: $54
	ld e, a                                          ; $6e56: $5f
	ld h, d                                          ; $6e57: $62
	inc de                                           ; $6e58: $13
	ld [hl], d                                       ; $6e59: $72
	ld d, b                                          ; $6e5a: $50
	ld c, l                                          ; $6e5b: $4d
	ld c, [hl]                                       ; $6e5c: $4e
	ld c, c                                          ; $6e5d: $49
	db $eb                                           ; $6e5e: $eb
	ld c, a                                          ; $6e5f: $4f
	ld b, d                                          ; $6e60: $42
	ld c, d                                          ; $6e61: $4a
	xor h                                            ; $6e62: $ac
	pop af                                           ; $6e63: $f1
	dec a                                            ; $6e64: $3d
	ld d, h                                          ; $6e65: $54
	add hl, sp                                       ; $6e66: $39
	ld b, a                                          ; $6e67: $47

jr_096_6e68:
	ld h, a                                          ; $6e68: $67
	ld e, h                                          ; $6e69: $5c
	dec a                                            ; $6e6a: $3d
	jr c, jr_096_6eaf                                ; $6e6b: $38 $42

	ld c, d                                          ; $6e6d: $4a
	ld d, c                                          ; $6e6e: $51
	ld d, e                                          ; $6e6f: $53
	ld c, b                                          ; $6e70: $48
	and b                                            ; $6e71: $a0
	cpl                                              ; $6e72: $2f
	db $ec                                           ; $6e73: $ec
	dec h                                            ; $6e74: $25
	inc [hl]                                         ; $6e75: $34
	ld [hl], b                                       ; $6e76: $70
	ld [hl], c                                       ; $6e77: $71
	ld b, c                                          ; $6e78: $41
	add hl, bc                                       ; $6e79: $09
	cp [hl]                                          ; $6e7a: $be
	xor l                                            ; $6e7b: $ad
	jp z, $eb34                                      ; $6e7c: $ca $34 $eb

	ld e, d                                          ; $6e7f: $5a
	and b                                            ; $6e80: $a0
	cpl                                              ; $6e81: $2f
	ld [hl-], a                                      ; $6e82: $32
	db $ec                                           ; $6e83: $ec
	reti                                             ; $6e84: $d9


	inc [hl]                                         ; $6e85: $34
	ldh a, [$9a]                                     ; $6e86: $f0 $9a
	ld e, h                                          ; $6e88: $5c
	ldh a, [rTMA]                                    ; $6e89: $f0 $06
	dec sp                                           ; $6e8b: $3b
	ccf                                              ; $6e8c: $3f
	inc de                                           ; $6e8d: $13
	ld b, [hl]                                       ; $6e8e: $46
	ldh a, [rSB]                                     ; $6e8f: $f0 $01
	ld c, l                                          ; $6e91: $4d
	ld a, e                                          ; $6e92: $7b
	inc [hl]                                         ; $6e93: $34
	ld b, l                                          ; $6e94: $45
	inc a                                            ; $6e95: $3c
	dec sp                                           ; $6e96: $3b
	dec a                                            ; $6e97: $3d
	inc a                                            ; $6e98: $3c
	ld a, [hl-]                                      ; $6e99: $3a
	ld c, b                                          ; $6e9a: $48
	inc sp                                           ; $6e9b: $33
	add hl, bc                                       ; $6e9c: $09
	cpl                                              ; $6e9d: $2f
	ld b, e                                          ; $6e9e: $43
	ld b, b                                          ; $6e9f: $40
	ld c, l                                          ; $6ea0: $4d
	ld e, e                                          ; $6ea1: $5b
	ld d, [hl]                                       ; $6ea2: $56
	inc [hl]                                         ; $6ea3: $34
	jr c, jr_096_6efb                                ; $6ea4: $38 $55

	ld b, l                                          ; $6ea6: $45
	and b                                            ; $6ea7: $a0
	ld e, h                                          ; $6ea8: $5c
	ld d, [hl]                                       ; $6ea9: $56
	inc [hl]                                         ; $6eaa: $34
	add hl, bc                                       ; $6eab: $09
	cpl                                              ; $6eac: $2f
	ld h, $f0                                        ; $6ead: $26 $f0

jr_096_6eaf:
	ld [hl-], a                                      ; $6eaf: $32
	sbc b                                            ; $6eb0: $98
	ld h, l                                          ; $6eb1: $65
	scf                                              ; $6eb2: $37
	dec h                                            ; $6eb3: $25
	add hl, bc                                       ; $6eb4: $09
	cpl                                              ; $6eb5: $2f
	ld b, e                                          ; $6eb6: $43
	add a                                            ; $6eb7: $87
	ldh a, [$5b]                                     ; $6eb8: $f0 $5b
	ldh a, [$5e]                                     ; $6eba: $f0 $5e
	and c                                            ; $6ebc: $a1
	db $eb                                           ; $6ebd: $eb
	ccf                                              ; $6ebe: $3f
	xor b                                            ; $6ebf: $a8
	pop af                                           ; $6ec0: $f1
	ld d, $47                                        ; $6ec1: $16 $47
	ld h, h                                          ; $6ec3: $64
	ldh a, [$c8]                                     ; $6ec4: $f0 $c8
	jr c, jr_096_6f06                                ; $6ec6: $38 $3e

	ccf                                              ; $6ec8: $3f
	ld c, a                                          ; $6ec9: $4f
	inc [hl]                                         ; $6eca: $34
	db $ec                                           ; $6ecb: $ec
	reti                                             ; $6ecc: $d9


	inc de                                           ; $6ecd: $13
	ldh a, [c]                                       ; $6ece: $f2
	ld c, e                                          ; $6ecf: $4b
	ld d, e                                          ; $6ed0: $53
	ldh a, [rTMA]                                    ; $6ed1: $f0 $06
	jr c, jr_096_6f27                                ; $6ed3: $38 $52

	ld a, c                                          ; $6ed5: $79
	ld b, c                                          ; $6ed6: $41
	ld b, l                                          ; $6ed7: $45
	ld c, h                                          ; $6ed8: $4c
	and c                                            ; $6ed9: $a1
	cpl                                              ; $6eda: $2f
	ld b, e                                          ; $6edb: $43
	ld b, b                                          ; $6edc: $40
	ld b, c                                          ; $6edd: $41
	ld a, [hl-]                                      ; $6ede: $3a
	ld d, h                                          ; $6edf: $54
	ld c, c                                          ; $6ee0: $49
	ld a, [hl-]                                      ; $6ee1: $3a
	jr c, jr_096_6f29                                ; $6ee2: $38 $45

	xor h                                            ; $6ee4: $ac
	ld e, h                                          ; $6ee5: $5c
	dec sp                                           ; $6ee6: $3b
	ld c, c                                          ; $6ee7: $49
	sub h                                            ; $6ee8: $94
	ld a, b                                          ; $6ee9: $78
	ld c, [hl]                                       ; $6eea: $4e
	dec sp                                           ; $6eeb: $3b
	ccf                                              ; $6eec: $3f
	and b                                            ; $6eed: $a0
	ld b, b                                          ; $6eee: $40
	add hl, sp                                       ; $6eef: $39
	ld c, d                                          ; $6ef0: $4a
	ld a, $66                                        ; $6ef1: $3e $66
	add hl, sp                                       ; $6ef3: $39
	inc a                                            ; $6ef4: $3c
	xor c                                            ; $6ef5: $a9
	db $ed                                           ; $6ef6: $ed
	nop                                              ; $6ef7: $00
	ld d, d                                          ; $6ef8: $52
	ld d, c                                          ; $6ef9: $51
	and b                                            ; $6efa: $a0

jr_096_6efb:
	cpl                                              ; $6efb: $2f
	ld b, e                                          ; $6efc: $43
	ld e, e                                          ; $6efd: $5b
	ld d, [hl]                                       ; $6efe: $56
	inc [hl]                                         ; $6eff: $34
	ld c, a                                          ; $6f00: $4f
	add hl, sp                                       ; $6f01: $39
	ld l, l                                          ; $6f02: $6d
	ldh a, [$0d]                                     ; $6f03: $f0 $0d
	and b                                            ; $6f05: $a0

jr_096_6f06:
	ld a, [hl-]                                      ; $6f06: $3a
	ld b, c                                          ; $6f07: $41
	ld b, h                                          ; $6f08: $44
	inc a                                            ; $6f09: $3c
	inc de                                           ; $6f0a: $13
	ldh a, [hDisp0_SCX]                                     ; $6f0b: $f0 $84
	add h                                            ; $6f0d: $84
	xor $06                                          ; $6f0e: $ee $06
	ld b, a                                          ; $6f10: $47
	ld a, [hl-]                                      ; $6f11: $3a
	ld d, b                                          ; $6f12: $50
	db $ec                                           ; $6f13: $ec
	db $ec                                           ; $6f14: $ec
	inc a                                            ; $6f15: $3c
	inc de                                           ; $6f16: $13
	pop af                                           ; $6f17: $f1
	ld b, e                                          ; $6f18: $43
	ld c, l                                          ; $6f19: $4d
	ld b, b                                          ; $6f1a: $40
	add hl, sp                                       ; $6f1b: $39
	ld a, [hl-]                                      ; $6f1c: $3a
	ld a, a                                          ; $6f1d: $7f
	ld d, e                                          ; $6f1e: $53
	ld a, $3f                                        ; $6f1f: $3e $3f
	ld e, h                                          ; $6f21: $5c
	ld d, d                                          ; $6f22: $52
	ld a, $3d                                        ; $6f23: $3e $3d
	and b                                            ; $6f25: $a0
	cpl                                              ; $6f26: $2f

jr_096_6f27:
	ld [hl-], a                                      ; $6f27: $32
	ld b, l                                          ; $6f28: $45

jr_096_6f29:
	ld e, c                                          ; $6f29: $59
	ld a, $88                                        ; $6f2a: $3e $88
	ldh a, [rDMA]                                    ; $6f2c: $f0 $46
	ld b, h                                          ; $6f2e: $44
	inc sp                                           ; $6f2f: $33
	add hl, bc                                       ; $6f30: $09
	add hl, bc                                       ; $6f31: $09
	db $ec                                           ; $6f32: $ec
	db $dd                                           ; $6f33: $dd
	ld h, e                                          ; $6f34: $63
	dec [hl]                                         ; $6f35: $35
	inc hl                                           ; $6f36: $23
	inc de                                           ; $6f37: $13
	ld d, $a0                                        ; $6f38: $16 $a0
	cpl                                              ; $6f3a: $2f
	ld b, e                                          ; $6f3b: $43
	ldh a, [$d8]                                     ; $6f3c: $f0 $d8
	inc [hl]                                         ; $6f3e: $34
	inc h                                            ; $6f3f: $24
	db $ec                                           ; $6f40: $ec
	ldh [$35], a                                     ; $6f41: $e0 $35
	inc hl                                           ; $6f43: $23
	inc de                                           ; $6f44: $13
	db $eb                                           ; $6f45: $eb
	rst FarCall                                          ; $6f46: $f7
	and c                                            ; $6f47: $a1
	ld l, a                                          ; $6f48: $6f
	ld b, d                                          ; $6f49: $42
	inc [hl]                                         ; $6f4a: $34
	ldh a, [rAUD2LOW]                                ; $6f4b: $f0 $18
	pop af                                           ; $6f4d: $f1
	ld l, d                                          ; $6f4e: $6a
	ld h, d                                          ; $6f4f: $62
	inc de                                           ; $6f50: $13
	ldh a, [rSTAT]                                   ; $6f51: $f0 $41
	pop af                                           ; $6f53: $f1
	ld d, e                                          ; $6f54: $53
	ld d, c                                          ; $6f55: $51
	ld c, [hl]                                       ; $6f56: $4e
	dec a                                            ; $6f57: $3d
	ld [hl], c                                       ; $6f58: $71
	ld b, a                                          ; $6f59: $47
	ld c, e                                          ; $6f5a: $4b
	inc [hl]                                         ; $6f5b: $34
	inc hl                                           ; $6f5c: $23
	inc de                                           ; $6f5d: $13
	ld b, [hl]                                       ; $6f5e: $46
	ld a, [hl-]                                      ; $6f5f: $3a
	dec a                                            ; $6f60: $3d
	ld d, e                                          ; $6f61: $53
	db $ed                                           ; $6f62: $ed
	sub c                                            ; $6f63: $91
	ld a, [hl-]                                      ; $6f64: $3a
	ld b, d                                          ; $6f65: $42
	ld b, l                                          ; $6f66: $45
	and b                                            ; $6f67: $a0
	cpl                                              ; $6f68: $2f
	ld b, e                                          ; $6f69: $43
	halt                                             ; $6f6a: $76
	ld c, e                                          ; $6f6b: $4b
	db $ec                                           ; $6f6c: $ec
	ldh [rSCY], a                                    ; $6f6d: $e0 $42
	inc de                                           ; $6f6f: $13
	db $ed                                           ; $6f70: $ed
	sub c                                            ; $6f71: $91
	ld h, d                                          ; $6f72: $62
	ld a, $3d                                        ; $6f73: $3e $3d
	ldh a, [c]                                       ; $6f75: $f2
	halt                                             ; $6f76: $76
	di                                               ; $6f77: $f3
	ld b, b                                          ; $6f78: $40
	ld c, e                                          ; $6f79: $4b
	xor $10                                          ; $6f7a: $ee $10
	inc de                                           ; $6f7c: $13
	ld [hl-], a                                      ; $6f7d: $32
	xor $10                                          ; $6f7e: $ee $10
	db $ec                                           ; $6f80: $ec
	and $49                                          ; $6f81: $e6 $49
	db $ed                                           ; $6f83: $ed
	sub c                                            ; $6f84: $91
	ld a, $3d                                        ; $6f85: $3e $3d
	inc a                                            ; $6f87: $3c
	xor $10                                          ; $6f88: $ee $10
	inc sp                                           ; $6f8a: $33
	inc de                                           ; $6f8b: $13
	ld b, h                                          ; $6f8c: $44
	jr c, jr_096_6fcc                                ; $6f8d: $38 $3d

	jr c, jr_096_6fc5                                ; $6f8f: $38 $34

	ldh a, [rAUD2LOW]                                ; $6f91: $f0 $18
	pop af                                           ; $6f93: $f1
	ld l, d                                          ; $6f94: $6a
	dec sp                                           ; $6f95: $3b
	ccf                                              ; $6f96: $3f
	xor $10                                          ; $6f97: $ee $10
	and c                                            ; $6f99: $a1
	cpl                                              ; $6f9a: $2f
	ld b, e                                          ; $6f9b: $43
	halt                                             ; $6f9c: $76
	ld c, e                                          ; $6f9d: $4b
	db $ec                                           ; $6f9e: $ec
	ldh [rSCY], a                                    ; $6f9f: $e0 $42
	inc de                                           ; $6fa1: $13
	db $ed                                           ; $6fa2: $ed
	sub c                                            ; $6fa3: $91
	ld h, d                                          ; $6fa4: $62
	ld a, $3d                                        ; $6fa5: $3e $3d
	ldh a, [c]                                       ; $6fa7: $f2
	halt                                             ; $6fa8: $76
	di                                               ; $6fa9: $f3
	ld b, b                                          ; $6faa: $40
	ld c, e                                          ; $6fab: $4b
	ld a, [hl-]                                      ; $6fac: $3a
	jr c, jr_096_6ff4                                ; $6fad: $38 $45

	xor b                                            ; $6faf: $a8
	ld b, b                                          ; $6fb0: $40
	ld c, l                                          ; $6fb1: $4d
	ld b, a                                          ; $6fb2: $47
	inc [hl]                                         ; $6fb3: $34
	ldh a, [rAUD2LOW]                                ; $6fb4: $f0 $18
	pop af                                           ; $6fb6: $f1
	ld l, d                                          ; $6fb7: $6a
	dec sp                                           ; $6fb8: $3b
	ccf                                              ; $6fb9: $3f
	and c                                            ; $6fba: $a1
	ldh a, [$f6]                                     ; $6fbb: $f0 $f6
	pop af                                           ; $6fbd: $f1
	inc [hl]                                         ; $6fbe: $34
	ldh a, [c]                                       ; $6fbf: $f2
	pop bc                                           ; $6fc0: $c1
	pop af                                           ; $6fc1: $f1
	ld a, d                                          ; $6fc2: $7a
	ld b, l                                          ; $6fc3: $45
	and b                                            ; $6fc4: $a0

jr_096_6fc5:
	cpl                                              ; $6fc5: $2f
	ld b, e                                          ; $6fc6: $43
	ld a, c                                          ; $6fc7: $79
	inc [hl]                                         ; $6fc8: $34
	ldh a, [$f6]                                     ; $6fc9: $f0 $f6
	pop af                                           ; $6fcb: $f1

jr_096_6fcc:
	inc [hl]                                         ; $6fcc: $34
	ldh a, [c]                                       ; $6fcd: $f2
	pop bc                                           ; $6fce: $c1
	pop af                                           ; $6fcf: $f1
	ld a, d                                          ; $6fd0: $7a
	xor c                                            ; $6fd1: $a9
	db $ed                                           ; $6fd2: $ed
	ld a, h                                          ; $6fd3: $7c
	ld c, d                                          ; $6fd4: $4a
	ld a, $66                                        ; $6fd5: $3e $66
	add hl, sp                                       ; $6fd7: $39
	and b                                            ; $6fd8: $a0
	ldh a, [$2c]                                     ; $6fd9: $f0 $2c
	ldh a, [$63]                                     ; $6fdb: $f0 $63

jr_096_6fdd:
	pop af                                           ; $6fdd: $f1
	inc bc                                           ; $6fde: $03
	ld a, [hl-]                                      ; $6fdf: $3a
	pop af                                           ; $6fe0: $f1
	ld a, c                                          ; $6fe1: $79
	pop af                                           ; $6fe2: $f1
	ld h, d                                          ; $6fe3: $62
	ld c, e                                          ; $6fe4: $4b
	inc de                                           ; $6fe5: $13
	ldh a, [c]                                       ; $6fe6: $f2
	db $fd                                           ; $6fe7: $fd
	dec sp                                           ; $6fe8: $3b
	dec a                                            ; $6fe9: $3d
	ld h, e                                          ; $6fea: $63
	xor b                                            ; $6feb: $a8
	ld c, d                                          ; $6fec: $4a
	ld c, a                                          ; $6fed: $4f
	inc [hl]                                         ; $6fee: $34
	ld b, [hl]                                       ; $6fef: $46
	ld a, [hl-]                                      ; $6ff0: $3a
	dec a                                            ; $6ff1: $3d
	ld b, d                                          ; $6ff2: $42
	ld h, h                                          ; $6ff3: $64

jr_096_6ff4:
	inc a                                            ; $6ff4: $3c
	ldh a, [rSB]                                     ; $6ff5: $f0 $01
	ld c, d                                          ; $6ff7: $4a
	xor h                                            ; $6ff8: $ac
	ldh a, [rVBK]                                    ; $6ff9: $f0 $4f
	ld b, d                                          ; $6ffb: $42
	pop af                                           ; $6ffc: $f1
	ld a, c                                          ; $6ffd: $79
	pop af                                           ; $6ffe: $f1
	ld h, d                                          ; $6fff: $62
	ld d, e                                          ; $7000: $53
	ld d, d                                          ; $7001: $52
	ld b, h                                          ; $7002: $44
	ld a, [hl-]                                      ; $7003: $3a
	ld b, d                                          ; $7004: $42
	ld b, l                                          ; $7005: $45
	and b                                            ; $7006: $a0
	cpl                                              ; $7007: $2f
	ld b, e                                          ; $7008: $43
	ld e, d                                          ; $7009: $5a
	inc [hl]                                         ; $700a: $34
	db $ec                                           ; $700b: $ec
	db $d3                                           ; $700c: $d3
	xor h                                            ; $700d: $ac
	halt                                             ; $700e: $76
	ld b, d                                          ; $700f: $42
	ld a, c                                          ; $7010: $79
	jr c, jr_096_704d                                ; $7011: $38 $3a

	ld b, c                                          ; $7013: $41
	ld b, h                                          ; $7014: $44
	and c                                            ; $7015: $a1
	ld d, h                                          ; $7016: $54
	ld d, h                                          ; $7017: $54
	ld c, d                                          ; $7018: $4a
	xor h                                            ; $7019: $ac
	ld b, [hl]                                       ; $701a: $46
	ld a, [hl-]                                      ; $701b: $3a
	dec a                                            ; $701c: $3d
	ld b, a                                          ; $701d: $47
	ldh a, [$6f]                                     ; $701e: $f0 $6f
	di                                               ; $7020: $f3
	call nz, Call_096_4d51                           ; $7021: $c4 $51 $4d
	ld a, e                                          ; $7024: $7b
	xor h                                            ; $7025: $ac
	ldh a, [rOBP1]                                   ; $7026: $f0 $49
	ccf                                              ; $7028: $3f
	pop af                                           ; $7029: $f1
	dec sp                                           ; $702a: $3b
	ldh a, [$ec]                                     ; $702b: $f0 $ec
	ld d, c                                          ; $702d: $51
	ld c, [hl]                                       ; $702e: $4e
	ld h, e                                          ; $702f: $63
	xor b                                            ; $7030: $a8
	ld e, b                                          ; $7031: $58
	ld b, [hl]                                       ; $7032: $46
	inc [hl]                                         ; $7033: $34
	ldh a, [$f4]                                     ; $7034: $f0 $f4
	di                                               ; $7036: $f3
	ld c, l                                          ; $7037: $4d
	ld a, $3a                                        ; $7038: $3e $3a

jr_096_703a:
	ld e, b                                          ; $703a: $58
	jr c, jr_096_6fdd                                ; $703b: $38 $a0

	cpl                                              ; $703d: $2f
	ld b, e                                          ; $703e: $43
	ret                                              ; $703f: $c9


	sbc c                                            ; $7040: $99
	dec sp                                           ; $7041: $3b
	ccf                                              ; $7042: $3f
	xor h                                            ; $7043: $ac
	db $ec                                           ; $7044: $ec

jr_096_7045:
	ldh [$a8], a                                     ; $7045: $e0 $a8
	pop af                                           ; $7047: $f1
	jr z, jr_096_703a                                ; $7048: $28 $f0

	ld b, h                                          ; $704a: $44
	ld e, e                                          ; $704b: $5b
	ld d, [hl]                                       ; $704c: $56

jr_096_704d:
	push af                                          ; $704d: $f5
	jr jr_096_7045                                   ; $704e: $18 $f5

	add hl, de                                       ; $7050: $19
	ld d, e                                          ; $7051: $53
	sub h                                            ; $7052: $94
	ld c, [hl]                                       ; $7053: $4e
	inc a                                            ; $7054: $3c
	ld d, b                                          ; $7055: $50
	xor h                                            ; $7056: $ac
	di                                               ; $7057: $f3
	rst FarCall                                          ; $7058: $f7
	db $f4                                           ; $7059: $f4
	ld h, c                                          ; $705a: $61
	ldh a, [$5a]                                     ; $705b: $f0 $5a
	ld h, a                                          ; $705d: $67
	ld d, h                                          ; $705e: $54
	add hl, sp                                       ; $705f: $39
	and b                                            ; $7060: $a0

jr_096_7061:
	cpl                                              ; $7061: $2f
	ld [hl-], a                                      ; $7062: $32
	ld b, b                                          ; $7063: $40

jr_096_7064:
	ld a, $3f                                        ; $7064: $3e $3f
	ldh a, [$fc]                                     ; $7066: $f0 $fc
	ldh a, [c]                                       ; $7068: $f2
	nop                                              ; $7069: $00
	ld d, e                                          ; $706a: $53
	xor h                                            ; $706b: $ac
	ldh a, [$ce]                                     ; $706c: $f0 $ce
	ld h, e                                          ; $706e: $63
	dec sp                                           ; $706f: $3b
	ccf                                              ; $7070: $3f
	pop af                                           ; $7071: $f1
	jr z, jr_096_7064                                ; $7072: $28 $f0

	ld b, h                                          ; $7074: $44
	ld b, a                                          ; $7075: $47
	ldh a, [$e8]                                     ; $7076: $f0 $e8
	dec sp                                           ; $7078: $3b
	dec a                                            ; $7079: $3d
	and e                                            ; $707a: $a3
	ld d, d                                          ; $707b: $52
	inc [hl]                                         ; $707c: $34
	ldh a, [$e4]                                     ; $707d: $f0 $e4
	ld e, l                                          ; $707f: $5d
	dec a                                            ; $7080: $3d
	ld h, e                                          ; $7081: $63
	xor b                                            ; $7082: $a8
	ld l, a                                          ; $7083: $6f
	ld b, d                                          ; $7084: $42
	ldh a, [c]                                       ; $7085: $f2
	scf                                              ; $7086: $37
	pop af                                           ; $7087: $f1
	add b                                            ; $7088: $80
	ld b, l                                          ; $7089: $45
	and b                                            ; $708a: $a0
	cpl                                              ; $708b: $2f
	ld b, e                                          ; $708c: $43
	add a                                            ; $708d: $87
	ldh a, [$5b]                                     ; $708e: $f0 $5b
	ldh a, [$5e]                                     ; $7090: $f0 $5e
	xor c                                            ; $7092: $a9
	pop af                                           ; $7093: $f1
	ld hl, sp-$0f                                    ; $7094: $f8 $f1
	ld d, b                                          ; $7096: $50
	ld c, e                                          ; $7097: $4b
	ld a, [hl-]                                      ; $7098: $3a
	inc a                                            ; $7099: $3c
	dec sp                                           ; $709a: $3b
	dec a                                            ; $709b: $3d
	and c                                            ; $709c: $a1
	ld l, a                                          ; $709d: $6f
	ld b, d                                          ; $709e: $42
	pop af                                           ; $709f: $f1
	inc b                                            ; $70a0: $04
	ld c, [hl]                                       ; $70a1: $4e
	ldh a, [$8c]                                     ; $70a2: $f0 $8c
	ld e, h                                          ; $70a4: $5c
	ldh a, [$ee]                                     ; $70a5: $f0 $ee
	ld c, e                                          ; $70a7: $4b
	inc de                                           ; $70a8: $13
	ldh a, [$ec]                                     ; $70a9: $f0 $ec
	ld d, d                                          ; $70ab: $52
	dec sp                                           ; $70ac: $3b
	dec a                                            ; $70ad: $3d
	ld h, e                                          ; $70ae: $63
	xor b                                            ; $70af: $a8
	ld [$5121], a                                    ; $70b0: $ea $21 $51
	ld c, [hl]                                       ; $70b3: $4e
	ld h, e                                          ; $70b4: $63
	and b                                            ; $70b5: $a0
	cpl                                              ; $70b6: $2f
	ld b, e                                          ; $70b7: $43
	ldh a, [$d8]                                     ; $70b8: $f0 $d8
	inc [hl]                                         ; $70ba: $34
	db $ec                                           ; $70bb: $ec
	ldh [rOBP0], a                                   ; $70bc: $e0 $48
	and b                                            ; $70be: $a0
	add hl, bc                                       ; $70bf: $09
	cpl                                              ; $70c0: $2f
	ld b, e                                          ; $70c1: $43
	db $ed                                           ; $70c2: $ed
	ld d, a                                          ; $70c3: $57
	db $ec                                           ; $70c4: $ec
	di                                               ; $70c5: $f3
	ld b, d                                          ; $70c6: $42
	ldh a, [rSVBK]                                   ; $70c7: $f0 $70

jr_096_70c9:
	ld c, d                                          ; $70c9: $4a
	inc de                                           ; $70ca: $13
	db $eb                                           ; $70cb: $eb
	xor a                                            ; $70cc: $af
	ldh a, [rIF]                                     ; $70cd: $f0 $0f
	ld e, c                                          ; $70cf: $59
	ldh a, [$60]                                     ; $70d0: $f0 $60
	ldh a, [$c4]                                     ; $70d2: $f0 $c4
	ld e, c                                          ; $70d4: $59
	ld b, h                                          ; $70d5: $44
	and b                                            ; $70d6: $a0
	cpl                                              ; $70d7: $2f
	ld b, e                                          ; $70d8: $43
	ldh a, [$ac]                                     ; $70d9: $f0 $ac
	jr c, @+$3f                                      ; $70db: $38 $3d

	sub a                                            ; $70dd: $97
	xor b                                            ; $70de: $a8
	jr c, jr_096_7061                                ; $70df: $38 $80

	ld [hl], d                                       ; $70e1: $72
	ccf                                              ; $70e2: $3f
	ld c, a                                          ; $70e3: $4f
	ld c, d                                          ; $70e4: $4a
	ld e, l                                          ; $70e5: $5d
	add l                                            ; $70e6: $85
	ld a, [hl-]                                      ; $70e7: $3a
	ld [hl], h                                       ; $70e8: $74
	and b                                            ; $70e9: $a0
	ld [hl], l                                       ; $70ea: $75
	ld a, l                                          ; $70eb: $7d
	ldh a, [hDisp0_OBP1]                                     ; $70ec: $f0 $87
	ld b, d                                          ; $70ee: $42
	ld h, h                                          ; $70ef: $64
	db $ed                                           ; $70f0: $ed
	ld h, d                                          ; $70f1: $62
	ld c, d                                          ; $70f2: $4a
	inc de                                           ; $70f3: $13
	jr c, jr_096_7146                                ; $70f4: $38 $50

	dec sp                                           ; $70f6: $3b
	ld a, $56                                        ; $70f7: $3e $56
	jr c, jr_096_714d                                ; $70f9: $38 $52

	ld d, c                                          ; $70fb: $51
	inc a                                            ; $70fc: $3c
	and c                                            ; $70fd: $a1
	cpl                                              ; $70fe: $2f
	ld b, e                                          ; $70ff: $43
	db $ed                                           ; $7100: $ed
	ld h, d                                          ; $7101: $62
	inc a                                            ; $7102: $3c
	ld e, d                                          ; $7103: $5a
	add hl, sp                                       ; $7104: $39
	inc a                                            ; $7105: $3c
	ld c, e                                          ; $7106: $4b
	inc de                                           ; $7107: $13
	db $ec                                           ; $7108: $ec
	dec b                                            ; $7109: $05
	ld e, l                                          ; $710a: $5d
	ld e, d                                          ; $710b: $5a
	sub e                                            ; $710c: $93
	ldh a, [rSC]                                     ; $710d: $f0 $02
	add e                                            ; $710f: $83
	ldh a, [$9d]                                     ; $7110: $f0 $9d
	ld e, c                                          ; $7112: $59
	ld l, c                                          ; $7113: $69
	ld b, h                                          ; $7114: $44
	ld b, l                                          ; $7115: $45
	and b                                            ; $7116: $a0
	ldh a, [$80]                                     ; $7117: $f0 $80
	ldh a, [$c5]                                     ; $7119: $f0 $c5
	ld c, d                                          ; $711b: $4a
	ld d, c                                          ; $711c: $51
	xor b                                            ; $711d: $a8
	ld e, d                                          ; $711e: $5a
	add hl, sp                                       ; $711f: $39
	sub a                                            ; $7120: $97
	ld h, h                                          ; $7121: $64
	sub [hl]                                         ; $7122: $96

jr_096_7123:
	ld d, a                                          ; $7123: $57
	ld d, l                                          ; $7124: $55
	ld b, h                                          ; $7125: $44
	ld e, b                                          ; $7126: $58
	jr c, jr_096_70c9                                ; $7127: $38 $a0

	jp hl                                            ; $7129: $e9


	ld h, $53                                        ; $712a: $26 $53
	xor h                                            ; $712c: $ac
	ld b, b                                          ; $712d: $40
	ld b, d                                          ; $712e: $42
	ldh a, [hDisp0_OBP1]                                     ; $712f: $f0 $87
	ld a, [hl-]                                      ; $7131: $3a
	ld h, h                                          ; $7132: $64
	db $f4                                           ; $7133: $f4
	ld e, d                                          ; $7134: $5a
	ld a, $f0                                        ; $7135: $3e $f0
	inc l                                            ; $7137: $2c
	ld c, d                                          ; $7138: $4a
	ld c, e                                          ; $7139: $4b
	inc de                                           ; $713a: $13
	ldh a, [rHDMA4]                                  ; $713b: $f0 $54
	ldh a, [$cf]                                     ; $713d: $f0 $cf
	inc [hl]                                         ; $713f: $34
	ld [hl], b                                       ; $7140: $70
	pop af                                           ; $7141: $f1
	ld b, $f1                                        ; $7142: $06 $f1
	ld a, $3e                                        ; $7144: $3e $3e

jr_096_7146:
	ccf                                              ; $7146: $3f
	jr c, jr_096_7186                                ; $7147: $38 $3d

	ld b, h                                          ; $7149: $44
	jr c, jr_096_718b                                ; $714a: $38 $3f

	inc de                                           ; $714c: $13

jr_096_714d:
	ld h, h                                          ; $714d: $64
	ld d, a                                          ; $714e: $57
	ld d, d                                          ; $714f: $52
	ld d, c                                          ; $7150: $51
	and b                                            ; $7151: $a0
	ld d, e                                          ; $7152: $53
	inc [hl]                                         ; $7153: $34
	ld b, b                                          ; $7154: $40
	ld b, d                                          ; $7155: $42
	db $eb                                           ; $7156: $eb
	ld d, h                                          ; $7157: $54
	inc de                                           ; $7158: $13
	push af                                          ; $7159: $f5
	dec b                                            ; $715a: $05
	ldh a, [$65]                                     ; $715b: $f0 $65
	ld b, a                                          ; $715d: $47
	ldh a, [rAUD3LEVEL]                              ; $715e: $f0 $1c
	ld d, e                                          ; $7160: $53
	ld d, l                                          ; $7161: $55
	ld d, b                                          ; $7162: $50
	ld b, c                                          ; $7163: $41
	ld c, d                                          ; $7164: $4a
	inc de                                           ; $7165: $13
	ld l, e                                          ; $7166: $6b
	ld c, a                                          ; $7167: $4f
	ld [hl], d                                       ; $7168: $72
	ld e, [hl]                                       ; $7169: $5e
	ld d, d                                          ; $716a: $52
	ld a, c                                          ; $716b: $79
	ld b, c                                          ; $716c: $41
	xor b                                            ; $716d: $a8
	ld l, d                                          ; $716e: $6a
	ld b, d                                          ; $716f: $42
	pop af                                           ; $7170: $f1
	ld [hl], a                                       ; $7171: $77
	ld b, a                                          ; $7172: $47
	ld h, h                                          ; $7173: $64
	sub [hl]                                         ; $7174: $96
	ld d, a                                          ; $7175: $57
	ld d, l                                          ; $7176: $55
	ld b, h                                          ; $7177: $44
	ld e, b                                          ; $7178: $58
	jr c, jr_096_7123                                ; $7179: $38 $a8

	ld d, l                                          ; $717b: $55
	ld c, l                                          ; $717c: $4d
	sbc l                                            ; $717d: $9d
	ld c, l                                          ; $717e: $4d

jr_096_717f:
	ld c, a                                          ; $717f: $4f
	inc de                                           ; $7180: $13
	ld [hl+], a                                      ; $7181: $22
	ld [hl+], a                                      ; $7182: $22
	ld [hl+], a                                      ; $7183: $22
	ld [hl+], a                                      ; $7184: $22
	ld [hl], l                                       ; $7185: $75

jr_096_7186:
	ld a, l                                          ; $7186: $7d
	ldh a, [hDisp0_OBP1]                                     ; $7187: $f0 $87
	ld b, a                                          ; $7189: $47
	ld c, e                                          ; $718a: $4b

jr_096_718b:
	ld [hl], b                                       ; $718b: $70
	pop af                                           ; $718c: $f1
	ld [hl], a                                       ; $718d: $77
	pop af                                           ; $718e: $f1
	and h                                            ; $718f: $a4
	ld b, a                                          ; $7190: $47
	ld c, b                                          ; $7191: $48
	and b                                            ; $7192: $a0
	cpl                                              ; $7193: $2f
	ld b, e                                          ; $7194: $43
	ld l, e                                          ; $7195: $6b
	ld b, h                                          ; $7196: $44
	inc a                                            ; $7197: $3c
	xor h                                            ; $7198: $ac
	ldh a, [rAUD3LEVEL]                              ; $7199: $f0 $1c
	ld d, e                                          ; $719b: $53
	ldh a, [$64]                                     ; $719c: $f0 $64
	ld b, h                                          ; $719e: $44
	dec sp                                           ; $719f: $3b
	dec a                                            ; $71a0: $3d
	sub a                                            ; $71a1: $97
	ld c, b                                          ; $71a2: $48
	and b                                            ; $71a3: $a0
	ld d, d                                          ; $71a4: $52
	dec a                                            ; $71a5: $3d
	ld a, b                                          ; $71a6: $78
	ccf                                              ; $71a7: $3f
	inc de                                           ; $71a8: $13
	ldh a, [$a3]                                     ; $71a9: $f0 $a3
	ld e, b                                          ; $71ab: $58
	dec sp                                           ; $71ac: $3b
	dec a                                            ; $71ad: $3d
	ld b, d                                          ; $71ae: $42
	ld c, d                                          ; $71af: $4a
	ld d, c                                          ; $71b0: $51
	ld c, h                                          ; $71b1: $4c
	xor b                                            ; $71b2: $a8
	add sp, $71                                      ; $71b3: $e8 $71
	xor h                                            ; $71b5: $ac
	add sp, -$42                                     ; $71b6: $e8 $be
	and b                                            ; $71b8: $a0
	cpl                                              ; $71b9: $2f
	ld b, e                                          ; $71ba: $43
	ld a, [hl-]                                      ; $71bb: $3a
	ld b, c                                          ; $71bc: $41
	inc a                                            ; $71bd: $3c
	inc [hl]                                         ; $71be: $34
	ld l, [hl]                                       ; $71bf: $6e
	ld b, h                                          ; $71c0: $44
	ld a, [hl-]                                      ; $71c1: $3a
	ld [hl], h                                       ; $71c2: $74
	ld c, b                                          ; $71c3: $48
	and b                                            ; $71c4: $a0
	xor $10                                          ; $71c5: $ee $10
	ld d, d                                          ; $71c7: $52
	dec a                                            ; $71c8: $3d
	ld a, b                                          ; $71c9: $78
	ccf                                              ; $71ca: $3f
	inc de                                           ; $71cb: $13
	ldh a, [$a3]                                     ; $71cc: $f0 $a3
	ld e, b                                          ; $71ce: $58
	dec sp                                           ; $71cf: $3b
	dec a                                            ; $71d0: $3d
	ld b, d                                          ; $71d1: $42
	ld c, d                                          ; $71d2: $4a
	ld d, c                                          ; $71d3: $51
	ld c, h                                          ; $71d4: $4c
	xor b                                            ; $71d5: $a8
	ld d, h                                          ; $71d6: $54
	ld b, d                                          ; $71d7: $42
	db $ed                                           ; $71d8: $ed
	rst $38                                          ; $71d9: $ff
	inc [hl]                                         ; $71da: $34
	ldh a, [$29]                                     ; $71db: $f0 $29
	ld a, $f2                                        ; $71dd: $3e $f2
	sbc [hl]                                         ; $71df: $9e
	add hl, sp                                       ; $71e0: $39
	ld [hl], b                                       ; $71e1: $70
	ldh a, [rAUD1SWEEP]                              ; $71e2: $f0 $10
	jr c, @+$54                                      ; $71e4: $38 $52

	ld d, c                                          ; $71e6: $51
	xor b                                            ; $71e7: $a8
	add sp, $71                                      ; $71e8: $e8 $71
	xor h                                            ; $71ea: $ac
	add sp, -$42                                     ; $71eb: $e8 $be
	and b                                            ; $71ed: $a0
	cpl                                              ; $71ee: $2f
	ld b, e                                          ; $71ef: $43
	ld e, [hl]                                       ; $71f0: $5e
	dec sp                                           ; $71f1: $3b
	inc [hl]                                         ; $71f2: $34
	db $d3                                           ; $71f3: $d3
	and c                                            ; $71f4: $a1
	xor $2d                                          ; $71f5: $ee $2d
	xor b                                            ; $71f7: $a8
	ldh a, [c]                                       ; $71f8: $f2
	add e                                            ; $71f9: $83
	ld a, $55                                        ; $71fa: $3e $55
	add d                                            ; $71fc: $82
	jr c, jr_096_717f                                ; $71fd: $38 $80

	inc a                                            ; $71ff: $3c
	dec sp                                           ; $7200: $3b
	ccf                                              ; $7201: $3f
	inc de                                           ; $7202: $13
	ld h, h                                          ; $7203: $64
	ld d, a                                          ; $7204: $57
	ld d, d                                          ; $7205: $52

jr_096_7206:
	ld d, c                                          ; $7206: $51
	ld b, d                                          ; $7207: $42
	ld c, d                                          ; $7208: $4a
	and b                                            ; $7209: $a0
	cpl                                              ; $720a: $2f
	ld b, e                                          ; $720b: $43
	xor $10                                          ; $720c: $ee $10
	xor b                                            ; $720e: $a8
	ld [$ed33], a                                    ; $720f: $ea $33 $ed
	ld e, b                                          ; $7212: $58
	ld h, b                                          ; $7213: $60
	and e                                            ; $7214: $a3
	cpl                                              ; $7215: $2f
	ld b, e                                          ; $7216: $43
	ld h, h                                          ; $7217: $64
	dec sp                                           ; $7218: $3b
	xor h                                            ; $7219: $ac
	ld l, d                                          ; $721a: $6a
	ldh a, [$bb]                                     ; $721b: $f0 $bb
	ld d, d                                          ; $721d: $52
	ld c, [hl]                                       ; $721e: $4e
	ld c, c                                          ; $721f: $49
	ld d, h                                          ; $7220: $54
	ld e, a                                          ; $7221: $5f
	ld b, h                                          ; $7222: $44
	ld a, [hl-]                                      ; $7223: $3a
	and b                                            ; $7224: $a0
	di                                               ; $7225: $f3
	inc de                                           ; $7226: $13
	ld e, b                                          ; $7227: $58
	ld b, c                                          ; $7228: $41
	dec [hl]                                         ; $7229: $35
	rla                                              ; $722a: $17
	pop af                                           ; $722b: $f1
	ld d, b                                          ; $722c: $50
	ld d, e                                          ; $722d: $53
	db $ec                                           ; $722e: $ec
	ld e, [hl]                                       ; $722f: $5e
	ld d, e                                          ; $7230: $53
	db $f4                                           ; $7231: $f4
	sub c                                            ; $7232: $91
	ld c, [hl]                                       ; $7233: $4e
	inc de                                           ; $7234: $13
	db $eb                                           ; $7235: $eb
	xor a                                            ; $7236: $af
	ldh a, [rIF]                                     ; $7237: $f0 $0f
	ld e, c                                          ; $7239: $59
	ldh a, [$60]                                     ; $723a: $f0 $60
	ldh a, [$c4]                                     ; $723c: $f0 $c4
	ld e, c                                          ; $723e: $59
	ld b, a                                          ; $723f: $47
	ld b, l                                          ; $7240: $45
	add hl, sp                                       ; $7241: $39
	ld d, h                                          ; $7242: $54
	ld b, b                                          ; $7243: $40
	xor b                                            ; $7244: $a8
	ld l, b                                          ; $7245: $68
	ldh a, [c]                                       ; $7246: $f2
	inc b                                            ; $7247: $04
	ld b, d                                          ; $7248: $42
	pop af                                           ; $7249: $f1
	and [hl]                                         ; $724a: $a6
	ldh a, [$31]                                     ; $724b: $f0 $31
	ld h, d                                          ; $724d: $62
	pop af                                           ; $724e: $f1
	dec d                                            ; $724f: $15
	ld c, l                                          ; $7250: $4d
	ccf                                              ; $7251: $3f
	inc de                                           ; $7252: $13
	db $ed                                           ; $7253: $ed
	ld d, a                                          ; $7254: $57
	inc [hl]                                         ; $7255: $34
	add a                                            ; $7256: $87
	jr c, jr_096_72a0                                ; $7257: $38 $47

	inc de                                           ; $7259: $13
	sub b                                            ; $725a: $90
	ld a, $41                                        ; $725b: $3e $41
	ld c, d                                          ; $725d: $4a
	ld h, a                                          ; $725e: $67
	dec sp                                           ; $725f: $3b
	ccf                                              ; $7260: $3f
	ld d, l                                          ; $7261: $55
	ld b, h                                          ; $7262: $44
	ld e, b                                          ; $7263: $58
	jr c, jr_096_7206                                ; $7264: $38 $a0

	cpl                                              ; $7266: $2f
	ld b, e                                          ; $7267: $43
	ldh a, [$e9]                                     ; $7268: $f0 $e9
	ldh a, [$5d]                                     ; $726a: $f0 $5d
	ld h, e                                          ; $726c: $63
	ld d, b                                          ; $726d: $50
	sbc h                                            ; $726e: $9c
	xor h                                            ; $726f: $ac
	ld d, c                                          ; $7270: $51
	inc a                                            ; $7271: $3c
	ld a, $3d                                        ; $7272: $3e $3d
	db $ed                                           ; $7274: $ed
	ldh [c], a                                       ; $7275: $e2
	ld b, h                                          ; $7276: $44
	adc l                                            ; $7277: $8d
	and b                                            ; $7278: $a0
	ld l, e                                          ; $7279: $6b
	inc a                                            ; $727a: $3c
	add d                                            ; $727b: $82
	dec sp                                           ; $727c: $3b
	dec a                                            ; $727d: $3d
	inc a                                            ; $727e: $3c
	ld c, h                                          ; $727f: $4c
	and b                                            ; $7280: $a0
	cpl                                              ; $7281: $2f
	ld b, e                                          ; $7282: $43
	ldh a, [rSB]                                     ; $7283: $f0 $01
	inc [hl]                                         ; $7285: $34
	db $ec                                           ; $7286: $ec
	di                                               ; $7287: $f3
	xor b                                            ; $7288: $a8
	ld h, h                                          ; $7289: $64
	sbc [hl]                                         ; $728a: $9e
	jr c, @-$7e                                      ; $728b: $38 $80

	ld b, d                                          ; $728d: $42
	ldh a, [$2a]                                     ; $728e: $f0 $2a
	ld b, a                                          ; $7290: $47
	ld c, b                                          ; $7291: $48
	and b                                            ; $7292: $a0
	ldh a, [rRP]                                     ; $7293: $f0 $56
	ld b, a                                          ; $7295: $47
	ld h, h                                          ; $7296: $64
	sbc [hl]                                         ; $7297: $9e
	pop af                                           ; $7298: $f1
	ld bc, $637b                                     ; $7299: $01 $7b $63
	ld d, a                                          ; $729c: $57
	ld e, b                                          ; $729d: $58
	ld c, l                                          ; $729e: $4d
	ld c, [hl]                                       ; $729f: $4e

jr_096_72a0:
	inc de                                           ; $72a0: $13
	di                                               ; $72a1: $f3
	cp $f0                                           ; $72a2: $fe $f0
	ld b, $38                                        ; $72a4: $06 $38
	ld c, e                                          ; $72a6: $4b
	ldh a, [rAUD1LOW]                                ; $72a7: $f0 $13
	jr c, jr_096_72fe                                ; $72a9: $38 $53

	ld c, h                                          ; $72ab: $4c
	xor l                                            ; $72ac: $ad
	ld d, d                                          ; $72ad: $52
	inc [hl]                                         ; $72ae: $34
	db $ed                                           ; $72af: $ed
	ld d, a                                          ; $72b0: $57
	ldh a, [$b6]                                     ; $72b1: $f0 $b6
	ldh a, [$34]                                     ; $72b3: $f0 $34
	ld b, h                                          ; $72b5: $44
	xor h                                            ; $72b6: $ac
	ldh a, [c]                                       ; $72b7: $f2
	ld a, b                                          ; $72b8: $78
	ld a, $3f                                        ; $72b9: $3e $3f
	ld l, [hl]                                       ; $72bb: $6e
	ld e, a                                          ; $72bc: $5f
	add hl, sp                                       ; $72bd: $39
	db $ec                                           ; $72be: $ec
	ret c                                            ; $72bf: $d8

	inc a                                            ; $72c0: $3c
	and b                                            ; $72c1: $a0
	cpl                                              ; $72c2: $2f
	ld b, e                                          ; $72c3: $43
	ldh a, [$34]                                     ; $72c4: $f0 $34
	ld b, a                                          ; $72c6: $47
	xor h                                            ; $72c7: $ac
	ldh a, [c]                                       ; $72c8: $f2
	ld a, b                                          ; $72c9: $78
	ld e, b                                          ; $72ca: $58
	ld a, [hl-]                                      ; $72cb: $3a
	ld d, l                                          ; $72cc: $55
	ccf                                              ; $72cd: $3f
	ld c, a                                          ; $72ce: $4f
	jr c, jr_096_7309                                ; $72cf: $38 $38

	ld b, l                                          ; $72d1: $45
	ld c, b                                          ; $72d2: $48
	and b                                            ; $72d3: $a0
	ld [$acab], a                                    ; $72d4: $ea $ab $ac
	ld b, l                                          ; $72d7: $45
	ld d, l                                          ; $72d8: $55
	ld b, b                                          ; $72d9: $40
	ld b, d                                          ; $72da: $42
	pop af                                           ; $72db: $f1
	inc h                                            ; $72dc: $24
	adc e                                            ; $72dd: $8b
	ld c, d                                          ; $72de: $4a
	inc de                                           ; $72df: $13
	ld d, h                                          ; $72e0: $54
	ld d, h                                          ; $72e1: $54
	ld b, a                                          ; $72e2: $47
	sub [hl]                                         ; $72e3: $96
	ld c, l                                          ; $72e4: $4d
	dec a                                            ; $72e5: $3d
	ld c, a                                          ; $72e6: $4f
	ld b, d                                          ; $72e7: $42
	ld b, h                                          ; $72e8: $44
	and b                                            ; $72e9: $a0
	cpl                                              ; $72ea: $2f
	ld b, e                                          ; $72eb: $43
	db $ed                                           ; $72ec: $ed
	sub [hl]                                         ; $72ed: $96
	ld a, [hl-]                                      ; $72ee: $3a
	ld h, h                                          ; $72ef: $64
	ldh a, [$f6]                                     ; $72f0: $f0 $f6
	ldh a, [rAUDVOL]                                 ; $72f2: $f0 $24
	ld b, h                                          ; $72f4: $44
	and b                                            ; $72f5: $a0
	db $ed                                           ; $72f6: $ed
	rst $38                                          ; $72f7: $ff
	ld b, a                                          ; $72f8: $47
	ld a, b                                          ; $72f9: $78
	ldh a, [rAUD1HIGH]                               ; $72fa: $f0 $14
	ld c, e                                          ; $72fc: $4b
	inc de                                           ; $72fd: $13

jr_096_72fe:
	ld c, a                                          ; $72fe: $4f
	dec sp                                           ; $72ff: $3b
	ld c, c                                          ; $7300: $49
	ldh a, [c]                                       ; $7301: $f2
	add e                                            ; $7302: $83
	ld a, $55                                        ; $7303: $3e $55
	ld d, c                                          ; $7305: $51
	ld c, [hl]                                       ; $7306: $4e
	ld b, l                                          ; $7307: $45
	add hl, sp                                       ; $7308: $39

jr_096_7309:
	ld b, a                                          ; $7309: $47
	inc de                                           ; $730a: $13
	add d                                            ; $730b: $82
	ld h, e                                          ; $730c: $63
	ld a, [hl-]                                      ; $730d: $3a
	ld e, l                                          ; $730e: $5d
	ld c, l                                          ; $730f: $4d
	ld a, e                                          ; $7310: $7b
	ld a, [hl-]                                      ; $7311: $3a
	ld c, b                                          ; $7312: $48
	and b                                            ; $7313: $a0
	cpl                                              ; $7314: $2f
	ld b, e                                          ; $7315: $43
	xor $10                                          ; $7316: $ee $10
	xor b                                            ; $7318: $a8
	ld [hl-], a                                      ; $7319: $32
	add h                                            ; $731a: $84
	ld b, d                                          ; $731b: $42
	ldh a, [rAUDVOL]                                 ; $731c: $f0 $24
	ld h, d                                          ; $731e: $62
	db $ed                                           ; $731f: $ed
	ld e, [hl]                                       ; $7320: $5e
	ldh a, [$0c]                                     ; $7321: $f0 $0c
	jr c, jr_096_7364                                ; $7323: $38 $3f

	ld c, h                                          ; $7325: $4c
	ld e, [hl]                                       ; $7326: $5e
	and e                                            ; $7327: $a3
	db $ec                                           ; $7328: $ec
	add hl, bc                                       ; $7329: $09
	ld a, b                                          ; $732a: $78
	dec a                                            ; $732b: $3d
	ld b, c                                          ; $732c: $41
	ld b, h                                          ; $732d: $44
	xor h                                            ; $732e: $ac
	db $ed                                           ; $732f: $ed
	and a                                            ; $7330: $a7
	ld b, a                                          ; $7331: $47
	ld c, e                                          ; $7332: $4b
	ldh a, [hDisp1_WY]                                     ; $7333: $f0 $95
	ld h, e                                          ; $7335: $63
	ld e, [hl]                                       ; $7336: $5e
	ld a, [hl-]                                      ; $7337: $3a
	jr c, jr_096_734d                                ; $7338: $38 $13

	pop af                                           ; $733a: $f1
	ld d, d                                          ; $733b: $52
	db $f4                                           ; $733c: $f4
	inc de                                           ; $733d: $13
	db $f4                                           ; $733e: $f4
	ld d, $f0                                        ; $733f: $16 $f0
	ld [de], a                                       ; $7341: $12
	pop af                                           ; $7342: $f1
	ret nz                                           ; $7343: $c0

	db $ed                                           ; $7344: $ed
	adc a                                            ; $7345: $8f
	ld c, d                                          ; $7346: $4a
	ld c, a                                          ; $7347: $4f
	inc de                                           ; $7348: $13
	ldh a, [$b7]                                     ; $7349: $f0 $b7
	ldh a, [$8c]                                     ; $734b: $f0 $8c

jr_096_734d:
	ccf                                              ; $734d: $3f
	jr c, jr_096_738b                                ; $734e: $38 $3b

	ccf                                              ; $7350: $3f
	ld d, l                                          ; $7351: $55
	ld c, l                                          ; $7352: $4d
	dec a                                            ; $7353: $3d
	ld d, d                                          ; $7354: $52
	ld e, [hl]                                       ; $7355: $5e
	xor b                                            ; $7356: $a8
	ld c, e                                          ; $7357: $4b
	ld e, c                                          ; $7358: $59
	dec sp                                           ; $7359: $3b
	ld c, e                                          ; $735a: $4b
	dec sp                                           ; $735b: $3b
	ld c, e                                          ; $735c: $4b
	dec sp                                           ; $735d: $3b
	ld c, e                                          ; $735e: $4b
	dec sp                                           ; $735f: $3b
	xor b                                            ; $7360: $a8
	ld c, d                                          ; $7361: $4a
	ld c, e                                          ; $7362: $4b
	inc [hl]                                         ; $7363: $34

jr_096_7364:
	ldh a, [rHDMA5]                                  ; $7364: $f0 $55
	ldh a, [rBCPS]                                   ; $7366: $f0 $68
	ld d, c                                          ; $7368: $51
	ld c, [hl]                                       ; $7369: $4e
	ld b, l                                          ; $736a: $45
	and b                                            ; $736b: $a0
	cpl                                              ; $736c: $2f
	ld b, e                                          ; $736d: $43
	sbc $f0                                          ; $736e: $de $f0
	ld h, h                                          ; $7370: $64
	ld a, [hl-]                                      ; $7371: $3a
	ld l, [hl]                                       ; $7372: $6e
	add b                                            ; $7373: $80
	ld c, b                                          ; $7374: $48
	and b                                            ; $7375: $a0
	cpl                                              ; $7376: $2f
	ld b, e                                          ; $7377: $43
	pop af                                           ; $7378: $f1
	cp l                                             ; $7379: $bd
	ldh a, [rAUD1HIGH]                               ; $737a: $f0 $14
	ldh a, [$cd]                                     ; $737c: $f0 $cd
	ld e, e                                          ; $737e: $5b
	sbc d                                            ; $737f: $9a
	inc de                                           ; $7380: $13
	add d                                            ; $7381: $82
	dec sp                                           ; $7382: $3b
	ccf                                              ; $7383: $3f
	ld c, [hl]                                       ; $7384: $4e
	ld b, c                                          ; $7385: $41
	ld e, e                                          ; $7386: $5b
	ld d, [hl]                                       ; $7387: $56
	ld c, h                                          ; $7388: $4c
	add l                                            ; $7389: $85
	ld b, d                                          ; $738a: $42

jr_096_738b:
	and c                                            ; $738b: $a1
	cpl                                              ; $738c: $2f
	ld b, e                                          ; $738d: $43
	ldh a, [$0c]                                     ; $738e: $f0 $0c
	ld d, h                                          ; $7390: $54
	ld e, [hl]                                       ; $7391: $5e
	ld a, [hl-]                                      ; $7392: $3a
	inc a                                            ; $7393: $3c
	dec sp                                           ; $7394: $3b
	dec a                                            ; $7395: $3d
	ld b, d                                          ; $7396: $42
	inc a                                            ; $7397: $3c
	xor c                                            ; $7398: $a9
	pop af                                           ; $7399: $f1
	sub $f0                                          ; $739a: $d6 $f0
	ld e, h                                          ; $739c: $5c
	jr c, jr_096_73e0                                ; $739d: $38 $41

	ld e, e                                          ; $739f: $5b
	ld d, [hl]                                       ; $73a0: $56
	ld c, h                                          ; $73a1: $4c
	add l                                            ; $73a2: $85
	ld b, d                                          ; $73a3: $42
	and c                                            ; $73a4: $a1
	ldh a, [rHDMA5]                                  ; $73a5: $f0 $55
	ldh a, [rBCPS]                                   ; $73a7: $f0 $68
	ld a, [hl-]                                      ; $73a9: $3a
	dec [hl]                                         ; $73aa: $35
	inc hl                                           ; $73ab: $23
	inc de                                           ; $73ac: $13
	ld d, d                                          ; $73ad: $52
	inc [hl]                                         ; $73ae: $34
	db $ed                                           ; $73af: $ed
	ret nz                                           ; $73b0: $c0

	ld c, e                                          ; $73b1: $4b
	db $ed                                           ; $73b2: $ed
	and a                                            ; $73b3: $a7
	ld b, d                                          ; $73b4: $42
	xor $00                                          ; $73b5: $ee $00
	ld e, [hl]                                       ; $73b7: $5e
	xor h                                            ; $73b8: $ac
	pop af                                           ; $73b9: $f1
	or [hl]                                          ; $73ba: $b6
	ld b, a                                          ; $73bb: $47
	ld c, e                                          ; $73bc: $4b
	push af                                          ; $73bd: $f5
	inc b                                            ; $73be: $04
	ldh a, [$08]                                     ; $73bf: $f0 $08
	ld e, d                                          ; $73c1: $5a
	ld b, a                                          ; $73c2: $47
	ld c, a                                          ; $73c3: $4f
	inc de                                           ; $73c4: $13
	ldh a, [$78]                                     ; $73c5: $f0 $78
	ld e, e                                          ; $73c7: $5b
	ld b, c                                          ; $73c8: $41
	ld d, e                                          ; $73c9: $53
	ld c, h                                          ; $73ca: $4c
	ld c, b                                          ; $73cb: $48
	and b                                            ; $73cc: $a0
	cpl                                              ; $73cd: $2f
	ld b, e                                          ; $73ce: $43
	ldh a, [$64]                                     ; $73cf: $f0 $64
	ld a, [hl-]                                      ; $73d1: $3a
	ld l, [hl]                                       ; $73d2: $6e
	add b                                            ; $73d3: $80
	ld b, h                                          ; $73d4: $44
	ld a, [hl-]                                      ; $73d5: $3a
	ld [hl], h                                       ; $73d6: $74
	ld c, b                                          ; $73d7: $48
	and b                                            ; $73d8: $a0
	pop af                                           ; $73d9: $f1
	inc l                                            ; $73da: $2c
	ldh a, [rAUD1HIGH]                               ; $73db: $f0 $14
	ld b, a                                          ; $73dd: $47
	pop af                                           ; $73de: $f1
	inc l                                            ; $73df: $2c

jr_096_73e0:
	ldh a, [$d3]                                     ; $73e0: $f0 $d3
	ld b, h                                          ; $73e2: $44
	ld e, l                                          ; $73e3: $5d
	ld b, d                                          ; $73e4: $42
	inc de                                           ; $73e5: $13
	adc l                                            ; $73e6: $8d
	jr c, jr_096_7426                                ; $73e7: $38 $3d

	ld d, l                                          ; $73e9: $55
	ld h, d                                          ; $73ea: $62
	inc de                                           ; $73eb: $13
	ld [hl], a                                       ; $73ec: $77
	add hl, sp                                       ; $73ed: $39
	db $ed                                           ; $73ee: $ed
	sbc $47                                          ; $73ef: $de $47
	ldh a, [hDisp1_WY]                                     ; $73f1: $f0 $95
	ld h, e                                          ; $73f3: $63
	dec sp                                           ; $73f4: $3b
	ccf                                              ; $73f5: $3f
	inc de                                           ; $73f6: $13
	ld h, a                                          ; $73f7: $67
	dec sp                                           ; $73f8: $3b
	ccf                                              ; $73f9: $3f
	ld d, l                                          ; $73fa: $55
	ld c, l                                          ; $73fb: $4d
	dec a                                            ; $73fc: $3d
	ld d, d                                          ; $73fd: $52
	ld e, [hl]                                       ; $73fe: $5e
	xor b                                            ; $73ff: $a8
	ld c, e                                          ; $7400: $4b
	ld e, c                                          ; $7401: $59
	dec sp                                           ; $7402: $3b
	ld c, e                                          ; $7403: $4b
	dec sp                                           ; $7404: $3b
	ld c, e                                          ; $7405: $4b
	dec sp                                           ; $7406: $3b
	ld c, e                                          ; $7407: $4b
	dec sp                                           ; $7408: $3b
	xor b                                            ; $7409: $a8
	ld c, d                                          ; $740a: $4a
	ld c, e                                          ; $740b: $4b
	inc [hl]                                         ; $740c: $34
	ldh a, [rHDMA5]                                  ; $740d: $f0 $55
	ldh a, [rBCPS]                                   ; $740f: $f0 $68
	ld d, c                                          ; $7411: $51
	ld c, [hl]                                       ; $7412: $4e
	ld b, l                                          ; $7413: $45
	and b                                            ; $7414: $a0
	cpl                                              ; $7415: $2f
	ld b, e                                          ; $7416: $43
	ld d, d                                          ; $7417: $52
	dec a                                            ; $7418: $3d
	ldh a, [$cd]                                     ; $7419: $f0 $cd
	ld e, e                                          ; $741b: $5b
	sbc d                                            ; $741c: $9a
	inc de                                           ; $741d: $13
	add d                                            ; $741e: $82
	dec sp                                           ; $741f: $3b
	ccf                                              ; $7420: $3f
	ld c, [hl]                                       ; $7421: $4e
	ld b, l                                          ; $7422: $45
	and b                                            ; $7423: $a0
	ld d, d                                          ; $7424: $52
	dec a                                            ; $7425: $3d

jr_096_7426:
	ld l, d                                          ; $7426: $6a
	ldh a, [rAUD1HIGH]                               ; $7427: $f0 $14
	ld c, a                                          ; $7429: $4f
	inc de                                           ; $742a: $13
	ld a, b                                          ; $742b: $78
	ld c, l                                          ; $742c: $4d
	ld c, [hl]                                       ; $742d: $4e
	ld c, c                                          ; $742e: $49
	ld c, e                                          ; $742f: $4b
	ld c, h                                          ; $7430: $4c
	xor b                                            ; $7431: $a8
	ld b, b                                          ; $7432: $40
	ld d, h                                          ; $7433: $54
	ld b, b                                          ; $7434: $40
	ld d, h                                          ; $7435: $54
	ld b, a                                          ; $7436: $47
	inc de                                           ; $7437: $13
	ld [hl], d                                       ; $7438: $72
	ld c, l                                          ; $7439: $4d
	ld c, [hl]                                       ; $743a: $4e
	ld c, c                                          ; $743b: $49
	jr c, @+$3b                                      ; $743c: $38 $39

	sbc d                                            ; $743e: $9a
	inc a                                            ; $743f: $3c
	ld c, b                                          ; $7440: $48
	and b                                            ; $7441: $a0
	cpl                                              ; $7442: $2f
	ld b, e                                          ; $7443: $43
	db $ec                                           ; $7444: $ec
	di                                               ; $7445: $f3
	ld b, l                                          ; $7446: $45
	ldh a, [c]                                       ; $7447: $f2
	ld a, l                                          ; $7448: $7d
	ld c, b                                          ; $7449: $48
	and b                                            ; $744a: $a0
	ld e, d                                          ; $744b: $5a
	add hl, sp                                       ; $744c: $39
	ld a, $3d                                        ; $744d: $3e $3d
	db $ed                                           ; $744f: $ed
	and a                                            ; $7450: $a7
	xor b                                            ; $7451: $a8
	pop af                                           ; $7452: $f1
	call z, Call_096_63f2                            ; $7453: $cc $f2 $63
	inc a                                            ; $7456: $3c
	ld c, h                                          ; $7457: $4c
	and c                                            ; $7458: $a1
	cpl                                              ; $7459: $2f
	ld b, e                                          ; $745a: $43
	pop af                                           ; $745b: $f1
	cp l                                             ; $745c: $bd
	ldh a, [rAUD1HIGH]                               ; $745d: $f0 $14
	ld a, a                                          ; $745f: $7f
	ld b, a                                          ; $7460: $47
	ld a, [hl-]                                      ; $7461: $3a
	dec sp                                           ; $7462: $3b
	ccf                                              ; $7463: $3f
	inc de                                           ; $7464: $13
	dec a                                            ; $7465: $3d
	ld b, c                                          ; $7466: $41
	ld b, h                                          ; $7467: $44
	ld e, l                                          ; $7468: $5d
	ld e, d                                          ; $7469: $5a
	xor h                                            ; $746a: $ac
	ld b, b                                          ; $746b: $40
	ld b, d                                          ; $746c: $42
	ldh a, [$35]                                     ; $746d: $f0 $35
	sub e                                            ; $746f: $93
	ldh a, [$60]                                     ; $7470: $f0 $60
	ldh a, [$03]                                     ; $7472: $f0 $03
	ldh a, [$50]                                     ; $7474: $f0 $50
	ldh a, [rSC]                                     ; $7476: $f0 $02
	add e                                            ; $7478: $83
	ld b, d                                          ; $7479: $42
	ldh a, [rAUD2HIGH]                               ; $747a: $f0 $19
	ld b, a                                          ; $747c: $47
	inc de                                           ; $747d: $13
	ld l, e                                          ; $747e: $6b
	ld d, e                                          ; $747f: $53
	sub [hl]                                         ; $7480: $96
	dec sp                                           ; $7481: $3b
	ccf                                              ; $7482: $3f
	ld c, [hl]                                       ; $7483: $4e
	ld b, c                                          ; $7484: $41
	ld b, h                                          ; $7485: $44
	and c                                            ; $7486: $a1
	ld c, e                                          ; $7487: $4b
	ld e, c                                          ; $7488: $59
	dec sp                                           ; $7489: $3b
	ld c, e                                          ; $748a: $4b
	dec sp                                           ; $748b: $3b
	ld c, e                                          ; $748c: $4b
	dec sp                                           ; $748d: $3b
	ld c, e                                          ; $748e: $4b
	dec sp                                           ; $748f: $3b
	xor b                                            ; $7490: $a8
	ldh a, [rAUD1LOW]                                ; $7491: $f0 $13
	ldh a, [$2d]                                     ; $7493: $f0 $2d
	ld a, [hl-]                                      ; $7495: $3a
	db $ed                                           ; $7496: $ed
	and a                                            ; $7497: $a7
	ld b, a                                          ; $7498: $47
	db $ec                                           ; $7499: $ec
	db $ed                                           ; $749a: $ed
	ld l, [hl]                                       ; $749b: $6e
	ld e, a                                          ; $749c: $5f
	add hl, sp                                       ; $749d: $39
	xor b                                            ; $749e: $a8
	ld d, h                                          ; $749f: $54
	ld b, d                                          ; $74a0: $42
	db $ed                                           ; $74a1: $ed
	or [hl]                                          ; $74a2: $b6
	ld c, e                                          ; $74a3: $4b
	ld a, [hl-]                                      ; $74a4: $3a
	ld c, b                                          ; $74a5: $48
	and b                                            ; $74a6: $a0
	cpl                                              ; $74a7: $2f
	ld b, e                                          ; $74a8: $43
	ld d, h                                          ; $74a9: $54
	ld b, d                                          ; $74aa: $42
	db $ed                                           ; $74ab: $ed
	or [hl]                                          ; $74ac: $b6
	ld c, e                                          ; $74ad: $4b
	ld c, b                                          ; $74ae: $48
	and b                                            ; $74af: $a0
	ldh a, [rRP]                                     ; $74b0: $f0 $56
	ld b, a                                          ; $74b2: $47
	ld c, e                                          ; $74b3: $4b
	inc [hl]                                         ; $74b4: $34
	db $ec                                           ; $74b5: $ec
	db $ed                                           ; $74b6: $ed
	ld l, [hl]                                       ; $74b7: $6e
	ld d, b                                          ; $74b8: $50
	ld b, c                                          ; $74b9: $41
	xor b                                            ; $74ba: $a8
	ld d, d                                          ; $74bb: $52
	inc [hl]                                         ; $74bc: $34
	ldh a, [$3d]                                     ; $74bd: $f0 $3d
	ldh a, [$03]                                     ; $74bf: $f0 $03
	ldh a, [rAUD1LEN]                                ; $74c1: $f0 $11
	ld e, c                                          ; $74c3: $59
	ldh a, [$03]                                     ; $74c4: $f0 $03
	ld c, d                                          ; $74c6: $4a
	ld c, e                                          ; $74c7: $4b
	ldh a, [rAUD1LOW]                                ; $74c8: $f0 $13
	jr c, jr_096_74df                                ; $74ca: $38 $13

	ld c, c                                          ; $74cc: $49
	ld b, h                                          ; $74cd: $44
	ld e, l                                          ; $74ce: $5d
	add d                                            ; $74cf: $82
	dec sp                                           ; $74d0: $3b
	ccf                                              ; $74d1: $3f
	ld h, h                                          ; $74d2: $64
	ld d, h                                          ; $74d3: $54
	add hl, sp                                       ; $74d4: $39
	inc a                                            ; $74d5: $3c
	xor b                                            ; $74d6: $a8
	pop af                                           ; $74d7: $f1
	or l                                             ; $74d8: $b5
	pop af                                           ; $74d9: $f1
	ld d, e                                          ; $74da: $53
	ldh a, [rAUD1HIGH]                               ; $74db: $f0 $14
	ld c, e                                          ; $74dd: $4b
	ldh a, [c]                                       ; $74de: $f2

jr_096_74df:
	and a                                            ; $74df: $a7
	db $f4                                           ; $74e0: $f4
	ld hl, $3e62                                     ; $74e1: $21 $62 $3e
	ccf                                              ; $74e4: $3f
	ld c, e                                          ; $74e5: $4b
	inc de                                           ; $74e6: $13
	jr c, @+$5f                                      ; $74e7: $38 $5d

	ld a, [hl-]                                      ; $74e9: $3a
	jr c, jr_096_7528                                ; $74ea: $38 $3c

	ld d, b                                          ; $74ec: $50
	ld c, h                                          ; $74ed: $4c
	and b                                            ; $74ee: $a0
	cpl                                              ; $74ef: $2f
	ld b, e                                          ; $74f0: $43
	ld b, b                                          ; $74f1: $40
	ld b, c                                          ; $74f2: $41

Jump_096_74f3:
	ld a, [hl-]                                      ; $74f3: $3a
	ld d, h                                          ; $74f4: $54
	ld c, c                                          ; $74f5: $49
	ld c, e                                          ; $74f6: $4b
	xor h                                            ; $74f7: $ac
	ldh a, [$2d]                                     ; $74f8: $f0 $2d
	dec sp                                           ; $74fa: $3b
	ccf                                              ; $74fb: $3f
	ld c, [hl]                                       ; $74fc: $4e
	ld b, l                                          ; $74fd: $45
	xor b                                            ; $74fe: $a8
	ld b, h                                          ; $74ff: $44
	dec sp                                           ; $7500: $3b
	dec a                                            ; $7501: $3d
	ld d, b                                          ; $7502: $50
	ld l, e                                          ; $7503: $6b
	ld a, [hl-]                                      ; $7504: $3a
	ld b, c                                          ; $7505: $41
	ld b, h                                          ; $7506: $44
	ld b, l                                          ; $7507: $45
	and b                                            ; $7508: $a0
	ldh a, [c]                                       ; $7509: $f2
	ld a, d                                          ; $750a: $7a
	pop af                                           ; $750b: $f1
	ld a, b                                          ; $750c: $78
	ld d, d                                          ; $750d: $52
	ld c, d                                          ; $750e: $4a
	ldh a, [$a4]                                     ; $750f: $f0 $a4
	ld e, [hl]                                       ; $7511: $5e
	ld c, [hl]                                       ; $7512: $4e
	ld d, e                                          ; $7513: $53
	jr c, jr_096_754e                                ; $7514: $38 $38

	xor b                                            ; $7516: $a8
	ld c, e                                          ; $7517: $4b
	ld e, c                                          ; $7518: $59
	dec sp                                           ; $7519: $3b
	ld c, e                                          ; $751a: $4b
	dec sp                                           ; $751b: $3b
	ld c, e                                          ; $751c: $4b
	dec sp                                           ; $751d: $3b
	ld c, e                                          ; $751e: $4b
	dec sp                                           ; $751f: $3b
	xor b                                            ; $7520: $a8
	ld c, d                                          ; $7521: $4a
	ld c, e                                          ; $7522: $4b
	inc [hl]                                         ; $7523: $34
	ldh a, [rHDMA5]                                  ; $7524: $f0 $55
	ldh a, [rBCPS]                                   ; $7526: $f0 $68

jr_096_7528:
	ld d, c                                          ; $7528: $51
	ld c, [hl]                                       ; $7529: $4e
	ld b, l                                          ; $752a: $45
	and b                                            ; $752b: $a0
	cpl                                              ; $752c: $2f
	ld b, e                                          ; $752d: $43
	ld e, d                                          ; $752e: $5a
	add hl, sp                                       ; $752f: $39
	ld a, c                                          ; $7530: $79
	xor h                                            ; $7531: $ac
	db $ec                                           ; $7532: $ec
	ld d, c                                          ; $7533: $51
	ld b, d                                          ; $7534: $42
	ld d, l                                          ; $7535: $55
	ld a, c                                          ; $7536: $79
	ld b, a                                          ; $7537: $47
	ld c, b                                          ; $7538: $48
	and b                                            ; $7539: $a0
	ld b, [hl]                                       ; $753a: $46
	dec sp                                           ; $753b: $3b
	xor h                                            ; $753c: $ac
	ld b, l                                          ; $753d: $45
	ld d, l                                          ; $753e: $55
	pop af                                           ; $753f: $f1
	add hl, bc                                       ; $7540: $09
	pop af                                           ; $7541: $f1
	cp $94                                           ; $7542: $fe $94
	ld a, b                                          ; $7544: $78
	ldh [$a0], a                                     ; $7545: $e0 $a0
	cpl                                              ; $7547: $2f
	ld b, e                                          ; $7548: $43
	db $ed                                           ; $7549: $ed
	xor c                                            ; $754a: $a9
	db $eb                                           ; $754b: $eb
	or e                                             ; $754c: $b3
	and b                                            ; $754d: $a0

jr_096_754e:
	ld [$1378], a                                    ; $754e: $ea $78 $13

jr_096_7551:
	db $ec                                           ; $7551: $ec
	push bc                                          ; $7552: $c5
	ld h, a                                          ; $7553: $67
	inc a                                            ; $7554: $3c
	ld a, [hl-]                                      ; $7555: $3a
	ld e, h                                          ; $7556: $5c
	ld d, [hl]                                       ; $7557: $56
	and b                                            ; $7558: $a0
	cpl                                              ; $7559: $2f
	ld b, e                                          ; $755a: $43
	jp hl                                            ; $755b: $e9


	ld h, a                                          ; $755c: $67
	xor b                                            ; $755d: $a8
	jp hl                                            ; $755e: $e9


	ld d, d                                          ; $755f: $52
	and b                                            ; $7560: $a0
	ld b, [hl]                                       ; $7561: $46
	dec sp                                           ; $7562: $3b
	inc [hl]                                         ; $7563: $34
	ld d, $a8                                        ; $7564: $16 $a8
	ld b, [hl]                                       ; $7566: $46
	ld a, [hl-]                                      ; $7567: $3a
	dec a                                            ; $7568: $3d
	ld c, a                                          ; $7569: $4f
	db $eb                                           ; $756a: $eb
	ld a, l                                          ; $756b: $7d
	dec a                                            ; $756c: $3d
	ld b, d                                          ; $756d: $42
	ld c, h                                          ; $756e: $4c
	and b                                            ; $756f: $a0
	cpl                                              ; $7570: $2f
	db $ec                                           ; $7571: $ec
	db $eb                                           ; $7572: $eb
	db $ed                                           ; $7573: $ed
	xor c                                            ; $7574: $a9
	db $eb                                           ; $7575: $eb
	ld b, [hl]                                       ; $7576: $46
	and b                                            ; $7577: $a0
	ld [$1378], a                                    ; $7578: $ea $78 $13
	db $ec                                           ; $757b: $ec
	push bc                                          ; $757c: $c5
	ld h, a                                          ; $757d: $67
	ld d, l                                          ; $757e: $55
	ld c, h                                          ; $757f: $4c
	and b                                            ; $7580: $a0
	cpl                                              ; $7581: $2f
	ld b, e                                          ; $7582: $43
	ld [$a044], a                                    ; $7583: $ea $44 $a0
	ld a, b                                          ; $7586: $78

jr_096_7587:
	ccf                                              ; $7587: $3f
	dec a                                            ; $7588: $3d
	ld b, d                                          ; $7589: $42
	ld c, d                                          ; $758a: $4a
	ld d, c                                          ; $758b: $51
	ld c, h                                          ; $758c: $4c
	ld c, b                                          ; $758d: $48
	and b                                            ; $758e: $a0
	cpl                                              ; $758f: $2f
	ld b, e                                          ; $7590: $43
	db $ec                                           ; $7591: $ec
	rst SubAFromDE                                          ; $7592: $df
	ld c, a                                          ; $7593: $4f
	db $eb                                           ; $7594: $eb
	ld a, b                                          ; $7595: $78
	and b                                            ; $7596: $a0
	jp z, $ebac                                      ; $7597: $ca $ac $eb

	ld e, d                                          ; $759a: $5a
	and b                                            ; $759b: $a0
	ld b, [hl]                                       ; $759c: $46
	dec sp                                           ; $759d: $3b
	inc [hl]                                         ; $759e: $34
	ld d, $a8                                        ; $759f: $16 $a8
	db $eb                                           ; $75a1: $eb
	ld a, l                                          ; $75a2: $7d
	dec a                                            ; $75a3: $3d
	ld b, c                                          ; $75a4: $41
	ld c, d                                          ; $75a5: $4a
	ld d, c                                          ; $75a6: $51
	ld c, h                                          ; $75a7: $4c
	and b                                            ; $75a8: $a0
	cpl                                              ; $75a9: $2f
	ld b, e                                          ; $75aa: $43
	db $ec                                           ; $75ab: $ec
	rst SubAFromDE                                          ; $75ac: $df
	ld c, a                                          ; $75ad: $4f
	xor h                                            ; $75ae: $ac
	db $eb                                           ; $75af: $eb
	ld a, b                                          ; $75b0: $78
	and b                                            ; $75b1: $a0
	cpl                                              ; $75b2: $2f
	db $ec                                           ; $75b3: $ec
	db $eb                                           ; $75b4: $eb
	db $ed                                           ; $75b5: $ed
	add d                                            ; $75b6: $82
	ld e, b                                          ; $75b7: $58
	ld b, c                                          ; $75b8: $41
	ld c, c                                          ; $75b9: $49
	inc de                                           ; $75ba: $13
	ldh a, [rAUDVOL]                                 ; $75bb: $f0 $24
	ld a, $f1                                        ; $75bd: $3e $f1
	adc c                                            ; $75bf: $89
	ld b, c                                          ; $75c0: $41
	ld b, h                                          ; $75c1: $44
	and b                                            ; $75c2: $a0
	ld l, a                                          ; $75c3: $6f
	inc [hl]                                         ; $75c4: $34
	di                                               ; $75c5: $f3
	db $fc                                           ; $75c6: $fc
	di                                               ; $75c7: $f3
	db $fd                                           ; $75c8: $fd
	ld a, $3d                                        ; $75c9: $3e $3d
	jr c, jr_096_7551                                ; $75cb: $38 $84

	ld d, e                                          ; $75cd: $53
	inc de                                           ; $75ce: $13
	jr c, jr_096_7623                                ; $75cf: $38 $52

	ld d, c                                          ; $75d1: $51
	ld b, d                                          ; $75d2: $42
	ld c, d                                          ; $75d3: $4a
	xor h                                            ; $75d4: $ac
	ret                                              ; $75d5: $c9


	db $eb                                           ; $75d6: $eb
	ld e, d                                          ; $75d7: $5a
	and b                                            ; $75d8: $a0
	cpl                                              ; $75d9: $2f
	ld [hl-], a                                      ; $75da: $32
	ld b, [hl]                                       ; $75db: $46
	ld c, l                                          ; $75dc: $4d
	xor c                                            ; $75dd: $a9
	xor $1e                                          ; $75de: $ee $1e
	pop af                                           ; $75e0: $f1
	ld b, [hl]                                       ; $75e1: $46
	inc [hl]                                         ; $75e2: $34
	ld l, e                                          ; $75e3: $6b
	ld b, h                                          ; $75e4: $44
	inc a                                            ; $75e5: $3c
	inc de                                           ; $75e6: $13
	ldh a, [$d2]                                     ; $75e7: $f0 $d2
	pop af                                           ; $75e9: $f1
	ld l, [hl]                                       ; $75ea: $6e
	ld d, e                                          ; $75eb: $53
	ldh a, [$5c]                                     ; $75ec: $f0 $5c
	jr c, jr_096_7587                                ; $75ee: $38 $97

	ld c, b                                          ; $75f0: $48
	and e                                            ; $75f1: $a3
	cpl                                              ; $75f2: $2f
	ld b, e                                          ; $75f3: $43
	xor $1e                                          ; $75f4: $ee $1e
	inc [hl]                                         ; $75f6: $34
	db $eb                                           ; $75f7: $eb
	ld l, b                                          ; $75f8: $68
	inc a                                            ; $75f9: $3c
	xor c                                            ; $75fa: $a9
	ld a, a                                          ; $75fb: $7f
	ldh a, [rTAC]                                    ; $75fc: $f0 $07
	ld c, d                                          ; $75fe: $4a
	ld c, a                                          ; $75ff: $4f
	ldh a, [$5c]                                     ; $7600: $f0 $5c
	jr c, jr_096_7645                                ; $7602: $38 $41

	ld e, e                                          ; $7604: $5b
	ld d, [hl]                                       ; $7605: $56
	ld c, b                                          ; $7606: $48
	and b                                            ; $7607: $a0
	cpl                                              ; $7608: $2f
	ld h, $f0                                        ; $7609: $26 $f0
	ld [hl-], a                                      ; $760b: $32
	ldh a, [rAUD4POLY]                               ; $760c: $f0 $22
	ld [hl], e                                       ; $760e: $73
	dec h                                            ; $760f: $25
	add hl, bc                                       ; $7610: $09
	cpl                                              ; $7611: $2f
	ld b, e                                          ; $7612: $43
	ld b, h                                          ; $7613: $44
	inc [hl]                                         ; $7614: $34
	add a                                            ; $7615: $87
	ldh a, [$5b]                                     ; $7616: $f0 $5b
	ldh a, [$5e]                                     ; $7618: $f0 $5e
	xor c                                            ; $761a: $a9
	add a                                            ; $761b: $87
	ldh a, [$5d]                                     ; $761c: $f0 $5d
	ld b, h                                          ; $761e: $44
	xor h                                            ; $761f: $ac
	add h                                            ; $7620: $84
	ld h, d                                          ; $7621: $62
	pop af                                           ; $7622: $f1

jr_096_7623:
	ld bc, $3a7b                                     ; $7623: $01 $7b $3a
	jr c, @+$4b                                      ; $7626: $38 $49

	ld c, b                                          ; $7628: $48
	and b                                            ; $7629: $a0
	ld b, h                                          ; $762a: $44
	inc [hl]                                         ; $762b: $34
	db $eb                                           ; $762c: $eb
	ld l, b                                          ; $762d: $68
	ld c, b                                          ; $762e: $48
	and b                                            ; $762f: $a0
	cpl                                              ; $7630: $2f
	ld b, e                                          ; $7631: $43
	sbc $87                                          ; $7632: $de $87
	ldh a, [$5b]                                     ; $7634: $f0 $5b
	ldh a, [$5e]                                     ; $7636: $f0 $5e
	xor c                                            ; $7638: $a9
	jr c, jr_096_7697                                ; $7639: $38 $5c

	ld a, [hl-]                                      ; $763b: $3a
	ld d, a                                          ; $763c: $57
	ldh a, [c]                                       ; $763d: $f2
	ld [de], a                                       ; $763e: $12
	ld c, l                                          ; $763f: $4d
	ld c, [hl]                                       ; $7640: $4e
	ld c, a                                          ; $7641: $4f
	ld b, c                                          ; $7642: $41
	ld b, h                                          ; $7643: $44
	inc a                                            ; $7644: $3c

jr_096_7645:
	ld d, b                                          ; $7645: $50
	xor h                                            ; $7646: $ac
	db $ec                                           ; $7647: $ec
	ld de, $613e                                     ; $7648: $11 $3e $61
	ld d, [hl]                                       ; $764b: $56
	dec sp                                           ; $764c: $3b
	ccf                                              ; $764d: $3f
	and b                                            ; $764e: $a0
	ld d, c                                          ; $764f: $51
	jr c, jr_096_76a4                                ; $7650: $38 $52

	ld a, c                                          ; $7652: $79
	ld b, c                                          ; $7653: $41
	xor b                                            ; $7654: $a8
	ldh a, [c]                                       ; $7655: $f2
	sub d                                            ; $7656: $92
	inc a                                            ; $7657: $3c
	ld a, c                                          ; $7658: $79
	ccf                                              ; $7659: $3f
	db $ec                                           ; $765a: $ec
	push de                                          ; $765b: $d5
	inc de                                           ; $765c: $13
	ld l, h                                          ; $765d: $6c
	dec a                                            ; $765e: $3d
	jr c, jr_096_76ab                                ; $765f: $38 $4a

	ld c, b                                          ; $7661: $48
	and b                                            ; $7662: $a0
	cpl                                              ; $7663: $2f
	ld b, e                                          ; $7664: $43
	jr c, jr_096_76d5                                ; $7665: $38 $6e

	inc [hl]                                         ; $7667: $34
	jr c, jr_096_76a2                                ; $7668: $38 $38

	ld b, c                                          ; $766a: $41
	ld b, h                                          ; $766b: $44
	ld e, l                                          ; $766c: $5d
	ld e, d                                          ; $766d: $5a
	xor b                                            ; $766e: $a8
	ld a, a                                          ; $766f: $7f
	ldh a, [rTAC]                                    ; $7670: $f0 $07
	ld d, e                                          ; $7672: $53
	ldh a, [$5c]                                     ; $7673: $f0 $5c
	jr c, @+$4b                                      ; $7675: $38 $49

	ld e, h                                          ; $7677: $5c
	ld c, e                                          ; $7678: $4b
	xor h                                            ; $7679: $ac
	ldh a, [hDisp1_LCDC]                                     ; $767a: $f0 $8f
	ld b, c                                          ; $767c: $41
	ld c, d                                          ; $767d: $4a
	dec a                                            ; $767e: $3d
	ldh a, [$38]                                     ; $767f: $f0 $38
	ld d, e                                          ; $7681: $53
	jr c, jr_096_76bc                                ; $7682: $38 $38

	ld b, l                                          ; $7684: $45
	and b                                            ; $7685: $a0
	jp hl                                            ; $7686: $e9


	inc d                                            ; $7687: $14
	xor b                                            ; $7688: $a8
	ld l, a                                          ; $7689: $6f
	inc [hl]                                         ; $768a: $34
	db $ed                                           ; $768b: $ed
	add d                                            ; $768c: $82
	db $ed                                           ; $768d: $ed
	add e                                            ; $768e: $83
	ld c, c                                          ; $768f: $49
	jr c, jr_096_76ca                                ; $7690: $38 $38

	ld d, d                                          ; $7692: $52
	ld d, c                                          ; $7693: $51
	and b                                            ; $7694: $a0
	db $ec                                           ; $7695: $ec
	cp c                                             ; $7696: $b9

jr_096_7697:
	ld d, b                                          ; $7697: $50
	inc [hl]                                         ; $7698: $34
	ld h, h                                          ; $7699: $64
	db $ed                                           ; $769a: $ed
	ld [hl], c                                       ; $769b: $71
	ld h, d                                          ; $769c: $62
	ld c, b                                          ; $769d: $48
	and b                                            ; $769e: $a0
	cpl                                              ; $769f: $2f
	ld b, e                                          ; $76a0: $43
	ld b, [hl]                                       ; $76a1: $46

jr_096_76a2:
	dec sp                                           ; $76a2: $3b
	inc [hl]                                         ; $76a3: $34

jr_096_76a4:
	halt                                             ; $76a4: $76
	xor h                                            ; $76a5: $ac
	ld de, $a812                                     ; $76a6: $11 $12 $a8
	ld b, b                                          ; $76a9: $40
	ld c, l                                          ; $76aa: $4d

jr_096_76ab:
	ld e, e                                          ; $76ab: $5b
	ld d, [hl]                                       ; $76ac: $56
	inc [hl]                                         ; $76ad: $34
	db $ec                                           ; $76ae: $ec
	rst SubAFromDE                                          ; $76af: $df
	xor b                                            ; $76b0: $a8
	ldh a, [rAUD1LOW]                                ; $76b1: $f0 $13
	ldh a, [$63]                                     ; $76b3: $f0 $63
	ld a, $61                                        ; $76b5: $3e $61
	ld d, [hl]                                       ; $76b7: $56
	xor $05                                          ; $76b8: $ee $05
	ld b, h                                          ; $76ba: $44
	ld b, l                                          ; $76bb: $45

jr_096_76bc:
	and b                                            ; $76bc: $a0
	sbc $13                                          ; $76bd: $de $13
	add sp, -$80                                     ; $76bf: $e8 $80
	xor b                                            ; $76c1: $a8
	ld de, $4158                                     ; $76c2: $11 $58 $41
	and b                                            ; $76c5: $a0
	ld b, [hl]                                       ; $76c6: $46
	dec sp                                           ; $76c7: $3b
	xor h                                            ; $76c8: $ac
	ld b, l                                          ; $76c9: $45

jr_096_76ca:
	ld d, l                                          ; $76ca: $55
	ld a, b                                          ; $76cb: $78
	ld c, l                                          ; $76cc: $4d
	ldh [$a0], a                                     ; $76cd: $e0 $a0

jr_096_76cf:
	cpl                                              ; $76cf: $2f
	ld b, e                                          ; $76d0: $43
	db $ec                                           ; $76d1: $ec
	ldh [$eb], a                                     ; $76d2: $e0 $eb
	or e                                             ; $76d4: $b3

jr_096_76d5:
	and b                                            ; $76d5: $a0
	xor $17                                          ; $76d6: $ee $17
	db $eb                                           ; $76d8: $eb
	ld l, l                                          ; $76d9: $6d
	xor h                                            ; $76da: $ac
	ld c, a                                          ; $76db: $4f
	add hl, sp                                       ; $76dc: $39
	ld h, a                                          ; $76dd: $67
	ld d, l                                          ; $76de: $55
	ld h, e                                          ; $76df: $63
	and b                                            ; $76e0: $a0
	ld b, [hl]                                       ; $76e1: $46
	dec sp                                           ; $76e2: $3b
	inc [hl]                                         ; $76e3: $34
	ld d, $a8                                        ; $76e4: $16 $a8
	ld b, [hl]                                       ; $76e6: $46
	ld a, [hl-]                                      ; $76e7: $3a
	dec a                                            ; $76e8: $3d
	ld c, a                                          ; $76e9: $4f
	ld a, b                                          ; $76ea: $78
	ccf                                              ; $76eb: $3f
	dec a                                            ; $76ec: $3d
	ld b, d                                          ; $76ed: $42
	ld c, h                                          ; $76ee: $4c
	and b                                            ; $76ef: $a0
	cpl                                              ; $76f0: $2f
	db $ec                                           ; $76f1: $ec
	db $eb                                           ; $76f2: $eb
	db $ed                                           ; $76f3: $ed
	or d                                             ; $76f4: $b2
	ld e, b                                          ; $76f5: $58
	ld b, c                                          ; $76f6: $41
	ld c, c                                          ; $76f7: $49
	inc de                                           ; $76f8: $13
	ldh a, [rAUDVOL]                                 ; $76f9: $f0 $24
	ld a, $f1                                        ; $76fb: $3e $f1
	adc c                                            ; $76fd: $89
	ld b, c                                          ; $76fe: $41
	ld b, h                                          ; $76ff: $44
	and b                                            ; $7700: $a0
	xor $17                                          ; $7701: $ee $17
	ld d, e                                          ; $7703: $53
	ldh a, [$8d]                                     ; $7704: $f0 $8d
	dec sp                                           ; $7706: $3b
	ccf                                              ; $7707: $3f
	ld c, [hl]                                       ; $7708: $4e
	inc a                                            ; $7709: $3c
	ld d, b                                          ; $770a: $50
	inc de                                           ; $770b: $13
	db $ec                                           ; $770c: $ec
	push bc                                          ; $770d: $c5
	ld h, a                                          ; $770e: $67
	ld d, l                                          ; $770f: $55
	ld h, e                                          ; $7710: $63
	and b                                            ; $7711: $a0
	ld b, [hl]                                       ; $7712: $46
	ld a, [hl-]                                      ; $7713: $3a
	dec a                                            ; $7714: $3d
	ld de, $56f0                                     ; $7715: $11 $f0 $56
	ld c, h                                          ; $7718: $4c
	xor b                                            ; $7719: $a8
	db $eb                                           ; $771a: $eb
	xor a                                            ; $771b: $af
	ld b, d                                          ; $771c: $42
	ldh a, [c]                                       ; $771d: $f2
	halt                                             ; $771e: $76
	ldh a, [$9e]                                     ; $771f: $f0 $9e
	ld b, a                                          ; $7721: $47
	xor h                                            ; $7722: $ac
	ldh a, [c]                                       ; $7723: $f2
	xor b                                            ; $7724: $a8
	di                                               ; $7725: $f3
	ld a, [de]                                       ; $7726: $1a
	ld d, c                                          ; $7727: $51
	ld c, [hl]                                       ; $7728: $4e
	ld a, a                                          ; $7729: $7f
	ld c, e                                          ; $772a: $4b
	ld a, [hl-]                                      ; $772b: $3a
	jr c, jr_096_76cf                                ; $772c: $38 $a1

	cpl                                              ; $772e: $2f
	ld b, e                                          ; $772f: $43
	ld c, e                                          ; $7730: $4b
	ld [hl], h                                       ; $7731: $74
	inc [hl]                                         ; $7732: $34
	ld a, [hl-]                                      ; $7733: $3a
	ld b, a                                          ; $7734: $47
	ld b, b                                          ; $7735: $40
	ld c, l                                          ; $7736: $4d
	xor c                                            ; $7737: $a9
	ld l, e                                          ; $7738: $6b
	ld c, d                                          ; $7739: $4a
	inc [hl]                                         ; $773a: $34
	halt                                             ; $773b: $76
	ld b, d                                          ; $773c: $42
	db $ed                                           ; $773d: $ed
	ld [hl], c                                       ; $773e: $71
	ldh a, [$2d]                                     ; $773f: $f0 $2d
	dec sp                                           ; $7741: $3b
	ccf                                              ; $7742: $3f

jr_096_7743:
	ld c, [hl]                                       ; $7743: $4e
	ld b, d                                          ; $7744: $42
	and c                                            ; $7745: $a1
	ld b, b                                          ; $7746: $40
	ld b, c                                          ; $7747: $41
	ld a, [hl-]                                      ; $7748: $3a
	sbc d                                            ; $7749: $9a
	ld c, e                                          ; $774a: $4b
	ld e, d                                          ; $774b: $5a
	add hl, sp                                       ; $774c: $39
	ld c, d                                          ; $774d: $4a
	ld c, a                                          ; $774e: $4f
	inc de                                           ; $774f: $13
	jr c, jr_096_778a                                ; $7750: $38 $38

	ld b, d                                          ; $7752: $42
	ld b, l                                          ; $7753: $45
	xor b                                            ; $7754: $a8
	ld d, c                                          ; $7755: $51
	ld c, [hl]                                       ; $7756: $4e
	ld b, d                                          ; $7757: $42
	inc [hl]                                         ; $7758: $34
	ld a, $3a                                        ; $7759: $3e $3a
	jr c, jr_096_779f                                ; $775b: $38 $42

	and c                                            ; $775d: $a1
	cpl                                              ; $775e: $2f
	ld b, e                                          ; $775f: $43
	ldh a, [c]                                       ; $7760: $f2
	xor b                                            ; $7761: $a8
	di                                               ; $7762: $f3
	ld a, [de]                                       ; $7763: $1a
	dec sp                                           ; $7764: $3b
	ccf                                              ; $7765: $3f
	inc [hl]                                         ; $7766: $34
	ld l, e                                          ; $7767: $6b
	ld b, d                                          ; $7768: $42
	ldh a, [c]                                       ; $7769: $f2
	xor b                                            ; $776a: $a8
	di                                               ; $776b: $f3
	ld a, [de]                                       ; $776c: $1a
	and c                                            ; $776d: $a1
	ldh a, [$ec]                                     ; $776e: $f0 $ec
	ld d, d                                          ; $7770: $52
	dec sp                                           ; $7771: $3b
	ccf                                              ; $7772: $3f
	ld c, [hl]                                       ; $7773: $4e
	db $ec                                           ; $7774: $ec
	ret c                                            ; $7775: $d8

	xor b                                            ; $7776: $a8
	add h                                            ; $7777: $84
	ldh a, [$65]                                     ; $7778: $f0 $65
	ldh a, [c]                                       ; $777a: $f2
	xor b                                            ; $777b: $a8
	di                                               ; $777c: $f3
	ld a, [de]                                       ; $777d: $1a
	ld b, l                                          ; $777e: $45
	and b                                            ; $777f: $a0
	cpl                                              ; $7780: $2f
	ld b, e                                          ; $7781: $43
	ld a, $34                                        ; $7782: $3e $34

jr_096_7784:
	ld a, $3a                                        ; $7784: $3e $3a
	ld d, l                                          ; $7786: $55
	ccf                                              ; $7787: $3f
	jr c, jr_096_77c2                                ; $7788: $38 $38

jr_096_778a:
	ld c, d                                          ; $778a: $4a
	ld d, c                                          ; $778b: $51
	and b                                            ; $778c: $a0
	ld b, b                                          ; $778d: $40
	add hl, sp                                       ; $778e: $39
	xor b                                            ; $778f: $a8
	ld b, b                                          ; $7790: $40
	ld b, d                                          ; $7791: $42
	ld a, a                                          ; $7792: $7f
	ld b, a                                          ; $7793: $47
	ld a, [hl-]                                      ; $7794: $3a
	dec sp                                           ; $7795: $3b
	dec a                                            ; $7796: $3d
	ld d, b                                          ; $7797: $50
	xor h                                            ; $7798: $ac
	ld l, a                                          ; $7799: $6f
	ld b, d                                          ; $779a: $42
	ldh a, [$28]                                     ; $779b: $f0 $28
	ld b, a                                          ; $779d: $47
	ld a, b                                          ; $779e: $78

jr_096_779f:
	ld a, [hl-]                                      ; $779f: $3a
	ld e, b                                          ; $77a0: $58
	jr c, jr_096_7743                                ; $77a1: $38 $a0

	cpl                                              ; $77a3: $2f
	ld b, e                                          ; $77a4: $43
	xor $1e                                          ; $77a5: $ee $1e
	inc [hl]                                         ; $77a7: $34
	ldh a, [rRP]                                     ; $77a8: $f0 $56
	ld c, e                                          ; $77aa: $4b
	and c                                            ; $77ab: $a1
	ldh a, [$aa]                                     ; $77ac: $f0 $aa
	adc c                                            ; $77ae: $89
	adc a                                            ; $77af: $8f
	ld b, d                                          ; $77b0: $42
	xor h                                            ; $77b1: $ac
	db $ec                                           ; $77b2: $ec
	inc a                                            ; $77b3: $3c
	ld b, l                                          ; $77b4: $45
	dec [hl]                                         ; $77b5: $35
	ld [$a021], a                                    ; $77b6: $ea $21 $a0
	cpl                                              ; $77b9: $2f
	ld b, e                                          ; $77ba: $43
	db $ec                                           ; $77bb: $ec
	ldh [$3c], a                                     ; $77bc: $e0 $3c
	xor l                                            ; $77be: $ad
	ld l, e                                          ; $77bf: $6b
	ld b, h                                          ; $77c0: $44
	inc a                                            ; $77c1: $3c

jr_096_77c2:
	ldh a, [$71]                                     ; $77c2: $f0 $71
	jr c, @-$0d                                      ; $77c4: $38 $f1

	ld b, [hl]                                       ; $77c6: $46
	ld b, h                                          ; $77c7: $44
	ld a, [hl-]                                      ; $77c8: $3a
	ld c, b                                          ; $77c9: $48
	and b                                            ; $77ca: $a0
	db $ed                                           ; $77cb: $ed
	add c                                            ; $77cc: $81
	inc [hl]                                         ; $77cd: $34
	ldh a, [rAUD4LEN]                                ; $77ce: $f0 $20
	ld [hl], e                                       ; $77d0: $73
	ldh a, [$32]                                     ; $77d1: $f0 $32
	xor b                                            ; $77d3: $a8
	ld b, [hl]                                       ; $77d4: $46
	ld a, [hl-]                                      ; $77d5: $3a
	dec a                                            ; $77d6: $3d
	ld c, a                                          ; $77d7: $4f
	ld a, b                                          ; $77d8: $78
	ccf                                              ; $77d9: $3f
	dec a                                            ; $77da: $3d
	ld b, d                                          ; $77db: $42
	and b                                            ; $77dc: $a0
	cpl                                              ; $77dd: $2f
	ld b, e                                          ; $77de: $43
	db $ec                                           ; $77df: $ec
	pop hl                                           ; $77e0: $e1
	db $eb                                           ; $77e1: $eb
	or e                                             ; $77e2: $b3
	and b                                            ; $77e3: $a0
	ld b, [hl]                                       ; $77e4: $46
	dec sp                                           ; $77e5: $3b
	inc [hl]                                         ; $77e6: $34
	pop af                                           ; $77e7: $f1
	ld d, $f0                                        ; $77e8: $16 $f0
	ld d, $62                                        ; $77ea: $16 $62
	inc de                                           ; $77ec: $13
	ld [hl], a                                       ; $77ed: $77
	jr c, jr_096_7784                                ; $77ee: $38 $94

	ld a, $3d                                        ; $77f0: $3e $3d
	ld h, e                                          ; $77f2: $63
	xor b                                            ; $77f3: $a8
	ld c, a                                          ; $77f4: $4f
	add hl, sp                                       ; $77f5: $39
	inc [hl]                                         ; $77f6: $34
	ld a, d                                          ; $77f7: $7a
	ld d, b                                          ; $77f8: $50
	ld a, [hl-]                                      ; $77f9: $3a
	ld d, l                                          ; $77fa: $55
	dec sp                                           ; $77fb: $3b
	ld h, c                                          ; $77fc: $61
	ld d, [hl]                                       ; $77fd: $56
	and b                                            ; $77fe: $a0
	jp hl                                            ; $77ff: $e9


	add sp, -$58                                     ; $7800: $e8 $a8
	ld b, [hl]                                       ; $7802: $46
	ld a, [hl-]                                      ; $7803: $3a
	dec a                                            ; $7804: $3d
	ld c, a                                          ; $7805: $4f
	db $eb                                           ; $7806: $eb
	ld a, l                                          ; $7807: $7d
	dec a                                            ; $7808: $3d
	ld b, d                                          ; $7809: $42
	ld c, h                                          ; $780a: $4c
	and b                                            ; $780b: $a0
	cpl                                              ; $780c: $2f
	db $ec                                           ; $780d: $ec
	db $eb                                           ; $780e: $eb
	db $ed                                           ; $780f: $ed
	cp l                                             ; $7810: $bd
	ld e, b                                          ; $7811: $58
	ld b, c                                          ; $7812: $41
	ld c, c                                          ; $7813: $49
	inc de                                           ; $7814: $13
	ldh a, [rAUDVOL]                                 ; $7815: $f0 $24
	ld a, $f1                                        ; $7817: $3e $f1
	adc c                                            ; $7819: $89
	ld b, c                                          ; $781a: $41
	ld b, h                                          ; $781b: $44
	and b                                            ; $781c: $a0
	db $ec                                           ; $781d: $ec
	cpl                                              ; $781e: $2f
	inc [hl]                                         ; $781f: $34
	db $eb                                           ; $7820: $eb
	ccf                                              ; $7821: $3f
	xor b                                            ; $7822: $a8
	ld h, h                                          ; $7823: $64
	db $ed                                           ; $7824: $ed
	ld h, d                                          ; $7825: $62
	ld d, e                                          ; $7826: $53
	sbc c                                            ; $7827: $99
	dec sp                                           ; $7828: $3b
	ccf                                              ; $7829: $3f
	ld c, [hl]                                       ; $782a: $4e
	ld b, d                                          ; $782b: $42
	xor b                                            ; $782c: $a8
	db $ec                                           ; $782d: $ec
	push bc                                          ; $782e: $c5
	ld h, a                                          ; $782f: $67
	ld d, l                                          ; $7830: $55
	ld h, e                                          ; $7831: $63
	ld c, h                                          ; $7832: $4c
	and b                                            ; $7833: $a0
	jp hl                                            ; $7834: $e9


	add sp, -$60                                     ; $7835: $e8 $a0
	cpl                                              ; $7837: $2f
	ld b, e                                          ; $7838: $43
	ld b, [hl]                                       ; $7839: $46
	dec sp                                           ; $783a: $3b
	inc [hl]                                         ; $783b: $34
	jp hl                                            ; $783c: $e9


	add sp, -$58                                     ; $783d: $e8 $a8
	ld [hl-], a                                      ; $783f: $32
	ld [hl], $36                                     ; $7840: $36 $36
	ld [hl], $54                                     ; $7842: $36 $54
	ld b, d                                          ; $7844: $42
	pop af                                           ; $7845: $f1
	ld b, [hl]                                       ; $7846: $46
	inc [hl]                                         ; $7847: $34
	ldh a, [$98]                                     ; $7848: $f0 $98
	ld [hl], $33                                     ; $784a: $36 $33
	add hl, bc                                       ; $784c: $09
	ld e, b                                          ; $784d: $58
	dec sp                                           ; $784e: $3b
	ld e, h                                          ; $784f: $5c
	inc [hl]                                         ; $7850: $34
	db $ec                                           ; $7851: $ec
	ld d, [hl]                                       ; $7852: $56
	ld c, c                                          ; $7853: $49
	inc de                                           ; $7854: $13
	ldh a, [rAUDVOL]                                 ; $7855: $f0 $24
	ld a, $3f                                        ; $7857: $3e $3f
	dec a                                            ; $7859: $3d
	ld c, d                                          ; $785a: $4a
	ld a, $66                                        ; $785b: $3e $66
	add hl, sp                                       ; $785d: $39
	xor b                                            ; $785e: $a8
	ld [$42f4], a                                    ; $785f: $ea $f4 $42
	add h                                            ; $7862: $84
	and c                                            ; $7863: $a1
	cpl                                              ; $7864: $2f
	ld b, e                                          ; $7865: $43
	ld b, b                                          ; $7866: $40
	add hl, sp                                       ; $7867: $39
	ld b, h                                          ; $7868: $44
	ld e, l                                          ; $7869: $5d
	ld e, d                                          ; $786a: $5a
	inc [hl]                                         ; $786b: $34
	ldh a, [rRP]                                     ; $786c: $f0 $56
	ld b, h                                          ; $786e: $44
	ld c, l                                          ; $786f: $4d
	and c                                            ; $7870: $a1
	ld l, a                                          ; $7871: $6f
	inc [hl]                                         ; $7872: $34
	db $ec                                           ; $7873: $ec
	ld d, a                                          ; $7874: $57
	xor b                                            ; $7875: $a8
	ld b, [hl]                                       ; $7876: $46
	ld a, [hl-]                                      ; $7877: $3a
	dec a                                            ; $7878: $3d
	ld c, e                                          ; $7879: $4b
	and c                                            ; $787a: $a1
	cpl                                              ; $787b: $2f
	ld b, e                                          ; $787c: $43
	halt                                             ; $787d: $76
	inc [hl]                                         ; $787e: $34
	ld de, $a012                                     ; $787f: $11 $12 $a0
	ld [$acab], a                                    ; $7882: $ea $ab $ac
	db $ec                                           ; $7885: $ec
	ld d, [hl]                                       ; $7886: $56
	ld b, d                                          ; $7887: $42
	db $ed                                           ; $7888: $ed
	ld h, d                                          ; $7889: $62
	ld a, [hl-]                                      ; $788a: $3a
	ld b, c                                          ; $788b: $41
	ccf                                              ; $788c: $3f
	xor h                                            ; $788d: $ac
	ldh a, [c]                                       ; $788e: $f2
	ld a, [$383e]                                    ; $788f: $fa $3e $38
	ld h, e                                          ; $7892: $63
	ld c, h                                          ; $7893: $4c
	and b                                            ; $7894: $a0
	cpl                                              ; $7895: $2f
	ld b, e                                          ; $7896: $43
	ldh a, [$34]                                     ; $7897: $f0 $34
	ld b, a                                          ; $7899: $47
	xor h                                            ; $789a: $ac
	db $ed                                           ; $789b: $ed
	ld h, d                                          ; $789c: $62
	ld a, [hl-]                                      ; $789d: $3a
	ld b, c                                          ; $789e: $41
	inc a                                            ; $789f: $3c
	db $ec                                           ; $78a0: $ec
	ret c                                            ; $78a1: $d8

	ld b, l                                          ; $78a2: $45
	and b                                            ; $78a3: $a0
	ld b, b                                          ; $78a4: $40
	add hl, sp                                       ; $78a5: $39
	pop af                                           ; $78a6: $f1
	sbc c                                            ; $78a7: $99
	ld c, l                                          ; $78a8: $4d
	ld a, [hl-]                                      ; $78a9: $3a
	jr c, jr_096_78ee                                ; $78aa: $38 $42

	xor b                                            ; $78ac: $a8
	ld l, d                                          ; $78ad: $6a
	ldh a, [$0d]                                     ; $78ae: $f0 $0d
	ld c, e                                          ; $78b0: $4b
	adc c                                            ; $78b1: $89
	sbc a                                            ; $78b2: $9f
	ld c, d                                          ; $78b3: $4a
	inc de                                           ; $78b4: $13
	ldh a, [rHDMA3]                                  ; $78b5: $f0 $53
	ld e, [hl]                                       ; $78b7: $5e
	ld c, [hl]                                       ; $78b8: $4e
	ld c, c                                          ; $78b9: $49
	jr c, jr_096_78f4                                ; $78ba: $38 $38

	ld h, e                                          ; $78bc: $63
	ld c, h                                          ; $78bd: $4c
	and b                                            ; $78be: $a0
	cpl                                              ; $78bf: $2f
	ld b, e                                          ; $78c0: $43
	rst JumpTable                                          ; $78c1: $c7
	ld b, h                                          ; $78c2: $44
	ld c, h                                          ; $78c3: $4c
	dec [hl]                                         ; $78c4: $35
	rla                                              ; $78c5: $17
	ld [hl-], a                                      ; $78c6: $32
	ld l, e                                          ; $78c7: $6b
	ld c, d                                          ; $78c8: $4a
	inc [hl]                                         ; $78c9: $34
	pop af                                           ; $78ca: $f1
	sbc c                                            ; $78cb: $99
	ld c, l                                          ; $78cc: $4d
	ld a, [hl-]                                      ; $78cd: $3a
	ld e, h                                          ; $78ce: $5c
	ld d, [hl]                                       ; $78cf: $56
	inc de                                           ; $78d0: $13
	jr c, jr_096_7930                                ; $78d1: $38 $5d

	ld a, [hl-]                                      ; $78d3: $3a
	jr c, @+$43                                      ; $78d4: $38 $41

	ld b, h                                          ; $78d6: $44
	ld [hl], $33                                     ; $78d7: $36 $33
	add hl, bc                                       ; $78d9: $09
	ld b, b                                          ; $78da: $40
	ld c, l                                          ; $78db: $4d
	ld e, e                                          ; $78dc: $5b
	ld d, [hl]                                       ; $78dd: $56
	inc [hl]                                         ; $78de: $34
	db $ec                                           ; $78df: $ec
	and d                                            ; $78e0: $a2
	xor b                                            ; $78e1: $a8
	ld e, b                                          ; $78e2: $58
	ld b, l                                          ; $78e3: $45
	ld a, [hl-]                                      ; $78e4: $3a
	ld d, b                                          ; $78e5: $50
	and b                                            ; $78e6: $a0
	cpl                                              ; $78e7: $2f
	ld b, e                                          ; $78e8: $43
	ld e, b                                          ; $78e9: $58
	inc [hl]                                         ; $78ea: $34
	ld e, b                                          ; $78eb: $58
	ld b, l                                          ; $78ec: $45
	ld a, [hl-]                                      ; $78ed: $3a

jr_096_78ee:
	ld d, b                                          ; $78ee: $50
	xor b                                            ; $78ef: $a8
	ld [hl-], a                                      ; $78f0: $32
	ld a, [hl-]                                      ; $78f1: $3a
	ld b, c                                          ; $78f2: $41
	inc a                                            ; $78f3: $3c

jr_096_78f4:
	ldh a, [$5d]                                     ; $78f4: $f0 $5d
	ld a, [hl-]                                      ; $78f6: $3a
	pop af                                           ; $78f7: $f1
	ld b, [hl]                                       ; $78f8: $46
	and e                                            ; $78f9: $a3
	ld b, b                                          ; $78fa: $40
	ld b, d                                          ; $78fb: $42
	inc a                                            ; $78fc: $3c
	dec sp                                           ; $78fd: $3b
	ld d, h                                          ; $78fe: $54
	ld c, d                                          ; $78ff: $4a
	xor h                                            ; $7900: $ac
	ld a, [hl]                                       ; $7901: $7e
	ld d, l                                          ; $7902: $55
	ld a, b                                          ; $7903: $78
	ld c, l                                          ; $7904: $4d
	ldh [$a0], a                                     ; $7905: $e0 $a0
	cpl                                              ; $7907: $2f
	ld b, e                                          ; $7908: $43
	db $ed                                           ; $7909: $ed
	ld d, e                                          ; $790a: $53
	ld c, a                                          ; $790b: $4f
	ld a, b                                          ; $790c: $78
	db $ec                                           ; $790d: $ec
	add hl, de                                       ; $790e: $19
	and b                                            ; $790f: $a0
	ld a, a                                          ; $7910: $7f
	pop af                                           ; $7911: $f1
	cp c                                             ; $7912: $b9
	ld d, l                                          ; $7913: $55
	ldh a, [rAUDVOL]                                 ; $7914: $f0 $24
	ld a, $f2                                        ; $7916: $3e $f2
	push af                                          ; $7918: $f5
	ld e, l                                          ; $7919: $5d
	ld a, [hl-]                                      ; $791a: $3a
	jr c, jr_096_7967                                ; $791b: $38 $4a

	inc de                                           ; $791d: $13
	ld d, l                                          ; $791e: $55
	ld c, l                                          ; $791f: $4d
	ld c, [hl]                                       ; $7920: $4e
	inc a                                            ; $7921: $3c
	ld a, $50                                        ; $7922: $3e $50
	xor l                                            ; $7924: $ad
	ld [$a021], a                                    ; $7925: $ea $21 $a0
	cpl                                              ; $7928: $2f
	ld b, e                                          ; $7929: $43
	db $ed                                           ; $792a: $ed
	ld d, e                                          ; $792b: $53
	xor b                                            ; $792c: $a8
	jp hl                                            ; $792d: $e9


	ld h, a                                          ; $792e: $67
	xor b                                            ; $792f: $a8

jr_096_7930:
	jp hl                                            ; $7930: $e9


	ld d, d                                          ; $7931: $52
	and b                                            ; $7932: $a0
	ldh a, [c]                                       ; $7933: $f2
	rra                                              ; $7934: $1f
	ldh a, [$38]                                     ; $7935: $f0 $38
	ld c, a                                          ; $7937: $4f
	jr c, @+$52                                      ; $7938: $38 $50

	ld a, $3f                                        ; $793a: $3e $3f
	dec a                                            ; $793c: $3d
	ld b, d                                          ; $793d: $42
	ld c, h                                          ; $793e: $4c
	and b                                            ; $793f: $a0
	cpl                                              ; $7940: $2f
	ld b, e                                          ; $7941: $43
	db $ed                                           ; $7942: $ed
	ld d, e                                          ; $7943: $53
	ld c, a                                          ; $7944: $4f
	db $eb                                           ; $7945: $eb
	ld a, b                                          ; $7946: $78
	and b                                            ; $7947: $a0
	cpl                                              ; $7948: $2f
	db $ec                                           ; $7949: $ec
	db $eb                                           ; $794a: $eb
	db $ed                                           ; $794b: $ed
	ld d, e                                          ; $794c: $53
	ld c, c                                          ; $794d: $49
	inc de                                           ; $794e: $13
	ldh a, [rAUDVOL]                                 ; $794f: $f0 $24
	ld a, $f1                                        ; $7951: $3e $f1
	adc c                                            ; $7953: $89
	ld b, c                                          ; $7954: $41
	ld b, h                                          ; $7955: $44
	and b                                            ; $7956: $a0
	ld l, a                                          ; $7957: $6f
	inc [hl]                                         ; $7958: $34
	db $ec                                           ; $7959: $ec
	ld d, [hl]                                       ; $795a: $56
	ld b, a                                          ; $795b: $47
	ldh a, [rAUD2LEN]                                ; $795c: $f0 $16
	ld d, e                                          ; $795e: $53
	inc de                                           ; $795f: $13
	ld b, [hl]                                       ; $7960: $46
	ld c, [hl]                                       ; $7961: $4e
	inc a                                            ; $7962: $3c
	ld d, b                                          ; $7963: $50
	xor l                                            ; $7964: $ad
	ld b, b                                          ; $7965: $40
	ld c, l                                          ; $7966: $4d

jr_096_7967:
	ld e, e                                          ; $7967: $5b
	ld d, [hl]                                       ; $7968: $56
	ld c, b                                          ; $7969: $48
	and b                                            ; $796a: $a0
	ld e, h                                          ; $796b: $5c
	ld d, [hl]                                       ; $796c: $56
	and b                                            ; $796d: $a0
	cpl                                              ; $796e: $2f
	ld b, e                                          ; $796f: $43
	ld b, [hl]                                       ; $7970: $46
	dec sp                                           ; $7971: $3b
	inc [hl]                                         ; $7972: $34
	db $eb                                           ; $7973: $eb
	ccf                                              ; $7974: $3f
	and b                                            ; $7975: $a0
	ret                                              ; $7976: $c9


	inc [hl]                                         ; $7977: $34
	ld e, d                                          ; $7978: $5a
	ld d, h                                          ; $7979: $54
	ld [hl], d                                       ; $797a: $72
	ccf                                              ; $797b: $3f
	inc de                                           ; $797c: $13
	pop af                                           ; $797d: $f1
	ld h, $38                                        ; $797e: $26 $38
	ccf                                              ; $7980: $3f
	ld c, [hl]                                       ; $7981: $4e
	ld b, d                                          ; $7982: $42
	and c                                            ; $7983: $a1
	cpl                                              ; $7984: $2f
	ld b, e                                          ; $7985: $43
	jr c, jr_096_79f6                                ; $7986: $38 $6e

	inc [hl]                                         ; $7988: $34
	xor $1e                                          ; $7989: $ee $1e
	ld b, b                                          ; $798b: $40
	ld b, d                                          ; $798c: $42
	xor l                                            ; $798d: $ad
	ld b, [hl]                                       ; $798e: $46
	dec sp                                           ; $798f: $3b
	inc [hl]                                         ; $7990: $34
	jp nc, Jump_096_56f0                             ; $7991: $d2 $f0 $56

	ld d, e                                          ; $7994: $53
	inc de                                           ; $7995: $13
	adc d                                            ; $7996: $8a
	ld a, $38                                        ; $7997: $3e $38
	inc a                                            ; $7999: $3c
	ld d, b                                          ; $799a: $50
	ld c, b                                          ; $799b: $48
	and b                                            ; $799c: $a0
	ld b, b                                          ; $799d: $40
	add hl, sp                                       ; $799e: $39
	xor b                                            ; $799f: $a8
	ld d, d                                          ; $79a0: $52
	inc [hl]                                         ; $79a1: $34
	ld b, b                                          ; $79a2: $40
	add hl, sp                                       ; $79a3: $39
	jr c, @+$3b                                      ; $79a4: $38 $39

	sbc d                                            ; $79a6: $9a
	ld a, [hl-]                                      ; $79a7: $3a
	ld d, b                                          ; $79a8: $50
	xor h                                            ; $79a9: $ac
	ld a, $3c                                        ; $79aa: $3e $3c
	dec a                                            ; $79ac: $3d
	db $ec                                           ; $79ad: $ec
	dec bc                                           ; $79ae: $0b
	and b                                            ; $79af: $a0
	cpl                                              ; $79b0: $2f
	ld [hl-], a                                      ; $79b1: $32
	ldh a, [$08]                                     ; $79b2: $f0 $08
	dec sp                                           ; $79b4: $3b
	xor l                                            ; $79b5: $ad
	db $ec                                           ; $79b6: $ec
	cp c                                             ; $79b7: $b9
	and e                                            ; $79b8: $a3
	ldh a, [rRP]                                     ; $79b9: $f0 $56
	inc [hl]                                         ; $79bb: $34
	db $ed                                           ; $79bc: $ed
	ld [hl], c                                       ; $79bd: $71
	ld c, e                                          ; $79be: $4b
	and c                                            ; $79bf: $a1
	cpl                                              ; $79c0: $2f
	ld b, e                                          ; $79c1: $43
	ld b, [hl]                                       ; $79c2: $46
	dec sp                                           ; $79c3: $3b
	xor h                                            ; $79c4: $ac
	ld de, $4a12                                     ; $79c5: $11 $12 $4a
	ld d, c                                          ; $79c8: $51
	and b                                            ; $79c9: $a0
	ldh a, [$2d]                                     ; $79ca: $f0 $2d
	dec sp                                           ; $79cc: $3b
	ccf                                              ; $79cd: $3f
	ld c, [hl]                                       ; $79ce: $4e
	ld c, c                                          ; $79cf: $49
	ld [hl], a                                       ; $79d0: $77
	add hl, sp                                       ; $79d1: $39
	ld e, l                                          ; $79d2: $5d
	ld e, d                                          ; $79d3: $5a
	xor h                                            ; $79d4: $ac
	ld l, a                                          ; $79d5: $6f
	ld c, e                                          ; $79d6: $4b
	ldh a, [$b3]                                     ; $79d7: $f0 $b3
	xor $25                                          ; $79d9: $ee $25
	ld b, l                                          ; $79db: $45
	xor b                                            ; $79dc: $a8
	ld [$a021], a                                    ; $79dd: $ea $21 $a0
	cpl                                              ; $79e0: $2f
	ld b, e                                          ; $79e1: $43
	xor $1e                                          ; $79e2: $ee $1e
	pop af                                           ; $79e4: $f1
	ld b, [hl]                                       ; $79e5: $46
	ld d, e                                          ; $79e6: $53
	xor h                                            ; $79e7: $ac
	db $eb                                           ; $79e8: $eb
	ld de, $464f                                     ; $79e9: $11 $4f $46
	ld c, [hl]                                       ; $79ec: $4e
	xor h                                            ; $79ed: $ac
	db $ed                                           ; $79ee: $ed
	ld d, e                                          ; $79ef: $53
	ld a, [hl-]                                      ; $79f0: $3a
	ld b, c                                          ; $79f1: $41
	ld b, h                                          ; $79f2: $44
	ld c, b                                          ; $79f3: $48
	and b                                            ; $79f4: $a0
	cpl                                              ; $79f5: $2f

jr_096_79f6:
	ld [hl-], a                                      ; $79f6: $32
	pop af                                           ; $79f7: $f1
	ld a, [bc]                                       ; $79f8: $0a
	pop af                                           ; $79f9: $f1
	inc h                                            ; $79fa: $24
	ld e, h                                          ; $79fb: $5c
	add b                                            ; $79fc: $80
	ld b, b                                          ; $79fd: $40
	add hl, sp                                       ; $79fe: $39
	and e                                            ; $79ff: $a3
	ld l, [hl]                                       ; $7a00: $6e
	dec sp                                           ; $7a01: $3b
	ld a, e                                          ; $7a02: $7b
	ld e, c                                          ; $7a03: $59
	dec sp                                           ; $7a04: $3b
	xor b                                            ; $7a05: $a8
	ld c, e                                          ; $7a06: $4b
	ld d, d                                          ; $7a07: $52
	dec sp                                           ; $7a08: $3b
	ld h, c                                          ; $7a09: $61
	ld d, [hl]                                       ; $7a0a: $56
	dec sp                                           ; $7a0b: $3b
	dec a                                            ; $7a0c: $3d
	and b                                            ; $7a0d: $a0
	cpl                                              ; $7a0e: $2f
	ld b, e                                          ; $7a0f: $43
	db $eb                                           ; $7a10: $eb
	ld a, [$134f]                                    ; $7a11: $fa $4f $13
	ld a, b                                          ; $7a14: $78
	db $ec                                           ; $7a15: $ec
	add hl, de                                       ; $7a16: $19
	and b                                            ; $7a17: $a0
	ld b, [hl]                                       ; $7a18: $46
	dec sp                                           ; $7a19: $3b
	ld c, c                                          ; $7a1a: $49
	xor h                                            ; $7a1b: $ac
	ld d, h                                          ; $7a1c: $54
	ld c, l                                          ; $7a1d: $4d
	inc a                                            ; $7a1e: $3c
	ld d, b                                          ; $7a1f: $50
	ldh a, [rAUD2LEN]                                ; $7a20: $f0 $16
	ld d, e                                          ; $7a22: $53
	inc de                                           ; $7a23: $13
	ld b, [hl]                                       ; $7a24: $46
	ld c, [hl]                                       ; $7a25: $4e
	ld b, c                                          ; $7a26: $41
	ld b, h                                          ; $7a27: $44
	dec sp                                           ; $7a28: $3b
	dec a                                            ; $7a29: $3d
	and b                                            ; $7a2a: $a0
	cpl                                              ; $7a2b: $2f
	ld b, e                                          ; $7a2c: $43
	db $eb                                           ; $7a2d: $eb
	ld a, [$e9a8]                                    ; $7a2e: $fa $a8 $e9
	ld h, a                                          ; $7a31: $67
	xor b                                            ; $7a32: $a8
	jp hl                                            ; $7a33: $e9


	ld d, d                                          ; $7a34: $52
	and b                                            ; $7a35: $a0
	ld b, [hl]                                       ; $7a36: $46
	dec sp                                           ; $7a37: $3b
	inc [hl]                                         ; $7a38: $34
	ld d, $a8                                        ; $7a39: $16 $a8
	ld a, b                                          ; $7a3b: $78
	db $ec                                           ; $7a3c: $ec
	add hl, de                                       ; $7a3d: $19
	and b                                            ; $7a3e: $a0
	cpl                                              ; $7a3f: $2f
	ld b, e                                          ; $7a40: $43
	db $eb                                           ; $7a41: $eb
	ld a, [$134f]                                    ; $7a42: $fa $4f $13
	db $eb                                           ; $7a45: $eb
	ld a, b                                          ; $7a46: $78
	and b                                            ; $7a47: $a0
	cpl                                              ; $7a48: $2f
	db $ec                                           ; $7a49: $ec
	db $eb                                           ; $7a4a: $eb
	db $ed                                           ; $7a4b: $ed
	ld d, c                                          ; $7a4c: $51
	ld e, b                                          ; $7a4d: $58
	ld b, c                                          ; $7a4e: $41
	ld c, c                                          ; $7a4f: $49
	inc de                                           ; $7a50: $13
	ldh a, [rAUDVOL]                                 ; $7a51: $f0 $24
	ld a, $f1                                        ; $7a53: $3e $f1
	adc c                                            ; $7a55: $89
	ld b, c                                          ; $7a56: $41
	ld b, h                                          ; $7a57: $44
	and b                                            ; $7a58: $a0
	ld b, [hl]                                       ; $7a59: $46
	dec sp                                           ; $7a5a: $3b
	inc [hl]                                         ; $7a5b: $34
	db $ed                                           ; $7a5c: $ed
	ld c, $ec                                        ; $7a5d: $0e $ec
	ret c                                            ; $7a5f: $d8

	and b                                            ; $7a60: $a0
	cpl                                              ; $7a61: $2f
	ld b, e                                          ; $7a62: $43
	ld e, [hl]                                       ; $7a63: $5e
	dec sp                                           ; $7a64: $3b

jr_096_7a65:
	xor c                                            ; $7a65: $a9
	adc e                                            ; $7a66: $8b
	ldh a, [$72]                                     ; $7a67: $f0 $72
	and c                                            ; $7a69: $a1
	ld [hl], b                                       ; $7a6a: $70
	inc [hl]                                         ; $7a6b: $34
	ld [hl], b                                       ; $7a6c: $70
	ld [hl], c                                       ; $7a6d: $71
	ld b, c                                          ; $7a6e: $41
	ld c, h                                          ; $7a6f: $4c
	xor b                                            ; $7a70: $a8
	db $ed                                           ; $7a71: $ed
	ld h, d                                          ; $7a72: $62
	ld c, c                                          ; $7a73: $49
	ldh a, [$2a]                                     ; $7a74: $f0 $2a
	ldh a, [$f5]                                     ; $7a76: $f0 $f5
	ld e, [hl]                                       ; $7a78: $5e
	ld h, c                                          ; $7a79: $61
	ld d, [hl]                                       ; $7a7a: $56
	dec sp                                           ; $7a7b: $3b
	dec a                                            ; $7a7c: $3d
	and b                                            ; $7a7d: $a0
	cpl                                              ; $7a7e: $2f
	ld b, e                                          ; $7a7f: $43
	adc e                                            ; $7a80: $8b
	ldh a, [$72]                                     ; $7a81: $f0 $72
	ld b, d                                          ; $7a83: $42
	db $ed                                           ; $7a84: $ed
	ld h, d                                          ; $7a85: $62
	and c                                            ; $7a86: $a1
	ld e, [hl]                                       ; $7a87: $5e
	dec sp                                           ; $7a88: $3b
	xor c                                            ; $7a89: $a9
	db $ed                                           ; $7a8a: $ed
	ld c, $f0                                        ; $7a8b: $0e $f0
	dec l                                            ; $7a8d: $2d
	dec sp                                           ; $7a8e: $3b
	ccf                                              ; $7a8f: $3f
	ld c, [hl]                                       ; $7a90: $4e
	ld b, d                                          ; $7a91: $42
	and b                                            ; $7a92: $a0
	cpl                                              ; $7a93: $2f
	ld b, e                                          ; $7a94: $43
	db $ed                                           ; $7a95: $ed
	ld b, e                                          ; $7a96: $43
	halt                                             ; $7a97: $76
	xor h                                            ; $7a98: $ac
	adc e                                            ; $7a99: $8b
	ldh a, [$72]                                     ; $7a9a: $f0 $72
	ld b, d                                          ; $7a9c: $42
	db $ed                                           ; $7a9d: $ed
	ld h, d                                          ; $7a9e: $62
	ld b, h                                          ; $7a9f: $44
	ld c, a                                          ; $7aa0: $4f
	ld b, c                                          ; $7aa1: $41
	and b                                            ; $7aa2: $a0
	ld c, h                                          ; $7aa3: $4c
	add l                                            ; $7aa4: $85
	xor h                                            ; $7aa5: $ac
	db $ed                                           ; $7aa6: $ed
	ld [hl], c                                       ; $7aa7: $71
	ldh a, [$0c]                                     ; $7aa8: $f0 $0c
	jr c, jr_096_7aeb                                ; $7aaa: $38 $3f

	ld c, a                                          ; $7aac: $4f
	jr c, jr_096_7ae7                                ; $7aad: $38 $38

	and c                                            ; $7aaf: $a1
	cpl                                              ; $7ab0: $2f
	ld b, e                                          ; $7ab1: $43
	ld de, $4412                                     ; $7ab2: $11 $12 $44
	ld b, l                                          ; $7ab5: $45
	xor b                                            ; $7ab6: $a8
	ldh a, [rRP]                                     ; $7ab7: $f0 $56
	ld c, e                                          ; $7ab9: $4b
	and c                                            ; $7aba: $a1
	ld l, a                                          ; $7abb: $6f
	ld c, e                                          ; $7abc: $4b
	inc [hl]                                         ; $7abd: $34
	db $eb                                           ; $7abe: $eb
	cp a                                             ; $7abf: $bf
	dec [hl]                                         ; $7ac0: $35
	rla                                              ; $7ac1: $17
	ld b, [hl]                                       ; $7ac2: $46
	ld a, [hl-]                                      ; $7ac3: $3a
	dec a                                            ; $7ac4: $3d
	ld d, e                                          ; $7ac5: $53
	inc [hl]                                         ; $7ac6: $34
	db $ed                                           ; $7ac7: $ed
	ld c, $42                                        ; $7ac8: $0e $42
	inc de                                           ; $7aca: $13
	add d                                            ; $7acb: $82
	dec sp                                           ; $7acc: $3b
	ccf                                              ; $7acd: $3f
	dec a                                            ; $7ace: $3d
	add h                                            ; $7acf: $84
	ld a, [hl-]                                      ; $7ad0: $3a
	ld b, c                                          ; $7ad1: $41
	ld b, h                                          ; $7ad2: $44
	and b                                            ; $7ad3: $a0
	cpl                                              ; $7ad4: $2f
	ld b, e                                          ; $7ad5: $43
	adc e                                            ; $7ad6: $8b
	ldh a, [$72]                                     ; $7ad7: $f0 $72
	inc a                                            ; $7ad9: $3c
	ld d, b                                          ; $7ada: $50
	xor c                                            ; $7adb: $a9
	ld l, e                                          ; $7adc: $6b
	add d                                            ; $7add: $82
	dec sp                                           ; $7ade: $3b
	ccf                                              ; $7adf: $3f
	ld b, c                                          ; $7ae0: $41
	ld b, h                                          ; $7ae1: $44
	ld b, [hl]                                       ; $7ae2: $46
	jr c, jr_096_7a65                                ; $7ae3: $38 $80

	ld c, b                                          ; $7ae5: $48
	and b                                            ; $7ae6: $a0

jr_096_7ae7:
	ld b, [hl]                                       ; $7ae7: $46
	dec sp                                           ; $7ae8: $3b
	inc [hl]                                         ; $7ae9: $34
	ld c, a                                          ; $7aea: $4f

jr_096_7aeb:
	add hl, sp                                       ; $7aeb: $39
	ld h, a                                          ; $7aec: $67
	inc a                                            ; $7aed: $3c
	ld a, [hl-]                                      ; $7aee: $3a
	ld e, h                                          ; $7aef: $5c
	ld d, [hl]                                       ; $7af0: $56
	xor b                                            ; $7af1: $a8
	ld [$a044], a                                    ; $7af2: $ea $44 $a0
	cpl                                              ; $7af5: $2f
	ld b, e                                          ; $7af6: $43
	adc e                                            ; $7af7: $8b
	ldh a, [$72]                                     ; $7af8: $f0 $72
	ld b, d                                          ; $7afa: $42
	db $ed                                           ; $7afb: $ed
	ld h, d                                          ; $7afc: $62
	ld c, h                                          ; $7afd: $4c
	add l                                            ; $7afe: $85
	ld c, b                                          ; $7aff: $48
	and b                                            ; $7b00: $a0
	ld b, [hl]                                       ; $7b01: $46
	dec sp                                           ; $7b02: $3b
	ld c, b                                          ; $7b03: $48
	and b                                            ; $7b04: $a0
	cpl                                              ; $7b05: $2f
	ld b, e                                          ; $7b06: $43
	db $eb                                           ; $7b07: $eb
	db $fc                                           ; $7b08: $fc
	ld c, a                                          ; $7b09: $4f
	inc de                                           ; $7b0a: $13
	db $eb                                           ; $7b0b: $eb
	ld a, b                                          ; $7b0c: $78
	xor b                                            ; $7b0d: $a8
	ld c, d                                          ; $7b0e: $4a
	ld c, a                                          ; $7b0f: $4f
	inc [hl]                                         ; $7b10: $34
	ld l, e                                          ; $7b11: $6b
	ld c, a                                          ; $7b12: $4f
	db $ec                                           ; $7b13: $ec
	dec hl                                           ; $7b14: $2b
	inc de                                           ; $7b15: $13
	pop af                                           ; $7b16: $f1
	ld b, e                                          ; $7b17: $43
	ld d, b                                          ; $7b18: $50
	ld a, [hl-]                                      ; $7b19: $3a
	ld d, l                                          ; $7b1a: $55
	ccf                                              ; $7b1b: $3f
	ld c, a                                          ; $7b1c: $4f
	ld c, b                                          ; $7b1d: $48
	and b                                            ; $7b1e: $a0
	cpl                                              ; $7b1f: $2f
	ld b, e                                          ; $7b20: $43
	db $eb                                           ; $7b21: $eb
	db $fc                                           ; $7b22: $fc
	ld c, a                                          ; $7b23: $4f
	xor h                                            ; $7b24: $ac
	db $eb                                           ; $7b25: $eb
	ld a, b                                          ; $7b26: $78
	and b                                            ; $7b27: $a0
	cpl                                              ; $7b28: $2f
	db $ec                                           ; $7b29: $ec
	db $eb                                           ; $7b2a: $eb
	xor $27                                          ; $7b2b: $ee $27
	ld h, c                                          ; $7b2d: $61
	ld d, [hl]                                       ; $7b2e: $56
	ld b, c                                          ; $7b2f: $41
	ld c, c                                          ; $7b30: $49
	inc de                                           ; $7b31: $13
	ldh a, [rAUDVOL]                                 ; $7b32: $f0 $24
	ld a, $f1                                        ; $7b34: $3e $f1
	adc c                                            ; $7b36: $89
	ld b, c                                          ; $7b37: $41
	ld b, h                                          ; $7b38: $44
	and b                                            ; $7b39: $a0
	ldh a, [$cd]                                     ; $7b3a: $f0 $cd
	pop af                                           ; $7b3c: $f1
	ret nz                                           ; $7b3d: $c0

	ldh a, [rTIMA]                                   ; $7b3e: $f0 $05
	ld b, d                                          ; $7b40: $42
	ld h, h                                          ; $7b41: $64
	db $ed                                           ; $7b42: $ed
	ld h, d                                          ; $7b43: $62
	ld c, c                                          ; $7b44: $49
	inc de                                           ; $7b45: $13
	ld a, b                                          ; $7b46: $78
	ccf                                              ; $7b47: $3f
	ld c, [hl]                                       ; $7b48: $4e
	inc a                                            ; $7b49: $3c
	ld d, b                                          ; $7b4a: $50
	xor h                                            ; $7b4b: $ac
	add sp, -$64                                     ; $7b4c: $e8 $9c
	and b                                            ; $7b4e: $a0
	cpl                                              ; $7b4f: $2f
	ld b, e                                          ; $7b50: $43
	jr c, jr_096_7b8b                                ; $7b51: $38 $38

	ld b, l                                          ; $7b53: $45
	ld a, a                                          ; $7b54: $7f
	ld b, a                                          ; $7b55: $47
	ld a, $3a                                        ; $7b56: $3e $3a
	jr c, jr_096_7ba4                                ; $7b58: $38 $4a

	xor b                                            ; $7b5a: $a8
	ld [$a044], a                                    ; $7b5b: $ea $44 $a0
	ld b, [hl]                                       ; $7b5e: $46
	inc [hl]                                         ; $7b5f: $34
	ld a, b                                          ; $7b60: $78
	ccf                                              ; $7b61: $3f
	dec a                                            ; $7b62: $3d
	ld b, d                                          ; $7b63: $42
	ld c, b                                          ; $7b64: $48
	and b                                            ; $7b65: $a0
	cpl                                              ; $7b66: $2f
	ld b, e                                          ; $7b67: $43
	db $ec                                           ; $7b68: $ec
	and $4f                                          ; $7b69: $e6 $4f
	db $eb                                           ; $7b6b: $eb
	ld a, b                                          ; $7b6c: $78
	and b                                            ; $7b6d: $a0
	ld b, b                                          ; $7b6e: $40
	ld c, l                                          ; $7b6f: $4d
	ld e, e                                          ; $7b70: $5b
	ld d, [hl]                                       ; $7b71: $56
	xor h                                            ; $7b72: $ac
	db $ed                                           ; $7b73: $ed
	ld h, d                                          ; $7b74: $62
	ld d, e                                          ; $7b75: $53
	sbc c                                            ; $7b76: $99
	dec sp                                           ; $7b77: $3b
	ccf                                              ; $7b78: $3f
	ld c, [hl]                                       ; $7b79: $4e
	inc a                                            ; $7b7a: $3c
	ld d, b                                          ; $7b7b: $50
	ld c, b                                          ; $7b7c: $48
	and b                                            ; $7b7d: $a0
	ld b, [hl]                                       ; $7b7e: $46
	dec sp                                           ; $7b7f: $3b
	inc [hl]                                         ; $7b80: $34
	ld d, $a8                                        ; $7b81: $16 $a8
	db $eb                                           ; $7b83: $eb
	ld a, l                                          ; $7b84: $7d
	dec a                                            ; $7b85: $3d
	ld b, d                                          ; $7b86: $42
	and b                                            ; $7b87: $a0
	cpl                                              ; $7b88: $2f
	ld b, e                                          ; $7b89: $43
	db $ec                                           ; $7b8a: $ec

jr_096_7b8b:
	and $4f                                          ; $7b8b: $e6 $4f
	xor h                                            ; $7b8d: $ac
	db $eb                                           ; $7b8e: $eb
	ld a, b                                          ; $7b8f: $78
	and b                                            ; $7b90: $a0
	cpl                                              ; $7b91: $2f
	db $ec                                           ; $7b92: $ec
	db $eb                                           ; $7b93: $eb
	xor $09                                          ; $7b94: $ee $09
	ld e, b                                          ; $7b96: $58
	ld b, c                                          ; $7b97: $41
	ld c, c                                          ; $7b98: $49
	inc de                                           ; $7b99: $13
	ldh a, [rAUDVOL]                                 ; $7b9a: $f0 $24
	ld a, $f1                                        ; $7b9c: $3e $f1
	adc c                                            ; $7b9e: $89
	ld b, c                                          ; $7b9f: $41
	ld b, h                                          ; $7ba0: $44
	and b                                            ; $7ba1: $a0
	ld b, [hl]                                       ; $7ba2: $46
	inc [hl]                                         ; $7ba3: $34

jr_096_7ba4:
	ld l, a                                          ; $7ba4: $6f
	inc [hl]                                         ; $7ba5: $34
	ld [hl], l                                       ; $7ba6: $75
	ld a, l                                          ; $7ba7: $7d
	ld e, b                                          ; $7ba8: $58
	ld c, b                                          ; $7ba9: $48
	inc h                                            ; $7baa: $24
	inc de                                           ; $7bab: $13
	db $ec                                           ; $7bac: $ec
	ret c                                            ; $7bad: $d8

	xor h                                            ; $7bae: $ac
	db $ec                                           ; $7baf: $ec
	ld d, [hl]                                       ; $7bb0: $56
	ld b, a                                          ; $7bb1: $47
	ldh a, [rAUD2LEN]                                ; $7bb2: $f0 $16
	db $eb                                           ; $7bb4: $eb
	ld l, l                                          ; $7bb5: $6d
	xor h                                            ; $7bb6: $ac
	ld d, d                                          ; $7bb7: $52
	dec a                                            ; $7bb8: $3d
	ld b, [hl]                                       ; $7bb9: $46
	ld c, c                                          ; $7bba: $49
	ld c, d                                          ; $7bbb: $4a
	ld c, h                                          ; $7bbc: $4c
	and b                                            ; $7bbd: $a0
	ld d, c                                          ; $7bbe: $51
	jr c, @+$54                                      ; $7bbf: $38 $52

	ld a, c                                          ; $7bc1: $79
	ld b, c                                          ; $7bc2: $41
	and b                                            ; $7bc3: $a0
	cpl                                              ; $7bc4: $2f
	ld b, e                                          ; $7bc5: $43
	add [hl]                                         ; $7bc6: $86
	and c                                            ; $7bc7: $a1
	cpl                                              ; $7bc8: $2f
	ld b, e                                          ; $7bc9: $43
	halt                                             ; $7bca: $76
	and c                                            ; $7bcb: $a1
	xor $2d                                          ; $7bcc: $ee $2d
	and b                                            ; $7bce: $a0
	cpl                                              ; $7bcf: $2f
	ld b, e                                          ; $7bd0: $43
	ld l, e                                          ; $7bd1: $6b
	inc a                                            ; $7bd2: $3c
	ld a, [hl-]                                      ; $7bd3: $3a
	and c                                            ; $7bd4: $a1
	ld l, a                                          ; $7bd5: $6f
	inc [hl]                                         ; $7bd6: $34
	db $ec                                           ; $7bd7: $ec
	cp h                                             ; $7bd8: $bc
	ld c, c                                          ; $7bd9: $49
	inc de                                           ; $7bda: $13
	jr c, jr_096_7c15                                ; $7bdb: $38 $38

	ld d, d                                          ; $7bdd: $52
	ld d, c                                          ; $7bde: $51
	xor b                                            ; $7bdf: $a8
	ldh a, [c]                                       ; $7be0: $f2
	cp b                                             ; $7be1: $b8
	db $f4                                           ; $7be2: $f4
	rst $38                                          ; $7be3: $ff
	ld d, c                                          ; $7be4: $51
	ld c, [hl]                                       ; $7be5: $4e
	ld b, l                                          ; $7be6: $45
	add hl, sp                                       ; $7be7: $39
	ld c, d                                          ; $7be8: $4a
	ldh a, [rHDMA5]                                  ; $7be9: $f0 $55
	ldh a, [rBCPS]                                   ; $7beb: $f0 $68
	ld c, d                                          ; $7bed: $4a
	ld d, c                                          ; $7bee: $51
	ld d, e                                          ; $7bef: $53
	xor h                                            ; $7bf0: $ac
	ldh a, [$bc]                                     ; $7bf1: $f0 $bc
	pop af                                           ; $7bf3: $f1
	rst SubAFromHL                                          ; $7bf4: $d7
	inc [hl]                                         ; $7bf5: $34
	ld [hl], l                                       ; $7bf6: $75
	ld a, l                                          ; $7bf7: $7d
	ld e, b                                          ; $7bf8: $58
	ld c, b                                          ; $7bf9: $48
	inc h                                            ; $7bfa: $24
	db $ec                                           ; $7bfb: $ec
	ld d, [hl]                                       ; $7bfc: $56
	ld c, c                                          ; $7bfd: $49
	inc de                                           ; $7bfe: $13
	ld h, h                                          ; $7bff: $64
	ldh a, [rAUDVOL]                                 ; $7c00: $f0 $24
	ld a, $58                                        ; $7c02: $3e $58
	ld c, l                                          ; $7c04: $4d
	ccf                                              ; $7c05: $3f
	jr c, jr_096_7c5a                                ; $7c06: $38 $52

	ld a, $3d                                        ; $7c08: $3e $3d
	ld b, l                                          ; $7c0a: $45
	ld c, h                                          ; $7c0b: $4c
	and c                                            ; $7c0c: $a1
	cpl                                              ; $7c0d: $2f
	ld b, e                                          ; $7c0e: $43
	halt                                             ; $7c0f: $76
	ld c, e                                          ; $7c10: $4b
	inc [hl]                                         ; $7c11: $34
	jp nc, $24f0                                     ; $7c12: $d2 $f0 $24

jr_096_7c15:
	ld a, $3d                                        ; $7c15: $3e $3d
	ld d, l                                          ; $7c17: $55
	inc de                                           ; $7c18: $13
	ld a, [hl-]                                      ; $7c19: $3a
	inc a                                            ; $7c1a: $3c
	dec sp                                           ; $7c1b: $3b
	dec a                                            ; $7c1c: $3d
	ld b, c                                          ; $7c1d: $41
	ld b, h                                          ; $7c1e: $44
	ld e, l                                          ; $7c1f: $5d
	ld e, d                                          ; $7c20: $5a
	ld c, h                                          ; $7c21: $4c
	xor b                                            ; $7c22: $a8
	ld b, [hl]                                       ; $7c23: $46
	inc [hl]                                         ; $7c24: $34
	halt                                             ; $7c25: $76
	inc [hl]                                         ; $7c26: $34
	ld de, $a012                                     ; $7c27: $11 $12 $a0
	ld c, a                                          ; $7c2a: $4f
	ld a, $3c                                        ; $7c2b: $3e $3c
	ld a, $3f                                        ; $7c2d: $3e $3f
	inc [hl]                                         ; $7c2f: $34
	ld b, [hl]                                       ; $7c30: $46
	ld a, [hl-]                                      ; $7c31: $3a
	dec a                                            ; $7c32: $3d
	ld c, a                                          ; $7c33: $4f
	xor h                                            ; $7c34: $ac
	db $ec                                           ; $7c35: $ec
	ld e, [hl]                                       ; $7c36: $5e
	ld l, a                                          ; $7c37: $6f
	ldh a, [c]                                       ; $7c38: $f2
	dec b                                            ; $7c39: $05
	db $ed                                           ; $7c3a: $ed
	add $42                                          ; $7c3b: $c6 $42
	ld c, b                                          ; $7c3d: $48
	add hl, bc                                       ; $7c3e: $09
	cpl                                              ; $7c3f: $2f
	ld b, e                                          ; $7c40: $43
	ld c, e                                          ; $7c41: $4b
	ld b, [hl]                                       ; $7c42: $46
	inc [hl]                                         ; $7c43: $34
	ld l, a                                          ; $7c44: $6f
	ldh a, [c]                                       ; $7c45: $f2
	dec b                                            ; $7c46: $05
	db $ed                                           ; $7c47: $ed
	add $a9                                          ; $7c48: $c6 $a9
	ld a, [hl-]                                      ; $7c4a: $3a
	ld b, c                                          ; $7c4b: $41
	ld b, d                                          ; $7c4c: $42
	sbc d                                            ; $7c4d: $9a
	and c                                            ; $7c4e: $a1
	ld e, [hl]                                       ; $7c4f: $5e
	dec sp                                           ; $7c50: $3b
	xor c                                            ; $7c51: $a9
	jr c, jr_096_7c88                                ; $7c52: $38 $34

	jr c, jr_096_7cc4                                ; $7c54: $38 $6e

	inc [hl]                                         ; $7c56: $34
	ld l, e                                          ; $7c57: $6b
	ld c, d                                          ; $7c58: $4a
	ld c, a                                          ; $7c59: $4f

jr_096_7c5a:
	ld a, [hl-]                                      ; $7c5a: $3a
	jr c, @+$44                                      ; $7c5b: $38 $42

	scf                                              ; $7c5d: $37
	inc de                                           ; $7c5e: $13
	ld [hl], b                                       ; $7c5f: $70
	ld [hl], c                                       ; $7c60: $71
	ld b, c                                          ; $7c61: $41
	ld c, h                                          ; $7c62: $4c
	and d                                            ; $7c63: $a2
	cpl                                              ; $7c64: $2f
	ld b, e                                          ; $7c65: $43
	ld l, e                                          ; $7c66: $6b
	ld b, h                                          ; $7c67: $44
	dec sp                                           ; $7c68: $3b
	dec a                                            ; $7c69: $3d
	ld b, c                                          ; $7c6a: $41
	ld b, h                                          ; $7c6b: $44
	inc [hl]                                         ; $7c6c: $34
	ld l, l                                          ; $7c6d: $6d
	ldh a, [$65]                                     ; $7c6e: $f0 $65
	ld c, b                                          ; $7c70: $48
	and b                                            ; $7c71: $a0
	cpl                                              ; $7c72: $2f
	ld [hl-], a                                      ; $7c73: $32
	db $ed                                           ; $7c74: $ed
	xor c                                            ; $7c75: $a9
	ld [$372f], a                                    ; $7c76: $ea $2f $37
	inc de                                           ; $7c79: $13
	db $eb                                           ; $7c7a: $eb
	ld h, l                                          ; $7c7b: $65
	ld b, d                                          ; $7c7c: $42
	add e                                            ; $7c7d: $83
	ldh a, [rAUD1LEN]                                ; $7c7e: $f0 $11
	ldh a, [$3d]                                     ; $7c80: $f0 $3d
	ld b, h                                          ; $7c82: $44
	scf                                              ; $7c83: $37
	inc de                                           ; $7c84: $13
	halt                                             ; $7c85: $76
	dec sp                                           ; $7c86: $3b
	ccf                                              ; $7c87: $3f

jr_096_7c88:
	pop af                                           ; $7c88: $f1
	and d                                            ; $7c89: $a2
	ld a, c                                          ; $7c8a: $79
	pop af                                           ; $7c8b: $f1
	ld b, d                                          ; $7c8c: $42
	scf                                              ; $7c8d: $37
	inc sp                                           ; $7c8e: $33
	add hl, bc                                       ; $7c8f: $09
	cpl                                              ; $7c90: $2f
	ld [hl-], a                                      ; $7c91: $32
	db $ec                                           ; $7c92: $ec
	rst SubAFromDE                                          ; $7c93: $df
	ld b, d                                          ; $7c94: $42
	inc de                                           ; $7c95: $13
	db $eb                                           ; $7c96: $eb
	ld h, b                                          ; $7c97: $60
	ld b, h                                          ; $7c98: $44
	scf                                              ; $7c99: $37
	inc de                                           ; $7c9a: $13
	ldh a, [$6d]                                     ; $7c9b: $f0 $6d
	ld e, c                                          ; $7c9d: $59
	ldh a, [$60]                                     ; $7c9e: $f0 $60
	ld b, d                                          ; $7ca0: $42
	db $ed                                           ; $7ca1: $ed
	add l                                            ; $7ca2: $85
	ld b, h                                          ; $7ca3: $44
	ld a, [hl-]                                      ; $7ca4: $3a
	ld b, c                                          ; $7ca5: $41
	ccf                                              ; $7ca6: $3f
	xor h                                            ; $7ca7: $ac
	ldh a, [$f7]                                     ; $7ca8: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $7caa: $f0 $17
	ld d, b                                          ; $7cac: $50
	ld a, $38                                        ; $7cad: $3e $38
	ld a, [hl-]                                      ; $7caf: $3a
	and e                                            ; $7cb0: $a3
	cpl                                              ; $7cb1: $2f
	ld [hl-], a                                      ; $7cb2: $32
	db $ec                                           ; $7cb3: $ec
	ldh [rSCY], a                                    ; $7cb4: $e0 $42
	inc de                                           ; $7cb6: $13
	db $eb                                           ; $7cb7: $eb
	ld h, b                                          ; $7cb8: $60
	ld b, h                                          ; $7cb9: $44
	scf                                              ; $7cba: $37
	inc de                                           ; $7cbb: $13
	xor $13                                          ; $7cbc: $ee $13
	ldh a, [rIF]                                     ; $7cbe: $f0 $0f
	ld e, c                                          ; $7cc0: $59
	ldh a, [hDisp0_WX]                                     ; $7cc1: $f0 $89
	ldh a, [c]                                       ; $7cc3: $f2

jr_096_7cc4:
	daa                                              ; $7cc4: $27
	ld [hl], e                                       ; $7cc5: $73
	ldh a, [$2b]                                     ; $7cc6: $f0 $2b
	scf                                              ; $7cc8: $37
	scf                                              ; $7cc9: $37
	scf                                              ; $7cca: $37
	inc de                                           ; $7ccb: $13
	ld d, c                                          ; $7ccc: $51
	ld [hl], b                                       ; $7ccd: $70
	jr c, jr_096_7d07                                ; $7cce: $38 $37

	scf                                              ; $7cd0: $37
	scf                                              ; $7cd1: $37
	inc sp                                           ; $7cd2: $33
	add hl, bc                                       ; $7cd3: $09
	cpl                                              ; $7cd4: $2f
	ld [hl-], a                                      ; $7cd5: $32
	db $ec                                           ; $7cd6: $ec
	pop hl                                           ; $7cd7: $e1
	ld b, d                                          ; $7cd8: $42
	inc de                                           ; $7cd9: $13
	db $eb                                           ; $7cda: $eb
	ld h, b                                          ; $7cdb: $60
	ld b, h                                          ; $7cdc: $44
	scf                                              ; $7cdd: $37
	inc de                                           ; $7cde: $13
	pop af                                           ; $7cdf: $f1
	inc l                                            ; $7ce0: $2c
	ldh a, [c]                                       ; $7ce1: $f2
	ld [$71f2], a                                    ; $7ce2: $ea $f2 $71
	pop af                                           ; $7ce5: $f1
	sbc [hl]                                         ; $7ce6: $9e
	di                                               ; $7ce7: $f3
	inc [hl]                                         ; $7ce8: $34
	pop af                                           ; $7ce9: $f1
	ld l, [hl]                                       ; $7cea: $6e
	ldh a, [rIF]                                     ; $7ceb: $f0 $0f
	add e                                            ; $7ced: $83
	ldh a, [$60]                                     ; $7cee: $f0 $60
	ldh a, [$03]                                     ; $7cf0: $f0 $03
	ld b, h                                          ; $7cf2: $44
	scf                                              ; $7cf3: $37
	inc de                                           ; $7cf4: $13
	pop af                                           ; $7cf5: $f1
	sbc l                                            ; $7cf6: $9d
	jr c, jr_096_7d4d                                ; $7cf7: $38 $54

	ld a, [hl-]                                      ; $7cf9: $3a
	ld a, c                                          ; $7cfa: $79
	ld c, [hl]                                       ; $7cfb: $4e
	inc a                                            ; $7cfc: $3c
	ld a, [hl-]                                      ; $7cfd: $3a
	ld [hl], h                                       ; $7cfe: $74
	and e                                            ; $7cff: $a3
	cpl                                              ; $7d00: $2f
	ld [hl-], a                                      ; $7d01: $32
	db $ed                                           ; $7d02: $ed
	ld d, e                                          ; $7d03: $53
	ld [$372f], a                                    ; $7d04: $ea $2f $37

jr_096_7d07:
	inc de                                           ; $7d07: $13
	ld b, c                                          ; $7d08: $41
	ld [hl], $eb                                     ; $7d09: $36 $eb
	ld de, $20ed                                     ; $7d0b: $11 $ed $20
	xor c                                            ; $7d0e: $a9
	ldh a, [rHDMA3]                                  ; $7d0f: $f0 $53
	pop af                                           ; $7d11: $f1
	ld c, [hl]                                       ; $7d12: $4e
	di                                               ; $7d13: $f3
	adc c                                            ; $7d14: $89
	ld d, d                                          ; $7d15: $52
	ld c, d                                          ; $7d16: $4a
	ldh a, [$9a]                                     ; $7d17: $f0 $9a
	jr c, jr_096_7d5a                                ; $7d19: $38 $3f

	ld c, [hl]                                       ; $7d1b: $4e
	sub a                                            ; $7d1c: $97
	scf                                              ; $7d1d: $37
	scf                                              ; $7d1e: $37
	inc sp                                           ; $7d1f: $33
	add hl, bc                                       ; $7d20: $09
	cpl                                              ; $7d21: $2f
	ld [hl-], a                                      ; $7d22: $32
	db $eb                                           ; $7d23: $eb
	ld a, [$1342]                                    ; $7d24: $fa $42 $13
	db $eb                                           ; $7d27: $eb
	ld h, b                                          ; $7d28: $60
	ld b, h                                          ; $7d29: $44
	scf                                              ; $7d2a: $37
	inc de                                           ; $7d2b: $13
	db $ec                                           ; $7d2c: $ec
	ld a, [$f042]                                    ; $7d2d: $fa $42 $f0
	cpl                                              ; $7d30: $2f
	ld e, c                                          ; $7d31: $59
	ldh a, [rOCPD]                                   ; $7d32: $f0 $6b
	ldh a, [$03]                                     ; $7d34: $f0 $03
	ldh a, [$f1]                                     ; $7d36: $f0 $f1
	ld e, c                                          ; $7d38: $59
	inc a                                            ; $7d39: $3c
	xor b                                            ; $7d3a: $a8
	ld d, h                                          ; $7d3b: $54
	ld c, l                                          ; $7d3c: $4d
	inc [hl]                                         ; $7d3d: $34
	db $ed                                           ; $7d3e: $ed
	ld a, e                                          ; $7d3f: $7b
	dec sp                                           ; $7d40: $3b
	ccf                                              ; $7d41: $3f
	ld c, [hl]                                       ; $7d42: $4e
	ld b, c                                          ; $7d43: $41
	ld b, h                                          ; $7d44: $44
	ld b, l                                          ; $7d45: $45
	ld a, [hl-]                                      ; $7d46: $3a
	and e                                            ; $7d47: $a3
	cpl                                              ; $7d48: $2f
	ld [hl-], a                                      ; $7d49: $32
	db $ec                                           ; $7d4a: $ec
	and $42                                          ; $7d4b: $e6 $42

jr_096_7d4d:
	inc de                                           ; $7d4d: $13
	db $eb                                           ; $7d4e: $eb
	ld h, b                                          ; $7d4f: $60
	ld b, h                                          ; $7d50: $44
	scf                                              ; $7d51: $37
	inc de                                           ; $7d52: $13
	add e                                            ; $7d53: $83
	ldh a, [rIF]                                     ; $7d54: $f0 $0f
	ld a, l                                          ; $7d56: $7d
	ldh a, [c]                                       ; $7d57: $f2
	ld [hl], c                                       ; $7d58: $71
	add b                                            ; $7d59: $80

jr_096_7d5a:
	ldh a, [$ee]                                     ; $7d5a: $f0 $ee
	ldh a, [c]                                       ; $7d5c: $f2
	cp c                                             ; $7d5d: $b9
	db $ed                                           ; $7d5e: $ed
	jr nz, jr_096_7d98                               ; $7d5f: $20 $37

	inc de                                           ; $7d61: $13
	db $dd                                           ; $7d62: $dd
	db $ec                                           ; $7d63: $ec
	di                                               ; $7d64: $f3
	db $f4                                           ; $7d65: $f4
	ld e, h                                          ; $7d66: $5c
	ld h, d                                          ; $7d67: $62
	ldh a, [$75]                                     ; $7d68: $f0 $75
	db $f4                                           ; $7d6a: $f4
	cp $44                                           ; $7d6b: $fe $44
	scf                                              ; $7d6d: $37
	inc sp                                           ; $7d6e: $33
	add hl, bc                                       ; $7d6f: $09
	cpl                                              ; $7d70: $2f
	ld [hl-], a                                      ; $7d71: $32
	add hl, sp                                       ; $7d72: $39
	dec sp                                           ; $7d73: $3b
	ld c, b                                          ; $7d74: $48
	scf                                              ; $7d75: $37
	ld [hl], $eb                                     ; $7d76: $36 $eb
	add h                                            ; $7d78: $84
	ld c, b                                          ; $7d79: $48
	rla                                              ; $7d7a: $17
	db $ec                                           ; $7d7b: $ec
	di                                               ; $7d7c: $f3
	ld b, d                                          ; $7d7d: $42
	ldh a, [rAUD4POLY]                               ; $7d7e: $f0 $22
	ld a, l                                          ; $7d80: $7d
	ld h, l                                          ; $7d81: $65
	sub [hl]                                         ; $7d82: $96
	ld d, a                                          ; $7d83: $57
	ldh a, [rBCPD]                                   ; $7d84: $f0 $69
	ldh a, [$1f]                                     ; $7d86: $f0 $1f
	ldh a, [rAUD3LOW]                                ; $7d88: $f0 $1d
	ld a, l                                          ; $7d8a: $7d
	ldh a, [$32]                                     ; $7d8b: $f0 $32
	xor b                                            ; $7d8d: $a8
	ld l, e                                          ; $7d8e: $6b
	ldh a, [$a4]                                     ; $7d8f: $f0 $a4
	ld e, [hl]                                       ; $7d91: $5e
	ccf                                              ; $7d92: $3f
	ld c, [hl]                                       ; $7d93: $4e
	ld b, c                                          ; $7d94: $41
	ld b, h                                          ; $7d95: $44
	inc [hl]                                         ; $7d96: $34

jr_096_7d97:
	ld b, [hl]                                       ; $7d97: $46

jr_096_7d98:
	jr c, @-$7e                                      ; $7d98: $38 $80

	and e                                            ; $7d9a: $a3
	cpl                                              ; $7d9b: $2f
	ld [hl-], a                                      ; $7d9c: $32
	db $ed                                           ; $7d9d: $ed
	xor c                                            ; $7d9e: $a9
	ld [$372f], a                                    ; $7d9f: $ea $2f $37
	inc de                                           ; $7da2: $13
	ldh a, [rAUD4GO]                                 ; $7da3: $f0 $23
	jr c, jr_096_7d97                                ; $7da5: $38 $f0

	ld de, $f159                                     ; $7da7: $11 $59 $f1
	ld [hl+], a                                      ; $7daa: $22
	ld e, c                                          ; $7dab: $59
	ldh a, [$35]                                     ; $7dac: $f0 $35
	ld [hl], e                                       ; $7dae: $73
	add c                                            ; $7daf: $81
	inc a                                            ; $7db0: $3c
	ld [hl], h                                       ; $7db1: $74
	xor l                                            ; $7db2: $ad
	halt                                             ; $7db3: $76
	dec sp                                           ; $7db4: $3b
	ccf                                              ; $7db5: $3f
	pop af                                           ; $7db6: $f1
	and d                                            ; $7db7: $a2
	ld a, c                                          ; $7db8: $79
	pop af                                           ; $7db9: $f1
	ld b, d                                          ; $7dba: $42
	scf                                              ; $7dbb: $37
	inc sp                                           ; $7dbc: $33
	add hl, bc                                       ; $7dbd: $09
	cpl                                              ; $7dbe: $2f
	ld [hl-], a                                      ; $7dbf: $32
	db $ec                                           ; $7dc0: $ec
	rst SubAFromDE                                          ; $7dc1: $df
	ld b, d                                          ; $7dc2: $42
	inc de                                           ; $7dc3: $13
	db $eb                                           ; $7dc4: $eb
	ld h, b                                          ; $7dc5: $60
	ld b, h                                          ; $7dc6: $44
	scf                                              ; $7dc7: $37
	inc de                                           ; $7dc8: $13
	ldh a, [c]                                       ; $7dc9: $f2
	and d                                            ; $7dca: $a2
	ld a, $f0                                        ; $7dcb: $3e $f0
	add [hl]                                         ; $7dcd: $86
	ld b, d                                          ; $7dce: $42
	ld a, $64                                        ; $7dcf: $3e $64
	ld d, a                                          ; $7dd1: $57
	ld b, h                                          ; $7dd2: $44
	ld a, [hl-]                                      ; $7dd3: $3a
	ld b, c                                          ; $7dd4: $41
	ccf                                              ; $7dd5: $3f
	xor h                                            ; $7dd6: $ac
	ldh a, [$f7]                                     ; $7dd7: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $7dd9: $f0 $17
	ld d, b                                          ; $7ddb: $50
	ld a, $38                                        ; $7ddc: $3e $38
	ld a, [hl-]                                      ; $7dde: $3a
	and e                                            ; $7ddf: $a3
	cpl                                              ; $7de0: $2f
	ld [hl-], a                                      ; $7de1: $32
	db $ec                                           ; $7de2: $ec
	ldh [rSCY], a                                    ; $7de3: $e0 $42
	inc de                                           ; $7de5: $13
	db $eb                                           ; $7de6: $eb
	ld h, b                                          ; $7de7: $60
	ld b, h                                          ; $7de8: $44
	scf                                              ; $7de9: $37
	inc de                                           ; $7dea: $13
	db $ed                                           ; $7deb: $ed
	sbc [hl]                                         ; $7dec: $9e
	ld l, c                                          ; $7ded: $69
	pop af                                           ; $7dee: $f1
	db $e4                                           ; $7def: $e4
	add e                                            ; $7df0: $83
	ld e, c                                          ; $7df1: $59
	ldh a, [rIF]                                     ; $7df2: $f0 $0f
	ld e, c                                          ; $7df4: $59
	ld [$37f3], a                                    ; $7df5: $ea $f3 $37
	inc de                                           ; $7df8: $13
	ld d, c                                          ; $7df9: $51
	ld [hl], b                                       ; $7dfa: $70
	jr c, jr_096_7e34                                ; $7dfb: $38 $37

	scf                                              ; $7dfd: $37
	scf                                              ; $7dfe: $37
	inc sp                                           ; $7dff: $33
	add hl, bc                                       ; $7e00: $09
	cpl                                              ; $7e01: $2f
	ld [hl-], a                                      ; $7e02: $32
	db $ec                                           ; $7e03: $ec
	pop hl                                           ; $7e04: $e1
	ld b, d                                          ; $7e05: $42
	inc de                                           ; $7e06: $13
	db $eb                                           ; $7e07: $eb
	ld h, b                                          ; $7e08: $60
	ld b, h                                          ; $7e09: $44
	scf                                              ; $7e0a: $37
	inc de                                           ; $7e0b: $13
	ldh a, [$a6]                                     ; $7e0c: $f0 $a6
	ld e, c                                          ; $7e0e: $59
	pop af                                           ; $7e0f: $f1
	ld [hl], h                                       ; $7e10: $74
	ld e, c                                          ; $7e11: $59
	ld b, d                                          ; $7e12: $42
	ldh a, [$7a]                                     ; $7e13: $f0 $7a
	ldh a, [rAUDTERM]                                ; $7e15: $f0 $25
	inc a                                            ; $7e17: $3c
	xor b                                            ; $7e18: $a8
	add hl, sp                                       ; $7e19: $39
	pop af                                           ; $7e1a: $f1
	dec [hl]                                         ; $7e1b: $35
	ld b, c                                          ; $7e1c: $41
	db $ed                                           ; $7e1d: $ed
	ld e, a                                          ; $7e1e: $5f
	pop af                                           ; $7e1f: $f1
	inc bc                                           ; $7e20: $03
	ld b, h                                          ; $7e21: $44
	ld a, [hl-]                                      ; $7e22: $3a
	ld [hl], h                                       ; $7e23: $74
	and e                                            ; $7e24: $a3
	cpl                                              ; $7e25: $2f
	ld [hl-], a                                      ; $7e26: $32
	db $ed                                           ; $7e27: $ed
	ld d, e                                          ; $7e28: $53
	ld [$372f], a                                    ; $7e29: $ea $2f $37
	inc de                                           ; $7e2c: $13
	ld b, c                                          ; $7e2d: $41
	ld [hl], $f0                                     ; $7e2e: $36 $f0
	or e                                             ; $7e30: $b3
	xor $25                                          ; $7e31: $ee $25
	db $f4                                           ; $7e33: $f4

jr_096_7e34:
	db $fd                                           ; $7e34: $fd
	ldh a, [$0b]                                     ; $7e35: $f0 $0b
	di                                               ; $7e37: $f3
	db $10                                           ; $7e38: $10
	xor c                                            ; $7e39: $a9
	ldh a, [$0a]                                     ; $7e3a: $f0 $0a
	pop af                                           ; $7e3c: $f1
	jr jr_096_7e73                                   ; $7e3d: $18 $34

	db $ed                                           ; $7e3f: $ed
	ld d, e                                          ; $7e40: $53
	ld b, d                                          ; $7e41: $42
	ldh a, [$28]                                     ; $7e42: $f0 $28
	ldh a, [$5a]                                     ; $7e44: $f0 $5a
	ld h, a                                          ; $7e46: $67
	ld d, h                                          ; $7e47: $54
	add hl, sp                                       ; $7e48: $39
	scf                                              ; $7e49: $37
	inc sp                                           ; $7e4a: $33
	add hl, bc                                       ; $7e4b: $09
	cpl                                              ; $7e4c: $2f
	ld [hl-], a                                      ; $7e4d: $32
	db $eb                                           ; $7e4e: $eb
	ld a, [$1342]                                    ; $7e4f: $fa $42 $13
	db $eb                                           ; $7e52: $eb

jr_096_7e53:
	ld h, b                                          ; $7e53: $60
	ld b, h                                          ; $7e54: $44
	scf                                              ; $7e55: $37
	inc de                                           ; $7e56: $13
	ldh a, [$08]                                     ; $7e57: $f0 $08
	ld e, c                                          ; $7e59: $59
	inc [hl]                                         ; $7e5a: $34
	ldh a, [rSC]                                     ; $7e5b: $f0 $02
	ld a, l                                          ; $7e5d: $7d
	ldh a, [rAUD3LOW]                                ; $7e5e: $f0 $1d
	inc a                                            ; $7e60: $3c
	xor b                                            ; $7e61: $a8
	ld d, h                                          ; $7e62: $54
	ld c, l                                          ; $7e63: $4d
	inc [hl]                                         ; $7e64: $34
	db $ed                                           ; $7e65: $ed
	ld a, e                                          ; $7e66: $7b
	dec sp                                           ; $7e67: $3b
	ccf                                              ; $7e68: $3f
	ld c, [hl]                                       ; $7e69: $4e
	ld b, c                                          ; $7e6a: $41
	ld b, h                                          ; $7e6b: $44
	dec sp                                           ; $7e6c: $3b
	ld e, l                                          ; $7e6d: $5d
	ld [hl], $33                                     ; $7e6e: $36 $33
	add hl, bc                                       ; $7e70: $09
	cpl                                              ; $7e71: $2f
	ld [hl-], a                                      ; $7e72: $32

jr_096_7e73:
	db $eb                                           ; $7e73: $eb
	db $fc                                           ; $7e74: $fc
	ld b, d                                          ; $7e75: $42
	inc de                                           ; $7e76: $13
	db $eb                                           ; $7e77: $eb
	ld h, b                                          ; $7e78: $60
	ld b, h                                          ; $7e79: $44
	scf                                              ; $7e7a: $37
	inc de                                           ; $7e7b: $13
	ld [$44fd], a                                    ; $7e7c: $ea $fd $44
	ld a, [hl-]                                      ; $7e7f: $3a
	xor b                                            ; $7e80: $a8
	ld l, d                                          ; $7e81: $6a
	ldh a, [$0d]                                     ; $7e82: $f0 $0d
	inc [hl]                                         ; $7e84: $34
	xor $06                                          ; $7e85: $ee $06
	ld b, a                                          ; $7e87: $47
	ldh a, [$b2]                                     ; $7e88: $f0 $b2
	pop af                                           ; $7e8a: $f1
	halt                                             ; $7e8b: $76
	add hl, sp                                       ; $7e8c: $39
	and e                                            ; $7e8d: $a3
	cpl                                              ; $7e8e: $2f
	ld [hl-], a                                      ; $7e8f: $32
	db $ec                                           ; $7e90: $ec
	and $42                                          ; $7e91: $e6 $42
	inc de                                           ; $7e93: $13
	db $eb                                           ; $7e94: $eb
	ld h, b                                          ; $7e95: $60
	ld b, h                                          ; $7e96: $44
	scf                                              ; $7e97: $37
	inc de                                           ; $7e98: $13
	ldh a, [c]                                       ; $7e99: $f2
	rrca                                             ; $7e9a: $0f
	ld b, d                                          ; $7e9b: $42
	di                                               ; $7e9c: $f3
	or b                                             ; $7e9d: $b0
	pop af                                           ; $7e9e: $f1
	xor a                                            ; $7e9f: $af
	db $ed                                           ; $7ea0: $ed
	jr nz, @+$39                                     ; $7ea1: $20 $37

	inc de                                           ; $7ea3: $13
	ld l, e                                          ; $7ea4: $6b
	ld h, d                                          ; $7ea5: $62
	di                                               ; $7ea6: $f3
	or b                                             ; $7ea7: $b0
	ld h, h                                          ; $7ea8: $64
	add hl, sp                                       ; $7ea9: $39
	inc a                                            ; $7eaa: $3c
	ld a, [hl-]                                      ; $7eab: $3a
	and e                                            ; $7eac: $a3
	cpl                                              ; $7ead: $2f
	ld [hl-], a                                      ; $7eae: $32
	add hl, sp                                       ; $7eaf: $39
	dec sp                                           ; $7eb0: $3b
	ld c, b                                          ; $7eb1: $48
	scf                                              ; $7eb2: $37
	ld [hl], $eb                                     ; $7eb3: $36 $eb
	add h                                            ; $7eb5: $84
	xor e                                            ; $7eb6: $ab
	db $ec                                           ; $7eb7: $ec
	di                                               ; $7eb8: $f3
	ld b, d                                          ; $7eb9: $42
	pop af                                           ; $7eba: $f1
	ld e, d                                          ; $7ebb: $5a
	ldh a, [rOBP1]                                   ; $7ebc: $f0 $49
	di                                               ; $7ebe: $f3
	ret z                                            ; $7ebf: $c8

	pop af                                           ; $7ec0: $f1
	ld [de], a                                       ; $7ec1: $12
	add e                                            ; $7ec2: $83
	ldh a, [rDIV]                                    ; $7ec3: $f0 $04
	ld e, c                                          ; $7ec5: $59
	xor b                                            ; $7ec6: $a8
	ld l, e                                          ; $7ec7: $6b
	ldh a, [$a4]                                     ; $7ec8: $f0 $a4
	ld e, [hl]                                       ; $7eca: $5e
	ccf                                              ; $7ecb: $3f
	ld c, [hl]                                       ; $7ecc: $4e
	ld b, c                                          ; $7ecd: $41
	ld b, h                                          ; $7ece: $44

jr_096_7ecf:
	inc [hl]                                         ; $7ecf: $34
	ld b, [hl]                                       ; $7ed0: $46
	jr c, jr_096_7e53                                ; $7ed1: $38 $80

	and e                                            ; $7ed3: $a3
	cpl                                              ; $7ed4: $2f
	ld [hl-], a                                      ; $7ed5: $32
	db $ed                                           ; $7ed6: $ed
	xor c                                            ; $7ed7: $a9
	ld [$372f], a                                    ; $7ed8: $ea $2f $37
	inc de                                           ; $7edb: $13
	ldh a, [c]                                       ; $7edc: $f2
	jr c, jr_096_7ecf                                ; $7edd: $38 $f0

	rlca                                             ; $7edf: $07
	ldh a, [$99]                                     ; $7ee0: $f0 $99
	db $f4                                           ; $7ee2: $f4
	db $fc                                           ; $7ee3: $fc
	ld b, d                                          ; $7ee4: $42
	ldh a, [c]                                       ; $7ee5: $f2
	ld b, h                                          ; $7ee6: $44
	ld e, c                                          ; $7ee7: $59
	ldh a, [rIF]                                     ; $7ee8: $f0 $0f
	ld e, c                                          ; $7eea: $59
	ldh a, [$ba]                                     ; $7eeb: $f0 $ba
	ld a, l                                          ; $7eed: $7d
	ldh a, [$8e]                                     ; $7eee: $f0 $8e
	xor b                                            ; $7ef0: $a8
	db $ed                                           ; $7ef1: $ed
	xor c                                            ; $7ef2: $a9
	ld d, b                                          ; $7ef3: $50
	ld a, $38                                        ; $7ef4: $3e $38
	ld a, [hl-]                                      ; $7ef6: $3a
	ld [hl], h                                       ; $7ef7: $74
	and e                                            ; $7ef8: $a3
	cpl                                              ; $7ef9: $2f
	ld [hl-], a                                      ; $7efa: $32
	db $ec                                           ; $7efb: $ec
	rst SubAFromDE                                          ; $7efc: $df
	ld b, d                                          ; $7efd: $42
	inc de                                           ; $7efe: $13
	db $eb                                           ; $7eff: $eb
	ld h, b                                          ; $7f00: $60
	ld b, h                                          ; $7f01: $44
	scf                                              ; $7f02: $37
	inc de                                           ; $7f03: $13
	ldh a, [rP1]                                     ; $7f04: $f0 $00
	ldh a, [$03]                                     ; $7f06: $f0 $03
	ldh a, [$c2]                                     ; $7f08: $f0 $c2
	ld b, d                                          ; $7f0a: $42
	db $ed                                           ; $7f0b: $ed
	add l                                            ; $7f0c: $85
	ld b, h                                          ; $7f0d: $44
	ld a, [hl-]                                      ; $7f0e: $3a
	ld b, c                                          ; $7f0f: $41
	ccf                                              ; $7f10: $3f
	xor h                                            ; $7f11: $ac
	ldh a, [$f7]                                     ; $7f12: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $7f14: $f0 $17
	ld d, b                                          ; $7f16: $50
	ld a, $38                                        ; $7f17: $3e $38
	ld a, [hl-]                                      ; $7f19: $3a
	and e                                            ; $7f1a: $a3
	cpl                                              ; $7f1b: $2f
	ld [hl-], a                                      ; $7f1c: $32
	db $ec                                           ; $7f1d: $ec
	ldh [rSCY], a                                    ; $7f1e: $e0 $42
	inc de                                           ; $7f20: $13
	db $eb                                           ; $7f21: $eb
	ld h, b                                          ; $7f22: $60
	ld b, h                                          ; $7f23: $44
	scf                                              ; $7f24: $37
	inc de                                           ; $7f25: $13
	di                                               ; $7f26: $f3
	ld de, $12f3                                     ; $7f27: $11 $f3 $12
	ldh a, [$3a]                                     ; $7f2a: $f0 $3a
	adc h                                            ; $7f2c: $8c
	db $f4                                           ; $7f2d: $f4
	ei                                               ; $7f2e: $fb
	scf                                              ; $7f2f: $37
	scf                                              ; $7f30: $37
	scf                                              ; $7f31: $37
	inc de                                           ; $7f32: $13
	ld d, c                                          ; $7f33: $51
	ld [hl], b                                       ; $7f34: $70
	jr c, jr_096_7f6e                                ; $7f35: $38 $37

	scf                                              ; $7f37: $37
	scf                                              ; $7f38: $37
	inc sp                                           ; $7f39: $33
	add hl, bc                                       ; $7f3a: $09
	cpl                                              ; $7f3b: $2f
	ld [hl-], a                                      ; $7f3c: $32
	db $ec                                           ; $7f3d: $ec
	pop hl                                           ; $7f3e: $e1
	ld b, d                                          ; $7f3f: $42
	inc de                                           ; $7f40: $13
	db $eb                                           ; $7f41: $eb
	ld h, b                                          ; $7f42: $60
	ld b, h                                          ; $7f43: $44
	scf                                              ; $7f44: $37
	inc de                                           ; $7f45: $13
	ldh a, [$8e]                                     ; $7f46: $f0 $8e
	ldh a, [$c4]                                     ; $7f48: $f0 $c4
	ld e, c                                          ; $7f4a: $59
	ldh a, [rP1]                                     ; $7f4b: $f0 $00
	ld h, l                                          ; $7f4d: $65
	ldh a, [$50]                                     ; $7f4e: $f0 $50
	di                                               ; $7f50: $f3
	cp a                                             ; $7f51: $bf
	ldh a, [rHDMA3]                                  ; $7f52: $f0 $53
	ldh a, [rAUDVOL]                                 ; $7f54: $f0 $24
	sub [hl]                                         ; $7f56: $96
	ldh a, [c]                                       ; $7f57: $f2
	inc de                                           ; $7f58: $13
	inc a                                            ; $7f59: $3c
	xor b                                            ; $7f5a: $a8
	ld a, [hl-]                                      ; $7f5b: $3a
	ld b, a                                          ; $7f5c: $47
	ld a, [hl-]                                      ; $7f5d: $3a
	ld b, a                                          ; $7f5e: $47
	ld c, b                                          ; $7f5f: $48
	db $ec                                           ; $7f60: $ec
	ld d, a                                          ; $7f61: $57
	db $f4                                           ; $7f62: $f4
	ld a, [$3336]                                    ; $7f63: $fa $36 $33
	add hl, bc                                       ; $7f66: $09
	cpl                                              ; $7f67: $2f
	ld [hl-], a                                      ; $7f68: $32
	db $ed                                           ; $7f69: $ed
	ld d, e                                          ; $7f6a: $53
	ld [$372f], a                                    ; $7f6b: $ea $2f $37

jr_096_7f6e:
	inc de                                           ; $7f6e: $13
	ldh a, [$b3]                                     ; $7f6f: $f0 $b3
	xor $25                                          ; $7f71: $ee $25
	add c                                            ; $7f73: $81
	ldh a, [$1f]                                     ; $7f74: $f0 $1f
	pop af                                           ; $7f76: $f1
	dec b                                            ; $7f77: $05
	ld e, c                                          ; $7f78: $59
	sbc b                                            ; $7f79: $98
	ldh a, [rWX]                                     ; $7f7a: $f0 $4b
	ld h, l                                          ; $7f7c: $65
	ldh a, [$de]                                     ; $7f7d: $f0 $de
	ldh a, [rWY]                                     ; $7f7f: $f0 $4a
	ldh a, [$c3]                                     ; $7f81: $f0 $c3
	scf                                              ; $7f83: $37
	inc de                                           ; $7f84: $13
	ldh a, [c]                                       ; $7f85: $f2
	ld h, c                                          ; $7f86: $61
	di                                               ; $7f87: $f3
	ld e, [hl]                                       ; $7f88: $5e
	ldh a, [c]                                       ; $7f89: $f2
	ld l, b                                          ; $7f8a: $68
	ld b, d                                          ; $7f8b: $42
	ldh a, [$a7]                                     ; $7f8c: $f0 $a7
	ldh a, [rAUD2HIGH]                               ; $7f8e: $f0 $19
	ld b, a                                          ; $7f90: $47

jr_096_7f91:
	ldh a, [$67]                                     ; $7f91: $f0 $67
	ldh a, [c]                                       ; $7f93: $f2
	dec h                                            ; $7f94: $25
	ld b, h                                          ; $7f95: $44
	scf                                              ; $7f96: $37
	inc sp                                           ; $7f97: $33
	add hl, bc                                       ; $7f98: $09
	cpl                                              ; $7f99: $2f
	ld [hl-], a                                      ; $7f9a: $32
	db $eb                                           ; $7f9b: $eb
	ld a, [$1342]                                    ; $7f9c: $fa $42 $13
	db $eb                                           ; $7f9f: $eb
	ld h, b                                          ; $7fa0: $60
	ld b, h                                          ; $7fa1: $44
	scf                                              ; $7fa2: $37
	inc de                                           ; $7fa3: $13
	ldh a, [$b2]                                     ; $7fa4: $f0 $b2
	ldh a, [rLY]                                     ; $7fa6: $f0 $44
	pop af                                           ; $7fa8: $f1
	sbc b                                            ; $7fa9: $98
	ld b, d                                          ; $7faa: $42
	ldh a, [$8e]                                     ; $7fab: $f0 $8e
	ldh a, [rP1]                                     ; $7fad: $f0 $00
	ld e, c                                          ; $7faf: $59
	db $ec                                           ; $7fb0: $ec
	dec c                                            ; $7fb1: $0d
	scf                                              ; $7fb2: $37
	inc de                                           ; $7fb3: $13
	db $ec                                           ; $7fb4: $ec
	rla                                              ; $7fb5: $17
	scf                                              ; $7fb6: $37
	inc sp                                           ; $7fb7: $33
	add hl, bc                                       ; $7fb8: $09
	cpl                                              ; $7fb9: $2f
	ld [hl-], a                                      ; $7fba: $32
	db $eb                                           ; $7fbb: $eb
	db $fc                                           ; $7fbc: $fc
	ld b, d                                          ; $7fbd: $42
	inc de                                           ; $7fbe: $13
	db $eb                                           ; $7fbf: $eb
	ld h, b                                          ; $7fc0: $60
	ld b, h                                          ; $7fc1: $44
	scf                                              ; $7fc2: $37
	inc de                                           ; $7fc3: $13
	ldh a, [$6e]                                     ; $7fc4: $f0 $6e
	ld e, c                                          ; $7fc6: $59
	ldh a, [$32]                                     ; $7fc7: $f0 $32
	ldh a, [$6d]                                     ; $7fc9: $f0 $6d
	ld e, c                                          ; $7fcb: $59
	ldh a, [$27]                                     ; $7fcc: $f0 $27
	ld b, h                                          ; $7fce: $44
	ld a, [hl-]                                      ; $7fcf: $3a
	xor b                                            ; $7fd0: $a8
	ld l, d                                          ; $7fd1: $6a
	ldh a, [$0d]                                     ; $7fd2: $f0 $0d
	inc [hl]                                         ; $7fd4: $34
	xor $06                                          ; $7fd5: $ee $06
	ld b, a                                          ; $7fd7: $47
	ldh a, [$b2]                                     ; $7fd8: $f0 $b2
	pop af                                           ; $7fda: $f1
	halt                                             ; $7fdb: $76
	add hl, sp                                       ; $7fdc: $39
	and e                                            ; $7fdd: $a3
	cpl                                              ; $7fde: $2f
	ld [hl-], a                                      ; $7fdf: $32
	db $ec                                           ; $7fe0: $ec
	and $42                                          ; $7fe1: $e6 $42
	inc de                                           ; $7fe3: $13
	db $eb                                           ; $7fe4: $eb
	ld h, b                                          ; $7fe5: $60
	ld b, h                                          ; $7fe6: $44
	scf                                              ; $7fe7: $37
	inc de                                           ; $7fe8: $13
	ldh a, [$c3]                                     ; $7fe9: $f0 $c3
	ldh a, [hDisp0_WX]                                     ; $7feb: $f0 $89
	ldh a, [$27]                                     ; $7fed: $f0 $27
	ld b, d                                          ; $7fef: $42
	pop af                                           ; $7ff0: $f1
	ld a, b                                          ; $7ff1: $78
	jr c, jr_096_7f91                                ; $7ff2: $38 $9d

	ld c, [hl]                                       ; $7ff4: $4e
	ld l, h                                          ; $7ff5: $6c
	ld b, h                                          ; $7ff6: $44
	scf                                              ; $7ff7: $37
	inc de                                           ; $7ff8: $13
	ld d, h                                          ; $7ff9: $54
	ld d, a                                          ; $7ffa: $57
	ld d, [hl]                                       ; $7ffb: $56
	inc [hl]                                         ; $7ffc: $34
	inc a                                            ; $7ffd: $3c
	ld h, e                                          ; $7ffe: $63
	db $38                                           ; $7fff: $38
