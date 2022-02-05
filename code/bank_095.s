; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $095", ROMX[$4000], BANK[$95]

	xor $1f                                          ; $4000: $ee $1f
	inc [hl]                                         ; $4002: $34
	ldh a, [rTAC]                                    ; $4003: $f0 $07
	inc a                                            ; $4005: $3c
	dec sp                                           ; $4006: $3b
	dec a                                            ; $4007: $3d
	and b                                            ; $4008: $a0
	ldh a, [rTAC]                                    ; $4009: $f0 $07
	inc a                                            ; $400b: $3c
	ld d, a                                          ; $400c: $57
	ld d, d                                          ; $400d: $52
	ld a, $3d                                        ; $400e: $3e $3d
	ld c, b                                          ; $4010: $48
	and b                                            ; $4011: $a0
	db $eb                                           ; $4012: $eb
	ccf                                              ; $4013: $3f
	xor b                                            ; $4014: $a8
	db $eb                                           ; $4015: $eb
	pop af                                           ; $4016: $f1
	ld b, a                                          ; $4017: $47
	di                                               ; $4018: $f3
	dec h                                            ; $4019: $25
	ld d, d                                          ; $401a: $52
	dec sp                                           ; $401b: $3b
	ccf                                              ; $401c: $3f
	ld c, b                                          ; $401d: $48
	and b                                            ; $401e: $a0
	ld l, e                                          ; $401f: $6b
	inc a                                            ; $4020: $3c
	ld [hl], b                                       ; $4021: $70
	ldh a, [rAUD2LEN]                                ; $4022: $f0 $16
	ld c, d                                          ; $4024: $4a
	ld d, c                                          ; $4025: $51
	inc a                                            ; $4026: $3c
	and c                                            ; $4027: $a1
	ld l, e                                          ; $4028: $6b
	inc a                                            ; $4029: $3c
	ldh a, [rAUD2LEN]                                ; $402a: $f0 $16
	and b                                            ; $402c: $a0
	xor $27                                          ; $402d: $ee $27
	ld b, a                                          ; $402f: $47
	xor c                                            ; $4030: $a9
	add hl, sp                                       ; $4031: $39
	ld c, l                                          ; $4032: $4d
	ld a, $38                                        ; $4033: $3e $38
	ld e, c                                          ; $4035: $59
	xor b                                            ; $4036: $a8
	db $ec                                           ; $4037: $ec
	ld b, $38                                        ; $4038: $06 $38
	jr c, jr_095_4086                                ; $403a: $38 $4a

	ld d, c                                          ; $403c: $51
	inc a                                            ; $403d: $3c
	and c                                            ; $403e: $a1
	db $ed                                           ; $403f: $ed
	ld d, l                                          ; $4040: $55
	ld e, c                                          ; $4041: $59
	xor b                                            ; $4042: $a8
	db $ec                                           ; $4043: $ec
	ld b, $38                                        ; $4044: $06 $38
	db $38, $a1                                      ; $4046: $38 $a1
	db $ed                                           ; $4048: $ed
	ld d, l                                          ; $4049: $55
	ld e, c                                          ; $404a: $59
	xor b                                            ; $404b: $a8
	ldh a, [rAUD2HIGH]                               ; $404c: $f0 $19
	ld d, e                                          ; $404e: $53
	ld [hl], d                                       ; $404f: $72
	dec a                                            ; $4050: $3d
	jr c, jr_095_408d                                ; $4051: $38 $3a

	ld [hl], h                                       ; $4053: $74
	and b                                            ; $4054: $a0
	ld hl, $10ee                                     ; $4055: $21 $ee $10
	xor b                                            ; $4058: $a8
	jr nz, @-$12                                     ; $4059: $20 $ec

	ld b, $38                                        ; $405b: $06 $38
	jr c, jr_095_40a9                                ; $405d: $38 $4a

	ld d, c                                          ; $405f: $51
	inc a                                            ; $4060: $3c
	and c                                            ; $4061: $a1
	ld h, e                                          ; $4062: $63
	ld e, c                                          ; $4063: $59
	dec sp                                           ; $4064: $3b
	scf                                              ; $4065: $37
	inc de                                           ; $4066: $13
	ld d, h                                          ; $4067: $54
	ld c, l                                          ; $4068: $4d
	inc [hl]                                         ; $4069: $34
	pop af                                           ; $406a: $f1
	add hl, hl                                       ; $406b: $29
	ld a, $3c                                        ; $406c: $3e $3c
	dec sp                                           ; $406e: $3b
	dec a                                            ; $406f: $3d
	ld b, c                                          ; $4070: $41
	ld b, h                                          ; $4071: $44
	xor b                                            ; $4072: $a8
	ldh a, [c]                                       ; $4073: $f2
	ldh [$f0], a                                     ; $4074: $e0 $f0
	inc l                                            ; $4076: $2c
	ld b, a                                          ; $4077: $47
	ld a, $45                                        ; $4078: $3e $45
	dec sp                                           ; $407a: $3b
	ld c, c                                          ; $407b: $49
	and b                                            ; $407c: $a0
	ld b, [hl]                                       ; $407d: $46
	dec sp                                           ; $407e: $3b
	scf                                              ; $407f: $37
	inc de                                           ; $4080: $13
	ld d, h                                          ; $4081: $54
	ld c, l                                          ; $4082: $4d
	inc [hl]                                         ; $4083: $34
	pop af                                           ; $4084: $f1
	add hl, hl                                       ; $4085: $29

jr_095_4086:
	ld a, $3c                                        ; $4086: $3e $3c
	dec sp                                           ; $4088: $3b
	dec a                                            ; $4089: $3d
	ld b, c                                          ; $408a: $41
	ld b, h                                          ; $408b: $44
	xor b                                            ; $408c: $a8

jr_095_408d:
	ld b, [hl]                                       ; $408d: $46
	ld d, a                                          ; $408e: $57
	ld d, e                                          ; $408f: $53
	ld c, c                                          ; $4090: $49
	add hl, sp                                       ; $4091: $39
	and b                                            ; $4092: $a0
	ld h, e                                          ; $4093: $63
	ld e, c                                          ; $4094: $59
	dec sp                                           ; $4095: $3b
	xor b                                            ; $4096: $a8
	ld b, [hl]                                       ; $4097: $46
	ld d, a                                          ; $4098: $57
	ld d, e                                          ; $4099: $53
	ld c, c                                          ; $409a: $49
	add hl, sp                                       ; $409b: $39
	and b                                            ; $409c: $a0
	ld hl, $20ad                                     ; $409d: $21 $ad $20
	db $eb                                           ; $40a0: $eb
	pop af                                           ; $40a1: $f1
	ld b, a                                          ; $40a2: $47
	ld c, d                                          ; $40a3: $4a
	ld c, a                                          ; $40a4: $4f
	xor h                                            ; $40a5: $ac
	ld b, [hl]                                       ; $40a6: $46
	ldh a, [rSB]                                     ; $40a7: $f0 $01

jr_095_40a9:
	ld b, l                                          ; $40a9: $45
	add hl, sp                                       ; $40aa: $39
	inc a                                            ; $40ab: $3c
	ld a, [hl-]                                      ; $40ac: $3a
	ld c, b                                          ; $40ad: $48
	and b                                            ; $40ae: $a0
	cpl                                              ; $40af: $2f
	pop af                                           ; $40b0: $f1
	ld d, d                                          ; $40b1: $52
	pop af                                           ; $40b2: $f1
	add hl, de                                       ; $40b3: $19
	pop af                                           ; $40b4: $f1
	db $e4                                           ; $40b5: $e4
	ld l, c                                          ; $40b6: $69
	ldh a, [rSC]                                     ; $40b7: $f0 $02
	ld h, l                                          ; $40b9: $65
	sbc b                                            ; $40ba: $98
	ld e, c                                          ; $40bb: $59
	ldh a, [rAUD4LEN]                                ; $40bc: $f0 $20
	ld e, c                                          ; $40be: $59
	add hl, bc                                       ; $40bf: $09
	cpl                                              ; $40c0: $2f
	ld [hl-], a                                      ; $40c1: $32
	ld b, l                                          ; $40c2: $45
	ld a, $ac                                        ; $40c3: $3e $ac
	pop af                                           ; $40c5: $f1
	ld d, d                                          ; $40c6: $52
	pop af                                           ; $40c7: $f1
	add hl, de                                       ; $40c8: $19
	pop af                                           ; $40c9: $f1
	db $e4                                           ; $40ca: $e4
	ld l, c                                          ; $40cb: $69
	ldh a, [rSC]                                     ; $40cc: $f0 $02
	ld h, l                                          ; $40ce: $65
	sbc b                                            ; $40cf: $98
	ld e, c                                          ; $40d0: $59
	ldh a, [rAUD4LEN]                                ; $40d1: $f0 $20
	ld e, c                                          ; $40d3: $59
	ld h, d                                          ; $40d4: $62
	inc de                                           ; $40d5: $13
	db $eb                                           ; $40d6: $eb
	ld h, b                                          ; $40d7: $60
	ld a, $45                                        ; $40d8: $3e $45
	add hl, sp                                       ; $40da: $39
	and e                                            ; $40db: $a3
	cpl                                              ; $40dc: $2f
	ldh a, [$35]                                     ; $40dd: $f0 $35
	ldh a, [$03]                                     ; $40df: $f0 $03
	ld l, c                                          ; $40e1: $69
	db $ed                                           ; $40e2: $ed
	rst JumpTable                                          ; $40e3: $c7
	sub e                                            ; $40e4: $93
	add e                                            ; $40e5: $83
	ld e, c                                          ; $40e6: $59
	ldh a, [$f2]                                     ; $40e7: $f0 $f2
	add hl, bc                                       ; $40e9: $09
	cpl                                              ; $40ea: $2f
	ld [hl-], a                                      ; $40eb: $32
	ld b, l                                          ; $40ec: $45
	ld a, $ac                                        ; $40ed: $3e $ac
	ldh a, [$35]                                     ; $40ef: $f0 $35
	ldh a, [$03]                                     ; $40f1: $f0 $03
	ld l, c                                          ; $40f3: $69
	db $ed                                           ; $40f4: $ed
	rst JumpTable                                          ; $40f5: $c7
	sub e                                            ; $40f6: $93
	add e                                            ; $40f7: $83
	ld e, c                                          ; $40f8: $59
	ldh a, [$f2]                                     ; $40f9: $f0 $f2
	ld h, d                                          ; $40fb: $62
	inc de                                           ; $40fc: $13
	db $eb                                           ; $40fd: $eb
	ld h, b                                          ; $40fe: $60
	ld a, $45                                        ; $40ff: $3e $45
	add hl, sp                                       ; $4101: $39
	and e                                            ; $4102: $a3
	cpl                                              ; $4103: $2f
	di                                               ; $4104: $f3
	ld a, $f4                                        ; $4105: $3e $f4
	ld l, l                                          ; $4107: $6d
	add hl, bc                                       ; $4108: $09
	cpl                                              ; $4109: $2f
	ld [hl-], a                                      ; $410a: $32
	db $dd                                           ; $410b: $dd
	di                                               ; $410c: $f3
	ld a, $f4                                        ; $410d: $3e $f4
	ld l, l                                          ; $410f: $6d
	ld h, d                                          ; $4110: $62
	inc de                                           ; $4111: $13
	db $eb                                           ; $4112: $eb
	ld h, b                                          ; $4113: $60
	ld a, $45                                        ; $4114: $3e $45
	add hl, sp                                       ; $4116: $39
	and e                                            ; $4117: $a3
	cpl                                              ; $4118: $2f
	db $ed                                           ; $4119: $ed
	ld c, b                                          ; $411a: $48
	ld [hl], l                                       ; $411b: $75
	ld e, c                                          ; $411c: $59
	ldh a, [$f1]                                     ; $411d: $f0 $f1
	ld e, c                                          ; $411f: $59
	add hl, bc                                       ; $4120: $09
	cpl                                              ; $4121: $2f
	ld [hl-], a                                      ; $4122: $32
	ld b, l                                          ; $4123: $45
	ld a, $ac                                        ; $4124: $3e $ac
	db $ed                                           ; $4126: $ed
	ld c, b                                          ; $4127: $48
	ld [hl], l                                       ; $4128: $75
	ld e, c                                          ; $4129: $59
	ldh a, [$f1]                                     ; $412a: $f0 $f1
	ld e, c                                          ; $412c: $59
	ld h, d                                          ; $412d: $62
	inc de                                           ; $412e: $13
	db $eb                                           ; $412f: $eb
	ld h, b                                          ; $4130: $60
	ld a, $45                                        ; $4131: $3e $45
	add hl, sp                                       ; $4133: $39
	and e                                            ; $4134: $a3
	cpl                                              ; $4135: $2f
	db $f4                                           ; $4136: $f4
	dec d                                            ; $4137: $15
	db $ed                                           ; $4138: $ed
	call nz, $2f09                                   ; $4139: $c4 $09 $2f
	ld [hl-], a                                      ; $413c: $32
	db $dd                                           ; $413d: $dd
	db $f4                                           ; $413e: $f4
	dec d                                            ; $413f: $15
	db $ed                                           ; $4140: $ed
	call nz, $1362                                   ; $4141: $c4 $62 $13
	db $eb                                           ; $4144: $eb
	ld h, b                                          ; $4145: $60
	ld a, $45                                        ; $4146: $3e $45
	add hl, sp                                       ; $4148: $39
	and e                                            ; $4149: $a3
	cpl                                              ; $414a: $2f
	adc d                                            ; $414b: $8a
	ldh a, [rHDMA4]                                  ; $414c: $f0 $54
	ldh a, [rAUD2ENV]                                ; $414e: $f0 $17
	ldh a, [$fc]                                     ; $4150: $f0 $fc
	ldh a, [c]                                       ; $4152: $f2
	ld l, b                                          ; $4153: $68
	add a                                            ; $4154: $87
	di                                               ; $4155: $f3
	ld c, h                                          ; $4156: $4c
	ldh a, [$aa]                                     ; $4157: $f0 $aa
	add hl, bc                                       ; $4159: $09
	cpl                                              ; $415a: $2f
	ld [hl-], a                                      ; $415b: $32
	ld b, l                                          ; $415c: $45
	ld a, $ac                                        ; $415d: $3e $ac
	adc d                                            ; $415f: $8a
	ldh a, [rHDMA4]                                  ; $4160: $f0 $54
	ldh a, [rAUD2ENV]                                ; $4162: $f0 $17
	ldh a, [$fc]                                     ; $4164: $f0 $fc
	ldh a, [c]                                       ; $4166: $f2
	ld l, b                                          ; $4167: $68
	add a                                            ; $4168: $87
	di                                               ; $4169: $f3
	ld c, h                                          ; $416a: $4c
	ldh a, [$aa]                                     ; $416b: $f0 $aa
	ld h, d                                          ; $416d: $62
	inc de                                           ; $416e: $13
	db $eb                                           ; $416f: $eb
	ld h, b                                          ; $4170: $60
	ld a, $45                                        ; $4171: $3e $45
	add hl, sp                                       ; $4173: $39
	and e                                            ; $4174: $a3
	cpl                                              ; $4175: $2f
	ld [hl], l                                       ; $4176: $75
	add e                                            ; $4177: $83
	ldh a, [$2f]                                     ; $4178: $f0 $2f
	ldh a, [$a1]                                     ; $417a: $f0 $a1
	ld e, c                                          ; $417c: $59
	db $ed                                           ; $417d: $ed
	jr nz, jr_095_4189                               ; $417e: $20 $09

	cpl                                              ; $4180: $2f
	ld [hl-], a                                      ; $4181: $32
	ld b, l                                          ; $4182: $45
	ld a, $ac                                        ; $4183: $3e $ac
	ld [hl], l                                       ; $4185: $75
	add e                                            ; $4186: $83
	ldh a, [$2f]                                     ; $4187: $f0 $2f

jr_095_4189:
	ldh a, [$a1]                                     ; $4189: $f0 $a1
	ld e, c                                          ; $418b: $59
	db $ed                                           ; $418c: $ed
	jr nz, jr_095_41f1                               ; $418d: $20 $62

	inc de                                           ; $418f: $13
	db $eb                                           ; $4190: $eb
	ld h, b                                          ; $4191: $60
	ld a, $45                                        ; $4192: $3e $45
	add hl, sp                                       ; $4194: $39
	and e                                            ; $4195: $a3
	cpl                                              ; $4196: $2f
	ld [$09dc], a                                    ; $4197: $ea $dc $09
	cpl                                              ; $419a: $2f

jr_095_419b:
	ld [hl-], a                                      ; $419b: $32
	db $dd                                           ; $419c: $dd
	ld [$62dc], a                                    ; $419d: $ea $dc $62
	inc de                                           ; $41a0: $13
	db $eb                                           ; $41a1: $eb
	ld h, b                                          ; $41a2: $60
	ld a, $45                                        ; $41a3: $3e $45
	add hl, sp                                       ; $41a5: $39
	and e                                            ; $41a6: $a3
	cpl                                              ; $41a7: $2f
	ldh a, [$0b]                                     ; $41a8: $f0 $0b
	db $f4                                           ; $41aa: $f4
	ld l, h                                          ; $41ab: $6c
	add hl, bc                                       ; $41ac: $09
	cpl                                              ; $41ad: $2f
	ld [hl-], a                                      ; $41ae: $32
	db $dd                                           ; $41af: $dd
	ldh a, [$0b]                                     ; $41b0: $f0 $0b
	db $f4                                           ; $41b2: $f4
	ld l, h                                          ; $41b3: $6c
	ld h, d                                          ; $41b4: $62
	inc de                                           ; $41b5: $13
	db $eb                                           ; $41b6: $eb
	ld h, b                                          ; $41b7: $60
	ld a, $45                                        ; $41b8: $3e $45
	add hl, sp                                       ; $41ba: $39
	and e                                            ; $41bb: $a3
	cpl                                              ; $41bc: $2f
	ld b, e                                          ; $41bd: $43
	ld b, [hl]                                       ; $41be: $46
	inc [hl]                                         ; $41bf: $34
	xor $09                                          ; $41c0: $ee $09
	ld e, b                                          ; $41c2: $58
	ld e, c                                          ; $41c3: $59
	ld b, c                                          ; $41c4: $41
	and d                                            ; $41c5: $a2
	xor $20                                          ; $41c6: $ee $20
	inc [hl]                                         ; $41c8: $34
	ld d, $a8                                        ; $41c9: $16 $a8
	db $eb                                           ; $41cb: $eb
	rst FarCall                                          ; $41cc: $f7
	and c                                            ; $41cd: $a1
	ld d, $a8                                        ; $41ce: $16 $a8
	db $eb                                           ; $41d0: $eb
	rst FarCall                                          ; $41d1: $f7
	and c                                            ; $41d2: $a1
	ld e, [hl]                                       ; $41d3: $5e
	inc [hl]                                         ; $41d4: $34
	ld l, a                                          ; $41d5: $6f
	ld b, a                                          ; $41d6: $47
	xor c                                            ; $41d7: $a9
	ld b, [hl]                                       ; $41d8: $46
	ld d, a                                          ; $41d9: $57
	ld d, e                                          ; $41da: $53
	ld c, c                                          ; $41db: $49
	add hl, sp                                       ; $41dc: $39
	xor b                                            ; $41dd: $a8
	ldh a, [hLCDCIntHandlerIdx]                                     ; $41de: $f0 $81
	ld e, l                                          ; $41e0: $5d
	ccf                                              ; $41e1: $3f
	ld l, h                                          ; $41e2: $6c
	ccf                                              ; $41e3: $3f
	ld c, a                                          ; $41e4: $4f
	jr c, jr_095_421f                                ; $41e5: $38 $38

	and c                                            ; $41e7: $a1
	ldh a, [$2d]                                     ; $41e8: $f0 $2d
	dec sp                                           ; $41ea: $3b
	ccf                                              ; $41eb: $3f
	dec a                                            ; $41ec: $3d
	ld b, d                                          ; $41ed: $42
	xor c                                            ; $41ee: $a9
	ld b, [hl]                                       ; $41ef: $46
	ld d, a                                          ; $41f0: $57

jr_095_41f1:
	ld d, e                                          ; $41f1: $53
	ld c, c                                          ; $41f2: $49
	add hl, sp                                       ; $41f3: $39
	xor b                                            ; $41f4: $a8
	db $ec                                           ; $41f5: $ec
	ld b, $38                                        ; $41f6: $06 $38
	jr c, jr_095_419b                                ; $41f8: $38 $a1

	ld e, [hl]                                       ; $41fa: $5e
	ld e, c                                          ; $41fb: $59
	inc [hl]                                         ; $41fc: $34
	ld b, [hl]                                       ; $41fd: $46
	ld d, a                                          ; $41fe: $57
	ld d, e                                          ; $41ff: $53
	ld c, c                                          ; $4200: $49
	add hl, sp                                       ; $4201: $39
	xor b                                            ; $4202: $a8
	db $ec                                           ; $4203: $ec
	ld b, $38                                        ; $4204: $06 $38
	jr c, @-$5d                                      ; $4206: $38 $a1

	ld c, b                                          ; $4208: $48
	ld b, [hl]                                       ; $4209: $46
	ld d, a                                          ; $420a: $57
	ld d, e                                          ; $420b: $53
	ld c, c                                          ; $420c: $49
	add hl, sp                                       ; $420d: $39
	xor b                                            ; $420e: $a8
	ldh a, [hLCDCIntHandlerIdx]                                     ; $420f: $f0 $81
	ld e, l                                          ; $4211: $5d
	ld c, [hl]                                       ; $4212: $4e
	ld c, h                                          ; $4213: $4c
	and b                                            ; $4214: $a0
	jr c, jr_095_424f                                ; $4215: $38 $38

	ld b, d                                          ; $4217: $42
	ld c, b                                          ; $4218: $48
	xor c                                            ; $4219: $a9
	ld d, h                                          ; $421a: $54
	ld b, c                                          ; $421b: $41
	ld a, [hl-]                                      ; $421c: $3a
	ld b, d                                          ; $421d: $42
	ld c, a                                          ; $421e: $4f

jr_095_421f:
	ld d, b                                          ; $421f: $50
	dec sp                                           ; $4220: $3b
	ccf                                              ; $4221: $3f
	ld c, b                                          ; $4222: $48
	and b                                            ; $4223: $a0
	cpl                                              ; $4224: $2f
	ld b, e                                          ; $4225: $43
	ldh a, [$08]                                     ; $4226: $f0 $08
	ld b, c                                          ; $4228: $41
	ld b, d                                          ; $4229: $42
	db $ed                                           ; $422a: $ed
	ld l, a                                          ; $422b: $6f
	ld h, c                                          ; $422c: $61
	ld b, h                                          ; $422d: $44
	ld b, l                                          ; $422e: $45
	xor b                                            ; $422f: $a8
	pop af                                           ; $4230: $f1
	ld c, d                                          ; $4231: $4a
	ld e, l                                          ; $4232: $5d
	pop af                                           ; $4233: $f1
	inc b                                            ; $4234: $04
	dec sp                                           ; $4235: $3b
	ccf                                              ; $4236: $3f
	and b                                            ; $4237: $a0
	xor $1f                                          ; $4238: $ee $1f
	inc [hl]                                         ; $423a: $34
	ld b, [hl]                                       ; $423b: $46
	ld d, a                                          ; $423c: $57
	ld d, e                                          ; $423d: $53
	ld c, c                                          ; $423e: $49
	add hl, sp                                       ; $423f: $39
	xor b                                            ; $4240: $a8
	ldh a, [$29]                                     ; $4241: $f0 $29
	ld a, $38                                        ; $4243: $3e $38
	and b                                            ; $4245: $a0
	ld b, [hl]                                       ; $4246: $46
	ld d, a                                          ; $4247: $57
	ld d, e                                          ; $4248: $53
	ld c, c                                          ; $4249: $49
	add hl, sp                                       ; $424a: $39
	xor b                                            ; $424b: $a8
	add a                                            ; $424c: $87
	sbc d                                            ; $424d: $9a
	ld b, a                                          ; $424e: $47

jr_095_424f:
	pop af                                           ; $424f: $f1
	sbc l                                            ; $4250: $9d
	add hl, sp                                       ; $4251: $39
	ld c, h                                          ; $4252: $4c
	and b                                            ; $4253: $a0
	ld c, b                                          ; $4254: $48
	inc h                                            ; $4255: $24
	ld c, c                                          ; $4256: $49
	ld d, a                                          ; $4257: $57
	ld b, [hl]                                       ; $4258: $46
	ld e, [hl]                                       ; $4259: $5e
	sbc h                                            ; $425a: $9c
	ld c, b                                          ; $425b: $48
	inc hl                                           ; $425c: $23
	inc de                                           ; $425d: $13
	ld b, [hl]                                       ; $425e: $46
	ld d, a                                          ; $425f: $57
	ld d, e                                          ; $4260: $53
	ld c, c                                          ; $4261: $49
	add hl, sp                                       ; $4262: $39
	dec [hl]                                         ; $4263: $35
	inc hl                                           ; $4264: $23
	ld e, e                                          ; $4265: $5b
	ld d, [hl]                                       ; $4266: $56
	and b                                            ; $4267: $a0
	cpl                                              ; $4268: $2f
	ld h, $ed                                        ; $4269: $26 $ed
	ld e, h                                          ; $426b: $5c
	dec h                                            ; $426c: $25
	add hl, bc                                       ; $426d: $09
	add hl, bc                                       ; $426e: $09
	db $eb                                           ; $426f: $eb
	ld h, h                                          ; $4270: $64
	and b                                            ; $4271: $a0
	cpl                                              ; $4272: $2f
	ld b, e                                          ; $4273: $43
	ld b, [hl]                                       ; $4274: $46
	dec sp                                           ; $4275: $3b
	inc [hl]                                         ; $4276: $34
	db $ed                                           ; $4277: $ed
	xor c                                            ; $4278: $a9
	xor b                                            ; $4279: $a8
	db $eb                                           ; $427a: $eb
	rst FarCall                                          ; $427b: $f7
	and c                                            ; $427c: $a1
	ld b, [hl]                                       ; $427d: $46
	dec sp                                           ; $427e: $3b
	inc [hl]                                         ; $427f: $34
	ld d, $a0                                        ; $4280: $16 $a0
	cpl                                              ; $4282: $2f
	ld b, e                                          ; $4283: $43
	db $ed                                           ; $4284: $ed
	xor c                                            ; $4285: $a9
	xor b                                            ; $4286: $a8
	db $eb                                           ; $4287: $eb
	rst FarCall                                          ; $4288: $f7
	and c                                            ; $4289: $a1
	ld c, h                                          ; $428a: $4c
	add l                                            ; $428b: $85
	inc de                                           ; $428c: $13
	ld l, d                                          ; $428d: $6a
	ldh a, [$0d]                                     ; $428e: $f0 $0d
	ld b, d                                          ; $4290: $42
	ld l, b                                          ; $4291: $68
	pop af                                           ; $4292: $f1
	sbc h                                            ; $4293: $9c
	ld l, b                                          ; $4294: $68
	inc de                                           ; $4295: $13
	ldh a, [$c9]                                     ; $4296: $f0 $c9
	jr c, jr_095_42d9                                ; $4298: $38 $3f

	ld c, [hl]                                       ; $429a: $4e
	inc a                                            ; $429b: $3c
	ld a, [hl-]                                      ; $429c: $3a
	ld c, b                                          ; $429d: $48
	and c                                            ; $429e: $a1
	cpl                                              ; $429f: $2f
	ldh a, [$c9]                                     ; $42a0: $f0 $c9
	jr c, jr_095_42e3                                ; $42a2: $38 $3f

	ld c, [hl]                                       ; $42a4: $4e
	ld e, l                                          ; $42a5: $5d
	ld e, d                                          ; $42a6: $5a
	inc [hl]                                         ; $42a7: $34
	ld l, e                                          ; $42a8: $6b
	and c                                            ; $42a9: $a1
	cpl                                              ; $42aa: $2f
	jr c, @+$3a                                      ; $42ab: $38 $38

	ld b, l                                          ; $42ad: $45
	dec [hl]                                         ; $42ae: $35
	xor $06                                          ; $42af: $ee $06
	ld b, a                                          ; $42b1: $47
	ld h, a                                          ; $42b2: $67
	ld d, h                                          ; $42b3: $54
	add hl, sp                                       ; $42b4: $39
	add hl, bc                                       ; $42b5: $09
	adc b                                            ; $42b6: $88
	sub c                                            ; $42b7: $91
	xor c                                            ; $42b8: $a9
	ld b, b                                          ; $42b9: $40
	ld c, l                                          ; $42ba: $4d
	ld e, e                                          ; $42bb: $5b
	ld d, [hl]                                       ; $42bc: $56
	inc [hl]                                         ; $42bd: $34
	ld e, [hl]                                       ; $42be: $5e
	ld e, c                                          ; $42bf: $59
	ld c, c                                          ; $42c0: $49

jr_095_42c1:
	ld c, b                                          ; $42c1: $48
	and b                                            ; $42c2: $a0
	cpl                                              ; $42c3: $2f
	ld b, e                                          ; $42c4: $43
	add sp, $03                                      ; $42c5: $e8 $03
	ld b, d                                          ; $42c7: $42
	sbc [hl]                                         ; $42c8: $9e
	ld c, d                                          ; $42c9: $4a
	inc de                                           ; $42ca: $13
	db $eb                                           ; $42cb: $eb
	ld a, [hl]                                       ; $42cc: $7e
	ld c, d                                          ; $42cd: $4a
	jr c, jr_095_4308                                ; $42ce: $38 $38

	and c                                            ; $42d0: $a1
	xor $1f                                          ; $42d1: $ee $1f
	inc [hl]                                         ; $42d3: $34
	ld [$a8d2], a                                    ; $42d4: $ea $d2 $a8
	pop af                                           ; $42d7: $f1
	dec d                                            ; $42d8: $15

jr_095_42d9:
	ld c, l                                          ; $42d9: $4d
	ld a, [hl-]                                      ; $42da: $3a
	jr c, jr_095_4327                                ; $42db: $38 $4a

	ld c, h                                          ; $42dd: $4c
	and b                                            ; $42de: $a0
	cpl                                              ; $42df: $2f
	add sp, -$2a                                     ; $42e0: $e8 $d6

jr_095_42e2:
	add hl, bc                                       ; $42e2: $09

jr_095_42e3:
	cpl                                              ; $42e3: $2f
	ldh a, [$8d]                                     ; $42e4: $f0 $8d
	ldh a, [$9e]                                     ; $42e6: $f0 $9e
	ld a, [hl-]                                      ; $42e8: $3a
	ld d, e                                          ; $42e9: $53
	ld d, b                                          ; $42ea: $50
	inc [hl]                                         ; $42eb: $34
	halt                                             ; $42ec: $76
	ldh a, [hDisp0_OBP1]                                     ; $42ed: $f0 $87
	ld c, e                                          ; $42ef: $4b
	pop af                                           ; $42f0: $f1
	adc a                                            ; $42f1: $8f
	ld a, $38                                        ; $42f2: $3e $38
	ld b, d                                          ; $42f4: $42
	ld b, h                                          ; $42f5: $44
	add hl, bc                                       ; $42f6: $09
	pop af                                           ; $42f7: $f1
	ld c, $38                                        ; $42f8: $0e $38
	ldh a, [$2c]                                     ; $42fa: $f0 $2c
	ld b, a                                          ; $42fc: $47
	ldh a, [$9a]                                     ; $42fd: $f0 $9a
	ld e, h                                          ; $42ff: $5c
	ldh a, [rTMA]                                    ; $4300: $f0 $06
	dec sp                                           ; $4302: $3b
	ccf                                              ; $4303: $3f
	inc de                                           ; $4304: $13
	db $ec                                           ; $4305: $ec
	push af                                          ; $4306: $f5

jr_095_4307:
	ld b, c                                          ; $4307: $41

jr_095_4308:
	ld b, h                                          ; $4308: $44
	ld e, l                                          ; $4309: $5d
	ld e, d                                          ; $430a: $5a
	ld c, b                                          ; $430b: $48
	inc [hl]                                         ; $430c: $34
	xor $05                                          ; $430d: $ee $05
	and c                                            ; $430f: $a1
	ld b, b                                          ; $4310: $40
	ld c, l                                          ; $4311: $4d
	ld a, [hl-]                                      ; $4312: $3a
	ld d, b                                          ; $4313: $50
	xor h                                            ; $4314: $ac
	xor $06                                          ; $4315: $ee $06
	ld b, a                                          ; $4317: $47
	db $ec                                           ; $4318: $ec
	db $fd                                           ; $4319: $fd
	ld b, a                                          ; $431a: $47

jr_095_431b:
	ld h, a                                          ; $431b: $67
	inc a                                            ; $431c: $3c
	ld a, [hl-]                                      ; $431d: $3a
	jr c, jr_095_42c1                                ; $431e: $38 $a1

	ld b, b                                          ; $4320: $40
	ld c, l                                          ; $4321: $4d
	ld a, [hl-]                                      ; $4322: $3a
	ld d, b                                          ; $4323: $50
	xor h                                            ; $4324: $ac
	xor $06                                          ; $4325: $ee $06

jr_095_4327:
	ld b, a                                          ; $4327: $47
	ldh a, [rOBP0]                                   ; $4328: $f0 $48
	ldh a, [$2c]                                     ; $432a: $f0 $2c
	ldh a, [rLY]                                     ; $432c: $f0 $44
	ld b, a                                          ; $432e: $47
	ld h, a                                          ; $432f: $67
	inc a                                            ; $4330: $3c
	ld a, [hl-]                                      ; $4331: $3a
	jr c, @-$5d                                      ; $4332: $38 $a1

	ld b, b                                          ; $4334: $40
	ld c, l                                          ; $4335: $4d
	ld a, [hl-]                                      ; $4336: $3a
	ld d, b                                          ; $4337: $50
	xor h                                            ; $4338: $ac
	ld [$472c], a                                    ; $4339: $ea $2c $47
	ld h, a                                          ; $433c: $67
	inc a                                            ; $433d: $3c
	ld a, [hl-]                                      ; $433e: $3a
	jr c, jr_095_42e2                                ; $433f: $38 $a1

	ldh a, [$b2]                                     ; $4341: $f0 $b2
	ldh a, [rLY]                                     ; $4343: $f0 $44
	pop af                                           ; $4345: $f1
	sbc b                                            ; $4346: $98
	ld b, d                                          ; $4347: $42
	sub [hl]                                         ; $4348: $96
	ldh a, [$30]                                     ; $4349: $f0 $30
	di                                               ; $434b: $f3
	db $10                                           ; $434c: $10
	ld d, e                                          ; $434d: $53
	inc de                                           ; $434e: $13
	ld b, [hl]                                       ; $434f: $46
	ld c, [hl]                                       ; $4350: $4e
	ld b, d                                          ; $4351: $42
	dec [hl]                                         ; $4352: $35
	ld [$a126], a                                    ; $4353: $ea $26 $a1
	ld b, b                                          ; $4356: $40
	ld c, l                                          ; $4357: $4d
	ld a, [hl-]                                      ; $4358: $3a
	ld d, b                                          ; $4359: $50
	xor h                                            ; $435a: $ac
	xor $06                                          ; $435b: $ee $06
	ld b, a                                          ; $435d: $47
	db $ec                                           ; $435e: $ec
	db $fc                                           ; $435f: $fc
	ld b, a                                          ; $4360: $47
	ld h, a                                          ; $4361: $67
	inc a                                            ; $4362: $3c
	ld a, [hl-]                                      ; $4363: $3a
	jr c, jr_095_4307                                ; $4364: $38 $a1

	ld b, b                                          ; $4366: $40
	ld c, l                                          ; $4367: $4d
	ld a, [hl-]                                      ; $4368: $3a
	ld d, b                                          ; $4369: $50
	xor h                                            ; $436a: $ac
	xor $06                                          ; $436b: $ee $06
	ld b, a                                          ; $436d: $47
	pop af                                           ; $436e: $f1
	cpl                                              ; $436f: $2f
	ldh a, [rPCM34]                                  ; $4370: $f0 $77
	pop af                                           ; $4372: $f1
	bit 0, a                                         ; $4373: $cb $47
	ld h, a                                          ; $4375: $67
	inc a                                            ; $4376: $3c
	ld a, [hl-]                                      ; $4377: $3a
	jr c, jr_095_431b                                ; $4378: $38 $a1

	ld b, b                                          ; $437a: $40
	ld c, l                                          ; $437b: $4d
	ld a, [hl-]                                      ; $437c: $3a
	ld d, b                                          ; $437d: $50
	xor h                                            ; $437e: $ac
	xor $06                                          ; $437f: $ee $06
	ld b, a                                          ; $4381: $47
	add e                                            ; $4382: $83
	ldh a, [$2f]                                     ; $4383: $f0 $2f
	ld e, c                                          ; $4385: $59
	ld b, a                                          ; $4386: $47
	ld h, a                                          ; $4387: $67
	inc a                                            ; $4388: $3c
	ld a, [hl-]                                      ; $4389: $3a
	jr c, @-$5d                                      ; $438a: $38 $a1

	ld b, b                                          ; $438c: $40
	add hl, sp                                       ; $438d: $39
	xor l                                            ; $438e: $ad
	ld b, b                                          ; $438f: $40
	ld c, l                                          ; $4390: $4d
	ld a, [hl-]                                      ; $4391: $3a
	ld d, b                                          ; $4392: $50
	ld a, $3c                                        ; $4393: $3e $3c
	dec a                                            ; $4395: $3d
	ld a, [hl-]                                      ; $4396: $3a
	jr c, @+$4e                                      ; $4397: $38 $4c

	xor b                                            ; $4399: $a8
	ld b, b                                          ; $439a: $40
	ld c, l                                          ; $439b: $4d
	ld e, e                                          ; $439c: $5b
	ld d, [hl]                                       ; $439d: $56
	ld c, b                                          ; $439e: $48
	and b                                            ; $439f: $a0
	cpl                                              ; $43a0: $2f
	ld b, e                                          ; $43a1: $43
	ld b, [hl]                                       ; $43a2: $46
	dec sp                                           ; $43a3: $3b
	inc [hl]                                         ; $43a4: $34
	db $ec                                           ; $43a5: $ec
	rst SubAFromDE                                          ; $43a6: $df
	xor b                                            ; $43a7: $a8
	db $eb                                           ; $43a8: $eb
	rst FarCall                                          ; $43a9: $f7
	and c                                            ; $43aa: $a1
	ld b, [hl]                                       ; $43ab: $46
	dec sp                                           ; $43ac: $3b
	inc [hl]                                         ; $43ad: $34
	ld d, $a8                                        ; $43ae: $16 $a8
	ret                                              ; $43b0: $c9


	inc [hl]                                         ; $43b1: $34
	jr c, jr_095_43ec                                ; $43b2: $38 $38

	ld c, d                                          ; $43b4: $4a
	ld d, c                                          ; $43b5: $51
	inc a                                            ; $43b6: $3c
	and c                                            ; $43b7: $a1
	cpl                                              ; $43b8: $2f
	ld b, e                                          ; $43b9: $43
	db $ec                                           ; $43ba: $ec
	rst SubAFromDE                                          ; $43bb: $df
	xor b                                            ; $43bc: $a8
	db $eb                                           ; $43bd: $eb
	rst FarCall                                          ; $43be: $f7
	and c                                            ; $43bf: $a1
	db $ed                                           ; $43c0: $ed
	ld c, [hl]                                       ; $43c1: $4e
	xor h                                            ; $43c2: $ac
	ld l, d                                          ; $43c3: $6a
	ldh a, [$0d]                                     ; $43c4: $f0 $0d
	ld b, d                                          ; $43c6: $42
	ld l, b                                          ; $43c7: $68
	pop af                                           ; $43c8: $f1
	sbc h                                            ; $43c9: $9c
	ld l, b                                          ; $43ca: $68
	xor h                                            ; $43cb: $ac
	ldh a, [$c9]                                     ; $43cc: $f0 $c9
	jr c, jr_095_440f                                ; $43ce: $38 $3f

	jr c, jr_095_4424                                ; $43d0: $38 $52

	ld d, c                                          ; $43d2: $51
	inc a                                            ; $43d3: $3c
	ld hl, $a148                                     ; $43d4: $21 $48 $a1
	adc b                                            ; $43d7: $88
	sub c                                            ; $43d8: $91
	ld c, d                                          ; $43d9: $4a
	ld d, c                                          ; $43da: $51
	inc a                                            ; $43db: $3c
	xor c                                            ; $43dc: $a9
	ldh a, [$29]                                     ; $43dd: $f0 $29
	ld a, $38                                        ; $43df: $3e $38
	ld c, d                                          ; $43e1: $4a
	ld d, c                                          ; $43e2: $51
	and b                                            ; $43e3: $a0
	xor $2d                                          ; $43e4: $ee $2d
	inc [hl]                                         ; $43e6: $34
	ld b, b                                          ; $43e7: $40
	ld c, l                                          ; $43e8: $4d
	ld c, d                                          ; $43e9: $4a
	jr c, jr_095_4424                                ; $43ea: $38 $38

jr_095_43ec:
	ld c, d                                          ; $43ec: $4a
	ld d, c                                          ; $43ed: $51
	xor b                                            ; $43ee: $a8
	jp z, $eb34                                      ; $43ef: $ca $34 $eb

	ld e, d                                          ; $43f2: $5a
	and b                                            ; $43f3: $a0
	pop af                                           ; $43f4: $f1
	ld c, $38                                        ; $43f5: $0e $38
	ldh a, [$2c]                                     ; $43f7: $f0 $2c
	ld b, a                                          ; $43f9: $47
	ldh a, [$9a]                                     ; $43fa: $f0 $9a
	ld e, h                                          ; $43fc: $5c
	ldh a, [rTMA]                                    ; $43fd: $f0 $06
	dec sp                                           ; $43ff: $3b
	ccf                                              ; $4400: $3f
	inc de                                           ; $4401: $13
	db $ec                                           ; $4402: $ec
	push af                                          ; $4403: $f5
	ld b, c                                          ; $4404: $41
	ld c, d                                          ; $4405: $4a
	ld d, c                                          ; $4406: $51
	ld e, l                                          ; $4407: $5d
	ld e, d                                          ; $4408: $5a
	xor l                                            ; $4409: $ad
	xor $05                                          ; $440a: $ee $05
	ld c, d                                          ; $440c: $4a
	ld d, c                                          ; $440d: $51
	ld b, l                                          ; $440e: $45

jr_095_440f:
	ld c, h                                          ; $440f: $4c
	and c                                            ; $4410: $a1
	xor $06                                          ; $4411: $ee $06
	ld b, a                                          ; $4413: $47
	db $ec                                           ; $4414: $ec
	db $fd                                           ; $4415: $fd
	ld b, a                                          ; $4416: $47
	inc de                                           ; $4417: $13
	ld h, a                                          ; $4418: $67
	ld e, h                                          ; $4419: $5c
	ld d, d                                          ; $441a: $52
	ld a, c                                          ; $441b: $79
	ld b, c                                          ; $441c: $41
	inc a                                            ; $441d: $3c
	and c                                            ; $441e: $a1
	xor $06                                          ; $441f: $ee $06
	ld b, a                                          ; $4421: $47
	ldh a, [rOBP0]                                   ; $4422: $f0 $48

jr_095_4424:
	ldh a, [$2c]                                     ; $4424: $f0 $2c
	ldh a, [rLY]                                     ; $4426: $f0 $44
	ld b, a                                          ; $4428: $47
	inc de                                           ; $4429: $13
	ld h, a                                          ; $442a: $67
	ld e, h                                          ; $442b: $5c
	ld d, d                                          ; $442c: $52
	ld a, c                                          ; $442d: $79
	ld b, c                                          ; $442e: $41
	inc a                                            ; $442f: $3c
	and c                                            ; $4430: $a1
	xor $06                                          ; $4431: $ee $06
	ld b, a                                          ; $4433: $47
	db $ec                                           ; $4434: $ec
	rst $38                                          ; $4435: $ff
	ld b, a                                          ; $4436: $47
	inc de                                           ; $4437: $13
	ld h, a                                          ; $4438: $67
	ld e, h                                          ; $4439: $5c
	ld d, d                                          ; $443a: $52
	ld a, c                                          ; $443b: $79
	ld b, c                                          ; $443c: $41
	inc a                                            ; $443d: $3c
	and c                                            ; $443e: $a1
	ld [$472c], a                                    ; $443f: $ea $2c $47
	inc de                                           ; $4442: $13
	ld h, a                                          ; $4443: $67
	ld e, h                                          ; $4444: $5c
	ld d, d                                          ; $4445: $52
	ld a, c                                          ; $4446: $79
	ld b, c                                          ; $4447: $41
	inc a                                            ; $4448: $3c
	and c                                            ; $4449: $a1
	ld b, b                                          ; $444a: $40
	ld c, l                                          ; $444b: $4d
	ld a, [hl-]                                      ; $444c: $3a
	ld d, b                                          ; $444d: $50
	xor h                                            ; $444e: $ac
	db $ed                                           ; $444f: $ed
	ld [bc], a                                       ; $4450: $02
	ld b, a                                          ; $4451: $47
	ld h, a                                          ; $4452: $67
	ld e, h                                          ; $4453: $5c
	ld d, d                                          ; $4454: $52
	ld a, c                                          ; $4455: $79
	ld b, c                                          ; $4456: $41
	inc a                                            ; $4457: $3c
	and c                                            ; $4458: $a1
	db $ec                                           ; $4459: $ec
	pop af                                           ; $445a: $f1
	ld c, d                                          ; $445b: $4a
	xor $06                                          ; $445c: $ee $06
	ld b, a                                          ; $445e: $47
	inc de                                           ; $445f: $13
	ldh a, [$dd]                                     ; $4460: $f0 $dd
	ldh a, [$9c]                                     ; $4462: $f0 $9c
	ld a, $52                                        ; $4464: $3e $52
	ld a, c                                          ; $4466: $79
	ld b, c                                          ; $4467: $41
	inc a                                            ; $4468: $3c
	and c                                            ; $4469: $a1
	ldh a, [$74]                                     ; $446a: $f0 $74
	ldh a, [$7a]                                     ; $446c: $f0 $7a
	ld b, d                                          ; $446e: $42
	db $ec                                           ; $446f: $ec
	dec c                                            ; $4470: $0d
	ld d, e                                          ; $4471: $53
	inc de                                           ; $4472: $13
	ldh a, [$58]                                     ; $4473: $f0 $58
	di                                               ; $4475: $f3
	or d                                             ; $4476: $b2
	ld b, [hl]                                       ; $4477: $46
	ld c, [hl]                                       ; $4478: $4e
	ld b, c                                          ; $4479: $41
	ld c, d                                          ; $447a: $4a
	ld d, c                                          ; $447b: $51
	ld e, l                                          ; $447c: $5d
	ld e, d                                          ; $447d: $5a
	xor h                                            ; $447e: $ac
	xor $06                                          ; $447f: $ee $06
	ld b, a                                          ; $4481: $47
	ld h, a                                          ; $4482: $67
	ld e, h                                          ; $4483: $5c
	ld d, d                                          ; $4484: $52
	ld a, c                                          ; $4485: $79
	ld b, c                                          ; $4486: $41
	inc a                                            ; $4487: $3c
	and c                                            ; $4488: $a1
	cp [hl]                                          ; $4489: $be

jr_095_448a:
	xor l                                            ; $448a: $ad
	jp z, $eb34                                      ; $448b: $ca $34 $eb

	ld e, d                                          ; $448e: $5a
	and b                                            ; $448f: $a0
	ld hl, $10ee                                     ; $4490: $21 $ee $10
	xor $10                                          ; $4493: $ee $10
	and b                                            ; $4495: $a0
	cpl                                              ; $4496: $2f
	ld b, e                                          ; $4497: $43
	ld b, [hl]                                       ; $4498: $46
	dec sp                                           ; $4499: $3b
	inc [hl]                                         ; $449a: $34
	db $ec                                           ; $449b: $ec
	ldh [$a8], a                                     ; $449c: $e0 $a8
	db $eb                                           ; $449e: $eb
	rst FarCall                                          ; $449f: $f7
	and c                                            ; $44a0: $a1
	ld d, $a0                                        ; $44a1: $16 $a0
	cpl                                              ; $44a3: $2f
	ld b, e                                          ; $44a4: $43
	db $ec                                           ; $44a5: $ec
	ldh [$a8], a                                     ; $44a6: $e0 $a8
	db $eb                                           ; $44a8: $eb
	rst FarCall                                          ; $44a9: $f7
	and c                                            ; $44aa: $a1
	ld l, d                                          ; $44ab: $6a
	ldh a, [$0d]                                     ; $44ac: $f0 $0d
	ld b, d                                          ; $44ae: $42
	ld l, b                                          ; $44af: $68
	pop af                                           ; $44b0: $f1
	sbc h                                            ; $44b1: $9c
	ld l, b                                          ; $44b2: $68
	inc de                                           ; $44b3: $13
	ldh a, [$c9]                                     ; $44b4: $f0 $c9
	jr c, jr_095_44f7                                ; $44b6: $38 $3f

	ld c, [hl]                                       ; $44b8: $4e
	ld h, e                                          ; $44b9: $63
	ld b, l                                          ; $44ba: $45
	ld c, h                                          ; $44bb: $4c
	and c                                            ; $44bc: $a1
	sub c                                            ; $44bd: $91
	ldh a, [$59]                                     ; $44be: $f0 $59
	ld c, h                                          ; $44c0: $4c
	and b                                            ; $44c1: $a0
	ld [$a8d2], a                                    ; $44c2: $ea $d2 $a8
	pop af                                           ; $44c5: $f1
	dec d                                            ; $44c6: $15
	ld c, l                                          ; $44c7: $4d
	dec a                                            ; $44c8: $3d
	ld d, b                                          ; $44c9: $50
	xor h                                            ; $44ca: $ac
	ldh a, [$f4]                                     ; $44cb: $f0 $f4
	di                                               ; $44cd: $f3
	ld c, l                                          ; $44ce: $4d
	ld a, $3a                                        ; $44cf: $3e $3a
	ld e, b                                          ; $44d1: $58
	jr c, jr_095_4519                                ; $44d2: $38 $45

	and b                                            ; $44d4: $a0
	ld b, h                                          ; $44d5: $44
	dec sp                                           ; $44d6: $3b
	dec a                                            ; $44d7: $3d
	ld d, b                                          ; $44d8: $50
	xor h                                            ; $44d9: $ac
	pop af                                           ; $44da: $f1

jr_095_44db:
	ld c, $38                                        ; $44db: $0e $38
	ldh a, [$2c]                                     ; $44dd: $f0 $2c
	ld b, a                                          ; $44df: $47
	ldh a, [$9a]                                     ; $44e0: $f0 $9a
	ld e, h                                          ; $44e2: $5c
	ldh a, [rTMA]                                    ; $44e3: $f0 $06
	jr c, jr_095_4521                                ; $44e5: $38 $3a

	ld e, b                                          ; $44e7: $58
	jr c, jr_095_448a                                ; $44e8: $38 $a0

	ld b, h                                          ; $44ea: $44
	dec sp                                           ; $44eb: $3b
	dec a                                            ; $44ec: $3d
	ld d, b                                          ; $44ed: $50
	xor h                                            ; $44ee: $ac
	ldh a, [rOBP0]                                   ; $44ef: $f0 $48
	ldh a, [$2c]                                     ; $44f1: $f0 $2c
	ldh a, [rLY]                                     ; $44f3: $f0 $44
	ld b, a                                          ; $44f5: $47
	ld h, a                                          ; $44f6: $67

jr_095_44f7:
	ld d, l                                          ; $44f7: $55
	ld h, e                                          ; $44f8: $63
	ld b, l                                          ; $44f9: $45
	and b                                            ; $44fa: $a0
	ld b, h                                          ; $44fb: $44
	dec sp                                           ; $44fc: $3b
	dec a                                            ; $44fd: $3d
	ld d, b                                          ; $44fe: $50
	xor h                                            ; $44ff: $ac
	db $ec                                           ; $4500: $ec
	rst $38                                          ; $4501: $ff
	ld b, a                                          ; $4502: $47
	ld h, a                                          ; $4503: $67
	ld d, l                                          ; $4504: $55
	ld h, e                                          ; $4505: $63
	ld b, l                                          ; $4506: $45
	and b                                            ; $4507: $a0
	ld b, h                                          ; $4508: $44
	dec sp                                           ; $4509: $3b
	dec a                                            ; $450a: $3d
	ld d, b                                          ; $450b: $50
	xor h                                            ; $450c: $ac
	ld [$472c], a                                    ; $450d: $ea $2c $47
	ld h, a                                          ; $4510: $67
	ld d, l                                          ; $4511: $55
	ld h, e                                          ; $4512: $63
	ld b, l                                          ; $4513: $45
	and b                                            ; $4514: $a0
	ld b, h                                          ; $4515: $44
	dec sp                                           ; $4516: $3b
	dec a                                            ; $4517: $3d
	ld d, b                                          ; $4518: $50

jr_095_4519:
	xor h                                            ; $4519: $ac
	db $ec                                           ; $451a: $ec
	pop af                                           ; $451b: $f1
	ld c, d                                          ; $451c: $4a
	ldh a, [$dd]                                     ; $451d: $f0 $dd
	ldh a, [$9c]                                     ; $451f: $f0 $9c

jr_095_4521:
	ld b, l                                          ; $4521: $45
	and b                                            ; $4522: $a0
	pop af                                           ; $4523: $f1
	ld a, [hl]                                       ; $4524: $7e
	ld a, [hl-]                                      ; $4525: $3a
	ld b, d                                          ; $4526: $42
	ld c, e                                          ; $4527: $4b
	xor h                                            ; $4528: $ac
	ld h, e                                          ; $4529: $63
	inc a                                            ; $452a: $3c

jr_095_452b:
	dec sp                                           ; $452b: $3b
	ccf                                              ; $452c: $3f
	ld c, [hl]                                       ; $452d: $4e
	ld b, d                                          ; $452e: $42
	ld b, l                                          ; $452f: $45
	xor b                                            ; $4530: $a8
	ldh a, [$f4]                                     ; $4531: $f0 $f4
	ld e, [hl]                                       ; $4533: $5e
	ccf                                              ; $4534: $3f
	ld h, h                                          ; $4535: $64
	ld e, h                                          ; $4536: $5c
	ld a, [hl-]                                      ; $4537: $3a

jr_095_4538:
	ld e, b                                          ; $4538: $58
	jr c, jr_095_44db                                ; $4539: $38 $a0

	db $ed                                           ; $453b: $ed
	ld b, [hl]                                       ; $453c: $46
	xor b                                            ; $453d: $a8
	db $eb                                           ; $453e: $eb
	ld h, h                                          ; $453f: $64
	and b                                            ; $4540: $a0
	cpl                                              ; $4541: $2f
	ld b, e                                          ; $4542: $43
	ld b, [hl]                                       ; $4543: $46
	dec sp                                           ; $4544: $3b
	inc [hl]                                         ; $4545: $34
	db $ec                                           ; $4546: $ec
	pop hl                                           ; $4547: $e1
	xor b                                            ; $4548: $a8
	db $eb                                           ; $4549: $eb
	rst FarCall                                          ; $454a: $f7
	and c                                            ; $454b: $a1
	cpl                                              ; $454c: $2f
	ld b, e                                          ; $454d: $43

jr_095_454e:
	db $ec                                           ; $454e: $ec
	pop hl                                           ; $454f: $e1
	xor b                                            ; $4550: $a8
	db $eb                                           ; $4551: $eb
	rst FarCall                                          ; $4552: $f7
	and c                                            ; $4553: $a1
	ld c, h                                          ; $4554: $4c
	add l                                            ; $4555: $85
	xor h                                            ; $4556: $ac
	ld l, d                                          ; $4557: $6a
	ldh a, [$0d]                                     ; $4558: $f0 $0d
	ld b, d                                          ; $455a: $42
	ld l, b                                          ; $455b: $68
	pop af                                           ; $455c: $f1
	sbc h                                            ; $455d: $9c
	ld l, b                                          ; $455e: $68
	inc de                                           ; $455f: $13
	ldh a, [$c9]                                     ; $4560: $f0 $c9
	jr c, jr_095_45a3                                ; $4562: $38 $3f

	ld c, [hl]                                       ; $4564: $4e
	and c                                            ; $4565: $a1
	db $ec                                           ; $4566: $ec
	scf                                              ; $4567: $37
	inc [hl]                                         ; $4568: $34
	sbc $a9                                          ; $4569: $de $a9
	ld b, b                                          ; $456b: $40
	ld c, l                                          ; $456c: $4d
	ld e, e                                          ; $456d: $5b
	ld d, [hl]                                       ; $456e: $56
	xor h                                            ; $456f: $ac
	db $eb                                           ; $4570: $eb
	ld e, c                                          ; $4571: $59
	inc a                                            ; $4572: $3c
	and c                                            ; $4573: $a1
	db $ed                                           ; $4574: $ed
	ld l, l                                          ; $4575: $6d
	xor b                                            ; $4576: $a8
	ld [$a0d2], a                                    ; $4577: $ea $d2 $a0
	ld b, b                                          ; $457a: $40
	ld c, l                                          ; $457b: $4d
	ld a, [hl-]                                      ; $457c: $3a
	ld d, b                                          ; $457d: $50
	xor h                                            ; $457e: $ac
	xor $06                                          ; $457f: $ee $06
	ld b, a                                          ; $4581: $47
	db $ed                                           ; $4582: $ed
	ld [bc], a                                       ; $4583: $02
	ld b, a                                          ; $4584: $47
	ld h, a                                          ; $4585: $67
	inc a                                            ; $4586: $3c
	ld a, [hl-]                                      ; $4587: $3a
	jr c, jr_095_452b                                ; $4588: $38 $a1

	ld b, b                                          ; $458a: $40
	ld c, l                                          ; $458b: $4d
	ld a, [hl-]                                      ; $458c: $3a
	ld d, b                                          ; $458d: $50
	xor h                                            ; $458e: $ac
	db $eb                                           ; $458f: $eb
	ld [hl], l                                       ; $4590: $75
	ld b, a                                          ; $4591: $47
	ld h, a                                          ; $4592: $67
	inc a                                            ; $4593: $3c
	ld a, [hl-]                                      ; $4594: $3a
	jr c, jr_095_4538                                ; $4595: $38 $a1

	ld b, b                                          ; $4597: $40
	ld c, l                                          ; $4598: $4d
	ld a, [hl-]                                      ; $4599: $3a
	ld d, b                                          ; $459a: $50
	xor h                                            ; $459b: $ac
	xor $06                                          ; $459c: $ee $06
	ld b, a                                          ; $459e: $47
	ldh a, [$35]                                     ; $459f: $f0 $35
	ldh a, [rSC]                                     ; $45a1: $f0 $02

jr_095_45a3:
	ldh a, [$c3]                                     ; $45a3: $f0 $c3
	ldh a, [$c2]                                     ; $45a5: $f0 $c2
	ld b, a                                          ; $45a7: $47
	ld h, a                                          ; $45a8: $67
	inc a                                            ; $45a9: $3c
	ld a, [hl-]                                      ; $45aa: $3a
	jr c, jr_095_454e                                ; $45ab: $38 $a1

	ld b, b                                          ; $45ad: $40
	add hl, sp                                       ; $45ae: $39
	xor l                                            ; $45af: $ad
	ld h, c                                          ; $45b0: $61
	ld h, [hl]                                       ; $45b1: $66
	dec sp                                           ; $45b2: $3b
	ldh a, [c]                                       ; $45b3: $f2
	sbc $57                                          ; $45b4: $de $57
	ldh a, [$8d]                                     ; $45b6: $f0 $8d
	ldh a, [$9e]                                     ; $45b8: $f0 $9e
	ld c, h                                          ; $45ba: $4c
	xor b                                            ; $45bb: $a8
	ld b, b                                          ; $45bc: $40
	ld c, l                                          ; $45bd: $4d
	ld e, e                                          ; $45be: $5b
	ld d, [hl]                                       ; $45bf: $56
	ld c, b                                          ; $45c0: $48
	and b                                            ; $45c1: $a0
	cpl                                              ; $45c2: $2f
	ld b, e                                          ; $45c3: $43
	ld b, [hl]                                       ; $45c4: $46
	dec sp                                           ; $45c5: $3b
	inc [hl]                                         ; $45c6: $34
	db $ed                                           ; $45c7: $ed
	ld d, e                                          ; $45c8: $53
	xor b                                            ; $45c9: $a8
	db $eb                                           ; $45ca: $eb
	rst FarCall                                          ; $45cb: $f7
	and c                                            ; $45cc: $a1
	xor $14                                          ; $45cd: $ee $14
	inc [hl]                                         ; $45cf: $34
	ld d, $a0                                        ; $45d0: $16 $a0
	cpl                                              ; $45d2: $2f
	ld b, e                                          ; $45d3: $43
	db $ed                                           ; $45d4: $ed
	ld d, e                                          ; $45d5: $53
	xor b                                            ; $45d6: $a8
	db $eb                                           ; $45d7: $eb
	rst FarCall                                          ; $45d8: $f7
	and c                                            ; $45d9: $a1
	ld l, d                                          ; $45da: $6a
	ldh a, [$0d]                                     ; $45db: $f0 $0d
	ld b, d                                          ; $45dd: $42
	ld l, b                                          ; $45de: $68
	pop af                                           ; $45df: $f1
	sbc h                                            ; $45e0: $9c
	ld l, b                                          ; $45e1: $68
	inc de                                           ; $45e2: $13
	ldh a, [$c9]                                     ; $45e3: $f0 $c9
	jr c, jr_095_4626                                ; $45e5: $38 $3f

	ld c, [hl]                                       ; $45e7: $4e
	inc a                                            ; $45e8: $3c
	ld a, $50                                        ; $45e9: $3e $50
	and c                                            ; $45eb: $a1
	ld l, a                                          ; $45ec: $6f
	ld b, d                                          ; $45ed: $42
	ldh a, [$3b]                                     ; $45ee: $f0 $3b
	jr c, jr_095_4654                                ; $45f0: $38 $62

	pop af                                           ; $45f2: $f1
	pop bc                                           ; $45f3: $c1
	ld c, [hl]                                       ; $45f4: $4e
	ld b, d                                          ; $45f5: $42
	ld c, e                                          ; $45f6: $4b
	xor h                                            ; $45f7: $ac
	ldh a, [$ab]                                     ; $45f8: $f0 $ab
	ld c, c                                          ; $45fa: $49
	ld a, $3f                                        ; $45fb: $3e $3f
	db $f4                                           ; $45fd: $f4
	ld l, e                                          ; $45fe: $6b
	ld b, l                                          ; $45ff: $45
	ld c, h                                          ; $4600: $4c
	and b                                            ; $4601: $a0
	ld [$a8d2], a                                    ; $4602: $ea $d2 $a8
	ldh a, [$c7]                                     ; $4605: $f0 $c7
	ld c, l                                          ; $4607: $4d
	sbc h                                            ; $4608: $9c
	ld a, b                                          ; $4609: $78
	ld a, [hl-]                                      ; $460a: $3a
	ld e, b                                          ; $460b: $58
	jr c, jr_095_4653                                ; $460c: $38 $45

	and b                                            ; $460e: $a0
	ld b, b                                          ; $460f: $40
	ld c, l                                          ; $4610: $4d
	ld a, [hl-]                                      ; $4611: $3a
	ld d, b                                          ; $4612: $50
	inc [hl]                                         ; $4613: $34
	pop af                                           ; $4614: $f1
	ld c, $38                                        ; $4615: $0e $38
	ldh a, [$2c]                                     ; $4617: $f0 $2c
	ld b, a                                          ; $4619: $47
	inc de                                           ; $461a: $13
	ldh a, [$9a]                                     ; $461b: $f0 $9a
	ld e, h                                          ; $461d: $5c
	ldh a, [rTMA]                                    ; $461e: $f0 $06
	dec sp                                           ; $4620: $3b
	ccf                                              ; $4621: $3f
	ldh a, [$a3]                                     ; $4622: $f0 $a3
	ld e, b                                          ; $4624: $58
	ld c, [hl]                                       ; $4625: $4e

jr_095_4626:
	ld h, e                                          ; $4626: $63
	ld c, h                                          ; $4627: $4c
	and b                                            ; $4628: $a0
	ld b, b                                          ; $4629: $40
	ld c, l                                          ; $462a: $4d
	ld a, [hl-]                                      ; $462b: $3a
	ld d, b                                          ; $462c: $50
	inc [hl]                                         ; $462d: $34
	db $ed                                           ; $462e: $ed
	ld [bc], a                                       ; $462f: $02
	ld b, a                                          ; $4630: $47
	inc de                                           ; $4631: $13
	ldh a, [$9a]                                     ; $4632: $f0 $9a
	ld e, h                                          ; $4634: $5c

jr_095_4635:
	ldh a, [rTMA]                                    ; $4635: $f0 $06
	dec sp                                           ; $4637: $3b
	ccf                                              ; $4638: $3f
	ldh a, [$a3]                                     ; $4639: $f0 $a3
	ld e, b                                          ; $463b: $58
	ld c, [hl]                                       ; $463c: $4e
	ld h, e                                          ; $463d: $63
	ld c, h                                          ; $463e: $4c
	and b                                            ; $463f: $a0
	ld b, b                                          ; $4640: $40
	ld c, l                                          ; $4641: $4d
	ld a, [hl-]                                      ; $4642: $3a
	ld d, b                                          ; $4643: $50
	xor h                                            ; $4644: $ac
	db $ec                                           ; $4645: $ec
	db $fc                                           ; $4646: $fc
	ld b, a                                          ; $4647: $47
	ldh a, [$9a]                                     ; $4648: $f0 $9a
	ld e, h                                          ; $464a: $5c
	ldh a, [rTMA]                                    ; $464b: $f0 $06
	dec sp                                           ; $464d: $3b
	ccf                                              ; $464e: $3f
	ldh a, [$a3]                                     ; $464f: $f0 $a3
	ld e, b                                          ; $4651: $58
	ld c, [hl]                                       ; $4652: $4e

jr_095_4653:
	ld h, e                                          ; $4653: $63

jr_095_4654:
	ld c, h                                          ; $4654: $4c
	and b                                            ; $4655: $a0
	ld b, b                                          ; $4656: $40
	ld c, l                                          ; $4657: $4d
	ld a, [hl-]                                      ; $4658: $3a
	ld d, b                                          ; $4659: $50
	inc [hl]                                         ; $465a: $34
	pop af                                           ; $465b: $f1
	cpl                                              ; $465c: $2f
	ldh a, [rPCM34]                                  ; $465d: $f0 $77
	pop af                                           ; $465f: $f1
	bit 0, a                                         ; $4660: $cb $47
	inc de                                           ; $4662: $13
	ldh a, [$9a]                                     ; $4663: $f0 $9a
	ld e, h                                          ; $4665: $5c
	ldh a, [rTMA]                                    ; $4666: $f0 $06
	dec sp                                           ; $4668: $3b
	ccf                                              ; $4669: $3f
	ldh a, [$a3]                                     ; $466a: $f0 $a3
	ld e, b                                          ; $466c: $58
	ld c, [hl]                                       ; $466d: $4e
	ld h, e                                          ; $466e: $63
	ld c, h                                          ; $466f: $4c
	and b                                            ; $4670: $a0
	ld b, b                                          ; $4671: $40
	ld c, l                                          ; $4672: $4d
	ld a, [hl-]                                      ; $4673: $3a
	ld d, b                                          ; $4674: $50
	xor h                                            ; $4675: $ac
	add e                                            ; $4676: $83
	ldh a, [$2f]                                     ; $4677: $f0 $2f
	ld e, c                                          ; $4679: $59
	ld b, a                                          ; $467a: $47
	ldh a, [$9a]                                     ; $467b: $f0 $9a
	ld e, h                                          ; $467d: $5c
	ldh a, [rTMA]                                    ; $467e: $f0 $06
	dec sp                                           ; $4680: $3b
	ccf                                              ; $4681: $3f
	ldh a, [$a3]                                     ; $4682: $f0 $a3
	ld e, b                                          ; $4684: $58
	ld c, [hl]                                       ; $4685: $4e
	ld h, e                                          ; $4686: $63
	ld c, h                                          ; $4687: $4c
	and b                                            ; $4688: $a0
	db $eb                                           ; $4689: $eb
	ld a, d                                          ; $468a: $7a
	jr c, jr_095_4635                                ; $468b: $38 $a8

	ld d, h                                          ; $468d: $54
	ld b, d                                          ; $468e: $42
	ld l, a                                          ; $468f: $6f
	ld b, d                                          ; $4690: $42
	ldh a, [$3b]                                     ; $4691: $f0 $3b
	jr c, jr_095_46f7                                ; $4693: $38 $62

	pop af                                           ; $4695: $f1
	pop bc                                           ; $4696: $c1
	ld c, [hl]                                       ; $4697: $4e
	ld a, [hl-]                                      ; $4698: $3a
	ld b, c                                          ; $4699: $41
	ccf                                              ; $469a: $3f
	xor b                                            ; $469b: $a8
	ldh a, [rHDMA5]                                  ; $469c: $f0 $55
	ldh a, [rBCPS]                                   ; $469e: $f0 $68
	ld d, c                                          ; $46a0: $51
	ld c, [hl]                                       ; $46a1: $4e
	ld h, e                                          ; $46a2: $63
	and b                                            ; $46a3: $a0
	pop af                                           ; $46a4: $f1
	db $e3                                           ; $46a5: $e3
	ld [hl], e                                       ; $46a6: $73
	ldh a, [rOCPD]                                   ; $46a7: $f0 $6b
	ld e, c                                          ; $46a9: $59
	xor b                                            ; $46aa: $a8
	db $eb                                           ; $46ab: $eb
	ld h, h                                          ; $46ac: $64
	and b                                            ; $46ad: $a0
	cpl                                              ; $46ae: $2f
	ld b, e                                          ; $46af: $43
	ld b, [hl]                                       ; $46b0: $46
	dec sp                                           ; $46b1: $3b
	inc [hl]                                         ; $46b2: $34
	db $eb                                           ; $46b3: $eb
	ld a, [$eba8]                                    ; $46b4: $fa $a8 $eb
	rst FarCall                                          ; $46b7: $f7
	and c                                            ; $46b8: $a1
	cpl                                              ; $46b9: $2f
	ld b, e                                          ; $46ba: $43
	db $eb                                           ; $46bb: $eb
	ld a, [$eba8]                                    ; $46bc: $fa $a8 $eb
	rst FarCall                                          ; $46bf: $f7
	and c                                            ; $46c0: $a1
	ld c, h                                          ; $46c1: $4c
	add l                                            ; $46c2: $85
	ld c, h                                          ; $46c3: $4c
	add l                                            ; $46c4: $85
	xor h                                            ; $46c5: $ac
	ld l, d                                          ; $46c6: $6a
	ldh a, [$0d]                                     ; $46c7: $f0 $0d
	ld b, d                                          ; $46c9: $42
	ld l, b                                          ; $46ca: $68
	pop af                                           ; $46cb: $f1
	sbc h                                            ; $46cc: $9c
	ld l, b                                          ; $46cd: $68
	inc de                                           ; $46ce: $13
	ldh a, [$c9]                                     ; $46cf: $f0 $c9
	jr c, @+$41                                      ; $46d1: $38 $3f

	ld c, [hl]                                       ; $46d3: $4e
	ld c, d                                          ; $46d4: $4a
	ld a, $66                                        ; $46d5: $3e $66
	add hl, sp                                       ; $46d7: $39
	and c                                            ; $46d8: $a1
	ld e, e                                          ; $46d9: $5b
	ld d, [hl]                                       ; $46da: $56
	inc [hl]                                         ; $46db: $34
	ldh a, [$ec]                                     ; $46dc: $f0 $ec
	ld d, d                                          ; $46de: $52
	ld d, a                                          ; $46df: $57
	ld c, h                                          ; $46e0: $4c
	and b                                            ; $46e1: $a0
	xor $1f                                          ; $46e2: $ee $1f
	inc [hl]                                         ; $46e4: $34
	ld b, b                                          ; $46e5: $40
	ld c, l                                          ; $46e6: $4d
	ld c, d                                          ; $46e7: $4a
	jr c, @+$3a                                      ; $46e8: $38 $38

	ld b, l                                          ; $46ea: $45
	xor b                                            ; $46eb: $a8
	ld b, b                                          ; $46ec: $40
	ld c, l                                          ; $46ed: $4d
	ld e, e                                          ; $46ee: $5b
	ld d, [hl]                                       ; $46ef: $56
	xor h                                            ; $46f0: $ac
	ld l, d                                          ; $46f1: $6a
	ldh a, [$0d]                                     ; $46f2: $f0 $0d
	ld b, d                                          ; $46f4: $42
	ld l, b                                          ; $46f5: $68
	pop af                                           ; $46f6: $f1

jr_095_46f7:
	sbc h                                            ; $46f7: $9c
	ld d, e                                          ; $46f8: $53
	sub b                                            ; $46f9: $90
	ld a, $6c                                        ; $46fa: $3e $6c
	and b                                            ; $46fc: $a0
	db $ec                                           ; $46fd: $ec
	rla                                              ; $46fe: $17
	xor b                                            ; $46ff: $a8
	pop af                                           ; $4700: $f1
	ld c, $38                                        ; $4701: $0e $38
	ldh a, [$2c]                                     ; $4703: $f0 $2c
	ld b, a                                          ; $4705: $47
	call $eca0                                       ; $4706: $cd $a0 $ec
	rla                                              ; $4709: $17
	xor b                                            ; $470a: $a8
	xor $06                                          ; $470b: $ee $06
	ld b, a                                          ; $470d: $47
	db $ec                                           ; $470e: $ec
	db $fd                                           ; $470f: $fd
	ld b, a                                          ; $4710: $47
	call $eca0                                       ; $4711: $cd $a0 $ec
	rla                                              ; $4714: $17
	xor b                                            ; $4715: $a8
	xor $06                                          ; $4716: $ee $06
	ld b, a                                          ; $4718: $47
	ldh a, [rOBP0]                                   ; $4719: $f0 $48
	ldh a, [$2c]                                     ; $471b: $f0 $2c
	ldh a, [rLY]                                     ; $471d: $f0 $44
	ld b, a                                          ; $471f: $47
	call $eca0                                       ; $4720: $cd $a0 $ec
	rla                                              ; $4723: $17
	xor b                                            ; $4724: $a8
	xor $06                                          ; $4725: $ee $06
	ld b, a                                          ; $4727: $47
	db $ec                                           ; $4728: $ec
	rst $38                                          ; $4729: $ff
	ld b, a                                          ; $472a: $47
	call $eca0                                       ; $472b: $cd $a0 $ec
	rla                                              ; $472e: $17
	xor b                                            ; $472f: $a8
	ld [$4729], a                                    ; $4730: $ea $29 $47
	call $eca0                                       ; $4733: $cd $a0 $ec
	rla                                              ; $4736: $17
	xor b                                            ; $4737: $a8
	db $eb                                           ; $4738: $eb
	ld [hl], l                                       ; $4739: $75
	ld b, a                                          ; $473a: $47
	call $eca0                                       ; $473b: $cd $a0 $ec
	rla                                              ; $473e: $17
	xor b                                            ; $473f: $a8
	xor $06                                          ; $4740: $ee $06
	ld b, a                                          ; $4742: $47
	ldh a, [$35]                                     ; $4743: $f0 $35
	ldh a, [rSC]                                     ; $4745: $f0 $02
	ldh a, [$c3]                                     ; $4747: $f0 $c3
	ldh a, [$c2]                                     ; $4749: $f0 $c2
	ld b, a                                          ; $474b: $47
	call $eca0                                       ; $474c: $cd $a0 $ec
	rla                                              ; $474f: $17
	xor b                                            ; $4750: $a8
	ldh a, [$b2]                                     ; $4751: $f0 $b2
	ldh a, [rLY]                                     ; $4753: $f0 $44
	pop af                                           ; $4755: $f1
	sbc b                                            ; $4756: $98
	ld b, d                                          ; $4757: $42
	sub [hl]                                         ; $4758: $96
	ldh a, [$30]                                     ; $4759: $f0 $30
	di                                               ; $475b: $f3
	db $10                                           ; $475c: $10
	ld d, e                                          ; $475d: $53
	ld b, [hl]                                       ; $475e: $46
	ld c, [hl]                                       ; $475f: $4e
	ld b, c                                          ; $4760: $41
	ld b, h                                          ; $4761: $44
	xor b                                            ; $4762: $a8
	xor $06                                          ; $4763: $ee $06
	ld b, a                                          ; $4765: $47
	call $eba0                                       ; $4766: $cd $a0 $eb
	ld e, e                                          ; $4769: $5b
	ld b, d                                          ; $476a: $42
	db $ec                                           ; $476b: $ec
	dec c                                            ; $476c: $0d
	ld d, e                                          ; $476d: $53
	inc de                                           ; $476e: $13
	ldh a, [$58]                                     ; $476f: $f0 $58
	di                                               ; $4771: $f3
	or d                                             ; $4772: $b2
	ld b, [hl]                                       ; $4773: $46
	ld c, [hl]                                       ; $4774: $4e
	ld b, c                                          ; $4775: $41
	ld b, h                                          ; $4776: $44
	xor b                                            ; $4777: $a8
	xor $06                                          ; $4778: $ee $06
	ld b, a                                          ; $477a: $47
	call $eca0                                       ; $477b: $cd $a0 $ec
	rla                                              ; $477e: $17
	xor b                                            ; $477f: $a8
	xor $06                                          ; $4780: $ee $06
	ld b, a                                          ; $4782: $47
	db $ec                                           ; $4783: $ec
	db $fc                                           ; $4784: $fc
	ld b, a                                          ; $4785: $47
	call $eca0                                       ; $4786: $cd $a0 $ec
	rla                                              ; $4789: $17
	xor b                                            ; $478a: $a8
	xor $06                                          ; $478b: $ee $06
	ld b, a                                          ; $478d: $47
	pop af                                           ; $478e: $f1
	cpl                                              ; $478f: $2f
	ldh a, [rPCM34]                                  ; $4790: $f0 $77
	pop af                                           ; $4792: $f1
	bit 0, a                                         ; $4793: $cb $47
	call $eca0                                       ; $4795: $cd $a0 $ec
	rla                                              ; $4798: $17
	xor b                                            ; $4799: $a8
	xor $06                                          ; $479a: $ee $06
	ld b, a                                          ; $479c: $47
	add e                                            ; $479d: $83
	ldh a, [$2f]                                     ; $479e: $f0 $2f
	ld e, c                                          ; $47a0: $59
	ld b, a                                          ; $47a1: $47
	call Call_095_5ea0                               ; $47a2: $cd $a0 $5e
	add l                                            ; $47a5: $85
	ld e, c                                          ; $47a6: $59
	inc [hl]                                         ; $47a7: $34
	xor $05                                          ; $47a8: $ee $05
	add l                                            ; $47aa: $85
	xor b                                            ; $47ab: $a8
	pop af                                           ; $47ac: $f1
	ld d, d                                          ; $47ad: $52
	ld d, e                                          ; $47ae: $53
	dec sp                                           ; $47af: $3b
	inc a                                            ; $47b0: $3c
	ld d, a                                          ; $47b1: $57
	xor b                                            ; $47b2: $a8
	ld e, e                                          ; $47b3: $5b
	ld d, [hl]                                       ; $47b4: $56
	ld b, [hl]                                       ; $47b5: $46
	inc [hl]                                         ; $47b6: $34
	ret nc                                           ; $47b7: $d0

	and b                                            ; $47b8: $a0
	db $eb                                           ; $47b9: $eb
	ld h, h                                          ; $47ba: $64
	ld e, c                                          ; $47bb: $59
	dec sp                                           ; $47bc: $3b
	and b                                            ; $47bd: $a0
	cpl                                              ; $47be: $2f
	ld b, e                                          ; $47bf: $43
	ld b, [hl]                                       ; $47c0: $46
	dec sp                                           ; $47c1: $3b
	inc [hl]                                         ; $47c2: $34
	db $eb                                           ; $47c3: $eb
	db $fc                                           ; $47c4: $fc
	xor b                                            ; $47c5: $a8
	db $eb                                           ; $47c6: $eb
	rst FarCall                                          ; $47c7: $f7
	and c                                            ; $47c8: $a1
	ld d, $ac                                        ; $47c9: $16 $ac
	ret                                              ; $47cb: $c9


	inc de                                           ; $47cc: $13
	ldh a, [$0c]                                     ; $47cd: $f0 $0c
	ld e, h                                          ; $47cf: $5c
	dec a                                            ; $47d0: $3d
	jr c, jr_095_4814                                ; $47d1: $38 $41

	ld c, d                                          ; $47d3: $4a
	ld d, c                                          ; $47d4: $51
	ld e, l                                          ; $47d5: $5d
	ld e, d                                          ; $47d6: $5a
	ld c, b                                          ; $47d7: $48
	and b                                            ; $47d8: $a0
	cpl                                              ; $47d9: $2f
	ld b, e                                          ; $47da: $43
	db $eb                                           ; $47db: $eb
	db $fc                                           ; $47dc: $fc
	xor b                                            ; $47dd: $a8
	db $eb                                           ; $47de: $eb
	rst FarCall                                          ; $47df: $f7
	and c                                            ; $47e0: $a1
	ld l, d                                          ; $47e1: $6a
	ldh a, [$0d]                                     ; $47e2: $f0 $0d
	ld b, d                                          ; $47e4: $42
	ld l, b                                          ; $47e5: $68
	pop af                                           ; $47e6: $f1
	sbc h                                            ; $47e7: $9c
	ld l, b                                          ; $47e8: $68
	inc de                                           ; $47e9: $13
	ldh a, [$c9]                                     ; $47ea: $f0 $c9
	jr c, jr_095_482d                                ; $47ec: $38 $3f

	ld d, d                                          ; $47ee: $52
	ld d, c                                          ; $47ef: $51
	inc a                                            ; $47f0: $3c
	ld c, b                                          ; $47f1: $48
	and c                                            ; $47f2: $a1
	db $ed                                           ; $47f3: $ed
	ld d, l                                          ; $47f4: $55
	ld e, c                                          ; $47f5: $59
	xor b                                            ; $47f6: $a8
	ld b, b                                          ; $47f7: $40
	ld c, l                                          ; $47f8: $4d
	ld e, e                                          ; $47f9: $5b
	ld d, [hl]                                       ; $47fa: $56
	xor h                                            ; $47fb: $ac
	pop af                                           ; $47fc: $f1
	ld a, [de]                                       ; $47fd: $1a
	pop af                                           ; $47fe: $f1
	inc c                                            ; $47ff: $0c
	inc [hl]                                         ; $4800: $34
	xor $1d                                          ; $4801: $ee $1d
	ld c, d                                          ; $4803: $4a
	ld d, c                                          ; $4804: $51
	ld b, l                                          ; $4805: $45
	and b                                            ; $4806: $a0
	xor $1f                                          ; $4807: $ee $1f
	inc [hl]                                         ; $4809: $34
	ld b, b                                          ; $480a: $40
	ld c, l                                          ; $480b: $4d
	ld c, d                                          ; $480c: $4a
	jr c, jr_095_4847                                ; $480d: $38 $38

	ld c, d                                          ; $480f: $4a
	ld d, c                                          ; $4810: $51
	xor b                                            ; $4811: $a8
	ld b, b                                          ; $4812: $40
	ld c, l                                          ; $4813: $4d

jr_095_4814:
	ld e, e                                          ; $4814: $5b
	ld d, [hl]                                       ; $4815: $56
	and b                                            ; $4816: $a0
	ld b, l                                          ; $4817: $45
	inc a                                            ; $4818: $3c
	dec sp                                           ; $4819: $3b
	dec a                                            ; $481a: $3d
	ld d, b                                          ; $481b: $50
	xor h                                            ; $481c: $ac
	xor $06                                          ; $481d: $ee $06
	ld b, a                                          ; $481f: $47
	db $ec                                           ; $4820: $ec
	db $fd                                           ; $4821: $fd
	ld b, a                                          ; $4822: $47
	ld h, a                                          ; $4823: $67
	ld e, h                                          ; $4824: $5c
	ld d, d                                          ; $4825: $52
	ld a, c                                          ; $4826: $79
	ld b, c                                          ; $4827: $41
	inc a                                            ; $4828: $3c
	and c                                            ; $4829: $a1
	ld b, l                                          ; $482a: $45
	inc a                                            ; $482b: $3c
	dec sp                                           ; $482c: $3b

jr_095_482d:
	dec a                                            ; $482d: $3d
	ld d, b                                          ; $482e: $50
	xor h                                            ; $482f: $ac
	xor $06                                          ; $4830: $ee $06
	ld b, a                                          ; $4832: $47
	ldh a, [rOBP0]                                   ; $4833: $f0 $48
	ldh a, [$2c]                                     ; $4835: $f0 $2c
	ldh a, [rLY]                                     ; $4837: $f0 $44
	ld b, a                                          ; $4839: $47
	ld h, a                                          ; $483a: $67
	ld e, h                                          ; $483b: $5c
	ld d, d                                          ; $483c: $52
	ld a, c                                          ; $483d: $79
	ld b, c                                          ; $483e: $41
	inc a                                            ; $483f: $3c
	and c                                            ; $4840: $a1
	ld b, l                                          ; $4841: $45
	inc a                                            ; $4842: $3c
	dec sp                                           ; $4843: $3b
	dec a                                            ; $4844: $3d
	ld d, b                                          ; $4845: $50
	xor h                                            ; $4846: $ac

jr_095_4847:
	xor $06                                          ; $4847: $ee $06
	ld b, a                                          ; $4849: $47
	ld [$4729], a                                    ; $484a: $ea $29 $47
	inc de                                           ; $484d: $13
	ld h, a                                          ; $484e: $67
	ld e, h                                          ; $484f: $5c
	ld d, d                                          ; $4850: $52
	ld a, c                                          ; $4851: $79
	ld b, c                                          ; $4852: $41
	inc a                                            ; $4853: $3c
	and c                                            ; $4854: $a1
	ld b, l                                          ; $4855: $45
	inc a                                            ; $4856: $3c
	dec sp                                           ; $4857: $3b
	dec a                                            ; $4858: $3d
	ld d, b                                          ; $4859: $50
	xor h                                            ; $485a: $ac
	xor $06                                          ; $485b: $ee $06
	ld b, a                                          ; $485d: $47
	db $eb                                           ; $485e: $eb
	ld [hl], l                                       ; $485f: $75
	ld b, a                                          ; $4860: $47
	inc de                                           ; $4861: $13
	ld h, a                                          ; $4862: $67
	ld e, h                                          ; $4863: $5c
	ld d, d                                          ; $4864: $52
	ld a, c                                          ; $4865: $79
	ld b, c                                          ; $4866: $41
	inc a                                            ; $4867: $3c
	and c                                            ; $4868: $a1
	ldh a, [$b2]                                     ; $4869: $f0 $b2
	ldh a, [rLY]                                     ; $486b: $f0 $44
	pop af                                           ; $486d: $f1
	sbc b                                            ; $486e: $98
	ld b, d                                          ; $486f: $42
	sub [hl]                                         ; $4870: $96
	ldh a, [$30]                                     ; $4871: $f0 $30
	di                                               ; $4873: $f3
	db $10                                           ; $4874: $10
	ld d, e                                          ; $4875: $53
	inc de                                           ; $4876: $13
	ld b, [hl]                                       ; $4877: $46
	ld c, [hl]                                       ; $4878: $4e
	ld b, c                                          ; $4879: $41
	ld c, d                                          ; $487a: $4a
	ld d, c                                          ; $487b: $51
	ld e, l                                          ; $487c: $5d
	ld e, d                                          ; $487d: $5a
	xor h                                            ; $487e: $ac
	xor $06                                          ; $487f: $ee $06
	ld b, a                                          ; $4881: $47
	ld h, a                                          ; $4882: $67
	ld e, h                                          ; $4883: $5c
	ld d, d                                          ; $4884: $52
	ld a, c                                          ; $4885: $79
	ld b, c                                          ; $4886: $41
	inc a                                            ; $4887: $3c
	and c                                            ; $4888: $a1
	ldh a, [rAUD2LOW]                                ; $4889: $f0 $18
	ldh a, [$dc]                                     ; $488b: $f0 $dc
	ld b, d                                          ; $488d: $42
	db $ec                                           ; $488e: $ec
	dec c                                            ; $488f: $0d
	ld d, e                                          ; $4890: $53
	inc de                                           ; $4891: $13
	ld b, [hl]                                       ; $4892: $46
	ld c, [hl]                                       ; $4893: $4e
	ld b, c                                          ; $4894: $41
	ld c, d                                          ; $4895: $4a
	ld d, c                                          ; $4896: $51
	ld e, l                                          ; $4897: $5d
	ld e, d                                          ; $4898: $5a
	xor h                                            ; $4899: $ac
	xor $06                                          ; $489a: $ee $06
	ld b, a                                          ; $489c: $47
	ld h, a                                          ; $489d: $67
	ld e, h                                          ; $489e: $5c
	ld d, d                                          ; $489f: $52
	ld a, c                                          ; $48a0: $79
	ld b, c                                          ; $48a1: $41
	inc a                                            ; $48a2: $3c
	and c                                            ; $48a3: $a1
	db $ec                                           ; $48a4: $ec
	jr c, jr_095_48e9                                ; $48a5: $38 $42

	db $ec                                           ; $48a7: $ec
	dec c                                            ; $48a8: $0d
	ld d, e                                          ; $48a9: $53
	inc de                                           ; $48aa: $13
	ld b, [hl]                                       ; $48ab: $46
	ld c, [hl]                                       ; $48ac: $4e
	ld b, c                                          ; $48ad: $41
	ld c, d                                          ; $48ae: $4a
	ld d, c                                          ; $48af: $51
	ld e, l                                          ; $48b0: $5d
	ld e, d                                          ; $48b1: $5a
	xor h                                            ; $48b2: $ac
	xor $06                                          ; $48b3: $ee $06
	ld b, a                                          ; $48b5: $47
	ld h, a                                          ; $48b6: $67
	ld e, h                                          ; $48b7: $5c
	ld d, d                                          ; $48b8: $52
	ld a, c                                          ; $48b9: $79
	ld b, c                                          ; $48ba: $41
	inc a                                            ; $48bb: $3c
	and c                                            ; $48bc: $a1
	ld b, l                                          ; $48bd: $45
	inc a                                            ; $48be: $3c
	dec sp                                           ; $48bf: $3b
	dec a                                            ; $48c0: $3d
	ld d, b                                          ; $48c1: $50
	xor h                                            ; $48c2: $ac
	xor $06                                          ; $48c3: $ee $06
	ld b, a                                          ; $48c5: $47
	db $ec                                           ; $48c6: $ec
	db $fc                                           ; $48c7: $fc
	ld b, a                                          ; $48c8: $47
	ld h, a                                          ; $48c9: $67
	ld e, h                                          ; $48ca: $5c
	ld d, d                                          ; $48cb: $52
	ld a, c                                          ; $48cc: $79
	ld b, c                                          ; $48cd: $41
	inc a                                            ; $48ce: $3c
	and c                                            ; $48cf: $a1
	ld b, l                                          ; $48d0: $45
	inc a                                            ; $48d1: $3c
	dec sp                                           ; $48d2: $3b
	dec a                                            ; $48d3: $3d
	ld d, b                                          ; $48d4: $50
	xor h                                            ; $48d5: $ac
	xor $06                                          ; $48d6: $ee $06
	ld b, a                                          ; $48d8: $47
	pop af                                           ; $48d9: $f1
	cpl                                              ; $48da: $2f
	ld b, a                                          ; $48db: $47
	ld h, a                                          ; $48dc: $67
	ld e, h                                          ; $48dd: $5c
	ld d, d                                          ; $48de: $52
	ld a, c                                          ; $48df: $79
	ld b, c                                          ; $48e0: $41
	inc a                                            ; $48e1: $3c
	and c                                            ; $48e2: $a1
	ld b, l                                          ; $48e3: $45
	inc a                                            ; $48e4: $3c
	dec sp                                           ; $48e5: $3b
	dec a                                            ; $48e6: $3d
	ld d, b                                          ; $48e7: $50
	xor h                                            ; $48e8: $ac

jr_095_48e9:
	xor $06                                          ; $48e9: $ee $06
	ld b, a                                          ; $48eb: $47
	add e                                            ; $48ec: $83
	ldh a, [$c2]                                     ; $48ed: $f0 $c2
	ld e, c                                          ; $48ef: $59
	ld l, c                                          ; $48f0: $69
	ld b, a                                          ; $48f1: $47
	ld h, a                                          ; $48f2: $67
	ld e, h                                          ; $48f3: $5c
	ld d, d                                          ; $48f4: $52
	ld a, c                                          ; $48f5: $79
	ld b, c                                          ; $48f6: $41
	inc a                                            ; $48f7: $3c
	and c                                            ; $48f8: $a1
	ld b, l                                          ; $48f9: $45
	inc a                                            ; $48fa: $3c
	dec sp                                           ; $48fb: $3b
	dec a                                            ; $48fc: $3d
	ld d, b                                          ; $48fd: $50
	xor h                                            ; $48fe: $ac
	xor $06                                          ; $48ff: $ee $06
	ld b, a                                          ; $4901: $47
	add e                                            ; $4902: $83
	ldh a, [$2f]                                     ; $4903: $f0 $2f
	ld e, c                                          ; $4905: $59
	ld b, a                                          ; $4906: $47
	ld h, a                                          ; $4907: $67
	ld e, h                                          ; $4908: $5c
	ld d, d                                          ; $4909: $52
	ld a, c                                          ; $490a: $79
	ld b, c                                          ; $490b: $41
	inc a                                            ; $490c: $3c
	and c                                            ; $490d: $a1
	ret nc                                           ; $490e: $d0

	ld e, c                                          ; $490f: $59

jr_095_4910:
	ld b, h                                          ; $4910: $44
	xor b                                            ; $4911: $a8
	ldh a, [rSCY]                                    ; $4912: $f0 $42
	ld b, c                                          ; $4914: $41
	xor h                                            ; $4915: $ac
	db $eb                                           ; $4916: $eb
	pop af                                           ; $4917: $f1
	ld c, c                                          ; $4918: $49
	ld h, a                                          ; $4919: $67
	ld d, l                                          ; $491a: $55
	ld c, a                                          ; $491b: $4f
	ld b, c                                          ; $491c: $41
	and b                                            ; $491d: $a0
	cpl                                              ; $491e: $2f
	ld b, e                                          ; $491f: $43
	ld b, [hl]                                       ; $4920: $46
	dec sp                                           ; $4921: $3b

jr_095_4922:
	inc [hl]                                         ; $4922: $34
	db $ec                                           ; $4923: $ec
	and $a8                                          ; $4924: $e6 $a8
	db $eb                                           ; $4926: $eb
	rst FarCall                                          ; $4927: $f7
	and c                                            ; $4928: $a1
	cpl                                              ; $4929: $2f
	ld b, e                                          ; $492a: $43
	ld b, [hl]                                       ; $492b: $46
	dec sp                                           ; $492c: $3b

jr_095_492d:
	inc [hl]                                         ; $492d: $34
	db $ec                                           ; $492e: $ec
	and $a0                                          ; $492f: $e6 $a0
	xor $1e                                          ; $4931: $ee $1e
	ld c, h                                          ; $4933: $4c
	ld c, b                                          ; $4934: $48
	and b                                            ; $4935: $a0
	cpl                                              ; $4936: $2f
	ld b, e                                          ; $4937: $43
	ld b, c                                          ; $4938: $41
	ld [hl], $6b                                     ; $4939: $36 $6b
	and c                                            ; $493b: $a1
	ld l, d                                          ; $493c: $6a
	ldh a, [$0d]                                     ; $493d: $f0 $0d

jr_095_493f:
	ld b, d                                          ; $493f: $42
	ld l, b                                          ; $4940: $68
	pop af                                           ; $4941: $f1
	sbc h                                            ; $4942: $9c
	ld l, b                                          ; $4943: $68
	inc de                                           ; $4944: $13
	ldh a, [$c9]                                     ; $4945: $f0 $c9
	jr c, jr_095_4988                                ; $4947: $38 $3f

	ld c, [hl]                                       ; $4949: $4e
	inc a                                            ; $494a: $3c
	ld a, [hl-]                                      ; $494b: $3a
	and c                                            ; $494c: $a1
	db $ed                                           ; $494d: $ed
	ld b, c                                          ; $494e: $41
	ld [hl], $45                                     ; $494f: $36 $45
	inc a                                            ; $4951: $3c
	dec sp                                           ; $4952: $3b
	dec a                                            ; $4953: $3d
	and b                                            ; $4954: $a0
	xor $1f                                          ; $4955: $ee $1f
	xor b                                            ; $4957: $a8
	sub b                                            ; $4958: $90
	ld a, $6c                                        ; $4959: $3e $6c
	ld b, a                                          ; $495b: $47
	ld a, $3f                                        ; $495c: $3e $3f
	ld c, [hl]                                       ; $495e: $4e
	ld c, h                                          ; $495f: $4c

jr_095_4960:
	and b                                            ; $4960: $a0
	ld e, e                                          ; $4961: $5b
	ld d, [hl]                                       ; $4962: $56
	xor h                                            ; $4963: $ac
	xor $06                                          ; $4964: $ee $06
	ld b, a                                          ; $4966: $47
	db $ec                                           ; $4967: $ec
	db $fd                                           ; $4968: $fd
	ld b, a                                          ; $4969: $47
	ld h, a                                          ; $496a: $67
	inc a                                            ; $496b: $3c
	ld a, [hl-]                                      ; $496c: $3a
	jr c, jr_095_4910                                ; $496d: $38 $a1

	ld e, e                                          ; $496f: $5b
	ld d, [hl]                                       ; $4970: $56
	xor h                                            ; $4971: $ac
	xor $06                                          ; $4972: $ee $06
	ld b, a                                          ; $4974: $47
	ldh a, [rOBP0]                                   ; $4975: $f0 $48
	ldh a, [$2c]                                     ; $4977: $f0 $2c
	ldh a, [rLY]                                     ; $4979: $f0 $44
	ld b, a                                          ; $497b: $47
	ld h, a                                          ; $497c: $67
	inc a                                            ; $497d: $3c
	ld a, [hl-]                                      ; $497e: $3a
	jr c, jr_095_4922                                ; $497f: $38 $a1

	ld e, e                                          ; $4981: $5b
	ld d, [hl]                                       ; $4982: $56
	xor h                                            ; $4983: $ac
	ld [$472c], a                                    ; $4984: $ea $2c $47
	ld h, a                                          ; $4987: $67

jr_095_4988:
	inc a                                            ; $4988: $3c
	ld a, [hl-]                                      ; $4989: $3a
	jr c, jr_095_492d                                ; $498a: $38 $a1

	ld e, e                                          ; $498c: $5b
	ld d, [hl]                                       ; $498d: $56
	xor h                                            ; $498e: $ac
	xor $06                                          ; $498f: $ee $06
	ld b, a                                          ; $4991: $47
	pop af                                           ; $4992: $f1
	cpl                                              ; $4993: $2f
	ldh a, [rPCM34]                                  ; $4994: $f0 $77
	pop af                                           ; $4996: $f1
	bit 0, a                                         ; $4997: $cb $47
	ld h, a                                          ; $4999: $67
	inc a                                            ; $499a: $3c
	ld a, [hl-]                                      ; $499b: $3a
	jr c, jr_095_493f                                ; $499c: $38 $a1

	ld e, e                                          ; $499e: $5b
	ld d, [hl]                                       ; $499f: $56
	xor h                                            ; $49a0: $ac
	xor $06                                          ; $49a1: $ee $06
	ld b, a                                          ; $49a3: $47
	add e                                            ; $49a4: $83
	ldh a, [$c2]                                     ; $49a5: $f0 $c2
	ld e, c                                          ; $49a7: $59
	ld l, c                                          ; $49a8: $69
	ld b, a                                          ; $49a9: $47
	ld h, a                                          ; $49aa: $67
	inc a                                            ; $49ab: $3c
	ld a, [hl-]                                      ; $49ac: $3a
	jr c, @-$5d                                      ; $49ad: $38 $a1

	ld e, e                                          ; $49af: $5b
	ld d, [hl]                                       ; $49b0: $56
	xor h                                            ; $49b1: $ac
	xor $06                                          ; $49b2: $ee $06
	ld b, a                                          ; $49b4: $47
	add e                                            ; $49b5: $83
	ldh a, [$2f]                                     ; $49b6: $f0 $2f
	ld e, c                                          ; $49b8: $59
	ld b, a                                          ; $49b9: $47
	ld h, a                                          ; $49ba: $67
	inc a                                            ; $49bb: $3c
	ld a, [hl-]                                      ; $49bc: $3a
	jr c, jr_095_4960                                ; $49bd: $38 $a1

	ld b, b                                          ; $49bf: $40
	ld c, b                                          ; $49c0: $48
	db $d3                                           ; $49c1: $d3
	xor l                                            ; $49c2: $ad
	db $ed                                           ; $49c3: $ed
	xor a                                            ; $49c4: $af
	db $ec                                           ; $49c5: $ec
	dec bc                                           ; $49c6: $0b
	ld c, b                                          ; $49c7: $48
	ld b, b                                          ; $49c8: $40
	ld c, l                                          ; $49c9: $4d
	ld e, e                                          ; $49ca: $5b
	ld d, [hl]                                       ; $49cb: $56
	ld c, b                                          ; $49cc: $48
	and b                                            ; $49cd: $a0
	cpl                                              ; $49ce: $2f
	ld [hl-], a                                      ; $49cf: $32
	db $ec                                           ; $49d0: $ec
	rst SubAFromHL                                          ; $49d1: $d7
	xor h                                            ; $49d2: $ac
	pop af                                           ; $49d3: $f1
	adc b                                            ; $49d4: $88
	add b                                            ; $49d5: $80
	jr c, jr_095_4a17                                ; $49d6: $38 $3f

	dec a                                            ; $49d8: $3d
	sub a                                            ; $49d9: $97
	xor b                                            ; $49da: $a8
	halt                                             ; $49db: $76
	ld c, e                                          ; $49dc: $4b
	inc [hl]                                         ; $49dd: $34
	daa                                              ; $49de: $27
	add h                                            ; $49df: $84
	ldh a, [$2a]                                     ; $49e0: $f0 $2a
	ldh a, [rHDMA5]                                  ; $49e2: $f0 $55
	pop af                                           ; $49e4: $f1
	inc h                                            ; $49e5: $24
	dec h                                            ; $49e6: $25
	ld b, h                                          ; $49e7: $44
	ld e, c                                          ; $49e8: $59
	dec sp                                           ; $49e9: $3b
	scf                                              ; $49ea: $37
	scf                                              ; $49eb: $37
	inc sp                                           ; $49ec: $33
	add hl, bc                                       ; $49ed: $09
	cpl                                              ; $49ee: $2f
	ld [hl-], a                                      ; $49ef: $32
	ld b, [hl]                                       ; $49f0: $46
	ld b, c                                          ; $49f1: $41
	ld a, [hl-]                                      ; $49f2: $3a
	ld d, h                                          ; $49f3: $54
	ld c, c                                          ; $49f4: $49
	inc de                                           ; $49f5: $13
	add d                                            ; $49f6: $82
	add hl, sp                                       ; $49f7: $39
	ld a, [hl-]                                      ; $49f8: $3a
	ld b, c                                          ; $49f9: $41
	ccf                                              ; $49fa: $3f
	xor l                                            ; $49fb: $ad
	halt                                             ; $49fc: $76
	dec sp                                           ; $49fd: $3b
	ccf                                              ; $49fe: $3f
	xor h                                            ; $49ff: $ac
	add h                                            ; $4a00: $84
	ldh a, [$2a]                                     ; $4a01: $f0 $2a
	ld c, c                                          ; $4a03: $49
	ld a, $3f                                        ; $4a04: $3e $3f
	ldh a, [$5f]                                     ; $4a06: $f0 $5f
	di                                               ; $4a08: $f3
	dec de                                           ; $4a09: $1b
	ld b, h                                          ; $4a0a: $44
	ld e, c                                          ; $4a0b: $59
	dec sp                                           ; $4a0c: $3b
	scf                                              ; $4a0d: $37
	inc sp                                           ; $4a0e: $33
	add hl, bc                                       ; $4a0f: $09
	cpl                                              ; $4a10: $2f
	ld [hl-], a                                      ; $4a11: $32
	inc a                                            ; $4a12: $3c
	ld a, [hl-]                                      ; $4a13: $3a
	ld d, a                                          ; $4a14: $57
	pop af                                           ; $4a15: $f1
	adc b                                            ; $4a16: $88

jr_095_4a17:
	add b                                            ; $4a17: $80
	jr c, jr_095_4a59                                ; $4a18: $38 $3f

	dec a                                            ; $4a1a: $3d
	ld a, [hl-]                                      ; $4a1b: $3a
	xor l                                            ; $4a1c: $ad
	ld b, [hl]                                       ; $4a1d: $46
	ld b, c                                          ; $4a1e: $41
	ld a, [hl-]                                      ; $4a1f: $3a
	inc [hl]                                         ; $4a20: $34
	ldh a, [$d8]                                     ; $4a21: $f0 $d8
	ld e, d                                          ; $4a23: $5a
	jr c, jr_095_4a7a                                ; $4a24: $38 $54

	ld c, c                                          ; $4a26: $49
	ld h, d                                          ; $4a27: $62
	xor l                                            ; $4a28: $ad
	ld b, [hl]                                       ; $4a29: $46
	ld [hl], h                                       ; $4a2a: $74
	inc [hl]                                         ; $4a2b: $34
	db $ed                                           ; $4a2c: $ed
	cp b                                             ; $4a2d: $b8
	ld d, e                                          ; $4a2e: $53
	pop af                                           ; $4a2f: $f1
	ld a, [hl-]                                      ; $4a30: $3a
	ldh a, [$be]                                     ; $4a31: $f0 $be
	ld a, [hl-]                                      ; $4a33: $3a
	ld [hl], h                                       ; $4a34: $74
	ld c, b                                          ; $4a35: $48
	and e                                            ; $4a36: $a3
	cpl                                              ; $4a37: $2f
	ld [hl-], a                                      ; $4a38: $32
	pop af                                           ; $4a39: $f1
	adc b                                            ; $4a3a: $88
	add b                                            ; $4a3b: $80
	jr c, jr_095_4a7d                                ; $4a3c: $38 $3f

	dec a                                            ; $4a3e: $3d
	ld l, h                                          ; $4a3f: $6c
	dec a                                            ; $4a40: $3d
	jr c, jr_095_4a87                                ; $4a41: $38 $44

	ld a, [hl-]                                      ; $4a43: $3a
	xor b                                            ; $4a44: $a8
	ld c, a                                          ; $4a45: $4f
	add hl, sp                                       ; $4a46: $39
	ldh a, [rHDMA4]                                  ; $4a47: $f0 $54
	ld a, $f0                                        ; $4a49: $3e $f0
	ld c, [hl]                                       ; $4a4b: $4e
	ld a, $55                                        ; $4a4c: $3e $55
	ld a, $3f                                        ; $4a4e: $3e $3f
	ld c, a                                          ; $4a50: $4f
	inc de                                           ; $4a51: $13
	ld b, l                                          ; $4a52: $45
	inc a                                            ; $4a53: $3c
	dec sp                                           ; $4a54: $3b
	dec a                                            ; $4a55: $3d
	inc a                                            ; $4a56: $3c
	ld a, [hl-]                                      ; $4a57: $3a
	ld c, b                                          ; $4a58: $48

jr_095_4a59:
	and e                                            ; $4a59: $a3
	cpl                                              ; $4a5a: $2f
	ld [hl-], a                                      ; $4a5b: $32
	ret                                              ; $4a5c: $c9


	inc de                                           ; $4a5d: $13
	ld [$4834], a                                    ; $4a5e: $ea $34 $48
	and e                                            ; $4a61: $a3
	cpl                                              ; $4a62: $2f
	ld h, $ed                                        ; $4a63: $26 $ed
	rst JumpTable                                          ; $4a65: $c7
	pop af                                           ; $4a66: $f1
	ld [de], a                                       ; $4a67: $12
	ld e, c                                          ; $4a68: $59
	ld h, l                                          ; $4a69: $65
	add hl, bc                                       ; $4a6a: $09
	cpl                                              ; $4a6b: $2f
	ld b, e                                          ; $4a6c: $43
	ld h, h                                          ; $4a6d: $64
	ld l, [hl]                                       ; $4a6e: $6e
	inc [hl]                                         ; $4a6f: $34
	ld h, h                                          ; $4a70: $64
	pop af                                           ; $4a71: $f1
	call c, $4158                                    ; $4a72: $dc $58 $41
	ld b, h                                          ; $4a75: $44
	xor b                                            ; $4a76: $a8
	ldh a, [$98]                                     ; $4a77: $f0 $98
	ld b, h                                          ; $4a79: $44

jr_095_4a7a:
	ld e, a                                          ; $4a7a: $5f
	add hl, sp                                       ; $4a7b: $39
	and c                                            ; $4a7c: $a1

jr_095_4a7d:
	cpl                                              ; $4a7d: $2f
	ld [hl-], a                                      ; $4a7e: $32
	ldh a, [$d6]                                     ; $4a7f: $f0 $d6
	ld b, d                                          ; $4a81: $42
	ld l, b                                          ; $4a82: $68
	pop af                                           ; $4a83: $f1
	sbc h                                            ; $4a84: $9c
	ld l, b                                          ; $4a85: $68
	ld b, h                                          ; $4a86: $44

jr_095_4a87:
	ld a, [hl-]                                      ; $4a87: $3a
	xor b                                            ; $4a88: $a8
	pop af                                           ; $4a89: $f1
	dec d                                            ; $4a8a: $15
	ld c, l                                          ; $4a8b: $4d
	ld a, [hl-]                                      ; $4a8c: $3a
	jr c, jr_095_4ad4                                ; $4a8d: $38 $45

	add hl, sp                                       ; $4a8f: $39
	ld b, a                                          ; $4a90: $47
	inc de                                           ; $4a91: $13
	db $ec                                           ; $4a92: $ec
	ld a, c                                          ; $4a93: $79
	ld a, $3a                                        ; $4a94: $3e $3a
	ld d, l                                          ; $4a96: $55
	ld h, c                                          ; $4a97: $61
	ld d, [hl]                                       ; $4a98: $56
	and e                                            ; $4a99: $a3
	add hl, bc                                       ; $4a9a: $09
	cpl                                              ; $4a9b: $2f
	ld [hl-], a                                      ; $4a9c: $32
	ld b, [hl]                                       ; $4a9d: $46
	dec sp                                           ; $4a9e: $3b
	xor h                                            ; $4a9f: $ac
	db $ed                                           ; $4aa0: $ed
	xor c                                            ; $4aa1: $a9
	db $ec                                           ; $4aa2: $ec
	daa                                              ; $4aa3: $27
	and e                                            ; $4aa4: $a3
	cpl                                              ; $4aa5: $2f
	ld b, e                                          ; $4aa6: $43
	ld h, h                                          ; $4aa7: $64
	ld e, c                                          ; $4aa8: $59
	jr c, jr_095_4adf                                ; $4aa9: $38 $34

	db $ed                                           ; $4aab: $ed
	xor c                                            ; $4aac: $a9
	and b                                            ; $4aad: $a0
	ld hl, $ebeb                                     ; $4aae: $21 $eb $eb
	and b                                            ; $4ab1: $a0
	cpl                                              ; $4ab2: $2f
	ld b, e                                          ; $4ab3: $43
	ld b, [hl]                                       ; $4ab4: $46
	ld c, l                                          ; $4ab5: $4d
	inc [hl]                                         ; $4ab6: $34
	inc hl                                           ; $4ab7: $23
	pop af                                           ; $4ab8: $f1
	ld b, e                                          ; $4ab9: $43
	dec sp                                           ; $4aba: $3b
	ccf                                              ; $4abb: $3f
	inc de                                           ; $4abc: $13
	ld [$a0be], a                                    ; $4abd: $ea $be $a0
	cpl                                              ; $4ac0: $2f
	ld [hl-], a                                      ; $4ac1: $32
	ld b, [hl]                                       ; $4ac2: $46
	dec sp                                           ; $4ac3: $3b
	xor h                                            ; $4ac4: $ac
	db $ec                                           ; $4ac5: $ec
	rst SubAFromDE                                          ; $4ac6: $df
	db $ec                                           ; $4ac7: $ec
	daa                                              ; $4ac8: $27
	and e                                            ; $4ac9: $a3
	cpl                                              ; $4aca: $2f
	ld b, e                                          ; $4acb: $43
	ld h, h                                          ; $4acc: $64
	ld e, c                                          ; $4acd: $59
	jr c, jr_095_4b04                                ; $4ace: $38 $34

	db $ec                                           ; $4ad0: $ec
	rst SubAFromDE                                          ; $4ad1: $df
	and b                                            ; $4ad2: $a0
	cpl                                              ; $4ad3: $2f

jr_095_4ad4:
	ld [hl-], a                                      ; $4ad4: $32
	ld b, [hl]                                       ; $4ad5: $46
	dec sp                                           ; $4ad6: $3b
	xor h                                            ; $4ad7: $ac
	db $ec                                           ; $4ad8: $ec
	ldh [$ec], a                                     ; $4ad9: $e0 $ec
	daa                                              ; $4adb: $27
	and e                                            ; $4adc: $a3
	cpl                                              ; $4add: $2f
	ld b, e                                          ; $4ade: $43

jr_095_4adf:
	ld h, h                                          ; $4adf: $64
	ld e, c                                          ; $4ae0: $59
	jr c, jr_095_4b17                                ; $4ae1: $38 $34

	db $ec                                           ; $4ae3: $ec
	ldh [$a0], a                                     ; $4ae4: $e0 $a0
	cpl                                              ; $4ae6: $2f
	ld [hl-], a                                      ; $4ae7: $32
	ld b, [hl]                                       ; $4ae8: $46
	dec sp                                           ; $4ae9: $3b
	xor h                                            ; $4aea: $ac
	db $ec                                           ; $4aeb: $ec
	pop hl                                           ; $4aec: $e1
	db $ec                                           ; $4aed: $ec
	daa                                              ; $4aee: $27
	and e                                            ; $4aef: $a3
	cpl                                              ; $4af0: $2f
	ld b, e                                          ; $4af1: $43
	ld h, h                                          ; $4af2: $64
	ld e, c                                          ; $4af3: $59
	jr c, jr_095_4b2a                                ; $4af4: $38 $34

	db $ec                                           ; $4af6: $ec
	pop hl                                           ; $4af7: $e1
	and b                                            ; $4af8: $a0
	cpl                                              ; $4af9: $2f
	ld [hl-], a                                      ; $4afa: $32
	ld b, [hl]                                       ; $4afb: $46
	dec sp                                           ; $4afc: $3b
	xor h                                            ; $4afd: $ac
	db $ed                                           ; $4afe: $ed
	ld d, e                                          ; $4aff: $53
	db $ec                                           ; $4b00: $ec
	daa                                              ; $4b01: $27
	and e                                            ; $4b02: $a3
	cpl                                              ; $4b03: $2f

jr_095_4b04:
	ld b, e                                          ; $4b04: $43
	ld h, h                                          ; $4b05: $64
	ld e, c                                          ; $4b06: $59
	jr c, jr_095_4b3d                                ; $4b07: $38 $34

	db $ed                                           ; $4b09: $ed
	ld d, e                                          ; $4b0a: $53
	and b                                            ; $4b0b: $a0
	ld a, a                                          ; $4b0c: $7f
	pop af                                           ; $4b0d: $f1
	cp c                                             ; $4b0e: $b9
	ld d, l                                          ; $4b0f: $55
	inc [hl]                                         ; $4b10: $34
	pop af                                           ; $4b11: $f1
	dec l                                            ; $4b12: $2d
	ld h, d                                          ; $4b13: $62
	inc de                                           ; $4b14: $13
	inc a                                            ; $4b15: $3c
	ld e, l                                          ; $4b16: $5d

jr_095_4b17:
	ld a, [hl-]                                      ; $4b17: $3a
	jr c, jr_095_4b64                                ; $4b18: $38 $4a

	ld d, l                                          ; $4b1a: $55
	ld c, l                                          ; $4b1b: $4d
	ld c, [hl]                                       ; $4b1c: $4e
	and c                                            ; $4b1d: $a1
	cpl                                              ; $4b1e: $2f
	ld b, e                                          ; $4b1f: $43
	ld b, [hl]                                       ; $4b20: $46
	ld c, l                                          ; $4b21: $4d
	inc [hl]                                         ; $4b22: $34
	ld [$a0be], a                                    ; $4b23: $ea $be $a0
	cpl                                              ; $4b26: $2f
	ld [hl-], a                                      ; $4b27: $32
	ld b, [hl]                                       ; $4b28: $46
	dec sp                                           ; $4b29: $3b

jr_095_4b2a:
	xor h                                            ; $4b2a: $ac
	db $eb                                           ; $4b2b: $eb
	ld a, [$27ec]                                    ; $4b2c: $fa $ec $27
	and e                                            ; $4b2f: $a3
	cpl                                              ; $4b30: $2f
	ld b, e                                          ; $4b31: $43
	ld h, h                                          ; $4b32: $64
	ld e, c                                          ; $4b33: $59
	jr c, jr_095_4b6a                                ; $4b34: $38 $34

	db $eb                                           ; $4b36: $eb
	ld a, [$46a0]                                    ; $4b37: $fa $a0 $46
	dec sp                                           ; $4b3a: $3b
	ld c, c                                          ; $4b3b: $49
	xor h                                            ; $4b3c: $ac

jr_095_4b3d:
	pop af                                           ; $4b3d: $f1
	ld d, $38                                        ; $4b3e: $16 $38
	ld c, d                                          ; $4b40: $4a
	ld a, d                                          ; $4b41: $7a
	ld d, b                                          ; $4b42: $50
	ld a, [hl-]                                      ; $4b43: $3a
	ld e, h                                          ; $4b44: $5c
	ld d, [hl]                                       ; $4b45: $56
	and b                                            ; $4b46: $a0
	cpl                                              ; $4b47: $2f
	ld [hl-], a                                      ; $4b48: $32
	ld b, [hl]                                       ; $4b49: $46
	dec sp                                           ; $4b4a: $3b
	xor h                                            ; $4b4b: $ac
	db $eb                                           ; $4b4c: $eb
	db $fc                                           ; $4b4d: $fc
	db $ec                                           ; $4b4e: $ec
	daa                                              ; $4b4f: $27
	and e                                            ; $4b50: $a3
	cpl                                              ; $4b51: $2f
	ld b, e                                          ; $4b52: $43
	ld h, h                                          ; $4b53: $64
	ld e, c                                          ; $4b54: $59
	jr c, jr_095_4b8b                                ; $4b55: $38 $34

	db $eb                                           ; $4b57: $eb
	db $fc                                           ; $4b58: $fc
	and b                                            ; $4b59: $a0
	ld hl, $10ee                                     ; $4b5a: $21 $ee $10
	xor $10                                          ; $4b5d: $ee $10
	and b                                            ; $4b5f: $a0
	cpl                                              ; $4b60: $2f
	ld [hl-], a                                      ; $4b61: $32
	ld b, [hl]                                       ; $4b62: $46
	dec sp                                           ; $4b63: $3b

jr_095_4b64:
	xor h                                            ; $4b64: $ac
	db $ec                                           ; $4b65: $ec
	and $ec                                          ; $4b66: $e6 $ec
	daa                                              ; $4b68: $27
	and e                                            ; $4b69: $a3

jr_095_4b6a:
	cpl                                              ; $4b6a: $2f
	ld b, e                                          ; $4b6b: $43
	ld h, h                                          ; $4b6c: $64
	ld e, c                                          ; $4b6d: $59
	jr c, jr_095_4ba4                                ; $4b6e: $38 $34

	db $ec                                           ; $4b70: $ec
	and $a0                                          ; $4b71: $e6 $a0
	ld b, l                                          ; $4b73: $45
	add hl, sp                                       ; $4b74: $39
	inc [hl]                                         ; $4b75: $34
	ld [de], a                                       ; $4b76: $12
	xor b                                            ; $4b77: $a8
	jr c, @+$3a                                      ; $4b78: $38 $38

	ld d, h                                          ; $4b7a: $54
	ld c, c                                          ; $4b7b: $49
	db $ec                                           ; $4b7c: $ec
	db $ed                                           ; $4b7d: $ed
	ld l, [hl]                                       ; $4b7e: $6e
	ld c, [hl]                                       ; $4b7f: $4e
	adc l                                            ; $4b80: $8d
	xor b                                            ; $4b81: $a8
	add e                                            ; $4b82: $83
	sub e                                            ; $4b83: $93
	ldh a, [rP1]                                     ; $4b84: $f0 $00
	ld e, c                                          ; $4b86: $59
	ld h, l                                          ; $4b87: $65
	ldh a, [$7b]                                     ; $4b88: $f0 $7b
	ld e, c                                          ; $4b8a: $59

jr_095_4b8b:
	ldh a, [rAUD4LEN]                                ; $4b8b: $f0 $20
	ld e, c                                          ; $4b8d: $59
	dec sp                                           ; $4b8e: $3b
	ccf                                              ; $4b8f: $3f
	xor h                                            ; $4b90: $ac
	ldh a, [$2d]                                     ; $4b91: $f0 $2d
	dec sp                                           ; $4b93: $3b
	ccf                                              ; $4b94: $3f
	ld c, [hl]                                       ; $4b95: $4e
	inc a                                            ; $4b96: $3c
	and c                                            ; $4b97: $a1
	cpl                                              ; $4b98: $2f
	sub c                                            ; $4b99: $91
	ldh a, [$59]                                     ; $4b9a: $f0 $59
	add hl, bc                                       ; $4b9c: $09
	ld b, b                                          ; $4b9d: $40
	add hl, sp                                       ; $4b9e: $39
	inc a                                            ; $4b9f: $3c
	inc [hl]                                         ; $4ba0: $34
	ld e, b                                          ; $4ba1: $58
	ld d, c                                          ; $4ba2: $51
	ld d, e                                          ; $4ba3: $53

jr_095_4ba4:
	ld b, h                                          ; $4ba4: $44
	ld a, [hl-]                                      ; $4ba5: $3a
	and b                                            ; $4ba6: $a0
	cpl                                              ; $4ba7: $2f
	ld l, e                                          ; $4ba8: $6b
	ld b, b                                          ; $4ba9: $40
	ld c, l                                          ; $4baa: $4d
	and c                                            ; $4bab: $a1
	ldh a, [rAUD1LEN]                                ; $4bac: $f0 $11
	ldh a, [rAUD3LOW]                                ; $4bae: $f0 $1d
	ld h, l                                          ; $4bb0: $65
	ldh a, [$32]                                     ; $4bb1: $f0 $32
	sub [hl]                                         ; $4bb3: $96
	ldh a, [$7f]                                     ; $4bb4: $f0 $7f
	ld b, d                                          ; $4bb6: $42
	ldh a, [rBGP]                                    ; $4bb7: $f0 $47
	ld b, a                                          ; $4bb9: $47
	inc de                                           ; $4bba: $13
	db $ec                                           ; $4bbb: $ec
	db $eb                                           ; $4bbc: $eb
	ld l, e                                          ; $4bbd: $6b
	ld c, a                                          ; $4bbe: $4f
	ld a, $3a                                        ; $4bbf: $3e $3a
	inc a                                            ; $4bc1: $3c
	dec sp                                           ; $4bc2: $3b
	dec a                                            ; $4bc3: $3d
	ld d, b                                          ; $4bc4: $50
	inc de                                           ; $4bc5: $13
	pop hl                                           ; $4bc6: $e1
	ld b, d                                          ; $4bc7: $42
	ldh a, [rWY]                                     ; $4bc8: $f0 $4a
	pop af                                           ; $4bca: $f1
	dec b                                            ; $4bcb: $05
	ld d, e                                          ; $4bcc: $53
	ldh a, [$bb]                                     ; $4bcd: $f0 $bb
	ld d, d                                          ; $4bcf: $52
	ld c, [hl]                                       ; $4bd0: $4e
	ld b, c                                          ; $4bd1: $41
	ld b, h                                          ; $4bd2: $44
	and b                                            ; $4bd3: $a0
	pop af                                           ; $4bd4: $f1
	ld l, [hl]                                       ; $4bd5: $6e
	ldh a, [$cf]                                     ; $4bd6: $f0 $cf
	ld a, [hl-]                                      ; $4bd8: $3a
	ldh a, [rIF]                                     ; $4bd9: $f0 $0f
	ldh a, [$8e]                                     ; $4bdb: $f0 $8e
	ldh a, [c]                                       ; $4bdd: $f2
	daa                                              ; $4bde: $27
	ld e, c                                          ; $4bdf: $59
	ldh a, [rAUD3LOW]                                ; $4be0: $f0 $1d
	ld h, l                                          ; $4be2: $65
	add e                                            ; $4be3: $83
	ld h, d                                          ; $4be4: $62
	inc de                                           ; $4be5: $13
	ld [hl], d                                       ; $4be6: $72
	ld a, c                                          ; $4be7: $79
	ccf                                              ; $4be8: $3f
	ld d, l                                          ; $4be9: $55
	ld c, l                                          ; $4bea: $4d
	ld c, [hl]                                       ; $4beb: $4e
	adc l                                            ; $4bec: $8d
	and b                                            ; $4bed: $a0
	db $f4                                           ; $4bee: $f4
	inc c                                            ; $4bef: $0c
	ld a, $37                                        ; $4bf0: $3e $37
	rla                                              ; $4bf2: $17
	ldh a, [$5f]                                     ; $4bf3: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $4bf5: $f0 $94
	inc a                                            ; $4bf7: $3c
	ld d, b                                          ; $4bf8: $50
	ldh a, [rOBP1]                                   ; $4bf9: $f0 $49
	ccf                                              ; $4bfb: $3f
	ld b, d                                          ; $4bfc: $42
	pop hl                                           ; $4bfd: $e1
	ld d, e                                          ; $4bfe: $53
	inc de                                           ; $4bff: $13
	ld [hl], d                                       ; $4c00: $72
	ld c, l                                          ; $4c01: $4d
	ld c, [hl]                                       ; $4c02: $4e
	pop af                                           ; $4c03: $f1
	dec bc                                           ; $4c04: $0b
	db $ec                                           ; $4c05: $ec
	ret c                                            ; $4c06: $d8

jr_095_4c07:
	adc l                                            ; $4c07: $8d
	and b                                            ; $4c08: $a0
	pop hl                                           ; $4c09: $e1
	ld h, d                                          ; $4c0a: $62
	di                                               ; $4c0b: $f3
	sub l                                            ; $4c0c: $95
	ldh a, [$30]                                     ; $4c0d: $f0 $30
	ld e, b                                          ; $4c0f: $58
	ld a, c                                          ; $4c10: $79
	ld c, [hl]                                       ; $4c11: $4e
	ld b, a                                          ; $4c12: $47
	ld c, e                                          ; $4c13: $4b
	add hl, bc                                       ; $4c14: $09
	ldh a, [$5c]                                     ; $4c15: $f0 $5c
	jr c, jr_095_4c07                                ; $4c17: $38 $ee

	db $10                                           ; $4c19: $10
	xor b                                            ; $4c1a: $a8
	ldh a, [$31]                                     ; $4c1b: $f0 $31
	ld c, e                                          ; $4c1d: $4b
	inc [hl]                                         ; $4c1e: $34
	halt                                             ; $4c1f: $76
	ld c, a                                          ; $4c20: $4f
	ld b, l                                          ; $4c21: $45
	ld d, l                                          ; $4c22: $55
	db $ec                                           ; $4c23: $ec
	dec b                                            ; $4c24: $05
	ld b, c                                          ; $4c25: $41
	ld b, h                                          ; $4c26: $44
	and b                                            ; $4c27: $a0
	halt                                             ; $4c28: $76
	ld b, d                                          ; $4c29: $42
	ldh a, [$35]                                     ; $4c2a: $f0 $35
	ld h, l                                          ; $4c2c: $65
	ld b, h                                          ; $4c2d: $44
	ld d, e                                          ; $4c2e: $53
	xor $10                                          ; $4c2f: $ee $10
	add hl, bc                                       ; $4c31: $09
	ldh a, [rAUD3LEVEL]                              ; $4c32: $f0 $1c
	pop af                                           ; $4c34: $f1
	inc bc                                           ; $4c35: $03
	ld b, d                                          ; $4c36: $42
	pop hl                                           ; $4c37: $e1
	ld c, c                                          ; $4c38: $49
	inc de                                           ; $4c39: $13
	pop af                                           ; $4c3a: $f1
	ld l, [hl]                                       ; $4c3b: $6e
	ldh a, [$cf]                                     ; $4c3c: $f0 $cf
	ld a, [hl-]                                      ; $4c3e: $3a
	ldh a, [rHDMA3]                                  ; $4c3f: $f0 $53
	ldh a, [rAUDVOL]                                 ; $4c41: $f0 $24
	ld h, d                                          ; $4c43: $62

Call_095_4c44:
	ld a, $3d                                        ; $4c44: $3e $3d
	ld d, a                                          ; $4c46: $57
	xor h                                            ; $4c47: $ac
	ld a, l                                          ; $4c48: $7d
	pop af                                           ; $4c49: $f1
	dec e                                            ; $4c4a: $1d
	ld h, l                                          ; $4c4b: $65
	ld l, c                                          ; $4c4c: $69
	ld b, a                                          ; $4c4d: $47
	db $f4                                           ; $4c4e: $f4
	ld l, d                                          ; $4c4f: $6a
	push af                                          ; $4c50: $f5
	dec hl                                           ; $4c51: $2b
	ld a, $3d                                        ; $4c52: $3e $3d
	ld d, a                                          ; $4c54: $57
	xor $10                                          ; $4c55: $ee $10
	rla                                              ; $4c57: $17
	ld c, c                                          ; $4c58: $49
	ld b, a                                          ; $4c59: $47
	inc a                                            ; $4c5a: $3c
	ld d, l                                          ; $4c5b: $55
	and d                                            ; $4c5c: $a2
	ld b, b                                          ; $4c5d: $40
	ld b, d                                          ; $4c5e: $42
	pop af                                           ; $4c5f: $f1
	ld b, [hl]                                       ; $4c60: $46
	ld c, c                                          ; $4c61: $49
	pop af                                           ; $4c62: $f1
	ld l, [hl]                                       ; $4c63: $6e
	ldh a, [$cf]                                     ; $4c64: $f0 $cf
	ld a, [hl-]                                      ; $4c66: $3a
	ld d, h                                          ; $4c67: $54
	ld c, c                                          ; $4c68: $49
	ld h, d                                          ; $4c69: $62
	inc de                                           ; $4c6a: $13
	ldh a, [c]                                       ; $4c6b: $f2
	inc hl                                           ; $4c6c: $23
	ldh a, [$ad]                                     ; $4c6d: $f0 $ad
	ld a, $3f                                        ; $4c6f: $3e $3f
	jr c, @+$5f                                      ; $4c71: $38 $5d

	ld a, e                                          ; $4c73: $7b
	xor h                                            ; $4c74: $ac
	ld b, b                                          ; $4c75: $40
	ld b, d                                          ; $4c76: $42
	add hl, sp                                       ; $4c77: $39
	ld h, c                                          ; $4c78: $61
	inc [hl]                                         ; $4c79: $34
	db $ec                                           ; $4c7a: $ec
	db $ec                                           ; $4c7b: $ec
	inc a                                            ; $4c7c: $3c
	ld a, [hl-]                                      ; $4c7d: $3a
	ld c, [hl]                                       ; $4c7e: $4e
	ld b, c                                          ; $4c7f: $41
	ld e, e                                          ; $4c80: $5b
	ld d, [hl]                                       ; $4c81: $56
	inc de                                           ; $4c82: $13
	ld a, [hl-]                                      ; $4c83: $3a
	jr c, jr_095_4cc2                                ; $4c84: $38 $3c

	ld a, [hl-]                                      ; $4c86: $3a
	and b                                            ; $4c87: $a0
	ldh a, [rBGP]                                    ; $4c88: $f0 $47
	ld b, a                                          ; $4c8a: $47
	ld c, e                                          ; $4c8b: $4b
	pop af                                           ; $4c8c: $f1
	ld [hl-], a                                      ; $4c8d: $32
	ld d, b                                          ; $4c8e: $50
	ld a, c                                          ; $4c8f: $79
	dec a                                            ; $4c90: $3d
	ld d, a                                          ; $4c91: $57
	ld a, $3a                                        ; $4c92: $3e $3a
	jr c, jr_095_4cdf                                ; $4c94: $38 $49

	inc de                                           ; $4c96: $13
	jr c, jr_095_4cf6                                ; $4c97: $38 $5d

	ld a, [hl-]                                      ; $4c99: $3a
	jr c, jr_095_4cd8                                ; $4c9a: $38 $3c

	ld c, a                                          ; $4c9c: $4f
	ld a, [hl-]                                      ; $4c9d: $3a
	and b                                            ; $4c9e: $a0
	ld d, d                                          ; $4c9f: $52
	ld b, [hl]                                       ; $4ca0: $46
	inc [hl]                                         ; $4ca1: $34
	ld b, b                                          ; $4ca2: $40
	ld c, l                                          ; $4ca3: $4d
	ld h, d                                          ; $4ca4: $62
	ld [hl], d                                       ; $4ca5: $72
	add b                                            ; $4ca6: $80
	ld e, l                                          ; $4ca7: $5d
	ld c, [hl]                                       ; $4ca8: $4e
	ld b, d                                          ; $4ca9: $42
	ld c, a                                          ; $4caa: $4f
	inc de                                           ; $4cab: $13
	ld l, l                                          ; $4cac: $6d
	add b                                            ; $4cad: $80
	ld b, d                                          ; $4cae: $42
	sub b                                            ; $4caf: $90
	ld a, $6c                                        ; $4cb0: $3e $6c
	dec sp                                           ; $4cb2: $3b
	ccf                                              ; $4cb3: $3f
	ld c, a                                          ; $4cb4: $4f
	ld b, c                                          ; $4cb5: $41
	ld b, h                                          ; $4cb6: $44
	and b                                            ; $4cb7: $a0
	ld d, h                                          ; $4cb8: $54
	ld c, l                                          ; $4cb9: $4d
	ld c, a                                          ; $4cba: $4f
	ldh a, [$0c]                                     ; $4cbb: $f0 $0c
	jr c, jr_095_4cfc                                ; $4cbd: $38 $3d

	ldh a, [rAUDVOL]                                 ; $4cbf: $f0 $24
	ld b, h                                          ; $4cc1: $44

jr_095_4cc2:
	ld d, e                                          ; $4cc2: $53
	xor $10                                          ; $4cc3: $ee $10
	inc de                                           ; $4cc5: $13
	ld [hl], d                                       ; $4cc6: $72
	add b                                            ; $4cc7: $80
	ld e, l                                          ; $4cc8: $5d
	dec a                                            ; $4cc9: $3d
	pop hl                                           ; $4cca: $e1
	ld c, e                                          ; $4ccb: $4b
	add hl, bc                                       ; $4ccc: $09
	ldh a, [rOCPS]                                   ; $4ccd: $f0 $6a
	ldh a, [$9f]                                     ; $4ccf: $f0 $9f
	ldh a, [$c6]                                     ; $4cd1: $f0 $c6
	pop af                                           ; $4cd3: $f1
	ld [hl], d                                       ; $4cd4: $72
	ld c, d                                          ; $4cd5: $4a
	db $ed                                           ; $4cd6: $ed
	ld h, d                                          ; $4cd7: $62

jr_095_4cd8:
	ld c, c                                          ; $4cd8: $49
	inc de                                           ; $4cd9: $13
	ldh a, [c]                                       ; $4cda: $f2
	ld a, $f2                                        ; $4cdb: $3e $f2
	db $dd                                           ; $4cdd: $dd
	ld c, d                                          ; $4cde: $4a

jr_095_4cdf:
	ld e, h                                          ; $4cdf: $5c
	ld c, [hl]                                       ; $4ce0: $4e
	ld d, b                                          ; $4ce1: $50
	ld a, $38                                        ; $4ce2: $3e $38
	adc l                                            ; $4ce4: $8d
	and b                                            ; $4ce5: $a0
	db $eb                                           ; $4ce6: $eb
	db $f4                                           ; $4ce7: $f4
	inc de                                           ; $4ce8: $13
	ld [hl], d                                       ; $4ce9: $72
	add b                                            ; $4cea: $80
	ld e, l                                          ; $4ceb: $5d
	ld d, b                                          ; $4cec: $50
	ld c, l                                          ; $4ced: $4d
	ld a, [hl-]                                      ; $4cee: $3a
	inc a                                            ; $4cef: $3c
	dec sp                                           ; $4cf0: $3b
	dec a                                            ; $4cf1: $3d
	ld d, b                                          ; $4cf2: $50
	inc de                                           ; $4cf3: $13
	db $ed                                           ; $4cf4: $ed
	ld h, d                                          ; $4cf5: $62

jr_095_4cf6:
	ld b, a                                          ; $4cf6: $47
	ldh a, [c]                                       ; $4cf7: $f2
	ld e, l                                          ; $4cf8: $5d
	ld b, c                                          ; $4cf9: $41
	ld c, d                                          ; $4cfa: $4a
	ld l, h                                          ; $4cfb: $6c

jr_095_4cfc:
	ld e, a                                          ; $4cfc: $5f
	ld b, l                                          ; $4cfd: $45
	and b                                            ; $4cfe: $a0
	ld d, h                                          ; $4cff: $54
	ld b, d                                          ; $4d00: $42
	ldh a, [$35]                                     ; $4d01: $f0 $35
	db $ed                                           ; $4d03: $ed
	jr nz, jr_095_4d4d                               ; $4d04: $20 $47

	jr c, jr_095_4d42                                ; $4d06: $38 $3a

	jr c, jr_095_4d1d                                ; $4d08: $38 $13

	pop hl                                           ; $4d0a: $e1
	ld c, a                                          ; $4d0b: $4f
	ldh a, [c]                                       ; $4d0c: $f2
	ld sp, hl                                        ; $4d0d: $f9
	pop af                                           ; $4d0e: $f1
	cp $4a                                           ; $4d0f: $fe $4a
	ld e, h                                          ; $4d11: $5c
	ld c, [hl]                                       ; $4d12: $4e
	ld d, b                                          ; $4d13: $50
	ld a, $38                                        ; $4d14: $3e $38
	adc l                                            ; $4d16: $8d
	and b                                            ; $4d17: $a0
	db $ec                                           ; $4d18: $ec
	ld sp, $2fa0                                     ; $4d19: $31 $a0 $2f
	ld b, e                                          ; $4d1c: $43

jr_095_4d1d:
	add e                                            ; $4d1d: $83
	sub e                                            ; $4d1e: $93
	ldh a, [rP1]                                     ; $4d1f: $f0 $00
	ld e, c                                          ; $4d21: $59
	ld h, l                                          ; $4d22: $65
	ldh a, [$7b]                                     ; $4d23: $f0 $7b
	ld e, c                                          ; $4d25: $59
	ldh a, [rAUD4LEN]                                ; $4d26: $f0 $20
	ld e, c                                          ; $4d28: $59
	inc de                                           ; $4d29: $13
	inc a                                            ; $4d2a: $3c
	ld c, b                                          ; $4d2b: $48
	and b                                            ; $4d2c: $a0
	ld b, [hl]                                       ; $4d2d: $46
	dec sp                                           ; $4d2e: $3b
	inc [hl]                                         ; $4d2f: $34
	ld d, $a0                                        ; $4d30: $16 $a0
	cpl                                              ; $4d32: $2f
	ld b, e                                          ; $4d33: $43
	db $ed                                           ; $4d34: $ed
	xor c                                            ; $4d35: $a9
	inc [hl]                                         ; $4d36: $34
	db $eb                                           ; $4d37: $eb
	rst FarCall                                          ; $4d38: $f7
	and c                                            ; $4d39: $a1
	ldh a, [rSVBK]                                   ; $4d3a: $f0 $70
	ld c, a                                          ; $4d3c: $4f
	ld h, h                                          ; $4d3d: $64
	ldh a, [c]                                       ; $4d3e: $f2
	ld d, c                                          ; $4d3f: $51
	ldh a, [$cd]                                     ; $4d40: $f0 $cd

jr_095_4d42:
	ldh a, [c]                                       ; $4d42: $f2
	ld sp, $3e44                                     ; $4d43: $31 $44 $3e
	inc [hl]                                         ; $4d46: $34
	rla                                              ; $4d47: $17
	db $ec                                           ; $4d48: $ec
	ld a, [de]                                       ; $4d49: $1a
	inc [hl]                                         ; $4d4a: $34
	xor $06                                          ; $4d4b: $ee $06

jr_095_4d4d:
	ld b, a                                          ; $4d4d: $47
	ld a, d                                          ; $4d4e: $7a
	ld e, a                                          ; $4d4f: $5f
	add hl, sp                                       ; $4d50: $39
	ld c, c                                          ; $4d51: $49
	inc de                                           ; $4d52: $13
	ld [hl], a                                       ; $4d53: $77
	dec sp                                           ; $4d54: $3b
	ccf                                              ; $4d55: $3f
	ld c, b                                          ; $4d56: $48
	and b                                            ; $4d57: $a0
	cpl                                              ; $4d58: $2f
	db $dd                                           ; $4d59: $dd
	xor $06                                          ; $4d5a: $ee $06
	ld b, a                                          ; $4d5c: $47
	ld a, d                                          ; $4d5d: $7a
	ld e, a                                          ; $4d5e: $5f
	add hl, sp                                       ; $4d5f: $39
	add hl, bc                                       ; $4d60: $09
	ld b, b                                          ; $4d61: $40
	ld c, l                                          ; $4d62: $4d
	ld e, e                                          ; $4d63: $5b
	ld d, [hl]                                       ; $4d64: $56
	inc [hl]                                         ; $4d65: $34
	or b                                             ; $4d66: $b0
	and b                                            ; $4d67: $a0
	cpl                                              ; $4d68: $2f
	db $eb                                           ; $4d69: $eb
	ld c, a                                          ; $4d6a: $4f
	inc a                                            ; $4d6b: $3c
	ld d, b                                          ; $4d6c: $50
	inc [hl]                                         ; $4d6d: $34
	jr c, jr_095_4da8                                ; $4d6e: $38 $38

	ld b, l                                          ; $4d70: $45
	add hl, bc                                       ; $4d71: $09
	ld b, b                                          ; $4d72: $40
	add hl, sp                                       ; $4d73: $39
	xor l                                            ; $4d74: $ad
	ld e, e                                          ; $4d75: $5b
	ld d, [hl]                                       ; $4d76: $56
	ld b, [hl]                                       ; $4d77: $46
	inc [hl]                                         ; $4d78: $34
	ld l, a                                          ; $4d79: $6f
	inc [hl]                                         ; $4d7a: $34
	ldh a, [$bc]                                     ; $4d7b: $f0 $bc
	ld b, a                                          ; $4d7d: $47
	ld a, d                                          ; $4d7e: $7a
	ld c, [hl]                                       ; $4d7f: $4e
	ld c, h                                          ; $4d80: $4c
	and b                                            ; $4d81: $a0
	ld b, [hl]                                       ; $4d82: $46
	dec sp                                           ; $4d83: $3b
	inc [hl]                                         ; $4d84: $34
	ld d, $a8                                        ; $4d85: $16 $a8
	ld l, d                                          ; $4d87: $6a
	ld a, d                                          ; $4d88: $7a
	ld d, a                                          ; $4d89: $57
	and c                                            ; $4d8a: $a1
	cpl                                              ; $4d8b: $2f
	xor $06                                          ; $4d8c: $ee $06
	ld b, a                                          ; $4d8e: $47
	ld a, d                                          ; $4d8f: $7a
	ld d, b                                          ; $4d90: $50
	ld a, [hl-]                                      ; $4d91: $3a
	jr c, jr_095_4dd0                                ; $4d92: $38 $3c

	and c                                            ; $4d94: $a1
	call c, Call_095_64a8                            ; $4d95: $dc $a8 $64
	ldh a, [c]                                       ; $4d98: $f2
	ld d, c                                          ; $4d99: $51
	ldh a, [$cd]                                     ; $4d9a: $f0 $cd
	ldh a, [c]                                       ; $4d9c: $f2
	ld sp, $3e44                                     ; $4d9d: $31 $44 $3e
	xor h                                            ; $4da0: $ac
	xor $06                                          ; $4da1: $ee $06
	ld b, a                                          ; $4da3: $47
	or b                                             ; $4da4: $b0
	inc a                                            ; $4da5: $3c
	and b                                            ; $4da6: $a0
	cpl                                              ; $4da7: $2f

jr_095_4da8:
	ld b, e                                          ; $4da8: $43
	jp hl                                            ; $4da9: $e9


	ld [hl+], a                                      ; $4daa: $22
	and b                                            ; $4dab: $a0
	cpl                                              ; $4dac: $2f
	ld b, b                                          ; $4dad: $40
	add hl, sp                                       ; $4dae: $39
	ld b, h                                          ; $4daf: $44
	ld b, l                                          ; $4db0: $45
	dec [hl]                                         ; $4db1: $35
	ld e, e                                          ; $4db2: $5b
	ld d, [hl]                                       ; $4db3: $56
	ld h, h                                          ; $4db4: $64
	ldh a, [$bc]                                     ; $4db5: $f0 $bc
	ld b, a                                          ; $4db7: $47
	add hl, bc                                       ; $4db8: $09
	ld e, b                                          ; $4db9: $58
	ld b, l                                          ; $4dba: $45
	ld a, [hl-]                                      ; $4dbb: $3a
	ld d, b                                          ; $4dbc: $50
	and b                                            ; $4dbd: $a0
	xor $06                                          ; $4dbe: $ee $06
	ld b, a                                          ; $4dc0: $47
	ld a, d                                          ; $4dc1: $7a
	dec sp                                           ; $4dc2: $3b
	ccf                                              ; $4dc3: $3f
	xor h                                            ; $4dc4: $ac
	db $ed                                           ; $4dc5: $ed
	ld h, d                                          ; $4dc6: $62
	ld b, a                                          ; $4dc7: $47
	pop af                                           ; $4dc8: $f1
	adc e                                            ; $4dc9: $8b
	ld c, c                                          ; $4dca: $49
	inc a                                            ; $4dcb: $3c
	ld e, b                                          ; $4dcc: $58
	ld c, l                                          ; $4dcd: $4d
	ld c, [hl]                                       ; $4dce: $4e
	ld c, c                                          ; $4dcf: $49

jr_095_4dd0:
	xor h                                            ; $4dd0: $ac
	db $eb                                           ; $4dd1: $eb
	ld c, a                                          ; $4dd2: $4f
	ld a, $48                                        ; $4dd3: $3e $48
	and b                                            ; $4dd5: $a0
	cpl                                              ; $4dd6: $2f
	ld b, e                                          ; $4dd7: $43
	rst JumpTable                                          ; $4dd8: $c7
	ld b, h                                          ; $4dd9: $44
	ld c, h                                          ; $4dda: $4c
	xor b                                            ; $4ddb: $a8
	or h                                             ; $4ddc: $b4
	inc [hl]                                         ; $4ddd: $34
	ld h, h                                          ; $4dde: $64
	ldh a, [$bc]                                     ; $4ddf: $f0 $bc
	ld b, a                                          ; $4de1: $47
	and b                                            ; $4de2: $a0
	ld [hl], b                                       ; $4de3: $70
	ld [hl], c                                       ; $4de4: $71
	ld b, c                                          ; $4de5: $41
	ld c, h                                          ; $4de6: $4c
	xor b                                            ; $4de7: $a8
	ld e, b                                          ; $4de8: $58
	ld b, l                                          ; $4de9: $45
	ld a, [hl-]                                      ; $4dea: $3a
	ld d, b                                          ; $4deb: $50
	and b                                            ; $4dec: $a0
	cpl                                              ; $4ded: $2f
	ld [$ac33], a                                    ; $4dee: $ea $33 $ac
	xor $08                                          ; $4df1: $ee $08
	ld c, d                                          ; $4df3: $4a
	db $ed                                           ; $4df4: $ed
	ld e, b                                          ; $4df5: $58
	and e                                            ; $4df6: $a3
	cpl                                              ; $4df7: $2f
	ld [hl-], a                                      ; $4df8: $32
	halt                                             ; $4df9: $76
	ld c, e                                          ; $4dfa: $4b
	db $ed                                           ; $4dfb: $ed
	xor c                                            ; $4dfc: $a9
	ld c, c                                          ; $4dfd: $49
	xor h                                            ; $4dfe: $ac
	ld [$a32a], a                                    ; $4dff: $ea $2a $a3
	cpl                                              ; $4e02: $2f
	add [hl]                                         ; $4e03: $86
	add [hl]                                         ; $4e04: $86
	add [hl]                                         ; $4e05: $86
	ld [hl-], a                                      ; $4e06: $32
	ld b, b                                          ; $4e07: $40
	ld a, $3f                                        ; $4e08: $3e $3f
	xor $10                                          ; $4e0a: $ee $10
	inc sp                                           ; $4e0c: $33
	add hl, bc                                       ; $4e0d: $09
	cpl                                              ; $4e0e: $2f
	ld [hl-], a                                      ; $4e0f: $32
	ld c, c                                          ; $4e10: $49
	inc [hl]                                         ; $4e11: $34
	add d                                            ; $4e12: $82
	add hl, sp                                       ; $4e13: $39
	ld b, l                                          ; $4e14: $45
	add hl, sp                                       ; $4e15: $39
	ld a, [hl-]                                      ; $4e16: $3a
	ld d, h                                          ; $4e17: $54
	ld c, c                                          ; $4e18: $49
	ld h, d                                          ; $4e19: $62
	inc de                                           ; $4e1a: $13
	ldh a, [rAUDVOL]                                 ; $4e1b: $f0 $24
	ld a, $3a                                        ; $4e1d: $3e $3a
	ld d, e                                          ; $4e1f: $53
	ld d, b                                          ; $4e20: $50
	ldh a, [$a3]                                     ; $4e21: $f0 $a3
	sbc a                                            ; $4e23: $9f
	ld a, $3d                                        ; $4e24: $3e $3d
	and e                                            ; $4e26: $a3
	ld b, [hl]                                       ; $4e27: $46
	dec sp                                           ; $4e28: $3b
	inc [hl]                                         ; $4e29: $34
	db $eb                                           ; $4e2a: $eb
	ld d, c                                          ; $4e2b: $51
	xor h                                            ; $4e2c: $ac
	ld [$4ca3], a                                    ; $4e2d: $ea $a3 $4c
	xor b                                            ; $4e30: $a8
	jp hl                                            ; $4e31: $e9


	adc h                                            ; $4e32: $8c
	and c                                            ; $4e33: $a1
	cpl                                              ; $4e34: $2f
	ld b, e                                          ; $4e35: $43
	pop af                                           ; $4e36: $f1
	halt                                             ; $4e37: $76
	ld h, c                                          ; $4e38: $61
	pop af                                           ; $4e39: $f1
	halt                                             ; $4e3a: $76
	ld h, c                                          ; $4e3b: $61
	inc a                                            ; $4e3c: $3c
	ld a, [hl-]                                      ; $4e3d: $3a
	ld c, b                                          ; $4e3e: $48
	and b                                            ; $4e3f: $a0
	ld b, b                                          ; $4e40: $40
	ld c, l                                          ; $4e41: $4d
	ld e, e                                          ; $4e42: $5b
	ld d, [hl]                                       ; $4e43: $56
	xor h                                            ; $4e44: $ac
	sub d                                            ; $4e45: $92
	adc [hl]                                         ; $4e46: $8e
	ld d, b                                          ; $4e47: $50
	ld a, [hl-]                                      ; $4e48: $3a
	ld d, l                                          ; $4e49: $55
	ld h, c                                          ; $4e4a: $61
	ld d, [hl]                                       ; $4e4b: $56
	ld c, h                                          ; $4e4c: $4c
	and b                                            ; $4e4d: $a0
	cpl                                              ; $4e4e: $2f
	ld b, e                                          ; $4e4f: $43
	rst JumpTable                                          ; $4e50: $c7
	ld b, h                                          ; $4e51: $44
	ld c, h                                          ; $4e52: $4c
	and b                                            ; $4e53: $a0
	db $eb                                           ; $4e54: $eb
	ld d, c                                          ; $4e55: $51
	xor h                                            ; $4e56: $ac
	ld c, a                                          ; $4e57: $4f
	add hl, sp                                       ; $4e58: $39
	ld d, c                                          ; $4e59: $51
	sbc l                                            ; $4e5a: $9d
	db $ed                                           ; $4e5b: $ed
	db $10                                           ; $4e5c: $10
	ld c, h                                          ; $4e5d: $4c
	and b                                            ; $4e5e: $a0
	cpl                                              ; $4e5f: $2f
	ld b, e                                          ; $4e60: $43
	db $eb                                           ; $4e61: $eb
	ld d, c                                          ; $4e62: $51
	ld b, b                                          ; $4e63: $40
	add hl, sp                                       ; $4e64: $39
	ld b, h                                          ; $4e65: $44
	ld c, h                                          ; $4e66: $4c
	and b                                            ; $4e67: $a0
	xor $06                                          ; $4e68: $ee $06
	ld b, a                                          ; $4e6a: $47
	inc de                                           ; $4e6b: $13
	ld [$a020], a                                    ; $4e6c: $ea $20 $a0
	cpl                                              ; $4e6f: $2f
	ld b, e                                          ; $4e70: $43
	xor $1f                                          ; $4e71: $ee $1f
	inc [hl]                                         ; $4e73: $34
	sub d                                            ; $4e74: $92
	adc [hl]                                         ; $4e75: $8e
	ld e, a                                          ; $4e76: $5f
	add hl, sp                                       ; $4e77: $39
	and b                                            ; $4e78: $a0
	ld h, h                                          ; $4e79: $64
	pop af                                           ; $4e7a: $f1
	ld d, a                                          ; $4e7b: $57
	jr c, jr_095_4ec5                                ; $4e7c: $38 $47

	inc de                                           ; $4e7e: $13
	ld [$a020], a                                    ; $4e7f: $ea $20 $a0
	ld e, h                                          ; $4e82: $5c
	dec sp                                           ; $4e83: $3b
	ld c, c                                          ; $4e84: $49
	inc [hl]                                         ; $4e85: $34
	ld [hl], d                                       ; $4e86: $72
	adc c                                            ; $4e87: $89
	ld b, a                                          ; $4e88: $47
	ld h, a                                          ; $4e89: $67
	ld d, l                                          ; $4e8a: $55
	ld c, h                                          ; $4e8b: $4c
	and b                                            ; $4e8c: $a0
	cpl                                              ; $4e8d: $2f
	ld b, e                                          ; $4e8e: $43
	xor $1f                                          ; $4e8f: $ee $1f
	inc [hl]                                         ; $4e91: $34
	ldh a, [c]                                       ; $4e92: $f2
	or e                                             ; $4e93: $b3
	ldh a, [c]                                       ; $4e94: $f2
	ld d, d                                          ; $4e95: $52
	ld d, c                                          ; $4e96: $51
	ld c, [hl]                                       ; $4e97: $4e
	ld b, l                                          ; $4e98: $45
	and b                                            ; $4e99: $a0
	adc a                                            ; $4e9a: $8f
	ld b, d                                          ; $4e9b: $42
	ldh a, [$38]                                     ; $4e9c: $f0 $38
	ld b, a                                          ; $4e9e: $47
	inc de                                           ; $4e9f: $13
	ldh a, [$b2]                                     ; $4ea0: $f0 $b2
	ldh a, [rKEY1]                                   ; $4ea2: $f0 $4d
	ld b, a                                          ; $4ea4: $47
	ld a, b                                          ; $4ea5: $78
	ccf                                              ; $4ea6: $3f
	ld c, h                                          ; $4ea7: $4c
	and b                                            ; $4ea8: $a0
	cpl                                              ; $4ea9: $2f
	ld b, e                                          ; $4eaa: $43
	xor $1f                                          ; $4eab: $ee $1f
	inc [hl]                                         ; $4ead: $34
	ld h, a                                          ; $4eae: $67
	ld e, l                                          ; $4eaf: $5d
	dec a                                            ; $4eb0: $3d
	ld d, b                                          ; $4eb1: $50
	ld h, a                                          ; $4eb2: $67
	ld d, l                                          ; $4eb3: $55
	ld b, l                                          ; $4eb4: $45
	and b                                            ; $4eb5: $a0
	db $eb                                           ; $4eb6: $eb
	ld d, c                                          ; $4eb7: $51
	xor h                                            ; $4eb8: $ac
	ld c, a                                          ; $4eb9: $4f
	add hl, sp                                       ; $4eba: $39
	ld d, c                                          ; $4ebb: $51
	sbc l                                            ; $4ebc: $9d
	db $ed                                           ; $4ebd: $ed
	sbc l                                            ; $4ebe: $9d
	pop af                                           ; $4ebf: $f1
	inc e                                            ; $4ec0: $1c
	ld c, h                                          ; $4ec1: $4c
	and b                                            ; $4ec2: $a0
	cpl                                              ; $4ec3: $2f
	ld b, e                                          ; $4ec4: $43

jr_095_4ec5:
	ld b, b                                          ; $4ec5: $40
	add hl, sp                                       ; $4ec6: $39
	ld b, h                                          ; $4ec7: $44
	ld c, h                                          ; $4ec8: $4c
	and b                                            ; $4ec9: $a0
	ld h, h                                          ; $4eca: $64
	pop af                                           ; $4ecb: $f1
	ld d, a                                          ; $4ecc: $57
	jr c, jr_095_4ee2                                ; $4ecd: $38 $13

	ld [$4c20], a                                    ; $4ecf: $ea $20 $4c
	and b                                            ; $4ed2: $a0
	cpl                                              ; $4ed3: $2f
	ld b, e                                          ; $4ed4: $43
	ldh a, [$65]                                     ; $4ed5: $f0 $65
	ldh a, [$75]                                     ; $4ed7: $f0 $75
	ld b, a                                          ; $4ed9: $47
	inc de                                           ; $4eda: $13
	ld a, a                                          ; $4edb: $7f
	ld h, d                                          ; $4edc: $62
	ldh a, [$9a]                                     ; $4edd: $f0 $9a
	ld e, l                                          ; $4edf: $5d
	ld a, [hl-]                                      ; $4ee0: $3a
	ld d, l                                          ; $4ee1: $55

jr_095_4ee2:
	ld h, c                                          ; $4ee2: $61
	ld d, [hl]                                       ; $4ee3: $56
	and b                                            ; $4ee4: $a0
	db $eb                                           ; $4ee5: $eb
	ld d, c                                          ; $4ee6: $51
	xor h                                            ; $4ee7: $ac
	ld c, a                                          ; $4ee8: $4f
	add hl, sp                                       ; $4ee9: $39
	ld d, c                                          ; $4eea: $51
	sbc l                                            ; $4eeb: $9d
	db $ec                                           ; $4eec: $ec
	call nz, $a04c                                   ; $4eed: $c4 $4c $a0
	cpl                                              ; $4ef0: $2f
	ld b, e                                          ; $4ef1: $43
	ld b, b                                          ; $4ef2: $40
	add hl, sp                                       ; $4ef3: $39
	ld b, h                                          ; $4ef4: $44
	ld c, h                                          ; $4ef5: $4c
	xor b                                            ; $4ef6: $a8
	ld [hl-], a                                      ; $4ef7: $32
	ldh a, [$30]                                     ; $4ef8: $f0 $30
	ldh a, [$28]                                     ; $4efa: $f0 $28
	ld c, e                                          ; $4efc: $4b
	pop af                                           ; $4efd: $f1
	dec d                                            ; $4efe: $15
	ld c, l                                          ; $4eff: $4d
	ld h, c                                          ; $4f00: $61
	ld d, [hl]                                       ; $4f01: $56
	dec sp                                           ; $4f02: $3b
	dec a                                            ; $4f03: $3d
	ld e, l                                          ; $4f04: $5d
	ld e, d                                          ; $4f05: $5a
	and e                                            ; $4f06: $a3
	db $eb                                           ; $4f07: $eb
	rst JumpTable                                          ; $4f08: $c7
	ld c, d                                          ; $4f09: $4a
	ld e, h                                          ; $4f0a: $5c
	ld c, [hl]                                       ; $4f0b: $4e
	ld c, c                                          ; $4f0c: $49
	inc de                                           ; $4f0d: $13
	jr c, @+$3a                                      ; $4f0e: $38 $38

	ld a, [hl-]                                      ; $4f10: $3a
	ld [hl], h                                       ; $4f11: $74
	ld c, b                                          ; $4f12: $48
	and b                                            ; $4f13: $a0
	sub b                                            ; $4f14: $90
	ld a, $6c                                        ; $4f15: $3e $6c
	ld c, h                                          ; $4f17: $4c
	and b                                            ; $4f18: $a0
	db $eb                                           ; $4f19: $eb
	ld d, c                                          ; $4f1a: $51
	xor h                                            ; $4f1b: $ac
	ld c, a                                          ; $4f1c: $4f
	add hl, sp                                       ; $4f1d: $39
	ld d, c                                          ; $4f1e: $51
	sbc l                                            ; $4f1f: $9d
	pop af                                           ; $4f20: $f1
	jp nc, $8ff0                                     ; $4f21: $d2 $f0 $8f

	ld l, h                                          ; $4f24: $6c
	ld c, h                                          ; $4f25: $4c
	xor b                                            ; $4f26: $a8
	ld l, e                                          ; $4f27: $6b
	inc a                                            ; $4f28: $3c
	ldh a, [$cc]                                     ; $4f29: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $4f2b: $f0 $88
	ld c, e                                          ; $4f2d: $4b
	ld b, [hl]                                       ; $4f2e: $46
	ld c, [hl]                                       ; $4f2f: $4e
	ld b, d                                          ; $4f30: $42
	and c                                            ; $4f31: $a1
	cpl                                              ; $4f32: $2f
	ld b, e                                          ; $4f33: $43
	ld b, c                                          ; $4f34: $41
	ld e, c                                          ; $4f35: $59
	ld [hl], $23                                     ; $4f36: $36 $23
	inc de                                           ; $4f38: $13
	ldh a, [$b6]                                     ; $4f39: $f0 $b6
	ld b, a                                          ; $4f3b: $47
	ldh a, [rAUD1LOW]                                ; $4f3c: $f0 $13
	jr c, jr_095_4f7a                                ; $4f3e: $38 $3a

	ld [hl], h                                       ; $4f40: $74
	xor b                                            ; $4f41: $a8
	db $ed                                           ; $4f42: $ed
	xor c                                            ; $4f43: $a9
	ld c, e                                          ; $4f44: $4b
	and c                                            ; $4f45: $a1
	call c, Call_095_6fad                            ; $4f46: $dc $ad $6f
	ld c, e                                          ; $4f49: $4b
	ldh a, [hDisp1_SCY]                                     ; $4f4a: $f0 $90
	ldh a, [$cb]                                     ; $4f4c: $f0 $cb
	ld b, a                                          ; $4f4e: $47
	ld c, d                                          ; $4f4f: $4a
	ld c, a                                          ; $4f50: $4f
	db $eb                                           ; $4f51: $eb
	adc e                                            ; $4f52: $8b
	and b                                            ; $4f53: $a0
	cpl                                              ; $4f54: $2f
	ld b, e                                          ; $4f55: $43
	ldh a, [hDisp1_SCY]                                     ; $4f56: $f0 $90
	ldh a, [$cb]                                     ; $4f58: $f0 $cb
	inc a                                            ; $4f5a: $3c
	xor l                                            ; $4f5b: $ad
	ld b, b                                          ; $4f5c: $40
	ld c, l                                          ; $4f5d: $4d
	ld c, a                                          ; $4f5e: $4f
	jr c, jr_095_4f99                                ; $4f5f: $38 $38

	ld a, [hl-]                                      ; $4f61: $3a
	ld c, b                                          ; $4f62: $48
	and b                                            ; $4f63: $a0
	db $eb                                           ; $4f64: $eb
	ld d, c                                          ; $4f65: $51
	xor h                                            ; $4f66: $ac
	ld c, a                                          ; $4f67: $4f
	add hl, sp                                       ; $4f68: $39
	ld d, c                                          ; $4f69: $51
	sbc l                                            ; $4f6a: $9d
	ldh a, [c]                                       ; $4f6b: $f2
	dec sp                                           ; $4f6c: $3b
	ldh a, [hDisp1_LCDC]                                     ; $4f6d: $f0 $8f
	ld l, h                                          ; $4f6f: $6c
	ld c, h                                          ; $4f70: $4c
	xor b                                            ; $4f71: $a8
	ld l, e                                          ; $4f72: $6b
	inc a                                            ; $4f73: $3c
	ldh a, [$cc]                                     ; $4f74: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $4f76: $f0 $88
	ld c, e                                          ; $4f78: $4b
	ld b, [hl]                                       ; $4f79: $46

jr_095_4f7a:
	ld c, [hl]                                       ; $4f7a: $4e
	ld b, d                                          ; $4f7b: $42
	and c                                            ; $4f7c: $a1
	cpl                                              ; $4f7d: $2f
	ld b, e                                          ; $4f7e: $43
	ld b, c                                          ; $4f7f: $41
	ld e, c                                          ; $4f80: $59
	ld [hl], $23                                     ; $4f81: $36 $23
	ldh a, [$b6]                                     ; $4f83: $f0 $b6
	ld b, a                                          ; $4f85: $47
	ldh a, [rAUD1LOW]                                ; $4f86: $f0 $13
	jr c, jr_095_4fc4                                ; $4f88: $38 $3a

	ld [hl], h                                       ; $4f8a: $74
	xor b                                            ; $4f8b: $a8
	db $ed                                           ; $4f8c: $ed
	xor c                                            ; $4f8d: $a9
	ld c, e                                          ; $4f8e: $4b
	and c                                            ; $4f8f: $a1
	ld l, a                                          ; $4f90: $6f
	ld c, e                                          ; $4f91: $4b
	inc [hl]                                         ; $4f92: $34
	add e                                            ; $4f93: $83
	ldh a, [$2f]                                     ; $4f94: $f0 $2f
	ld e, c                                          ; $4f96: $59
	ld b, a                                          ; $4f97: $47
	ld c, d                                          ; $4f98: $4a

jr_095_4f99:
	ld c, a                                          ; $4f99: $4f
	inc de                                           ; $4f9a: $13
	db $ec                                           ; $4f9b: $ec
	rlca                                             ; $4f9c: $07
	ld c, c                                          ; $4f9d: $49
	ld [hl], a                                       ; $4f9e: $77
	dec sp                                           ; $4f9f: $3b
	ccf                                              ; $4fa0: $3f
	and b                                            ; $4fa1: $a0
	cpl                                              ; $4fa2: $2f
	ld b, e                                          ; $4fa3: $43
	add e                                            ; $4fa4: $83
	ldh a, [$2f]                                     ; $4fa5: $f0 $2f
	ld e, c                                          ; $4fa7: $59
	inc a                                            ; $4fa8: $3c
	xor l                                            ; $4fa9: $ad
	ld b, b                                          ; $4faa: $40
	ld c, l                                          ; $4fab: $4d
	ld c, a                                          ; $4fac: $4f
	jr c, jr_095_4fe7                                ; $4fad: $38 $38

	ld a, [hl-]                                      ; $4faf: $3a
	ld c, b                                          ; $4fb0: $48
	and b                                            ; $4fb1: $a0
	db $eb                                           ; $4fb2: $eb
	ld d, c                                          ; $4fb3: $51
	xor h                                            ; $4fb4: $ac
	ld c, a                                          ; $4fb5: $4f
	add hl, sp                                       ; $4fb6: $39
	ld d, c                                          ; $4fb7: $51
	sbc l                                            ; $4fb8: $9d
	pop af                                           ; $4fb9: $f1
	sbc d                                            ; $4fba: $9a
	ldh a, [hDisp1_LCDC]                                     ; $4fbb: $f0 $8f
	ld l, h                                          ; $4fbd: $6c
	ld c, h                                          ; $4fbe: $4c
	xor b                                            ; $4fbf: $a8
	ld l, e                                          ; $4fc0: $6b
	inc a                                            ; $4fc1: $3c
	ldh a, [$cc]                                     ; $4fc2: $f0 $cc

jr_095_4fc4:
	ldh a, [hDisp0_WY]                                     ; $4fc4: $f0 $88
	ld c, e                                          ; $4fc6: $4b
	ld b, [hl]                                       ; $4fc7: $46
	ld c, [hl]                                       ; $4fc8: $4e
	ld b, d                                          ; $4fc9: $42

jr_095_4fca:
	and c                                            ; $4fca: $a1
	ld l, a                                          ; $4fcb: $6f
	ld c, a                                          ; $4fcc: $4f
	inc [hl]                                         ; $4fcd: $34
	ldh a, [$b6]                                     ; $4fce: $f0 $b6
	ld b, a                                          ; $4fd0: $47
	db $ec                                           ; $4fd1: $ec
	dec bc                                           ; $4fd2: $0b
	and b                                            ; $4fd3: $a0
	cpl                                              ; $4fd4: $2f
	ld b, e                                          ; $4fd5: $43
	ldh a, [c]                                       ; $4fd6: $f2
	sub l                                            ; $4fd7: $95
	jr c, jr_095_4fca                                ; $4fd8: $38 $f0

	adc a                                            ; $4fda: $8f
	ld l, h                                          ; $4fdb: $6c
	ld b, h                                          ; $4fdc: $44
	inc a                                            ; $4fdd: $3c
	ld d, b                                          ; $4fde: $50
	ld c, h                                          ; $4fdf: $4c
	and b                                            ; $4fe0: $a0
	db $eb                                           ; $4fe1: $eb
	ld d, c                                          ; $4fe2: $51
	xor h                                            ; $4fe3: $ac
	ld c, a                                          ; $4fe4: $4f
	add hl, sp                                       ; $4fe5: $39
	ld d, c                                          ; $4fe6: $51

jr_095_4fe7:
	sbc l                                            ; $4fe7: $9d
	ldh a, [$58]                                     ; $4fe8: $f0 $58
	ldh a, [rAUD1HIGH]                               ; $4fea: $f0 $14
	ldh a, [rTIMA]                                   ; $4fec: $f0 $05
	ld c, h                                          ; $4fee: $4c
	and b                                            ; $4fef: $a0
	cpl                                              ; $4ff0: $2f
	ld b, e                                          ; $4ff1: $43
	ldh a, [$0a]                                     ; $4ff2: $f0 $0a
	jr c, jr_095_503b                                ; $4ff4: $38 $45

	ld c, h                                          ; $4ff6: $4c
	xor h                                            ; $4ff7: $ac
	ld c, a                                          ; $4ff8: $4f
	add hl, sp                                       ; $4ff9: $39
	ldh a, [$58]                                     ; $4ffa: $f0 $58
	ldh a, [rAUD1HIGH]                               ; $4ffc: $f0 $14
	ldh a, [rTIMA]                                   ; $4ffe: $f0 $05
	inc a                                            ; $5000: $3c
	ld c, b                                          ; $5001: $48
	and b                                            ; $5002: $a0
	ldh a, [$d7]                                     ; $5003: $f0 $d7
	ldh a, [c]                                       ; $5005: $f2
	inc bc                                           ; $5006: $03
	ld d, e                                          ; $5007: $53
	ld c, d                                          ; $5008: $4a
	ld e, h                                          ; $5009: $5c
	ld c, [hl]                                       ; $500a: $4e
	ld b, c                                          ; $500b: $41
	ld b, h                                          ; $500c: $44
	inc a                                            ; $500d: $3c
	ld d, b                                          ; $500e: $50
	xor h                                            ; $500f: $ac
	sub d                                            ; $5010: $92
	adc [hl]                                         ; $5011: $8e
	ld d, b                                          ; $5012: $50
	ld a, [hl-]                                      ; $5013: $3a
	ld d, l                                          ; $5014: $55
	dec sp                                           ; $5015: $3b
	ld h, c                                          ; $5016: $61
	ld d, [hl]                                       ; $5017: $56
	and b                                            ; $5018: $a0
	db $eb                                           ; $5019: $eb
	ld d, c                                          ; $501a: $51
	xor h                                            ; $501b: $ac
	ld c, a                                          ; $501c: $4f
	add hl, sp                                       ; $501d: $39
	ld d, c                                          ; $501e: $51
	sbc l                                            ; $501f: $9d
	ldh a, [$e5]                                     ; $5020: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $5022: $f0 $14
	ldh a, [rTIMA]                                   ; $5024: $f0 $05
	ld c, h                                          ; $5026: $4c
	and b                                            ; $5027: $a0
	cpl                                              ; $5028: $2f
	ld b, e                                          ; $5029: $43
	ldh a, [$0a]                                     ; $502a: $f0 $0a
	jr c, jr_095_5073                                ; $502c: $38 $45

	ld c, h                                          ; $502e: $4c
	xor h                                            ; $502f: $ac
	ld c, a                                          ; $5030: $4f
	add hl, sp                                       ; $5031: $39
	ldh a, [$e5]                                     ; $5032: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $5034: $f0 $14
	ldh a, [rTIMA]                                   ; $5036: $f0 $05
	inc a                                            ; $5038: $3c
	ld c, b                                          ; $5039: $48
	and b                                            ; $503a: $a0

jr_095_503b:
	pop af                                           ; $503b: $f1
	ld c, d                                          ; $503c: $4a
	ldh a, [$ad]                                     ; $503d: $f0 $ad
	ld b, d                                          ; $503f: $42
	pop af                                           ; $5040: $f1
	ld a, c                                          ; $5041: $79
	pop af                                           ; $5042: $f1
	ld h, d                                          ; $5043: $62
	ld h, d                                          ; $5044: $62
	inc de                                           ; $5045: $13
	ld a, $3a                                        ; $5046: $3e $3a
	ld d, l                                          ; $5048: $55
	ld h, c                                          ; $5049: $61
	ld d, [hl]                                       ; $504a: $56
	ld c, h                                          ; $504b: $4c
	xor b                                            ; $504c: $a8
	ld c, a                                          ; $504d: $4f
	add hl, sp                                       ; $504e: $39
	ld b, d                                          ; $504f: $42
	ld b, c                                          ; $5050: $41
	ldh a, [rKEY1]                                   ; $5051: $f0 $4d
	ld d, a                                          ; $5053: $57
	ld c, a                                          ; $5054: $4f
	ld a, $3f                                        ; $5055: $3e $3f
	ld d, b                                          ; $5057: $50
	ld c, l                                          ; $5058: $4d
	ld a, [hl-]                                      ; $5059: $3a
	jr c, jr_095_50a8                                ; $505a: $38 $4c

	and b                                            ; $505c: $a0
	db $eb                                           ; $505d: $eb
	ld d, c                                          ; $505e: $51
	xor h                                            ; $505f: $ac
	ld c, a                                          ; $5060: $4f
	add hl, sp                                       ; $5061: $39
	ld d, c                                          ; $5062: $51
	sbc l                                            ; $5063: $9d
	db $ed                                           ; $5064: $ed
	ld a, c                                          ; $5065: $79
	ld c, h                                          ; $5066: $4c
	and b                                            ; $5067: $a0
	cpl                                              ; $5068: $2f
	ld b, e                                          ; $5069: $43
	ldh a, [$0a]                                     ; $506a: $f0 $0a
	jr c, jr_095_50b3                                ; $506c: $38 $45

	ld c, h                                          ; $506e: $4c
	xor h                                            ; $506f: $ac
	ld c, a                                          ; $5070: $4f
	add hl, sp                                       ; $5071: $39
	db $ed                                           ; $5072: $ed

jr_095_5073:
	ld a, c                                          ; $5073: $79
	inc a                                            ; $5074: $3c
	ld c, b                                          ; $5075: $48
	and b                                            ; $5076: $a0
	ld c, a                                          ; $5077: $4f
	add hl, sp                                       ; $5078: $39
	inc [hl]                                         ; $5079: $34
	ldh a, [rAUD1ENV]                                ; $507a: $f0 $12
	sbc a                                            ; $507c: $9f
	ldh a, [rTIMA]                                   ; $507d: $f0 $05
	pop af                                           ; $507f: $f1
	rrca                                             ; $5080: $0f
	ld c, c                                          ; $5081: $49
	ld c, a                                          ; $5082: $4f
	inc de                                           ; $5083: $13
	ld h, h                                          ; $5084: $64
	ldh a, [$34]                                     ; $5085: $f0 $34
	ld c, l                                          ; $5087: $4d
	ld c, h                                          ; $5088: $4c
	and b                                            ; $5089: $a0
	ld c, a                                          ; $508a: $4f
	add hl, sp                                       ; $508b: $39
	ld d, c                                          ; $508c: $51
	sbc l                                            ; $508d: $9d
	ld l, d                                          ; $508e: $6a
	ldh a, [rAUD1HIGH]                               ; $508f: $f0 $14
	ld c, a                                          ; $5091: $4f
	inc de                                           ; $5092: $13
	ldh a, [$ce]                                     ; $5093: $f0 $ce
	ld h, e                                          ; $5095: $63
	ld d, a                                          ; $5096: $57
	ld c, h                                          ; $5097: $4c
	xor b                                            ; $5098: $a8
	ld a, b                                          ; $5099: $78
	ldh a, [rAUD1HIGH]                               ; $509a: $f0 $14
	ld b, d                                          ; $509c: $42
	ldh a, [c]                                       ; $509d: $f2
	sub [hl]                                         ; $509e: $96
	ldh a, [$e4]                                     ; $509f: $f0 $e4
	ld c, e                                          ; $50a1: $4b
	inc [hl]                                         ; $50a2: $34
	ld c, a                                          ; $50a3: $4f
	add hl, sp                                       ; $50a4: $39
	ldh a, [$ec]                                     ; $50a5: $f0 $ec
	ld [hl], c                                       ; $50a7: $71

jr_095_50a8:
	dec a                                            ; $50a8: $3d
	and c                                            ; $50a9: $a1
	cpl                                              ; $50aa: $2f
	ld b, e                                          ; $50ab: $43
	ld d, d                                          ; $50ac: $52
	inc [hl]                                         ; $50ad: $34
	ld d, d                                          ; $50ae: $52
	ld [hl], h                                       ; $50af: $74
	inc [hl]                                         ; $50b0: $34
	pop af                                           ; $50b1: $f1
	ld l, [hl]                                       ; $50b2: $6e

jr_095_50b3:
	ldh a, [$cf]                                     ; $50b3: $f0 $cf
	ld c, c                                          ; $50b5: $49
	ld c, h                                          ; $50b6: $4c
	and b                                            ; $50b7: $a0
	ld b, b                                          ; $50b8: $40
	add hl, sp                                       ; $50b9: $39
	xor b                                            ; $50ba: $a8
	ld a, b                                          ; $50bb: $78
	ldh a, [rAUD1HIGH]                               ; $50bc: $f0 $14
	ld c, a                                          ; $50be: $4f
	inc [hl]                                         ; $50bf: $34
	jr c, jr_095_50fa                                ; $50c0: $38 $38

	ldh a, [rAUD1HIGH]                               ; $50c2: $f0 $14
	ld b, h                                          ; $50c4: $44
	ld c, c                                          ; $50c5: $49
	jr c, jr_095_5100                                ; $50c6: $38 $38

	ld c, h                                          ; $50c8: $4c
	and b                                            ; $50c9: $a0
	ld b, b                                          ; $50ca: $40
	add hl, sp                                       ; $50cb: $39
	ld b, h                                          ; $50cc: $44
	inc [hl]                                         ; $50cd: $34
	ldh a, [$f4]                                     ; $50ce: $f0 $f4
	ld e, [hl]                                       ; $50d0: $5e
	ccf                                              ; $50d1: $3f
	ld c, [hl]                                       ; $50d2: $4e
	xor c                                            ; $50d3: $a9
	ld c, a                                          ; $50d4: $4f
	add hl, sp                                       ; $50d5: $39
	ld d, c                                          ; $50d6: $51
	sbc l                                            ; $50d7: $9d
	ld l, a                                          ; $50d8: $6f
	db $ec                                           ; $50d9: $ec
	inc h                                            ; $50da: $24
	ld b, l                                          ; $50db: $45
	and b                                            ; $50dc: $a0

jr_095_50dd:
	cpl                                              ; $50dd: $2f
	ld b, e                                          ; $50de: $43
	ld b, b                                          ; $50df: $40
	add hl, sp                                       ; $50e0: $39
	ld b, h                                          ; $50e1: $44
	ld c, h                                          ; $50e2: $4c
	xor b                                            ; $50e3: $a8
	ld h, c                                          ; $50e4: $61
	ld d, [hl]                                       ; $50e5: $56
	ld b, c                                          ; $50e6: $41
	ld c, c                                          ; $50e7: $49
	ldh a, [$f4]                                     ; $50e8: $f0 $f4
	ld e, [hl]                                       ; $50ea: $5e
	ccf                                              ; $50eb: $3f
	ld c, [hl]                                       ; $50ec: $4e
	ld b, l                                          ; $50ed: $45
	and b                                            ; $50ee: $a0
	adc b                                            ; $50ef: $88
	sub c                                            ; $50f0: $91
	xor c                                            ; $50f1: $a9
	ldh a, [$29]                                     ; $50f2: $f0 $29
	ld a, $38                                        ; $50f4: $3e $38
	ld a, [hl-]                                      ; $50f6: $3a
	and b                                            ; $50f7: $a0
	cpl                                              ; $50f8: $2f
	ld b, e                                          ; $50f9: $43

jr_095_50fa:
	db $ec                                           ; $50fa: $ec
	rst SubAFromDE                                          ; $50fb: $df
	inc [hl]                                         ; $50fc: $34
	db $eb                                           ; $50fd: $eb
	rst FarCall                                          ; $50fe: $f7
	and c                                            ; $50ff: $a1

jr_095_5100:
	xor $1e                                          ; $5100: $ee $1e
	xor l                                            ; $5102: $ad
	xor $06                                          ; $5103: $ee $06
	ld b, a                                          ; $5105: $47
	ld a, d                                          ; $5106: $7a
	ld e, a                                          ; $5107: $5f
	add hl, sp                                       ; $5108: $39
	ld c, c                                          ; $5109: $49
	inc de                                           ; $510a: $13
	ld [hl], a                                       ; $510b: $77
	jr c, jr_095_5160                                ; $510c: $38 $52

	ld a, $3f                                        ; $510e: $3e $3f
	ld c, b                                          ; $5110: $48
	and b                                            ; $5111: $a0
	db $ec                                           ; $5112: $ec
	cp c                                             ; $5113: $b9
	xor b                                            ; $5114: $a8
	jp z, $b034                                      ; $5115: $ca $34 $b0

	and b                                            ; $5118: $a0
	cp [hl]                                          ; $5119: $be
	xor l                                            ; $511a: $ad
	db $eb                                           ; $511b: $eb
	ccf                                              ; $511c: $3f
	xor b                                            ; $511d: $a8
	xor $08                                          ; $511e: $ee $08
	ld c, d                                          ; $5120: $4a
	ld a, d                                          ; $5121: $7a
	ld d, a                                          ; $5122: $57
	ld d, d                                          ; $5123: $52
	ld d, c                                          ; $5124: $51
	ld c, b                                          ; $5125: $48
	and b                                            ; $5126: $a0
	ld b, [hl]                                       ; $5127: $46
	dec sp                                           ; $5128: $3b
	inc [hl]                                         ; $5129: $34
	ld d, $a8                                        ; $512a: $16 $a8
	ld l, d                                          ; $512c: $6a
	ld a, d                                          ; $512d: $7a
	ld d, a                                          ; $512e: $57
	ld c, d                                          ; $512f: $4a
	ld d, c                                          ; $5130: $51
	inc a                                            ; $5131: $3c
	and c                                            ; $5132: $a1
	cpl                                              ; $5133: $2f
	xor $06                                          ; $5134: $ee $06
	ld b, a                                          ; $5136: $47
	ld a, d                                          ; $5137: $7a
	ld d, b                                          ; $5138: $50
	ld a, [hl-]                                      ; $5139: $3a
	jr c, jr_095_50dd                                ; $513a: $38 $a1

	or [hl]                                          ; $513c: $b6
	xor l                                            ; $513d: $ad
	xor $06                                          ; $513e: $ee $06
	ld b, a                                          ; $5140: $47
	or b                                             ; $5141: $b0
	and b                                            ; $5142: $a0
	db $eb                                           ; $5143: $eb
	xor b                                            ; $5144: $a8
	and b                                            ; $5145: $a0
	xor $06                                          ; $5146: $ee $06
	ld b, a                                          ; $5148: $47
	ld a, d                                          ; $5149: $7a

Call_095_514a:
	ld c, [hl]                                       ; $514a: $4e
	ld b, d                                          ; $514b: $42
	ld c, e                                          ; $514c: $4b
	inc de                                           ; $514d: $13
	db $eb                                           ; $514e: $eb
	ld c, a                                          ; $514f: $4f
	ld c, d                                          ; $5150: $4a
	ld d, c                                          ; $5151: $51
	ld c, h                                          ; $5152: $4c

Call_095_5153:
	ld c, b                                          ; $5153: $48
	and b                                            ; $5154: $a0
	db $eb                                           ; $5155: $eb
	ccf                                              ; $5156: $3f
	xor b                                            ; $5157: $a8
	db $eb                                           ; $5158: $eb
	xor b                                            ; $5159: $a8
	and b                                            ; $515a: $a0
	cpl                                              ; $515b: $2f
	ld [hl-], a                                      ; $515c: $32
	halt                                             ; $515d: $76
	ld c, e                                          ; $515e: $4b
	db $ec                                           ; $515f: $ec

jr_095_5160:
	rst SubAFromDE                                          ; $5160: $df
	ld c, c                                          ; $5161: $49
	xor h                                            ; $5162: $ac
	ld [$a32a], a                                    ; $5163: $ea $2a $a3
	cpl                                              ; $5166: $2f
	ld hl, $3286                                     ; $5167: $21 $86 $32
	ld c, c                                          ; $516a: $49
	inc [hl]                                         ; $516b: $34
	add d                                            ; $516c: $82
	add hl, sp                                       ; $516d: $39
	ld b, l                                          ; $516e: $45
	add hl, sp                                       ; $516f: $39
	ld a, [hl-]                                      ; $5170: $3a
	ld d, h                                          ; $5171: $54
	ld c, c                                          ; $5172: $49
	ld h, d                                          ; $5173: $62
	inc de                                           ; $5174: $13
	ldh a, [rAUDVOL]                                 ; $5175: $f0 $24
	ld a, $3a                                        ; $5177: $3e $3a
	ld d, e                                          ; $5179: $53
	ld d, b                                          ; $517a: $50
	ldh a, [$a3]                                     ; $517b: $f0 $a3
	sbc a                                            ; $517d: $9f
	ld a, $3d                                        ; $517e: $3e $3d
	and e                                            ; $5180: $a3
	db $eb                                           ; $5181: $eb
	ld d, c                                          ; $5182: $51
	xor h                                            ; $5183: $ac
	ld [$4aa3], a                                    ; $5184: $ea $a3 $4a
	ld d, c                                          ; $5187: $51
	ld c, h                                          ; $5188: $4c
	xor b                                            ; $5189: $a8
	ld e, d                                          ; $518a: $5a
	add hl, sp                                       ; $518b: $39
	ld c, d                                          ; $518c: $4a
	ld d, c                                          ; $518d: $51
	inc a                                            ; $518e: $3c
	and c                                            ; $518f: $a1
	db $ec                                           ; $5190: $ec
	pop af                                           ; $5191: $f1
	ld c, d                                          ; $5192: $4a
	db $ec                                           ; $5193: $ec
	ld c, e                                          ; $5194: $4b
	ld c, c                                          ; $5195: $49
	inc de                                           ; $5196: $13
	ld c, c                                          ; $5197: $49
	ccf                                              ; $5198: $3f
	ld c, a                                          ; $5199: $4f
	db $ec                                           ; $519a: $ec
	sbc b                                            ; $519b: $98
	ld d, d                                          ; $519c: $52
	ld d, c                                          ; $519d: $51
	ld b, l                                          ; $519e: $45
	and b                                            ; $519f: $a0
	cpl                                              ; $51a0: $2f
	ld b, e                                          ; $51a1: $43
	ret nz                                           ; $51a2: $c0

	xor b                                            ; $51a3: $a8
	ld l, d                                          ; $51a4: $6a
	ldh a, [$0d]                                     ; $51a5: $f0 $0d
	ld l, [hl]                                       ; $51a7: $6e
	dec sp                                           ; $51a8: $3b
	ccf                                              ; $51a9: $3f
	ld l, h                                          ; $51aa: $6c
	ld b, l                                          ; $51ab: $45
	add hl, sp                                       ; $51ac: $39
	inc a                                            ; $51ad: $3c
	ld a, [hl-]                                      ; $51ae: $3a
	and b                                            ; $51af: $a0
	db $eb                                           ; $51b0: $eb
	ld d, c                                          ; $51b1: $51
	xor h                                            ; $51b2: $ac
	ld c, a                                          ; $51b3: $4f
	add hl, sp                                       ; $51b4: $39
	ld d, c                                          ; $51b5: $51
	sbc l                                            ; $51b6: $9d
	db $ec                                           ; $51b7: $ec
	ld c, l                                          ; $51b8: $4d
	ld d, c                                          ; $51b9: $51
	ld c, h                                          ; $51ba: $4c
	and b                                            ; $51bb: $a0
	db $ec                                           ; $51bc: $ec
	cp c                                             ; $51bd: $b9
	ld d, b                                          ; $51be: $50
	xor h                                            ; $51bf: $ac
	adc a                                            ; $51c0: $8f
	ld b, d                                          ; $51c1: $42
	ldh a, [$38]                                     ; $51c2: $f0 $38
	ld b, a                                          ; $51c4: $47
	ldh a, [$b2]                                     ; $51c5: $f0 $b2
	ldh a, [rKEY1]                                   ; $51c7: $f0 $4d
	ld b, a                                          ; $51c9: $47
	inc de                                           ; $51ca: $13
	ld a, b                                          ; $51cb: $78
	ccf                                              ; $51cc: $3f
	ld d, l                                          ; $51cd: $55
	ld b, h                                          ; $51ce: $44
	ld e, b                                          ; $51cf: $58
	jr c, @+$4e                                      ; $51d0: $38 $4c

	and b                                            ; $51d2: $a0
	db $eb                                           ; $51d3: $eb
	ld d, c                                          ; $51d4: $51
	xor h                                            ; $51d5: $ac
	ld c, a                                          ; $51d6: $4f
	add hl, sp                                       ; $51d7: $39
	ld d, c                                          ; $51d8: $51
	sbc l                                            ; $51d9: $9d
	db $ed                                           ; $51da: $ed
	sbc l                                            ; $51db: $9d
	pop af                                           ; $51dc: $f1
	inc e                                            ; $51dd: $1c
	ld c, d                                          ; $51de: $4a
	ld d, c                                          ; $51df: $51
	ld c, h                                          ; $51e0: $4c
	and b                                            ; $51e1: $a0
	ld l, a                                          ; $51e2: $6f
	inc [hl]                                         ; $51e3: $34
	db $ed                                           ; $51e4: $ed
	add [hl]                                         ; $51e5: $86
	ld c, e                                          ; $51e6: $4b
	inc de                                           ; $51e7: $13
	db $ed                                           ; $51e8: $ed
	ld l, b                                          ; $51e9: $68
	ld c, d                                          ; $51ea: $4a
	ld d, c                                          ; $51eb: $51
	inc a                                            ; $51ec: $3c
	ld d, b                                          ; $51ed: $50
	ld c, b                                          ; $51ee: $48
	dec [hl]                                         ; $51ef: $35
	inc hl                                           ; $51f0: $23
	inc de                                           ; $51f1: $13
	ret                                              ; $51f2: $c9


	ldh a, [$b5]                                     ; $51f3: $f0 $b5
	add hl, sp                                       ; $51f5: $39
	add hl, sp                                       ; $51f6: $39
	add b                                            ; $51f7: $80
	ld c, d                                          ; $51f8: $4a
	ld d, c                                          ; $51f9: $51
	and b                                            ; $51fa: $a0
	cpl                                              ; $51fb: $2f
	ld b, e                                          ; $51fc: $43
	ret nz                                           ; $51fd: $c0

	xor b                                            ; $51fe: $a8
	ld c, d                                          ; $51ff: $4a
	ld c, a                                          ; $5200: $4f
	inc [hl]                                         ; $5201: $34
	pop af                                           ; $5202: $f1
	rra                                              ; $5203: $1f
	ld a, a                                          ; $5204: $7f
	ld b, h                                          ; $5205: $44
	ld a, $3f                                        ; $5206: $3e $3f
	ld b, l                                          ; $5208: $45
	and b                                            ; $5209: $a0
	jp hl                                            ; $520a: $e9


	inc d                                            ; $520b: $14
	xor b                                            ; $520c: $a8
	ldh a, [$4e]                                     ; $520d: $f0 $4e
	ld a, $38                                        ; $520f: $3e $38
	ld c, d                                          ; $5211: $4a
	ld d, c                                          ; $5212: $51
	ld c, h                                          ; $5213: $4c
	and b                                            ; $5214: $a0
	db $eb                                           ; $5215: $eb
	ld d, c                                          ; $5216: $51
	xor h                                            ; $5217: $ac
	ld c, a                                          ; $5218: $4f
	add hl, sp                                       ; $5219: $39
	ld d, c                                          ; $521a: $51
	sbc l                                            ; $521b: $9d
	db $ec                                           ; $521c: $ec
	call nz, Call_095_514a                           ; $521d: $c4 $4a $51
	ld c, h                                          ; $5220: $4c
	and b                                            ; $5221: $a0
	db $eb                                           ; $5222: $eb
	rst JumpTable                                          ; $5223: $c7
	inc de                                           ; $5224: $13
	ld c, d                                          ; $5225: $4a
	ld e, h                                          ; $5226: $5c
	ld c, [hl]                                       ; $5227: $4e
	ld c, c                                          ; $5228: $49
	jr c, jr_095_5263                                ; $5229: $38 $38

	ld c, d                                          ; $522b: $4a
	ld d, c                                          ; $522c: $51
	ld c, h                                          ; $522d: $4c
	ld c, b                                          ; $522e: $48
	and b                                            ; $522f: $a0
	sub b                                            ; $5230: $90
	ld a, $6c                                        ; $5231: $3e $6c
	ld c, d                                          ; $5233: $4a
	ld d, c                                          ; $5234: $51
	ld c, h                                          ; $5235: $4c
	and b                                            ; $5236: $a0
	cpl                                              ; $5237: $2f
	ld b, e                                          ; $5238: $43
	xor $1f                                          ; $5239: $ee $1f
	inc [hl]                                         ; $523b: $34
	sub b                                            ; $523c: $90
	ld a, $6c                                        ; $523d: $3e $6c
	ld b, h                                          ; $523f: $44
	ld c, h                                          ; $5240: $4c
	and b                                            ; $5241: $a0
	db $eb                                           ; $5242: $eb
	ld d, c                                          ; $5243: $51
	xor h                                            ; $5244: $ac
	ld c, a                                          ; $5245: $4f
	add hl, sp                                       ; $5246: $39
	ld d, c                                          ; $5247: $51
	sbc l                                            ; $5248: $9d
	pop af                                           ; $5249: $f1

Jump_095_524a:
	jp nc, $8ff0                                     ; $524a: $d2 $f0 $8f

	ld l, h                                          ; $524d: $6c
	ld c, d                                          ; $524e: $4a
	ld d, c                                          ; $524f: $51
	ld c, h                                          ; $5250: $4c
	xor b                                            ; $5251: $a8
	ld l, e                                          ; $5252: $6b
	inc a                                            ; $5253: $3c
	ldh a, [$cc]                                     ; $5254: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $5256: $f0 $88
	ld c, e                                          ; $5258: $4b
	ld b, [hl]                                       ; $5259: $46
	ld d, a                                          ; $525a: $57
	ld d, d                                          ; $525b: $52
	ld d, c                                          ; $525c: $51
	inc a                                            ; $525d: $3c
	and c                                            ; $525e: $a1
	cpl                                              ; $525f: $2f
	ld b, e                                          ; $5260: $43
	ld b, c                                          ; $5261: $41
	ld e, c                                          ; $5262: $59

jr_095_5263:
	ld [hl], $23                                     ; $5263: $36 $23
	inc de                                           ; $5265: $13
	ldh a, [$b6]                                     ; $5266: $f0 $b6
	ld b, a                                          ; $5268: $47
	ldh a, [rAUD1LOW]                                ; $5269: $f0 $13
	jr c, jr_095_52a7                                ; $526b: $38 $3a

	ld [hl], h                                       ; $526d: $74
	xor b                                            ; $526e: $a8
	db $ec                                           ; $526f: $ec
	rst SubAFromDE                                          ; $5270: $df
	ld c, e                                          ; $5271: $4b
	and c                                            ; $5272: $a1
	ld l, a                                          ; $5273: $6f
	inc [hl]                                         ; $5274: $34
	pop af                                           ; $5275: $f1
	jp nc, $134b                                     ; $5276: $d2 $4b $13

	db $ed                                           ; $5279: $ed
	ld l, b                                          ; $527a: $68
	ld c, d                                          ; $527b: $4a
	ld d, c                                          ; $527c: $51
	inc a                                            ; $527d: $3c
	ld d, b                                          ; $527e: $50
	xor h                                            ; $527f: $ac
	db $ec                                           ; $5280: $ec
	pop af                                           ; $5281: $f1
	ld b, a                                          ; $5282: $47
	ld c, d                                          ; $5283: $4a
	ld c, a                                          ; $5284: $4f
	ld h, a                                          ; $5285: $67
	ld d, h                                          ; $5286: $54
	add hl, sp                                       ; $5287: $39
	ld c, c                                          ; $5288: $49
	inc de                                           ; $5289: $13
	ld [hl], a                                       ; $528a: $77
	dec sp                                           ; $528b: $3b
	ccf                                              ; $528c: $3f
	ld d, d                                          ; $528d: $52
	ld d, c                                          ; $528e: $51
	and b                                            ; $528f: $a0
	cpl                                              ; $5290: $2f
	ld b, e                                          ; $5291: $43
	db $ec                                           ; $5292: $ec
	pop af                                           ; $5293: $f1
	inc a                                            ; $5294: $3c
	xor h                                            ; $5295: $ac
	ldh a, [c]                                       ; $5296: $f2
	rst FarCall                                          ; $5297: $f7
	ld a, $38                                        ; $5298: $3e $38
	ld c, a                                          ; $529a: $4f
	ld b, c                                          ; $529b: $41
	ld a, [hl-]                                      ; $529c: $3a
	ld c, b                                          ; $529d: $48
	and b                                            ; $529e: $a0
	db $eb                                           ; $529f: $eb
	ld d, c                                          ; $52a0: $51
	xor h                                            ; $52a1: $ac
	ld c, a                                          ; $52a2: $4f
	add hl, sp                                       ; $52a3: $39
	ld d, c                                          ; $52a4: $51
	sbc l                                            ; $52a5: $9d
	ldh a, [c]                                       ; $52a6: $f2

jr_095_52a7:
	dec sp                                           ; $52a7: $3b
	ldh a, [hDisp1_LCDC]                                     ; $52a8: $f0 $8f
	ld l, h                                          ; $52aa: $6c
	ld c, d                                          ; $52ab: $4a
	ld d, c                                          ; $52ac: $51
	ld c, h                                          ; $52ad: $4c
	xor b                                            ; $52ae: $a8
	ld l, e                                          ; $52af: $6b
	inc a                                            ; $52b0: $3c
	ldh a, [$cc]                                     ; $52b1: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $52b3: $f0 $88
	ld c, e                                          ; $52b5: $4b
	ld b, [hl]                                       ; $52b6: $46
	ld d, a                                          ; $52b7: $57
	ld d, d                                          ; $52b8: $52
	ld d, c                                          ; $52b9: $51
	inc a                                            ; $52ba: $3c
	and c                                            ; $52bb: $a1
	ld l, a                                          ; $52bc: $6f
	ld c, a                                          ; $52bd: $4f
	ldh a, [$b6]                                     ; $52be: $f0 $b6
	ld b, a                                          ; $52c0: $47
	ldh a, [rAUD1LOW]                                ; $52c1: $f0 $13
	jr c, jr_095_5307                                ; $52c3: $38 $42

	ld c, d                                          ; $52c5: $4a
	xor h                                            ; $52c6: $ac
	db $ed                                           ; $52c7: $ed
	sbc e                                            ; $52c8: $9b
	ld c, d                                          ; $52c9: $4a
	ld c, a                                          ; $52ca: $4f
	ld a, $3f                                        ; $52cb: $3e $3f
	pop af                                           ; $52cd: $f1
	sub b                                            ; $52ce: $90
	ld [hl], b                                       ; $52cf: $70
	ld b, b                                          ; $52d0: $40
	add hl, sp                                       ; $52d1: $39
	inc a                                            ; $52d2: $3c
	ld c, c                                          ; $52d3: $49
	inc de                                           ; $52d4: $13
	ld [hl], a                                       ; $52d5: $77
	dec sp                                           ; $52d6: $3b
	ccf                                              ; $52d7: $3f
	ld d, d                                          ; $52d8: $52
	ld d, c                                          ; $52d9: $51
	and b                                            ; $52da: $a0
	cpl                                              ; $52db: $2f
	ld b, e                                          ; $52dc: $43
	db $ed                                           ; $52dd: $ed
	sbc e                                            ; $52de: $9b
	inc a                                            ; $52df: $3c
	xor l                                            ; $52e0: $ad
	halt                                             ; $52e1: $76
	ld c, e                                          ; $52e2: $4b
	db $eb                                           ; $52e3: $eb
	ld e, c                                          ; $52e4: $59
	inc a                                            ; $52e5: $3c
	ld a, [hl-]                                      ; $52e6: $3a
	ld c, b                                          ; $52e7: $48
	and b                                            ; $52e8: $a0
	db $eb                                           ; $52e9: $eb
	ld d, c                                          ; $52ea: $51
	xor h                                            ; $52eb: $ac
	ld c, a                                          ; $52ec: $4f
	add hl, sp                                       ; $52ed: $39
	ld d, c                                          ; $52ee: $51
	sbc l                                            ; $52ef: $9d
	pop af                                           ; $52f0: $f1
	sbc d                                            ; $52f1: $9a
	ldh a, [hDisp1_LCDC]                                     ; $52f2: $f0 $8f
	ld l, h                                          ; $52f4: $6c
	ld c, d                                          ; $52f5: $4a
	ld d, c                                          ; $52f6: $51
	ld c, h                                          ; $52f7: $4c
	xor b                                            ; $52f8: $a8
	ld l, e                                          ; $52f9: $6b
	inc a                                            ; $52fa: $3c
	ldh a, [$cc]                                     ; $52fb: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $52fd: $f0 $88
	ld c, e                                          ; $52ff: $4b
	ld b, [hl]                                       ; $5300: $46
	ld d, a                                          ; $5301: $57
	ld d, d                                          ; $5302: $52
	ld d, c                                          ; $5303: $51
	inc a                                            ; $5304: $3c
	and c                                            ; $5305: $a1
	db $eb                                           ; $5306: $eb

jr_095_5307:
	ld d, c                                          ; $5307: $51
	xor h                                            ; $5308: $ac
	ld c, a                                          ; $5309: $4f
	add hl, sp                                       ; $530a: $39
	ld d, c                                          ; $530b: $51
	sbc l                                            ; $530c: $9d
	ldh a, [$58]                                     ; $530d: $f0 $58
	ldh a, [rAUD1HIGH]                               ; $530f: $f0 $14
	ldh a, [rTIMA]                                   ; $5311: $f0 $05
	ld c, d                                          ; $5313: $4a
	ld d, c                                          ; $5314: $51
	ld c, h                                          ; $5315: $4c
	and b                                            ; $5316: $a0
	cpl                                              ; $5317: $2f
	ld b, e                                          ; $5318: $43
	ldh a, [$0a]                                     ; $5319: $f0 $0a
	jr c, @+$47                                      ; $531b: $38 $45

	ld c, h                                          ; $531d: $4c
	xor b                                            ; $531e: $a8
	ld c, a                                          ; $531f: $4f
	add hl, sp                                       ; $5320: $39
	ldh a, [$58]                                     ; $5321: $f0 $58
	ldh a, [rAUD1HIGH]                               ; $5323: $f0 $14
	ldh a, [rTIMA]                                   ; $5325: $f0 $05
	inc a                                            ; $5327: $3c
	ld c, b                                          ; $5328: $48
	and b                                            ; $5329: $a0
	ldh a, [$d7]                                     ; $532a: $f0 $d7
	ldh a, [c]                                       ; $532c: $f2
	inc bc                                           ; $532d: $03
	ld d, e                                          ; $532e: $53
	ld c, d                                          ; $532f: $4a
	ld e, h                                          ; $5330: $5c
	ld c, [hl]                                       ; $5331: $4e
	ld b, c                                          ; $5332: $41
	ld c, d                                          ; $5333: $4a
	ld d, c                                          ; $5334: $51
	inc de                                           ; $5335: $13
	inc a                                            ; $5336: $3c
	ld d, b                                          ; $5337: $50
	inc [hl]                                         ; $5338: $34
	sub d                                            ; $5339: $92
	adc [hl]                                         ; $533a: $8e
	ld d, b                                          ; $533b: $50
	ld a, [hl-]                                      ; $533c: $3a
	jr c, jr_095_5388                                ; $533d: $38 $49

	jr c, jr_095_539e                                ; $533f: $38 $5d

	ld d, d                                          ; $5341: $52
	ld a, c                                          ; $5342: $79
	ld b, c                                          ; $5343: $41
	ld c, h                                          ; $5344: $4c
	and b                                            ; $5345: $a0
	db $eb                                           ; $5346: $eb
	ld d, c                                          ; $5347: $51
	xor h                                            ; $5348: $ac
	ld c, a                                          ; $5349: $4f
	add hl, sp                                       ; $534a: $39
	ld d, c                                          ; $534b: $51
	sbc l                                            ; $534c: $9d
	ldh a, [$e5]                                     ; $534d: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $534f: $f0 $14
	ldh a, [rTIMA]                                   ; $5351: $f0 $05
	ld c, d                                          ; $5353: $4a
	ld d, c                                          ; $5354: $51
	ld c, h                                          ; $5355: $4c
	and b                                            ; $5356: $a0
	cpl                                              ; $5357: $2f
	ld b, e                                          ; $5358: $43
	ldh a, [$0a]                                     ; $5359: $f0 $0a
	jr c, jr_095_53a2                                ; $535b: $38 $45

	ld c, h                                          ; $535d: $4c
	xor b                                            ; $535e: $a8
	ld c, a                                          ; $535f: $4f
	add hl, sp                                       ; $5360: $39
	ldh a, [$e5]                                     ; $5361: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $5363: $f0 $14
	ldh a, [rTIMA]                                   ; $5365: $f0 $05
	inc a                                            ; $5367: $3c
	ld c, b                                          ; $5368: $48
	and b                                            ; $5369: $a0
	db $ec                                           ; $536a: $ec
	push bc                                          ; $536b: $c5
	inc [hl]                                         ; $536c: $34
	pop af                                           ; $536d: $f1
	ld c, d                                          ; $536e: $4a
	ldh a, [$ad]                                     ; $536f: $f0 $ad
	ld b, d                                          ; $5371: $42
	inc de                                           ; $5372: $13
	pop af                                           ; $5373: $f1
	ld a, c                                          ; $5374: $79
	pop af                                           ; $5375: $f1
	ld h, d                                          ; $5376: $62
	ld h, d                                          ; $5377: $62
	ld a, $3a                                        ; $5378: $3e $3a
	jr c, jr_095_53c5                                ; $537a: $38 $49

	jr c, jr_095_53db                                ; $537c: $38 $5d

	ld d, d                                          ; $537e: $52
	ld a, c                                          ; $537f: $79
	ld b, c                                          ; $5380: $41
	ld c, h                                          ; $5381: $4c
	and b                                            ; $5382: $a0
	db $eb                                           ; $5383: $eb
	ld d, c                                          ; $5384: $51
	xor h                                            ; $5385: $ac
	ld c, a                                          ; $5386: $4f
	add hl, sp                                       ; $5387: $39

jr_095_5388:
	ld d, c                                          ; $5388: $51
	sbc l                                            ; $5389: $9d
	db $ed                                           ; $538a: $ed
	ld a, c                                          ; $538b: $79
	ld c, d                                          ; $538c: $4a
	ld d, c                                          ; $538d: $51
	ld c, h                                          ; $538e: $4c
	and b                                            ; $538f: $a0
	cpl                                              ; $5390: $2f
	ld b, e                                          ; $5391: $43
	ldh a, [$0a]                                     ; $5392: $f0 $0a
	jr c, jr_095_53db                                ; $5394: $38 $45

	ld c, h                                          ; $5396: $4c
	xor b                                            ; $5397: $a8
	ld c, a                                          ; $5398: $4f
	add hl, sp                                       ; $5399: $39
	db $ed                                           ; $539a: $ed
	ld a, c                                          ; $539b: $79
	inc a                                            ; $539c: $3c
	ld c, b                                          ; $539d: $48

jr_095_539e:
	and b                                            ; $539e: $a0
	ld c, a                                          ; $539f: $4f
	add hl, sp                                       ; $53a0: $39
	inc [hl]                                         ; $53a1: $34

jr_095_53a2:
	ldh a, [rAUD1ENV]                                ; $53a2: $f0 $12
	sbc a                                            ; $53a4: $9f
	ldh a, [rTIMA]                                   ; $53a5: $f0 $05
	pop af                                           ; $53a7: $f1
	rrca                                             ; $53a8: $0f
	ld c, c                                          ; $53a9: $49
	ld c, a                                          ; $53aa: $4f
	inc de                                           ; $53ab: $13
	ld h, h                                          ; $53ac: $64
	ldh a, [$34]                                     ; $53ad: $f0 $34
	ld c, l                                          ; $53af: $4d
	ld a, [hl-]                                      ; $53b0: $3a
	ld b, c                                          ; $53b1: $41
	ld c, d                                          ; $53b2: $4a
	ld d, c                                          ; $53b3: $51
	ld c, h                                          ; $53b4: $4c
	and b                                            ; $53b5: $a0
	ld c, a                                          ; $53b6: $4f
	add hl, sp                                       ; $53b7: $39
	ld d, c                                          ; $53b8: $51
	sbc l                                            ; $53b9: $9d
	ld l, d                                          ; $53ba: $6a
	ldh a, [rAUD1HIGH]                               ; $53bb: $f0 $14
	ld c, a                                          ; $53bd: $4f
	inc de                                           ; $53be: $13
	ldh a, [$ce]                                     ; $53bf: $f0 $ce
	ld h, e                                          ; $53c1: $63
	ld d, a                                          ; $53c2: $57

jr_095_53c3:
	ld c, d                                          ; $53c3: $4a
	ld d, c                                          ; $53c4: $51

jr_095_53c5:
	ld c, h                                          ; $53c5: $4c
	and b                                            ; $53c6: $a0
	cpl                                              ; $53c7: $2f
	ld b, e                                          ; $53c8: $43
	xor $1f                                          ; $53c9: $ee $1f
	inc [hl]                                         ; $53cb: $34
	ld a, b                                          ; $53cc: $78
	ldh a, [rAUD1HIGH]                               ; $53cd: $f0 $14
	ld c, a                                          ; $53cf: $4f
	ld a, [hl]                                       ; $53d0: $7e
	jr c, jr_095_53c3                                ; $53d1: $38 $f0

	inc d                                            ; $53d3: $14
	ld b, a                                          ; $53d4: $47
	inc de                                           ; $53d5: $13
	ld a, [hl-]                                      ; $53d6: $3a
	ld c, [hl]                                       ; $53d7: $4e
	ld c, c                                          ; $53d8: $49
	jr c, jr_095_5413                                ; $53d9: $38 $38

jr_095_53db:
	ld c, h                                          ; $53db: $4c
	and b                                            ; $53dc: $a0
	or [hl]                                          ; $53dd: $b6
	and b                                            ; $53de: $a0
	cpl                                              ; $53df: $2f
	ld b, e                                          ; $53e0: $43
	db $ed                                           ; $53e1: $ed
	ld e, d                                          ; $53e2: $5a
	ld c, a                                          ; $53e3: $4f
	add hl, sp                                       ; $53e4: $39
	ld d, c                                          ; $53e5: $51
	sbc l                                            ; $53e6: $9d
	inc de                                           ; $53e7: $13
	db $ec                                           ; $53e8: $ec
	rst SubAFromDE                                          ; $53e9: $df
	db $ec                                           ; $53ea: $ec
	inc h                                            ; $53eb: $24
	ld b, h                                          ; $53ec: $44
	ld b, l                                          ; $53ed: $45
	ld c, h                                          ; $53ee: $4c
	and b                                            ; $53ef: $a0
	ld e, [hl]                                       ; $53f0: $5e
	dec sp                                           ; $53f1: $3b
	xor c                                            ; $53f2: $a9
	ld l, a                                          ; $53f3: $6f
	db $ec                                           ; $53f4: $ec
	inc h                                            ; $53f5: $24
	inc de                                           ; $53f6: $13
	ldh a, [$f4]                                     ; $53f7: $f0 $f4
	ld e, [hl]                                       ; $53f9: $5e
	ccf                                              ; $53fa: $3f
	ld c, [hl]                                       ; $53fb: $4e
	ld b, c                                          ; $53fc: $41
	ld c, d                                          ; $53fd: $4a
	ld d, c                                          ; $53fe: $51
	inc a                                            ; $53ff: $3c
	and c                                            ; $5400: $a1
	cpl                                              ; $5401: $2f
	ld b, e                                          ; $5402: $43
	sub c                                            ; $5403: $91
	ldh a, [$59]                                     ; $5404: $f0 $59
	db $ec                                           ; $5406: $ec
	ret c                                            ; $5407: $d8

	inc a                                            ; $5408: $3c
	xor b                                            ; $5409: $a8
	ld h, c                                          ; $540a: $61
	ld d, [hl]                                       ; $540b: $56
	ld b, c                                          ; $540c: $41
	ld c, c                                          ; $540d: $49
	ldh a, [$f4]                                     ; $540e: $f0 $f4
	ld e, [hl]                                       ; $5410: $5e
	ccf                                              ; $5411: $3f
	ld c, [hl]                                       ; $5412: $4e

jr_095_5413:
	ld b, l                                          ; $5413: $45
	and b                                            ; $5414: $a0
	adc b                                            ; $5415: $88
	sub c                                            ; $5416: $91
	xor c                                            ; $5417: $a9
	ldh a, [$29]                                     ; $5418: $f0 $29
	ld a, $38                                        ; $541a: $3e $38
	ld c, d                                          ; $541c: $4a
	ld d, c                                          ; $541d: $51
	and b                                            ; $541e: $a0
	cpl                                              ; $541f: $2f
	ld b, e                                          ; $5420: $43
	db $ec                                           ; $5421: $ec
	ldh [$34], a                                     ; $5422: $e0 $34
	db $eb                                           ; $5424: $eb
	rst FarCall                                          ; $5425: $f7
	and c                                            ; $5426: $a1
	xor $06                                          ; $5427: $ee $06
	ld b, a                                          ; $5429: $47
	db $ec                                           ; $542a: $ec
	ld [hl-], a                                      ; $542b: $32
	and b                                            ; $542c: $a0
	ld b, b                                          ; $542d: $40
	ld c, l                                          ; $542e: $4d
	ld e, e                                          ; $542f: $5b
	ld d, [hl]                                       ; $5430: $56
	inc [hl]                                         ; $5431: $34
	db $ec                                           ; $5432: $ec
	ld [hl-], a                                      ; $5433: $32
	and b                                            ; $5434: $a0
	ldh a, [$d0]                                     ; $5435: $f0 $d0
	push af                                          ; $5437: $f5
	add hl, hl                                       ; $5438: $29
	db $f4                                           ; $5439: $f4
	ld a, e                                          ; $543a: $7b
	ld b, l                                          ; $543b: $45
	xor b                                            ; $543c: $a8
	ldh a, [rHDMA5]                                  ; $543d: $f0 $55
	ldh a, [rBCPS]                                   ; $543f: $f0 $68
	ld d, c                                          ; $5441: $51
	ld c, [hl]                                       ; $5442: $4e
	ld h, e                                          ; $5443: $63
	and b                                            ; $5444: $a0
	ld d, $a8                                        ; $5445: $16 $a8
	ld l, d                                          ; $5447: $6a
	ld a, d                                          ; $5448: $7a
	ld d, a                                          ; $5449: $57
	ld a, [hl-]                                      ; $544a: $3a
	ld b, d                                          ; $544b: $42
	and c                                            ; $544c: $a1
	ld d, d                                          ; $544d: $52
	inc [hl]                                         ; $544e: $34
	ret nc                                           ; $544f: $d0

	xor b                                            ; $5450: $a8
	ld b, b                                          ; $5451: $40
	ld c, l                                          ; $5452: $4d
	ld e, e                                          ; $5453: $5b
	ld d, [hl]                                       ; $5454: $56
	inc [hl]                                         ; $5455: $34
	db $ec                                           ; $5456: $ec
	ld [hl-], a                                      ; $5457: $32
	and b                                            ; $5458: $a0
	xor $17                                          ; $5459: $ee $17
	db $eb                                           ; $545b: $eb
	ld l, l                                          ; $545c: $6d
	xor h                                            ; $545d: $ac
	pop af                                           ; $545e: $f1
	ld d, $9d                                        ; $545f: $16 $9d
	ld b, d                                          ; $5461: $42
	ld b, l                                          ; $5462: $45
	xor b                                            ; $5463: $a8
	ld b, b                                          ; $5464: $40
	ld c, l                                          ; $5465: $4d
	ld e, e                                          ; $5466: $5b
	ld d, [hl]                                       ; $5467: $56
	inc [hl]                                         ; $5468: $34
	ld e, b                                          ; $5469: $58
	ld b, l                                          ; $546a: $45
	ld a, [hl-]                                      ; $546b: $3a
	ld d, b                                          ; $546c: $50
	and b                                            ; $546d: $a0
	cpl                                              ; $546e: $2f
	ld b, e                                          ; $546f: $43
	rst JumpTable                                          ; $5470: $c7
	ld b, h                                          ; $5471: $44
	ld c, h                                          ; $5472: $4c
	xor b                                            ; $5473: $a8
	or h                                             ; $5474: $b4
	inc [hl]                                         ; $5475: $34
	ld e, b                                          ; $5476: $58
	ld b, l                                          ; $5477: $45
	ld a, [hl-]                                      ; $5478: $3a
	ld d, b                                          ; $5479: $50
	and b                                            ; $547a: $a0
	cpl                                              ; $547b: $2f
	ld [hl-], a                                      ; $547c: $32
	halt                                             ; $547d: $76
	ld c, e                                          ; $547e: $4b
	db $ec                                           ; $547f: $ec
	ldh [rOBP1], a                                   ; $5480: $e0 $49
	xor h                                            ; $5482: $ac
	ld [$a32a], a                                    ; $5483: $ea $2a $a3
	db $eb                                           ; $5486: $eb
	ld d, c                                          ; $5487: $51
	xor h                                            ; $5488: $ac

jr_095_5489:
	ld c, a                                          ; $5489: $4f
	add hl, sp                                       ; $548a: $39
	ld d, c                                          ; $548b: $51
	sbc l                                            ; $548c: $9d
	xor h                                            ; $548d: $ac
	db $eb                                           ; $548e: $eb
	ld d, l                                          ; $548f: $55
	ldh a, [$60]                                     ; $5490: $f0 $60
	add e                                            ; $5492: $83
	ld l, c                                          ; $5493: $69
	ld c, h                                          ; $5494: $4c
	and b                                            ; $5495: $a0
	cpl                                              ; $5496: $2f
	ld b, e                                          ; $5497: $43
	rst JumpTable                                          ; $5498: $c7
	ld b, h                                          ; $5499: $44
	ld c, h                                          ; $549a: $4c
	xor b                                            ; $549b: $a8
	ld c, d                                          ; $549c: $4a
	ld c, a                                          ; $549d: $4f
	inc [hl]                                         ; $549e: $34
	jr c, jr_095_54d9                                ; $549f: $38 $38

	db $ec                                           ; $54a1: $ec
	ret c                                            ; $54a2: $d8

	inc a                                            ; $54a3: $3c

jr_095_54a4:
	xor h                                            ; $54a4: $ac
	db $ec                                           ; $54a5: $ec
	ldh [rWX], a                                     ; $54a6: $e0 $4b
	ldh a, [$4e]                                     ; $54a8: $f0 $4e
	db $f4                                           ; $54aa: $f4
	daa                                              ; $54ab: $27
	ld b, h                                          ; $54ac: $44
	inc a                                            ; $54ad: $3c
	ld d, b                                          ; $54ae: $50
	and b                                            ; $54af: $a0
	ld b, [hl]                                       ; $54b0: $46
	ld b, c                                          ; $54b1: $41
	ld a, [hl-]                                      ; $54b2: $3a
	ld c, a                                          ; $54b3: $4f
	ld b, d                                          ; $54b4: $42
	xor h                                            ; $54b5: $ac
	ld l, [hl]                                       ; $54b6: $6e
	ld c, [hl]                                       ; $54b7: $4e
	ld b, h                                          ; $54b8: $44
	ld e, l                                          ; $54b9: $5d
	ldh a, [rAUD1LOW]                                ; $54ba: $f0 $13
	ldh a, [$af]                                     ; $54bc: $f0 $af
	ld b, l                                          ; $54be: $45
	and b                                            ; $54bf: $a0
	cpl                                              ; $54c0: $2f
	ld b, e                                          ; $54c1: $43
	rst JumpTable                                          ; $54c2: $c7
	ld b, h                                          ; $54c3: $44
	ld c, h                                          ; $54c4: $4c
	ld c, b                                          ; $54c5: $48
	and b                                            ; $54c6: $a0
	ld e, d                                          ; $54c7: $5a
	add hl, sp                                       ; $54c8: $39
	ld a, c                                          ; $54c9: $79
	xor h                                            ; $54ca: $ac
	db $eb                                           ; $54cb: $eb
	ld d, l                                          ; $54cc: $55
	ld c, d                                          ; $54cd: $4a
	ld a, $66                                        ; $54ce: $3e $66
	add hl, sp                                       ; $54d0: $39
	ld e, l                                          ; $54d1: $5d
	ld e, d                                          ; $54d2: $5a
	xor h                                            ; $54d3: $ac
	ld c, c                                          ; $54d4: $49
	ld d, a                                          ; $54d5: $57
	ld b, [hl]                                       ; $54d6: $46
	ld e, [hl]                                       ; $54d7: $5e
	sbc h                                            ; $54d8: $9c

jr_095_54d9:
	inc [hl]                                         ; $54d9: $34
	sub d                                            ; $54da: $92
	adc [hl]                                         ; $54db: $8e
	ld c, [hl]                                       ; $54dc: $4e
	ld b, d                                          ; $54dd: $42
	ld b, l                                          ; $54de: $45
	and b                                            ; $54df: $a0
	cpl                                              ; $54e0: $2f
	ld b, e                                          ; $54e1: $43
	ld b, b                                          ; $54e2: $40
	add hl, sp                                       ; $54e3: $39
	ld b, h                                          ; $54e4: $44
	ld c, h                                          ; $54e5: $4c
	inc [hl]                                         ; $54e6: $34
	sub d                                            ; $54e7: $92
	adc [hl]                                         ; $54e8: $8e
	ld e, a                                          ; $54e9: $5f
	add hl, sp                                       ; $54ea: $39
	and b                                            ; $54eb: $a0
	ld e, d                                          ; $54ec: $5a
	add hl, sp                                       ; $54ed: $39
	ld a, c                                          ; $54ee: $79
	xor h                                            ; $54ef: $ac
	db $eb                                           ; $54f0: $eb
	ld d, l                                          ; $54f1: $55
	ld c, d                                          ; $54f2: $4a
	ld a, $66                                        ; $54f3: $3e $66
	add hl, sp                                       ; $54f5: $39
	ld e, l                                          ; $54f6: $5d
	ld e, d                                          ; $54f7: $5a
	xor h                                            ; $54f8: $ac
	ld a, c                                          ; $54f9: $79
	jr c, jr_095_5489                                ; $54fa: $38 $8d

	jr c, jr_095_5532                                ; $54fc: $38 $34

	db $ed                                           ; $54fe: $ed
	nop                                              ; $54ff: $00
	ld a, [hl-]                                      ; $5500: $3a
	ld e, b                                          ; $5501: $58
	jr c, jr_095_54a4                                ; $5502: $38 $a0

	ld e, d                                          ; $5504: $5a
	add hl, sp                                       ; $5505: $39
	ld a, c                                          ; $5506: $79
	inc [hl]                                         ; $5507: $34
	pop af                                           ; $5508: $f1
	ld l, a                                          ; $5509: $6f
	ld b, d                                          ; $550a: $42
	adc a                                            ; $550b: $8f
	ld c, e                                          ; $550c: $4b
	inc de                                           ; $550d: $13
	db $eb                                           ; $550e: $eb
	ld d, e                                          ; $550f: $53
	ld b, a                                          ; $5510: $47
	ldh a, [$ec]                                     ; $5511: $f0 $ec
	ld d, d                                          ; $5513: $52
	dec sp                                           ; $5514: $3b
	ccf                                              ; $5515: $3f
	ld c, [hl]                                       ; $5516: $4e
	inc a                                            ; $5517: $3c
	ld d, b                                          ; $5518: $50
	xor h                                            ; $5519: $ac
	ldh a, [$aa]                                     ; $551a: $f0 $aa
	adc c                                            ; $551c: $89
	adc a                                            ; $551d: $8f
	ld b, a                                          ; $551e: $47
	ld a, b                                          ; $551f: $78
	ld c, [hl]                                       ; $5520: $4e
	ld c, c                                          ; $5521: $49
	jr c, @+$3a                                      ; $5522: $38 $38

	ld h, e                                          ; $5524: $63
	and b                                            ; $5525: $a0
	db $eb                                           ; $5526: $eb
	ld d, c                                          ; $5527: $51
	xor h                                            ; $5528: $ac
	ld c, a                                          ; $5529: $4f
	add hl, sp                                       ; $552a: $39
	ld d, c                                          ; $552b: $51
	sbc l                                            ; $552c: $9d
	xor h                                            ; $552d: $ac
	db $eb                                           ; $552e: $eb
	ld d, l                                          ; $552f: $55
	db $ed                                           ; $5530: $ed
	sbc l                                            ; $5531: $9d

jr_095_5532:
	pop af                                           ; $5532: $f1
	inc e                                            ; $5533: $1c
	ld c, h                                          ; $5534: $4c
	and b                                            ; $5535: $a0
	ldh a, [$32]                                     ; $5536: $f0 $32
	ld e, c                                          ; $5538: $59
	db $ed                                           ; $5539: $ed
	rst JumpTable                                          ; $553a: $c7
	ldh a, [$50]                                     ; $553b: $f0 $50
	ld h, d                                          ; $553d: $62
	inc de                                           ; $553e: $13
	ldh a, [c]                                       ; $553f: $f2
	ld a, b                                          ; $5540: $78
	ldh a, [$8a]                                     ; $5541: $f0 $8a
	ld d, c                                          ; $5543: $51
	ld c, l                                          ; $5544: $4d
	ld a, e                                          ; $5545: $7b
	jr c, jr_095_5580                                ; $5546: $38 $38

	ld b, d                                          ; $5548: $42
	ld b, a                                          ; $5549: $47
	and b                                            ; $554a: $a0
	cpl                                              ; $554b: $2f
	ld b, e                                          ; $554c: $43
	ld b, b                                          ; $554d: $40
	inc [hl]                                         ; $554e: $34
	ld b, b                                          ; $554f: $40
	ld c, l                                          ; $5550: $4d
	ld c, e                                          ; $5551: $4b
	xor l                                            ; $5552: $ad
	ld c, c                                          ; $5553: $49
	ld d, a                                          ; $5554: $57
	ld b, [hl]                                       ; $5555: $46
	ld e, [hl]                                       ; $5556: $5e
	sbc h                                            ; $5557: $9c
	xor h                                            ; $5558: $ac
	ldh a, [$65]                                     ; $5559: $f0 $65
	ldh a, [$75]                                     ; $555b: $f0 $75
	ld b, a                                          ; $555d: $47
	ld a, a                                          ; $555e: $7f
	ld h, d                                          ; $555f: $62
	ldh a, [$9a]                                     ; $5560: $f0 $9a
	ld e, l                                          ; $5562: $5d
	ld a, [hl-]                                      ; $5563: $3a
	ld d, l                                          ; $5564: $55
	ld h, c                                          ; $5565: $61
	ld d, [hl]                                       ; $5566: $56
	and b                                            ; $5567: $a0
	db $ec                                           ; $5568: $ec
	ld bc, $4fac                                     ; $5569: $01 $ac $4f
	add hl, sp                                       ; $556c: $39
	ld d, c                                          ; $556d: $51
	sbc l                                            ; $556e: $9d
	db $ec                                           ; $556f: $ec
	call nz, $a04c                                   ; $5570: $c4 $4c $a0
	xor $2a                                          ; $5573: $ee $2a
	ldh a, [rBGP]                                    ; $5575: $f0 $47
	ldh a, [$2a]                                     ; $5577: $f0 $2a
	ld h, d                                          ; $5579: $62
	inc de                                           ; $557a: $13
	db $f4                                           ; $557b: $f4
	add hl, de                                       ; $557c: $19
	inc a                                            ; $557d: $3c
	ld c, l                                          ; $557e: $4d
	ld c, [hl]                                       ; $557f: $4e

jr_095_5580:
	inc a                                            ; $5580: $3c
	ld d, b                                          ; $5581: $50
	xor h                                            ; $5582: $ac
	pop af                                           ; $5583: $f1
	sbc $4e                                          ; $5584: $de $4e
	ld h, e                                          ; $5586: $63
	ld c, h                                          ; $5587: $4c
	and b                                            ; $5588: $a0
	db $eb                                           ; $5589: $eb
	ld d, c                                          ; $558a: $51
	xor h                                            ; $558b: $ac
	ld c, a                                          ; $558c: $4f
	add hl, sp                                       ; $558d: $39
	ld d, c                                          ; $558e: $51
	sbc l                                            ; $558f: $9d
	pop af                                           ; $5590: $f1
	jp nc, $8ff0                                     ; $5591: $d2 $f0 $8f

	ld l, h                                          ; $5594: $6c
	ld c, h                                          ; $5595: $4c
	and b                                            ; $5596: $a0
	cpl                                              ; $5597: $2f
	ld b, e                                          ; $5598: $43
	ld b, b                                          ; $5599: $40
	add hl, sp                                       ; $559a: $39
	ld b, h                                          ; $559b: $44
	ld c, h                                          ; $559c: $4c
	xor b                                            ; $559d: $a8
	db $ec                                           ; $559e: $ec
	ldh [$ac], a                                     ; $559f: $e0 $ac
	pop af                                           ; $55a1: $f1
	jp nc, $8ff0                                     ; $55a2: $d2 $f0 $8f

	ld l, h                                          ; $55a5: $6c
	ld b, d                                          ; $55a6: $42
	ldh a, [$cc]                                     ; $55a7: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $55a9: $f0 $88
	ld c, e                                          ; $55ab: $4b
	and c                                            ; $55ac: $a1
	db $eb                                           ; $55ad: $eb
	ld d, c                                          ; $55ae: $51
	xor h                                            ; $55af: $ac
	ld c, a                                          ; $55b0: $4f
	add hl, sp                                       ; $55b1: $39
	ld d, c                                          ; $55b2: $51
	sbc l                                            ; $55b3: $9d
	ldh a, [c]                                       ; $55b4: $f2
	dec sp                                           ; $55b5: $3b
	ldh a, [hDisp1_LCDC]                                     ; $55b6: $f0 $8f
	ld l, h                                          ; $55b8: $6c
	ld c, h                                          ; $55b9: $4c
	and b                                            ; $55ba: $a0
	cpl                                              ; $55bb: $2f
	ld b, e                                          ; $55bc: $43
	ld b, b                                          ; $55bd: $40
	add hl, sp                                       ; $55be: $39
	ld b, h                                          ; $55bf: $44
	ld c, h                                          ; $55c0: $4c
	xor b                                            ; $55c1: $a8
	db $ec                                           ; $55c2: $ec
	ldh [$ac], a                                     ; $55c3: $e0 $ac
	ldh a, [c]                                       ; $55c5: $f2
	dec sp                                           ; $55c6: $3b
	ldh a, [hDisp1_LCDC]                                     ; $55c7: $f0 $8f
	ld l, h                                          ; $55c9: $6c
	ld b, d                                          ; $55ca: $42
	ldh a, [$cc]                                     ; $55cb: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $55cd: $f0 $88
	ld c, e                                          ; $55cf: $4b
	and c                                            ; $55d0: $a1
	db $eb                                           ; $55d1: $eb
	ld d, c                                          ; $55d2: $51
	xor h                                            ; $55d3: $ac
	ld c, a                                          ; $55d4: $4f
	add hl, sp                                       ; $55d5: $39
	ld d, c                                          ; $55d6: $51
	sbc l                                            ; $55d7: $9d
	pop af                                           ; $55d8: $f1
	sbc d                                            ; $55d9: $9a
	ldh a, [hDisp1_LCDC]                                     ; $55da: $f0 $8f
	ld l, h                                          ; $55dc: $6c
	ld c, h                                          ; $55dd: $4c
	and b                                            ; $55de: $a0
	cpl                                              ; $55df: $2f
	ld b, e                                          ; $55e0: $43
	ld b, b                                          ; $55e1: $40
	add hl, sp                                       ; $55e2: $39
	ld b, h                                          ; $55e3: $44
	ld c, h                                          ; $55e4: $4c
	xor b                                            ; $55e5: $a8
	db $ec                                           ; $55e6: $ec
	ldh [$ac], a                                     ; $55e7: $e0 $ac
	pop af                                           ; $55e9: $f1
	sbc d                                            ; $55ea: $9a
	ldh a, [hDisp1_LCDC]                                     ; $55eb: $f0 $8f
	ld l, h                                          ; $55ed: $6c
	ld b, d                                          ; $55ee: $42
	ldh a, [$cc]                                     ; $55ef: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $55f1: $f0 $88
	ld c, e                                          ; $55f3: $4b
	and c                                            ; $55f4: $a1
	sbc h                                            ; $55f5: $9c
	dec sp                                           ; $55f6: $3b
	ld c, c                                          ; $55f7: $49
	inc [hl]                                         ; $55f8: $34
	xor $2a                                          ; $55f9: $ee $2a
	ld b, l                                          ; $55fb: $45
	and b                                            ; $55fc: $a0
	cpl                                              ; $55fd: $2f
	ld b, e                                          ; $55fe: $43
	rst JumpTable                                          ; $55ff: $c7
	xor b                                            ; $5600: $a8
	ld [hl-], a                                      ; $5601: $32
	ldh a, [$0c]                                     ; $5602: $f0 $0c
	jr c, jr_095_5643                                ; $5604: $38 $3d

	halt                                             ; $5606: $76
	ld d, e                                          ; $5607: $53
	pop af                                           ; $5608: $f1
	or d                                             ; $5609: $b2
	pop af                                           ; $560a: $f1
	ld c, b                                          ; $560b: $48
	ld b, h                                          ; $560c: $44
	dec sp                                           ; $560d: $3b
	dec a                                            ; $560e: $3d
	and e                                            ; $560f: $a3
	pop af                                           ; $5610: $f1
	or d                                             ; $5611: $b2
	pop af                                           ; $5612: $f1
	ld c, b                                          ; $5613: $48
	ld a, [hl-]                                      ; $5614: $3a
	ldh a, [$d7]                                     ; $5615: $f0 $d7
	ldh a, [c]                                       ; $5617: $f2
	inc bc                                           ; $5618: $03
	ld d, e                                          ; $5619: $53
	inc de                                           ; $561a: $13
	sub [hl]                                         ; $561b: $96
	dec sp                                           ; $561c: $3b
	ccf                                              ; $561d: $3f
	ld d, l                                          ; $561e: $55
	ld c, [hl]                                       ; $561f: $4e
	ld h, e                                          ; $5620: $63
	ld c, h                                          ; $5621: $4c
	and b                                            ; $5622: $a0
	ldh a, [$e5]                                     ; $5623: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $5625: $f0 $14
	ld b, a                                          ; $5627: $47
	ld a, [hl-]                                      ; $5628: $3a
	dec sp                                           ; $5629: $3b
	ccf                                              ; $562a: $3f
	ld c, a                                          ; $562b: $4f
	xor h                                            ; $562c: $ac
	ld l, e                                          ; $562d: $6b
	ld c, a                                          ; $562e: $4f
	ldh a, [$5d]                                     ; $562f: $f0 $5d
	ld h, e                                          ; $5631: $63
	ld d, b                                          ; $5632: $50
	ld a, [hl-]                                      ; $5633: $3a
	jr c, jr_095_5693                                ; $5634: $38 $5d

	ld e, d                                          ; $5636: $5a
	ld c, h                                          ; $5637: $4c
	and b                                            ; $5638: $a0
	cpl                                              ; $5639: $2f
	ld b, e                                          ; $563a: $43
	ld e, [hl]                                       ; $563b: $5e
	xor c                                            ; $563c: $a9
	pop af                                           ; $563d: $f1
	ld c, d                                          ; $563e: $4a
	ldh a, [$ad]                                     ; $563f: $f0 $ad
	ld c, e                                          ; $5641: $4b
	and c                                            ; $5642: $a1

jr_095_5643:
	ld b, b                                          ; $5643: $40
	ld b, c                                          ; $5644: $41
	ld a, [hl-]                                      ; $5645: $3a
	ld c, a                                          ; $5646: $4f
	ld b, d                                          ; $5647: $42
	xor h                                            ; $5648: $ac
	ld e, d                                          ; $5649: $5a
	add hl, sp                                       ; $564a: $39
	ld c, c                                          ; $564b: $49
	ld c, d                                          ; $564c: $4a
	ld c, a                                          ; $564d: $4f
	ld a, [hl-]                                      ; $564e: $3a
	ld c, [hl]                                       ; $564f: $4e
	ld h, e                                          ; $5650: $63
	ld b, l                                          ; $5651: $45
	xor b                                            ; $5652: $a8
	xor $2a                                          ; $5653: $ee $2a
	ldh a, [$4e]                                     ; $5655: $f0 $4e
	ldh a, [$bc]                                     ; $5657: $f0 $bc
	ld b, l                                          ; $5659: $45
	and b                                            ; $565a: $a0
	cpl                                              ; $565b: $2f
	ld b, e                                          ; $565c: $43
	rst JumpTable                                          ; $565d: $c7
	and b                                            ; $565e: $a0
	ldh a, [rAUD1ENV]                                ; $565f: $f0 $12
	sbc a                                            ; $5661: $9f
	ldh a, [rTIMA]                                   ; $5662: $f0 $05
	ld b, d                                          ; $5664: $42
	add hl, sp                                       ; $5665: $39
	ld h, c                                          ; $5666: $61
	ld b, a                                          ; $5667: $47
	ld c, e                                          ; $5668: $4b
	xor h                                            ; $5669: $ac
	ld l, a                                          ; $566a: $6f
	ld b, d                                          ; $566b: $42
	ldh a, [rAUD2LOW]                                ; $566c: $f0 $18
	pop af                                           ; $566e: $f1
	ld l, d                                          ; $566f: $6a
	ld c, a                                          ; $5670: $4f
	inc [hl]                                         ; $5671: $34
	ldh a, [rSTAT]                                   ; $5672: $f0 $41
	pop af                                           ; $5674: $f1
	ld d, e                                          ; $5675: $53
	inc de                                           ; $5676: $13
	sub h                                            ; $5677: $94
	ld a, b                                          ; $5678: $78
	ld b, b                                          ; $5679: $40
	add hl, sp                                       ; $567a: $39
	ld b, a                                          ; $567b: $47
	db $ec                                           ; $567c: $ec
	dec bc                                           ; $567d: $0b
	and b                                            ; $567e: $a0
	cpl                                              ; $567f: $2f
	ld b, e                                          ; $5680: $43
	ld e, [hl]                                       ; $5681: $5e
	inc [hl]                                         ; $5682: $34
	ldh a, [rAUD2LOW]                                ; $5683: $f0 $18
	pop af                                           ; $5685: $f1
	ld l, d                                          ; $5686: $6a
	dec sp                                           ; $5687: $3b
	ccf                                              ; $5688: $3f
	and c                                            ; $5689: $a1
	db $ed                                           ; $568a: $ed
	inc c                                            ; $568b: $0c
	and b                                            ; $568c: $a0
	ld c, a                                          ; $568d: $4f
	add hl, sp                                       ; $568e: $39
	ld d, c                                          ; $568f: $51
	sbc l                                            ; $5690: $9d
	inc de                                           ; $5691: $13
	ld l, d                                          ; $5692: $6a

jr_095_5693:
	ldh a, [rAUD1HIGH]                               ; $5693: $f0 $14
	ld c, a                                          ; $5695: $4f
	ldh a, [$ce]                                     ; $5696: $f0 $ce
	ld h, e                                          ; $5698: $63
	ld d, a                                          ; $5699: $57
	ld c, h                                          ; $569a: $4c
	and b                                            ; $569b: $a0
	cpl                                              ; $569c: $2f
	ld b, e                                          ; $569d: $43
	ld b, b                                          ; $569e: $40
	add hl, sp                                       ; $569f: $39
	ld b, h                                          ; $56a0: $44
	ld c, h                                          ; $56a1: $4c
	xor b                                            ; $56a2: $a8
	ld a, b                                          ; $56a3: $78
	ldh a, [rAUD1HIGH]                               ; $56a4: $f0 $14
	ld b, d                                          ; $56a6: $42
	ldh a, [c]                                       ; $56a7: $f2
	sub [hl]                                         ; $56a8: $96
	ldh a, [$e4]                                     ; $56a9: $f0 $e4
	ld c, e                                          ; $56ab: $4b
	xor h                                            ; $56ac: $ac
	ldh a, [$ec]                                     ; $56ad: $f0 $ec
	ld [hl], c                                       ; $56af: $71
	dec a                                            ; $56b0: $3d
	and c                                            ; $56b1: $a1
	ld l, a                                          ; $56b2: $6f
	ld b, a                                          ; $56b3: $47
	ld c, e                                          ; $56b4: $4b
	xor h                                            ; $56b5: $ac
	add h                                            ; $56b6: $84
	ldh a, [rTIMA]                                   ; $56b7: $f0 $05
	ld b, d                                          ; $56b9: $42
	ldh a, [rAUD3LEVEL]                              ; $56ba: $f0 $1c
	ldh a, [c]                                       ; $56bc: $f2
	ld [hl], a                                       ; $56bd: $77
	db $eb                                           ; $56be: $eb
	ld l, l                                          ; $56bf: $6d
	xor h                                            ; $56c0: $ac
	ld b, b                                          ; $56c1: $40
	ld c, l                                          ; $56c2: $4d
	ld b, a                                          ; $56c3: $47
	pop af                                           ; $56c4: $f1
	dec a                                            ; $56c5: $3d
	inc a                                            ; $56c6: $3c
	add hl, sp                                       ; $56c7: $39
	ld b, h                                          ; $56c8: $44
	ld e, l                                          ; $56c9: $5d
	ld b, l                                          ; $56ca: $45
	and b                                            ; $56cb: $a0
	cpl                                              ; $56cc: $2f
	ld b, e                                          ; $56cd: $43
	ret nz                                           ; $56ce: $c0

	xor b                                            ; $56cf: $a8
	ld b, b                                          ; $56d0: $40
	ld c, l                                          ; $56d1: $4d
	dec sp                                           ; $56d2: $3b
	ccf                                              ; $56d3: $3f
	xor h                                            ; $56d4: $ac

jr_095_56d5:
	db $eb                                           ; $56d5: $eb
	ld [hl], c                                       ; $56d6: $71
	ld c, h                                          ; $56d7: $4c
	and b                                            ; $56d8: $a0
	db $eb                                           ; $56d9: $eb
	ld d, c                                          ; $56da: $51
	inc [hl]                                         ; $56db: $34
	ld c, a                                          ; $56dc: $4f
	add hl, sp                                       ; $56dd: $39
	ld d, c                                          ; $56de: $51
	sbc l                                            ; $56df: $9d
	inc de                                           ; $56e0: $13
	ld l, a                                          ; $56e1: $6f
	db $ec                                           ; $56e2: $ec
	inc h                                            ; $56e3: $24
	ld b, l                                          ; $56e4: $45
	and b                                            ; $56e5: $a0
	sub c                                            ; $56e6: $91
	ldh a, [$59]                                     ; $56e7: $f0 $59
	ld b, d                                          ; $56e9: $42
	ld d, h                                          ; $56ea: $54
	ld c, c                                          ; $56eb: $49
	ld b, l                                          ; $56ec: $45
	ld c, h                                          ; $56ed: $4c
	and b                                            ; $56ee: $a0
	cpl                                              ; $56ef: $2f
	ld b, e                                          ; $56f0: $43
	db $ec                                           ; $56f1: $ec
	pop hl                                           ; $56f2: $e1
	inc [hl]                                         ; $56f3: $34
	db $eb                                           ; $56f4: $eb
	rst FarCall                                          ; $56f5: $f7
	and c                                            ; $56f6: $a1
	db $ec                                           ; $56f7: $ec
	ld a, [de]                                       ; $56f8: $1a
	xor h                                            ; $56f9: $ac
	xor $06                                          ; $56fa: $ee $06
	ld b, a                                          ; $56fc: $47
	ld a, d                                          ; $56fd: $7a
	ld e, a                                          ; $56fe: $5f
	add hl, sp                                       ; $56ff: $39
	ld c, c                                          ; $5700: $49
	ld [hl], a                                       ; $5701: $77
	dec sp                                           ; $5702: $3b
	ccf                                              ; $5703: $3f
	and b                                            ; $5704: $a0
	ld b, b                                          ; $5705: $40
	ld c, l                                          ; $5706: $4d
	ld e, e                                          ; $5707: $5b
	ld d, [hl]                                       ; $5708: $56
	xor h                                            ; $5709: $ac
	or b                                             ; $570a: $b0
	and b                                            ; $570b: $a0
	ld b, b                                          ; $570c: $40
	add hl, sp                                       ; $570d: $39
	xor l                                            ; $570e: $ad
	ld h, c                                          ; $570f: $61
	ld h, [hl]                                       ; $5710: $66
	dec sp                                           ; $5711: $3b
	ldh a, [c]                                       ; $5712: $f2
	sbc $57                                          ; $5713: $de $57
	ldh a, [$8d]                                     ; $5715: $f0 $8d
	ldh a, [$9e]                                     ; $5717: $f0 $9e
	ld c, h                                          ; $5719: $4c
	xor b                                            ; $571a: $a8
	ld b, b                                          ; $571b: $40
	ld c, l                                          ; $571c: $4d
	ld e, e                                          ; $571d: $5b
	ld d, [hl]                                       ; $571e: $56
	ld c, b                                          ; $571f: $48
	and b                                            ; $5720: $a0
	ld b, [hl]                                       ; $5721: $46
	dec sp                                           ; $5722: $3b
	inc [hl]                                         ; $5723: $34
	ld d, $a8                                        ; $5724: $16 $a8
	ld l, d                                          ; $5726: $6a
	ld a, d                                          ; $5727: $7a
	ld d, a                                          ; $5728: $57
	ld a, [hl-]                                      ; $5729: $3a
	ld b, d                                          ; $572a: $42
	and c                                            ; $572b: $a1
	call c, $d4a8                                    ; $572c: $dc $a8 $d4
	ld h, e                                          ; $572f: $63
	ld b, l                                          ; $5730: $45
	and b                                            ; $5731: $a0
	jp hl                                            ; $5732: $e9


	jr nz, jr_095_56d5                               ; $5733: $20 $a0

	call nc, $4563                                   ; $5735: $d4 $63 $45
	xor b                                            ; $5738: $a8
	or b                                             ; $5739: $b0
	and b                                            ; $573a: $a0
	cpl                                              ; $573b: $2f
	ld [hl-], a                                      ; $573c: $32
	halt                                             ; $573d: $76
	ld c, e                                          ; $573e: $4b
	db $ec                                           ; $573f: $ec
	pop hl                                           ; $5740: $e1
	ld c, c                                          ; $5741: $49
	xor h                                            ; $5742: $ac
	ld [$a32a], a                                    ; $5743: $ea $2a $a3
	db $ec                                           ; $5746: $ec
	cp c                                             ; $5747: $b9
	xor b                                            ; $5748: $a8
	ld l, a                                          ; $5749: $6f
	ld c, a                                          ; $574a: $4f
	ld b, [hl]                                       ; $574b: $46
	ld d, d                                          ; $574c: $52
	ld d, a                                          ; $574d: $57
	inc de                                           ; $574e: $13
	ldh a, [$dd]                                     ; $574f: $f0 $dd
	ldh a, [$9c]                                     ; $5751: $f0 $9c
	ld a, $3f                                        ; $5753: $3e $3f
	ld a, [hl-]                                      ; $5755: $3a
	jr c, jr_095_579a                                ; $5756: $38 $42

	ld b, l                                          ; $5758: $45
	ld c, h                                          ; $5759: $4c
	and b                                            ; $575a: $a0
	cpl                                              ; $575b: $2f
	ld b, e                                          ; $575c: $43
	rst JumpTable                                          ; $575d: $c7
	ld a, [hl-]                                      ; $575e: $3a
	ld b, d                                          ; $575f: $42
	xor b                                            ; $5760: $a8
	ld [hl-], a                                      ; $5761: $32
	ld a, [hl]                                       ; $5762: $7e
	ld d, l                                          ; $5763: $55
	ld c, e                                          ; $5764: $4b
	ld a, [hl-]                                      ; $5765: $3a
	jr c, jr_095_57b1                                ; $5766: $38 $49

	ld [hl], a                                       ; $5768: $77
	add hl, sp                                       ; $5769: $39
	ld e, l                                          ; $576a: $5d
	ld e, d                                          ; $576b: $5a
	ld c, b                                          ; $576c: $48
	and e                                            ; $576d: $a3
	ldh a, [$f5]                                     ; $576e: $f0 $f5
	add hl, sp                                       ; $5770: $39
	adc a                                            ; $5771: $8f
	ld b, h                                          ; $5772: $44
	ld e, l                                          ; $5773: $5d
	ld e, d                                          ; $5774: $5a
	inc de                                           ; $5775: $13
	ld h, h                                          ; $5776: $64
	pop af                                           ; $5777: $f1
	ld d, a                                          ; $5778: $57
	jr c, @+$49                                      ; $5779: $38 $47

	inc de                                           ; $577b: $13
	ld [$4c20], a                                    ; $577c: $ea $20 $4c
	and b                                            ; $577f: $a0
	ld [$4c20], a                                    ; $5780: $ea $20 $4c
	and b                                            ; $5783: $a0
	ldh a, [$f3]                                     ; $5784: $f0 $f3
	ld c, l                                          ; $5786: $4d
	ld c, [hl]                                       ; $5787: $4e
	ld b, d                                          ; $5788: $42
	ld c, e                                          ; $5789: $4b
	xor h                                            ; $578a: $ac
	db $ed                                           ; $578b: $ed
	xor [hl]                                         ; $578c: $ae
	ld c, d                                          ; $578d: $4a
	ldh a, [$64]                                     ; $578e: $f0 $64
	ld c, h                                          ; $5790: $4c
	and b                                            ; $5791: $a0
	cpl                                              ; $5792: $2f
	ld b, e                                          ; $5793: $43
	ld b, b                                          ; $5794: $40
	add hl, sp                                       ; $5795: $39
	ld b, h                                          ; $5796: $44
	ld c, h                                          ; $5797: $4c
	xor b                                            ; $5798: $a8
	ld c, c                                          ; $5799: $49

jr_095_579a:
	ld d, a                                          ; $579a: $57
	ld b, [hl]                                       ; $579b: $46
	ld e, [hl]                                       ; $579c: $5e
	sbc h                                            ; $579d: $9c
	xor h                                            ; $579e: $ac
	ldh a, [$65]                                     ; $579f: $f0 $65
	ldh a, [$75]                                     ; $57a1: $f0 $75
	ld b, a                                          ; $57a3: $47
	ld a, a                                          ; $57a4: $7f
	ld h, d                                          ; $57a5: $62
	ldh a, [$9a]                                     ; $57a6: $f0 $9a
	ld e, l                                          ; $57a8: $5d
	ld a, [hl-]                                      ; $57a9: $3a
	ld d, l                                          ; $57aa: $55
	ld h, c                                          ; $57ab: $61
	ld d, [hl]                                       ; $57ac: $56
	and b                                            ; $57ad: $a0
	db $eb                                           ; $57ae: $eb
	rst JumpTable                                          ; $57af: $c7
	inc de                                           ; $57b0: $13

jr_095_57b1:
	ld c, d                                          ; $57b1: $4a
	ld e, h                                          ; $57b2: $5c
	ld c, [hl]                                       ; $57b3: $4e
	ld c, c                                          ; $57b4: $49
	jr c, jr_095_57ef                                ; $57b5: $38 $38

	ld h, e                                          ; $57b7: $63
	ld c, h                                          ; $57b8: $4c
	and b                                            ; $57b9: $a0
	cpl                                              ; $57ba: $2f
	ld b, e                                          ; $57bb: $43
	ld b, c                                          ; $57bc: $41
	ld e, c                                          ; $57bd: $59
	ld [hl], $23                                     ; $57be: $36 $23
	inc de                                           ; $57c0: $13
	ldh a, [$b6]                                     ; $57c1: $f0 $b6
	ld b, a                                          ; $57c3: $47
	ldh a, [rAUD1LOW]                                ; $57c4: $f0 $13
	jr c, jr_095_5802                                ; $57c6: $38 $3a

	ld [hl], h                                       ; $57c8: $74
	xor b                                            ; $57c9: $a8
	db $ec                                           ; $57ca: $ec
	pop hl                                           ; $57cb: $e1
	ld c, e                                          ; $57cc: $4b
	and c                                            ; $57cd: $a1
	call c, $f0ad                                    ; $57ce: $dc $ad $f0
	ccf                                              ; $57d1: $3f
	ld c, d                                          ; $57d2: $4a
	ld c, a                                          ; $57d3: $4f
	xor h                                            ; $57d4: $ac
	ldh a, [$bd]                                     ; $57d5: $f0 $bd
	jr c, jr_095_5818                                ; $57d7: $38 $3f

	ld b, l                                          ; $57d9: $45
	add hl, sp                                       ; $57da: $39
	inc a                                            ; $57db: $3c
	ld a, [hl-]                                      ; $57dc: $3a
	and b                                            ; $57dd: $a0
	cpl                                              ; $57de: $2f
	ld b, e                                          ; $57df: $43
	ldh a, [$3f]                                     ; $57e0: $f0 $3f
	ld c, h                                          ; $57e2: $4c
	add l                                            ; $57e3: $85
	ld c, b                                          ; $57e4: $48
	dec [hl]                                         ; $57e5: $35
	rla                                              ; $57e6: $17
	ld [hl-], a                                      ; $57e7: $32
	pop af                                           ; $57e8: $f1
	cpl                                              ; $57e9: $2f
	ld c, c                                          ; $57ea: $49
	inc a                                            ; $57eb: $3c
	inc [hl]                                         ; $57ec: $34
	db $ec                                           ; $57ed: $ec
	db $fc                                           ; $57ee: $fc

jr_095_57ef:
	ld b, a                                          ; $57ef: $47
	ld c, e                                          ; $57f0: $4b
	inc de                                           ; $57f1: $13
	ld h, a                                          ; $57f2: $67
	inc a                                            ; $57f3: $3c
	ld a, [hl-]                                      ; $57f4: $3a
	jr c, @+$44                                      ; $57f5: $38 $42

	inc a                                            ; $57f7: $3c
	ld a, [hl-]                                      ; $57f8: $3a
	ld c, b                                          ; $57f9: $48
	and e                                            ; $57fa: $a3
	cpl                                              ; $57fb: $2f
	ld b, e                                          ; $57fc: $43
	ret nz                                           ; $57fd: $c0

	and b                                            ; $57fe: $a0
	ldh a, [$d7]                                     ; $57ff: $f0 $d7
	ldh a, [c]                                       ; $5801: $f2

jr_095_5802:
	inc bc                                           ; $5802: $03
	ld d, e                                          ; $5803: $53
	ld c, d                                          ; $5804: $4a
	ld e, h                                          ; $5805: $5c
	ld c, [hl]                                       ; $5806: $4e
	ld c, c                                          ; $5807: $49
	xor h                                            ; $5808: $ac
	pop af                                           ; $5809: $f1
	ld l, [hl]                                       ; $580a: $6e
	ldh a, [$cf]                                     ; $580b: $f0 $cf
	ld c, c                                          ; $580d: $49
	db $ed                                           ; $580e: $ed
	xor [hl]                                         ; $580f: $ae
	ld a, [hl-]                                      ; $5810: $3a
	ld b, d                                          ; $5811: $42
	ld b, l                                          ; $5812: $45
	ld c, h                                          ; $5813: $4c
	and b                                            ; $5814: $a0
	ld l, a                                          ; $5815: $6f
	xor h                                            ; $5816: $ac
	pop af                                           ; $5817: $f1

jr_095_5818:
	dec hl                                           ; $5818: $2b
	pop af                                           ; $5819: $f1
	db $ec                                           ; $581a: $ec
	db $eb                                           ; $581b: $eb
	ld e, c                                          ; $581c: $59
	inc a                                            ; $581d: $3c
	ld a, [hl-]                                      ; $581e: $3a
	and b                                            ; $581f: $a0
	cpl                                              ; $5820: $2f
	ld b, e                                          ; $5821: $43
	halt                                             ; $5822: $76
	ld c, a                                          ; $5823: $4f
	inc [hl]                                         ; $5824: $34
	db $eb                                           ; $5825: $eb
	ld e, c                                          ; $5826: $59
	inc a                                            ; $5827: $3c
	ld a, [hl-]                                      ; $5828: $3a
	and b                                            ; $5829: $a0
	ld c, a                                          ; $582a: $4f
	add hl, sp                                       ; $582b: $39
	inc [hl]                                         ; $582c: $34
	ldh a, [rAUD1ENV]                                ; $582d: $f0 $12
	sbc a                                            ; $582f: $9f
	ldh a, [rTIMA]                                   ; $5830: $f0 $05
	pop af                                           ; $5832: $f1
	rrca                                             ; $5833: $0f
	ld c, c                                          ; $5834: $49
	ld c, a                                          ; $5835: $4f
	inc de                                           ; $5836: $13
	ld h, h                                          ; $5837: $64
	ldh a, [$34]                                     ; $5838: $f0 $34
	ld c, l                                          ; $583a: $4d
	ld a, [hl-]                                      ; $583b: $3a
	ld b, d                                          ; $583c: $42
	ld c, h                                          ; $583d: $4c
	and b                                            ; $583e: $a0
	ld a, b                                          ; $583f: $78
	ldh a, [rAUD1HIGH]                               ; $5840: $f0 $14
	ld c, a                                          ; $5842: $4f
	xor h                                            ; $5843: $ac
	jr c, jr_095_587e                                ; $5844: $38 $38

	ldh a, [rAUD1HIGH]                               ; $5846: $f0 $14
	ld b, h                                          ; $5848: $44
	ld c, c                                          ; $5849: $49
	jr c, @+$3a                                      ; $584a: $38 $38

	ld h, e                                          ; $584c: $63
	ld c, h                                          ; $584d: $4c
	and b                                            ; $584e: $a0
	cpl                                              ; $584f: $2f
	ld b, e                                          ; $5850: $43
	adc b                                            ; $5851: $88
	sub c                                            ; $5852: $91
	inc [hl]                                         ; $5853: $34
	ld b, b                                          ; $5854: $40
	add hl, sp                                       ; $5855: $39
	ld b, h                                          ; $5856: $44
	ld c, c                                          ; $5857: $49
	jr c, @+$3a                                      ; $5858: $38 $38

	ld c, h                                          ; $585a: $4c
	and b                                            ; $585b: $a0
	ldh a, [$31]                                     ; $585c: $f0 $31
	ld c, e                                          ; $585e: $4b
	inc [hl]                                         ; $585f: $34
	ld c, a                                          ; $5860: $4f
	add hl, sp                                       ; $5861: $39
	ld d, c                                          ; $5862: $51
	sbc l                                            ; $5863: $9d
	inc de                                           ; $5864: $13
	ld l, a                                          ; $5865: $6f
	db $ec                                           ; $5866: $ec
	inc h                                            ; $5867: $24
	ld a, [hl-]                                      ; $5868: $3a
	ld b, d                                          ; $5869: $42
	ld b, l                                          ; $586a: $45
	and b                                            ; $586b: $a0
	cpl                                              ; $586c: $2f
	ld b, e                                          ; $586d: $43
	ld b, b                                          ; $586e: $40
	add hl, sp                                       ; $586f: $39
	ld b, h                                          ; $5870: $44
	dec sp                                           ; $5871: $3b
	ld e, l                                          ; $5872: $5d
	xor c                                            ; $5873: $a9
	db $ed                                           ; $5874: $ed
	ld e, [hl]                                       ; $5875: $5e
	ldh a, [$f4]                                     ; $5876: $f0 $f4
	ld e, [hl]                                       ; $5878: $5e
	ccf                                              ; $5879: $3f
	ld a, [hl-]                                      ; $587a: $3a
	jr c, jr_095_58c2                                ; $587b: $38 $45

	and b                                            ; $587d: $a0

jr_095_587e:
	ld b, b                                          ; $587e: $40
	ld c, l                                          ; $587f: $4d
	ld e, e                                          ; $5880: $5b
	ld d, [hl]                                       ; $5881: $56
	inc [hl]                                         ; $5882: $34
	ldh a, [$f4]                                     ; $5883: $f0 $f4
	ld e, [hl]                                       ; $5885: $5e
	ccf                                              ; $5886: $3f
	inc de                                           ; $5887: $13
	ld h, h                                          ; $5888: $64
	jr c, jr_095_58ca                                ; $5889: $38 $3f

	ld c, h                                          ; $588b: $4c
	dec [hl]                                         ; $588c: $35
	di                                               ; $588d: $f3
	ld d, e                                          ; $588e: $53
	ldh a, [rLYC]                                    ; $588f: $f0 $45
	ldh a, [$e5]                                     ; $5891: $f0 $e5
	pop af                                           ; $5893: $f1
	sbc [hl]                                         ; $5894: $9e
	ld l, b                                          ; $5895: $68
	ld b, h                                          ; $5896: $44
	inc a                                            ; $5897: $3c
	ld d, b                                          ; $5898: $50
	and b                                            ; $5899: $a0
	cpl                                              ; $589a: $2f
	ld b, e                                          ; $589b: $43
	ld b, [hl]                                       ; $589c: $46
	dec sp                                           ; $589d: $3b
	xor h                                            ; $589e: $ac
	ld c, a                                          ; $589f: $4f
	add hl, sp                                       ; $58a0: $39
	pop af                                           ; $58a1: $f1
	dec d                                            ; $58a2: $15
	ld c, l                                          ; $58a3: $4d
	ld h, c                                          ; $58a4: $61
	ld d, [hl]                                       ; $58a5: $56
	dec sp                                           ; $58a6: $3b
	dec a                                            ; $58a7: $3d
	ld b, l                                          ; $58a8: $45
	and b                                            ; $58a9: $a0
	cpl                                              ; $58aa: $2f
	ld b, e                                          ; $58ab: $43
	db $ed                                           ; $58ac: $ed
	ld d, e                                          ; $58ad: $53
	xor h                                            ; $58ae: $ac
	db $eb                                           ; $58af: $eb
	rst FarCall                                          ; $58b0: $f7
	and c                                            ; $58b1: $a1
	sbc l                                            ; $58b2: $9d
	inc [hl]                                         ; $58b3: $34
	ldh a, [c]                                       ; $58b4: $f2
	and [hl]                                         ; $58b5: $a6
	ldh a, [$59]                                     ; $58b6: $f0 $59
	ld c, h                                          ; $58b8: $4c
	xor b                                            ; $58b9: $a8
	xor $06                                          ; $58ba: $ee $06
	ld b, a                                          ; $58bc: $47
	ld a, d                                          ; $58bd: $7a
	dec sp                                           ; $58be: $3b
	ccf                                              ; $58bf: $3f
	ld c, a                                          ; $58c0: $4f
	inc de                                           ; $58c1: $13

jr_095_58c2:
	ld [$a0e7], a                                    ; $58c2: $ea $e7 $a0
	cpl                                              ; $58c5: $2f
	xor $1f                                          ; $58c6: $ee $1f
	inc [hl]                                         ; $58c8: $34
	ld h, h                                          ; $58c9: $64

jr_095_58ca:
	ldh a, [$c8]                                     ; $58ca: $f0 $c8
	jr c, jr_095_591f                                ; $58cc: $38 $51

	ld c, [hl]                                       ; $58ce: $4e
	ld b, l                                          ; $58cf: $45
	add hl, bc                                       ; $58d0: $09
	ld l, a                                          ; $58d1: $6f
	ld b, d                                          ; $58d2: $42
	ldh a, [$3b]                                     ; $58d3: $f0 $3b
	jr c, jr_095_5939                                ; $58d5: $38 $62

	pop af                                           ; $58d7: $f1
	pop bc                                           ; $58d8: $c1
	ld c, [hl]                                       ; $58d9: $4e
	add h                                            ; $58da: $84
	ld c, e                                          ; $58db: $4b
	inc de                                           ; $58dc: $13
	jr c, jr_095_5919                                ; $58dd: $38 $3a

	jr c, jr_095_592a                                ; $58df: $38 $49

	ld [hl], a                                       ; $58e1: $77
	add hl, sp                                       ; $58e2: $39
	ld e, l                                          ; $58e3: $5d
	ld e, d                                          ; $58e4: $5a
	xor b                                            ; $58e5: $a8
	ld e, b                                          ; $58e6: $58
	ld [hl], h                                       ; $58e7: $74
	inc [hl]                                         ; $58e8: $34
	ld [$a0a9], a                                    ; $58e9: $ea $a9 $a0
	cpl                                              ; $58ec: $2f
	jr c, jr_095_5927                                ; $58ed: $38 $38

	ld b, l                                          ; $58ef: $45
	dec [hl]                                         ; $58f0: $35
	pop af                                           ; $58f1: $f1
	ld b, $f1                                        ; $58f2: $06 $f1
	ld a, $51                                        ; $58f4: $3e $51
	ld c, [hl]                                       ; $58f6: $4e
	ld b, l                                          ; $58f7: $45
	add hl, bc                                       ; $58f8: $09
	ld d, h                                          ; $58f9: $54
	ld b, d                                          ; $58fa: $42
	ld l, a                                          ; $58fb: $6f
	ld b, d                                          ; $58fc: $42
	ldh a, [$3b]                                     ; $58fd: $f0 $3b
	jr c, jr_095_5963                                ; $58ff: $38 $62

	inc de                                           ; $5901: $13
	pop af                                           ; $5902: $f1
	pop bc                                           ; $5903: $c1
	ld c, [hl]                                       ; $5904: $4e
	ld a, [hl-]                                      ; $5905: $3a
	ld b, c                                          ; $5906: $41
	ccf                                              ; $5907: $3f
	inc [hl]                                         ; $5908: $34

jr_095_5909:
	db $eb                                           ; $5909: $eb
	ld a, d                                          ; $590a: $7a
	jr c, jr_095_5970                                ; $590b: $38 $63

	xor b                                            ; $590d: $a8
	ldh a, [rHDMA5]                                  ; $590e: $f0 $55
	ldh a, [rBCPS]                                   ; $5910: $f0 $68
	ld d, c                                          ; $5912: $51
	ld c, [hl]                                       ; $5913: $4e
	ld h, e                                          ; $5914: $63
	and b                                            ; $5915: $a0
	xor $14                                          ; $5916: $ee $14
	inc [hl]                                         ; $5918: $34

jr_095_5919:
	ld d, $a8                                        ; $5919: $16 $a8
	ld l, d                                          ; $591b: $6a
	ld a, d                                          ; $591c: $7a
	ld d, a                                          ; $591d: $57
	inc a                                            ; $591e: $3c

jr_095_591f:
	ld a, $50                                        ; $591f: $3e $50
	and c                                            ; $5921: $a1
	call c, Call_095_7aa8                            ; $5922: $dc $a8 $7a
	dec sp                                           ; $5925: $3b
	ccf                                              ; $5926: $3f

jr_095_5927:
	ld c, a                                          ; $5927: $4f
	ld b, l                                          ; $5928: $45
	ld d, l                                          ; $5929: $55

jr_095_592a:
	ccf                                              ; $592a: $3f
	ld b, l                                          ; $592b: $45
	and b                                            ; $592c: $a0
	cpl                                              ; $592d: $2f
	ld b, e                                          ; $592e: $43
	ld b, b                                          ; $592f: $40
	ld c, l                                          ; $5930: $4d
	ld e, e                                          ; $5931: $5b
	ld d, [hl]                                       ; $5932: $56
	inc [hl]                                         ; $5933: $34
	ld a, d                                          ; $5934: $7a
	ld e, a                                          ; $5935: $5f
	add hl, sp                                       ; $5936: $39
	and b                                            ; $5937: $a0
	ld b, b                                          ; $5938: $40

jr_095_5939:
	add hl, sp                                       ; $5939: $39
	xor b                                            ; $593a: $a8
	ld e, b                                          ; $593b: $58
	ld b, l                                          ; $593c: $45
	ld a, [hl-]                                      ; $593d: $3a
	ld d, b                                          ; $593e: $50
	and b                                            ; $593f: $a0
	ld b, [hl]                                       ; $5940: $46
	dec sp                                           ; $5941: $3b
	inc [hl]                                         ; $5942: $34
	ld d, $a8                                        ; $5943: $16 $a8
	ld l, d                                          ; $5945: $6a
	ld a, d                                          ; $5946: $7a
	ld d, a                                          ; $5947: $57
	inc a                                            ; $5948: $3c
	ld a, $50                                        ; $5949: $3e $50
	and c                                            ; $594b: $a1
	ld l, a                                          ; $594c: $6f
	inc [hl]                                         ; $594d: $34
	ldh a, [$34]                                     ; $594e: $f0 $34
	ld b, d                                          ; $5950: $42
	ldh a, [$ab]                                     ; $5951: $f0 $ab
	ld b, d                                          ; $5953: $42
	adc h                                            ; $5954: $8c
	ld c, c                                          ; $5955: $49
	inc de                                           ; $5956: $13
	ld [$a0cf], a                                    ; $5957: $ea $cf $a0
	cpl                                              ; $595a: $2f
	ld b, e                                          ; $595b: $43
	rst JumpTable                                          ; $595c: $c7
	xor b                                            ; $595d: $a8
	or h                                             ; $595e: $b4
	inc [hl]                                         ; $595f: $34
	ld h, h                                          ; $5960: $64
	ldh a, [$bc]                                     ; $5961: $f0 $bc

jr_095_5963:
	ld b, a                                          ; $5963: $47
	and b                                            ; $5964: $a0
	cpl                                              ; $5965: $2f
	ld [hl-], a                                      ; $5966: $32
	halt                                             ; $5967: $76
	ld c, e                                          ; $5968: $4b
	db $ed                                           ; $5969: $ed
	ld d, e                                          ; $596a: $53
	ld c, c                                          ; $596b: $49
	xor h                                            ; $596c: $ac
	ld [$a32a], a                                    ; $596d: $ea $2a $a3

jr_095_5970:
	ld b, b                                          ; $5970: $40
	ld c, l                                          ; $5971: $4d
	ld e, e                                          ; $5972: $5b
	ld d, [hl]                                       ; $5973: $56
	xor h                                            ; $5974: $ac
	ld d, h                                          ; $5975: $54
	ld d, h                                          ; $5976: $54
	ld c, d                                          ; $5977: $4a
	ld h, h                                          ; $5978: $64
	ldh a, [$34]                                     ; $5979: $f0 $34
	ld c, l                                          ; $597b: $4d
	ld a, $52                                        ; $597c: $3e $52
	ld a, $66                                        ; $597e: $3e $66
	add hl, sp                                       ; $5980: $39
	xor b                                            ; $5981: $a8
	ld [$a021], a                                    ; $5982: $ea $21 $a0
	cpl                                              ; $5985: $2f
	ld b, e                                          ; $5986: $43
	jr c, jr_095_5909                                ; $5987: $38 $80

	ld c, a                                          ; $5989: $4f
	inc [hl]                                         ; $598a: $34
	ldh a, [rSVBK]                                   ; $598b: $f0 $70
	ld d, d                                          ; $598d: $52
	ld c, d                                          ; $598e: $4a
	inc de                                           ; $598f: $13
	pop af                                           ; $5990: $f1
	pop af                                           ; $5991: $f1
	ld d, b                                          ; $5992: $50
	ld a, c                                          ; $5993: $79
	ccf                                              ; $5994: $3f
	ld d, l                                          ; $5995: $55
	ld c, l                                          ; $5996: $4d
	ld a, [hl-]                                      ; $5997: $3a
	jr c, jr_095_59db                                ; $5998: $38 $41

	ld b, h                                          ; $599a: $44
	ld b, l                                          ; $599b: $45
	ld a, [hl-]                                      ; $599c: $3a
	ld [hl], h                                       ; $599d: $74
	and b                                            ; $599e: $a0
	cpl                                              ; $599f: $2f
	ld b, e                                          ; $59a0: $43
	db $eb                                           ; $59a1: $eb
	ld d, c                                          ; $59a2: $51
	xor h                                            ; $59a3: $ac
	ld c, a                                          ; $59a4: $4f
	add hl, sp                                       ; $59a5: $39
	ld d, c                                          ; $59a6: $51
	sbc l                                            ; $59a7: $9d
	inc [hl]                                         ; $59a8: $34
	ldh a, [$60]                                     ; $59a9: $f0 $60
	add e                                            ; $59ab: $83
	ld l, c                                          ; $59ac: $69
	ld b, h                                          ; $59ad: $44
	ld c, h                                          ; $59ae: $4c
	and b                                            ; $59af: $a0
	ld b, b                                          ; $59b0: $40
	ld b, c                                          ; $59b1: $41
	ld a, [hl-]                                      ; $59b2: $3a
	sbc d                                            ; $59b3: $9a
	xor h                                            ; $59b4: $ac
	ld l, a                                          ; $59b5: $6f
	ld b, a                                          ; $59b6: $47
	ld c, e                                          ; $59b7: $4b
	db $ed                                           ; $59b8: $ed
	ld a, a                                          ; $59b9: $7f
	ld a, [hl-]                                      ; $59ba: $3a
	jr c, jr_095_5a20                                ; $59bb: $38 $63

	and b                                            ; $59bd: $a0
	cpl                                              ; $59be: $2f
	ld b, e                                          ; $59bf: $43
	ld e, [hl]                                       ; $59c0: $5e
	dec sp                                           ; $59c1: $3b
	inc [hl]                                         ; $59c2: $34
	db $ec                                           ; $59c3: $ec
	db $d3                                           ; $59c4: $d3
	and c                                            ; $59c5: $a1
	ld d, h                                          ; $59c6: $54
	ld b, d                                          ; $59c7: $42
	adc d                                            ; $59c8: $8a
	db $f4                                           ; $59c9: $f4
	ld l, b                                          ; $59ca: $68
	ld e, b                                          ; $59cb: $58
	ld e, [hl]                                       ; $59cc: $5e
	ld b, [hl]                                       ; $59cd: $46
	ld c, l                                          ; $59ce: $4d
	ld a, e                                          ; $59cf: $7b
	xor h                                            ; $59d0: $ac
	ld l, e                                          ; $59d1: $6b
	ld c, a                                          ; $59d2: $4f
	ldh a, [$71]                                     ; $59d3: $f0 $71
	ld c, l                                          ; $59d5: $4d
	ld c, [hl]                                       ; $59d6: $4e
	ld c, a                                          ; $59d7: $4f
	ld b, d                                          ; $59d8: $42
	ld c, e                                          ; $59d9: $4b
	ld a, [hl-]                                      ; $59da: $3a

jr_095_59db:
	jr c, jr_095_5a40                                ; $59db: $38 $63

	xor b                                            ; $59dd: $a8
	ldh a, [$08]                                     ; $59de: $f0 $08
	ld e, c                                          ; $59e0: $59
	ldh a, [$08]                                     ; $59e1: $f0 $08
	ldh a, [$08]                                     ; $59e3: $f0 $08
	ldh a, [$08]                                     ; $59e5: $f0 $08
	ldh a, [$08]                                     ; $59e7: $f0 $08
	ldh a, [$08]                                     ; $59e9: $f0 $08
	and b                                            ; $59eb: $a0
	cpl                                              ; $59ec: $2f
	ld b, e                                          ; $59ed: $43
	xor $10                                          ; $59ee: $ee $10
	xor $10                                          ; $59f0: $ee $10
	and b                                            ; $59f2: $a0
	cpl                                              ; $59f3: $2f
	ld b, e                                          ; $59f4: $43
	ldh a, [rSCX]                                    ; $59f5: $f0 $43
	ldh a, [$b8]                                     ; $59f7: $f0 $b8
	adc a                                            ; $59f9: $8f
	ld b, a                                          ; $59fa: $47
	inc de                                           ; $59fb: $13
	ld [$a0c7], a                                    ; $59fc: $ea $c7 $a0
	cpl                                              ; $59ff: $2f
	ld b, e                                          ; $5a00: $43
	ldh a, [$aa]                                     ; $5a01: $f0 $aa
	adc c                                            ; $5a03: $89
	adc a                                            ; $5a04: $8f
	ld b, a                                          ; $5a05: $47
	inc de                                           ; $5a06: $13
	ld [$a0c7], a                                    ; $5a07: $ea $c7 $a0
	cpl                                              ; $5a0a: $2f
	ld b, e                                          ; $5a0b: $43
	adc d                                            ; $5a0c: $8a
	ldh a, [$73]                                     ; $5a0d: $f0 $73
	adc a                                            ; $5a0f: $8f
	ld b, a                                          ; $5a10: $47
	inc de                                           ; $5a11: $13
	ld [$a0c7], a                                    ; $5a12: $ea $c7 $a0
	cpl                                              ; $5a15: $2f
	ld b, e                                          ; $5a16: $43
	db $ec                                           ; $5a17: $ec
	ret nc                                           ; $5a18: $d0

	ld b, a                                          ; $5a19: $47
	inc de                                           ; $5a1a: $13
	ld [$a0c7], a                                    ; $5a1b: $ea $c7 $a0
	pop af                                           ; $5a1e: $f1
	ld l, a                                          ; $5a1f: $6f

jr_095_5a20:
	ld b, d                                          ; $5a20: $42
	adc c                                            ; $5a21: $89
	sbc a                                            ; $5a22: $9f
	ld b, d                                          ; $5a23: $42
	db $ed                                           ; $5a24: $ed
	ld h, d                                          ; $5a25: $62
	ld c, a                                          ; $5a26: $4f
	inc de                                           ; $5a27: $13
	ld a, b                                          ; $5a28: $78
	ld c, [hl]                                       ; $5a29: $4e
	inc a                                            ; $5a2a: $3c
	ld d, b                                          ; $5a2b: $50
	inc [hl]                                         ; $5a2c: $34
	pop de                                           ; $5a2d: $d1
	add a                                            ; $5a2e: $87
	ldh a, [$5d]                                     ; $5a2f: $f0 $5d
	ld b, h                                          ; $5a31: $44
	ld h, e                                          ; $5a32: $63
	and b                                            ; $5a33: $a0
	ldh a, [$cc]                                     ; $5a34: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $5a36: $f0 $88
	ld d, e                                          ; $5a38: $53
	ldh a, [$c9]                                     ; $5a39: $f0 $c9
	jr c, jr_095_5a7c                                ; $5a3b: $38 $3f

	dec a                                            ; $5a3d: $3d
	ld d, b                                          ; $5a3e: $50
	xor h                                            ; $5a3f: $ac

jr_095_5a40:
	ld h, a                                          ; $5a40: $67
	dec sp                                           ; $5a41: $3b
	ccf                                              ; $5a42: $3f
	ld b, [hl]                                       ; $5a43: $46
	ldh a, [rSB]                                     ; $5a44: $f0 $01
	ccf                                              ; $5a46: $3f
	ld c, a                                          ; $5a47: $4f
	jr c, jr_095_5a82                                ; $5a48: $38 $38

	ld h, e                                          ; $5a4a: $63
	and b                                            ; $5a4b: $a0
	cpl                                              ; $5a4c: $2f
	ld b, e                                          ; $5a4d: $43
	sub b                                            ; $5a4e: $90
	ld a, $6c                                        ; $5a4f: $3e $6c
	ld b, a                                          ; $5a51: $47
	sbc c                                            ; $5a52: $99
	dec sp                                           ; $5a53: $3b
	ccf                                              ; $5a54: $3f
	ld c, [hl]                                       ; $5a55: $4e
	ld b, l                                          ; $5a56: $45
	and b                                            ; $5a57: $a0
	db $ec                                           ; $5a58: $ec
	db $d3                                           ; $5a59: $d3
	inc [hl]                                         ; $5a5a: $34
	ld l, a                                          ; $5a5b: $6f
	ld c, a                                          ; $5a5c: $4f
	inc de                                           ; $5a5d: $13
	sub h                                            ; $5a5e: $94
	ldh a, [$30]                                     ; $5a5f: $f0 $30
	ld a, $3a                                        ; $5a61: $3e $3a
	ld e, l                                          ; $5a63: $5d
	ld c, l                                          ; $5a64: $4d
	ld a, e                                          ; $5a65: $7b
	inc de                                           ; $5a66: $13
	db $eb                                           ; $5a67: $eb
	push af                                          ; $5a68: $f5
	inc a                                            ; $5a69: $3c
	ld a, $50                                        ; $5a6a: $3e $50
	and c                                            ; $5a6c: $a1
	cpl                                              ; $5a6d: $2f
	ld b, e                                          ; $5a6e: $43
	ld d, d                                          ; $5a6f: $52
	inc [hl]                                         ; $5a70: $34
	ld b, b                                          ; $5a71: $40
	add hl, sp                                       ; $5a72: $39
	add d                                            ; $5a73: $82
	ld h, e                                          ; $5a74: $63
	sbc h                                            ; $5a75: $9c
	ld b, a                                          ; $5a76: $47
	xor h                                            ; $5a77: $ac
	ldh a, [$65]                                     ; $5a78: $f0 $65
	ldh a, [$75]                                     ; $5a7a: $f0 $75

jr_095_5a7c:
	ld b, a                                          ; $5a7c: $47
	ld a, a                                          ; $5a7d: $7f
	ld h, d                                          ; $5a7e: $62
	ldh a, [$9a]                                     ; $5a7f: $f0 $9a
	ld e, l                                          ; $5a81: $5d

jr_095_5a82:
	ccf                                              ; $5a82: $3f
	xor h                                            ; $5a83: $ac
	sub d                                            ; $5a84: $92
	adc [hl]                                         ; $5a85: $8e
	ld e, a                                          ; $5a86: $5f
	add hl, sp                                       ; $5a87: $39
	ld b, l                                          ; $5a88: $45
	and b                                            ; $5a89: $a0
	db $eb                                           ; $5a8a: $eb
	rst JumpTable                                          ; $5a8b: $c7
	ld a, $3f                                        ; $5a8c: $3e $3f
	inc de                                           ; $5a8e: $13
	ld b, [hl]                                       ; $5a8f: $46
	ldh a, [rSB]                                     ; $5a90: $f0 $01
	ccf                                              ; $5a92: $3f
	ld c, a                                          ; $5a93: $4f
	ld b, l                                          ; $5a94: $45
	ld d, l                                          ; $5a95: $55
	ccf                                              ; $5a96: $3f
	ld b, l                                          ; $5a97: $45
	and b                                            ; $5a98: $a0
	cpl                                              ; $5a99: $2f
	ld b, e                                          ; $5a9a: $43
	rst JumpTable                                          ; $5a9b: $c7
	xor b                                            ; $5a9c: $a8
	ld b, [hl]                                       ; $5a9d: $46
	ld d, a                                          ; $5a9e: $57
	ld d, e                                          ; $5a9f: $53
	ld c, c                                          ; $5aa0: $49
	add hl, sp                                       ; $5aa1: $39
	and b                                            ; $5aa2: $a0
	di                                               ; $5aa3: $f3
	cp d                                             ; $5aa4: $ba
	ldh a, [$2c]                                     ; $5aa5: $f0 $2c
	ld d, e                                          ; $5aa7: $53
	pop af                                           ; $5aa8: $f1
	sub d                                            ; $5aa9: $92
	ld d, l                                          ; $5aaa: $55
	ccf                                              ; $5aab: $3f
	xor h                                            ; $5aac: $ac
	pop af                                           ; $5aad: $f1
	ld a, c                                          ; $5aae: $79
	pop af                                           ; $5aaf: $f1
	ld h, d                                          ; $5ab0: $62
	ld d, e                                          ; $5ab1: $53
	add a                                            ; $5ab2: $87
	ldh a, [$5d]                                     ; $5ab3: $f0 $5d
	ld b, h                                          ; $5ab5: $44
	ld h, e                                          ; $5ab6: $63
	and b                                            ; $5ab7: $a0
	db $eb                                           ; $5ab8: $eb
	ld d, c                                          ; $5ab9: $51
	xor h                                            ; $5aba: $ac
	db $ec                                           ; $5abb: $ec
	ld hl, sp+$34                                    ; $5abc: $f8 $34
	pop af                                           ; $5abe: $f1
	jp nc, $8ff0                                     ; $5abf: $d2 $f0 $8f

	ld l, h                                          ; $5ac2: $6c
	ld c, h                                          ; $5ac3: $4c
	and b                                            ; $5ac4: $a0
	cpl                                              ; $5ac5: $2f
	ld b, e                                          ; $5ac6: $43
	db $ed                                           ; $5ac7: $ed
	ld d, e                                          ; $5ac8: $53
	ldh a, [$cc]                                     ; $5ac9: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $5acb: $f0 $88
	ld c, e                                          ; $5acd: $4b
	and c                                            ; $5ace: $a1
	ld l, a                                          ; $5acf: $6f
	ld c, e                                          ; $5ad0: $4b
	inc [hl]                                         ; $5ad1: $34
	pop af                                           ; $5ad2: $f1
	cpl                                              ; $5ad3: $2f
	ld b, a                                          ; $5ad4: $47
	ld c, d                                          ; $5ad5: $4a
	ld c, a                                          ; $5ad6: $4f
	inc de                                           ; $5ad7: $13
	db $ec                                           ; $5ad8: $ec
	rlca                                             ; $5ad9: $07
	ld a, $50                                        ; $5ada: $3e $50
	and b                                            ; $5adc: $a0
	cpl                                              ; $5add: $2f
	ld b, e                                          ; $5ade: $43
	pop af                                           ; $5adf: $f1
	cpl                                              ; $5ae0: $2f
	inc a                                            ; $5ae1: $3c
	xor l                                            ; $5ae2: $ad
	ld b, b                                          ; $5ae3: $40
	ld c, l                                          ; $5ae4: $4d
	xor $2d                                          ; $5ae5: $ee $2d
	jr c, jr_095_5b23                                ; $5ae7: $38 $3a

	and b                                            ; $5ae9: $a0
	db $eb                                           ; $5aea: $eb
	ld d, c                                          ; $5aeb: $51
	xor h                                            ; $5aec: $ac
	db $ec                                           ; $5aed: $ec
	ld hl, sp-$0e                                    ; $5aee: $f8 $f2
	dec sp                                           ; $5af0: $3b
	ldh a, [hDisp1_LCDC]                                     ; $5af1: $f0 $8f
	ld l, h                                          ; $5af3: $6c
	ld c, h                                          ; $5af4: $4c
	and b                                            ; $5af5: $a0
	ld l, a                                          ; $5af6: $6f
	ld c, e                                          ; $5af7: $4b
	inc [hl]                                         ; $5af8: $34
	add e                                            ; $5af9: $83
	ldh a, [$2f]                                     ; $5afa: $f0 $2f
	ld e, c                                          ; $5afc: $59
	ld b, a                                          ; $5afd: $47
	ld c, d                                          ; $5afe: $4a
	ld c, a                                          ; $5aff: $4f
	inc de                                           ; $5b00: $13
	db $ec                                           ; $5b01: $ec
	rlca                                             ; $5b02: $07
	ld a, $50                                        ; $5b03: $3e $50
	and b                                            ; $5b05: $a0
	cpl                                              ; $5b06: $2f
	ld b, e                                          ; $5b07: $43
	add e                                            ; $5b08: $83
	ldh a, [$2f]                                     ; $5b09: $f0 $2f
	ld e, c                                          ; $5b0b: $59
	inc a                                            ; $5b0c: $3c
	xor l                                            ; $5b0d: $ad
	jr c, @+$3a                                      ; $5b0e: $38 $38

	ld a, [hl-]                                      ; $5b10: $3a
	and b                                            ; $5b11: $a0
	db $eb                                           ; $5b12: $eb
	ld d, c                                          ; $5b13: $51
	xor h                                            ; $5b14: $ac
	db $ec                                           ; $5b15: $ec
	ld hl, sp+$34                                    ; $5b16: $f8 $34

jr_095_5b18:
	pop af                                           ; $5b18: $f1
	sbc d                                            ; $5b19: $9a
	ldh a, [hDisp1_LCDC]                                     ; $5b1a: $f0 $8f
	ld l, h                                          ; $5b1c: $6c
	ld c, h                                          ; $5b1d: $4c
	and b                                            ; $5b1e: $a0
	cpl                                              ; $5b1f: $2f
	ld b, e                                          ; $5b20: $43
	ld c, d                                          ; $5b21: $4a
	ld c, a                                          ; $5b22: $4f

jr_095_5b23:
	inc [hl]                                         ; $5b23: $34
	ldh a, [c]                                       ; $5b24: $f2
	sub l                                            ; $5b25: $95
	jr c, jr_095_5b18                                ; $5b26: $38 $f0

	adc a                                            ; $5b28: $8f
	ld l, h                                          ; $5b29: $6c
	ld b, h                                          ; $5b2a: $44
	ld b, l                                          ; $5b2b: $45
	and b                                            ; $5b2c: $a0
	adc c                                            ; $5b2d: $89
	sbc a                                            ; $5b2e: $9f
	ld d, e                                          ; $5b2f: $53
	ldh a, [hDisp1_LCDC]                                     ; $5b30: $f0 $8f
	ld l, h                                          ; $5b32: $6c
	ld a, [hl-]                                      ; $5b33: $3a
	ld d, b                                          ; $5b34: $50
	xor h                                            ; $5b35: $ac
	ld [$a0d2], a                                    ; $5b36: $ea $d2 $a0
	cpl                                              ; $5b39: $2f
	ld b, e                                          ; $5b3a: $43
	ldh a, [$0a]                                     ; $5b3b: $f0 $0a
	jr c, jr_095_5b84                                ; $5b3d: $38 $45

	ld c, h                                          ; $5b3f: $4c
	xor b                                            ; $5b40: $a8
	ld c, a                                          ; $5b41: $4f
	add hl, sp                                       ; $5b42: $39
	ldh a, [$58]                                     ; $5b43: $f0 $58
	ldh a, [rAUD1HIGH]                               ; $5b45: $f0 $14
	ldh a, [rTIMA]                                   ; $5b47: $f0 $05
	ld b, h                                          ; $5b49: $44
	ld b, l                                          ; $5b4a: $45
	and b                                            ; $5b4b: $a0
	cpl                                              ; $5b4c: $2f
	ld b, e                                          ; $5b4d: $43
	ldh a, [$0a]                                     ; $5b4e: $f0 $0a
	jr c, jr_095_5b97                                ; $5b50: $38 $45

	ld c, h                                          ; $5b52: $4c
	xor b                                            ; $5b53: $a8
	ld c, a                                          ; $5b54: $4f
	add hl, sp                                       ; $5b55: $39
	ldh a, [$e5]                                     ; $5b56: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $5b58: $f0 $14
	ldh a, [rTIMA]                                   ; $5b5a: $f0 $05
	ld b, h                                          ; $5b5c: $44
	ld b, l                                          ; $5b5d: $45
	and b                                            ; $5b5e: $a0
	ldh a, [$a3]                                     ; $5b5f: $f0 $a3
	pop af                                           ; $5b61: $f1
	ret nz                                           ; $5b62: $c0

	ldh a, [rTIMA]                                   ; $5b63: $f0 $05
	ld b, a                                          ; $5b65: $47
	xor h                                            ; $5b66: $ac
	ld d, d                                          ; $5b67: $52
	dec a                                            ; $5b68: $3d
	ld l, a                                          ; $5b69: $6f
	ld b, d                                          ; $5b6a: $42
	ldh a, [$8e]                                     ; $5b6b: $f0 $8e
	pop af                                           ; $5b6d: $f1
	ld c, l                                          ; $5b6e: $4d
	ld h, l                                          ; $5b6f: $65
	ld d, e                                          ; $5b70: $53
	inc de                                           ; $5b71: $13
	db $f4                                           ; $5b72: $f4
	add e                                            ; $5b73: $83
	ld e, [hl]                                       ; $5b74: $5e
	ld c, [hl]                                       ; $5b75: $4e
	ld b, d                                          ; $5b76: $42
	inc a                                            ; $5b77: $3c
	ld a, $50                                        ; $5b78: $3e $50
	and b                                            ; $5b7a: $a0
	cpl                                              ; $5b7b: $2f
	ld b, e                                          ; $5b7c: $43
	rst JumpTable                                          ; $5b7d: $c7
	ld b, h                                          ; $5b7e: $44
	ld c, h                                          ; $5b7f: $4c
	xor b                                            ; $5b80: $a8
	db $ed                                           ; $5b81: $ed
	ld d, e                                          ; $5b82: $53
	ld c, a                                          ; $5b83: $4f

jr_095_5b84:
	ccf                                              ; $5b84: $3f
	ld c, [hl]                                       ; $5b85: $4e
	inc a                                            ; $5b86: $3c
	ld d, b                                          ; $5b87: $50
	and b                                            ; $5b88: $a0
	sub c                                            ; $5b89: $91
	ldh a, [$59]                                     ; $5b8a: $f0 $59
	ld b, l                                          ; $5b8c: $45
	xor b                                            ; $5b8d: $a8
	ldh a, [$08]                                     ; $5b8e: $f0 $08
	ld e, c                                          ; $5b90: $59
	ldh a, [$08]                                     ; $5b91: $f0 $08
	ldh a, [$08]                                     ; $5b93: $f0 $08
	ldh a, [$08]                                     ; $5b95: $f0 $08

jr_095_5b97:
	ldh a, [$08]                                     ; $5b97: $f0 $08
	ldh a, [$08]                                     ; $5b99: $f0 $08
	and b                                            ; $5b9b: $a0
	cpl                                              ; $5b9c: $2f
	ld b, e                                          ; $5b9d: $43
	ldh a, [$0a]                                     ; $5b9e: $f0 $0a
	jr c, @+$47                                      ; $5ba0: $38 $45

	ld c, h                                          ; $5ba2: $4c
	xor b                                            ; $5ba3: $a8
	ld c, a                                          ; $5ba4: $4f
	add hl, sp                                       ; $5ba5: $39
	db $ed                                           ; $5ba6: $ed
	ld a, c                                          ; $5ba7: $79
	ld b, h                                          ; $5ba8: $44
	ld b, l                                          ; $5ba9: $45
	and b                                            ; $5baa: $a0
	ld l, a                                          ; $5bab: $6f
	ld b, a                                          ; $5bac: $47
	inc [hl]                                         ; $5bad: $34
	ldh a, [rHDMA3]                                  ; $5bae: $f0 $53
	ld e, [hl]                                       ; $5bb0: $5e
	ld a, [hl-]                                      ; $5bb1: $3a
	ld d, l                                          ; $5bb2: $55
	ld a, [hl-]                                      ; $5bb3: $3a
	ld c, [hl]                                       ; $5bb4: $4e
	add h                                            ; $5bb5: $84
	ldh a, [rSTAT]                                   ; $5bb6: $f0 $41
	ld d, e                                          ; $5bb8: $53
	inc de                                           ; $5bb9: $13
	db $ed                                           ; $5bba: $ed
	dec bc                                           ; $5bbb: $0b
	ld c, h                                          ; $5bbc: $4c
	xor b                                            ; $5bbd: $a8
	ldh a, [$08]                                     ; $5bbe: $f0 $08
	ld e, c                                          ; $5bc0: $59
	ldh a, [$08]                                     ; $5bc1: $f0 $08
	ldh a, [$08]                                     ; $5bc3: $f0 $08
	ldh a, [$08]                                     ; $5bc5: $f0 $08
	ldh a, [$08]                                     ; $5bc7: $f0 $08
	ldh a, [$08]                                     ; $5bc9: $f0 $08
	and b                                            ; $5bcb: $a0
	adc d                                            ; $5bcc: $8a
	ld a, $58                                        ; $5bcd: $3e $58
	ld c, e                                          ; $5bcf: $4b
	db $f4                                           ; $5bd0: $f4
	ld l, e                                          ; $5bd1: $6b
	ld c, h                                          ; $5bd2: $4c
	and b                                            ; $5bd3: $a0
	ld a, b                                          ; $5bd4: $78
	ldh a, [rAUD1HIGH]                               ; $5bd5: $f0 $14
	ld c, a                                          ; $5bd7: $4f
	xor h                                            ; $5bd8: $ac
	ld l, a                                          ; $5bd9: $6f
	ld b, d                                          ; $5bda: $42
	ldh a, [rAUD1HIGH]                               ; $5bdb: $f0 $14
	ld b, a                                          ; $5bdd: $47
	ld a, [hl-]                                      ; $5bde: $3a
	ld d, a                                          ; $5bdf: $57
	call c, $f0a8                                    ; $5be0: $dc $a8 $f0
	ld [$f059], sp                                   ; $5be3: $08 $59 $f0
	ld [$08f0], sp                                   ; $5be6: $08 $f0 $08
	ldh a, [$08]                                     ; $5be9: $f0 $08
	ldh a, [$08]                                     ; $5beb: $f0 $08
	ldh a, [$08]                                     ; $5bed: $f0 $08
	ldh a, [$08]                                     ; $5bef: $f0 $08
	and b                                            ; $5bf1: $a0
	cpl                                              ; $5bf2: $2f
	ld b, e                                          ; $5bf3: $43
	xor $10                                          ; $5bf4: $ee $10
	xor $10                                          ; $5bf6: $ee $10
	xor b                                            ; $5bf8: $a8
	ld [hl-], a                                      ; $5bf9: $32
	ld l, e                                          ; $5bfa: $6b
	ld b, h                                          ; $5bfb: $44
	inc a                                            ; $5bfc: $3c
	inc [hl]                                         ; $5bfd: $34
	ld a, [hl]                                       ; $5bfe: $7e
	ld d, l                                          ; $5bff: $55
	ldh a, [rTAC]                                    ; $5c00: $f0 $07
	inc a                                            ; $5c02: $3c
	ld b, c                                          ; $5c03: $41
	ld a, [hl-]                                      ; $5c04: $3a
	jr c, jr_095_5c4f                                ; $5c05: $38 $48

	and e                                            ; $5c07: $a3
	cpl                                              ; $5c08: $2f
	ld b, e                                          ; $5c09: $43
	db $eb                                           ; $5c0a: $eb
	ld d, c                                          ; $5c0b: $51
	inc [hl]                                         ; $5c0c: $34
	ld c, a                                          ; $5c0d: $4f
	add hl, sp                                       ; $5c0e: $39
	ld d, c                                          ; $5c0f: $51
	sbc l                                            ; $5c10: $9d
	inc de                                           ; $5c11: $13
	db $ed                                           ; $5c12: $ed
	ld d, e                                          ; $5c13: $53
	db $ec                                           ; $5c14: $ec
	inc h                                            ; $5c15: $24
	ld b, h                                          ; $5c16: $44
	ld c, h                                          ; $5c17: $4c
	and b                                            ; $5c18: $a0
	ldh a, [$2d]                                     ; $5c19: $f0 $2d
	dec sp                                           ; $5c1b: $3b
	ccf                                              ; $5c1c: $3f
	dec a                                            ; $5c1d: $3d
	ld b, d                                          ; $5c1e: $42
	ld c, h                                          ; $5c1f: $4c
	xor b                                            ; $5c20: $a8
	ld d, d                                          ; $5c21: $52
	inc [hl]                                         ; $5c22: $34
	sub c                                            ; $5c23: $91
	ldh a, [$59]                                     ; $5c24: $f0 $59
	ld b, h                                          ; $5c26: $44
	ld e, l                                          ; $5c27: $5d
	ld e, d                                          ; $5c28: $5a
	ld c, b                                          ; $5c29: $48
	and b                                            ; $5c2a: $a0
	cpl                                              ; $5c2b: $2f
	ld b, e                                          ; $5c2c: $43
	rst JumpTable                                          ; $5c2d: $c7
	xor b                                            ; $5c2e: $a8
	sub c                                            ; $5c2f: $91
	ldh a, [$59]                                     ; $5c30: $f0 $59
	ld b, h                                          ; $5c32: $44
	ld c, h                                          ; $5c33: $4c
	ld c, b                                          ; $5c34: $48
	and b                                            ; $5c35: $a0
	db $eb                                           ; $5c36: $eb
	ld h, b                                          ; $5c37: $60
	ld c, e                                          ; $5c38: $4b
	inc de                                           ; $5c39: $13
	db $ed                                           ; $5c3a: $ed
	sub c                                            ; $5c3b: $91
	ld b, h                                          ; $5c3c: $44
	inc a                                            ; $5c3d: $3c
	ld d, b                                          ; $5c3e: $50
	xor h                                            ; $5c3f: $ac
	jr c, jr_095_5c92                                ; $5c40: $38 $50

	ld a, [hl-]                                      ; $5c42: $3a
	jr c, @+$65                                      ; $5c43: $38 $63

	and b                                            ; $5c45: $a0
	cpl                                              ; $5c46: $2f
	ld b, e                                          ; $5c47: $43
	rst JumpTable                                          ; $5c48: $c7
	xor b                                            ; $5c49: $a8
	ld [hl-], a                                      ; $5c4a: $32
	ld c, d                                          ; $5c4b: $4a
	ld c, a                                          ; $5c4c: $4f
	inc [hl]                                         ; $5c4d: $34
	db $eb                                           ; $5c4e: $eb

jr_095_5c4f:
	ld e, c                                          ; $5c4f: $59
	and e                                            ; $5c50: $a3
	cpl                                              ; $5c51: $2f
	ld b, e                                          ; $5c52: $43
	db $eb                                           ; $5c53: $eb
	ld a, [$ebac]                                    ; $5c54: $fa $ac $eb
	rst FarCall                                          ; $5c57: $f7
	and c                                            ; $5c58: $a1
	ld c, h                                          ; $5c59: $4c
	inc [hl]                                         ; $5c5a: $34
	ld h, h                                          ; $5c5b: $64
	di                                               ; $5c5c: $f3
	sbc b                                            ; $5c5d: $98
	ld a, $3f                                        ; $5c5e: $3e $3f
	ld a, d                                          ; $5c60: $7a
	ld d, b                                          ; $5c61: $50
	ld a, [hl-]                                      ; $5c62: $3a
	jr c, @-$5d                                      ; $5c63: $38 $a1

	cpl                                              ; $5c65: $2f
	xor $1f                                          ; $5c66: $ee $1f
	inc [hl]                                         ; $5c68: $34
	jr c, jr_095_5ca3                                ; $5c69: $38 $38

	ld b, l                                          ; $5c6b: $45
	add hl, bc                                       ; $5c6c: $09
	ld b, b                                          ; $5c6d: $40
	ld c, l                                          ; $5c6e: $4d
	ld e, e                                          ; $5c6f: $5b
	ld d, [hl]                                       ; $5c70: $56
	xor h                                            ; $5c71: $ac
	ldh a, [$0a]                                     ; $5c72: $f0 $0a
	ld d, l                                          ; $5c74: $55
	inc [hl]                                         ; $5c75: $34
	call $2fa0                                       ; $5c76: $cd $a0 $2f
	ldh a, [c]                                       ; $5c79: $f2
	add $57                                          ; $5c7a: $c6 $57
	ldh a, [$ee]                                     ; $5c7c: $f0 $ee
	ld c, e                                          ; $5c7e: $4b
	xor $05                                          ; $5c7f: $ee $05
	ld b, h                                          ; $5c81: $44
	add hl, bc                                       ; $5c82: $09
	db $ec                                           ; $5c83: $ec
	ld b, e                                          ; $5c84: $43
	inc [hl]                                         ; $5c85: $34
	ld b, h                                          ; $5c86: $44
	ld [hl], c                                       ; $5c87: $71
	ld [hl], $24                                     ; $5c88: $36 $24
	inc de                                           ; $5c8a: $13
	ld e, e                                          ; $5c8b: $5b
	ld d, [hl]                                       ; $5c8c: $56
	ld b, [hl]                                       ; $5c8d: $46
	inc [hl]                                         ; $5c8e: $34
	ret nc                                           ; $5c8f: $d0

	and b                                            ; $5c90: $a0
	ld e, e                                          ; $5c91: $5b

jr_095_5c92:
	ld d, [hl]                                       ; $5c92: $56
	xor h                                            ; $5c93: $ac
	ld h, h                                          ; $5c94: $64
	di                                               ; $5c95: $f3
	sbc b                                            ; $5c96: $98
	ld a, $3f                                        ; $5c97: $3e $3f
	ld a, d                                          ; $5c99: $7a
	ld e, a                                          ; $5c9a: $5f
	add hl, sp                                       ; $5c9b: $39
	ld b, l                                          ; $5c9c: $45
	and b                                            ; $5c9d: $a0
	cpl                                              ; $5c9e: $2f
	ld b, e                                          ; $5c9f: $43
	ld b, b                                          ; $5ca0: $40
	add hl, sp                                       ; $5ca1: $39
	ld b, h                                          ; $5ca2: $44

jr_095_5ca3:
	ld c, h                                          ; $5ca3: $4c
	xor b                                            ; $5ca4: $a8
	ld b, b                                          ; $5ca5: $40
	add hl, sp                                       ; $5ca6: $39
	ld a, $45                                        ; $5ca7: $3e $45
	add hl, sp                                       ; $5ca9: $39
	and b                                            ; $5caa: $a0
	ld e, e                                          ; $5cab: $5b
	ld d, [hl]                                       ; $5cac: $56
	ld b, [hl]                                       ; $5cad: $46
	ld c, h                                          ; $5cae: $4c
	and b                                            ; $5caf: $a0
	ld l, a                                          ; $5cb0: $6f
	inc [hl]                                         ; $5cb1: $34
	ld d, h                                          ; $5cb2: $54
	ld c, l                                          ; $5cb3: $4d
	inc a                                            ; $5cb4: $3c
	ld d, b                                          ; $5cb5: $50
	db $ed                                           ; $5cb6: $ed
	ld h, d                                          ; $5cb7: $62
	ld c, c                                          ; $5cb8: $49
	inc de                                           ; $5cb9: $13
	xor $1d                                          ; $5cba: $ee $1d
	ld d, e                                          ; $5cbc: $53
	ld b, [hl]                                       ; $5cbd: $46
	ld c, [hl]                                       ; $5cbe: $4e
	ld b, c                                          ; $5cbf: $41
	ld b, h                                          ; $5cc0: $44
	xor b                                            ; $5cc1: $a8
	ld [hl], b                                       ; $5cc2: $70
	ld [hl], c                                       ; $5cc3: $71
	ld b, c                                          ; $5cc4: $41
	ld c, h                                          ; $5cc5: $4c
	and b                                            ; $5cc6: $a0
	cpl                                              ; $5cc7: $2f
	ld [hl-], a                                      ; $5cc8: $32
	halt                                             ; $5cc9: $76
	ld c, e                                          ; $5cca: $4b
	db $eb                                           ; $5ccb: $eb
	ld a, [$ac49]                                    ; $5ccc: $fa $49 $ac
	ld [$a32a], a                                    ; $5ccf: $ea $2a $a3
	add hl, sp                                       ; $5cd2: $39
	dec sp                                           ; $5cd3: $3b
	inc [hl]                                         ; $5cd4: $34
	inc h                                            ; $5cd5: $24
	ld b, b                                          ; $5cd6: $40
	ld c, l                                          ; $5cd7: $4d
	ld b, h                                          ; $5cd8: $44
	ld e, l                                          ; $5cd9: $5d
	ld c, e                                          ; $5cda: $4b
	xor h                                            ; $5cdb: $ac
	ldh a, [$a4]                                     ; $5cdc: $f0 $a4
	ld e, [hl]                                       ; $5cde: $5e
	dec a                                            ; $5cdf: $3d
	ld d, l                                          ; $5ce0: $55
	ld a, [hl-]                                      ; $5ce1: $3a
	inc a                                            ; $5ce2: $3c
	dec sp                                           ; $5ce3: $3b
	dec a                                            ; $5ce4: $3d
	and b                                            ; $5ce5: $a0
	cpl                                              ; $5ce6: $2f
	ld b, e                                          ; $5ce7: $43
	ld b, b                                          ; $5ce8: $40
	ld c, l                                          ; $5ce9: $4d
	ld c, e                                          ; $5cea: $4b
	xor h                                            ; $5ceb: $ac
	ld b, b                                          ; $5cec: $40
	add hl, sp                                       ; $5ced: $39
	ld b, h                                          ; $5cee: $44
	ld e, l                                          ; $5cef: $5d
	ld e, d                                          ; $5cf0: $5a
	ld c, h                                          ; $5cf1: $4c
	and b                                            ; $5cf2: $a0
	ld b, b                                          ; $5cf3: $40
	ld c, l                                          ; $5cf4: $4d
	ld c, e                                          ; $5cf5: $4b
	xor h                                            ; $5cf6: $ac
	pop af                                           ; $5cf7: $f1
	dec d                                            ; $5cf8: $15
	ld c, l                                          ; $5cf9: $4d
	ld c, [hl]                                       ; $5cfa: $4e
	ld b, d                                          ; $5cfb: $42
	ld d, e                                          ; $5cfc: $53
	db $ed                                           ; $5cfd: $ed
	ld [hl], d                                       ; $5cfe: $72
	xor b                                            ; $5cff: $a8
	pop af                                           ; $5d00: $f1
	dec d                                            ; $5d01: $15
	ld c, l                                          ; $5d02: $4d
	ld b, l                                          ; $5d03: $45
	inc [hl]                                         ; $5d04: $34
	pop af                                           ; $5d05: $f1
	dec d                                            ; $5d06: $15
	ld c, l                                          ; $5d07: $4d
	ld b, l                                          ; $5d08: $45
	and b                                            ; $5d09: $a0
	db $eb                                           ; $5d0a: $eb
	ld d, c                                          ; $5d0b: $51
	xor h                                            ; $5d0c: $ac
	ld c, a                                          ; $5d0d: $4f
	add hl, sp                                       ; $5d0e: $39
	ld d, c                                          ; $5d0f: $51
	sbc l                                            ; $5d10: $9d
	db $ed                                           ; $5d11: $ed
	db $10                                           ; $5d12: $10
	ld b, h                                          ; $5d13: $44
	ld c, h                                          ; $5d14: $4c
	and b                                            ; $5d15: $a0
	pop af                                           ; $5d16: $f1
	ld d, d                                          ; $5d17: $52
	sub b                                            ; $5d18: $90
	ld a, $6c                                        ; $5d19: $3e $6c
	xor b                                            ; $5d1b: $a8
	ldh a, [$0a]                                     ; $5d1c: $f0 $0a
	ld d, l                                          ; $5d1e: $55
	ld a, b                                          ; $5d1f: $78
	ld c, [hl]                                       ; $5d20: $4e
	ld c, c                                          ; $5d21: $49
	jr c, jr_095_5d5c                                ; $5d22: $38 $38

	ld c, h                                          ; $5d24: $4c
	and b                                            ; $5d25: $a0
	ldh a, [rAUD4ENV]                                ; $5d26: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5d28: $f0 $23
	ld b, b                                          ; $5d2a: $40
	add hl, sp                                       ; $5d2b: $39
	ld b, h                                          ; $5d2c: $44
	dec sp                                           ; $5d2d: $3b
	dec a                                            ; $5d2e: $3d
	ld d, b                                          ; $5d2f: $50
	ld c, h                                          ; $5d30: $4c
	and b                                            ; $5d31: $a0
	db $eb                                           ; $5d32: $eb
	ld d, c                                          ; $5d33: $51
	xor h                                            ; $5d34: $ac
	ld c, a                                          ; $5d35: $4f
	add hl, sp                                       ; $5d36: $39
	ld d, c                                          ; $5d37: $51
	sbc l                                            ; $5d38: $9d
	db $ed                                           ; $5d39: $ed
	sbc l                                            ; $5d3a: $9d
	pop af                                           ; $5d3b: $f1
	inc e                                            ; $5d3c: $1c
	ld b, h                                          ; $5d3d: $44
	ld c, h                                          ; $5d3e: $4c
	and b                                            ; $5d3f: $a0
	ld a, [hl-]                                      ; $5d40: $3a
	ld b, c                                          ; $5d41: $41
	inc a                                            ; $5d42: $3c
	inc [hl]                                         ; $5d43: $34
	inc a                                            ; $5d44: $3c
	dec sp                                           ; $5d45: $3b
	dec a                                            ; $5d46: $3d
	ld c, [hl]                                       ; $5d47: $4e
	jr c, jr_095_5d84                                ; $5d48: $38 $3a

	ld [hl], h                                       ; $5d4a: $74
	xor b                                            ; $5d4b: $a8
	ldh a, [rBCPD]                                   ; $5d4c: $f0 $69
	ld [hl], e                                       ; $5d4e: $73
	ldh a, [$2b]                                     ; $5d4f: $f0 $2b
	ld a, $61                                        ; $5d51: $3e $61
	ld d, [hl]                                       ; $5d53: $56
	ld h, h                                          ; $5d54: $64
	add hl, sp                                       ; $5d55: $39
	inc a                                            ; $5d56: $3c
	ld a, [hl-]                                      ; $5d57: $3a
	and b                                            ; $5d58: $a0
	db $eb                                           ; $5d59: $eb
	ld d, c                                          ; $5d5a: $51
	xor h                                            ; $5d5b: $ac

jr_095_5d5c:
	ld c, a                                          ; $5d5c: $4f
	add hl, sp                                       ; $5d5d: $39
	ld d, c                                          ; $5d5e: $51
	sbc l                                            ; $5d5f: $9d
	db $ec                                           ; $5d60: $ec
	call nz, Call_095_4c44                           ; $5d61: $c4 $44 $4c
	and b                                            ; $5d64: $a0
	pop af                                           ; $5d65: $f1
	ld d, d                                          ; $5d66: $52
	sub b                                            ; $5d67: $90
	ld a, $6c                                        ; $5d68: $3e $6c
	ldh a, [c]                                       ; $5d6a: $f2
	db $eb                                           ; $5d6b: $eb
	xor b                                            ; $5d6c: $a8
	db $eb                                           ; $5d6d: $eb
	rst JumpTable                                          ; $5d6e: $c7
	inc de                                           ; $5d6f: $13
	ld c, d                                          ; $5d70: $4a
	ld e, h                                          ; $5d71: $5c
	ld c, [hl]                                       ; $5d72: $4e
	ld c, c                                          ; $5d73: $49
	jr c, jr_095_5dae                                ; $5d74: $38 $38

	ld c, h                                          ; $5d76: $4c
	and b                                            ; $5d77: $a0
	pop af                                           ; $5d78: $f1
	ld d, d                                          ; $5d79: $52
	sub b                                            ; $5d7a: $90
	ld a, $6c                                        ; $5d7b: $3e $6c
	ldh a, [c]                                       ; $5d7d: $f2
	db $eb                                           ; $5d7e: $eb
	and b                                            ; $5d7f: $a0
	db $eb                                           ; $5d80: $eb
	ld d, c                                          ; $5d81: $51
	xor h                                            ; $5d82: $ac
	ld c, a                                          ; $5d83: $4f

jr_095_5d84:
	add hl, sp                                       ; $5d84: $39
	ld d, c                                          ; $5d85: $51
	sbc l                                            ; $5d86: $9d
	pop af                                           ; $5d87: $f1
	jp nc, $8ff0                                     ; $5d88: $d2 $f0 $8f

	ld l, h                                          ; $5d8b: $6c
	ld b, h                                          ; $5d8c: $44
	ld c, h                                          ; $5d8d: $4c
	xor b                                            ; $5d8e: $a8
	pop af                                           ; $5d8f: $f1
	ld d, d                                          ; $5d90: $52
	sub b                                            ; $5d91: $90
	ld a, $6c                                        ; $5d92: $3e $6c
	and b                                            ; $5d94: $a0
	cpl                                              ; $5d95: $2f
	ld b, e                                          ; $5d96: $43
	db $eb                                           ; $5d97: $eb
	ld a, [$ccf0]                                    ; $5d98: $fa $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $5d9b: $f0 $88
	ld c, e                                          ; $5d9d: $4b
	and c                                            ; $5d9e: $a1
	ld l, a                                          ; $5d9f: $6f
	ld c, e                                          ; $5da0: $4b
	xor h                                            ; $5da1: $ac
	pop af                                           ; $5da2: $f1
	cpl                                              ; $5da3: $2f
	ld b, a                                          ; $5da4: $47
	ldh a, [hDisp1_SCY]                                     ; $5da5: $f0 $90
	ldh a, [$cb]                                     ; $5da7: $f0 $cb
	ld b, a                                          ; $5da9: $47
	ld h, a                                          ; $5daa: $67
	dec sp                                           ; $5dab: $3b
	ccf                                              ; $5dac: $3f
	xor b                                            ; $5dad: $a8

jr_095_5dae:
	ld b, [hl]                                       ; $5dae: $46
	dec sp                                           ; $5daf: $3b
	inc [hl]                                         ; $5db0: $34
	db $ec                                           ; $5db1: $ec
	db $fc                                           ; $5db2: $fc
	ld c, d                                          ; $5db3: $4a
	ld c, a                                          ; $5db4: $4f
	jr c, jr_095_5def                                ; $5db5: $38 $38

	ld a, [hl-]                                      ; $5db7: $3a
	xor b                                            ; $5db8: $a8
	ld b, b                                          ; $5db9: $40
	ld c, l                                          ; $5dba: $4d
	inc a                                            ; $5dbb: $3c
	ld d, b                                          ; $5dbc: $50
	inc [hl]                                         ; $5dbd: $34
	ldh a, [$b2]                                     ; $5dbe: $f0 $b2
	ldh a, [rLY]                                     ; $5dc0: $f0 $44
	pop af                                           ; $5dc2: $f1
	sbc b                                            ; $5dc3: $98
	ld c, c                                          ; $5dc4: $49
	inc a                                            ; $5dc5: $3c
	ld c, b                                          ; $5dc6: $48
	and b                                            ; $5dc7: $a0
	cpl                                              ; $5dc8: $2f
	ld b, e                                          ; $5dc9: $43
	ld c, a                                          ; $5dca: $4f
	inc [hl]                                         ; $5dcb: $34
	ld c, a                                          ; $5dcc: $4f
	add hl, sp                                       ; $5dcd: $39
	jr c, jr_095_5e08                                ; $5dce: $38 $38

	ld b, l                                          ; $5dd0: $45
	xor b                                            ; $5dd1: $a8
	ldh a, [$b2]                                     ; $5dd2: $f0 $b2
	ldh a, [$fe]                                     ; $5dd4: $f0 $fe
	ldh a, [$cc]                                     ; $5dd6: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $5dd8: $f0 $88
	ld a, e                                          ; $5dda: $7b
	dec sp                                           ; $5ddb: $3b
	inc a                                            ; $5ddc: $3c
	ld d, a                                          ; $5ddd: $57
	ld c, b                                          ; $5dde: $48
	and b                                            ; $5ddf: $a0
	db $eb                                           ; $5de0: $eb
	ld d, c                                          ; $5de1: $51
	xor h                                            ; $5de2: $ac
	ld c, a                                          ; $5de3: $4f
	add hl, sp                                       ; $5de4: $39
	ld d, c                                          ; $5de5: $51
	sbc l                                            ; $5de6: $9d
	ldh a, [c]                                       ; $5de7: $f2
	dec sp                                           ; $5de8: $3b
	ldh a, [hDisp1_LCDC]                                     ; $5de9: $f0 $8f
	ld l, h                                          ; $5deb: $6c
	ld b, h                                          ; $5dec: $44
	ld c, h                                          ; $5ded: $4c
	xor b                                            ; $5dee: $a8

jr_095_5def:
	pop af                                           ; $5def: $f1
	ld d, d                                          ; $5df0: $52
	sub b                                            ; $5df1: $90
	ld a, $6c                                        ; $5df2: $3e $6c
	and b                                            ; $5df4: $a0
	ld l, a                                          ; $5df5: $6f
	ld c, e                                          ; $5df6: $4b
	inc [hl]                                         ; $5df7: $34
	add e                                            ; $5df8: $83
	ldh a, [$2f]                                     ; $5df9: $f0 $2f
	ld e, c                                          ; $5dfb: $59
	ld b, a                                          ; $5dfc: $47
	ld h, a                                          ; $5dfd: $67
	dec sp                                           ; $5dfe: $3b
	ccf                                              ; $5dff: $3f
	xor b                                            ; $5e00: $a8
	ld b, [hl]                                       ; $5e01: $46
	dec sp                                           ; $5e02: $3b
	inc [hl]                                         ; $5e03: $34
	add e                                            ; $5e04: $83
	ldh a, [$c2]                                     ; $5e05: $f0 $c2
	ld e, c                                          ; $5e07: $59

jr_095_5e08:
	ld l, c                                          ; $5e08: $69
	ld c, d                                          ; $5e09: $4a
	ld c, a                                          ; $5e0a: $4f
	jr c, jr_095_5e45                                ; $5e0b: $38 $38

	ld a, [hl-]                                      ; $5e0d: $3a
	xor b                                            ; $5e0e: $a8
	ld b, b                                          ; $5e0f: $40
	ld c, l                                          ; $5e10: $4d
	inc a                                            ; $5e11: $3c
	ld d, b                                          ; $5e12: $50
	inc [hl]                                         ; $5e13: $34
	ldh a, [$b2]                                     ; $5e14: $f0 $b2
	ldh a, [rLY]                                     ; $5e16: $f0 $44
	pop af                                           ; $5e18: $f1
	sbc b                                            ; $5e19: $98
	ld c, c                                          ; $5e1a: $49
	inc a                                            ; $5e1b: $3c
	xor h                                            ; $5e1c: $ac
	ldh a, [$d7]                                     ; $5e1d: $f0 $d7
	ld c, e                                          ; $5e1f: $4b
	ld c, h                                          ; $5e20: $4c
	add l                                            ; $5e21: $85
	ld c, b                                          ; $5e22: $48
	and b                                            ; $5e23: $a0
	db $eb                                           ; $5e24: $eb
	ld d, c                                          ; $5e25: $51
	xor h                                            ; $5e26: $ac
	ld c, a                                          ; $5e27: $4f
	add hl, sp                                       ; $5e28: $39
	ld d, c                                          ; $5e29: $51
	sbc l                                            ; $5e2a: $9d
	pop af                                           ; $5e2b: $f1
	sbc d                                            ; $5e2c: $9a
	ldh a, [hDisp1_LCDC]                                     ; $5e2d: $f0 $8f
	ld l, h                                          ; $5e2f: $6c
	ld b, h                                          ; $5e30: $44
	ld c, h                                          ; $5e31: $4c
	xor b                                            ; $5e32: $a8
	pop af                                           ; $5e33: $f1
	ld d, d                                          ; $5e34: $52
	sub b                                            ; $5e35: $90
	ld a, $6c                                        ; $5e36: $3e $6c
	and b                                            ; $5e38: $a0
	adc c                                            ; $5e39: $89
	sbc a                                            ; $5e3a: $9f
	ld d, e                                          ; $5e3b: $53
	ldh a, [hDisp1_LCDC]                                     ; $5e3c: $f0 $8f
	ld l, h                                          ; $5e3e: $6c
	ld a, [hl-]                                      ; $5e3f: $3a
	ld d, b                                          ; $5e40: $50
	xor h                                            ; $5e41: $ac
	ld b, b                                          ; $5e42: $40
	ld c, l                                          ; $5e43: $4d
	ld c, d                                          ; $5e44: $4a

jr_095_5e45:
	jr c, @+$3a                                      ; $5e45: $38 $38

	ld b, d                                          ; $5e47: $42
	and b                                            ; $5e48: $a0
	pop af                                           ; $5e49: $f1
	dec hl                                           ; $5e4a: $2b
	pop af                                           ; $5e4b: $f1
	ret nz                                           ; $5e4c: $c0

	ld c, d                                          ; $5e4d: $4a
	ld e, h                                          ; $5e4e: $5c
	ld c, l                                          ; $5e4f: $4d
	ld a, e                                          ; $5e50: $7b
	ld b, d                                          ; $5e51: $42
	inc de                                           ; $5e52: $13
	ldh a, [rAUDVOL]                                 ; $5e53: $f0 $24
	ld b, h                                          ; $5e55: $44
	ld e, l                                          ; $5e56: $5d
	ld e, d                                          ; $5e57: $5a
	ld c, h                                          ; $5e58: $4c
	and b                                            ; $5e59: $a0
	cpl                                              ; $5e5a: $2f
	ld b, e                                          ; $5e5b: $43
	db $eb                                           ; $5e5c: $eb
	ld a, [$6eac]                                    ; $5e5d: $fa $ac $6e
	ld a, e                                          ; $5e60: $7b
	jr c, jr_095_5ea5                                ; $5e61: $38 $42

	and c                                            ; $5e63: $a1
	ldh a, [$08]                                     ; $5e64: $f0 $08
	ld b, c                                          ; $5e66: $41
	ld b, d                                          ; $5e67: $42
	inc [hl]                                         ; $5e68: $34
	db $eb                                           ; $5e69: $eb
	adc c                                            ; $5e6a: $89
	ld c, h                                          ; $5e6b: $4c
	xor b                                            ; $5e6c: $a8
	ld c, d                                          ; $5e6d: $4a
	ld c, a                                          ; $5e6e: $4f
	inc [hl]                                         ; $5e6f: $34
	pop af                                           ; $5e70: $f1
	sub d                                            ; $5e71: $92
	ldh a, [rTAC]                                    ; $5e72: $f0 $07
	ldh a, [c]                                       ; $5e74: $f2
	ld sp, hl                                        ; $5e75: $f9
	pop af                                           ; $5e76: $f1
	add hl, sp                                       ; $5e77: $39
	ld d, e                                          ; $5e78: $53
	ld b, [hl]                                       ; $5e79: $46
	ld c, [hl]                                       ; $5e7a: $4e
	ld a, $ac                                        ; $5e7b: $3e $ac
	add a                                            ; $5e7d: $87
	ldh a, [$5b]                                     ; $5e7e: $f0 $5b
	ldh a, [$5e]                                     ; $5e80: $f0 $5e
	db $ec                                           ; $5e82: $ec
	ret c                                            ; $5e83: $d8

	and b                                            ; $5e84: $a0
	cpl                                              ; $5e85: $2f
	ld b, e                                          ; $5e86: $43
	add a                                            ; $5e87: $87
	ldh a, [$5b]                                     ; $5e88: $f0 $5b
	ldh a, [$5e]                                     ; $5e8a: $f0 $5e
	inc a                                            ; $5e8c: $3c
	ld a, [hl-]                                      ; $5e8d: $3a
	ld [hl], h                                       ; $5e8e: $74
	ld c, b                                          ; $5e8f: $48
	and b                                            ; $5e90: $a0
	db $eb                                           ; $5e91: $eb
	adc c                                            ; $5e92: $89
	xor h                                            ; $5e93: $ac
	ld e, h                                          ; $5e94: $5c
	ldh a, [rKEY1]                                   ; $5e95: $f0 $4d
	ld a, $59                                        ; $5e97: $3e $59
	di                                               ; $5e99: $f3
	ld [hl], h                                       ; $5e9a: $74
	di                                               ; $5e9b: $f3
	ld [hl], a                                       ; $5e9c: $77
	inc a                                            ; $5e9d: $3c
	ld a, [hl-]                                      ; $5e9e: $3a
	and b                                            ; $5e9f: $a0

Call_095_5ea0:
	ld b, [hl]                                       ; $5ea0: $46
	ld [hl], h                                       ; $5ea1: $74
	inc [hl]                                         ; $5ea2: $34
	ld c, a                                          ; $5ea3: $4f
	dec sp                                           ; $5ea4: $3b

jr_095_5ea5:
	ld c, c                                          ; $5ea5: $49
	inc de                                           ; $5ea6: $13
	ldh a, [$b2]                                     ; $5ea7: $f0 $b2
	ldh a, [rKEY1]                                   ; $5ea9: $f0 $4d
	dec a                                            ; $5eab: $3d
	inc a                                            ; $5eac: $3c
	dec sp                                           ; $5ead: $3b
	dec a                                            ; $5eae: $3d
	ld a, [hl-]                                      ; $5eaf: $3a
	and b                                            ; $5eb0: $a0
	cpl                                              ; $5eb1: $2f
	ld b, e                                          ; $5eb2: $43
	db $ed                                           ; $5eb3: $ed
	ld a, c                                          ; $5eb4: $79
	ld c, e                                          ; $5eb5: $4b
	sub h                                            ; $5eb6: $94
	ld a, b                                          ; $5eb7: $78
	ld c, [hl]                                       ; $5eb8: $4e
	ld b, d                                          ; $5eb9: $42
	and c                                            ; $5eba: $a1
	add hl, sp                                       ; $5ebb: $39
	dec sp                                           ; $5ebc: $3b
	ld c, b                                          ; $5ebd: $48
	dec [hl]                                         ; $5ebe: $35
	inc hl                                           ; $5ebf: $23
	inc de                                           ; $5ec0: $13
	ld e, b                                          ; $5ec1: $58
	inc [hl]                                         ; $5ec2: $34
	inc h                                            ; $5ec3: $24
	ld e, b                                          ; $5ec4: $58
	ld [hl], h                                       ; $5ec5: $74
	inc [hl]                                         ; $5ec6: $34
	ld l, d                                          ; $5ec7: $6a
	ldh a, [$0d]                                     ; $5ec8: $f0 $0d
	ld c, e                                          ; $5eca: $4b
	inc de                                           ; $5ecb: $13
	ld e, d                                          ; $5ecc: $5a
	ld d, h                                          ; $5ecd: $54
	ld b, a                                          ; $5ece: $47
	db $eb                                           ; $5ecf: $eb
	adc e                                            ; $5ed0: $8b
	and c                                            ; $5ed1: $a1
	cpl                                              ; $5ed2: $2f
	ld b, e                                          ; $5ed3: $43
	ld l, e                                          ; $5ed4: $6b
	inc a                                            ; $5ed5: $3c
	inc [hl]                                         ; $5ed6: $34
	ld l, [hl]                                       ; $5ed7: $6e
	ld a, e                                          ; $5ed8: $7b
	ld b, b                                          ; $5ed9: $40
	ld e, c                                          ; $5eda: $59
	ld b, h                                          ; $5edb: $44
	ld a, [hl-]                                      ; $5edc: $3a
	ld c, b                                          ; $5edd: $48
	and b                                            ; $5ede: $a0
	ld c, a                                          ; $5edf: $4f
	add hl, sp                                       ; $5ee0: $39
	ld d, c                                          ; $5ee1: $51
	sbc l                                            ; $5ee2: $9d
	inc de                                           ; $5ee3: $13
	ld l, d                                          ; $5ee4: $6a
	ldh a, [rAUD1HIGH]                               ; $5ee5: $f0 $14
	ld c, a                                          ; $5ee7: $4f
	ldh a, [$ce]                                     ; $5ee8: $f0 $ce
	ld h, e                                          ; $5eea: $63
	ld d, a                                          ; $5eeb: $57
	ld b, h                                          ; $5eec: $44
	ld c, h                                          ; $5eed: $4c
	and b                                            ; $5eee: $a0
	ld a, b                                          ; $5eef: $78
	ldh a, [rAUD1HIGH]                               ; $5ef0: $f0 $14
	ld c, e                                          ; $5ef2: $4b
	xor h                                            ; $5ef3: $ac
	ld l, e                                          ; $5ef4: $6b
	ld d, e                                          ; $5ef5: $53
	db $ed                                           ; $5ef6: $ed
	ld a, e                                          ; $5ef7: $7b
	ld c, [hl]                                       ; $5ef8: $4e
	inc a                                            ; $5ef9: $3c
	ld a, [hl-]                                      ; $5efa: $3a
	and c                                            ; $5efb: $a1
	cpl                                              ; $5efc: $2f
	ld b, e                                          ; $5efd: $43
	ld l, e                                          ; $5efe: $6b
	ld b, h                                          ; $5eff: $44
	ld e, a                                          ; $5f00: $5f
	add hl, sp                                       ; $5f01: $39
	ld c, h                                          ; $5f02: $4c
	and b                                            ; $5f03: $a0
	ld b, b                                          ; $5f04: $40
	add hl, sp                                       ; $5f05: $39
	ld b, h                                          ; $5f06: $44
	inc [hl]                                         ; $5f07: $34
	ld c, a                                          ; $5f08: $4f
	add hl, sp                                       ; $5f09: $39
	ld d, c                                          ; $5f0a: $51
	sbc l                                            ; $5f0b: $9d
	inc de                                           ; $5f0c: $13
	ld l, a                                          ; $5f0d: $6f
	db $ec                                           ; $5f0e: $ec
	inc h                                            ; $5f0f: $24
	ld b, l                                          ; $5f10: $45
	and b                                            ; $5f11: $a0
	cpl                                              ; $5f12: $2f
	ld b, e                                          ; $5f13: $43
	ld e, [hl]                                       ; $5f14: $5e
	dec sp                                           ; $5f15: $3b
	inc [hl]                                         ; $5f16: $34
	ld b, b                                          ; $5f17: $40
	add hl, sp                                       ; $5f18: $39
	ld b, h                                          ; $5f19: $44
	dec sp                                           ; $5f1a: $3b
	dec a                                            ; $5f1b: $3d
	and c                                            ; $5f1c: $a1
	ld a, e                                          ; $5f1d: $7b
	dec sp                                           ; $5f1e: $3b
	ld d, l                                          ; $5f1f: $55
	ld c, l                                          ; $5f20: $4d
	ccf                                              ; $5f21: $3f
	ld c, a                                          ; $5f22: $4f
	xor $05                                          ; $5f23: $ee $05
	ld b, l                                          ; $5f25: $45
	xor b                                            ; $5f26: $a8
	db $eb                                           ; $5f27: $eb
	ld h, b                                          ; $5f28: $60
	sub b                                            ; $5f29: $90
	ld a, $6c                                        ; $5f2a: $3e $6c
	ld b, a                                          ; $5f2c: $47
	inc de                                           ; $5f2d: $13
	sbc c                                            ; $5f2e: $99
	dec sp                                           ; $5f2f: $3b
	ccf                                              ; $5f30: $3f
	ld c, [hl]                                       ; $5f31: $4e

jr_095_5f32:
	inc a                                            ; $5f32: $3c
	ld d, b                                          ; $5f33: $50
	and b                                            ; $5f34: $a0
	cpl                                              ; $5f35: $2f
	ld b, e                                          ; $5f36: $43
	ld b, [hl]                                       ; $5f37: $46
	ld [hl], h                                       ; $5f38: $74
	inc [hl]                                         ; $5f39: $34
	ld l, d                                          ; $5f3a: $6a
	ld l, b                                          ; $5f3b: $68
	ld c, a                                          ; $5f3c: $4f
	inc de                                           ; $5f3d: $13
	ld a, [hl]                                       ; $5f3e: $7e
	jr c, jr_095_5f32                                ; $5f3f: $38 $f1

	xor d                                            ; $5f41: $aa
	ld a, a                                          ; $5f42: $7f
	ld b, h                                          ; $5f43: $44
	ld a, [hl-]                                      ; $5f44: $3a
	ld [hl], h                                       ; $5f45: $74
	and b                                            ; $5f46: $a0
	cpl                                              ; $5f47: $2f
	ld b, e                                          ; $5f48: $43
	db $eb                                           ; $5f49: $eb
	db $fc                                           ; $5f4a: $fc
	xor h                                            ; $5f4b: $ac
	db $eb                                           ; $5f4c: $eb
	rst FarCall                                          ; $5f4d: $f7
	and c                                            ; $5f4e: $a1
	xor $27                                          ; $5f4f: $ee $27
	ld c, c                                          ; $5f51: $49
	xor h                                            ; $5f52: $ac
	xor $06                                          ; $5f53: $ee $06
	ld b, a                                          ; $5f55: $47
	ld a, d                                          ; $5f56: $7a
	ld d, a                                          ; $5f57: $57
	ld d, d                                          ; $5f58: $52
	ld a, c                                          ; $5f59: $79
	ld b, c                                          ; $5f5a: $41
	inc a                                            ; $5f5b: $3c
	and c                                            ; $5f5c: $a1
	db $ed                                           ; $5f5d: $ed
	ld d, l                                          ; $5f5e: $55
	ld e, c                                          ; $5f5f: $59
	dec sp                                           ; $5f60: $3b
	xor b                                            ; $5f61: $a8
	ld b, b                                          ; $5f62: $40
	ld c, l                                          ; $5f63: $4d
	ld e, e                                          ; $5f64: $5b
	ld d, [hl]                                       ; $5f65: $56
	inc [hl]                                         ; $5f66: $34
	xor $06                                          ; $5f67: $ee $06
	ld b, a                                          ; $5f69: $47
	inc de                                           ; $5f6a: $13
	or b                                             ; $5f6b: $b0
	and b                                            ; $5f6c: $a0
	xor $27                                          ; $5f6d: $ee $27
	ld c, c                                          ; $5f6f: $49
	xor $06                                          ; $5f70: $ee $06
	ld a, [hl-]                                      ; $5f72: $3a
	ld b, d                                          ; $5f73: $42
	ld d, e                                          ; $5f74: $53
	inc de                                           ; $5f75: $13
	db $eb                                           ; $5f76: $eb
	ld c, a                                          ; $5f77: $4f
	ld c, d                                          ; $5f78: $4a
	ld d, c                                          ; $5f79: $51
	inc a                                            ; $5f7a: $3c
	xor c                                            ; $5f7b: $a9
	ld e, e                                          ; $5f7c: $5b
	ld d, [hl]                                       ; $5f7d: $56
	ld b, [hl]                                       ; $5f7e: $46
	inc [hl]                                         ; $5f7f: $34
	xor $08                                          ; $5f80: $ee $08
	ld c, d                                          ; $5f82: $4a
	ld a, d                                          ; $5f83: $7a
	ld d, a                                          ; $5f84: $57
	ld d, d                                          ; $5f85: $52
	ld d, c                                          ; $5f86: $51
	and b                                            ; $5f87: $a0
	xor $1f                                          ; $5f88: $ee $1f
	inc [hl]                                         ; $5f8a: $34
	jr c, jr_095_5fc5                                ; $5f8b: $38 $38

	ld c, d                                          ; $5f8d: $4a
	ld d, c                                          ; $5f8e: $51
	ld b, l                                          ; $5f8f: $45
	xor b                                            ; $5f90: $a8
	xor $06                                          ; $5f91: $ee $06
	ld b, a                                          ; $5f93: $47
	ld a, d                                          ; $5f94: $7a
	ld e, a                                          ; $5f95: $5f
	and b                                            ; $5f96: $a0
	ld b, [hl]                                       ; $5f97: $46
	dec sp                                           ; $5f98: $3b
	inc [hl]                                         ; $5f99: $34
	ld d, $a8                                        ; $5f9a: $16 $a8
	ld l, d                                          ; $5f9c: $6a
	ld a, d                                          ; $5f9d: $7a
	ld d, a                                          ; $5f9e: $57
	ld a, [hl-]                                      ; $5f9f: $3a
	ld b, c                                          ; $5fa0: $41
	ld c, d                                          ; $5fa1: $4a

jr_095_5fa2:
	ld d, c                                          ; $5fa2: $51
	inc a                                            ; $5fa3: $3c
	and c                                            ; $5fa4: $a1
	xor $1f                                          ; $5fa5: $ee $1f
	inc [hl]                                         ; $5fa7: $34
	jr c, @+$3a                                      ; $5fa8: $38 $38

	ld c, d                                          ; $5faa: $4a
	ld d, c                                          ; $5fab: $51
	ld b, l                                          ; $5fac: $45
	xor b                                            ; $5fad: $a8
	ld a, d                                          ; $5fae: $7a
	ld d, a                                          ; $5faf: $57
	ld d, d                                          ; $5fb0: $52
	ld a, $66                                        ; $5fb1: $3e $66
	and b                                            ; $5fb3: $a0
	cpl                                              ; $5fb4: $2f
	ld [hl-], a                                      ; $5fb5: $32
	halt                                             ; $5fb6: $76
	ld c, e                                          ; $5fb7: $4b
	db $eb                                           ; $5fb8: $eb
	db $fc                                           ; $5fb9: $fc
	ld c, c                                          ; $5fba: $49
	xor h                                            ; $5fbb: $ac
	ld [$a32a], a                                    ; $5fbc: $ea $2a $a3
	cpl                                              ; $5fbf: $2f
	ld [hl-], a                                      ; $5fc0: $32
	ld c, c                                          ; $5fc1: $49
	inc [hl]                                         ; $5fc2: $34
	add d                                            ; $5fc3: $82
	add hl, sp                                       ; $5fc4: $39

jr_095_5fc5:
	ld b, l                                          ; $5fc5: $45
	add hl, sp                                       ; $5fc6: $39
	ld a, [hl-]                                      ; $5fc7: $3a
	ld d, h                                          ; $5fc8: $54
	ld c, c                                          ; $5fc9: $49
	inc de                                           ; $5fca: $13
	ld h, d                                          ; $5fcb: $62
	ldh a, [rAUDVOL]                                 ; $5fcc: $f0 $24
	ld a, $3a                                        ; $5fce: $3e $3a
	ld d, e                                          ; $5fd0: $53
	ld d, b                                          ; $5fd1: $50
	ldh a, [$a3]                                     ; $5fd2: $f0 $a3
	sbc a                                            ; $5fd4: $9f
	ld a, $3d                                        ; $5fd5: $3e $3d
	and e                                            ; $5fd7: $a3
	ld b, [hl]                                       ; $5fd8: $46
	ld e, c                                          ; $5fd9: $59
	ld b, [hl]                                       ; $5fda: $46
	inc [hl]                                         ; $5fdb: $34
	ld l, [hl]                                       ; $5fdc: $6e
	ld b, h                                          ; $5fdd: $44
	ld a, [hl-]                                      ; $5fde: $3a
	ld [hl], h                                       ; $5fdf: $74
	xor b                                            ; $5fe0: $a8
	ld [$48a3], a                                    ; $5fe1: $ea $a3 $48
	and b                                            ; $5fe4: $a0
	cpl                                              ; $5fe5: $2f
	ld b, e                                          ; $5fe6: $43
	db $ec                                           ; $5fe7: $ec
	ld bc, $4034                                     ; $5fe8: $01 $34 $40
	add hl, sp                                       ; $5feb: $39
	ld b, h                                          ; $5fec: $44
	ld c, h                                          ; $5fed: $4c
	and b                                            ; $5fee: $a0
	ld c, a                                          ; $5fef: $4f
	add hl, sp                                       ; $5ff0: $39
	inc [hl]                                         ; $5ff1: $34
	ldh a, [$60]                                     ; $5ff2: $f0 $60
	add e                                            ; $5ff4: $83
	ld l, c                                          ; $5ff5: $69
	ld a, [hl-]                                      ; $5ff6: $3a
	ld b, c                                          ; $5ff7: $41
	ccf                                              ; $5ff8: $3f
	inc de                                           ; $5ff9: $13
	pop af                                           ; $5ffa: $f1
	ld c, d                                          ; $5ffb: $4a
	ld e, l                                          ; $5ffc: $5d
	dec a                                            ; $5ffd: $3d
	ld d, l                                          ; $5ffe: $55
	ld a, [hl-]                                      ; $5fff: $3a
	jr c, jr_095_5fa2                                ; $6000: $38 $a0

	cpl                                              ; $6002: $2f
	ld b, e                                          ; $6003: $43
	ld c, d                                          ; $6004: $4a
	ld c, a                                          ; $6005: $4f
	xor h                                            ; $6006: $ac
	sub d                                            ; $6007: $92
	adc [hl]                                         ; $6008: $8e
	ld c, [hl]                                       ; $6009: $4e
	ld a, $3c                                        ; $600a: $3e $3c
	ld a, [hl-]                                      ; $600c: $3a
	jr c, jr_095_605b                                ; $600d: $38 $4c

	and b                                            ; $600f: $a0
	ld b, b                                          ; $6010: $40
	ld c, l                                          ; $6011: $4d
	ld c, e                                          ; $6012: $4b
	inc [hl]                                         ; $6013: $34
	ld b, b                                          ; $6014: $40
	add hl, sp                                       ; $6015: $39
	ld b, h                                          ; $6016: $44
	ld e, l                                          ; $6017: $5d
	ld e, d                                          ; $6018: $5a
	ld c, b                                          ; $6019: $48
	and b                                            ; $601a: $a0
	db $eb                                           ; $601b: $eb
	rst JumpTable                                          ; $601c: $c7
	inc de                                           ; $601d: $13
	ld a, $3d                                        ; $601e: $3e $3d
	jr c, @+$3c                                      ; $6020: $38 $3a

	ld [hl], h                                       ; $6022: $74
	and b                                            ; $6023: $a0
	cpl                                              ; $6024: $2f
	ld b, e                                          ; $6025: $43
	sub h                                            ; $6026: $94
	ld a, b                                          ; $6027: $78
	ld c, [hl]                                       ; $6028: $4e
	ld c, c                                          ; $6029: $49
	jr c, jr_095_6064                                ; $602a: $38 $38

	ld c, h                                          ; $602c: $4c
	and b                                            ; $602d: $a0
	db $ec                                           ; $602e: $ec
	rst SubAFromHL                                          ; $602f: $d7
	sub b                                            ; $6030: $90
	ld a, $6c                                        ; $6031: $3e $6c
	and b                                            ; $6033: $a0
	cpl                                              ; $6034: $2f
	ld b, e                                          ; $6035: $43
	adc b                                            ; $6036: $88
	sub c                                            ; $6037: $91
	xor b                                            ; $6038: $a8
	sub b                                            ; $6039: $90
	ld a, $6c                                        ; $603a: $3e $6c
	ld b, h                                          ; $603c: $44
	ld c, h                                          ; $603d: $4c
	and b                                            ; $603e: $a0
	xor $1f                                          ; $603f: $ee $1f
	xor b                                            ; $6041: $a8
	ldh a, [$b2]                                     ; $6042: $f0 $b2
	ldh a, [rKEY1]                                   ; $6044: $f0 $4d
	ld b, a                                          ; $6046: $47
	ld h, a                                          ; $6047: $67
	ld d, l                                          ; $6048: $55
	and b                                            ; $6049: $a0
	cpl                                              ; $604a: $2f
	ld b, e                                          ; $604b: $43
	ldh a, [c]                                       ; $604c: $f2
	and h                                            ; $604d: $a4
	ldh a, [c]                                       ; $604e: $f2
	ld b, $78                                        ; $604f: $06 $78
	ccf                                              ; $6051: $3f
	ld b, l                                          ; $6052: $45
	xor b                                            ; $6053: $a8
	sbc c                                            ; $6054: $99
	dec sp                                           ; $6055: $3b
	ccf                                              ; $6056: $3f
	ld c, [hl]                                       ; $6057: $4e
	inc a                                            ; $6058: $3c
	ld d, b                                          ; $6059: $50
	and b                                            ; $605a: $a0

jr_095_605b:
	xor $27                                          ; $605b: $ee $27
	inc [hl]                                         ; $605d: $34
	db $ec                                           ; $605e: $ec
	rst SubAFromHL                                          ; $605f: $d7
	inc de                                           ; $6060: $13
	sub d                                            ; $6061: $92
	adc [hl]                                         ; $6062: $8e
	dec sp                                           ; $6063: $3b

jr_095_6064:
	ld h, c                                          ; $6064: $61
	ld d, [hl]                                       ; $6065: $56
	xor $1f                                          ; $6066: $ee $1f
	ld b, h                                          ; $6068: $44
	and b                                            ; $6069: $a0
	cpl                                              ; $606a: $2f
	ld b, e                                          ; $606b: $43
	halt                                             ; $606c: $76
	ld c, a                                          ; $606d: $4f
	inc [hl]                                         ; $606e: $34
	sub d                                            ; $606f: $92
	adc [hl]                                         ; $6070: $8e
	dec sp                                           ; $6071: $3b
	ld h, c                                          ; $6072: $61
	ld d, [hl]                                       ; $6073: $56
	ld h, h                                          ; $6074: $64
	add hl, sp                                       ; $6075: $39
	xor b                                            ; $6076: $a8
	ldh a, [$65]                                     ; $6077: $f0 $65
	ldh a, [$75]                                     ; $6079: $f0 $75
	ld b, h                                          ; $607b: $44
	ld e, l                                          ; $607c: $5d
	ld c, e                                          ; $607d: $4b
	ldh a, [c]                                       ; $607e: $f2
	db $fd                                           ; $607f: $fd
	ld e, [hl]                                       ; $6080: $5e
	ccf                                              ; $6081: $3f
	inc de                                           ; $6082: $13
	ld h, h                                          ; $6083: $64
	inc a                                            ; $6084: $3c
	ld a, [hl-]                                      ; $6085: $3a
	ld e, h                                          ; $6086: $5c
	ld d, [hl]                                       ; $6087: $56
	ld c, h                                          ; $6088: $4c
	and b                                            ; $6089: $a0
	db $eb                                           ; $608a: $eb
	ld d, c                                          ; $608b: $51
	xor h                                            ; $608c: $ac
	ld c, a                                          ; $608d: $4f
	add hl, sp                                       ; $608e: $39
	ld d, c                                          ; $608f: $51
	sbc l                                            ; $6090: $9d
	inc de                                           ; $6091: $13
	db $ec                                           ; $6092: $ec
	call nz, Call_095_514a                           ; $6093: $c4 $4a $51
	ld c, h                                          ; $6096: $4c
	and b                                            ; $6097: $a0
	ld h, h                                          ; $6098: $64
	di                                               ; $6099: $f3
	dec a                                            ; $609a: $3d
	ldh a, [c]                                       ; $609b: $f2
	or $f1                                           ; $609c: $f6 $f1
	ld c, $3b                                        ; $609e: $0e $3b
	ccf                                              ; $60a0: $3f
	ld e, h                                          ; $60a1: $5c
	ccf                                              ; $60a2: $3f
	inc de                                           ; $60a3: $13
	db $ec                                           ; $60a4: $ec
	rst FarCall                                          ; $60a5: $f7
	ld c, h                                          ; $60a6: $4c
	and b                                            ; $60a7: $a0
	cpl                                              ; $60a8: $2f
	ld b, e                                          ; $60a9: $43
	xor $2d                                          ; $60aa: $ee $2d
	xor $2d                                          ; $60ac: $ee $2d
	and b                                            ; $60ae: $a0
	db $eb                                           ; $60af: $eb
	ld d, c                                          ; $60b0: $51
	xor h                                            ; $60b1: $ac
	ld c, a                                          ; $60b2: $4f
	add hl, sp                                       ; $60b3: $39
	ld d, c                                          ; $60b4: $51
	sbc l                                            ; $60b5: $9d
	xor $27                                          ; $60b6: $ee $27
	ldh a, [rSTAT]                                   ; $60b8: $f0 $41
	xor h                                            ; $60ba: $ac
	db $ec                                           ; $60bb: $ec
	call nz, $413a                                   ; $60bc: $c4 $3a $41
	ld b, h                                          ; $60bf: $44
	ld b, l                                          ; $60c0: $45
	and b                                            ; $60c1: $a0
	ld d, c                                          ; $60c2: $51
	ld [hl], b                                       ; $60c3: $70
	ld d, l                                          ; $60c4: $55
	sub b                                            ; $60c5: $90
	ld a, $6c                                        ; $60c6: $3e $6c
	xor b                                            ; $60c8: $a8
	ld h, h                                          ; $60c9: $64
	di                                               ; $60ca: $f3
	dec a                                            ; $60cb: $3d
	ldh a, [c]                                       ; $60cc: $f2
	or $f1                                           ; $60cd: $f6 $f1
	ld c, $3b                                        ; $60cf: $0e $3b
	ccf                                              ; $60d1: $3f
	ld d, l                                          ; $60d2: $55
	ld c, [hl]                                       ; $60d3: $4e
	ld c, h                                          ; $60d4: $4c
	and b                                            ; $60d5: $a0
	cpl                                              ; $60d6: $2f
	ld b, e                                          ; $60d7: $43
	sub b                                            ; $60d8: $90
	ld a, $6c                                        ; $60d9: $3e $6c
	ld b, a                                          ; $60db: $47
	inc de                                           ; $60dc: $13
	sbc c                                            ; $60dd: $99
	dec sp                                           ; $60de: $3b
	ccf                                              ; $60df: $3f
	ld c, [hl]                                       ; $60e0: $4e
	ld b, l                                          ; $60e1: $45
	and b                                            ; $60e2: $a0
	db $eb                                           ; $60e3: $eb
	ld d, c                                          ; $60e4: $51
	xor h                                            ; $60e5: $ac
	ld c, a                                          ; $60e6: $4f
	add hl, sp                                       ; $60e7: $39
	ld d, c                                          ; $60e8: $51
	sbc l                                            ; $60e9: $9d
	pop af                                           ; $60ea: $f1
	jp nc, $8ff0                                     ; $60eb: $d2 $f0 $8f

	ld l, h                                          ; $60ee: $6c
	ld c, d                                          ; $60ef: $4a
	ld d, c                                          ; $60f0: $51
	ld c, h                                          ; $60f1: $4c
	xor b                                            ; $60f2: $a8
	ld l, e                                          ; $60f3: $6b
	inc a                                            ; $60f4: $3c
	ldh a, [$cc]                                     ; $60f5: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $60f7: $f0 $88
	ld c, e                                          ; $60f9: $4b
	ld b, [hl]                                       ; $60fa: $46
	ld c, [hl]                                       ; $60fb: $4e
	ld b, c                                          ; $60fc: $41
	ld c, d                                          ; $60fd: $4a
	ld d, c                                          ; $60fe: $51
	inc a                                            ; $60ff: $3c
	and c                                            ; $6100: $a1
	cpl                                              ; $6101: $2f
	ld b, e                                          ; $6102: $43
	ld b, c                                          ; $6103: $41
	ld e, c                                          ; $6104: $59
	ld [hl], $23                                     ; $6105: $36 $23
	inc de                                           ; $6107: $13
	ldh a, [$b6]                                     ; $6108: $f0 $b6
	ld b, a                                          ; $610a: $47
	ldh a, [rAUD1LOW]                                ; $610b: $f0 $13
	jr c, jr_095_6149                                ; $610d: $38 $3a

	ld [hl], h                                       ; $610f: $74
	xor b                                            ; $6110: $a8
	db $eb                                           ; $6111: $eb
	db $fc                                           ; $6112: $fc
	ld c, e                                          ; $6113: $4b
	and c                                            ; $6114: $a1
	xor $27                                          ; $6115: $ee $27
	ld c, e                                          ; $6117: $4b
	db $eb                                           ; $6118: $eb
	pop af                                           ; $6119: $f1
	ld c, c                                          ; $611a: $49
	inc de                                           ; $611b: $13
	pop af                                           ; $611c: $f1
	cpl                                              ; $611d: $2f
	ldh a, [rPCM34]                                  ; $611e: $f0 $77
	pop af                                           ; $6120: $f1
	bit 0, a                                         ; $6121: $cb $47
	ld h, a                                          ; $6123: $67
	ld d, l                                          ; $6124: $55
	ld b, d                                          ; $6125: $42
	and b                                            ; $6126: $a0
	cpl                                              ; $6127: $2f
	ld b, e                                          ; $6128: $43
	pop af                                           ; $6129: $f1
	cpl                                              ; $612a: $2f
	inc a                                            ; $612b: $3c
	inc [hl]                                         ; $612c: $34
	ld a, [hl]                                       ; $612d: $7e
	jr c, jr_095_617c                                ; $612e: $38 $4c

	and b                                            ; $6130: $a0
	db $eb                                           ; $6131: $eb
	ld d, c                                          ; $6132: $51
	xor h                                            ; $6133: $ac
	ld c, a                                          ; $6134: $4f
	add hl, sp                                       ; $6135: $39
	ld d, c                                          ; $6136: $51
	sbc l                                            ; $6137: $9d
	ldh a, [c]                                       ; $6138: $f2
	dec sp                                           ; $6139: $3b
	ldh a, [hDisp1_LCDC]                                     ; $613a: $f0 $8f
	ld l, h                                          ; $613c: $6c
	ld c, d                                          ; $613d: $4a
	ld d, c                                          ; $613e: $51
	ld c, h                                          ; $613f: $4c
	xor b                                            ; $6140: $a8
	ld l, e                                          ; $6141: $6b
	inc a                                            ; $6142: $3c
	ldh a, [$cc]                                     ; $6143: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $6145: $f0 $88
	ld c, e                                          ; $6147: $4b
	ld b, [hl]                                       ; $6148: $46

jr_095_6149:
	ld c, [hl]                                       ; $6149: $4e
	ld b, c                                          ; $614a: $41
	ld c, d                                          ; $614b: $4a
	ld d, c                                          ; $614c: $51
	inc a                                            ; $614d: $3c
	and c                                            ; $614e: $a1
	xor $27                                          ; $614f: $ee $27
	ld c, e                                          ; $6151: $4b
	db $eb                                           ; $6152: $eb
	pop af                                           ; $6153: $f1
	ld c, c                                          ; $6154: $49
	inc de                                           ; $6155: $13
	add e                                            ; $6156: $83
	ldh a, [$2f]                                     ; $6157: $f0 $2f
	ld e, c                                          ; $6159: $59
	ld b, a                                          ; $615a: $47
	ld h, a                                          ; $615b: $67
	ld d, l                                          ; $615c: $55
	ld b, d                                          ; $615d: $42
	and b                                            ; $615e: $a0
	cpl                                              ; $615f: $2f
	ld b, e                                          ; $6160: $43
	add e                                            ; $6161: $83
	ldh a, [$2f]                                     ; $6162: $f0 $2f
	ld e, c                                          ; $6164: $59
	inc a                                            ; $6165: $3c
	xor l                                            ; $6166: $ad
	ld b, b                                          ; $6167: $40
	ld c, l                                          ; $6168: $4d
	ld c, a                                          ; $6169: $4f
	ld a, [hl]                                       ; $616a: $7e
	jr c, jr_095_61b9                                ; $616b: $38 $4c

	and b                                            ; $616d: $a0
	db $eb                                           ; $616e: $eb
	ld d, c                                          ; $616f: $51
	xor h                                            ; $6170: $ac
	ld c, a                                          ; $6171: $4f
	add hl, sp                                       ; $6172: $39
	ld d, c                                          ; $6173: $51
	sbc l                                            ; $6174: $9d
	pop af                                           ; $6175: $f1
	sbc d                                            ; $6176: $9a
	ldh a, [hDisp1_LCDC]                                     ; $6177: $f0 $8f
	ld l, h                                          ; $6179: $6c
	ld c, d                                          ; $617a: $4a
	ld d, c                                          ; $617b: $51

jr_095_617c:
	ld c, h                                          ; $617c: $4c
	xor b                                            ; $617d: $a8
	ld l, e                                          ; $617e: $6b
	inc a                                            ; $617f: $3c
	ldh a, [$cc]                                     ; $6180: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $6182: $f0 $88
	ld c, e                                          ; $6184: $4b
	ld b, [hl]                                       ; $6185: $46
	ld c, [hl]                                       ; $6186: $4e
	ld b, c                                          ; $6187: $41
	ld c, d                                          ; $6188: $4a
	ld d, c                                          ; $6189: $51
	inc a                                            ; $618a: $3c
	and c                                            ; $618b: $a1
	xor $27                                          ; $618c: $ee $27
	ld c, a                                          ; $618e: $4f
	ldh a, [rAUD1LOW]                                ; $618f: $f0 $13
	jr c, jr_095_61d5                                ; $6191: $38 $42

	and b                                            ; $6193: $a0
	cpl                                              ; $6194: $2f
	ld b, e                                          ; $6195: $43
	pop af                                           ; $6196: $f1
	sbc d                                            ; $6197: $9a
	ldh a, [hDisp1_LCDC]                                     ; $6198: $f0 $8f
	ld l, h                                          ; $619a: $6c
	ld c, e                                          ; $619b: $4b
	inc de                                           ; $619c: $13
	ldh a, [c]                                       ; $619d: $f2
	sub l                                            ; $619e: $95
	jr c, jr_095_61dd                                ; $619f: $38 $3c

	ld d, b                                          ; $61a1: $50
	ld c, h                                          ; $61a2: $4c
	and b                                            ; $61a3: $a0
	db $eb                                           ; $61a4: $eb
	ld d, c                                          ; $61a5: $51
	xor h                                            ; $61a6: $ac
	ld c, a                                          ; $61a7: $4f
	add hl, sp                                       ; $61a8: $39
	ld d, c                                          ; $61a9: $51
	sbc l                                            ; $61aa: $9d
	xor $27                                          ; $61ab: $ee $27
	ld c, a                                          ; $61ad: $4f
	ldh a, [$58]                                     ; $61ae: $f0 $58
	ldh a, [rAUD1HIGH]                               ; $61b0: $f0 $14
	ldh a, [rTIMA]                                   ; $61b2: $f0 $05
	and b                                            ; $61b4: $a0
	cpl                                              ; $61b5: $2f
	ld b, e                                          ; $61b6: $43
	halt                                             ; $61b7: $76
	ld a, [hl-]                                      ; $61b8: $3a

jr_095_61b9:
	ld b, c                                          ; $61b9: $41
	ccf                                              ; $61ba: $3f
	inc de                                           ; $61bb: $13
	ld c, a                                          ; $61bc: $4f
	add hl, sp                                       ; $61bd: $39
	ldh a, [$e5]                                     ; $61be: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $61c0: $f0 $14
	ldh a, [rTIMA]                                   ; $61c2: $f0 $05
	ld b, h                                          ; $61c4: $44
	ld b, l                                          ; $61c5: $45
	and b                                            ; $61c6: $a0
	ldh a, [$d7]                                     ; $61c7: $f0 $d7
	ldh a, [c]                                       ; $61c9: $f2
	inc bc                                           ; $61ca: $03
	ld d, e                                          ; $61cb: $53
	sub h                                            ; $61cc: $94
	ld a, b                                          ; $61cd: $78
	ld c, [hl]                                       ; $61ce: $4e
	ld b, d                                          ; $61cf: $42
	ld d, e                                          ; $61d0: $53
	inc de                                           ; $61d1: $13
	sub b                                            ; $61d2: $90
	ld a, $6c                                        ; $61d3: $3e $6c

jr_095_61d5:
	ld c, d                                          ; $61d5: $4a
	ld d, c                                          ; $61d6: $51
	and b                                            ; $61d7: $a0
	ld c, a                                          ; $61d8: $4f
	add hl, sp                                       ; $61d9: $39
	ld d, c                                          ; $61da: $51
	sbc l                                            ; $61db: $9d
	inc de                                           ; $61dc: $13

jr_095_61dd:
	db $ed                                           ; $61dd: $ed
	ld a, c                                          ; $61de: $79
	ld c, d                                          ; $61df: $4a
	ld d, c                                          ; $61e0: $51
	ld c, h                                          ; $61e1: $4c
	and b                                            ; $61e2: $a0
	ld l, e                                          ; $61e3: $6b
	inc a                                            ; $61e4: $3c
	xor h                                            ; $61e5: $ac
	pop af                                           ; $61e6: $f1
	xor b                                            ; $61e7: $a8
	ld a, $55                                        ; $61e8: $3e $55
	ld a, [hl-]                                      ; $61ea: $3a
	dec sp                                           ; $61eb: $3b
	ld h, c                                          ; $61ec: $61
	ld d, [hl]                                       ; $61ed: $56
	add hl, sp                                       ; $61ee: $39
	ld a, [hl-]                                      ; $61ef: $3a
	and b                                            ; $61f0: $a0
	cpl                                              ; $61f1: $2f
	ld b, e                                          ; $61f2: $43
	ld b, b                                          ; $61f3: $40
	ld b, c                                          ; $61f4: $41
	ld a, [hl-]                                      ; $61f5: $3a
	ld d, h                                          ; $61f6: $54
	ld c, c                                          ; $61f7: $49
	ld a, [hl-]                                      ; $61f8: $3a
	jr c, jr_095_6240                                ; $61f9: $38 $45

	xor b                                            ; $61fb: $a8
	db $ed                                           ; $61fc: $ed
	ld h, d                                          ; $61fd: $62
	ld d, e                                          ; $61fe: $53
	jr c, jr_095_624f                                ; $61ff: $38 $4e

	db $ec                                           ; $6201: $ec
	ret c                                            ; $6202: $d8

	and b                                            ; $6203: $a0
	ld b, b                                          ; $6204: $40
	ld c, l                                          ; $6205: $4d
	ld c, e                                          ; $6206: $4b
	xor h                                            ; $6207: $ac
	ld b, b                                          ; $6208: $40
	add hl, sp                                       ; $6209: $39
	ld b, h                                          ; $620a: $44
	ld e, l                                          ; $620b: $5d
	ld e, d                                          ; $620c: $5a
	ld c, b                                          ; $620d: $48
	and b                                            ; $620e: $a0
	ld c, a                                          ; $620f: $4f
	add hl, sp                                       ; $6210: $39
	ld d, c                                          ; $6211: $51
	sbc l                                            ; $6212: $9d
	xor h                                            ; $6213: $ac
	ld h, h                                          ; $6214: $64

jr_095_6215:
	ldh a, [c]                                       ; $6215: $f2
	ld [hl], e                                       ; $6216: $73
	ldh a, [rLYC]                                    ; $6217: $f0 $45
	ld c, d                                          ; $6219: $4a
	ld d, c                                          ; $621a: $51
	ld c, h                                          ; $621b: $4c
	and b                                            ; $621c: $a0
	xor $27                                          ; $621d: $ee $27
	xor h                                            ; $621f: $ac
	ld h, h                                          ; $6220: $64
	ldh a, [c]                                       ; $6221: $f2
	ld [hl], e                                       ; $6222: $73
	ldh a, [rLYC]                                    ; $6223: $f0 $45
	add a                                            ; $6225: $87
	adc e                                            ; $6226: $8b
	ld e, h                                          ; $6227: $5c
	and b                                            ; $6228: $a0
	ld c, h                                          ; $6229: $4c
	add l                                            ; $622a: $85
	inc [hl]                                         ; $622b: $34
	ld c, a                                          ; $622c: $4f
	add hl, sp                                       ; $622d: $39
	ld d, c                                          ; $622e: $51
	sbc l                                            ; $622f: $9d
	inc de                                           ; $6230: $13
	xor $27                                          ; $6231: $ee $27
	db $ec                                           ; $6233: $ec
	inc h                                            ; $6234: $24
	ld a, [hl-]                                      ; $6235: $3a
	ld b, c                                          ; $6236: $41
	ld b, h                                          ; $6237: $44
	ld b, l                                          ; $6238: $45
	and b                                            ; $6239: $a0
	cpl                                              ; $623a: $2f
	ld b, e                                          ; $623b: $43
	ldh a, [$2d]                                     ; $623c: $f0 $2d
	dec sp                                           ; $623e: $3b
	ccf                                              ; $623f: $3f

jr_095_6240:
	ld c, [hl]                                       ; $6240: $4e
	ld b, l                                          ; $6241: $45
	xor b                                            ; $6242: $a8
	ldh a, [$f4]                                     ; $6243: $f0 $f4
	ld e, [hl]                                       ; $6245: $5e
	ccf                                              ; $6246: $3f
	ld c, [hl]                                       ; $6247: $4e
	inc a                                            ; $6248: $3c
	ld d, b                                          ; $6249: $50
	xor h                                            ; $624a: $ac
	pop af                                           ; $624b: $f1
	cp c                                             ; $624c: $b9
	ldh a, [rVBK]                                    ; $624d: $f0 $4f

jr_095_624f:
	ld a, $3a                                        ; $624f: $3e $3a
	ld b, l                                          ; $6251: $45
	and b                                            ; $6252: $a0
	xor $1f                                          ; $6253: $ee $1f
	xor b                                            ; $6255: $a8
	pop af                                           ; $6256: $f1
	cp c                                             ; $6257: $b9
	ldh a, [rVBK]                                    ; $6258: $f0 $4f
	ld a, $3d                                        ; $625a: $3e $3d
	and b                                            ; $625c: $a0
	ld b, [hl]                                       ; $625d: $46
	dec sp                                           ; $625e: $3b
	ld c, b                                          ; $625f: $48
	ld d, $a0                                        ; $6260: $16 $a0
	cpl                                              ; $6262: $2f
	ld b, e                                          ; $6263: $43
	db $ec                                           ; $6264: $ec
	and $34                                          ; $6265: $e6 $34
	db $eb                                           ; $6267: $eb
	rst FarCall                                          ; $6268: $f7
	and c                                            ; $6269: $a1
	xor $06                                          ; $626a: $ee $06
	ld b, a                                          ; $626c: $47
	ld c, b                                          ; $626d: $48
	inc h                                            ; $626e: $24
	ld a, d                                          ; $626f: $7a
	ld d, b                                          ; $6270: $50
	ld a, [hl-]                                      ; $6271: $3a
	jr c, jr_095_6215                                ; $6272: $38 $a1

	ld e, e                                          ; $6274: $5b
	ld d, [hl]                                       ; $6275: $56
	inc [hl]                                         ; $6276: $34
	ld a, d                                          ; $6277: $7a
	ld e, a                                          ; $6278: $5f
	and b                                            ; $6279: $a0
	rst JumpTable                                          ; $627a: $c7
	xor l                                            ; $627b: $ad
	ld e, e                                          ; $627c: $5b
	ld d, [hl]                                       ; $627d: $56
	ld c, b                                          ; $627e: $48
	and b                                            ; $627f: $a0
	jr c, jr_095_62ba                                ; $6280: $38 $38

	ld b, l                                          ; $6282: $45
	xor b                                            ; $6283: $a8
	ld e, e                                          ; $6284: $5b
	ld d, [hl]                                       ; $6285: $56
	inc [hl]                                         ; $6286: $34
	xor $06                                          ; $6287: $ee $06
	ld b, a                                          ; $6289: $47
	ld a, d                                          ; $628a: $7a
	ld e, a                                          ; $628b: $5f
	and b                                            ; $628c: $a0
	ldh a, [rAUD4LEN]                                ; $628d: $f0 $20
	ld a, l                                          ; $628f: $7d
	ldh a, [rAUD4LEN]                                ; $6290: $f0 $20
	ld a, l                                          ; $6292: $7d
	xor b                                            ; $6293: $a8
	ld d, d                                          ; $6294: $52
	dec a                                            ; $6295: $3d
	ld c, h                                          ; $6296: $4c
	and b                                            ; $6297: $a0
	ld b, [hl]                                       ; $6298: $46
	dec sp                                           ; $6299: $3b
	inc [hl]                                         ; $629a: $34
	ld d, $a8                                        ; $629b: $16 $a8
	db $eb                                           ; $629d: $eb
	rst FarCall                                          ; $629e: $f7
	and c                                            ; $629f: $a1
	jr c, jr_095_62da                                ; $62a0: $38 $38

	ld b, l                                          ; $62a2: $45
	and b                                            ; $62a3: $a0
	ldh a, [rAUD4LEN]                                ; $62a4: $f0 $20
	ld a, l                                          ; $62a6: $7d
	ldh a, [rAUD4LEN]                                ; $62a7: $f0 $20
	ld a, l                                          ; $62a9: $7d
	and b                                            ; $62aa: $a0
	cpl                                              ; $62ab: $2f
	ld [hl-], a                                      ; $62ac: $32
	halt                                             ; $62ad: $76
	ld c, e                                          ; $62ae: $4b
	db $ec                                           ; $62af: $ec
	and $49                                          ; $62b0: $e6 $49
	xor h                                            ; $62b2: $ac
	ld [$a32a], a                                    ; $62b3: $ea $2a $a3
	ld [$44a3], a                                    ; $62b6: $ea $a3 $44
	ld c, h                                          ; $62b9: $4c

jr_095_62ba:
	xor b                                            ; $62ba: $a8
	ld e, d                                          ; $62bb: $5a
	add hl, sp                                       ; $62bc: $39
	ld [hl], $f0                                     ; $62bd: $36 $f0
	ld [hl], l                                       ; $62bf: $75
	adc h                                            ; $62c0: $8c
	ld c, e                                          ; $62c1: $4b
	and b                                            ; $62c2: $a0
	ld l, a                                          ; $62c3: $6f
	ld c, e                                          ; $62c4: $4b
	ld l, l                                          ; $62c5: $6d
	di                                               ; $62c6: $f3
	ld sp, hl                                        ; $62c7: $f9
	di                                               ; $62c8: $f3
	add l                                            ; $62c9: $85
	ld e, l                                          ; $62ca: $5d
	ld b, a                                          ; $62cb: $47
	inc de                                           ; $62cc: $13
	di                                               ; $62cd: $f3
	ld d, l                                          ; $62ce: $55
	ld e, l                                          ; $62cf: $5d
	ld c, [hl]                                       ; $62d0: $4e
	ld h, e                                          ; $62d1: $63
	and b                                            ; $62d2: $a0
	cpl                                              ; $62d3: $2f
	ld b, e                                          ; $62d4: $43
	rst JumpTable                                          ; $62d5: $c7
	ld c, b                                          ; $62d6: $48
	and b                                            ; $62d7: $a0
	db $eb                                           ; $62d8: $eb
	rst JumpTable                                          ; $62d9: $c7

jr_095_62da:
	ld c, d                                          ; $62da: $4a
	ld e, h                                          ; $62db: $5c
	ld c, [hl]                                       ; $62dc: $4e
	ld c, c                                          ; $62dd: $49
	inc de                                           ; $62de: $13
	jr c, jr_095_6319                                ; $62df: $38 $38

	ld b, d                                          ; $62e1: $42
	ld b, a                                          ; $62e2: $47
	ld c, h                                          ; $62e3: $4c
	ld c, b                                          ; $62e4: $48
	add hl, bc                                       ; $62e5: $09
	sub b                                            ; $62e6: $90
	ld a, $6c                                        ; $62e7: $3e $6c
	ld b, h                                          ; $62e9: $44
	ld c, h                                          ; $62ea: $4c
	and b                                            ; $62eb: $a0
	cpl                                              ; $62ec: $2f
	ld b, e                                          ; $62ed: $43
	xor $1f                                          ; $62ee: $ee $1f

jr_095_62f0:
	inc [hl]                                         ; $62f0: $34
	ld b, b                                          ; $62f1: $40
	add hl, sp                                       ; $62f2: $39
	ld b, h                                          ; $62f3: $44
	ld c, h                                          ; $62f4: $4c
	and b                                            ; $62f5: $a0
	xor $1f                                          ; $62f6: $ee $1f
	xor b                                            ; $62f8: $a8
	ldh a, [rTAC]                                    ; $62f9: $f0 $07
	inc a                                            ; $62fb: $3c
	dec sp                                           ; $62fc: $3b
	dec a                                            ; $62fd: $3d
	and b                                            ; $62fe: $a0
	ld l, d                                          ; $62ff: $6a
	inc a                                            ; $6300: $3c
	ld d, b                                          ; $6301: $50
	inc de                                           ; $6302: $13
	ldh a, [$65]                                     ; $6303: $f0 $65
	ldh a, [$75]                                     ; $6305: $f0 $75
	ldh a, [c]                                       ; $6307: $f2
	db $fd                                           ; $6308: $fd
	ld e, [hl]                                       ; $6309: $5e
	ccf                                              ; $630a: $3f
	ld h, h                                          ; $630b: $64
	inc a                                            ; $630c: $3c
	ld a, [hl-]                                      ; $630d: $3a
	jr c, jr_095_6359                                ; $630e: $38 $49

	ld c, h                                          ; $6310: $4c
	and b                                            ; $6311: $a0
	cpl                                              ; $6312: $2f
	ld b, e                                          ; $6313: $43
	ld b, b                                          ; $6314: $40
	add hl, sp                                       ; $6315: $39
	ld b, h                                          ; $6316: $44
	ld c, h                                          ; $6317: $4c
	xor b                                            ; $6318: $a8

jr_095_6319:
	ldh a, [$65]                                     ; $6319: $f0 $65
	ldh a, [$75]                                     ; $631b: $f0 $75
	ld b, h                                          ; $631d: $44
	ld e, l                                          ; $631e: $5d
	ld c, e                                          ; $631f: $4b
	ldh a, [c]                                       ; $6320: $f2
	db $fd                                           ; $6321: $fd
	ld e, [hl]                                       ; $6322: $5e
	ccf                                              ; $6323: $3f
	ld h, h                                          ; $6324: $64
	ld d, h                                          ; $6325: $54
	add hl, sp                                       ; $6326: $39
	and b                                            ; $6327: $a0
	ld c, e                                          ; $6328: $4b
	ld d, a                                          ; $6329: $57
	ld e, h                                          ; $632a: $5c
	dec sp                                           ; $632b: $3b
	ccf                                              ; $632c: $3f
	jr c, jr_095_6384                                ; $632d: $38 $55

	ld h, e                                          ; $632f: $63
	ld b, l                                          ; $6330: $45
	and b                                            ; $6331: $a0
	xor $06                                          ; $6332: $ee $06
	ld b, a                                          ; $6334: $47
	ld c, b                                          ; $6335: $48
	add hl, bc                                       ; $6336: $09
	cpl                                              ; $6337: $2f
	ld b, e                                          ; $6338: $43
	ld e, [hl]                                       ; $6339: $5e
	dec sp                                           ; $633a: $3b
	and c                                            ; $633b: $a1
	add hl, sp                                       ; $633c: $39
	inc [hl]                                         ; $633d: $34
	add hl, sp                                       ; $633e: $39
	xor $1f                                          ; $633f: $ee $1f
	inc [hl]                                         ; $6341: $34
	ld l, e                                          ; $6342: $6b
	ld c, d                                          ; $6343: $4a
	ld c, a                                          ; $6344: $4f
	ld a, [hl-]                                      ; $6345: $3a
	jr c, jr_095_62f0                                ; $6346: $38 $a8

	sub b                                            ; $6348: $90
	ld a, $6c                                        ; $6349: $3e $6c
	ld b, h                                          ; $634b: $44
	ld c, h                                          ; $634c: $4c
	and b                                            ; $634d: $a0
	ld c, a                                          ; $634e: $4f
	add hl, sp                                       ; $634f: $39
	ld d, c                                          ; $6350: $51
	sbc l                                            ; $6351: $9d
	pop af                                           ; $6352: $f1
	jp nc, $8ff0                                     ; $6353: $d2 $f0 $8f

	ld l, h                                          ; $6356: $6c
	ld b, h                                          ; $6357: $44
	ld c, h                                          ; $6358: $4c

jr_095_6359:
	xor b                                            ; $6359: $a8
	ld l, e                                          ; $635a: $6b
	inc a                                            ; $635b: $3c
	ldh a, [$cc]                                     ; $635c: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $635e: $f0 $88
	ldh a, [$d9]                                     ; $6360: $f0 $d9
	ccf                                              ; $6362: $3f
	ccf                                              ; $6363: $3f
	ld c, [hl]                                       ; $6364: $4e
	ld b, d                                          ; $6365: $42
	and c                                            ; $6366: $a1
	cpl                                              ; $6367: $2f
	ld b, e                                          ; $6368: $43
	ld b, c                                          ; $6369: $41
	ld e, c                                          ; $636a: $59
	ld [hl], $23                                     ; $636b: $36 $23
	inc de                                           ; $636d: $13
	ldh a, [$b6]                                     ; $636e: $f0 $b6
	ld b, a                                          ; $6370: $47
	ldh a, [rAUD1LOW]                                ; $6371: $f0 $13
	jr c, jr_095_63af                                ; $6373: $38 $3a

	ld [hl], h                                       ; $6375: $74
	xor b                                            ; $6376: $a8
	db $ec                                           ; $6377: $ec
	and $4b                                          ; $6378: $e6 $4b
	and c                                            ; $637a: $a1
	ld l, a                                          ; $637b: $6f
	ld c, e                                          ; $637c: $4b
	ldh a, [$b2]                                     ; $637d: $f0 $b2
	ldh a, [rLY]                                     ; $637f: $f0 $44
	pop af                                           ; $6381: $f1
	sbc b                                            ; $6382: $98
	ld b, d                                          ; $6383: $42

jr_095_6384:
	ld c, b                                          ; $6384: $48
	xor h                                            ; $6385: $ac
	jr c, jr_095_63bc                                ; $6386: $38 $34

	jr c, jr_095_63e8                                ; $6388: $38 $5e

	inc [hl]                                         ; $638a: $34
	pop af                                           ; $638b: $f1
	cpl                                              ; $638c: $2f
	ld b, a                                          ; $638d: $47
	ldh a, [hDisp1_SCY]                                     ; $638e: $f0 $90
	ldh a, [$cb]                                     ; $6390: $f0 $cb
	ld b, a                                          ; $6392: $47
	ld c, d                                          ; $6393: $4a
	ld c, a                                          ; $6394: $4f
	inc de                                           ; $6395: $13
	db $eb                                           ; $6396: $eb
	adc e                                            ; $6397: $8b
	and b                                            ; $6398: $a0
	cpl                                              ; $6399: $2f
	ld b, e                                          ; $639a: $43
	pop af                                           ; $639b: $f1
	cpl                                              ; $639c: $2f
	inc a                                            ; $639d: $3c
	ld c, b                                          ; $639e: $48
	ld a, [hl]                                       ; $639f: $7e
	jr c, jr_095_63ee                                ; $63a0: $38 $4c

	and b                                            ; $63a2: $a0
	ld c, a                                          ; $63a3: $4f
	add hl, sp                                       ; $63a4: $39
	ld d, c                                          ; $63a5: $51
	sbc l                                            ; $63a6: $9d
	ldh a, [c]                                       ; $63a7: $f2
	dec sp                                           ; $63a8: $3b
	ldh a, [hDisp1_LCDC]                                     ; $63a9: $f0 $8f
	ld l, h                                          ; $63ab: $6c
	ld b, h                                          ; $63ac: $44
	ld c, h                                          ; $63ad: $4c
	xor b                                            ; $63ae: $a8

jr_095_63af:
	ld l, e                                          ; $63af: $6b
	inc a                                            ; $63b0: $3c
	ldh a, [$cc]                                     ; $63b1: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $63b3: $f0 $88
	ldh a, [$d9]                                     ; $63b5: $f0 $d9
	ccf                                              ; $63b7: $3f
	ccf                                              ; $63b8: $3f
	ld c, [hl]                                       ; $63b9: $4e
	ld b, d                                          ; $63ba: $42
	and c                                            ; $63bb: $a1

jr_095_63bc:
	call c, $ac85                                    ; $63bc: $dc $85 $ac
	add e                                            ; $63bf: $83
	ldh a, [$2f]                                     ; $63c0: $f0 $2f
	ld e, c                                          ; $63c2: $59
	ld b, a                                          ; $63c3: $47
	ld c, d                                          ; $63c4: $4a
	ld c, a                                          ; $63c5: $4f
	db $eb                                           ; $63c6: $eb
	adc e                                            ; $63c7: $8b
	and b                                            ; $63c8: $a0
	ld c, a                                          ; $63c9: $4f
	add hl, sp                                       ; $63ca: $39
	ld d, c                                          ; $63cb: $51
	sbc l                                            ; $63cc: $9d
	pop af                                           ; $63cd: $f1
	sbc d                                            ; $63ce: $9a
	ldh a, [hDisp1_LCDC]                                     ; $63cf: $f0 $8f
	ld l, h                                          ; $63d1: $6c
	ld b, h                                          ; $63d2: $44
	ld c, h                                          ; $63d3: $4c
	xor b                                            ; $63d4: $a8
	ld l, e                                          ; $63d5: $6b
	inc a                                            ; $63d6: $3c
	ldh a, [$cc]                                     ; $63d7: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $63d9: $f0 $88
	ldh a, [$d9]                                     ; $63db: $f0 $d9
	ccf                                              ; $63dd: $3f
	ccf                                              ; $63de: $3f
	ld c, [hl]                                       ; $63df: $4e
	ld b, d                                          ; $63e0: $42
	and c                                            ; $63e1: $a1
	ld e, d                                          ; $63e2: $5a
	ld d, h                                          ; $63e3: $54
	inc a                                            ; $63e4: $3c
	pop af                                           ; $63e5: $f1
	ld b, a                                          ; $63e6: $47
	ld h, a                                          ; $63e7: $67

jr_095_63e8:
	ld b, a                                          ; $63e8: $47
	inc de                                           ; $63e9: $13
	db $eb                                           ; $63ea: $eb
	ld [bc], a                                       ; $63eb: $02
	inc [hl]                                         ; $63ec: $34
	ldh a, [c]                                       ; $63ed: $f2

jr_095_63ee:
	sub l                                            ; $63ee: $95
	jr c, jr_095_642d                                ; $63ef: $38 $3c

	ld d, b                                          ; $63f1: $50
	ld c, h                                          ; $63f2: $4c
	ld c, b                                          ; $63f3: $48
	and b                                            ; $63f4: $a0
	ld c, a                                          ; $63f5: $4f
	add hl, sp                                       ; $63f6: $39
	ld d, c                                          ; $63f7: $51
	sbc l                                            ; $63f8: $9d
	ldh a, [$58]                                     ; $63f9: $f0 $58
	ldh a, [rAUD1HIGH]                               ; $63fb: $f0 $14
	ldh a, [rTIMA]                                   ; $63fd: $f0 $05
	ld b, h                                          ; $63ff: $44
	ld c, h                                          ; $6400: $4c
	and b                                            ; $6401: $a0
	ldh a, [$d7]                                     ; $6402: $f0 $d7
	ldh a, [c]                                       ; $6404: $f2
	inc bc                                           ; $6405: $03
	ld d, e                                          ; $6406: $53
	ld c, d                                          ; $6407: $4a
	ld e, h                                          ; $6408: $5c
	ld c, [hl]                                       ; $6409: $4e
	ld b, c                                          ; $640a: $41
	ld b, h                                          ; $640b: $44
	ld b, l                                          ; $640c: $45
	and b                                            ; $640d: $a0
	ld c, a                                          ; $640e: $4f
	add hl, sp                                       ; $640f: $39
	ld d, c                                          ; $6410: $51
	sbc l                                            ; $6411: $9d
	ldh a, [$e5]                                     ; $6412: $f0 $e5
	ldh a, [rAUD1HIGH]                               ; $6414: $f0 $14
	ldh a, [rTIMA]                                   ; $6416: $f0 $05
	ld b, h                                          ; $6418: $44
	ld c, h                                          ; $6419: $4c
	and b                                            ; $641a: $a0
	pop af                                           ; $641b: $f1
	dec hl                                           ; $641c: $2b
	pop af                                           ; $641d: $f1
	db $ec                                           ; $641e: $ec
	ld c, c                                          ; $641f: $49
	inc a                                            ; $6420: $3c
	xor h                                            ; $6421: $ac
	db $ec                                           ; $6422: $ec
	push bc                                          ; $6423: $c5
	ldh a, [$a4]                                     ; $6424: $f0 $a4
	ld e, [hl]                                       ; $6426: $5e
	ld a, [hl-]                                      ; $6427: $3a
	jr c, jr_095_6473                                ; $6428: $38 $49

	ld c, h                                          ; $642a: $4c
	ld c, b                                          ; $642b: $48
	and b                                            ; $642c: $a0

jr_095_642d:
	ld c, a                                          ; $642d: $4f
	add hl, sp                                       ; $642e: $39
	ld d, c                                          ; $642f: $51
	sbc l                                            ; $6430: $9d
	db $ed                                           ; $6431: $ed
	ld a, c                                          ; $6432: $79
	ld b, h                                          ; $6433: $44
	ld c, h                                          ; $6434: $4c
	ld c, b                                          ; $6435: $48
	and b                                            ; $6436: $a0
	cpl                                              ; $6437: $2f
	ld b, e                                          ; $6438: $43
	adc b                                            ; $6439: $88
	sub c                                            ; $643a: $91
	inc [hl]                                         ; $643b: $34
	ldh a, [$0a]                                     ; $643c: $f0 $0a
	jr c, @+$47                                      ; $643e: $38 $45

	ld c, h                                          ; $6440: $4c
	and b                                            ; $6441: $a0

Call_095_6442:
	ret                                              ; $6442: $c9


	pop af                                           ; $6443: $f1
	xor b                                            ; $6444: $a8
	ld a, $38                                        ; $6445: $3e $38
	ld c, h                                          ; $6447: $4c
	ld c, b                                          ; $6448: $48
	and b                                            ; $6449: $a0
	cpl                                              ; $644a: $2f
	ld b, e                                          ; $644b: $43
	ld b, b                                          ; $644c: $40
	add hl, sp                                       ; $644d: $39
	ld b, h                                          ; $644e: $44
	ld c, h                                          ; $644f: $4c
	ld c, b                                          ; $6450: $48
	and b                                            ; $6451: $a0
	ld c, a                                          ; $6452: $4f
	add hl, sp                                       ; $6453: $39
	xor h                                            ; $6454: $ac
	ld l, d                                          ; $6455: $6a
	ldh a, [rAUD1HIGH]                               ; $6456: $f0 $14
	ld c, a                                          ; $6458: $4f
	ldh a, [$ce]                                     ; $6459: $f0 $ce
	ld h, e                                          ; $645b: $63
	ld d, a                                          ; $645c: $57
	ld b, h                                          ; $645d: $44
	ld c, h                                          ; $645e: $4c
	xor b                                            ; $645f: $a8
	ld b, [hl]                                       ; $6460: $46
	dec sp                                           ; $6461: $3b
	ld c, c                                          ; $6462: $49
	jr c, jr_095_649e                                ; $6463: $38 $39

	ldh a, [$2a]                                     ; $6465: $f0 $2a
	ld b, h                                          ; $6467: $44
	dec sp                                           ; $6468: $3b
	dec a                                            ; $6469: $3d
	ld h, e                                          ; $646a: $63
	and b                                            ; $646b: $a0
	cpl                                              ; $646c: $2f
	ld b, e                                          ; $646d: $43
	adc b                                            ; $646e: $88
	sub c                                            ; $646f: $91
	inc [hl]                                         ; $6470: $34
	ld b, b                                          ; $6471: $40
	add hl, sp                                       ; $6472: $39

jr_095_6473:
	ld [hl], a                                       ; $6473: $77
	add hl, sp                                       ; $6474: $39
	ld b, l                                          ; $6475: $45
	and b                                            ; $6476: $a0
	ld a, b                                          ; $6477: $78
	ldh a, [rAUD1HIGH]                               ; $6478: $f0 $14
	ld c, e                                          ; $647a: $4b
	inc de                                           ; $647b: $13
	ld c, a                                          ; $647c: $4f
	dec sp                                           ; $647d: $3b
	ld c, c                                          ; $647e: $49
	jr c, jr_095_64b9                                ; $647f: $38 $38

	ldh a, [rAUD1HIGH]                               ; $6481: $f0 $14
	ld b, a                                          ; $6483: $47
	ld a, $3d                                        ; $6484: $3e $3d
	jr c, jr_095_64c2                                ; $6486: $38 $3a

	and b                                            ; $6488: $a0
	cpl                                              ; $6489: $2f
	ld b, e                                          ; $648a: $43
	ld b, [hl]                                       ; $648b: $46
	dec sp                                           ; $648c: $3b
	inc [hl]                                         ; $648d: $34
	ld c, a                                          ; $648e: $4f
	add hl, sp                                       ; $648f: $39
	ld d, c                                          ; $6490: $51
	sbc l                                            ; $6491: $9d
	inc de                                           ; $6492: $13
	db $ec                                           ; $6493: $ec
	and $ec                                          ; $6494: $e6 $ec
	inc h                                            ; $6496: $24
	ld b, h                                          ; $6497: $44
	ld b, l                                          ; $6498: $45
	ld c, h                                          ; $6499: $4c
	and b                                            ; $649a: $a0
	ld l, a                                          ; $649b: $6f
	db $ec                                           ; $649c: $ec
	inc h                                            ; $649d: $24

jr_095_649e:
	inc de                                           ; $649e: $13
	ldh a, [$f4]                                     ; $649f: $f0 $f4
	ld e, [hl]                                       ; $64a1: $5e
	ccf                                              ; $64a2: $3f
	ccf                                              ; $64a3: $3f
	ld d, l                                          ; $64a4: $55
	ld c, l                                          ; $64a5: $4d
	dec a                                            ; $64a6: $3d
	ld b, c                                          ; $64a7: $41

Call_095_64a8:
	ld b, h                                          ; $64a8: $44
	and b                                            ; $64a9: $a0
	ldh a, [$29]                                     ; $64aa: $f0 $29
	ld a, $38                                        ; $64ac: $3e $38
	ld c, b                                          ; $64ae: $48
	inc [hl]                                         ; $64af: $34
	ld c, d                                          ; $64b0: $4a
	ld c, a                                          ; $64b1: $4f
	inc [hl]                                         ; $64b2: $34
	ld b, [hl]                                       ; $64b3: $46
	ld d, d                                          ; $64b4: $52
	ld d, a                                          ; $64b5: $57
	inc de                                           ; $64b6: $13
	ld a, a                                          ; $64b7: $7f
	ld h, d                                          ; $64b8: $62

jr_095_64b9:
	pop af                                           ; $64b9: $f1
	sbc l                                            ; $64ba: $9d
	ld h, e                                          ; $64bb: $63
	ld a, [hl-]                                      ; $64bc: $3a
	jr c, jr_095_6509                                ; $64bd: $38 $4a

	and b                                            ; $64bf: $a0
	cpl                                              ; $64c0: $2f
	db $ed                                           ; $64c1: $ed

jr_095_64c2:
	ld l, [hl]                                       ; $64c2: $6e
	ld l, b                                          ; $64c3: $68
	ld c, a                                          ; $64c4: $4f
	ldh a, [$f3]                                     ; $64c5: $f0 $f3
	ld c, l                                          ; $64c7: $4d
	dec a                                            ; $64c8: $3d
	ld a, [hl-]                                      ; $64c9: $3a
	xor b                                            ; $64ca: $a8
	pop af                                           ; $64cb: $f1
	ld d, $38                                        ; $64cc: $16 $38
	ld c, d                                          ; $64ce: $4a
	inc [hl]                                         ; $64cf: $34
	ldh a, [rSVBK]                                   ; $64d0: $f0 $70
	ld b, a                                          ; $64d2: $47
	ld a, d                                          ; $64d3: $7a
	ld e, a                                          ; $64d4: $5f
	add hl, sp                                       ; $64d5: $39
	and e                                            ; $64d6: $a3
	cpl                                              ; $64d7: $2f
	ld [hl-], a                                      ; $64d8: $32
	ld b, [hl]                                       ; $64d9: $46
	ld e, c                                          ; $64da: $59
	inc [hl]                                         ; $64db: $34
	ld l, d                                          ; $64dc: $6a
	ld l, b                                          ; $64dd: $68
	ld c, a                                          ; $64de: $4f
	ldh a, [$f3]                                     ; $64df: $f0 $f3
	ld c, l                                          ; $64e1: $4d
	dec a                                            ; $64e2: $3d
	inc de                                           ; $64e3: $13
	ld a, [hl-]                                      ; $64e4: $3a
	dec [hl]                                         ; $64e5: $35
	pop af                                           ; $64e6: $f1
	ld d, $38                                        ; $64e7: $16 $38
	ld c, d                                          ; $64e9: $4a
	inc [hl]                                         ; $64ea: $34
	ldh a, [rSVBK]                                   ; $64eb: $f0 $70
	ld b, a                                          ; $64ed: $47
	ld a, d                                          ; $64ee: $7a
	ld e, a                                          ; $64ef: $5f
	add hl, sp                                       ; $64f0: $39
	and e                                            ; $64f1: $a3
	cpl                                              ; $64f2: $2f
	ld [hl-], a                                      ; $64f3: $32
	db $ec                                           ; $64f4: $ec
	rst SubAFromHL                                          ; $64f5: $d7
	xor h                                            ; $64f6: $ac
	pop af                                           ; $64f7: $f1
	adc b                                            ; $64f8: $88
	add b                                            ; $64f9: $80
	jr c, jr_095_653b                                ; $64fa: $38 $3f

	dec a                                            ; $64fc: $3d
	sub a                                            ; $64fd: $97
	xor b                                            ; $64fe: $a8
	halt                                             ; $64ff: $76
	ld c, e                                          ; $6500: $4b
	inc [hl]                                         ; $6501: $34
	daa                                              ; $6502: $27
	add h                                            ; $6503: $84
	ldh a, [$2a]                                     ; $6504: $f0 $2a
	ldh a, [rHDMA5]                                  ; $6506: $f0 $55
	pop af                                           ; $6508: $f1

jr_095_6509:
	inc h                                            ; $6509: $24
	dec h                                            ; $650a: $25
	ld b, h                                          ; $650b: $44
	ld e, c                                          ; $650c: $59
	dec sp                                           ; $650d: $3b
	scf                                              ; $650e: $37
	scf                                              ; $650f: $37
	inc sp                                           ; $6510: $33
	add hl, bc                                       ; $6511: $09
	cpl                                              ; $6512: $2f
	ld [hl-], a                                      ; $6513: $32
	pop af                                           ; $6514: $f1
	adc b                                            ; $6515: $88
	add b                                            ; $6516: $80
	ld e, l                                          ; $6517: $5d

jr_095_6518:
	ld h, c                                          ; $6518: $61
	ld d, [hl]                                       ; $6519: $56
	dec sp                                           ; $651a: $3b
	dec a                                            ; $651b: $3d
	ld a, [hl-]                                      ; $651c: $3a
	xor l                                            ; $651d: $ad
	pop af                                           ; $651e: $f1
	or d                                             ; $651f: $b2
	pop af                                           ; $6520: $f1
	ld c, b                                          ; $6521: $48
	pop af                                           ; $6522: $f1
	or d                                             ; $6523: $b2
	pop af                                           ; $6524: $f1
	ld c, b                                          ; $6525: $48
	inc [hl]                                         ; $6526: $34
	halt                                             ; $6527: $76
	ld b, d                                          ; $6528: $42
	pop af                                           ; $6529: $f1
	or d                                             ; $652a: $b2
	pop af                                           ; $652b: $f1
	ld c, b                                          ; $652c: $48
	and e                                            ; $652d: $a3
	cpl                                              ; $652e: $2f
	ld [hl-], a                                      ; $652f: $32
	inc a                                            ; $6530: $3c
	ld a, [hl-]                                      ; $6531: $3a
	ld d, a                                          ; $6532: $57
	pop af                                           ; $6533: $f1
	adc b                                            ; $6534: $88
	add b                                            ; $6535: $80
	jr c, jr_095_6577                                ; $6536: $38 $3f

	dec a                                            ; $6538: $3d
	ld a, [hl-]                                      ; $6539: $3a
	xor b                                            ; $653a: $a8

jr_095_653b:
	sbc h                                            ; $653b: $9c
	ld e, c                                          ; $653c: $59
	dec sp                                           ; $653d: $3b
	ld c, c                                          ; $653e: $49
	inc [hl]                                         ; $653f: $34
	sbc c                                            ; $6540: $99
	dec sp                                           ; $6541: $3b
	ccf                                              ; $6542: $3f
	ccf                                              ; $6543: $3f
	inc de                                           ; $6544: $13
	ld d, l                                          ; $6545: $55
	ld c, l                                          ; $6546: $4d
	ccf                                              ; $6547: $3f
	dec a                                            ; $6548: $3d
	ld l, h                                          ; $6549: $6c
	dec a                                            ; $654a: $3d
	jr c, jr_095_6587                                ; $654b: $38 $3a

	ld b, d                                          ; $654d: $42
	ld b, a                                          ; $654e: $47
	ld c, b                                          ; $654f: $48
	and e                                            ; $6550: $a3
	cpl                                              ; $6551: $2f
	ld [hl-], a                                      ; $6552: $32
	sbc c                                            ; $6553: $99
	dec sp                                           ; $6554: $3b
	ccf                                              ; $6555: $3f
	ccf                                              ; $6556: $3f
	ld d, l                                          ; $6557: $55
	ld c, l                                          ; $6558: $4d
	dec a                                            ; $6559: $3d
	ld b, d                                          ; $655a: $42
	ld b, a                                          ; $655b: $47
	inc de                                           ; $655c: $13
	ldh a, [$d8]                                     ; $655d: $f0 $d8
	ld e, d                                          ; $655f: $5a
	jr c, jr_095_65b6                                ; $6560: $38 $54

	ld c, c                                          ; $6562: $49
	inc de                                           ; $6563: $13
	add d                                            ; $6564: $82
	dec sp                                           ; $6565: $3b
	ld h, c                                          ; $6566: $61
	ld d, [hl]                                       ; $6567: $56
	dec sp                                           ; $6568: $3b
	dec a                                            ; $6569: $3d
	ld a, [hl-]                                      ; $656a: $3a
	ld [hl], h                                       ; $656b: $74
	ld c, b                                          ; $656c: $48
	and e                                            ; $656d: $a3
	cpl                                              ; $656e: $2f
	ld [hl-], a                                      ; $656f: $32
	sbc c                                            ; $6570: $99
	dec sp                                           ; $6571: $3b
	ccf                                              ; $6572: $3f
	ccf                                              ; $6573: $3f
	ld d, l                                          ; $6574: $55
	ld c, l                                          ; $6575: $4d
	dec a                                            ; $6576: $3d

jr_095_6577:
	ld b, d                                          ; $6577: $42
	ld b, a                                          ; $6578: $47
	inc de                                           ; $6579: $13
	ldh a, [$5c]                                     ; $657a: $f0 $5c
	jr c, jr_095_6518                                ; $657c: $38 $9a

	ld a, $3d                                        ; $657e: $3e $3d
	inc a                                            ; $6580: $3c
	ld a, [hl-]                                      ; $6581: $3a
	ld [hl], h                                       ; $6582: $74
	ld c, b                                          ; $6583: $48
	and e                                            ; $6584: $a3
	ld b, [hl]                                       ; $6585: $46
	dec sp                                           ; $6586: $3b

jr_095_6587:
	inc [hl]                                         ; $6587: $34
	db $eb                                           ; $6588: $eb
	ccf                                              ; $6589: $3f
	and b                                            ; $658a: $a0
	cpl                                              ; $658b: $2f
	ld b, e                                          ; $658c: $43
	jr c, jr_095_65c3                                ; $658d: $38 $34

	jr c, @+$70                                      ; $658f: $38 $6e

	xor b                                            ; $6591: $a8
	call nc, $a045                                   ; $6592: $d4 $45 $a0
	sbc $34                                          ; $6595: $de $34
	db $eb                                           ; $6597: $eb
	ccf                                              ; $6598: $3f
	xor b                                            ; $6599: $a8
	ld b, b                                          ; $659a: $40
	ld c, l                                          ; $659b: $4d
	ld e, e                                          ; $659c: $5b
	ld d, [hl]                                       ; $659d: $56
	ld c, b                                          ; $659e: $48
	and b                                            ; $659f: $a0
	cpl                                              ; $65a0: $2f
	ld b, e                                          ; $65a1: $43

jr_095_65a2:
	ldh a, [$5d]                                     ; $65a2: $f0 $5d
	ld a, [hl-]                                      ; $65a4: $3a
	di                                               ; $65a5: $f3
	ld b, c                                          ; $65a6: $41
	pop af                                           ; $65a7: $f1
	db $e4                                           ; $65a8: $e4
	and b                                            ; $65a9: $a0
	cpl                                              ; $65aa: $2f
	ld b, e                                          ; $65ab: $43
	ld b, [hl]                                       ; $65ac: $46
	ld c, l                                          ; $65ad: $4d
	inc [hl]                                         ; $65ae: $34
	db $ec                                           ; $65af: $ec
	rst AddAOntoHL                                          ; $65b0: $ef
	ld c, a                                          ; $65b1: $4f
	inc de                                           ; $65b2: $13
	ldh a, [$fe]                                     ; $65b3: $f0 $fe
	add b                                            ; $65b5: $80

jr_095_65b6:
	inc a                                            ; $65b6: $3c
	dec sp                                           ; $65b7: $3b
	dec a                                            ; $65b8: $3d
	ld b, l                                          ; $65b9: $45
	ld c, h                                          ; $65ba: $4c
	and b                                            ; $65bb: $a0
	ld e, [hl]                                       ; $65bc: $5e
	dec sp                                           ; $65bd: $3b
	inc [hl]                                         ; $65be: $34
	db $ec                                           ; $65bf: $ec
	ld d, $a9                                        ; $65c0: $16 $a9
	ld c, d                                          ; $65c2: $4a

jr_095_65c3:
	ld c, a                                          ; $65c3: $4f

jr_095_65c4:
	inc [hl]                                         ; $65c4: $34
	pop af                                           ; $65c5: $f1
	dec d                                            ; $65c6: $15
	ld c, l                                          ; $65c7: $4d
	ld h, c                                          ; $65c8: $61
	ld d, [hl]                                       ; $65c9: $56
	dec sp                                           ; $65ca: $3b
	dec a                                            ; $65cb: $3d
	xor b                                            ; $65cc: $a8
	ld b, b                                          ; $65cd: $40
	ld c, l                                          ; $65ce: $4d
	ld e, e                                          ; $65cf: $5b
	ld d, [hl]                                       ; $65d0: $56
	ld c, b                                          ; $65d1: $48
	and b                                            ; $65d2: $a0
	cpl                                              ; $65d3: $2f
	ld b, e                                          ; $65d4: $43
	db $ec                                           ; $65d5: $ec
	reti                                             ; $65d6: $d9


	inc [hl]                                         ; $65d7: $34
	xor $1e                                          ; $65d8: $ee $1e
	pop af                                           ; $65da: $f1
	ld b, [hl]                                       ; $65db: $46
	ld b, h                                          ; $65dc: $44
	ld b, l                                          ; $65dd: $45
	and b                                            ; $65de: $a0
	ld b, [hl]                                       ; $65df: $46
	dec sp                                           ; $65e0: $3b
	inc [hl]                                         ; $65e1: $34
	db $eb                                           ; $65e2: $eb
	ccf                                              ; $65e3: $3f
	xor b                                            ; $65e4: $a8
	ld d, d                                          ; $65e5: $52
	dec a                                            ; $65e6: $3d
	inc [hl]                                         ; $65e7: $34
	ldh a, [$fe]                                     ; $65e8: $f0 $fe
	add b                                            ; $65ea: $80
	inc a                                            ; $65eb: $3c
	dec sp                                           ; $65ec: $3b
	ld h, c                                          ; $65ed: $61
	ld d, [hl]                                       ; $65ee: $56
	dec sp                                           ; $65ef: $3b
	dec a                                            ; $65f0: $3d
	ld c, h                                          ; $65f1: $4c
	and b                                            ; $65f2: $a0
	cpl                                              ; $65f3: $2f
	ld b, e                                          ; $65f4: $43
	ld h, h                                          ; $65f5: $64
	jr c, jr_095_665c                                ; $65f6: $38 $64

	jr c, jr_095_65a2                                ; $65f8: $38 $a8

	ld c, a                                          ; $65fa: $4f
	add hl, sp                                       ; $65fb: $39
	pop af                                           ; $65fc: $f1
	ld [hl], e                                       ; $65fd: $73
	ldh a, [$d3]                                     ; $65fe: $f0 $d3
	ldh a, [rAUD3LEVEL]                              ; $6600: $f0 $1c
	ld b, h                                          ; $6602: $44
	adc l                                            ; $6603: $8d
	and b                                            ; $6604: $a0
	cpl                                              ; $6605: $2f
	ld b, e                                          ; $6606: $43
	jr c, jr_095_6641                                ; $6607: $38 $38

	inc a                                            ; $6609: $3c
	ldh a, [rSB]                                     ; $660a: $f0 $01
	ld b, c                                          ; $660c: $41
	ld b, a                                          ; $660d: $47
	inc de                                           ; $660e: $13
	ld a, $3f                                        ; $660f: $3e $3f
	ld d, l                                          ; $6611: $55
	ld c, l                                          ; $6612: $4d
	ld b, l                                          ; $6613: $45
	and b                                            ; $6614: $a0
	cpl                                              ; $6615: $2f
	ld b, e                                          ; $6616: $43
	ld h, h                                          ; $6617: $64
	jr c, jr_095_667e                                ; $6618: $38 $64

	jr c, jr_095_65c4                                ; $661a: $38 $a8

	ld c, a                                          ; $661c: $4f
	add hl, sp                                       ; $661d: $39
	di                                               ; $661e: $f3
	xor a                                            ; $661f: $af
	ldh a, [$d3]                                     ; $6620: $f0 $d3
	ldh a, [rAUD3LEVEL]                              ; $6622: $f0 $1c
	ld b, h                                          ; $6624: $44
	adc l                                            ; $6625: $8d
	and b                                            ; $6626: $a0
	ld e, [hl]                                       ; $6627: $5e
	dec sp                                           ; $6628: $3b
	ld [hl], $f1                                     ; $6629: $36 $f1
	ld [hl], e                                       ; $662b: $73
	ldh a, [$d3]                                     ; $662c: $f0 $d3
	ldh a, [rAUD3LEVEL]                              ; $662e: $f0 $1c
	ld e, e                                          ; $6630: $5b
	ld d, [hl]                                       ; $6631: $56
	ld c, b                                          ; $6632: $48
	xor h                                            ; $6633: $ac
	ld b, b                                          ; $6634: $40
	inc [hl]                                         ; $6635: $34
	ld b, b                                          ; $6636: $40
	ld c, l                                          ; $6637: $4d
	ld e, e                                          ; $6638: $5b
	ld d, [hl]                                       ; $6639: $56
	ld c, b                                          ; $663a: $48
	add hl, bc                                       ; $663b: $09
	cpl                                              ; $663c: $2f
	ld b, e                                          ; $663d: $43
	ld c, b                                          ; $663e: $48
	db $ec                                           ; $663f: $ec
	reti                                             ; $6640: $d9


jr_095_6641:
	ld h, e                                          ; $6641: $63
	ldh a, [rAUD1SWEEP]                              ; $6642: $f0 $10
	ld c, c                                          ; $6644: $49
	ld b, h                                          ; $6645: $44
	ld a, [hl-]                                      ; $6646: $3a
	ld c, b                                          ; $6647: $48
	and b                                            ; $6648: $a0
	ld b, [hl]                                       ; $6649: $46
	dec sp                                           ; $664a: $3b
	xor b                                            ; $664b: $a8
	ld d, d                                          ; $664c: $52
	dec a                                            ; $664d: $3d
	xor h                                            ; $664e: $ac
	ldh a, [$fe]                                     ; $664f: $f0 $fe
	add b                                            ; $6651: $80
	inc a                                            ; $6652: $3c
	dec sp                                           ; $6653: $3b
	ld h, c                                          ; $6654: $61
	ld d, [hl]                                       ; $6655: $56
	dec sp                                           ; $6656: $3b
	dec a                                            ; $6657: $3d
	ld c, h                                          ; $6658: $4c
	and b                                            ; $6659: $a0
	cpl                                              ; $665a: $2f
	ld b, e                                          ; $665b: $43

jr_095_665c:
	ld c, a                                          ; $665c: $4f
	add hl, sp                                       ; $665d: $39
	inc [hl]                                         ; $665e: $34
	jr c, @+$3a                                      ; $665f: $38 $38

	ld b, l                                          ; $6661: $45
	xor b                                            ; $6662: $a8
	db $ed                                           ; $6663: $ed
	ld h, c                                          ; $6664: $61
	ld c, d                                          ; $6665: $4a
	ld c, a                                          ; $6666: $4f
	xor h                                            ; $6667: $ac
	ldh a, [$fe]                                     ; $6668: $f0 $fe
	add b                                            ; $666a: $80
	inc a                                            ; $666b: $3c
	dec sp                                           ; $666c: $3b
	ccf                                              ; $666d: $3f
	ld d, l                                          ; $666e: $55
	ld c, l                                          ; $666f: $4d
	and b                                            ; $6670: $a0
	ld b, b                                          ; $6671: $40
	ld b, c                                          ; $6672: $41
	ld a, [hl-]                                      ; $6673: $3a
	inc [hl]                                         ; $6674: $34
	ldh a, [c]                                       ; $6675: $f2
	ld h, d                                          ; $6676: $62
	ldh a, [rSB]                                     ; $6677: $f0 $01
	ld l, [hl]                                       ; $6679: $6e
	ld d, a                                          ; $667a: $57
	ld a, [hl-]                                      ; $667b: $3a
	dec [hl]                                         ; $667c: $35
	inc hl                                           ; $667d: $23

jr_095_667e:
	inc de                                           ; $667e: $13
	ld [hl], b                                       ; $667f: $70
	ld [hl], c                                       ; $6680: $71
	ld b, c                                          ; $6681: $41
	ld c, h                                          ; $6682: $4c
	xor b                                            ; $6683: $a8
	ld b, b                                          ; $6684: $40
	ld c, l                                          ; $6685: $4d
	ld e, e                                          ; $6686: $5b
	ld d, [hl]                                       ; $6687: $56
	ld c, b                                          ; $6688: $48
	and b                                            ; $6689: $a0
	cpl                                              ; $668a: $2f
	ld b, e                                          ; $668b: $43
	db $ed                                           ; $668c: $ed
	ld [hl], c                                       ; $668d: $71
	sbc l                                            ; $668e: $9d
	ld d, b                                          ; $668f: $50
	jr c, jr_095_66a5                                ; $6690: $38 $13

	db $ec                                           ; $6692: $ec
	db $ed                                           ; $6693: $ed
	ld d, l                                          ; $6694: $55
	ld c, l                                          ; $6695: $4d
	ccf                                              ; $6696: $3f
	ld c, a                                          ; $6697: $4f
	jr c, jr_095_66d2                                ; $6698: $38 $38

	ld b, d                                          ; $669a: $42
	ld b, a                                          ; $669b: $47
	and b                                            ; $669c: $a0
	pop af                                           ; $669d: $f1
	cp l                                             ; $669e: $bd
	ldh a, [$0d]                                     ; $669f: $f0 $0d
	pop af                                           ; $66a1: $f1
	cp l                                             ; $66a2: $bd
	ldh a, [$0d]                                     ; $66a3: $f0 $0d

jr_095_66a5:
	xor h                                            ; $66a5: $ac
	ld [hl], b                                       ; $66a6: $70
	ld [hl], c                                       ; $66a7: $71
	ld b, c                                          ; $66a8: $41
	ld c, h                                          ; $66a9: $4c
	and b                                            ; $66aa: $a0
	cpl                                              ; $66ab: $2f
	ld b, e                                          ; $66ac: $43
	ld d, d                                          ; $66ad: $52
	dec a                                            ; $66ae: $3d
	inc [hl]                                         ; $66af: $34
	sub c                                            ; $66b0: $91
	ld d, a                                          ; $66b1: $57
	pop af                                           ; $66b2: $f1
	ld b, h                                          ; $66b3: $44
	inc a                                            ; $66b4: $3c
	xor l                                            ; $66b5: $ad
	jr c, jr_095_66f0                                ; $66b6: $38 $38

	ld b, l                                          ; $66b8: $45
	xor b                                            ; $66b9: $a8
	ld c, a                                          ; $66ba: $4f
	add hl, sp                                       ; $66bb: $39
	ldh a, [c]                                       ; $66bc: $f2
	add hl, de                                       ; $66bd: $19
	ld [hl], c                                       ; $66be: $71
	ccf                                              ; $66bf: $3f
	ld c, [hl]                                       ; $66c0: $4e
	inc a                                            ; $66c1: $3c
	ld d, b                                          ; $66c2: $50
	and b                                            ; $66c3: $a0
	ld b, b                                          ; $66c4: $40
	ld c, l                                          ; $66c5: $4d
	ld e, e                                          ; $66c6: $5b
	ld d, [hl]                                       ; $66c7: $56
	inc [hl]                                         ; $66c8: $34
	ld l, d                                          ; $66c9: $6a
	ldh a, [$0d]                                     ; $66ca: $f0 $0d
	inc a                                            ; $66cc: $3c
	ld d, b                                          ; $66cd: $50
	xor h                                            ; $66ce: $ac
	pop af                                           ; $66cf: $f1
	ld b, $f1                                        ; $66d0: $06 $f1

jr_095_66d2:
	ld a, $3a                                        ; $66d2: $3e $3a
	ld d, l                                          ; $66d4: $55
	inc [hl]                                         ; $66d5: $34
	ldh a, [$fe]                                     ; $66d6: $f0 $fe
	add b                                            ; $66d8: $80
	inc a                                            ; $66d9: $3c
	ld c, [hl]                                       ; $66da: $4e
	ld c, h                                          ; $66db: $4c
	and b                                            ; $66dc: $a0
	cpl                                              ; $66dd: $2f
	ld b, e                                          ; $66de: $43
	ldh a, [rAUD1LOW]                                ; $66df: $f0 $13
	ldh a, [$63]                                     ; $66e1: $f0 $63
	ld b, a                                          ; $66e3: $47
	ldh a, [$fe]                                     ; $66e4: $f0 $fe
	add b                                            ; $66e6: $80
	inc a                                            ; $66e7: $3c
	ld c, [hl]                                       ; $66e8: $4e
	ld a, [hl-]                                      ; $66e9: $3a
	ld b, l                                          ; $66ea: $45
	and b                                            ; $66eb: $a0
	cpl                                              ; $66ec: $2f
	ld h, $f0                                        ; $66ed: $26 $f0
	ld [hl-], a                                      ; $66ef: $32

jr_095_66f0:
	ld h, l                                          ; $66f0: $65
	ld [hl], e                                       ; $66f1: $73
	dec h                                            ; $66f2: $25
	add hl, bc                                       ; $66f3: $09
	cpl                                              ; $66f4: $2f
	ld b, e                                          ; $66f5: $43
	jr c, @+$3f                                      ; $66f6: $38 $3d

	dec sp                                           ; $66f8: $3b
	and b                                            ; $66f9: $a0
	add hl, bc                                       ; $66fa: $09
	cpl                                              ; $66fb: $2f
	ld [hl-], a                                      ; $66fc: $32
	pop af                                           ; $66fd: $f1
	ld d, $38                                        ; $66fe: $16 $38
	ld c, d                                          ; $6700: $4a
	xor h                                            ; $6701: $ac
	pop af                                           ; $6702: $f1
	nop                                              ; $6703: $00
	pop af                                           ; $6704: $f1
	ld l, b                                          ; $6705: $68
	ld [$a3c5], a                                    ; $6706: $ea $c5 $a3
	ld e, h                                          ; $6709: $5c
	ld d, [hl]                                       ; $670a: $56
	dec sp                                           ; $670b: $3b
	and b                                            ; $670c: $a0
	cpl                                              ; $670d: $2f
	ld b, e                                          ; $670e: $43
	ld [hl], b                                       ; $670f: $70
	inc [hl]                                         ; $6710: $34
	ld [hl], b                                       ; $6711: $70
	ld [hl], c                                       ; $6712: $71
	ld b, c                                          ; $6713: $41
	ld a, [hl-]                                      ; $6714: $3a
	ld e, b                                          ; $6715: $58
	xor l                                            ; $6716: $ad
	ld l, e                                          ; $6717: $6b
	ld b, h                                          ; $6718: $44
	inc [hl]                                         ; $6719: $34
	db $ec                                           ; $671a: $ec
	di                                               ; $671b: $f3
	db $ec                                           ; $671c: $ec
	ret c                                            ; $671d: $d8

	inc a                                            ; $671e: $3c
	xor b                                            ; $671f: $a8
	ldh a, [rAUD2ENV]                                ; $6720: $f0 $17
	ld l, h                                          ; $6722: $6c
	dec a                                            ; $6723: $3d
	jr c, jr_095_6760                                ; $6724: $38 $3a

	pop af                                           ; $6726: $f1
	dec l                                            ; $6727: $2d
	sub h                                            ; $6728: $94
	ld a, $6e                                        ; $6729: $3e $6e
	ld d, e                                          ; $672b: $53
	dec sp                                           ; $672c: $3b
	ccf                                              ; $672d: $3f
	ld c, b                                          ; $672e: $48
	and b                                            ; $672f: $a0
	ld a, [hl-]                                      ; $6730: $3a
	inc [hl]                                         ; $6731: $34
	ld l, e                                          ; $6732: $6b
	ld b, h                                          ; $6733: $44
	ldh a, [rRP]                                     ; $6734: $f0 $56
	inc a                                            ; $6736: $3c
	xor b                                            ; $6737: $a8
	ld a, a                                          ; $6738: $7f
	ld h, d                                          ; $6739: $62
	ldh a, [$9a]                                     ; $673a: $f0 $9a
	ld e, l                                          ; $673c: $5d
	ccf                                              ; $673d: $3f
	ld d, l                                          ; $673e: $55
	ld c, l                                          ; $673f: $4d
	ldh a, [c]                                       ; $6740: $f2
	add d                                            ; $6741: $82
	ld e, [hl]                                       ; $6742: $5e
	and b                                            ; $6743: $a0
	cpl                                              ; $6744: $2f
	ld b, e                                          ; $6745: $43
	ld l, e                                          ; $6746: $6b
	inc [hl]                                         ; $6747: $34
	di                                               ; $6748: $f3
	xor [hl]                                         ; $6749: $ae
	dec sp                                           ; $674a: $3b
	ccf                                              ; $674b: $3f
	ld b, c                                          ; $674c: $41
	ld b, h                                          ; $674d: $44
	ld b, l                                          ; $674e: $45
	and b                                            ; $674f: $a0
	ld b, [hl]                                       ; $6750: $46
	inc [hl]                                         ; $6751: $34
	di                                               ; $6752: $f3
	xor [hl]                                         ; $6753: $ae
	dec sp                                           ; $6754: $3b
	ccf                                              ; $6755: $3f
	ld a, [hl-]                                      ; $6756: $3a
	ld b, c                                          ; $6757: $41
	inc a                                            ; $6758: $3c
	inc de                                           ; $6759: $13
	jr c, jr_095_6796                                ; $675a: $38 $3a

	jr c, jr_095_67b6                                ; $675c: $38 $58

	xor b                                            ; $675e: $a8
	ld e, e                                          ; $675f: $5b

jr_095_6760:
	ld d, [hl]                                       ; $6760: $56
	ld b, [hl]                                       ; $6761: $46
	inc [hl]                                         ; $6762: $34
	pop af                                           ; $6763: $f1
	or [hl]                                          ; $6764: $b6
	ld c, e                                          ; $6765: $4b
	ldh a, [rHDMA5]                                  ; $6766: $f0 $55
	ldh a, [rBCPS]                                   ; $6768: $f0 $68
	ld d, c                                          ; $676a: $51
	ld c, [hl]                                       ; $676b: $4e
	ld b, l                                          ; $676c: $45
	and b                                            ; $676d: $a0
	cpl                                              ; $676e: $2f
	ld b, e                                          ; $676f: $43
	ld l, e                                          ; $6770: $6b
	ld b, h                                          ; $6771: $44
	ld e, a                                          ; $6772: $5f
	inc [hl]                                         ; $6773: $34
	ld b, [hl]                                       ; $6774: $46
	jr c, @-$7e                                      ; $6775: $38 $80

	xor l                                            ; $6777: $ad
	pop af                                           ; $6778: $f1
	ld b, e                                          ; $6779: $43
	dec sp                                           ; $677a: $3b
	ccf                                              ; $677b: $3f
	ld [$a836], a                                    ; $677c: $ea $36 $a8
	ldh a, [$5d]                                     ; $677f: $f0 $5d
	ld a, [hl-]                                      ; $6781: $3a
	ldh a, [$f8]                                     ; $6782: $f0 $f8
	ld c, b                                          ; $6784: $48
	and b                                            ; $6785: $a0
	cpl                                              ; $6786: $2f
	ld b, e                                          ; $6787: $43
	db $ed                                           ; $6788: $ed
	ld d, a                                          ; $6789: $57
	xor h                                            ; $678a: $ac
	ldh a, [$33]                                     ; $678b: $f0 $33
	ldh a, [$cf]                                     ; $678d: $f0 $cf
	ld a, $38                                        ; $678f: $3e $38
	ld l, l                                          ; $6791: $6d
	ld l, b                                          ; $6792: $68
	ld b, h                                          ; $6793: $44
	ld a, [hl-]                                      ; $6794: $3a
	ld [hl], h                                       ; $6795: $74

jr_095_6796:
	xor b                                            ; $6796: $a8
	ld [hl-], a                                      ; $6797: $32
	db $ec                                           ; $6798: $ec
	di                                               ; $6799: $f3
	ld b, d                                          ; $679a: $42
	ldh a, [rAUD4ENV]                                ; $679b: $f0 $21
	ld h, d                                          ; $679d: $62
	inc [hl]                                         ; $679e: $34
	ld l, l                                          ; $679f: $6d
	ldh a, [$0d]                                     ; $67a0: $f0 $0d
	ld c, a                                          ; $67a2: $4f
	ld [hl], d                                       ; $67a3: $72
	ccf                                              ; $67a4: $3f
	inc de                                           ; $67a5: $13
	ld a, [hl-]                                      ; $67a6: $3a
	jr c, @+$51                                      ; $67a7: $38 $4f

	ld b, c                                          ; $67a9: $41
	ld a, [hl-]                                      ; $67aa: $3a
	ld c, b                                          ; $67ab: $48
	and e                                            ; $67ac: $a3
	ld h, h                                          ; $67ad: $64
	jr c, jr_095_67e4                                ; $67ae: $38 $34

	add a                                            ; $67b0: $87
	ldh a, [$5d]                                     ; $67b1: $f0 $5d
	ld b, h                                          ; $67b3: $44
	and d                                            ; $67b4: $a2
	cpl                                              ; $67b5: $2f

jr_095_67b6:
	ld b, e                                          ; $67b6: $43
	ld e, d                                          ; $67b7: $5a
	add hl, sp                                       ; $67b8: $39
	ld a, $3d                                        ; $67b9: $3e $3d
	ld b, c                                          ; $67bb: $41
	ld b, h                                          ; $67bc: $44
	ld b, l                                          ; $67bd: $45
	xor h                                            ; $67be: $ac
	ld b, b                                          ; $67bf: $40
	ld b, c                                          ; $67c0: $41
	ld a, [hl-]                                      ; $67c1: $3a
	ld b, a                                          ; $67c2: $47
	di                                               ; $67c3: $f3
	rrca                                             ; $67c4: $0f
	ccf                                              ; $67c5: $3f
	ccf                                              ; $67c6: $3f
	ld c, b                                          ; $67c7: $48
	and b                                            ; $67c8: $a0
	ld l, d                                          ; $67c9: $6a
	sub [hl]                                         ; $67ca: $96
	dec sp                                           ; $67cb: $3b
	dec a                                            ; $67cc: $3d
	inc de                                           ; $67cd: $13
	db $ed                                           ; $67ce: $ed
	sbc c                                            ; $67cf: $99
	ld b, a                                          ; $67d0: $47
	ld b, l                                          ; $67d1: $45
	ld c, [hl]                                       ; $67d2: $4e
	ld c, c                                          ; $67d3: $49
	xor l                                            ; $67d4: $ad
	db $ec                                           ; $67d5: $ec
	di                                               ; $67d6: $f3
	ld d, e                                          ; $67d7: $53
	xor h                                            ; $67d8: $ac
	ldh a, [$3b]                                     ; $67d9: $f0 $3b
	ldh a, [c]                                       ; $67db: $f2
	pop af                                           ; $67dc: $f1
	ld e, b                                          ; $67dd: $58
	ld c, l                                          ; $67de: $4d
	dec a                                            ; $67df: $3d
	ld b, c                                          ; $67e0: $41
	db $ed                                           ; $67e1: $ed
	ld b, e                                          ; $67e2: $43
	and b                                            ; $67e3: $a0

jr_095_67e4:
	cpl                                              ; $67e4: $2f
	ld b, e                                          ; $67e5: $43
	ld l, e                                          ; $67e6: $6b
	inc [hl]                                         ; $67e7: $34
	db $ec                                           ; $67e8: $ec
	di                                               ; $67e9: $f3
	ld d, e                                          ; $67ea: $53
	ldh a, [$3b]                                     ; $67eb: $f0 $3b
	ldh a, [c]                                       ; $67ed: $f2
	pop af                                           ; $67ee: $f1
	ld [hl], $17                                     ; $67ef: $36 $17
	ld [hl-], a                                      ; $67f1: $32
	ld e, d                                          ; $67f2: $5a
	add hl, sp                                       ; $67f3: $39
	ld d, a                                          ; $67f4: $57
	ld c, d                                          ; $67f5: $4a
	inc [hl]                                         ; $67f6: $34
	ldh a, [$7d]                                     ; $67f7: $f0 $7d
	inc a                                            ; $67f9: $3c
	ld d, b                                          ; $67fa: $50
	jr c, jr_095_6837                                ; $67fb: $38 $3a

	jr c, jr_095_6848                                ; $67fd: $38 $49

	inc de                                           ; $67ff: $13
	ld [hl], a                                       ; $6800: $77
	dec sp                                           ; $6801: $3b
	dec a                                            ; $6802: $3d
	ld c, b                                          ; $6803: $48
	and e                                            ; $6804: $a3
	ld l, d                                          ; $6805: $6a
	inc [hl]                                         ; $6806: $34
	pop af                                           ; $6807: $f1
	db $fd                                           ; $6808: $fd
	ldh a, [$3a]                                     ; $6809: $f0 $3a
	ld b, d                                          ; $680b: $42
	db $f4                                           ; $680c: $f4
	ld h, [hl]                                       ; $680d: $66
	di                                               ; $680e: $f3
	ld bc, $30f0                                     ; $680f: $01 $f0 $30
	ld c, d                                          ; $6812: $4a
	xor h                                            ; $6813: $ac
	db $f4                                           ; $6814: $f4
	ld h, a                                          ; $6815: $67
	db $f4                                           ; $6816: $f4
	ld a, h                                          ; $6817: $7c
	ld e, b                                          ; $6818: $58
	ld c, l                                          ; $6819: $4d
	ccf                                              ; $681a: $3f
	ld c, [hl]                                       ; $681b: $4e
	ld b, b                                          ; $681c: $40
	add hl, sp                                       ; $681d: $39
	ld b, h                                          ; $681e: $44
	and b                                            ; $681f: $a0
	cpl                                              ; $6820: $2f
	ld [hl-], a                                      ; $6821: $32
	ld b, b                                          ; $6822: $40
	add hl, sp                                       ; $6823: $39
	inc a                                            ; $6824: $3c
	inc [hl]                                         ; $6825: $34
	ld e, e                                          ; $6826: $5b
	ld d, [hl]                                       ; $6827: $56
	ld b, [hl]                                       ; $6828: $46
	inc de                                           ; $6829: $13
	halt                                             ; $682a: $76
	ld c, e                                          ; $682b: $4b
	inc [hl]                                         ; $682c: $34

jr_095_682d:
	db $eb                                           ; $682d: $eb
	ld e, c                                          ; $682e: $59
	inc a                                            ; $682f: $3c
	ld a, [hl-]                                      ; $6830: $3a
	and e                                            ; $6831: $a3
	cpl                                              ; $6832: $2f
	db $dd                                           ; $6833: $dd
	halt                                             ; $6834: $76
	ldh a, [rSTAT]                                   ; $6835: $f0 $41

jr_095_6837:
	ld c, a                                          ; $6837: $4f
	ld h, a                                          ; $6838: $67
	ld d, h                                          ; $6839: $54
	add hl, sp                                       ; $683a: $39
	adc l                                            ; $683b: $8d
	and d                                            ; $683c: $a2
	cpl                                              ; $683d: $2f
	db $ec                                           ; $683e: $ec
	ldh a, [$34]                                     ; $683f: $f0 $34
	ret nz                                           ; $6841: $c0

	add hl, bc                                       ; $6842: $09
	ld h, h                                          ; $6843: $64
	ld h, h                                          ; $6844: $64
	inc [hl]                                         ; $6845: $34
	ldh a, [$f9]                                     ; $6846: $f0 $f9

jr_095_6848:
	ld b, d                                          ; $6848: $42
	dec a                                            ; $6849: $3d
	ld [hl], c                                       ; $684a: $71
	ld b, a                                          ; $684b: $47
	inc de                                           ; $684c: $13
	pop af                                           ; $684d: $f1
	rst AddAOntoHL                                          ; $684e: $ef
	ld h, d                                          ; $684f: $62
	di                                               ; $6850: $f3
	ld b, d                                          ; $6851: $42
	ccf                                              ; $6852: $3f
	ld c, [hl]                                       ; $6853: $4e
	inc a                                            ; $6854: $3c
	xor b                                            ; $6855: $a8
	ld b, b                                          ; $6856: $40
	ld c, l                                          ; $6857: $4d
	ld e, e                                          ; $6858: $5b
	ld d, [hl]                                       ; $6859: $56
	inc [hl]                                         ; $685a: $34
	halt                                             ; $685b: $76
	ld c, e                                          ; $685c: $4b
	inc de                                           ; $685d: $13
	ld d, h                                          ; $685e: $54
	ld d, h                                          ; $685f: $54
	ld c, d                                          ; $6860: $4a
	xor $1b                                          ; $6861: $ee $1b
	ldh a, [rDMA]                                    ; $6863: $f0 $46
	ld h, d                                          ; $6865: $62
	ld c, b                                          ; $6866: $48
	and b                                            ; $6867: $a0
	cpl                                              ; $6868: $2f
	ld b, e                                          ; $6869: $43
	ld l, e                                          ; $686a: $6b
	add d                                            ; $686b: $82
	dec sp                                           ; $686c: $3b
	ccf                                              ; $686d: $3f
	ld b, c                                          ; $686e: $41
	ld b, h                                          ; $686f: $44
	ld b, l                                          ; $6870: $45
	xor b                                            ; $6871: $a8
	db $ed                                           ; $6872: $ed
	dec d                                            ; $6873: $15
	ld h, a                                          ; $6874: $67
	ld d, l                                          ; $6875: $55
	ld b, d                                          ; $6876: $42
	and d                                            ; $6877: $a2
	ld b, [hl]                                       ; $6878: $46
	jr c, @+$41                                      ; $6879: $38 $3f

	ccf                                              ; $687b: $3f
	xor l                                            ; $687c: $ad
	pop af                                           ; $687d: $f1
	ld d, $47                                        ; $687e: $16 $47
	ldh a, [c]                                       ; $6880: $f2
	add h                                            ; $6881: $84
	pop af                                           ; $6882: $f1
	ld a, [hl-]                                      ; $6883: $3a
	ld d, e                                          ; $6884: $53
	xor l                                            ; $6885: $ad
	db $ed                                           ; $6886: $ed
	rra                                              ; $6887: $1f
	ld b, a                                          ; $6888: $47
	inc [hl]                                         ; $6889: $34
	pop af                                           ; $688a: $f1
	ld d, $53                                        ; $688b: $16 $53
	ld a, [hl-]                                      ; $688d: $3a
	ld e, h                                          ; $688e: $5c
	ld d, [hl]                                       ; $688f: $56
	ld c, b                                          ; $6890: $48
	and b                                            ; $6891: $a0
	cpl                                              ; $6892: $2f
	ld b, e                                          ; $6893: $43
	ldh a, [$75]                                     ; $6894: $f0 $75
	adc h                                            ; $6896: $8c
	ld b, d                                          ; $6897: $42
	jr c, jr_095_68d2                                ; $6898: $38 $38

	ldh a, [c]                                       ; $689a: $f2
	add h                                            ; $689b: $84
	ld b, h                                          ; $689c: $44
	ld a, [hl-]                                      ; $689d: $3a
	xor l                                            ; $689e: $ad
	ld e, e                                          ; $689f: $5b
	ld d, [hl]                                       ; $68a0: $56
	ld b, [hl]                                       ; $68a1: $46
	inc [hl]                                         ; $68a2: $34
	ld [$a0b0], a                                    ; $68a3: $ea $b0 $a0
	cpl                                              ; $68a6: $2f
	ld [hl-], a                                      ; $68a7: $32
	ld l, e                                          ; $68a8: $6b
	inc [hl]                                         ; $68a9: $34
	ld d, h                                          ; $68aa: $54
	jr c, jr_095_682d                                ; $68ab: $38 $80

	ld d, b                                          ; $68ad: $50
	xor l                                            ; $68ae: $ad
	ld d, c                                          ; $68af: $51
	ldh a, [rSB]                                     ; $68b0: $f0 $01
	ld e, [hl]                                       ; $68b2: $5e
	inc [hl]                                         ; $68b3: $34
	ldh a, [$2c]                                     ; $68b4: $f0 $2c
	di                                               ; $68b6: $f3
	ld d, $3a                                        ; $68b7: $16 $3a
	ldh a, [$a7]                                     ; $68b9: $f0 $a7
	ldh a, [rAUD2HIGH]                               ; $68bb: $f0 $19
	and e                                            ; $68bd: $a3
	cpl                                              ; $68be: $2f
	ld b, e                                          ; $68bf: $43
	ld e, b                                          ; $68c0: $58
	ccf                                              ; $68c1: $3f
	inc [hl]                                         ; $68c2: $34
	db $ec                                           ; $68c3: $ec
	di                                               ; $68c4: $f3
	ld c, e                                          ; $68c5: $4b
	ld e, d                                          ; $68c6: $5a
	ld d, h                                          ; $68c7: $54
	ld b, a                                          ; $68c8: $47
	inc de                                           ; $68c9: $13
	jr c, jr_095_691a                                ; $68ca: $38 $4e

	ld b, d                                          ; $68cc: $42
	inc a                                            ; $68cd: $3c
	ld a, [hl-]                                      ; $68ce: $3a
	and c                                            ; $68cf: $a1
	ld l, [hl]                                       ; $68d0: $6e
	ld b, [hl]                                       ; $68d1: $46

jr_095_68d2:
	and b                                            ; $68d2: $a0
	cpl                                              ; $68d3: $2f
	ld b, e                                          ; $68d4: $43
	jr c, jr_095_690b                                ; $68d5: $38 $34

	db $ec                                           ; $68d7: $ec
	di                                               ; $68d8: $f3
	scf                                              ; $68d9: $37
	inc de                                           ; $68da: $13
	ld h, h                                          ; $68db: $64
	sbc [hl]                                         ; $68dc: $9e
	inc [hl]                                         ; $68dd: $34
	ldh a, [$3b]                                     ; $68de: $f0 $3b
	ldh a, [c]                                       ; $68e0: $f2
	pop af                                           ; $68e1: $f1
	ld e, b                                          ; $68e2: $58
	ld c, l                                          ; $68e3: $4d
	dec a                                            ; $68e4: $3d
	ld b, c                                          ; $68e5: $41
	ld e, e                                          ; $68e6: $5b
	ld d, [hl]                                       ; $68e7: $56
	ld c, b                                          ; $68e8: $48
	and b                                            ; $68e9: $a0
	ldh a, [rSCY]                                    ; $68ea: $f0 $42
	ld b, c                                          ; $68ec: $41
	ld c, b                                          ; $68ed: $48
	dec [hl]                                         ; $68ee: $35
	rla                                              ; $68ef: $17
	ldh a, [rRP]                                     ; $68f0: $f0 $56
	ld c, e                                          ; $68f2: $4b
	inc [hl]                                         ; $68f3: $34
	ld l, e                                          ; $68f4: $6b
	ld h, d                                          ; $68f5: $62
	ld a, $47                                        ; $68f6: $3e $47
	inc de                                           ; $68f8: $13
	ld d, h                                          ; $68f9: $54
	ld b, c                                          ; $68fa: $41
	ld a, [hl-]                                      ; $68fb: $3a
	ldh a, [$28]                                     ; $68fc: $f0 $28
	ld d, d                                          ; $68fe: $52
	ld c, d                                          ; $68ff: $4a
	ld a, b                                          ; $6900: $78
	dec a                                            ; $6901: $3d
	ld b, c                                          ; $6902: $41
	ld b, h                                          ; $6903: $44
	ld c, h                                          ; $6904: $4c
	and c                                            ; $6905: $a1
	cpl                                              ; $6906: $2f
	ld b, e                                          ; $6907: $43
	ldh a, [$ea]                                     ; $6908: $f0 $ea
	ld b, h                                          ; $690a: $44

jr_095_690b:
	dec sp                                           ; $690b: $3b
	dec a                                            ; $690c: $3d
	inc a                                            ; $690d: $3c
	ld d, b                                          ; $690e: $50
	xor h                                            ; $690f: $ac
	ret                                              ; $6910: $c9


	ld c, h                                          ; $6911: $4c
	ld c, b                                          ; $6912: $48
	and b                                            ; $6913: $a0
	ld b, b                                          ; $6914: $40
	add hl, sp                                       ; $6915: $39
	inc a                                            ; $6916: $3c
	inc [hl]                                         ; $6917: $34
	ld d, h                                          ; $6918: $54
	ld b, d                                          ; $6919: $42

jr_095_691a:
	pop af                                           ; $691a: $f1
	or [hl]                                          ; $691b: $b6
	ld b, d                                          ; $691c: $42
	sbc d                                            ; $691d: $9a
	ld h, d                                          ; $691e: $62
	inc de                                           ; $691f: $13
	db $ed                                           ; $6920: $ed
	ld h, h                                          ; $6921: $64
	ld a, $3f                                        ; $6922: $3e $3f
	ld d, l                                          ; $6924: $55
	ld c, l                                          ; $6925: $4d
	dec a                                            ; $6926: $3d
	ld b, d                                          ; $6927: $42
	inc a                                            ; $6928: $3c
	and b                                            ; $6929: $a0
	cpl                                              ; $692a: $2f
	ld b, e                                          ; $692b: $43
	ld b, h                                          ; $692c: $44
	inc [hl]                                         ; $692d: $34
	ldh a, [$98]                                     ; $692e: $f0 $98
	ld d, e                                          ; $6930: $53
	xor h                                            ; $6931: $ac
	db $ed                                           ; $6932: $ed
	ld h, h                                          ; $6933: $64
	ld a, [hl-]                                      ; $6934: $3a
	ld b, c                                          ; $6935: $41
	inc a                                            ; $6936: $3c
	ld c, b                                          ; $6937: $48
	and b                                            ; $6938: $a0
	ld a, $3c                                        ; $6939: $3e $3c
	ld a, $ac                                        ; $693b: $3e $ac
	ldh a, [rAUD1LOW]                                ; $693d: $f0 $13
	ldh a, [$af]                                     ; $693f: $f0 $af
	pop af                                           ; $6941: $f1
	cp [hl]                                          ; $6942: $be
	ld b, h                                          ; $6943: $44
	dec sp                                           ; $6944: $3b
	dec a                                            ; $6945: $3d
	ld c, h                                          ; $6946: $4c
	xor b                                            ; $6947: $a8
	sbc d                                            ; $6948: $9a
	ldh a, [c]                                       ; $6949: $f2
	ld c, [hl]                                       ; $694a: $4e
	ld c, e                                          ; $694b: $4b
	inc [hl]                                         ; $694c: $34
	dec a                                            ; $694d: $3d
	dec sp                                           ; $694e: $3b
	dec a                                            ; $694f: $3d
	ld l, d                                          ; $6950: $6a
	inc [hl]                                         ; $6951: $34
	pop af                                           ; $6952: $f1
	ld d, b                                          ; $6953: $50
	ld d, e                                          ; $6954: $53
	xor h                                            ; $6955: $ac
	ld l, a                                          ; $6956: $6f
	ldh a, [c]                                       ; $6957: $f2
	dec b                                            ; $6958: $05
	db $ed                                           ; $6959: $ed
	add $53                                          ; $695a: $c6 $53
	pop af                                           ; $695c: $f1
	dec sp                                           ; $695d: $3b
	ldh a, [$ec]                                     ; $695e: $f0 $ec
	ld a, $3d                                        ; $6960: $3e $3d
	ld b, l                                          ; $6962: $45
	and b                                            ; $6963: $a0
	cpl                                              ; $6964: $2f
	ld b, e                                          ; $6965: $43
	ld d, h                                          ; $6966: $54
	ld b, d                                          ; $6967: $42
	inc [hl]                                         ; $6968: $34
	ldh a, [$2c]                                     ; $6969: $f0 $2c
	di                                               ; $696b: $f3
	ld d, $3a                                        ; $696c: $16 $3a
	ldh a, [$f8]                                     ; $696e: $f0 $f8
	db $f4                                           ; $6970: $f4
	ld h, $ac                                        ; $6971: $26 $ac
	ld h, h                                          ; $6973: $64
	sbc [hl]                                         ; $6974: $9e
	ld b, c                                          ; $6975: $41
	ldh a, [rSVBK]                                   ; $6976: $f0 $70
	ld b, d                                          ; $6978: $42
	db $ed                                           ; $6979: $ed
	add $3a                                          ; $697a: $c6 $3a
	ld b, d                                          ; $697c: $42
	inc a                                            ; $697d: $3c
	and d                                            ; $697e: $a2
	sbc d                                            ; $697f: $9a
	ldh a, [c]                                       ; $6980: $f2
	ld c, [hl]                                       ; $6981: $4e
	pop af                                           ; $6982: $f1
	xor l                                            ; $6983: $ad
	ldh a, [rTIMA]                                   ; $6984: $f0 $05
	ldh a, [$d7]                                     ; $6986: $f0 $d7
	xor h                                            ; $6988: $ac
	ldh a, [$e2]                                     ; $6989: $f0 $e2
	pop af                                           ; $698b: $f1
	pop de                                           ; $698c: $d1
	ldh a, [rTAC]                                    ; $698d: $f0 $07
	ld c, c                                          ; $698f: $49
	add d                                            ; $6990: $82
	dec sp                                           ; $6991: $3b
	dec a                                            ; $6992: $3d
	ld c, c                                          ; $6993: $49
	ld d, h                                          ; $6994: $54
	ld e, a                                          ; $6995: $5f
	inc a                                            ; $6996: $3c
	ld a, [hl-]                                      ; $6997: $3a
	and b                                            ; $6998: $a0
	cpl                                              ; $6999: $2f
	ld b, e                                          ; $699a: $43
	di                                               ; $699b: $f3
	rst JumpTable                                          ; $699c: $c7
	add h                                            ; $699d: $84
	ld c, e                                          ; $699e: $4b
	xor h                                            ; $699f: $ac
	ld l, l                                          ; $69a0: $6d
	ldh a, [$65]                                     ; $69a1: $f0 $65
	ld e, d                                          ; $69a3: $5a
	add hl, sp                                       ; $69a4: $39
	ld a, [hl-]                                      ; $69a5: $3a
	dec sp                                           ; $69a6: $3b
	dec a                                            ; $69a7: $3d
	ld b, c                                          ; $69a8: $41
	ld b, h                                          ; $69a9: $44
	and c                                            ; $69aa: $a1
	pop af                                           ; $69ab: $f1
	ld d, b                                          ; $69ac: $50
	ld d, e                                          ; $69ad: $53
	inc [hl]                                         ; $69ae: $34
	db $ec                                           ; $69af: $ec
	ld e, [hl]                                       ; $69b0: $5e
	ld b, a                                          ; $69b1: $47
	inc de                                           ; $69b2: $13
	db $ed                                           ; $69b3: $ed
	db $ed                                           ; $69b4: $ed
	inc a                                            ; $69b5: $3c
	dec sp                                           ; $69b6: $3b
	dec a                                            ; $69b7: $3d
	ld d, b                                          ; $69b8: $50
	ld e, d                                          ; $69b9: $5a
	add hl, sp                                       ; $69ba: $39
	ld a, [hl-]                                      ; $69bb: $3a
	ld c, [hl]                                       ; $69bc: $4e
	inc a                                            ; $69bd: $3c
	ld c, c                                          ; $69be: $49
	inc de                                           ; $69bf: $13
	add d                                            ; $69c0: $82
	add hl, sp                                       ; $69c1: $39
	sbc d                                            ; $69c2: $9a
	ld h, d                                          ; $69c3: $62
	inc [hl]                                         ; $69c4: $34
	pop af                                           ; $69c5: $f1
	ld de, $65f0                                     ; $69c6: $11 $f0 $65
	ld b, a                                          ; $69c9: $47
	ldh a, [$f4]                                     ; $69ca: $f0 $f4
	ld e, [hl]                                       ; $69cc: $5e
	ld e, b                                          ; $69cd: $58
	ld a, c                                          ; $69ce: $79
	ccf                                              ; $69cf: $3f
	inc de                                           ; $69d0: $13
	ld b, [hl]                                       ; $69d1: $46
	ldh a, [rSB]                                     ; $69d2: $f0 $01
	dec a                                            ; $69d4: $3d
	ld b, l                                          ; $69d5: $45
	and b                                            ; $69d6: $a0
	cpl                                              ; $69d7: $2f
	ld [hl-], a                                      ; $69d8: $32
	ld l, l                                          ; $69d9: $6d
	ldh a, [$65]                                     ; $69da: $f0 $65
	xor h                                            ; $69dc: $ac
	ld l, e                                          ; $69dd: $6b
	ld h, d                                          ; $69de: $62
	ld a, $3d                                        ; $69df: $3e $3d
	ld b, c                                          ; $69e1: $41
	ld b, h                                          ; $69e2: $44
	ld e, a                                          ; $69e3: $5f
	add hl, sp                                       ; $69e4: $39
	and e                                            ; $69e5: $a3
	ld b, b                                          ; $69e6: $40
	ld c, l                                          ; $69e7: $4d
	ld e, e                                          ; $69e8: $5b
	ld d, [hl]                                       ; $69e9: $56
	xor h                                            ; $69ea: $ac
	pop af                                           ; $69eb: $f1
	or [hl]                                          ; $69ec: $b6
	ld c, e                                          ; $69ed: $4b
	ld l, l                                          ; $69ee: $6d
	pop af                                           ; $69ef: $f1
	cp [hl]                                          ; $69f0: $be
	ldh a, [$bc]                                     ; $69f1: $f0 $bc
	ld b, a                                          ; $69f3: $47
	inc de                                           ; $69f4: $13
	adc c                                            ; $69f5: $89
	sbc a                                            ; $69f6: $9f
	ld b, a                                          ; $69f7: $47
	ldh a, [$e8]                                     ; $69f8: $f0 $e8
	ld d, b                                          ; $69fa: $50
	ld a, c                                          ; $69fb: $79
	ccf                                              ; $69fc: $3f
	ld c, a                                          ; $69fd: $4f
	ld d, b                                          ; $69fe: $50
	add hl, sp                                       ; $69ff: $39
	ld b, l                                          ; $6a00: $45
	dec [hl]                                         ; $6a01: $35
	rla                                              ; $6a02: $17

jr_095_6a03:
	ldh a, [rRP]                                     ; $6a03: $f0 $56
	ld c, a                                          ; $6a05: $4f
	inc [hl]                                         ; $6a06: $34
	ldh a, [$0a]                                     ; $6a07: $f0 $0a
	ld d, l                                          ; $6a09: $55
	adc c                                            ; $6a0a: $89
	sbc a                                            ; $6a0b: $9f
	ld b, a                                          ; $6a0c: $47
	inc de                                           ; $6a0d: $13
	ldh a, [$e8]                                     ; $6a0e: $f0 $e8
	ld d, a                                          ; $6a10: $57
	dec a                                            ; $6a11: $3d
	ld d, d                                          ; $6a12: $52
	ld e, [hl]                                       ; $6a13: $5e
	and b                                            ; $6a14: $a0
	cpl                                              ; $6a15: $2f
	ld b, e                                          ; $6a16: $43
	ld l, e                                          ; $6a17: $6b
	ld d, e                                          ; $6a18: $53
	inc [hl]                                         ; $6a19: $34
	ldh a, [$e8]                                     ; $6a1a: $f0 $e8
	ld d, a                                          ; $6a1c: $57
	dec a                                            ; $6a1d: $3d
	ld d, d                                          ; $6a1e: $52
	ld e, [hl]                                       ; $6a1f: $5e
	ld b, h                                          ; $6a20: $44
	xor b                                            ; $6a21: $a8
	ldh a, [$98]                                     ; $6a22: $f0 $98
	ld b, d                                          ; $6a24: $42
	dec a                                            ; $6a25: $3d
	ld [hl], c                                       ; $6a26: $71
	ld b, a                                          ; $6a27: $47
	inc [hl]                                         ; $6a28: $34
	ld d, h                                          ; $6a29: $54
	ld d, h                                          ; $6a2a: $54
	ld d, d                                          ; $6a2b: $52
	ld c, d                                          ; $6a2c: $4a
	inc de                                           ; $6a2d: $13
	ld a, b                                          ; $6a2e: $78
	dec a                                            ; $6a2f: $3d
	ld c, c                                          ; $6a30: $49
	ld [hl], a                                       ; $6a31: $77
	dec sp                                           ; $6a32: $3b
	ccf                                              ; $6a33: $3f
	ld c, [hl]                                       ; $6a34: $4e
	ld b, c                                          ; $6a35: $41
	ld b, h                                          ; $6a36: $44
	ld b, l                                          ; $6a37: $45
	xor b                                            ; $6a38: $a8
	ld b, [hl]                                       ; $6a39: $46
	ld [hl], h                                       ; $6a3a: $74
	inc [hl]                                         ; $6a3b: $34
	pop af                                           ; $6a3c: $f1
	or d                                             ; $6a3d: $b2
	pop af                                           ; $6a3e: $f1
	ld c, b                                          ; $6a3f: $48
	ld d, b                                          ; $6a40: $50
	ld a, $38                                        ; $6a41: $3e $38
	xor l                                            ; $6a43: $ad

jr_095_6a44:
	ld a, d                                          ; $6a44: $7a
	ld e, a                                          ; $6a45: $5f
	dec sp                                           ; $6a46: $3b
	ld c, c                                          ; $6a47: $49
	ld c, b                                          ; $6a48: $48
	and b                                            ; $6a49: $a0
	db $ec                                           ; $6a4a: $ec
	ldh a, [$3b]                                     ; $6a4b: $f0 $3b
	ccf                                              ; $6a4d: $3f
	inc [hl]                                         ; $6a4e: $34
	pop af                                           ; $6a4f: $f1
	sub h                                            ; $6a50: $94
	dec a                                            ; $6a51: $3d
	jr c, jr_095_6a44                                ; $6a52: $38 $f0

	ld hl, sp+$35                                    ; $6a54: $f8 $35
	rla                                              ; $6a56: $17
	ld h, h                                          ; $6a57: $64
	sbc [hl]                                         ; $6a58: $9e

jr_095_6a59:
	ld b, a                                          ; $6a59: $47
	ld c, e                                          ; $6a5a: $4b
	inc [hl]                                         ; $6a5b: $34
	add h                                            ; $6a5c: $84
	ldh a, [$2a]                                     ; $6a5d: $f0 $2a
	ld c, c                                          ; $6a5f: $49
	ld a, $3f                                        ; $6a60: $3e $3f
	ld b, d                                          ; $6a62: $42
	inc de                                           ; $6a63: $13
	di                                               ; $6a64: $f3
	ld a, d                                          ; $6a65: $7a
	inc a                                            ; $6a66: $3c
	jr c, jr_095_6a59                                ; $6a67: $38 $f0

	ld c, a                                          ; $6a69: $4f
	ld d, e                                          ; $6a6a: $53
	ld a, [hl-]                                      ; $6a6b: $3a
	jr c, jr_095_6ab0                                ; $6a6c: $38 $42

	inc a                                            ; $6a6e: $3c
	and c                                            ; $6a6f: $a1
	cpl                                              ; $6a70: $2f
	ld b, e                                          ; $6a71: $43
	add h                                            ; $6a72: $84
	ldh a, [$2a]                                     ; $6a73: $f0 $2a
	ld c, c                                          ; $6a75: $49
	ld a, $3f                                        ; $6a76: $3e $3f
	ld b, d                                          ; $6a78: $42
	ldh a, [rVBK]                                    ; $6a79: $f0 $4f
	ld [hl], $17                                     ; $6a7b: $36 $17
	db $ed                                           ; $6a7d: $ed
	ld b, e                                          ; $6a7e: $43
	inc [hl]                                         ; $6a7f: $34
	ld b, [hl]                                       ; $6a80: $46
	jr c, jr_095_6a03                                ; $6a81: $38 $80

	ld b, c                                          ; $6a83: $41
	ldh a, [rSVBK]                                   ; $6a84: $f0 $70
	xor h                                            ; $6a86: $ac
	ld l, a                                          ; $6a87: $6f
	ldh a, [c]                                       ; $6a88: $f2
	dec b                                            ; $6a89: $05
	db $ed                                           ; $6a8a: $ed
	add $49                                          ; $6a8b: $c6 $49
	inc a                                            ; $6a8d: $3c
	ldh a, [rHDMA1]                                  ; $6a8e: $f0 $51
	dec sp                                           ; $6a90: $3b
	ccf                                              ; $6a91: $3f
	ld b, c                                          ; $6a92: $41
	ld b, h                                          ; $6a93: $44
	adc l                                            ; $6a94: $8d
	and b                                            ; $6a95: $a0
	ld l, a                                          ; $6a96: $6f
	ldh a, [c]                                       ; $6a97: $f2
	dec b                                            ; $6a98: $05
	db $ed                                           ; $6a99: $ed
	add $49                                          ; $6a9a: $c6 $49
	inc a                                            ; $6a9c: $3c
	inc de                                           ; $6a9d: $13
	jr c, jr_095_6adb                                ; $6a9e: $38 $3b

	dec a                                            ; $6aa0: $3d
	dec sp                                           ; $6aa1: $3b
	ccf                                              ; $6aa2: $3f
	ld a, [hl-]                                      ; $6aa3: $3a
	ld c, b                                          ; $6aa4: $48
	and b                                            ; $6aa5: $a0
	cpl                                              ; $6aa6: $2f
	ld b, e                                          ; $6aa7: $43
	ld [$37eb], a                                    ; $6aa8: $ea $eb $37

jr_095_6aab:
	rla                                              ; $6aab: $17
	ldh a, [c]                                       ; $6aac: $f2
	jp nc, $adf2                                     ; $6aad: $d2 $f2 $ad

jr_095_6ab0:
	ld b, l                                          ; $6ab0: $45
	ld d, a                                          ; $6ab1: $57
	inc [hl]                                         ; $6ab2: $34
	ld d, c                                          ; $6ab3: $51
	ld [hl], b                                       ; $6ab4: $70
	jr c, jr_095_6aab                                ; $6ab5: $38 $f4

	inc b                                            ; $6ab7: $04
	pop af                                           ; $6ab8: $f1
	ld h, d                                          ; $6ab9: $62
	ld h, d                                          ; $6aba: $62
	inc de                                           ; $6abb: $13
	ldh a, [rHDMA1]                                  ; $6abc: $f0 $51
	dec sp                                           ; $6abe: $3b
	ccf                                              ; $6abf: $3f
	ld c, [hl]                                       ; $6ac0: $4e
	ld d, b                                          ; $6ac1: $50
	ld a, $38                                        ; $6ac2: $3e $38
	inc a                                            ; $6ac4: $3c
	ld d, b                                          ; $6ac5: $50
	and b                                            ; $6ac6: $a0
	ld c, d                                          ; $6ac7: $4a
	ld c, a                                          ; $6ac8: $4f
	ld a, [hl-]                                      ; $6ac9: $3a
	ld [hl], h                                       ; $6aca: $74
	and b                                            ; $6acb: $a0
	cpl                                              ; $6acc: $2f
	ld b, e                                          ; $6acd: $43
	ld b, b                                          ; $6ace: $40
	ld c, l                                          ; $6acf: $4d
	ld b, a                                          ; $6ad0: $47
	xor h                                            ; $6ad1: $ac
	halt                                             ; $6ad2: $76
	ldh a, [rSTAT]                                   ; $6ad3: $f0 $41
	ld d, e                                          ; $6ad5: $53
	db $ed                                           ; $6ad6: $ed
	ld h, h                                          ; $6ad7: $64
	ld a, $3d                                        ; $6ad8: $3e $3d
	ld c, c                                          ; $6ada: $49

jr_095_6adb:
	ld d, h                                          ; $6adb: $54
	ld e, a                                          ; $6adc: $5f
	ld c, d                                          ; $6add: $4a
	xor h                                            ; $6ade: $ac
	sbc d                                            ; $6adf: $9a
	ldh a, [c]                                       ; $6ae0: $f2
	ld c, [hl]                                       ; $6ae1: $4e
	ld d, e                                          ; $6ae2: $53
	ldh a, [$0a]                                     ; $6ae3: $f0 $0a
	ld d, l                                          ; $6ae5: $55
	pop af                                           ; $6ae6: $f1
	dec sp                                           ; $6ae7: $3b
	ldh a, [$ec]                                     ; $6ae8: $f0 $ec
	ld d, c                                          ; $6aea: $51
	ld c, [hl]                                       ; $6aeb: $4e
	inc de                                           ; $6aec: $13
	pop af                                           ; $6aed: $f1
	dec bc                                           ; $6aee: $0b
	db $ec                                           ; $6aef: $ec
	ret c                                            ; $6af0: $d8

	ld b, h                                          ; $6af1: $44
	ld e, a                                          ; $6af2: $5f
	and b                                            ; $6af3: $a0
	ld b, b                                          ; $6af4: $40
	add hl, sp                                       ; $6af5: $39
	inc a                                            ; $6af6: $3c
	inc [hl]                                         ; $6af7: $34
	ld b, b                                          ; $6af8: $40
	ld c, l                                          ; $6af9: $4d
	ld c, a                                          ; $6afa: $4f
	ld b, b                                          ; $6afb: $40
	add hl, sp                                       ; $6afc: $39
	ld b, h                                          ; $6afd: $44
	ld a, [hl-]                                      ; $6afe: $3a
	xor b                                            ; $6aff: $a8
	db $ed                                           ; $6b00: $ed
	ld h, h                                          ; $6b01: $64
	ld a, $51                                        ; $6b02: $3e $51
	ldh a, [$cb]                                     ; $6b04: $f0 $cb
	inc a                                            ; $6b06: $3c
	ld c, b                                          ; $6b07: $48
	and b                                            ; $6b08: $a0
	cpl                                              ; $6b09: $2f
	ld b, e                                          ; $6b0a: $43
	ld b, b                                          ; $6b0b: $40
	add hl, sp                                       ; $6b0c: $39
	ld b, b                                          ; $6b0d: $40
	add hl, sp                                       ; $6b0e: $39
	xor h                                            ; $6b0f: $ac
	db $ed                                           ; $6b10: $ed
	ld h, h                                          ; $6b11: $64
	ld a, $51                                        ; $6b12: $3e $51
	ldh a, [$cb]                                     ; $6b14: $f0 $cb
	xor b                                            ; $6b16: $a8
	db $ec                                           ; $6b17: $ec
	di                                               ; $6b18: $f3
	ld b, d                                          ; $6b19: $42
	sbc d                                            ; $6b1a: $9a
	ld b, h                                          ; $6b1b: $44
	inc a                                            ; $6b1c: $3c
	ld d, b                                          ; $6b1d: $50
	inc de                                           ; $6b1e: $13
	ld d, c                                          ; $6b1f: $51
	sbc l                                            ; $6b20: $9d
	ld a, d                                          ; $6b21: $7a
	dec sp                                           ; $6b22: $3b
	ccf                                              ; $6b23: $3f
	ld d, l                                          ; $6b24: $55
	ld c, [hl]                                       ; $6b25: $4e
	dec sp                                           ; $6b26: $3b
	ccf                                              ; $6b27: $3f
	and b                                            ; $6b28: $a0
	ld b, b                                          ; $6b29: $40
	add hl, sp                                       ; $6b2a: $39
	ld b, h                                          ; $6b2b: $44
	ld b, l                                          ; $6b2c: $45
	ld a, [hl-]                                      ; $6b2d: $3a
	xor b                                            ; $6b2e: $a8
	ld e, e                                          ; $6b2f: $5b
	ld d, [hl]                                       ; $6b30: $56
	ld b, [hl]                                       ; $6b31: $46
	inc [hl]                                         ; $6b32: $34
	halt                                             ; $6b33: $76
	inc [hl]                                         ; $6b34: $34
	pop af                                           ; $6b35: $f1
	nop                                              ; $6b36: $00
	pop af                                           ; $6b37: $f1
	ld l, b                                          ; $6b38: $68
	ldh a, [$e8]                                     ; $6b39: $f0 $e8
	ld c, [hl]                                       ; $6b3b: $4e
	ld h, e                                          ; $6b3c: $63
	and b                                            ; $6b3d: $a0
	ld e, d                                          ; $6b3e: $5a
	add hl, sp                                       ; $6b3f: $39
	ld a, $3d                                        ; $6b40: $3e $3d
	ld b, c                                          ; $6b42: $41
	ld b, h                                          ; $6b43: $44
	xor c                                            ; $6b44: $a9
	ld l, d                                          ; $6b45: $6a
	inc [hl]                                         ; $6b46: $34
	pop af                                           ; $6b47: $f1
	or [hl]                                          ; $6b48: $b6
	ld b, d                                          ; $6b49: $42
	pop af                                           ; $6b4a: $f1
	adc e                                            ; $6b4b: $8b
	ld h, d                                          ; $6b4c: $62
	inc de                                           ; $6b4d: $13
	ld a, $3f                                        ; $6b4e: $3e $3f
	jr c, jr_095_6b8f                                ; $6b50: $38 $3d

	ld b, l                                          ; $6b52: $45
	add hl, sp                                       ; $6b53: $39
	ld b, h                                          ; $6b54: $44
	ld d, e                                          ; $6b55: $53
	and b                                            ; $6b56: $a0
	ldh a, [$3b]                                     ; $6b57: $f0 $3b
	ldh a, [c]                                       ; $6b59: $f2
	pop af                                           ; $6b5a: $f1
	xor c                                            ; $6b5b: $a9
	ld l, l                                          ; $6b5c: $6d
	ldh a, [$65]                                     ; $6b5d: $f0 $65
	ld l, e                                          ; $6b5f: $6b
	ld b, d                                          ; $6b60: $42
	sbc d                                            ; $6b61: $9a
	ld b, h                                          ; $6b62: $44
	and b                                            ; $6b63: $a0
	cpl                                              ; $6b64: $2f
	ld b, e                                          ; $6b65: $43
	ld l, d                                          ; $6b66: $6a
	inc [hl]                                         ; $6b67: $34
	ld h, h                                          ; $6b68: $64
	sbc [hl]                                         ; $6b69: $9e
	ld d, e                                          ; $6b6a: $53
	inc de                                           ; $6b6b: $13
	ldh a, [$3b]                                     ; $6b6c: $f0 $3b
	ldh a, [c]                                       ; $6b6e: $f2
	pop af                                           ; $6b6f: $f1
	ld e, b                                          ; $6b70: $58
	ld c, l                                          ; $6b71: $4d
	dec a                                            ; $6b72: $3d
	dec sp                                           ; $6b73: $3b
	ccf                                              ; $6b74: $3f
	ld c, b                                          ; $6b75: $48
	and b                                            ; $6b76: $a0
	ldh a, [rSCY]                                    ; $6b77: $f0 $42
	dec sp                                           ; $6b79: $3b
	xor b                                            ; $6b7a: $a8
	ld b, b                                          ; $6b7b: $40
	ld b, c                                          ; $6b7c: $41
	ld a, [hl-]                                      ; $6b7d: $3a
	pop af                                           ; $6b7e: $f1
	sub e                                            ; $6b7f: $93
	ld c, a                                          ; $6b80: $4f
	pop af                                           ; $6b81: $f1
	adc h                                            ; $6b82: $8c
	ld c, a                                          ; $6b83: $4f
	ld a, [hl-]                                      ; $6b84: $3a
	jr c, @-$0d                                      ; $6b85: $38 $f1

	adc e                                            ; $6b87: $8b
	ld b, a                                          ; $6b88: $47
	xor l                                            ; $6b89: $ad
	ldh a, [rOBP1]                                   ; $6b8a: $f0 $49
	ld d, l                                          ; $6b8c: $55
	db $ed                                           ; $6b8d: $ed
	and a                                            ; $6b8e: $a7

jr_095_6b8f:
	ld c, e                                          ; $6b8f: $4b
	ld d, h                                          ; $6b90: $54
	ld c, l                                          ; $6b91: $4d
	ld b, h                                          ; $6b92: $44
	inc a                                            ; $6b93: $3c
	ld d, b                                          ; $6b94: $50
	ld c, b                                          ; $6b95: $48
	and b                                            ; $6b96: $a0
	cpl                                              ; $6b97: $2f
	ld [hl-], a                                      ; $6b98: $32
	ld e, e                                          ; $6b99: $5b
	ld d, [hl]                                       ; $6b9a: $56
	ld b, [hl]                                       ; $6b9b: $46
	inc [hl]                                         ; $6b9c: $34
	ldh a, [$3b]                                     ; $6b9d: $f0 $3b
	ldh a, [c]                                       ; $6b9f: $f2
	pop af                                           ; $6ba0: $f1
	ld b, d                                          ; $6ba1: $42
	ldh a, [rAUDVOL]                                 ; $6ba2: $f0 $24
	ld c, e                                          ; $6ba4: $4b
	xor h                                            ; $6ba5: $ac
	pop af                                           ; $6ba6: $f1
	ld a, [hl]                                       ; $6ba7: $7e
	ld a, [hl-]                                      ; $6ba8: $3a
	ld b, d                                          ; $6ba9: $42
	inc a                                            ; $6baa: $3c
	ld c, b                                          ; $6bab: $48
	and e                                            ; $6bac: $a3
	db $f4                                           ; $6bad: $f4
	ld a, a                                          ; $6bae: $7f
	ld b, a                                          ; $6baf: $47
	xor h                                            ; $6bb0: $ac
	ld b, b                                          ; $6bb1: $40
	ld b, d                                          ; $6bb2: $42
	ldh a, [rAUDVOL]                                 ; $6bb3: $f0 $24
	ld d, e                                          ; $6bb5: $53
	adc b                                            ; $6bb6: $88
	sub c                                            ; $6bb7: $91
	ld b, h                                          ; $6bb8: $44
	ld c, c                                          ; $6bb9: $49
	ld a, $3f                                        ; $6bba: $3e $3f
	ld c, a                                          ; $6bbc: $4f
	inc de                                           ; $6bbd: $13
	db $ec                                           ; $6bbe: $ec
	ld e, [hl]                                       ; $6bbf: $5e
	ld b, a                                          ; $6bc0: $47
	db $ed                                           ; $6bc1: $ed
	db $ed                                           ; $6bc2: $ed
	inc a                                            ; $6bc3: $3c
	add hl, sp                                       ; $6bc4: $39
	add h                                            ; $6bc5: $84
	ldh a, [$2a]                                     ; $6bc6: $f0 $2a
	ld d, e                                          ; $6bc8: $53
	xor h                                            ; $6bc9: $ac
	ld e, d                                          ; $6bca: $5a
	ld b, c                                          ; $6bcb: $41
	ld a, [hl-]                                      ; $6bcc: $3a
	ld b, a                                          ; $6bcd: $47
	push af                                          ; $6bce: $f5
	jr z, jr_095_6c0d                                ; $6bcf: $28 $3c

	ld a, [hl-]                                      ; $6bd1: $3a
	ld b, d                                          ; $6bd2: $42
	inc a                                            ; $6bd3: $3c
	ld h, d                                          ; $6bd4: $62
	inc de                                           ; $6bd5: $13
	db $ed                                           ; $6bd6: $ed
	xor $51                                          ; $6bd7: $ee $51
	ld c, [hl]                                       ; $6bd9: $4e
	ld b, h                                          ; $6bda: $44
	ld e, l                                          ; $6bdb: $5d
	ld e, b                                          ; $6bdc: $58
	and b                                            ; $6bdd: $a0
	cpl                                              ; $6bde: $2f
	ld b, e                                          ; $6bdf: $43
	xor $10                                          ; $6be0: $ee $10
	and b                                            ; $6be2: $a0
	ld b, b                                          ; $6be3: $40
	ld c, l                                          ; $6be4: $4d
	ld e, e                                          ; $6be5: $5b
	ld d, [hl]                                       ; $6be6: $56
	pop af                                           ; $6be7: $f1
	or [hl]                                          ; $6be8: $b6
	ld c, e                                          ; $6be9: $4b
	xor h                                            ; $6bea: $ac
	ldh a, [rHDMA5]                                  ; $6beb: $f0 $55
	ldh a, [rBCPS]                                   ; $6bed: $f0 $68
	ld d, c                                          ; $6bef: $51
	ld c, [hl]                                       ; $6bf0: $4e
	ld b, l                                          ; $6bf1: $45
	and b                                            ; $6bf2: $a0
	cpl                                              ; $6bf3: $2f
	ld b, e                                          ; $6bf4: $43
	db $ec                                           ; $6bf5: $ec
	ld e, [hl]                                       ; $6bf6: $5e
	xor l                                            ; $6bf7: $ad
	ld b, [hl]                                       ; $6bf8: $46
	ld d, d                                          ; $6bf9: $52
	ld d, a                                          ; $6bfa: $57
	inc [hl]                                         ; $6bfb: $34
	ldh a, [$ae]                                     ; $6bfc: $f0 $ae
	ld b, a                                          ; $6bfe: $47
	ld d, d                                          ; $6bff: $52
	ld h, e                                          ; $6c00: $63
	ld a, $3d                                        ; $6c01: $3e $3d
	ld d, l                                          ; $6c03: $55
	ld a, [hl-]                                      ; $6c04: $3a
	jr c, jr_095_6c41                                ; $6c05: $38 $3a

	and b                                            ; $6c07: $a0
	ld h, h                                          ; $6c08: $64
	ld e, c                                          ; $6c09: $59
	jr c, @-$56                                      ; $6c0a: $38 $a8

	ldh a, [c]                                       ; $6c0c: $f2

jr_095_6c0d:
	sbc h                                            ; $6c0d: $9c
	add a                                            ; $6c0e: $87
	pop af                                           ; $6c0f: $f1
	ld [bc], a                                       ; $6c10: $02
	ldh a, [$a1]                                     ; $6c11: $f0 $a1
	ld e, c                                          ; $6c13: $59
	add e                                            ; $6c14: $83
	ld b, h                                          ; $6c15: $44
	adc l                                            ; $6c16: $8d
	and b                                            ; $6c17: $a0
	cpl                                              ; $6c18: $2f
	ld b, e                                          ; $6c19: $43
	ld e, d                                          ; $6c1a: $5a
	add hl, sp                                       ; $6c1b: $39
	ld a, $3d                                        ; $6c1c: $3e $3d
	inc [hl]                                         ; $6c1e: $34
	adc e                                            ; $6c1f: $8b
	ldh a, [$72]                                     ; $6c20: $f0 $72
	xor b                                            ; $6c22: $a8
	ld b, b                                          ; $6c23: $40
	ld b, c                                          ; $6c24: $41
	ld a, [hl-]                                      ; $6c25: $3a
	ld b, a                                          ; $6c26: $47
	pop af                                           ; $6c27: $f1
	ld d, $38                                        ; $6c28: $16 $38
	ld c, d                                          ; $6c2a: $4a
	and b                                            ; $6c2b: $a0
	ld l, d                                          ; $6c2c: $6a
	inc [hl]                                         ; $6c2d: $34
	halt                                             ; $6c2e: $76
	ld d, c                                          ; $6c2f: $51
	dec sp                                           ; $6c30: $3b
	ldh a, [rSB]                                     ; $6c31: $f0 $01
	ld e, [hl]                                       ; $6c33: $5e
	sbc d                                            ; $6c34: $9a
	inc de                                           ; $6c35: $13
	ldh a, [$0c]                                     ; $6c36: $f0 $0c
	jr c, @+$63                                      ; $6c38: $38 $61

	ld d, [hl]                                       ; $6c3a: $56
	dec sp                                           ; $6c3b: $3b
	dec a                                            ; $6c3c: $3d
	ld b, l                                          ; $6c3d: $45
	and b                                            ; $6c3e: $a0
	cpl                                              ; $6c3f: $2f
	ld b, e                                          ; $6c40: $43

jr_095_6c41:
	ld a, [hl-]                                      ; $6c41: $3a
	ld b, c                                          ; $6c42: $41
	ld b, h                                          ; $6c43: $44
	ld b, l                                          ; $6c44: $45
	xor b                                            ; $6c45: $a8
	ld d, c                                          ; $6c46: $51
	ldh a, [rSB]                                     ; $6c47: $f0 $01
	ld e, [hl]                                       ; $6c49: $5e
	sbc d                                            ; $6c4a: $9a
	dec sp                                           ; $6c4b: $3b
	ccf                                              ; $6c4c: $3f
	ld c, b                                          ; $6c4d: $48
	and b                                            ; $6c4e: $a0
	ldh a, [$0c]                                     ; $6c4f: $f0 $0c
	jr c, jr_095_6c92                                ; $6c51: $38 $3f

	dec a                                            ; $6c53: $3d
	ld d, d                                          ; $6c54: $52
	ldh a, [rSB]                                     ; $6c55: $f0 $01
	ld e, a                                          ; $6c57: $5f
	xor b                                            ; $6c58: $a8
	ldh a, [$31]                                     ; $6c59: $f0 $31
	ld c, e                                          ; $6c5b: $4b
	ld a, [hl-]                                      ; $6c5c: $3a
	ld c, b                                          ; $6c5d: $48
	and b                                            ; $6c5e: $a0
	cpl                                              ; $6c5f: $2f
	ld b, e                                          ; $6c60: $43
	ldh a, [$31]                                     ; $6c61: $f0 $31
	ld c, e                                          ; $6c63: $4b
	ld c, b                                          ; $6c64: $48
	and b                                            ; $6c65: $a0
	xor $1e                                          ; $6c66: $ee $1e
	db $ec                                           ; $6c68: $ec
	di                                               ; $6c69: $f3
	ld d, e                                          ; $6c6a: $53
	ld c, b                                          ; $6c6b: $48
	and b                                            ; $6c6c: $a0
	cpl                                              ; $6c6d: $2f
	ld b, e                                          ; $6c6e: $43
	db $ec                                           ; $6c6f: $ec
	di                                               ; $6c70: $f3
	ld d, e                                          ; $6c71: $53
	ld c, b                                          ; $6c72: $48
	and b                                            ; $6c73: $a0
	adc b                                            ; $6c74: $88
	sub c                                            ; $6c75: $91
	ld c, e                                          ; $6c76: $4b
	inc [hl]                                         ; $6c77: $34
	ld h, h                                          ; $6c78: $64
	ld b, c                                          ; $6c79: $41
	ld c, b                                          ; $6c7a: $48
	and b                                            ; $6c7b: $a0
	cpl                                              ; $6c7c: $2f
	ld h, $f0                                        ; $6c7d: $26 $f0
	and [hl]                                         ; $6c7f: $a6
	ldh a, [$a6]                                     ; $6c80: $f0 $a6
	ld e, c                                          ; $6c82: $59
	ld h, l                                          ; $6c83: $65
	dec h                                            ; $6c84: $25
	add hl, bc                                       ; $6c85: $09
	cpl                                              ; $6c86: $2f
	ld b, e                                          ; $6c87: $43
	ld e, d                                          ; $6c88: $5a
	add hl, sp                                       ; $6c89: $39
	ld a, $3d                                        ; $6c8a: $3e $3d
	scf                                              ; $6c8c: $37
	adc e                                            ; $6c8d: $8b
	ldh a, [$72]                                     ; $6c8e: $f0 $72
	scf                                              ; $6c90: $37
	inc de                                           ; $6c91: $13

jr_095_6c92:
	ld a, $3b                                        ; $6c92: $3e $3b
	inc a                                            ; $6c94: $3c
	ld d, a                                          ; $6c95: $57
	ld a, $5f                                        ; $6c96: $3e $5f
	and d                                            ; $6c98: $a2
	di                                               ; $6c99: $f3
	ld d, $53                                        ; $6c9a: $16 $53
	ld a, $38                                        ; $6c9c: $3e $38
	ld a, [hl-]                                      ; $6c9e: $3a
	xor b                                            ; $6c9f: $a8
	ld l, l                                          ; $6ca0: $6d
	ldh a, [$65]                                     ; $6ca1: $f0 $65
	inc [hl]                                         ; $6ca3: $34
	ld e, d                                          ; $6ca4: $5a
	add hl, sp                                       ; $6ca5: $39
	ld a, $3d                                        ; $6ca6: $3e $3d
	ld b, c                                          ; $6ca8: $41
	ld b, h                                          ; $6ca9: $44
	ld c, h                                          ; $6caa: $4c
	and b                                            ; $6cab: $a0
	cpl                                              ; $6cac: $2f
	ld b, e                                          ; $6cad: $43
	ld b, [hl]                                       ; $6cae: $46
	dec sp                                           ; $6caf: $3b
	inc [hl]                                         ; $6cb0: $34
	db $ec                                           ; $6cb1: $ec
	di                                               ; $6cb2: $f3
	xor b                                            ; $6cb3: $a8
	adc e                                            ; $6cb4: $8b
	ldh a, [$72]                                     ; $6cb5: $f0 $72
	ld d, e                                          ; $6cb7: $53
	pop af                                           ; $6cb8: $f1
	ld d, $47                                        ; $6cb9: $16 $47
	ld c, b                                          ; $6cbb: $48
	and b                                            ; $6cbc: $a0
	ld b, c                                          ; $6cbd: $41
	xor c                                            ; $6cbe: $a9
	ld d, h                                          ; $6cbf: $54
	ld c, l                                          ; $6cc0: $4d
	xor $2d                                          ; $6cc1: $ee $2d
	inc a                                            ; $6cc3: $3c
	ld b, c                                          ; $6cc4: $41
	scf                                              ; $6cc5: $37
	inc de                                           ; $6cc6: $13
	ld d, c                                          ; $6cc7: $51
	sbc l                                            ; $6cc8: $9d
	ld b, a                                          ; $6cc9: $47
	pop af                                           ; $6cca: $f1
	ld d, b                                          ; $6ccb: $50
	ld d, e                                          ; $6ccc: $53
	db $ec                                           ; $6ccd: $ec
	ld e, [hl]                                       ; $6cce: $5e
	ld b, d                                          ; $6ccf: $42
	inc de                                           ; $6cd0: $13
	ld l, a                                          ; $6cd1: $6f
	ldh a, [c]                                       ; $6cd2: $f2
	dec b                                            ; $6cd3: $05
	push af                                          ; $6cd4: $f5
	ld h, $f5                                        ; $6cd5: $26 $f5
	daa                                              ; $6cd7: $27
	pop af                                           ; $6cd8: $f1
	ld h, a                                          ; $6cd9: $67
	ld h, d                                          ; $6cda: $62
	pop af                                           ; $6cdb: $f1
	ld bc, $4c7b                                     ; $6cdc: $01 $7b $4c
	ld a, e                                          ; $6cdf: $7b
	and b                                            ; $6ce0: $a0
	cpl                                              ; $6ce1: $2f
	ld b, e                                          ; $6ce2: $43
	add a                                            ; $6ce3: $87
	ldh a, [$5b]                                     ; $6ce4: $f0 $5b
	ldh a, [$5e]                                     ; $6ce6: $f0 $5e
	inc a                                            ; $6ce8: $3c
	ld a, [hl-]                                      ; $6ce9: $3a
	ld [hl], h                                       ; $6cea: $74
	xor b                                            ; $6ceb: $a8
	adc e                                            ; $6cec: $8b
	ldh a, [$72]                                     ; $6ced: $f0 $72
	ld b, d                                          ; $6cef: $42
	ldh a, [$f8]                                     ; $6cf0: $f0 $f8
	and b                                            ; $6cf2: $a0
	ld d, d                                          ; $6cf3: $52
	xor h                                            ; $6cf4: $ac
	ldh a, [$f7]                                     ; $6cf5: $f0 $f7
	ld c, e                                          ; $6cf7: $4b
	ld d, c                                          ; $6cf8: $51
	sbc l                                            ; $6cf9: $9d
	ld b, a                                          ; $6cfa: $47
	pop af                                           ; $6cfb: $f1
	rra                                              ; $6cfc: $1f
	ld a, a                                          ; $6cfd: $7f
	ld b, a                                          ; $6cfe: $47
	ld a, [hl-]                                      ; $6cff: $3a
	dec sp                                           ; $6d00: $3b
	ccf                                              ; $6d01: $3f
	inc de                                           ; $6d02: $13
	ldh a, [$e8]                                     ; $6d03: $f0 $e8
	dec sp                                           ; $6d05: $3b
	ccf                                              ; $6d06: $3f
	ld d, l                                          ; $6d07: $55
	ld c, [hl]                                       ; $6d08: $4e
	ld b, h                                          ; $6d09: $44
	ld e, a                                          ; $6d0a: $5f
	add hl, sp                                       ; $6d0b: $39
	xor b                                            ; $6d0c: $a8
	ld c, d                                          ; $6d0d: $4a
	ld c, e                                          ; $6d0e: $4b
	inc [hl]                                         ; $6d0f: $34
	ldh a, [rHDMA5]                                  ; $6d10: $f0 $55
	ldh a, [rBCPS]                                   ; $6d12: $f0 $68
	and b                                            ; $6d14: $a0
	cpl                                              ; $6d15: $2f
	ld [hl-], a                                      ; $6d16: $32
	ld c, b                                          ; $6d17: $48
	ld b, [hl]                                       ; $6d18: $46
	dec sp                                           ; $6d19: $3b
	ld c, c                                          ; $6d1a: $49
	add d                                            ; $6d1b: $82
	add hl, sp                                       ; $6d1c: $39
	ldh a, [$2a]                                     ; $6d1d: $f0 $2a
	ld b, a                                          ; $6d1f: $47
	xor h                                            ; $6d20: $ac
	ldh a, [c]                                       ; $6d21: $f2
	dec l                                            ; $6d22: $2d
	di                                               ; $6d23: $f3
	ld hl, sp-$10                                    ; $6d24: $f8 $f0
	rst SubAFromHL                                          ; $6d26: $d7
	ld b, a                                          ; $6d27: $47
	ld a, [hl-]                                      ; $6d28: $3a
	dec sp                                           ; $6d29: $3b
	ccf                                              ; $6d2a: $3f
	db $ec                                           ; $6d2b: $ec
	push de                                          ; $6d2c: $d5
	and e                                            ; $6d2d: $a3
	ld b, l                                          ; $6d2e: $45
	add hl, sp                                       ; $6d2f: $39
	and b                                            ; $6d30: $a0
	cpl                                              ; $6d31: $2f
	ld b, e                                          ; $6d32: $43
	adc e                                            ; $6d33: $8b
	ldh a, [$72]                                     ; $6d34: $f0 $72
	xor h                                            ; $6d36: $ac
	ldh a, [rAUD1LOW]                                ; $6d37: $f0 $13
	sbc d                                            ; $6d39: $9a
	ld b, h                                          ; $6d3a: $44
	dec sp                                           ; $6d3b: $3b
	dec a                                            ; $6d3c: $3d
	ld b, d                                          ; $6d3d: $42
	inc a                                            ; $6d3e: $3c
	and b                                            ; $6d3f: $a0
	ld l, e                                          ; $6d40: $6b
	inc [hl]                                         ; $6d41: $34
	add d                                            ; $6d42: $82
	dec sp                                           ; $6d43: $3b
	ccf                                              ; $6d44: $3f
	ld b, c                                          ; $6d45: $41
	ld b, h                                          ; $6d46: $44
	and c                                            ; $6d47: $a1
	cpl                                              ; $6d48: $2f
	ld b, e                                          ; $6d49: $43
	ld h, h                                          ; $6d4a: $64
	sbc [hl]                                         ; $6d4b: $9e
	inc [hl]                                         ; $6d4c: $34
	ld e, b                                          ; $6d4d: $58
	dec sp                                           ; $6d4e: $3b
	ld e, h                                          ; $6d4f: $5c
	inc de                                           ; $6d50: $13
	db $ec                                           ; $6d51: $ec
	di                                               ; $6d52: $f3
	ld b, d                                          ; $6d53: $42
	pop af                                           ; $6d54: $f1
	ld [$91f0], a                                    ; $6d55: $ea $f0 $91
	ld b, a                                          ; $6d58: $47
	inc de                                           ; $6d59: $13
	pop af                                           ; $6d5a: $f1
	ld h, e                                          ; $6d5b: $63
	ld a, e                                          ; $6d5c: $7b
	ld c, l                                          ; $6d5d: $4d
	dec a                                            ; $6d5e: $3d
	ld b, h                                          ; $6d5f: $44
	ld e, a                                          ; $6d60: $5f
	add hl, sp                                       ; $6d61: $39
	and c                                            ; $6d62: $a1
	ldh a, [$2d]                                     ; $6d63: $f0 $2d
	ld d, b                                          ; $6d65: $50
	ld c, h                                          ; $6d66: $4c
	ld e, [hl]                                       ; $6d67: $5e
	sub a                                            ; $6d68: $97
	xor b                                            ; $6d69: $a8
	ld b, b                                          ; $6d6a: $40
	ld b, c                                          ; $6d6b: $41
	ld a, [hl-]                                      ; $6d6c: $3a
	sbc d                                            ; $6d6d: $9a
	and b                                            ; $6d6e: $a0
	cpl                                              ; $6d6f: $2f
	ld b, e                                          ; $6d70: $43
	ld e, [hl]                                       ; $6d71: $5e
	dec sp                                           ; $6d72: $3b
	xor c                                            ; $6d73: $a9
	ld e, e                                          ; $6d74: $5b
	ld d, [hl]                                       ; $6d75: $56
	ld b, [hl]                                       ; $6d76: $46
	inc [hl]                                         ; $6d77: $34
	db $ec                                           ; $6d78: $ec
	di                                               ; $6d79: $f3
	ld b, d                                          ; $6d7a: $42
	inc de                                           ; $6d7b: $13
	pop af                                           ; $6d7c: $f1
	ld [bc], a                                       ; $6d7d: $02
	ldh a, [$a1]                                     ; $6d7e: $f0 $a1
	ld e, c                                          ; $6d80: $59
	add e                                            ; $6d81: $83
	ld c, e                                          ; $6d82: $4b
	and c                                            ; $6d83: $a1
	ld l, e                                          ; $6d84: $6b
	ld b, h                                          ; $6d85: $44
	ld b, b                                          ; $6d86: $40
	ld c, l                                          ; $6d87: $4d
	xor c                                            ; $6d88: $a9
	ldh a, [$5d]                                     ; $6d89: $f0 $5d
	ld a, [hl-]                                      ; $6d8b: $3a
	ldh a, [$f8]                                     ; $6d8c: $f0 $f8
	xor b                                            ; $6d8e: $a8
	ld e, e                                          ; $6d8f: $5b
	ld d, [hl]                                       ; $6d90: $56
	ld b, [hl]                                       ; $6d91: $46
	inc [hl]                                         ; $6d92: $34
	ld c, a                                          ; $6d93: $4f
	add hl, sp                                       ; $6d94: $39
	ld h, a                                          ; $6d95: $67
	ld d, l                                          ; $6d96: $55
	adc l                                            ; $6d97: $8d
	and b                                            ; $6d98: $a0
	cpl                                              ; $6d99: $2f
	ld b, e                                          ; $6d9a: $43
	xor $10                                          ; $6d9b: $ee $10
	xor $10                                          ; $6d9d: $ee $10
	xor b                                            ; $6d9f: $a8
	ld l, l                                          ; $6da0: $6d
	ldh a, [$65]                                     ; $6da1: $f0 $65
	ld e, d                                          ; $6da3: $5a
	add hl, sp                                       ; $6da4: $39
	jr c, @+$3b                                      ; $6da5: $38 $39

	sbc d                                            ; $6da7: $9a
	ld b, h                                          ; $6da8: $44
	and c                                            ; $6da9: $a1
	add hl, bc                                       ; $6daa: $09
	cpl                                              ; $6dab: $2f
	ld [hl-], a                                      ; $6dac: $32
	pop af                                           ; $6dad: $f1
	ld d, $47                                        ; $6dae: $16 $47
	ldh a, [c]                                       ; $6db0: $f2
	db $f4                                           ; $6db1: $f4
	ld d, e                                          ; $6db2: $53
	inc de                                           ; $6db3: $13
	ldh a, [c]                                       ; $6db4: $f2
	ld c, a                                          ; $6db5: $4f
	dec sp                                           ; $6db6: $3b
	ccf                                              ; $6db7: $3f
	ld e, h                                          ; $6db8: $5c
	dec a                                            ; $6db9: $3d
	ld a, [hl-]                                      ; $6dba: $3a
	xor b                                            ; $6dbb: $a8
	ldh a, [c]                                       ; $6dbc: $f2
	ldh a, [c]                                       ; $6dbd: $f2
	ld h, d                                          ; $6dbe: $62
	ldh a, [rHDMA1]                                  ; $6dbf: $f0 $51
	dec sp                                           ; $6dc1: $3b
	ccf                                              ; $6dc2: $3f
	ld e, h                                          ; $6dc3: $5c
	ccf                                              ; $6dc4: $3f
	ld b, l                                          ; $6dc5: $45
	inc a                                            ; $6dc6: $3c
	dec sp                                           ; $6dc7: $3b
	dec a                                            ; $6dc8: $3d
	xor b                                            ; $6dc9: $a8
	ld b, [hl]                                       ; $6dca: $46
	dec sp                                           ; $6dcb: $3b
	inc [hl]                                         ; $6dcc: $34
	db $ed                                           ; $6dcd: $ed
	xor c                                            ; $6dce: $a9

jr_095_6dcf:
	db $ec                                           ; $6dcf: $ec
	daa                                              ; $6dd0: $27
	and e                                            ; $6dd1: $a3
	cpl                                              ; $6dd2: $2f
	ld b, e                                          ; $6dd3: $43
	ld h, h                                          ; $6dd4: $64
	ld e, c                                          ; $6dd5: $59
	jr c, jr_095_6e0c                                ; $6dd6: $38 $34

	db $ed                                           ; $6dd8: $ed
	xor c                                            ; $6dd9: $a9
	xor b                                            ; $6dda: $a8
	db $eb                                           ; $6ddb: $eb
	rst FarCall                                          ; $6ddc: $f7
	and c                                            ; $6ddd: $a1
	pop af                                           ; $6dde: $f1
	ld d, $47                                        ; $6ddf: $16 $47
	ldh a, [c]                                       ; $6de1: $f2
	db $f4                                           ; $6de2: $f4
	ld d, e                                          ; $6de3: $53
	inc de                                           ; $6de4: $13
	ldh a, [c]                                       ; $6de5: $f2
	ld c, a                                          ; $6de6: $4f
	dec sp                                           ; $6de7: $3b
	ccf                                              ; $6de8: $3f
	ld e, h                                          ; $6de9: $5c
	ld h, c                                          ; $6dea: $61
	ld d, [hl]                                       ; $6deb: $56
	dec sp                                           ; $6dec: $3b
	ccf                                              ; $6ded: $3f
	ld c, b                                          ; $6dee: $48
	xor h                                            ; $6def: $ac
	pop af                                           ; $6df0: $f1
	xor d                                            ; $6df1: $aa
	ld a, a                                          ; $6df2: $7f
	ldh a, [$cc]                                     ; $6df3: $f0 $cc
	pop af                                           ; $6df5: $f1
	rst $38                                          ; $6df6: $ff
	ld c, d                                          ; $6df7: $4a
	ld c, e                                          ; $6df8: $4b
	ldh a, [c]                                       ; $6df9: $f2
	ld c, a                                          ; $6dfa: $4f
	ld d, b                                          ; $6dfb: $50
	ld a, [hl-]                                      ; $6dfc: $3a
	jr c, jr_095_6e3a                                ; $6dfd: $38 $3b

	ccf                                              ; $6dff: $3f
	inc de                                           ; $6e00: $13
	add d                                            ; $6e01: $82
	dec sp                                           ; $6e02: $3b
	ccf                                              ; $6e03: $3f
	dec a                                            ; $6e04: $3d
	ld b, d                                          ; $6e05: $42
	ld b, a                                          ; $6e06: $47
	ld c, b                                          ; $6e07: $48
	and b                                            ; $6e08: $a0
	cpl                                              ; $6e09: $2f
	ld b, e                                          ; $6e0a: $43
	ldh a, [c]                                       ; $6e0b: $f2

jr_095_6e0c:
	ldh a, [c]                                       ; $6e0c: $f2
	xor h                                            ; $6e0d: $ac
	ldh a, [rHDMA1]                                  ; $6e0e: $f0 $51
	dec sp                                           ; $6e10: $3b
	ccf                                              ; $6e11: $3f
	ld d, h                                          ; $6e12: $54
	ld a, [hl-]                                      ; $6e13: $3a
	inc a                                            ; $6e14: $3c
	dec sp                                           ; $6e15: $3b
	dec a                                            ; $6e16: $3d
	ld b, d                                          ; $6e17: $42
	and c                                            ; $6e18: $a1
	xor $1f                                          ; $6e19: $ee $1f
	ld c, b                                          ; $6e1b: $48
	and b                                            ; $6e1c: $a0
	cpl                                              ; $6e1d: $2f
	ld b, e                                          ; $6e1e: $43
	db $ec                                           ; $6e1f: $ec
	cp c                                             ; $6e20: $b9
	ld d, b                                          ; $6e21: $50
	xor h                                            ; $6e22: $ac
	xor $06                                          ; $6e23: $ee $06
	ld b, a                                          ; $6e25: $47
	sub [hl]                                         ; $6e26: $96
	dec sp                                           ; $6e27: $3b
	ccf                                              ; $6e28: $3f
	jr c, @+$3e                                      ; $6e29: $38 $3c

	ld a, [hl-]                                      ; $6e2b: $3a
	jr c, jr_095_6dcf                                ; $6e2c: $38 $a1

	ld e, [hl]                                       ; $6e2e: $5e
	dec sp                                           ; $6e2f: $3b
	xor h                                            ; $6e30: $ac
	ldh a, [c]                                       ; $6e31: $f2
	ldh a, [c]                                       ; $6e32: $f2
	ldh a, [rHDMA1]                                  ; $6e33: $f0 $51
	dec sp                                           ; $6e35: $3b
	ccf                                              ; $6e36: $3f
	ld e, h                                          ; $6e37: $5c
	ccf                                              ; $6e38: $3f
	ld c, [hl]                                       ; $6e39: $4e

jr_095_6e3a:
	ld b, d                                          ; $6e3a: $42
	and c                                            ; $6e3b: $a1
	cpl                                              ; $6e3c: $2f
	ld b, e                                          ; $6e3d: $43
	sub c                                            ; $6e3e: $91
	ldh a, [$59]                                     ; $6e3f: $f0 $59
	xor b                                            ; $6e41: $a8
	ld l, b                                          ; $6e42: $68
	ldh a, [c]                                       ; $6e43: $f2
	inc b                                            ; $6e44: $04
	ld b, d                                          ; $6e45: $42
	ld h, a                                          ; $6e46: $67
	jr c, jr_095_6e9c                                ; $6e47: $38 $53

	jr c, jr_095_6e83                                ; $6e49: $38 $38

	inc a                                            ; $6e4b: $3c
	ld d, b                                          ; $6e4c: $50
	ld c, h                                          ; $6e4d: $4c
	and b                                            ; $6e4e: $a0
	ld e, h                                          ; $6e4f: $5c
	dec sp                                           ; $6e50: $3b
	ld c, c                                          ; $6e51: $49
	ld b, b                                          ; $6e52: $40
	ld c, l                                          ; $6e53: $4d
	ld c, d                                          ; $6e54: $4a
	xor h                                            ; $6e55: $ac
	ldh a, [c]                                       ; $6e56: $f2
	db $f4                                           ; $6e57: $f4
	ld d, e                                          ; $6e58: $53
	ldh a, [c]                                       ; $6e59: $f2
	ld c, a                                          ; $6e5a: $4f
	dec sp                                           ; $6e5b: $3b
	dec a                                            ; $6e5c: $3d
	ld b, d                                          ; $6e5d: $42
	ld c, h                                          ; $6e5e: $4c
	xor b                                            ; $6e5f: $a8
	add hl, sp                                       ; $6e60: $39
	db $eb                                           ; $6e61: $eb
	sbc b                                            ; $6e62: $98
	and b                                            ; $6e63: $a0
	cpl                                              ; $6e64: $2f
	ld b, e                                          ; $6e65: $43
	ldh a, [$34]                                     ; $6e66: $f0 $34
	ld b, a                                          ; $6e68: $47
	inc [hl]                                         ; $6e69: $34
	xor $06                                          ; $6e6a: $ee $06
	ld b, a                                          ; $6e6c: $47
	inc de                                           ; $6e6d: $13
	ld a, d                                          ; $6e6e: $7a
	ld d, b                                          ; $6e6f: $50
	ld a, [hl-]                                      ; $6e70: $3a
	ld d, l                                          ; $6e71: $55
	ccf                                              ; $6e72: $3f
	ld c, a                                          ; $6e73: $4f
	jr c, jr_095_6eae                                ; $6e74: $38 $38

	ld b, c                                          ; $6e76: $41
	ld b, h                                          ; $6e77: $44
	ld e, l                                          ; $6e78: $5d
	ld e, d                                          ; $6e79: $5a
	ld a, [hl-]                                      ; $6e7a: $3a
	ld [hl], h                                       ; $6e7b: $74
	ld c, b                                          ; $6e7c: $48
	add hl, bc                                       ; $6e7d: $09
	ld b, [hl]                                       ; $6e7e: $46
	dec sp                                           ; $6e7f: $3b
	inc [hl]                                         ; $6e80: $34
	db $ed                                           ; $6e81: $ed
	ld a, h                                          ; $6e82: $7c

jr_095_6e83:
	ld b, l                                          ; $6e83: $45
	xor b                                            ; $6e84: $a8
	xor $06                                          ; $6e85: $ee $06
	ld b, a                                          ; $6e87: $47
	ld c, b                                          ; $6e88: $48
	add hl, bc                                       ; $6e89: $09
	ld a, d                                          ; $6e8a: $7a
	ld d, a                                          ; $6e8b: $57
	dec a                                            ; $6e8c: $3d
	jr c, jr_095_6ec9                                ; $6e8d: $38 $3a

	and b                                            ; $6e8f: $a0
	cpl                                              ; $6e90: $2f
	ld b, e                                          ; $6e91: $43
	ld b, b                                          ; $6e92: $40
	add hl, sp                                       ; $6e93: $39
	xor c                                            ; $6e94: $a9
	or h                                             ; $6e95: $b4
	xor h                                            ; $6e96: $ac
	db $ec                                           ; $6e97: $ec
	rlca                                             ; $6e98: $07
	and b                                            ; $6e99: $a0
	db $ec                                           ; $6e9a: $ec
	reti                                             ; $6e9b: $d9


jr_095_6e9c:
	xor h                                            ; $6e9c: $ac
	ret                                              ; $6e9d: $c9


	db $eb                                           ; $6e9e: $eb

jr_095_6e9f:
	ld c, a                                          ; $6e9f: $4f
	ld c, h                                          ; $6ea0: $4c
	and b                                            ; $6ea1: $a0
	cpl                                              ; $6ea2: $2f
	ld [hl-], a                                      ; $6ea3: $32
	db $ed                                           ; $6ea4: $ed
	xor c                                            ; $6ea5: $a9
	ld c, c                                          ; $6ea6: $49
	ldh a, [$e9]                                     ; $6ea7: $f0 $e9
	ldh a, [rTMA]                                    ; $6ea9: $f0 $06
	jr c, jr_095_6e9f                                ; $6eab: $38 $f2

	ldh a, [c]                                       ; $6ead: $f2

jr_095_6eae:
	ld c, d                                          ; $6eae: $4a
	inc de                                           ; $6eaf: $13
	ld a, d                                          ; $6eb0: $7a
	ld c, l                                          ; $6eb1: $4d
	ld c, [hl]                                       ; $6eb2: $4e
	ld a, [hl-]                                      ; $6eb3: $3a
	ld b, c                                          ; $6eb4: $41
	ccf                                              ; $6eb5: $3f
	xor h                                            ; $6eb6: $ac
	ldh a, [$29]                                     ; $6eb7: $f0 $29
	ld a, $38                                        ; $6eb9: $3e $38
	ld a, [hl-]                                      ; $6ebb: $3a
	ld [hl], h                                       ; $6ebc: $74
	and e                                            ; $6ebd: $a3
	db $ec                                           ; $6ebe: $ec
	ld l, e                                          ; $6ebf: $6b
	ld b, a                                          ; $6ec0: $47

jr_095_6ec1:
	xor h                                            ; $6ec1: $ac
	ld [hl], d                                       ; $6ec2: $72
	ld d, b                                          ; $6ec3: $50
	ld c, l                                          ; $6ec4: $4d
	ld h, c                                          ; $6ec5: $61
	ld d, [hl]                                       ; $6ec6: $56
	add hl, sp                                       ; $6ec7: $39
	inc a                                            ; $6ec8: $3c

jr_095_6ec9:
	ld a, [hl-]                                      ; $6ec9: $3a
	ld c, b                                          ; $6eca: $48
	and c                                            ; $6ecb: $a1
	cpl                                              ; $6ecc: $2f
	ld b, e                                          ; $6ecd: $43
	db $ed                                           ; $6ece: $ed
	xor c                                            ; $6ecf: $a9
	ld c, c                                          ; $6ed0: $49
	halt                                             ; $6ed1: $76
	ld e, e                                          ; $6ed2: $5b
	ld d, [hl]                                       ; $6ed3: $56
	xor h                                            ; $6ed4: $ac
	ldh a, [rLYC]                                    ; $6ed5: $f0 $45
	ld c, c                                          ; $6ed7: $49
	add e                                            ; $6ed8: $83
	ld [hl], e                                       ; $6ed9: $73
	pop af                                           ; $6eda: $f1
	ld [de], a                                       ; $6edb: $12
	ld h, l                                          ; $6edc: $65
	ld b, h                                          ; $6edd: $44
	inc a                                            ; $6ede: $3c
	ld d, b                                          ; $6edf: $50
	xor h                                            ; $6ee0: $ac
	ld e, h                                          ; $6ee1: $5c
	dec sp                                           ; $6ee2: $3b
	ld c, c                                          ; $6ee3: $49
	ld [hl], d                                       ; $6ee4: $72
	ld d, b                                          ; $6ee5: $50
	ld c, l                                          ; $6ee6: $4d
	ld a, [hl-]                                      ; $6ee7: $3a
	jr c, jr_095_6f2f                                ; $6ee8: $38 $45

	and b                                            ; $6eea: $a0
	ld b, b                                          ; $6eeb: $40
	inc [hl]                                         ; $6eec: $34
	ld b, b                                          ; $6eed: $40
	ld b, c                                          ; $6eee: $41
	ld a, [hl-]                                      ; $6eef: $3a
	ld d, h                                          ; $6ef0: $54
	ld c, c                                          ; $6ef1: $49
	ld a, [hl-]                                      ; $6ef2: $3a
	jr c, jr_095_6f3e                                ; $6ef3: $38 $49

	xor h                                            ; $6ef5: $ac
	ld [hl], a                                       ; $6ef6: $77
	add hl, sp                                       ; $6ef7: $39
	ld e, l                                          ; $6ef8: $5d
	ld e, d                                          ; $6ef9: $5a
	ld c, b                                          ; $6efa: $48
	and b                                            ; $6efb: $a0
	cpl                                              ; $6efc: $2f
	ld b, e                                          ; $6efd: $43
	rst JumpTable                                          ; $6efe: $c7
	xor c                                            ; $6eff: $a9
	ld b, h                                          ; $6f00: $44
	dec sp                                           ; $6f01: $3b
	dec a                                            ; $6f02: $3d
	ld d, b                                          ; $6f03: $50
	ldh a, [$29]                                     ; $6f04: $f0 $29
	ld a, $38                                        ; $6f06: $3e $38
	ld b, c                                          ; $6f08: $41
	ld b, h                                          ; $6f09: $44
	ld e, l                                          ; $6f0a: $5d
	ld e, d                                          ; $6f0b: $5a
	ld c, b                                          ; $6f0c: $48
	and b                                            ; $6f0d: $a0
	ld c, h                                          ; $6f0e: $4c
	add l                                            ; $6f0f: $85
	inc [hl]                                         ; $6f10: $34
	ret                                              ; $6f11: $c9


	pop af                                           ; $6f12: $f1
	jr z, @-$0e                                      ; $6f13: $28 $f0

	ld b, h                                          ; $6f15: $44
	ld b, a                                          ; $6f16: $47
	xor h                                            ; $6f17: $ac
	ld b, l                                          ; $6f18: $45
	dec sp                                           ; $6f19: $3b
	ccf                                              ; $6f1a: $3f
	ld h, a                                          ; $6f1b: $67
	inc a                                            ; $6f1c: $3c
	ld a, [hl-]                                      ; $6f1d: $3a
	jr c, jr_095_6ec1                                ; $6f1e: $38 $a1

	cpl                                              ; $6f20: $2f
	ld b, e                                          ; $6f21: $43
	ld b, [hl]                                       ; $6f22: $46
	inc [hl]                                         ; $6f23: $34
	ld [$a0c3], a                                    ; $6f24: $ea $c3 $a0
	cpl                                              ; $6f27: $2f
	ld [hl-], a                                      ; $6f28: $32
	ret                                              ; $6f29: $c9


	ld c, d                                          ; $6f2a: $4a
	ld c, a                                          ; $6f2b: $4f
	xor h                                            ; $6f2c: $ac
	ldh a, [$62]                                     ; $6f2d: $f0 $62

jr_095_6f2f:
	ld d, l                                          ; $6f2f: $55
	jr c, jr_095_6f82                                ; $6f30: $38 $50

	ld c, l                                          ; $6f32: $4d
	ccf                                              ; $6f33: $3f
	inc [hl]                                         ; $6f34: $34
	ldh a, [$29]                                     ; $6f35: $f0 $29
	ld a, $38                                        ; $6f37: $3e $38
	ld a, [hl-]                                      ; $6f39: $3a
	ld c, b                                          ; $6f3a: $48
	and e                                            ; $6f3b: $a3
	cpl                                              ; $6f3c: $2f
	ld [hl-], a                                      ; $6f3d: $32

jr_095_6f3e:
	ld b, [hl]                                       ; $6f3e: $46
	dec sp                                           ; $6f3f: $3b
	xor h                                            ; $6f40: $ac
	ld b, [hl]                                       ; $6f41: $46
	ld c, l                                          ; $6f42: $4d
	ld c, e                                          ; $6f43: $4b
	db $ec                                           ; $6f44: $ec
	rst SubAFromDE                                          ; $6f45: $df
	xor b                                            ; $6f46: $a8
	ldh a, [c]                                       ; $6f47: $f2
	sbc h                                            ; $6f48: $9c
	ld b, b                                          ; $6f49: $40
	add hl, sp                                       ; $6f4a: $39
	ld a, [hl-]                                      ; $6f4b: $3a
	adc b                                            ; $6f4c: $88
	ld h, d                                          ; $6f4d: $62
	ldh a, [c]                                       ; $6f4e: $f2
	sub [hl]                                         ; $6f4f: $96
	ld e, [hl]                                       ; $6f50: $5e
	ccf                                              ; $6f51: $3f
	xor h                                            ; $6f52: $ac
	add a                                            ; $6f53: $87
	ldh a, [$5d]                                     ; $6f54: $f0 $5d
	ld b, b                                          ; $6f56: $40
	add hl, sp                                       ; $6f57: $39
	ld b, h                                          ; $6f58: $44
	sub a                                            ; $6f59: $97
	and e                                            ; $6f5a: $a3
	cpl                                              ; $6f5b: $2f
	ld b, e                                          ; $6f5c: $43
	add a                                            ; $6f5d: $87
	ldh a, [$5d]                                     ; $6f5e: $f0 $5d
	ld b, b                                          ; $6f60: $40
	add hl, sp                                       ; $6f61: $39
	ld b, h                                          ; $6f62: $44
	ld c, h                                          ; $6f63: $4c
	xor h                                            ; $6f64: $ac
	db $ec                                           ; $6f65: $ec
	rst SubAFromDE                                          ; $6f66: $df
	and b                                            ; $6f67: $a0
	ld d, $a8                                        ; $6f68: $16 $a8
	ld b, b                                          ; $6f6a: $40
	inc [hl]                                         ; $6f6b: $34
	ld b, b                                          ; $6f6c: $40
	ld b, c                                          ; $6f6d: $41
	ld a, [hl-]                                      ; $6f6e: $3a
	ld d, h                                          ; $6f6f: $54
	ld c, c                                          ; $6f70: $49
	ld c, e                                          ; $6f71: $4b
	inc de                                           ; $6f72: $13
	ld a, [hl-]                                      ; $6f73: $3a
	jr c, jr_095_6fc0                                ; $6f74: $38 $4a

	ld d, c                                          ; $6f76: $51
	ld b, l                                          ; $6f77: $45
	and b                                            ; $6f78: $a0
	cpl                                              ; $6f79: $2f
	ld b, e                                          ; $6f7a: $43
	halt                                             ; $6f7b: $76
	ld d, e                                          ; $6f7c: $53
	ldh a, [rHDMA1]                                  ; $6f7d: $f0 $51
	dec sp                                           ; $6f7f: $3b
	ccf                                              ; $6f80: $3f
	rst SubAFromDE                                          ; $6f81: $df

jr_095_6f82:
	inc a                                            ; $6f82: $3c
	ld d, b                                          ; $6f83: $50
	xor h                                            ; $6f84: $ac
	ldh a, [$08]                                     ; $6f85: $f0 $08
	ld d, b                                          ; $6f87: $50
	inc [hl]                                         ; $6f88: $34
	ldh a, [c]                                       ; $6f89: $f2
	ld hl, sp+$3e                                    ; $6f8a: $f8 $3e
	ccf                                              ; $6f8c: $3f
	and c                                            ; $6f8d: $a1
	jr c, jr_095_6fc4                                ; $6f8e: $38 $34

	jr c, jr_095_6ff0                                ; $6f90: $38 $5e

	inc [hl]                                         ; $6f92: $34
	db $eb                                           ; $6f93: $eb
	ld l, b                                          ; $6f94: $68
	xor b                                            ; $6f95: $a8
	ld b, b                                          ; $6f96: $40
	ld c, l                                          ; $6f97: $4d
	ld b, a                                          ; $6f98: $47
	xor h                                            ; $6f99: $ac
	pop af                                           ; $6f9a: $f1
	or c                                             ; $6f9b: $b1
	ldh a, [c]                                       ; $6f9c: $f2
	ld [hl], l                                       ; $6f9d: $75
	ld d, e                                          ; $6f9e: $53
	inc a                                            ; $6f9f: $3c
	inc a                                            ; $6fa0: $3c
	ld d, a                                          ; $6fa1: $57
	ld d, d                                          ; $6fa2: $52
	ld d, c                                          ; $6fa3: $51
	ld a, $48                                        ; $6fa4: $3e $48
	and b                                            ; $6fa6: $a0
	cpl                                              ; $6fa7: $2f
	ld b, e                                          ; $6fa8: $43
	ld d, h                                          ; $6fa9: $54
	add hl, sp                                       ; $6faa: $39
	jr c, jr_095_6fe6                                ; $6fab: $38 $39

Call_095_6fad:
	sbc d                                            ; $6fad: $9a
	ld c, e                                          ; $6fae: $4b
	xor h                                            ; $6faf: $ac
	ldh a, [$ab]                                     ; $6fb0: $f0 $ab
	ld b, a                                          ; $6fb2: $47
	pop af                                           ; $6fb3: $f1
	dec h                                            ; $6fb4: $25
	ld a, c                                          ; $6fb5: $79
	ccf                                              ; $6fb6: $3f
	ld h, h                                          ; $6fb7: $64
	ld e, l                                          ; $6fb8: $5d
	ld a, e                                          ; $6fb9: $7b
	inc de                                           ; $6fba: $13
	jr c, jr_095_6ff5                                ; $6fbb: $38 $38

	ld b, d                                          ; $6fbd: $42
	and b                                            ; $6fbe: $a0
	ld e, [hl]                                       ; $6fbf: $5e

jr_095_6fc0:
	ld c, b                                          ; $6fc0: $48
	inc [hl]                                         ; $6fc1: $34
	ld c, d                                          ; $6fc2: $4a
	ld c, a                                          ; $6fc3: $4f

jr_095_6fc4:
	ld c, b                                          ; $6fc4: $48
	and b                                            ; $6fc5: $a0
	cpl                                              ; $6fc6: $2f
	ld b, e                                          ; $6fc7: $43
	jr c, jr_095_7002                                ; $6fc8: $38 $38

	inc a                                            ; $6fca: $3c
	ld d, b                                          ; $6fcb: $50
	inc [hl]                                         ; $6fcc: $34
	jr c, @+$3a                                      ; $6fcd: $38 $38

	inc a                                            ; $6fcf: $3c
	ld d, b                                          ; $6fd0: $50
	xor b                                            ; $6fd1: $a8
	ld b, l                                          ; $6fd2: $45
	jr c, @+$40                                      ; $6fd3: $38 $3e

	ld h, [hl]                                       ; $6fd5: $66
	dec sp                                           ; $6fd6: $3b
	ld c, c                                          ; $6fd7: $49
	and b                                            ; $6fd8: $a0
	ld b, [hl]                                       ; $6fd9: $46
	inc [hl]                                         ; $6fda: $34
	ld b, [hl]                                       ; $6fdb: $46
	ld d, a                                          ; $6fdc: $57
	ld d, e                                          ; $6fdd: $53
	ld c, c                                          ; $6fde: $49
	add hl, sp                                       ; $6fdf: $39
	inc de                                           ; $6fe0: $13
	ld [hl], b                                       ; $6fe1: $70
	ldh a, [rAUD1SWEEP]                              ; $6fe2: $f0 $10
	jr c, @+$54                                      ; $6fe4: $38 $52

jr_095_6fe6:
	ld d, c                                          ; $6fe6: $51
	dec [hl]                                         ; $6fe7: $35
	ld c, c                                          ; $6fe8: $49
	ccf                                              ; $6fe9: $3f
	ld c, a                                          ; $6fea: $4f
	inc [hl]                                         ; $6feb: $34
	ldh a, [$29]                                     ; $6fec: $f0 $29
	ld a, $38                                        ; $6fee: $3e $38

jr_095_6ff0:
	ld c, d                                          ; $6ff0: $4a
	ld d, c                                          ; $6ff1: $51
	and b                                            ; $6ff2: $a0
	cpl                                              ; $6ff3: $2f
	ld b, e                                          ; $6ff4: $43

jr_095_6ff5:
	ld b, b                                          ; $6ff5: $40
	ld c, l                                          ; $6ff6: $4d
	ld c, d                                          ; $6ff7: $4a
	inc [hl]                                         ; $6ff8: $34
	ld d, h                                          ; $6ff9: $54
	ld c, l                                          ; $6ffa: $4d
	ld c, e                                          ; $6ffb: $4b
	ld e, d                                          ; $6ffc: $5a
	ld d, h                                          ; $6ffd: $54
	ld d, d                                          ; $6ffe: $52
	ld c, d                                          ; $6fff: $4a
	inc de                                           ; $7000: $13
	pop af                                           ; $7001: $f1

jr_095_7002:
	ld h, e                                          ; $7002: $63
	ldh a, [$8c]                                     ; $7003: $f0 $8c
	ld a, e                                          ; $7005: $7b
	jr c, jr_095_7040                                ; $7006: $38 $38

jr_095_7008:
	ld b, d                                          ; $7008: $42
	inc a                                            ; $7009: $3c
	ld a, [hl-]                                      ; $700a: $3a
	and c                                            ; $700b: $a1
	ld b, [hl]                                       ; $700c: $46
	dec sp                                           ; $700d: $3b
	inc [hl]                                         ; $700e: $34
	db $eb                                           ; $700f: $eb
	ld d, a                                          ; $7010: $57
	xor b                                            ; $7011: $a8
	jp z, $f234                                      ; $7012: $ca $34 $f2

	jr z, jr_095_7008                                ; $7015: $28 $f1

	ld l, $f1                                        ; $7017: $2e $f1
	ld l, b                                          ; $7019: $68
	ld d, d                                          ; $701a: $52
	ld c, d                                          ; $701b: $4a
	inc de                                           ; $701c: $13

jr_095_701d:
	ld h, h                                          ; $701d: $64
	ldh a, [$c8]                                     ; $701e: $f0 $c8
	jr c, jr_095_706c                                ; $7020: $38 $4a

	ld e, h                                          ; $7022: $5c
	ld d, d                                          ; $7023: $52
	ld d, c                                          ; $7024: $51
	inc a                                            ; $7025: $3c
	ld c, b                                          ; $7026: $48
	and b                                            ; $7027: $a0
	cpl                                              ; $7028: $2f
	ld b, e                                          ; $7029: $43
	ld h, h                                          ; $702a: $64
	ld l, [hl]                                       ; $702b: $6e
	ld d, c                                          ; $702c: $51
	jr c, jr_095_701d                                ; $702d: $38 $ee

	inc e                                            ; $702f: $1c
	ld b, h                                          ; $7030: $44
	ld b, l                                          ; $7031: $45
	and b                                            ; $7032: $a0
	sbc $ac                                          ; $7033: $de $ac
	ldh a, [$4e]                                     ; $7035: $f0 $4e
	ld a, $38                                        ; $7037: $3e $38
	ld b, c                                          ; $7039: $41
	ld c, d                                          ; $703a: $4a
	ld d, c                                          ; $703b: $51
	ld c, h                                          ; $703c: $4c
	ld c, b                                          ; $703d: $48
	and b                                            ; $703e: $a0

jr_095_703f:
	cpl                                              ; $703f: $2f

jr_095_7040:
	ld b, e                                          ; $7040: $43
	db $ec                                           ; $7041: $ec
	rst SubAFromDE                                          ; $7042: $df
	ld l, h                                          ; $7043: $6c
	dec a                                            ; $7044: $3d
	jr c, jr_095_708e                                ; $7045: $38 $47

	inc de                                           ; $7047: $13
	ldh a, [$8a]                                     ; $7048: $f0 $8a
	ldh a, [rHDMA2]                                  ; $704a: $f0 $52
	jr c, jr_095_703f                                ; $704c: $38 $f1

	ld b, [hl]                                       ; $704e: $46
	ld a, [hl-]                                      ; $704f: $3a
	ld d, b                                          ; $7050: $50
	xor h                                            ; $7051: $ac
	jr c, @-$7e                                      ; $7052: $38 $80

	ld c, d                                          ; $7054: $4a
	ld c, a                                          ; $7055: $4f
	ldh a, [$0b]                                     ; $7056: $f0 $0b
	pop af                                           ; $7058: $f1
	ld [hl], c                                       ; $7059: $71
	dec sp                                           ; $705a: $3b
	ld h, c                                          ; $705b: $61
	ld d, [hl]                                       ; $705c: $56
	add hl, sp                                       ; $705d: $39
	ld b, l                                          ; $705e: $45
	and b                                            ; $705f: $a0
	inc a                                            ; $7060: $3c
	inc [hl]                                         ; $7061: $34
	ldh a, [$8a]                                     ; $7062: $f0 $8a
	ldh a, [rHDMA2]                                  ; $7064: $f0 $52
	jr c, @+$46                                      ; $7066: $38 $44

	ld a, [hl-]                                      ; $7068: $3a
	ld b, c                                          ; $7069: $41
	ccf                                              ; $706a: $3f
	ld c, b                                          ; $706b: $48

jr_095_706c:
	xor h                                            ; $706c: $ac
	ld b, b                                          ; $706d: $40
	inc [hl]                                         ; $706e: $34
	ld b, b                                          ; $706f: $40
	ld b, c                                          ; $7070: $41
	ld a, [hl-]                                      ; $7071: $3a
	sbc d                                            ; $7072: $9a
	xor l                                            ; $7073: $ad
	ldh a, [$29]                                     ; $7074: $f0 $29
	ld a, $38                                        ; $7076: $3e $38
	ld c, b                                          ; $7078: $48
	and b                                            ; $7079: $a0
	cpl                                              ; $707a: $2f
	ld b, e                                          ; $707b: $43
	ldh a, [$08]                                     ; $707c: $f0 $08
	ld d, b                                          ; $707e: $50
	inc [hl]                                         ; $707f: $34
	ldh a, [$0a]                                     ; $7080: $f0 $0a
	ld d, l                                          ; $7082: $55
	ldh a, [c]                                       ; $7083: $f2
	jr z, @-$0d                                      ; $7084: $28 $f1

	ld l, $f1                                        ; $7086: $2e $f1
	ld l, b                                          ; $7088: $68
	ld b, a                                          ; $7089: $47

jr_095_708a:
	inc de                                           ; $708a: $13
	ld h, a                                          ; $708b: $67
	inc a                                            ; $708c: $3c
	ld a, [hl-]                                      ; $708d: $3a

jr_095_708e:
	jr c, jr_095_70d9                                ; $708e: $38 $49

	inc de                                           ; $7090: $13
	di                                               ; $7091: $f3
	inc hl                                           ; $7092: $23
	ldh a, [hDisp0_LCDC]                                     ; $7093: $f0 $82
	ld d, e                                          ; $7095: $53
	ld [$a05d], a                                    ; $7096: $ea $5d $a0
	rst JumpTable                                          ; $7099: $c7
	ld c, d                                          ; $709a: $4a
	ld d, c                                          ; $709b: $51
	ld c, h                                          ; $709c: $4c
	xor b                                            ; $709d: $a8
	ldh a, [$0a]                                     ; $709e: $f0 $0a
	ld d, l                                          ; $70a0: $55
	ld [$a0a9], a                                    ; $70a1: $ea $a9 $a0
	cpl                                              ; $70a4: $2f
	ld [hl-], a                                      ; $70a5: $32
	ld b, [hl]                                       ; $70a6: $46
	ld [hl], h                                       ; $70a7: $74
	xor h                                            ; $70a8: $ac
	pop af                                           ; $70a9: $f1
	ld b, h                                          ; $70aa: $44
	ldh a, [$3e]                                     ; $70ab: $f0 $3e
	ld c, e                                          ; $70ad: $4b
	db $ed                                           ; $70ae: $ed
	ld l, a                                          ; $70af: $6f
	ld h, c                                          ; $70b0: $61
	jr c, jr_095_70eb                                ; $70b1: $38 $38

jr_095_70b3:
	ld a, [hl-]                                      ; $70b3: $3a
	ld [hl], h                                       ; $70b4: $74
	and e                                            ; $70b5: $a3
	cpl                                              ; $70b6: $2f
	ld [hl-], a                                      ; $70b7: $32
	ld b, c                                          ; $70b8: $41
	xor c                                            ; $70b9: $a9
	ld b, [hl]                                       ; $70ba: $46
	ld b, b                                          ; $70bb: $40
	ld d, h                                          ; $70bc: $54
	ld b, a                                          ; $70bd: $47
	jr c, jr_095_710e                                ; $70be: $38 $4e

	ld b, d                                          ; $70c0: $42
	ld c, e                                          ; $70c1: $4b
	xor h                                            ; $70c2: $ac
	db $ec                                           ; $70c3: $ec
	ldh [$ec], a                                     ; $70c4: $e0 $ec
	ret c                                            ; $70c6: $d8

	inc a                                            ; $70c7: $3c
	and e                                            ; $70c8: $a3
	ld c, e                                          ; $70c9: $4b
	ld [hl], h                                       ; $70ca: $74
	ld c, b                                          ; $70cb: $48
	and b                                            ; $70cc: $a0
	cpl                                              ; $70cd: $2f
	ld b, e                                          ; $70ce: $43
	db $eb                                           ; $70cf: $eb
	rst FarCall                                          ; $70d0: $f7
	db $ec                                           ; $70d1: $ec
	ldh [$a8], a                                     ; $70d2: $e0 $a8
	dec a                                            ; $70d4: $3d
	ld [hl], c                                       ; $70d5: $71
	ldh a, [c]                                       ; $70d6: $f2
	ld c, e                                          ; $70d7: $4b
	ld a, [hl-]                                      ; $70d8: $3a

jr_095_70d9:
	ld b, c                                          ; $70d9: $41
	ccf                                              ; $70da: $3f
	add b                                            ; $70db: $80
	jr c, jr_095_711d                                ; $70dc: $38 $3f

	and b                                            ; $70de: $a0
	ld b, [hl]                                       ; $70df: $46
	dec sp                                           ; $70e0: $3b
	inc [hl]                                         ; $70e1: $34
	ld d, $35                                        ; $70e2: $16 $35
	rla                                              ; $70e4: $17
	ldh a, [$64]                                     ; $70e5: $f0 $64
	ld a, [hl-]                                      ; $70e7: $3a
	ld c, c                                          ; $70e8: $49
	ld d, h                                          ; $70e9: $54
	ld e, a                                          ; $70ea: $5f

jr_095_70eb:
	inc de                                           ; $70eb: $13
	ld [hl], d                                       ; $70ec: $72
	ld d, b                                          ; $70ed: $50
	ld c, l                                          ; $70ee: $4d
	ld h, c                                          ; $70ef: $61
	ld d, [hl]                                       ; $70f0: $56
	dec sp                                           ; $70f1: $3b
	ldh [$a0], a                                     ; $70f2: $e0 $a0
	cpl                                              ; $70f4: $2f

jr_095_70f5:
	ld b, e                                          ; $70f5: $43
	sbc $34                                          ; $70f6: $de $34
	db $eb                                           ; $70f8: $eb
	rst FarCall                                          ; $70f9: $f7
	xor c                                            ; $70fa: $a9
	db $ec                                           ; $70fb: $ec
	ldh [$50], a                                     ; $70fc: $e0 $50
	ld a, $55                                        ; $70fe: $3e $55
	ld a, [hl-]                                      ; $7100: $3a
	jr c, jr_095_7148                                ; $7101: $38 $45

	and b                                            ; $7103: $a0
	ld d, b                                          ; $7104: $50
	ld a, $55                                        ; $7105: $3e $55
	ld a, [hl-]                                      ; $7107: $3a
	jr c, jr_095_708a                                ; $7108: $38 $80

	jr c, jr_095_7156                                ; $710a: $38 $4a

	ld b, h                                          ; $710c: $44
	inc a                                            ; $710d: $3c

jr_095_710e:
	ld d, b                                          ; $710e: $50
	inc de                                           ; $710f: $13
	add d                                            ; $7110: $82
	add hl, sp                                       ; $7111: $39
	ld e, l                                          ; $7112: $5d
	ld e, d                                          ; $7113: $5a
	xor l                                            ; $7114: $ad
	ldh a, [$31]                                     ; $7115: $f0 $31
	ld c, e                                          ; $7117: $4b
	inc [hl]                                         ; $7118: $34
	db $ec                                           ; $7119: $ec
	jr nc, jr_095_7156                               ; $711a: $30 $3a

	ld b, d                                          ; $711c: $42

jr_095_711d:
	ld b, l                                          ; $711d: $45
	and b                                            ; $711e: $a0
	cpl                                              ; $711f: $2f
	ld b, e                                          ; $7120: $43
	db $ec                                           ; $7121: $ec
	jr nc, jr_095_715f                               ; $7122: $30 $3b

	ccf                                              ; $7124: $3f
	add d                                            ; $7125: $82
	add hl, sp                                       ; $7126: $39
	ld c, c                                          ; $7127: $49
	and c                                            ; $7128: $a1
	db $eb                                           ; $7129: $eb
	db $f4                                           ; $712a: $f4
	xor h                                            ; $712b: $ac
	ld [$536b], a                                    ; $712c: $ea $6b $53
	inc de                                           ; $712f: $13
	ld [hl], a                                       ; $7130: $77
	jr c, jr_095_70b3                                ; $7131: $38 $80

	inc a                                            ; $7133: $3c
	ld a, [hl-]                                      ; $7134: $3a
	jr c, jr_095_7179                                ; $7135: $38 $42

	ld b, l                                          ; $7137: $45
	and b                                            ; $7138: $a0
	cpl                                              ; $7139: $2f
	ld b, e                                          ; $713a: $43
	halt                                             ; $713b: $76
	ld c, d                                          ; $713c: $4a
	ld b, l                                          ; $713d: $45
	inc a                                            ; $713e: $3c
	dec sp                                           ; $713f: $3b
	dec a                                            ; $7140: $3d
	ld d, b                                          ; $7141: $50
	xor h                                            ; $7142: $ac
	xor $06                                          ; $7143: $ee $06
	ld b, a                                          ; $7145: $47
	ldh a, [$a4]                                     ; $7146: $f0 $a4

jr_095_7148:
	ld e, [hl]                                       ; $7148: $5e
	ld c, [hl]                                       ; $7149: $4e
	ld e, l                                          ; $714a: $5d
	ld e, d                                          ; $714b: $5a

jr_095_714c:
	ld c, b                                          ; $714c: $48
	and b                                            ; $714d: $a0
	ld b, [hl]                                       ; $714e: $46
	ld d, a                                          ; $714f: $57
	ld d, e                                          ; $7150: $53
	ld c, c                                          ; $7151: $49
	add hl, sp                                       ; $7152: $39
	xor b                                            ; $7153: $a8
	ld c, d                                          ; $7154: $4a
	ld c, a                                          ; $7155: $4f

jr_095_7156:
	xor h                                            ; $7156: $ac
	ld l, d                                          ; $7157: $6a
	ld c, e                                          ; $7158: $4b
	xor $08                                          ; $7159: $ee $08
	ld c, d                                          ; $715b: $4a
	ldh a, [$a4]                                     ; $715c: $f0 $a4
	ld e, [hl]                                       ; $715e: $5e

jr_095_715f:
	dec a                                            ; $715f: $3d
	jr c, jr_095_71a4                                ; $7160: $38 $42

	and b                                            ; $7162: $a0
	cpl                                              ; $7163: $2f
	ld b, e                                          ; $7164: $43
	ld b, b                                          ; $7165: $40
	add hl, sp                                       ; $7166: $39
	inc [hl]                                         ; $7167: $34
	ld a, [hl-]                                      ; $7168: $3a
	ld d, b                                          ; $7169: $50
	ld h, a                                          ; $716a: $67
	ld d, l                                          ; $716b: $55
	ld b, l                                          ; $716c: $45
	xor b                                            ; $716d: $a8
	ld [$536b], a                                    ; $716e: $ea $6b $53
	inc de                                           ; $7171: $13
	ld [hl], a                                       ; $7172: $77
	jr c, jr_095_70f5                                ; $7173: $38 $80

	ld d, l                                          ; $7175: $55
	ld c, c                                          ; $7176: $49
	jr c, jr_095_71b1                                ; $7177: $38 $38

jr_095_7179:
	ld c, h                                          ; $7179: $4c
	and b                                            ; $717a: $a0
	call c, $f1a8                                    ; $717b: $dc $a8 $f1
	sub $62                                          ; $717e: $d6 $62
	pop af                                           ; $7180: $f1
	sub h                                            ; $7181: $94
	ld l, [hl]                                       ; $7182: $6e
	ld a, $3a                                        ; $7183: $3e $3a
	ld d, e                                          ; $7185: $53
	ld d, b                                          ; $7186: $50
	xor h                                            ; $7187: $ac
	ldh a, [$a4]                                     ; $7188: $f0 $a4
	ld e, [hl]                                       ; $718a: $5e
	ccf                                              ; $718b: $3f
	ld l, h                                          ; $718c: $6c
	ld c, [hl]                                       ; $718d: $4e
	ld h, e                                          ; $718e: $63
	and b                                            ; $718f: $a0
	cpl                                              ; $7190: $2f
	ld [hl-], a                                      ; $7191: $32
	db $ec                                           ; $7192: $ec
	ldh [hDisp0_OBP1], a                                     ; $7193: $e0 $87
	ldh a, [$5b]                                     ; $7195: $f0 $5b
	ldh a, [$5e]                                     ; $7197: $f0 $5e
	inc de                                           ; $7199: $13
	inc a                                            ; $719a: $3c
	ld a, [hl-]                                      ; $719b: $3a
	xor l                                            ; $719c: $ad
	pop af                                           ; $719d: $f1
	dec a                                            ; $719e: $3d
	ld d, h                                          ; $719f: $54
	add hl, sp                                       ; $71a0: $39
	ld c, d                                          ; $71a1: $4a
	inc [hl]                                         ; $71a2: $34
	ld l, e                                          ; $71a3: $6b

jr_095_71a4:
	inc a                                            ; $71a4: $3c
	inc de                                           ; $71a5: $13
	add b                                            ; $71a6: $80
	ldh a, [$fe]                                     ; $71a7: $f0 $fe
	ld l, [hl]                                       ; $71a9: $6e
	jr c, jr_095_71eb                                ; $71aa: $38 $3f

	ld c, [hl]                                       ; $71ac: $4e
	sub a                                            ; $71ad: $97
	and e                                            ; $71ae: $a3
	ld b, [hl]                                       ; $71af: $46
	ld [hl], h                                       ; $71b0: $74

jr_095_71b1:
	ld c, b                                          ; $71b1: $48
	inc [hl]                                         ; $71b2: $34
	rla                                              ; $71b3: $17
	ldh a, [c]                                       ; $71b4: $f2
	dec [hl]                                         ; $71b5: $35
	di                                               ; $71b6: $f3
	add hl, sp                                       ; $71b7: $39
	db $ed                                           ; $71b8: $ed
	sbc b                                            ; $71b9: $98
	push af                                          ; $71ba: $f5
	ld hl, $3cf2                                     ; $71bb: $21 $f2 $3c
	ld b, d                                          ; $71be: $42
	db $ed                                           ; $71bf: $ed
	ld a, l                                          ; $71c0: $7d
	ldh a, [rWY]                                     ; $71c1: $f0 $4a
	ldh a, [$c4]                                     ; $71c3: $f0 $c4
	ldh a, [$3d]                                     ; $71c5: $f0 $3d
	ld d, e                                          ; $71c7: $53
	xor h                                            ; $71c8: $ac
	ld [hl], a                                       ; $71c9: $77
	jr c, jr_095_714c                                ; $71ca: $38 $80

	inc a                                            ; $71cc: $3c
	ld a, [hl-]                                      ; $71cd: $3a
	jr c, jr_095_7233                                ; $71ce: $38 $63

	and b                                            ; $71d0: $a0
	cpl                                              ; $71d1: $2f
	ld b, e                                          ; $71d2: $43
	xor $10                                          ; $71d3: $ee $10
	xor $10                                          ; $71d5: $ee $10
	dec [hl]                                         ; $71d7: $35
	rla                                              ; $71d8: $17
	ld [hl-], a                                      ; $71d9: $32
	ld l, e                                          ; $71da: $6b
	ccf                                              ; $71db: $3f
	ld c, a                                          ; $71dc: $4f
	ld b, d                                          ; $71dd: $42
	ld h, d                                          ; $71de: $62
	ldh a, [$a4]                                     ; $71df: $f0 $a4
	ld e, [hl]                                       ; $71e1: $5e
	ccf                                              ; $71e2: $3f
	ld c, [hl]                                       ; $71e3: $4e
	ld b, c                                          ; $71e4: $41
	ld b, h                                          ; $71e5: $44
	xor h                                            ; $71e6: $ac
	xor $1e                                          ; $71e7: $ee $1e
	pop af                                           ; $71e9: $f1
	ld b, [hl]                                       ; $71ea: $46

jr_095_71eb:
	ld c, e                                          ; $71eb: $4b
	ld c, b                                          ; $71ec: $48
	and e                                            ; $71ed: $a3
	cpl                                              ; $71ee: $2f
	ld [hl-], a                                      ; $71ef: $32
	db $ed                                           ; $71f0: $ed
	sbc l                                            ; $71f1: $9d
	ld b, d                                          ; $71f2: $42
	db $ed                                           ; $71f3: $ed
	ldh a, [c]                                       ; $71f4: $f2
	ld c, e                                          ; $71f5: $4b
	inc de                                           ; $71f6: $13
	db $ed                                           ; $71f7: $ed
	xor [hl]                                         ; $71f8: $ae
	ld d, l                                          ; $71f9: $55
	ld e, b                                          ; $71fa: $58
	jr c, jr_095_7237                                ; $71fb: $38 $3a

	xor b                                            ; $71fd: $a8
	ld b, c                                          ; $71fe: $41
	xor c                                            ; $71ff: $a9
	add h                                            ; $7200: $84
	ld b, d                                          ; $7201: $42
	db $ed                                           ; $7202: $ed
	call nc, Call_095_5153                           ; $7203: $d4 $53 $51
	ld c, [hl]                                       ; $7206: $4e
	ld c, b                                          ; $7207: $48
	and e                                            ; $7208: $a3
	ld b, [hl]                                       ; $7209: $46
	dec sp                                           ; $720a: $3b
	ld c, b                                          ; $720b: $48
	and b                                            ; $720c: $a0
	cpl                                              ; $720d: $2f
	ld b, e                                          ; $720e: $43
	ld b, [hl]                                       ; $720f: $46
	ld c, l                                          ; $7210: $4d
	inc [hl]                                         ; $7211: $34
	db $ec                                           ; $7212: $ec
	pop hl                                           ; $7213: $e1
	xor b                                            ; $7214: $a8
	ld l, e                                          ; $7215: $6b
	ld l, [hl]                                       ; $7216: $6e
	dec sp                                           ; $7217: $3b
	ccf                                              ; $7218: $3f
	ld c, [hl]                                       ; $7219: $4e
	ld b, d                                          ; $721a: $42
	inc [hl]                                         ; $721b: $34
	ld d, h                                          ; $721c: $54
	ld b, c                                          ; $721d: $41
	ld a, [hl-]                                      ; $721e: $3a
	ldh a, [$28]                                     ; $721f: $f0 $28
	ld c, d                                          ; $7221: $4a
	and c                                            ; $7222: $a1
	ld e, [hl]                                       ; $7223: $5e
	dec sp                                           ; $7224: $3b
	xor c                                            ; $7225: $a9
	ld b, [hl]                                       ; $7226: $46
	dec sp                                           ; $7227: $3b
	inc [hl]                                         ; $7228: $34
	ld b, [hl]                                       ; $7229: $46
	xor h                                            ; $722a: $ac
	ret                                              ; $722b: $c9


	ld c, h                                          ; $722c: $4c
	and b                                            ; $722d: $a0
	cpl                                              ; $722e: $2f
	ld b, e                                          ; $722f: $43
	ld b, b                                          ; $7230: $40
	ld b, d                                          ; $7231: $42
	inc a                                            ; $7232: $3c

jr_095_7233:
	dec sp                                           ; $7233: $3b
	ld d, h                                          ; $7234: $54
	inc a                                            ; $7235: $3c
	ld d, b                                          ; $7236: $50

jr_095_7237:
	ld d, c                                          ; $7237: $51
	ld c, [hl]                                       ; $7238: $4e
	ld c, c                                          ; $7239: $49
	xor h                                            ; $723a: $ac

jr_095_723b:
	db $ed                                           ; $723b: $ed
	ld a, d                                          ; $723c: $7a
	ld b, d                                          ; $723d: $42
	di                                               ; $723e: $f3
	inc hl                                           ; $723f: $23
	ldh a, [hDisp0_LCDC]                                     ; $7240: $f0 $82
	ldh a, [rAUD2HIGH]                               ; $7242: $f0 $19
	ld b, h                                          ; $7244: $44
	ld a, [hl-]                                      ; $7245: $3a
	xor b                                            ; $7246: $a8
	sbc h                                            ; $7247: $9c
	ld a, e                                          ; $7248: $7b
	ld d, a                                          ; $7249: $57
	inc [hl]                                         ; $724a: $34
	ldh a, [rAUD4POLY]                               ; $724b: $f0 $22
	ldh a, [$6e]                                     ; $724d: $f0 $6e
	dec sp                                           ; $724f: $3b
	ccf                                              ; $7250: $3f
	ld c, [hl]                                       ; $7251: $4e
	ld c, h                                          ; $7252: $4c
	and b                                            ; $7253: $a0
	db $ed                                           ; $7254: $ed
	sbc [hl]                                         ; $7255: $9e
	inc [hl]                                         ; $7256: $34
	db $ed                                           ; $7257: $ed
	sbc [hl]                                         ; $7258: $9e
	xor b                                            ; $7259: $a8
	ld b, b                                          ; $725a: $40
	ld b, c                                          ; $725b: $41
	ld a, [hl-]                                      ; $725c: $3a
	ld d, h                                          ; $725d: $54
	ld c, c                                          ; $725e: $49
	ld a, [hl-]                                      ; $725f: $3a
	jr c, jr_095_72c5                                ; $7260: $38 $63

	ld b, l                                          ; $7262: $45
	xor b                                            ; $7263: $a8
	ldh a, [$f3]                                     ; $7264: $f0 $f3
	ld c, l                                          ; $7266: $4d
	ccf                                              ; $7267: $3f
	ldh a, [hDisp1_LCDC]                                     ; $7268: $f0 $8f
	ld b, c                                          ; $726a: $41
	ld c, d                                          ; $726b: $4a
	dec a                                            ; $726c: $3d
	ld b, h                                          ; $726d: $44
	ld e, l                                          ; $726e: $5d
	ld b, l                                          ; $726f: $45
	and b                                            ; $7270: $a0
	cpl                                              ; $7271: $2f
	ld b, e                                          ; $7272: $43
	ld b, h                                          ; $7273: $44
	dec sp                                           ; $7274: $3b
	dec a                                            ; $7275: $3d
	ld d, b                                          ; $7276: $50
	xor h                                            ; $7277: $ac
	ldh a, [$34]                                     ; $7278: $f0 $34
	ld b, a                                          ; $727a: $47
	ld d, h                                          ; $727b: $54
	ld b, c                                          ; $727c: $41
	ld a, [hl-]                                      ; $727d: $3a
	db $ed                                           ; $727e: $ed
	sbc l                                            ; $727f: $9d
	ldh a, [$df]                                     ; $7280: $f0 $df
	ld b, d                                          ; $7282: $42
	di                                               ; $7283: $f3
	xor h                                            ; $7284: $ac
	ld c, d                                          ; $7285: $4a
	xor h                                            ; $7286: $ac
	ldh a, [hDisp1_LCDC]                                     ; $7287: $f0 $8f
	ld d, d                                          ; $7289: $52
	ld a, [hl-]                                      ; $728a: $3a
	ld d, l                                          ; $728b: $55
	ccf                                              ; $728c: $3f
	ld c, a                                          ; $728d: $4f
	jr c, jr_095_72c8                                ; $728e: $38 $38

	ld e, e                                          ; $7290: $5b
	ld d, [hl]                                       ; $7291: $56
	ld b, c                                          ; $7292: $41
	and b                                            ; $7293: $a0
	ldh a, [$08]                                     ; $7294: $f0 $08
	inc [hl]                                         ; $7296: $34
	ldh a, [$08]                                     ; $7297: $f0 $08
	ld d, b                                          ; $7299: $50
	xor b                                            ; $729a: $a8
	ldh a, [$c3]                                     ; $729b: $f0 $c3
	di                                               ; $729d: $f3
	ld d, h                                          ; $729e: $54
	ld h, l                                          ; $729f: $65
	push af                                          ; $72a0: $f5
	jr nz, jr_095_72e5                               ; $72a1: $20 $42

	db $ed                                           ; $72a3: $ed
	sbc b                                            ; $72a4: $98
	ld c, d                                          ; $72a5: $4a
	xor h                                            ; $72a6: $ac
	db $ec                                           ; $72a7: $ec
	ld [hl], h                                       ; $72a8: $74
	ld c, e                                          ; $72a9: $4b
	pop af                                           ; $72aa: $f1
	ld de, $65f0                                     ; $72ab: $11 $f0 $65
	ld b, a                                          ; $72ae: $47
	ld c, h                                          ; $72af: $4c
	ld c, b                                          ; $72b0: $48
	and b                                            ; $72b1: $a0
	cpl                                              ; $72b2: $2f
	ld b, e                                          ; $72b3: $43
	ldh a, [$8e]                                     ; $72b4: $f0 $8e
	ld e, c                                          ; $72b6: $59
	ld h, l                                          ; $72b7: $65
	xor b                                            ; $72b8: $a8
	jr c, jr_095_723b                                ; $72b9: $38 $80

	ld b, d                                          ; $72bb: $42
	ldh a, [$2a]                                     ; $72bc: $f0 $2a
	ld b, a                                          ; $72be: $47
	ld b, b                                          ; $72bf: $40
	ld b, c                                          ; $72c0: $41
	ld a, [hl-]                                      ; $72c1: $3a
	ld b, a                                          ; $72c2: $47
	inc de                                           ; $72c3: $13
	pop af                                           ; $72c4: $f1

jr_095_72c5:
	ld [$59f2], a                                    ; $72c5: $ea $f2 $59

jr_095_72c8:
	ld b, a                                          ; $72c8: $47
	ld a, [hl-]                                      ; $72c9: $3a
	dec sp                                           ; $72ca: $3b
	dec a                                            ; $72cb: $3d
	ld b, d                                          ; $72cc: $42
	and b                                            ; $72cd: $a0
	ld e, [hl]                                       ; $72ce: $5e
	inc [hl]                                         ; $72cf: $34
	pop af                                           ; $72d0: $f1
	ld b, b                                          ; $72d1: $40
	ld e, c                                          ; $72d2: $59
	ld l, c                                          ; $72d3: $69
	xor l                                            ; $72d4: $ad
	add b                                            ; $72d5: $80
	inc [hl]                                         ; $72d6: $34
	add b                                            ; $72d7: $80
	jr c, @-$12                                      ; $72d8: $38 $ec

	ld sp, hl                                        ; $72da: $f9

jr_095_72db:
	inc a                                            ; $72db: $3c
	ld d, b                                          ; $72dc: $50
	ld b, l                                          ; $72dd: $45
	and b                                            ; $72de: $a0
	cpl                                              ; $72df: $2f
	ld b, e                                          ; $72e0: $43
	db $eb                                           ; $72e1: $eb
	ld d, c                                          ; $72e2: $51
	xor h                                            ; $72e3: $ac
	ld e, b                                          ; $72e4: $58

jr_095_72e5:
	dec sp                                           ; $72e5: $3b
	ld e, h                                          ; $72e6: $5c
	db $ed                                           ; $72e7: $ed
	or l                                             ; $72e8: $b5
	ld d, e                                          ; $72e9: $53
	xor h                                            ; $72ea: $ac
	db $ec                                           ; $72eb: $ec
	pop hl                                           ; $72ec: $e1
	ld h, d                                          ; $72ed: $62
	pop af                                           ; $72ee: $f1
	ld bc, $4a41                                     ; $72ef: $01 $41 $4a
	dec a                                            ; $72f2: $3d
	ld b, l                                          ; $72f3: $45
	and b                                            ; $72f4: $a0
	ld e, [hl]                                       ; $72f5: $5e
	dec sp                                           ; $72f6: $3b
	inc [hl]                                         ; $72f7: $34
	pop af                                           ; $72f8: $f1

jr_095_72f9:
	ld a, [hl]                                       ; $72f9: $7e
	xor b                                            ; $72fa: $a8
	ld a, l                                          ; $72fb: $7d
	ld [hl], e                                       ; $72fc: $73
	ldh a, [$f2]                                     ; $72fd: $f0 $f2
	ldh a, [$3d]                                     ; $72ff: $f0 $3d
	inc [hl]                                         ; $7301: $34
	ldh a, [rWY]                                     ; $7302: $f0 $4a
	ld h, l                                          ; $7304: $65
	ldh a, [$7e]                                     ; $7305: $f0 $7e
	ldh a, [$7c]                                     ; $7307: $f0 $7c
	ldh a, [rSC]                                     ; $7309: $f0 $02
	add e                                            ; $730b: $83
	and b                                            ; $730c: $a0
	cpl                                              ; $730d: $2f
	ld b, e                                          ; $730e: $43
	ld c, c                                          ; $730f: $49
	add d                                            ; $7310: $82
	add hl, sp                                       ; $7311: $39
	ld b, d                                          ; $7312: $42
	ld c, e                                          ; $7313: $4b
	db $ed                                           ; $7314: $ed
	ld a, h                                          ; $7315: $7c
	ld c, d                                          ; $7316: $4a
	xor h                                            ; $7317: $ac
	di                                               ; $7318: $f3
	xor [hl]                                         ; $7319: $ae
	dec sp                                           ; $731a: $3b
	dec a                                            ; $731b: $3d
	ld c, c                                          ; $731c: $49
	jr c, @+$3b                                      ; $731d: $38 $39

	sbc d                                            ; $731f: $9a
	ld c, e                                          ; $7320: $4b
	xor h                                            ; $7321: $ac
	db $ec                                           ; $7322: $ec
	reti                                             ; $7323: $d9


	ld e, b                                          ; $7324: $58
	pop af                                           ; $7325: $f1
	halt                                             ; $7326: $76
	ld d, a                                          ; $7327: $57
	ld b, h                                          ; $7328: $44
	ld c, h                                          ; $7329: $4c
	and b                                            ; $732a: $a0
	ld b, [hl]                                       ; $732b: $46
	dec sp                                           ; $732c: $3b
	xor l                                            ; $732d: $ad
	ld h, h                                          ; $732e: $64
	ldh a, [$c8]                                     ; $732f: $f0 $c8
	jr c, jr_095_72db                                ; $7331: $38 $a8

	db $ed                                           ; $7333: $ed
	or l                                             ; $7334: $b5
	ld b, a                                          ; $7335: $47
	ld c, e                                          ; $7336: $4b
	db $f4                                           ; $7337: $f4
	ld h, h                                          ; $7338: $64
	dec sp                                           ; $7339: $3b
	ccf                                              ; $733a: $3f
	ccf                                              ; $733b: $3f
	and b                                            ; $733c: $a0
	cpl                                              ; $733d: $2f
	ld b, e                                          ; $733e: $43
	ld e, b                                          ; $733f: $58
	ld e, c                                          ; $7340: $59
	ccf                                              ; $7341: $3f
	xor h                                            ; $7342: $ac
	db $eb                                           ; $7343: $eb
	ld e, c                                          ; $7344: $59
	inc a                                            ; $7345: $3c
	ld a, [hl-]                                      ; $7346: $3a
	and b                                            ; $7347: $a0
	ld de, $6e6b                                     ; $7348: $11 $6b $6e
	dec sp                                           ; $734b: $3b
	ccf                                              ; $734c: $3f
	ld c, [hl]                                       ; $734d: $4e
	xor b                                            ; $734e: $a8
	ldh a, [$0a]                                     ; $734f: $f0 $0a
	ld d, l                                          ; $7351: $55
	db $ec                                           ; $7352: $ec
	sbc a                                            ; $7353: $9f
	dec sp                                           ; $7354: $3b
	ccf                                              ; $7355: $3f
	ld a, b                                          ; $7356: $78
	jr c, jr_095_72f9                                ; $7357: $38 $a0

	ld de, $6ba8                                     ; $7359: $11 $a8 $6b
	ld l, [hl]                                       ; $735c: $6e
	dec sp                                           ; $735d: $3b
	ccf                                              ; $735e: $3f
	ld c, [hl]                                       ; $735f: $4e
	ld b, c                                          ; $7360: $41
	ld b, h                                          ; $7361: $44
	ld b, l                                          ; $7362: $45
	xor b                                            ; $7363: $a8
	ldh a, [$0a]                                     ; $7364: $f0 $0a
	ld d, l                                          ; $7366: $55
	db $ec                                           ; $7367: $ec
	sbc a                                            ; $7368: $9f
	dec sp                                           ; $7369: $3b
	ccf                                              ; $736a: $3f
	ld a, b                                          ; $736b: $78
	jr c, jr_095_73b3                                ; $736c: $38 $45

	and b                                            ; $736e: $a0
	ldh a, [$08]                                     ; $736f: $f0 $08
	inc [hl]                                         ; $7371: $34
	ldh a, [$08]                                     ; $7372: $f0 $08
	ld d, b                                          ; $7374: $50
	xor h                                            ; $7375: $ac
	pop af                                           ; $7376: $f1
	ld bc, $4a41                                     ; $7377: $01 $41 $4a
	ld c, [hl]                                       ; $737a: $4e
	ld h, e                                          ; $737b: $63
	ld b, l                                          ; $737c: $45
	and b                                            ; $737d: $a0
	cpl                                              ; $737e: $2f
	ld b, e                                          ; $737f: $43
	ldh a, [$2b]                                     ; $7380: $f0 $2b
	pop af                                           ; $7382: $f1
	inc sp                                           ; $7383: $33
	ld [hl], e                                       ; $7384: $73
	inc [hl]                                         ; $7385: $34
	db $ed                                           ; $7386: $ed
	or l                                             ; $7387: $b5
	ld b, a                                          ; $7388: $47
	ld c, e                                          ; $7389: $4b
	inc de                                           ; $738a: $13
	db $f4                                           ; $738b: $f4
	ld h, h                                          ; $738c: $64
	dec sp                                           ; $738d: $3b
	ccf                                              ; $738e: $3f
	ccf                                              ; $738f: $3f
	ld l, [hl]                                       ; $7390: $6e
	ld c, [hl]                                       ; $7391: $4e
	ld b, l                                          ; $7392: $45
	xor b                                            ; $7393: $a8
	db $eb                                           ; $7394: $eb
	db $fd                                           ; $7395: $fd
	and b                                            ; $7396: $a0
	db $eb                                           ; $7397: $eb
	ld e, l                                          ; $7398: $5d
	xor b                                            ; $7399: $a8
	ld b, [hl]                                       ; $739a: $46
	ld d, a                                          ; $739b: $57
	ld d, e                                          ; $739c: $53
	ld c, c                                          ; $739d: $49
	add hl, sp                                       ; $739e: $39
	xor h                                            ; $739f: $ac
	db $ed                                           ; $73a0: $ed
	and e                                            ; $73a1: $a3
	ld d, c                                          ; $73a2: $51
	ld c, [hl]                                       ; $73a3: $4e
	ld h, e                                          ; $73a4: $63
	and b                                            ; $73a5: $a0
	cpl                                              ; $73a6: $2f
	ld b, e                                          ; $73a7: $43
	ld b, [hl]                                       ; $73a8: $46
	ld c, l                                          ; $73a9: $4d
	xor c                                            ; $73aa: $a9
	ld l, e                                          ; $73ab: $6b
	ld b, h                                          ; $73ac: $44
	xor $1e                                          ; $73ad: $ee $1e
	add h                                            ; $73af: $84
	ld b, h                                          ; $73b0: $44
	inc a                                            ; $73b1: $3c
	ld d, a                                          ; $73b2: $57

jr_095_73b3:
	ld c, e                                          ; $73b3: $4b
	ld c, b                                          ; $73b4: $48
	and b                                            ; $73b5: $a0
	xor $14                                          ; $73b6: $ee $14
	inc [hl]                                         ; $73b8: $34
	ld h, h                                          ; $73b9: $64
	ld c, e                                          ; $73ba: $4b
	ld b, l                                          ; $73bb: $45
	add hl, sp                                       ; $73bc: $39
	xor b                                            ; $73bd: $a8
	ld d, $a0                                        ; $73be: $16 $a0
	cpl                                              ; $73c0: $2f
	ld b, e                                          ; $73c1: $43
	db $ed                                           ; $73c2: $ed
	ld d, e                                          ; $73c3: $53
	ld b, h                                          ; $73c4: $44
	dec sp                                           ; $73c5: $3b
	dec a                                            ; $73c6: $3d
	ld b, d                                          ; $73c7: $42
	inc a                                            ; $73c8: $3c
	xor h                                            ; $73c9: $ac
	ldh a, [$e9]                                     ; $73ca: $f0 $e9
	ldh a, [$5d]                                     ; $73cc: $f0 $5d
	ld h, e                                          ; $73ce: $63
	ld d, b                                          ; $73cf: $50
	sbc h                                            ; $73d0: $9c
	inc [hl]                                         ; $73d1: $34
	ld c, a                                          ; $73d2: $4f
	ccf                                              ; $73d3: $3f
	ld c, a                                          ; $73d4: $4f
	ccf                                              ; $73d5: $3f
	ld b, h                                          ; $73d6: $44
	ld c, h                                          ; $73d7: $4c
	and b                                            ; $73d8: $a0
	ld l, a                                          ; $73d9: $6f
	ld b, d                                          ; $73da: $42
	jr c, jr_095_742b                                ; $73db: $38 $4e

	ld c, c                                          ; $73dd: $49
	ld d, h                                          ; $73de: $54
	ld e, a                                          ; $73df: $5f
	ld b, a                                          ; $73e0: $47
	ld c, e                                          ; $73e1: $4b
	xor h                                            ; $73e2: $ac
	ldh a, [$ab]                                     ; $73e3: $f0 $ab
	ld b, d                                          ; $73e5: $42
	add h                                            ; $73e6: $84
	ld d, e                                          ; $73e7: $53
	ldh a, [rAUDTERM]                                ; $73e8: $f0 $25
	ld d, d                                          ; $73ea: $52
	dec sp                                           ; $73eb: $3b
	ccf                                              ; $73ec: $3f
	xor h                                            ; $73ed: $ac
	pop af                                           ; $73ee: $f1
	sbc $3b                                          ; $73ef: $de $3b
	ccf                                              ; $73f1: $3f
	ld a, $52                                        ; $73f2: $3e $52
	add hl, sp                                       ; $73f4: $39
	ld h, e                                          ; $73f5: $63
	and b                                            ; $73f6: $a0
	cpl                                              ; $73f7: $2f
	ld b, e                                          ; $73f8: $43
	ld b, b                                          ; $73f9: $40
	ld b, d                                          ; $73fa: $42
	ld h, e                                          ; $73fb: $63
	ld d, a                                          ; $73fc: $57
	ld b, a                                          ; $73fd: $47
	ld c, e                                          ; $73fe: $4b
	xor h                                            ; $73ff: $ac
	di                                               ; $7400: $f3
	dec e                                            ; $7401: $1d
	ldh a, [rTAC]                                    ; $7402: $f0 $07
	ld d, b                                          ; $7404: $50
	ld d, l                                          ; $7405: $55
	ld h, c                                          ; $7406: $61
	ld b, c                                          ; $7407: $41
	ld b, b                                          ; $7408: $40
	add hl, sp                                       ; $7409: $39
	ld b, h                                          ; $740a: $44
	ld c, h                                          ; $740b: $4c
	and b                                            ; $740c: $a0
	ld b, [hl]                                       ; $740d: $46
	inc [hl]                                         ; $740e: $34
	ld d, h                                          ; $740f: $54
	ld c, l                                          ; $7410: $4d
	ld c, e                                          ; $7411: $4b
	inc [hl]                                         ; $7412: $34
	ld l, h                                          ; $7413: $6c
	ld b, c                                          ; $7414: $41
	ld a, [hl-]                                      ; $7415: $3a
	ld d, e                                          ; $7416: $53
	inc de                                           ; $7417: $13
	ldh a, [rHDMA1]                                  ; $7418: $f0 $51
	dec sp                                           ; $741a: $3b
	ccf                                              ; $741b: $3f
	rst SubAFromDE                                          ; $741c: $df
	ld c, c                                          ; $741d: $49
	add d                                            ; $741e: $82
	add hl, sp                                       ; $741f: $39
	inc a                                            ; $7420: $3c
	ld d, b                                          ; $7421: $50
	xor h                                            ; $7422: $ac
	ld a, $3c                                        ; $7423: $3e $3c
	dec a                                            ; $7425: $3d
	ld a, [hl-]                                      ; $7426: $3a
	ld a, $47                                        ; $7427: $3e $47
	ld c, h                                          ; $7429: $4c
	ld c, b                                          ; $742a: $48

jr_095_742b:
	and b                                            ; $742b: $a0
	cpl                                              ; $742c: $2f
	ld b, e                                          ; $742d: $43
	ld b, b                                          ; $742e: $40
	add hl, sp                                       ; $742f: $39
	xor b                                            ; $7430: $a8
	ldh a, [rHDMA1]                                  ; $7431: $f0 $51
	dec a                                            ; $7433: $3d
	ld a, c                                          ; $7434: $79
	ccf                                              ; $7435: $3f
	ld c, [hl]                                       ; $7436: $4e
	ld b, d                                          ; $7437: $42
	inc a                                            ; $7438: $3c
	ld c, c                                          ; $7439: $49
	inc de                                           ; $743a: $13
	ld [hl], a                                       ; $743b: $77
	dec sp                                           ; $743c: $3b
	ld h, c                                          ; $743d: $61
	ld d, [hl]                                       ; $743e: $56
	dec sp                                           ; $743f: $3b
	dec a                                            ; $7440: $3d
	ld b, l                                          ; $7441: $45
	and b                                            ; $7442: $a0
	ld b, b                                          ; $7443: $40
	inc [hl]                                         ; $7444: $34
	ld b, b                                          ; $7445: $40
	ld b, c                                          ; $7446: $41
	ld a, [hl-]                                      ; $7447: $3a
	sbc d                                            ; $7448: $9a
	ld a, $3f                                        ; $7449: $3e $3f
	ld a, [hl-]                                      ; $744b: $3a
	jr c, jr_095_74b1                                ; $744c: $38 $63

	and b                                            ; $744e: $a0
	db $ed                                           ; $744f: $ed
	ld d, e                                          ; $7450: $53

jr_095_7451:
	inc [hl]                                         ; $7451: $34
	ld d, h                                          ; $7452: $54
	ld b, c                                          ; $7453: $41
	ld a, [hl-]                                      ; $7454: $3a
	ldh a, [$f8]                                     ; $7455: $f0 $f8
	ld c, c                                          ; $7457: $49
	inc de                                           ; $7458: $13
	ldh a, [rAUDVOL]                                 ; $7459: $f0 $24
	ld a, $3f                                        ; $745b: $3e $3f
	ld a, [hl-]                                      ; $745d: $3a
	jr c, jr_095_74aa                                ; $745e: $38 $4a

	inc de                                           ; $7460: $13
	ldh a, [$0a]                                     ; $7461: $f0 $0a
	ld d, l                                          ; $7463: $55
	ld [$a0a9], a                                    ; $7464: $ea $a9 $a0
	ld b, b                                          ; $7467: $40
	add hl, sp                                       ; $7468: $39
	ld c, d                                          ; $7469: $4a
	ld d, c                                          ; $746a: $51
	ld b, l                                          ; $746b: $45
	xor b                                            ; $746c: $a8
	db $ed                                           ; $746d: $ed
	ld d, e                                          ; $746e: $53
	and b                                            ; $746f: $a0
	rst JumpTable                                          ; $7470: $c7
	ld c, h                                          ; $7471: $4c
	xor b                                            ; $7472: $a8
	ldh a, [$5f]                                     ; $7473: $f0 $5f
	ldh a, [$d7]                                     ; $7475: $f0 $d7
	ld b, a                                          ; $7477: $47
	add d                                            ; $7478: $82
	dec sp                                           ; $7479: $3b
	ccf                                              ; $747a: $3f
	ld h, h                                          ; $747b: $64
	ld d, l                                          ; $747c: $55
	ld e, l                                          ; $747d: $5d
	ld e, d                                          ; $747e: $5a
	xor h                                            ; $747f: $ac
	ld l, a                                          ; $7480: $6f
	ld d, e                                          ; $7481: $53
	inc [hl]                                         ; $7482: $34
	ldh a, [rHDMA1]                                  ; $7483: $f0 $51
	dec a                                            ; $7485: $3d
	ld a, c                                          ; $7486: $79
	ccf                                              ; $7487: $3f
	ld c, [hl]                                       ; $7488: $4e
	pop af                                           ; $7489: $f1
	dec bc                                           ; $748a: $0b
	inc de                                           ; $748b: $13
	db $ec                                           ; $748c: $ec
	ret c                                            ; $748d: $d8

	ld h, e                                          ; $748e: $63
	ld b, l                                          ; $748f: $45
	and b                                            ; $7490: $a0
	cpl                                              ; $7491: $2f
	ld b, e                                          ; $7492: $43
	ld b, b                                          ; $7493: $40
	add hl, sp                                       ; $7494: $39
	xor b                                            ; $7495: $a8
	ld b, b                                          ; $7496: $40
	ld b, c                                          ; $7497: $41
	ld a, [hl-]                                      ; $7498: $3a
	xor h                                            ; $7499: $ac
	ldh a, [$9e]                                     ; $749a: $f0 $9e
	ld h, d                                          ; $749c: $62
	ldh a, [c]                                       ; $749d: $f2
	and d                                            ; $749e: $a2
	ld e, b                                          ; $749f: $58
	ld a, [hl-]                                      ; $74a0: $3a
	ld d, l                                          ; $74a1: $55
	ccf                                              ; $74a2: $3f
	ld c, a                                          ; $74a3: $4f
	ld c, b                                          ; $74a4: $48
	and b                                            ; $74a5: $a0
	db $ed                                           ; $74a6: $ed
	ld b, e                                          ; $74a7: $43
	xor h                                            ; $74a8: $ac
	db $ed                                           ; $74a9: $ed

jr_095_74aa:
	push de                                          ; $74aa: $d5
	jr c, jr_095_7505                                ; $74ab: $38 $58

	ld c, l                                          ; $74ad: $4d
	dec a                                            ; $74ae: $3d
	ld d, b                                          ; $74af: $50
	xor l                                            ; $74b0: $ad

jr_095_74b1:
	jr c, jr_095_74eb                                ; $74b1: $38 $38

	ld h, e                                          ; $74b3: $63
	xor b                                            ; $74b4: $a8
	jp hl                                            ; $74b5: $e9


	ld a, [hl+]                                      ; $74b6: $2a
	and b                                            ; $74b7: $a0
	cpl                                              ; $74b8: $2f
	ld [hl-], a                                      ; $74b9: $32
	ld c, d                                          ; $74ba: $4a
	ld c, a                                          ; $74bb: $4f
	inc [hl]                                         ; $74bc: $34
	db $ed                                           ; $74bd: $ed
	ld d, e                                          ; $74be: $53
	dec sp                                           ; $74bf: $3b
	ccf                                              ; $74c0: $3f
	xor h                                            ; $74c1: $ac
	sbc $4f                                          ; $74c2: $de $4f
	ccf                                              ; $74c4: $3f
	ld c, [hl]                                       ; $74c5: $4e
	ld b, l                                          ; $74c6: $45
	ld a, [hl-]                                      ; $74c7: $3a
	and e                                            ; $74c8: $a3
	cpl                                              ; $74c9: $2f
	ld [hl-], a                                      ; $74ca: $32
	db $ed                                           ; $74cb: $ed
	ld [hl+], a                                      ; $74cc: $22
	ld c, e                                          ; $74cd: $4b
	xor h                                            ; $74ce: $ac
	jr c, jr_095_7451                                ; $74cf: $38 $80

	ld a, b                                          ; $74d1: $78
	ccf                                              ; $74d2: $3f
	ld c, a                                          ; $74d3: $4f
	ld [$a3db], a                                    ; $74d4: $ea $db $a3
	cpl                                              ; $74d7: $2f
	ld b, e                                          ; $74d8: $43
	db $eb                                           ; $74d9: $eb
	ld e, d                                          ; $74da: $5a
	and b                                            ; $74db: $a0
	cpl                                              ; $74dc: $2f
	ld [hl-], a                                      ; $74dd: $32
	db $ed                                           ; $74de: $ed
	ld e, d                                          ; $74df: $5a
	inc sp                                           ; $74e0: $33
	add hl, bc                                       ; $74e1: $09
	cpl                                              ; $74e2: $2f
	ld [hl-], a                                      ; $74e3: $32
	db $eb                                           ; $74e4: $eb
	ld a, [$a844]                                    ; $74e5: $fa $44 $a8
	ld l, e                                          ; $74e8: $6b
	inc a                                            ; $74e9: $3c
	inc [hl]                                         ; $74ea: $34

jr_095_74eb:
	pop af                                           ; $74eb: $f1
	ld [hl-], a                                      ; $74ec: $32
	ld d, b                                          ; $74ed: $50
	ld c, l                                          ; $74ee: $4d
	ccf                                              ; $74ef: $3f
	ld c, [hl]                                       ; $74f0: $4e
	ld a, [hl-]                                      ; $74f1: $3a
	and e                                            ; $74f2: $a3
	ld h, h                                          ; $74f3: $64
	dec sp                                           ; $74f4: $3b
	inc [hl]                                         ; $74f5: $34
	ld de, $56f0                                     ; $74f6: $11 $f0 $56
	inc de                                           ; $74f9: $13
	db $ec                                           ; $74fa: $ec
	db $dd                                           ; $74fb: $dd
	ld b, l                                          ; $74fc: $45
	and b                                            ; $74fd: $a0
	cpl                                              ; $74fe: $2f
	ld [hl-], a                                      ; $74ff: $32
	ld h, c                                          ; $7500: $61
	dec sp                                           ; $7501: $3b
	inc [hl]                                         ; $7502: $34
	db $ed                                           ; $7503: $ed
	or l                                             ; $7504: $b5

jr_095_7505:
	ld b, a                                          ; $7505: $47
	inc de                                           ; $7506: $13
	pop af                                           ; $7507: $f1
	ld bc, $4d7b                                     ; $7508: $01 $7b $4d
	ld h, c                                          ; $750b: $61
	ld d, d                                          ; $750c: $52
	dec sp                                           ; $750d: $3b
	dec a                                            ; $750e: $3d
	adc l                                            ; $750f: $8d
	and e                                            ; $7510: $a3
	cpl                                              ; $7511: $2f
	ld [hl-], a                                      ; $7512: $32
	db $ec                                           ; $7513: $ec
	ld hl, sp-$54                                    ; $7514: $f8 $ac
	db $ed                                           ; $7516: $ed
	or l                                             ; $7517: $b5
	ld b, d                                          ; $7518: $42
	xor $07                                          ; $7519: $ee $07
	ld d, e                                          ; $751b: $53
	ldh a, [$ce]                                     ; $751c: $f0 $ce
	ld h, e                                          ; $751e: $63
	dec sp                                           ; $751f: $3b
	dec a                                            ; $7520: $3d
	ld b, l                                          ; $7521: $45
	xor b                                            ; $7522: $a8
	db $eb                                           ; $7523: $eb
	ld a, [$ac4b]                                    ; $7524: $fa $4b $ac
	ld c, a                                          ; $7527: $4f
	add hl, sp                                       ; $7528: $39
	jr c, @+$3c                                      ; $7529: $38 $3a

	jr c, jr_095_7599                                ; $752b: $38 $6c

	dec a                                            ; $752d: $3d
	jr c, jr_095_7574                                ; $752e: $38 $44

	and e                                            ; $7530: $a3
	cpl                                              ; $7531: $2f
	ld b, e                                          ; $7532: $43
	ldh a, [rHDMA5]                                  ; $7533: $f0 $55
	ldh a, [rBCPS]                                   ; $7535: $f0 $68
	ld a, $52                                        ; $7537: $3e $52
	ld a, $3d                                        ; $7539: $3e $3d
	and b                                            ; $753b: $a0
	cpl                                              ; $753c: $2f
	ld b, e                                          ; $753d: $43
	ld b, [hl]                                       ; $753e: $46
	ld c, l                                          ; $753f: $4d
	xor c                                            ; $7540: $a9
	db $eb                                           ; $7541: $eb
	ld a, [$46a0]                                    ; $7542: $fa $a0 $46
	dec sp                                           ; $7545: $3b
	xor h                                            ; $7546: $ac
	db $ed                                           ; $7547: $ed
	ld [hl+], a                                      ; $7548: $22
	ld b, a                                          ; $7549: $47
	jr c, jr_095_7589                                ; $754a: $38 $3d

	ld b, d                                          ; $754c: $42
	and c                                            ; $754d: $a1
	cpl                                              ; $754e: $2f
	ld b, e                                          ; $754f: $43
	ld l, d                                          ; $7550: $6a
	inc [hl]                                         ; $7551: $34
	pop af                                           ; $7552: $f1
	ld [hl-], a                                      ; $7553: $32
	ld d, b                                          ; $7554: $50
	ld c, l                                          ; $7555: $4d
	ccf                                              ; $7556: $3f
	dec a                                            ; $7557: $3d
	inc de                                           ; $7558: $13
	ld c, d                                          ; $7559: $4a
	ld a, $66                                        ; $755a: $3e $66
	add hl, sp                                       ; $755c: $39
	and b                                            ; $755d: $a0
	ld e, [hl]                                       ; $755e: $5e
	dec sp                                           ; $755f: $3b
	dec [hl]                                         ; $7560: $35
	rla                                              ; $7561: $17
	ld l, [hl]                                       ; $7562: $6e
	ld a, e                                          ; $7563: $7b
	jr c, @+$4b                                      ; $7564: $38 $49

	ld d, h                                          ; $7566: $54
	xor h                                            ; $7567: $ac
	ld [hl], d                                       ; $7568: $72
	ld d, b                                          ; $7569: $50
	ld c, l                                          ; $756a: $4d
	ld h, c                                          ; $756b: $61
	ld d, [hl]                                       ; $756c: $56
	dec sp                                           ; $756d: $3b
	dec a                                            ; $756e: $3d
	ld a, [hl-]                                      ; $756f: $3a
	ld [hl], h                                       ; $7570: $74
	and b                                            ; $7571: $a0
	cpl                                              ; $7572: $2f
	ld b, e                                          ; $7573: $43

jr_095_7574:
	ld l, e                                          ; $7574: $6b
	inc [hl]                                         ; $7575: $34
	pop af                                           ; $7576: $f1
	ld [hl-], a                                      ; $7577: $32
	ld d, b                                          ; $7578: $50
	ld c, l                                          ; $7579: $4d
	ccf                                              ; $757a: $3f
	dec a                                            ; $757b: $3d
	ld b, d                                          ; $757c: $42
	and c                                            ; $757d: $a1
	db $eb                                           ; $757e: $eb
	adc c                                            ; $757f: $89
	xor h                                            ; $7580: $ac
	ldh a, [$c7]                                     ; $7581: $f0 $c7

jr_095_7583:
	ldh a, [c]                                       ; $7583: $f2
	call $3f3e                                       ; $7584: $cd $3e $3f
	ld c, h                                          ; $7587: $4c
	ld c, b                                          ; $7588: $48

jr_095_7589:
	and b                                            ; $7589: $a0
	cpl                                              ; $758a: $2f
	ld b, e                                          ; $758b: $43
	ld b, b                                          ; $758c: $40
	ld c, l                                          ; $758d: $4d
	ld c, d                                          ; $758e: $4a
	inc [hl]                                         ; $758f: $34
	db $ec                                           ; $7590: $ec
	dec hl                                           ; $7591: $2b
	inc de                                           ; $7592: $13
	pop af                                           ; $7593: $f1
	ld [hl-], a                                      ; $7594: $32
	ld d, b                                          ; $7595: $50
	ld c, l                                          ; $7596: $4d
	ld c, [hl]                                       ; $7597: $4e
	dec sp                                           ; $7598: $3b

jr_095_7599:
	ccf                                              ; $7599: $3f
	sbc d                                            ; $759a: $9a
	ld c, e                                          ; $759b: $4b
	xor $10                                          ; $759c: $ee $10
	inc de                                           ; $759e: $13
	inc a                                            ; $759f: $3c
	ld a, [hl-]                                      ; $75a0: $3a
	ld d, a                                          ; $75a1: $57
	ld b, d                                          ; $75a2: $42
	db $ed                                           ; $75a3: $ed
	inc [hl]                                         ; $75a4: $34
	ld b, h                                          ; $75a5: $44
	ld c, h                                          ; $75a6: $4c
	and b                                            ; $75a7: $a0
	ld b, b                                          ; $75a8: $40
	ld b, c                                          ; $75a9: $41
	ld a, [hl-]                                      ; $75aa: $3a
	ld d, h                                          ; $75ab: $54
	ld c, c                                          ; $75ac: $49
	ld a, [hl-]                                      ; $75ad: $3a
	jr c, jr_095_75f5                                ; $75ae: $38 $45

	xor b                                            ; $75b0: $a8
	pop af                                           ; $75b1: $f1
	ld l, h                                          ; $75b2: $6c
	ld b, a                                          ; $75b3: $47
	ldh a, [$e5]                                     ; $75b4: $f0 $e5
	inc [hl]                                         ; $75b6: $34
	ldh a, [c]                                       ; $75b7: $f2
	adc h                                            ; $75b8: $8c
	ldh a, [$d3]                                     ; $75b9: $f0 $d3
	inc a                                            ; $75bb: $3c
	ld a, [hl-]                                      ; $75bc: $3a
	and b                                            ; $75bd: $a0
	cpl                                              ; $75be: $2f
	ld b, e                                          ; $75bf: $43
	ld b, b                                          ; $75c0: $40
	ld c, l                                          ; $75c1: $4d
	ld h, d                                          ; $75c2: $62
	db $ed                                           ; $75c3: $ed
	inc [hl]                                         ; $75c4: $34
	dec sp                                           ; $75c5: $3b
	ccf                                              ; $75c6: $3f
	inc de                                           ; $75c7: $13
	add d                                            ; $75c8: $82
	xor $1f                                          ; $75c9: $ee $1f
	ld b, h                                          ; $75cb: $44
	ld b, l                                          ; $75cc: $45
	and b                                            ; $75cd: $a0
	ld c, d                                          ; $75ce: $4a
	ld c, a                                          ; $75cf: $4f
	inc [hl]                                         ; $75d0: $34
	xor $1e                                          ; $75d1: $ee $1e
	sbc l                                            ; $75d3: $9d
	ld d, b                                          ; $75d4: $50
	jr c, jr_095_7583                                ; $75d5: $38 $ac

	db $ed                                           ; $75d7: $ed
	adc c                                            ; $75d8: $89
	ld d, c                                          ; $75d9: $51
	ld c, [hl]                                       ; $75da: $4e
	ld b, h                                          ; $75db: $44
	ld e, l                                          ; $75dc: $5d
	ld c, d                                          ; $75dd: $4a
	xor h                                            ; $75de: $ac
	ldh a, [$c7]                                     ; $75df: $f0 $c7
	ldh a, [c]                                       ; $75e1: $f2
	call $9453                                       ; $75e2: $cd $53 $94
	ld a, b                                          ; $75e5: $78
	ld b, c                                          ; $75e6: $41
	ld b, h                                          ; $75e7: $44
	ld c, a                                          ; $75e8: $4f
	ld b, c                                          ; $75e9: $41
	xor b                                            ; $75ea: $a8
	pop af                                           ; $75eb: $f1
	cp c                                             ; $75ec: $b9
	jr c, jr_095_763e                                ; $75ed: $38 $4f

	ld b, c                                          ; $75ef: $41
	ld b, l                                          ; $75f0: $45
	and b                                            ; $75f1: $a0
	cpl                                              ; $75f2: $2f
	ld b, e                                          ; $75f3: $43
	ld c, e                                          ; $75f4: $4b

jr_095_75f5:
	ld [hl], h                                       ; $75f5: $74
	xor l                                            ; $75f6: $ad
	db $ed                                           ; $75f7: $ed
	or a                                             ; $75f8: $b7
	ld b, d                                          ; $75f9: $42
	pop af                                           ; $75fa: $f1
	ld l, [hl]                                       ; $75fb: $6e
	ld d, e                                          ; $75fc: $53
	ldh a, [rAUD1LOW]                                ; $75fd: $f0 $13
	jr c, jr_095_7649                                ; $75ff: $38 $48

	and b                                            ; $7601: $a0
	ld b, b                                          ; $7602: $40
	ld c, l                                          ; $7603: $4d
	ld e, e                                          ; $7604: $5b
	ld d, [hl]                                       ; $7605: $56
	xor h                                            ; $7606: $ac
	ld l, a                                          ; $7607: $6f
	pop af                                           ; $7608: $f1

jr_095_7609:
	ld d, $9d                                        ; $7609: $16 $9d
	inc a                                            ; $760b: $3c
	ld d, b                                          ; $760c: $50
	and b                                            ; $760d: $a0
	cpl                                              ; $760e: $2f
	ld [hl-], a                                      ; $760f: $32
	ld e, b                                          ; $7610: $58
	ccf                                              ; $7611: $3f
	inc [hl]                                         ; $7612: $34
	di                                               ; $7613: $f3
	jr jr_095_7609                                   ; $7614: $18 $f3

	xor l                                            ; $7616: $ad
	ld b, h                                          ; $7617: $44
	xor b                                            ; $7618: $a8
	ldh a, [$0a]                                     ; $7619: $f0 $0a
	ld d, l                                          ; $761b: $55
	adc c                                            ; $761c: $89
	ldh a, [$b7]                                     ; $761d: $f0 $b7
	ld b, a                                          ; $761f: $47
	ld h, a                                          ; $7620: $67
	inc a                                            ; $7621: $3c
	ld a, [hl-]                                      ; $7622: $3a
	jr c, jr_095_766e                                ; $7623: $38 $49

	ld c, b                                          ; $7625: $48
	and e                                            ; $7626: $a3
	ld d, $a8                                        ; $7627: $16 $a8
	db $eb                                           ; $7629: $eb
	ld h, h                                          ; $762a: $64
	ld e, c                                          ; $762b: $59
	dec sp                                           ; $762c: $3b
	and b                                            ; $762d: $a0
	cpl                                              ; $762e: $2f
	ld b, e                                          ; $762f: $43
	ld b, [hl]                                       ; $7630: $46
	dec sp                                           ; $7631: $3b
	inc [hl]                                         ; $7632: $34
	db $eb                                           ; $7633: $eb
	db $fc                                           ; $7634: $fc
	and b                                            ; $7635: $a0
	ld h, h                                          ; $7636: $64
	db $ed                                           ; $7637: $ed
	ld h, $3b                                        ; $7638: $26 $3b
	ccf                                              ; $763a: $3f
	ld e, h                                          ; $763b: $5c
	dec a                                            ; $763c: $3d
	ld b, d                                          ; $763d: $42

jr_095_763e:
	xor b                                            ; $763e: $a8
	xor $06                                          ; $763f: $ee $06
	ld b, a                                          ; $7641: $47
	ldh a, [$b7]                                     ; $7642: $f0 $b7
	ldh a, [$8c]                                     ; $7644: $f0 $8c
	ld d, d                                          ; $7646: $52
	ld a, c                                          ; $7647: $79
	ld b, c                                          ; $7648: $41

jr_095_7649:
	inc a                                            ; $7649: $3c
	and c                                            ; $764a: $a1
	cpl                                              ; $764b: $2f
	ld b, e                                          ; $764c: $43
	ld e, [hl]                                       ; $764d: $5e
	dec sp                                           ; $764e: $3b
	inc [hl]                                         ; $764f: $34
	db $ec                                           ; $7650: $ec
	ld [$8ba8], sp                                   ; $7651: $08 $a8 $8b
	ldh a, [$72]                                     ; $7654: $f0 $72
	ld c, e                                          ; $7656: $4b
	inc [hl]                                         ; $7657: $34
	ld e, d                                          ; $7658: $5a
	add hl, sp                                       ; $7659: $39
	ld d, c                                          ; $765a: $51
	ld c, [hl]                                       ; $765b: $4e
	ld b, d                                          ; $765c: $42
	and c                                            ; $765d: $a1
	db $eb                                           ; $765e: $eb
	pop af                                           ; $765f: $f1
	ld a, [hl-]                                      ; $7660: $3a
	ld b, c                                          ; $7661: $41
	ccf                                              ; $7662: $3f
	xor h                                            ; $7663: $ac
	ld e, d                                          ; $7664: $5a
	add hl, sp                                       ; $7665: $39
	ld c, d                                          ; $7666: $4a
	ld c, a                                          ; $7667: $4f
	jr c, jr_095_76a2                                ; $7668: $38 $38

	inc a                                            ; $766a: $3c
	ld d, b                                          ; $766b: $50
	xor b                                            ; $766c: $a8
	pop af                                           ; $766d: $f1

jr_095_766e:
	ld b, h                                          ; $766e: $44
	ldh a, [$3e]                                     ; $766f: $f0 $3e
	ld b, a                                          ; $7671: $47
	ld [$a0a9], a                                    ; $7672: $ea $a9 $a0
	cpl                                              ; $7675: $2f
	ld b, e                                          ; $7676: $43
	xor $2d                                          ; $7677: $ee $2d
	xor $2d                                          ; $7679: $ee $2d
	xor b                                            ; $767b: $a8
	ld [hl-], a                                      ; $767c: $32
	db $ed                                           ; $767d: $ed
	dec bc                                           ; $767e: $0b
	ld a, [hl-]                                      ; $767f: $3a
	db $ed                                           ; $7680: $ed
	ld c, $a3                                        ; $7681: $0e $a3
	xor $2d                                          ; $7683: $ee $2d
	inc [hl]                                         ; $7685: $34
	ld e, d                                          ; $7686: $5a
	add hl, sp                                       ; $7687: $39
	sub a                                            ; $7688: $97
	xor b                                            ; $7689: $a8
	sub d                                            ; $768a: $92
	adc [hl]                                         ; $768b: $8e
	dec sp                                           ; $768c: $3b
	ccf                                              ; $768d: $3f
	inc de                                           ; $768e: $13
	ldh a, [$a5]                                     ; $768f: $f0 $a5
	dec sp                                           ; $7691: $3b
	dec a                                            ; $7692: $3d
	ld b, c                                          ; $7693: $41
	ld c, d                                          ; $7694: $4a
	ld d, c                                          ; $7695: $51
	ld b, l                                          ; $7696: $45
	and b                                            ; $7697: $a0
	cpl                                              ; $7698: $2f
	ld b, e                                          ; $7699: $43
	ld b, b                                          ; $769a: $40
	ld c, l                                          ; $769b: $4d
	ld e, e                                          ; $769c: $5b
	ld d, [hl]                                       ; $769d: $56
	inc [hl]                                         ; $769e: $34
	pop af                                           ; $769f: $f1
	ld b, $f1                                        ; $76a0: $06 $f1

jr_095_76a2:
	ld a, $3a                                        ; $76a2: $3e $3a
	ld d, l                                          ; $76a4: $55
	inc de                                           ; $76a5: $13
	jr c, @+$3f                                      ; $76a6: $38 $3d

	ld b, h                                          ; $76a8: $44
	ld e, h                                          ; $76a9: $5c
	ld d, d                                          ; $76aa: $52
	ld d, c                                          ; $76ab: $51
	and b                                            ; $76ac: $a0
	cpl                                              ; $76ad: $2f
	ld h, $ed                                        ; $76ae: $26 $ed
	ld [hl-], a                                      ; $76b0: $32
	inc [hl]                                         ; $76b1: $34
	ld [hl+], a                                      ; $76b2: $22
	ld [hl+], a                                      ; $76b3: $22
	ld [hl+], a                                      ; $76b4: $22
	db $ec                                           ; $76b5: $ec
	ld [hl], l                                       ; $76b6: $75
	inc [hl]                                         ; $76b7: $34
	ld [hl+], a                                      ; $76b8: $22
	ld [hl+], a                                      ; $76b9: $22
	ld [hl+], a                                      ; $76ba: $22
	db $ec                                           ; $76bb: $ec
	and b                                            ; $76bc: $a0
	ld [hl+], a                                      ; $76bd: $22
	dec h                                            ; $76be: $25
	add hl, bc                                       ; $76bf: $09
	ld e, d                                          ; $76c0: $5a
	inc [hl]                                         ; $76c1: $34
	ld e, d                                          ; $76c2: $5a
	add hl, sp                                       ; $76c3: $39
	ld c, d                                          ; $76c4: $4a
	ld d, c                                          ; $76c5: $51
	inc a                                            ; $76c6: $3c
	and c                                            ; $76c7: $a1
	cpl                                              ; $76c8: $2f
	ld b, e                                          ; $76c9: $43
	xor $10                                          ; $76ca: $ee $10
	xor $10                                          ; $76cc: $ee $10
	dec [hl]                                         ; $76ce: $35
	rla                                              ; $76cf: $17
	ld [hl-], a                                      ; $76d0: $32
	di                                               ; $76d1: $f3
	rst FarCall                                          ; $76d2: $f7
	push af                                          ; $76d3: $f5
	ld e, $49                                        ; $76d4: $1e $49
	push af                                          ; $76d6: $f5
	rra                                              ; $76d7: $1f
	ld h, d                                          ; $76d8: $62
	inc [hl]                                         ; $76d9: $34
	ldh a, [$2a]                                     ; $76da: $f0 $2a
	ldh a, [$f5]                                     ; $76dc: $f0 $f5
	ld e, [hl]                                       ; $76de: $5e
	ccf                                              ; $76df: $3f
	ld c, [hl]                                       ; $76e0: $4e
	sub a                                            ; $76e1: $97
	and e                                            ; $76e2: $a3
	adc d                                            ; $76e3: $8a
	ldh a, [hDisp1_WY]                                     ; $76e4: $f0 $95
	ld a, $55                                        ; $76e6: $3e $55
	ld a, [hl-]                                      ; $76e8: $3a
	jr c, jr_095_7735                                ; $76e9: $38 $4a

	ld d, c                                          ; $76eb: $51
	inc a                                            ; $76ec: $3c
	and c                                            ; $76ed: $a1
	cpl                                              ; $76ee: $2f
	ld b, e                                          ; $76ef: $43
	ld h, h                                          ; $76f0: $64
	inc [hl]                                         ; $76f1: $34
	db $ec                                           ; $76f2: $ec
	dec de                                           ; $76f3: $1b
	ld b, l                                          ; $76f4: $45
	xor b                                            ; $76f5: $a8
	db $eb                                           ; $76f6: $eb
	db $fc                                           ; $76f7: $fc
	xor b                                            ; $76f8: $a8
	ld [hl-], a                                      ; $76f9: $32
	ld d, h                                          ; $76fa: $54
	ld c, l                                          ; $76fb: $4d
	ld d, e                                          ; $76fc: $53
	inc [hl]                                         ; $76fd: $34
	ldh a, [$ab]                                     ; $76fe: $f0 $ab
	ld b, d                                          ; $7700: $42
	ldh a, [$4e]                                     ; $7701: $f0 $4e
	ld a, $58                                        ; $7703: $3e $58
	ld b, h                                          ; $7705: $44
	adc l                                            ; $7706: $8d
	and e                                            ; $7707: $a3
	db $ed                                           ; $7708: $ed
	ld b, c                                          ; $7709: $41
	ld c, d                                          ; $770a: $4a
	ld d, c                                          ; $770b: $51
	inc a                                            ; $770c: $3c
	xor c                                            ; $770d: $a9
	db $ed                                           ; $770e: $ed
	ld d, l                                          ; $770f: $55
	ld e, c                                          ; $7710: $59
	dec sp                                           ; $7711: $3b
	xor b                                            ; $7712: $a8
	adc $46                                          ; $7713: $ce $46
	ld c, [hl]                                       ; $7715: $4e
	inc a                                            ; $7716: $3c
	ld d, b                                          ; $7717: $50
	xor h                                            ; $7718: $ac
	ld e, d                                          ; $7719: $5a
	ld b, c                                          ; $771a: $41
	ld e, d                                          ; $771b: $5a
	ld b, c                                          ; $771c: $41
	ldh a, [$b7]                                     ; $771d: $f0 $b7
	ldh a, [$8c]                                     ; $771f: $f0 $8c
	ccf                                              ; $7721: $3f
	db $ec                                           ; $7722: $ec
	rst FarCall                                          ; $7723: $f7
	ld c, h                                          ; $7724: $4c
	and b                                            ; $7725: $a0
	cpl                                              ; $7726: $2f
	ld b, e                                          ; $7727: $43
	ld b, [hl]                                       ; $7728: $46
	inc [hl]                                         ; $7729: $34
	ld b, [hl]                                       ; $772a: $46
	ld d, a                                          ; $772b: $57
	ld d, e                                          ; $772c: $53
	ld c, c                                          ; $772d: $49
	add hl, sp                                       ; $772e: $39
	xor b                                            ; $772f: $a8
	ld c, d                                          ; $7730: $4a
	ld c, a                                          ; $7731: $4f
	inc [hl]                                         ; $7732: $34
	db $ec                                           ; $7733: $ec
	add hl, bc                                       ; $7734: $09

jr_095_7735:
	db $ed                                           ; $7735: $ed
	ld c, c                                          ; $7736: $49
	ld b, a                                          ; $7737: $47

jr_095_7738:
	ldh a, [$a5]                                     ; $7738: $f0 $a5
	dec sp                                           ; $773a: $3b
	dec a                                            ; $773b: $3d
	inc de                                           ; $773c: $13
	ld h, h                                          ; $773d: $64
	pop af                                           ; $773e: $f1
	inc a                                            ; $773f: $3c
	sub c                                            ; $7740: $91
	ld d, e                                          ; $7741: $53
	inc [hl]                                         ; $7742: $34
	ld c, a                                          ; $7743: $4f
	dec sp                                           ; $7744: $3b
	dec a                                            ; $7745: $3d
	jr c, jr_095_7738                                ; $7746: $38 $f0

	inc de                                           ; $7748: $13
	jr c, jr_095_7797                                ; $7749: $38 $4c

	and b                                            ; $774b: $a0
	sub d                                            ; $774c: $92
	adc [hl]                                         ; $774d: $8e
	dec sp                                           ; $774e: $3b
	ccf                                              ; $774f: $3f
	ldh a, [$a5]                                     ; $7750: $f0 $a5
	dec sp                                           ; $7752: $3b
	dec a                                            ; $7753: $3d
	ld b, d                                          ; $7754: $42
	ld b, a                                          ; $7755: $47
	xor e                                            ; $7756: $ab
	ldh a, [$b7]                                     ; $7757: $f0 $b7
	ldh a, [$8c]                                     ; $7759: $f0 $8c
	ccf                                              ; $775b: $3f
	ld d, l                                          ; $775c: $55
	ld c, l                                          ; $775d: $4d
	ld a, [hl-]                                      ; $775e: $3a
	jr c, @+$44                                      ; $775f: $38 $42

	ld c, d                                          ; $7761: $4a
	ld d, c                                          ; $7762: $51
	inc a                                            ; $7763: $3c
	and c                                            ; $7764: $a1
	cpl                                              ; $7765: $2f
	ld b, e                                          ; $7766: $43
	ld b, b                                          ; $7767: $40
	ld b, c                                          ; $7768: $41
	ld a, [hl-]                                      ; $7769: $3a
	ld d, h                                          ; $776a: $54
	ld c, c                                          ; $776b: $49
	ld a, [hl-]                                      ; $776c: $3a
	jr c, @+$47                                      ; $776d: $38 $45

	xor b                                            ; $776f: $a8
	dec a                                            ; $7770: $3d
	ld b, h                                          ; $7771: $44
	ld c, h                                          ; $7772: $4c
	inc [hl]                                         ; $7773: $34
	ld d, h                                          ; $7774: $54
	ld b, c                                          ; $7775: $41
	ld a, [hl-]                                      ; $7776: $3a
	ld b, a                                          ; $7777: $47
	ld c, b                                          ; $7778: $48
	and b                                            ; $7779: $a0
	ldh a, [$b7]                                     ; $777a: $f0 $b7
	ldh a, [$8c]                                     ; $777c: $f0 $8c
	ccf                                              ; $777e: $3f
	ld d, l                                          ; $777f: $55
	ld c, l                                          ; $7780: $4d
	ld a, [hl-]                                      ; $7781: $3a
	jr c, jr_095_77c6                                ; $7782: $38 $42

	ld c, d                                          ; $7784: $4a
	ld d, c                                          ; $7785: $51
	inc a                                            ; $7786: $3c
	and c                                            ; $7787: $a1
	cpl                                              ; $7788: $2f
	ld b, e                                          ; $7789: $43
	ld b, [hl]                                       ; $778a: $46
	ld [hl], h                                       ; $778b: $74
	inc [hl]                                         ; $778c: $34
	ldh a, [$29]                                     ; $778d: $f0 $29
	ld a, $38                                        ; $778f: $3e $38
	ld a, [hl-]                                      ; $7791: $3a
	ld [hl], h                                       ; $7792: $74
	xor b                                            ; $7793: $a8
	ld d, h                                          ; $7794: $54
	ld b, c                                          ; $7795: $41
	ld a, [hl-]                                      ; $7796: $3a

jr_095_7797:
	ld b, a                                          ; $7797: $47
	db $ec                                           ; $7798: $ec
	dec de                                           ; $7799: $1b
	ld h, h                                          ; $779a: $64
	pop af                                           ; $779b: $f1
	inc a                                            ; $779c: $3c
	sub c                                            ; $779d: $91
	ld h, d                                          ; $779e: $62
	inc de                                           ; $779f: $13
	ldh a, [$b7]                                     ; $77a0: $f0 $b7
	ldh a, [$8c]                                     ; $77a2: $f0 $8c
	ld c, l                                          ; $77a4: $4d
	ld c, [hl]                                       ; $77a5: $4e
	ld a, [hl-]                                      ; $77a6: $3a
	ld b, c                                          ; $77a7: $41
	ccf                                              ; $77a8: $3f
	and b                                            ; $77a9: $a0
	cpl                                              ; $77aa: $2f
	ld [hl-], a                                      ; $77ab: $32
	ldh a, [c]                                       ; $77ac: $f2
	ld a, d                                          ; $77ad: $7a
	ld b, c                                          ; $77ae: $41
	ld b, h                                          ; $77af: $44
	ld a, a                                          ; $77b0: $7f
	ld c, d                                          ; $77b1: $4a
	xor h                                            ; $77b2: $ac
	ldh a, [$b7]                                     ; $77b3: $f0 $b7
	add hl, sp                                       ; $77b5: $39
	ld a, $3c                                        ; $77b6: $3e $3c
	ld c, h                                          ; $77b8: $4c
	add l                                            ; $77b9: $85
	ld a, [hl-]                                      ; $77ba: $3a
	and e                                            ; $77bb: $a3
	db $ec                                           ; $77bc: $ec
	cp c                                             ; $77bd: $b9
	xor b                                            ; $77be: $a8
	db $ed                                           ; $77bf: $ed
	adc b                                            ; $77c0: $88
	ldh a, [$b7]                                     ; $77c1: $f0 $b7
	ldh a, [$8c]                                     ; $77c3: $f0 $8c
	ccf                                              ; $77c5: $3f

jr_095_77c6:
	ld d, l                                          ; $77c6: $55
	ld c, l                                          ; $77c7: $4d
	ccf                                              ; $77c8: $3f
	and b                                            ; $77c9: $a0
	cpl                                              ; $77ca: $2f
	ld b, e                                          ; $77cb: $43
	ld [hl], b                                       ; $77cc: $70
	inc [hl]                                         ; $77cd: $34
	ld [hl], b                                       ; $77ce: $70
	ld h, c                                          ; $77cf: $61

jr_095_77d0:
	ld b, b                                          ; $77d0: $40
	add hl, sp                                       ; $77d1: $39
	ld e, b                                          ; $77d2: $58
	ld d, d                                          ; $77d3: $52
	xor b                                            ; $77d4: $a8
	ld c, c                                          ; $77d5: $49
	ccf                                              ; $77d6: $3f
	ld c, a                                          ; $77d7: $4f
	inc [hl]                                         ; $77d8: $34
	adc d                                            ; $77d9: $8a
	ldh a, [hDisp1_WY]                                     ; $77da: $f0 $95
	ld a, $3c                                        ; $77dc: $3e $3c
	dec sp                                           ; $77de: $3b
	dec a                                            ; $77df: $3d
	ld b, l                                          ; $77e0: $45
	and b                                            ; $77e1: $a0
	ldh a, [$08]                                     ; $77e2: $f0 $08
	ld b, c                                          ; $77e4: $41
	ld c, c                                          ; $77e5: $49
	ld c, d                                          ; $77e6: $4a
	ld d, c                                          ; $77e7: $51
	inc a                                            ; $77e8: $3c
	xor c                                            ; $77e9: $a9
	ld [$f044], a                                    ; $77ea: $ea $44 $f0
	and l                                            ; $77ed: $a5
	dec sp                                           ; $77ee: $3b
	ccf                                              ; $77ef: $3f
	ld e, h                                          ; $77f0: $5c
	ld d, d                                          ; $77f1: $52
	ld d, c                                          ; $77f2: $51
	ld c, h                                          ; $77f3: $4c
	and b                                            ; $77f4: $a0
	cpl                                              ; $77f5: $2f
	ld b, e                                          ; $77f6: $43
	xor $10                                          ; $77f7: $ee $10
	xor $10                                          ; $77f9: $ee $10
	and b                                            ; $77fb: $a0
	ld d, d                                          ; $77fc: $52
	dec a                                            ; $77fd: $3d
	inc [hl]                                         ; $77fe: $34
	ld h, h                                          ; $77ff: $64
	pop af                                           ; $7800: $f1
	inc a                                            ; $7801: $3c
	sub c                                            ; $7802: $91
	inc de                                           ; $7803: $13
	ldh a, [$a5]                                     ; $7804: $f0 $a5
	dec sp                                           ; $7806: $3b
	ccf                                              ; $7807: $3f
	ld e, h                                          ; $7808: $5c
	dec a                                            ; $7809: $3d
	ld b, d                                          ; $780a: $42
	xor b                                            ; $780b: $a8
	pop af                                           ; $780c: $f1
	ld b, h                                          ; $780d: $44
	ldh a, [$3e]                                     ; $780e: $f0 $3e
	ld c, d                                          ; $7810: $4a
	ldh a, [$b7]                                     ; $7811: $f0 $b7
	ldh a, [$8c]                                     ; $7813: $f0 $8c
	ld d, d                                          ; $7815: $52
	ld a, $66                                        ; $7816: $3e $66
	add hl, sp                                       ; $7818: $39
	and c                                            ; $7819: $a1
	cpl                                              ; $781a: $2f
	ld b, e                                          ; $781b: $43
	ld b, [hl]                                       ; $781c: $46
	inc [hl]                                         ; $781d: $34
	ld b, [hl]                                       ; $781e: $46
	ld d, a                                          ; $781f: $57
	ld d, e                                          ; $7820: $53
	ld c, c                                          ; $7821: $49
	add hl, sp                                       ; $7822: $39
	xor b                                            ; $7823: $a8
	ld c, d                                          ; $7824: $4a
	ld c, a                                          ; $7825: $4f
	inc [hl]                                         ; $7826: $34
	db $ed                                           ; $7827: $ed
	ld d, a                                          ; $7828: $57
	ld c, b                                          ; $7829: $48
	and b                                            ; $782a: $a0
	ld l, a                                          ; $782b: $6f
	ld b, d                                          ; $782c: $42
	ld h, h                                          ; $782d: $64
	pop af                                           ; $782e: $f1
	inc a                                            ; $782f: $3c
	sub c                                            ; $7830: $91
	xor l                                            ; $7831: $ad
	ldh a, [$b7]                                     ; $7832: $f0 $b7
	ldh a, [$8c]                                     ; $7834: $f0 $8c
	ld d, b                                          ; $7836: $50
	ld c, l                                          ; $7837: $4d
	ld a, [hl-]                                      ; $7838: $3a
	jr c, jr_095_787c                                ; $7839: $38 $41

	ld c, d                                          ; $783b: $4a
	ld d, c                                          ; $783c: $51
	inc a                                            ; $783d: $3c
	and c                                            ; $783e: $a1
	cpl                                              ; $783f: $2f
	ld b, e                                          ; $7840: $43
	ldh a, [$b5]                                     ; $7841: $f0 $b5
	inc [hl]                                         ; $7843: $34
	db $eb                                           ; $7844: $eb
	db $fc                                           ; $7845: $fc
	ld b, d                                          ; $7846: $42
	inc de                                           ; $7847: $13
	ld h, h                                          ; $7848: $64
	pop af                                           ; $7849: $f1
	inc a                                            ; $784a: $3c
	sub c                                            ; $784b: $91
	ld a, [hl-]                                      ; $784c: $3a
	ld d, b                                          ; $784d: $50
	jr c, jr_095_77d0                                ; $784e: $38 $80

	ld c, d                                          ; $7850: $4a

jr_095_7851:
	ld c, a                                          ; $7851: $4f
	inc de                                           ; $7852: $13
	add a                                            ; $7853: $87
	ldh a, [c]                                       ; $7854: $f2
	or e                                             ; $7855: $b3
	ldh a, [c]                                       ; $7856: $f2
	ld d, d                                          ; $7857: $52
	ld b, h                                          ; $7858: $44
	ld b, l                                          ; $7859: $45
	and b                                            ; $785a: $a0
	ld b, b                                          ; $785b: $40
	ld c, l                                          ; $785c: $4d
	ld e, e                                          ; $785d: $5b
	ld d, [hl]                                       ; $785e: $56
	xor b                                            ; $785f: $a8
	pop af                                           ; $7860: $f1
	ld b, h                                          ; $7861: $44
	ldh a, [$3e]                                     ; $7862: $f0 $3e
	ld b, a                                          ; $7864: $47
	ld [$a0a9], a                                    ; $7865: $ea $a9 $a0
	cpl                                              ; $7868: $2f
	ld [hl-], a                                      ; $7869: $32
	ld c, c                                          ; $786a: $49
	ldh a, [$08]                                     ; $786b: $f0 $08
	ldh a, [$08]                                     ; $786d: $f0 $08
	ld b, h                                          ; $786f: $44
	ld b, l                                          ; $7870: $45
	and e                                            ; $7871: $a3
	xor $2d                                          ; $7872: $ee $2d
	inc [hl]                                         ; $7874: $34
	ld e, d                                          ; $7875: $5a
	add hl, sp                                       ; $7876: $39
	sub a                                            ; $7877: $97
	xor b                                            ; $7878: $a8
	ld b, [hl]                                       ; $7879: $46
	ld d, d                                          ; $787a: $52
	ld d, a                                          ; $787b: $57

jr_095_787c:
	inc [hl]                                         ; $787c: $34
	db $ed                                           ; $787d: $ed
	or [hl]                                          ; $787e: $b6
	ld c, e                                          ; $787f: $4b
	inc de                                           ; $7880: $13
	ldh a, [$5d]                                     ; $7881: $f0 $5d
	ld h, e                                          ; $7883: $63
	ld d, b                                          ; $7884: $50
	ld a, [hl-]                                      ; $7885: $3a
	jr c, jr_095_78d2                                ; $7886: $38 $4a

	ld d, c                                          ; $7888: $51
	ld e, l                                          ; $7889: $5d
	ld e, d                                          ; $788a: $5a
	and b                                            ; $788b: $a0
	cpl                                              ; $788c: $2f
	ld b, e                                          ; $788d: $43
	ld b, b                                          ; $788e: $40
	ld c, l                                          ; $788f: $4d
	ld e, e                                          ; $7890: $5b
	ld d, [hl]                                       ; $7891: $56
	xor h                                            ; $7892: $ac
	jr c, jr_095_78d2                                ; $7893: $38 $3d

	ld b, h                                          ; $7895: $44
	ld e, h                                          ; $7896: $5c
	ld d, d                                          ; $7897: $52
	ld d, c                                          ; $7898: $51
	and b                                            ; $7899: $a0
	db $ec                                           ; $789a: $ec
	dec de                                           ; $789b: $1b
	ld c, d                                          ; $789c: $4a
	ld d, c                                          ; $789d: $51
	inc a                                            ; $789e: $3c
	and c                                            ; $789f: $a1
	cpl                                              ; $78a0: $2f
	ld b, e                                          ; $78a1: $43
	ld d, c                                          ; $78a2: $51
	ld [hl], b                                       ; $78a3: $70
	ld d, l                                          ; $78a4: $55
	db $ec                                           ; $78a5: $ec
	dec de                                           ; $78a6: $1b
	ld b, l                                          ; $78a7: $45
	dec [hl]                                         ; $78a8: $35
	rla                                              ; $78a9: $17
	db $ed                                           ; $78aa: $ed
	ld l, [hl]                                       ; $78ab: $6e
	ldh a, [$0d]                                     ; $78ac: $f0 $0d
	ld c, e                                          ; $78ae: $4b
	xor h                                            ; $78af: $ac
	ld d, c                                          ; $78b0: $51
	ld [hl], b                                       ; $78b1: $70
	ld d, l                                          ; $78b2: $55
	ld a, $66                                        ; $78b3: $3e $66
	dec sp                                           ; $78b5: $3b
	ldh a, [$36]                                     ; $78b6: $f0 $36
	jr c, jr_095_7851                                ; $78b8: $38 $97

	inc sp                                           ; $78ba: $33
	add hl, bc                                       ; $78bb: $09
	db $ec                                           ; $78bc: $ec
	cp c                                             ; $78bd: $b9
	xor b                                            ; $78be: $a8
	ld [$f044], a                                    ; $78bf: $ea $44 $f0
	and l                                            ; $78c2: $a5
	dec sp                                           ; $78c3: $3b
	ccf                                              ; $78c4: $3f
	ld e, h                                          ; $78c5: $5c
	ld d, d                                          ; $78c6: $52
	ld d, c                                          ; $78c7: $51
	ld c, h                                          ; $78c8: $4c
	and b                                            ; $78c9: $a0
	cpl                                              ; $78ca: $2f
	ld b, e                                          ; $78cb: $43
	ld b, [hl]                                       ; $78cc: $46
	dec sp                                           ; $78cd: $3b
	inc [hl]                                         ; $78ce: $34
	db $eb                                           ; $78cf: $eb
	db $fc                                           ; $78d0: $fc
	xor b                                            ; $78d1: $a8

jr_095_78d2:
	db $eb                                           ; $78d2: $eb
	rst FarCall                                          ; $78d3: $f7
	and c                                            ; $78d4: $a1
	xor $2d                                          ; $78d5: $ee $2d
	inc [hl]                                         ; $78d7: $34
	ld e, d                                          ; $78d8: $5a
	add hl, sp                                       ; $78d9: $39
	sub a                                            ; $78da: $97
	xor b                                            ; $78db: $a8
	db $ec                                           ; $78dc: $ec
	call nz, Call_095_6442                           ; $78dd: $c4 $42 $64
	di                                               ; $78e0: $f3
	dec a                                            ; $78e1: $3d
	ldh a, [c]                                       ; $78e2: $f2
	or $4a                                           ; $78e3: $f6 $4a
	ld d, c                                          ; $78e5: $51
	and b                                            ; $78e6: $a0
	cpl                                              ; $78e7: $2f
	ld b, e                                          ; $78e8: $43
	ld b, [hl]                                       ; $78e9: $46
	ld d, a                                          ; $78ea: $57
	ld d, e                                          ; $78eb: $53
	ld c, c                                          ; $78ec: $49
	add hl, sp                                       ; $78ed: $39
	xor b                                            ; $78ee: $a8
	ldh a, [$29]                                     ; $78ef: $f0 $29
	ld a, $38                                        ; $78f1: $3e $38
	ld b, l                                          ; $78f3: $45
	and b                                            ; $78f4: $a0
	ld d, h                                          ; $78f5: $54
	ld c, l                                          ; $78f6: $4d
	inc [hl]                                         ; $78f7: $34
	xor $27                                          ; $78f8: $ee $27
	ld c, c                                          ; $78fa: $49
	inc de                                           ; $78fb: $13
	ldh a, [c]                                       ; $78fc: $f2
	ld b, h                                          ; $78fd: $44
	ldh a, [$3d]                                     ; $78fe: $f0 $3d
	ld a, [hl-]                                      ; $7900: $3a
	ld b, c                                          ; $7901: $41
	ld c, d                                          ; $7902: $4a
	ld d, c                                          ; $7903: $51
	ld b, l                                          ; $7904: $45
	and b                                            ; $7905: $a0
	cpl                                              ; $7906: $2f
	ld b, e                                          ; $7907: $43
	rst JumpTable                                          ; $7908: $c7
	and b                                            ; $7909: $a0
	ld b, [hl]                                       ; $790a: $46
	dec sp                                           ; $790b: $3b
	inc [hl]                                         ; $790c: $34
	db $eb                                           ; $790d: $eb
	pop af                                           ; $790e: $f1
	ld b, a                                          ; $790f: $47
	inc de                                           ; $7910: $13
	ld [hl], d                                       ; $7911: $72
	add b                                            ; $7912: $80
	inc a                                            ; $7913: $3c
	ld d, b                                          ; $7914: $50
	ld a, [hl-]                                      ; $7915: $3a
	jr c, jr_095_7951                                ; $7916: $38 $39

	ld h, c                                          ; $7918: $61
	ld b, a                                          ; $7919: $47
	inc de                                           ; $791a: $13
	ldh a, [$e8]                                     ; $791b: $f0 $e8
	ld d, b                                          ; $791d: $50
	ld a, [hl-]                                      ; $791e: $3a
	ld e, h                                          ; $791f: $5c
	ld d, [hl]                                       ; $7920: $56
	and b                                            ; $7921: $a0
	cpl                                              ; $7922: $2f
	ld b, e                                          ; $7923: $43
	ld b, [hl]                                       ; $7924: $46
	ld d, a                                          ; $7925: $57
	ld d, e                                          ; $7926: $53
	ld c, c                                          ; $7927: $49
	add hl, sp                                       ; $7928: $39
	xor b                                            ; $7929: $a8
	add a                                            ; $792a: $87
	sbc d                                            ; $792b: $9a
	ld b, a                                          ; $792c: $47
	ld d, c                                          ; $792d: $51
	ld c, [hl]                                       ; $792e: $4e
	ld b, l                                          ; $792f: $45
	and b                                            ; $7930: $a0
	sbc h                                            ; $7931: $9c
	dec sp                                           ; $7932: $3b
	ld c, c                                          ; $7933: $49
	inc [hl]                                         ; $7934: $34
	pop af                                           ; $7935: $f1
	ld de, $8047                                     ; $7936: $11 $47 $80
	ld e, l                                          ; $7939: $5d
	ccf                                              ; $793a: $3f
	ccf                                              ; $793b: $3f
	inc de                                           ; $793c: $13
	ld d, l                                          ; $793d: $55
	ld b, h                                          ; $793e: $44
	ld e, b                                          ; $793f: $58
	jr c, jr_095_798e                                ; $7940: $38 $4c

	and b                                            ; $7942: $a0
	xor $2d                                          ; $7943: $ee $2d
	inc [hl]                                         ; $7945: $34
	ld e, d                                          ; $7946: $5a
	add hl, sp                                       ; $7947: $39
	sub a                                            ; $7948: $97
	xor b                                            ; $7949: $a8
	db $ec                                           ; $794a: $ec
	call nz, Call_095_6442                           ; $794b: $c4 $42 $64
	di                                               ; $794e: $f3
	dec a                                            ; $794f: $3d
	ldh a, [c]                                       ; $7950: $f2

jr_095_7951:
	or $a0                                           ; $7951: $f6 $a0
	cpl                                              ; $7953: $2f
	ld b, e                                          ; $7954: $43
	ld b, [hl]                                       ; $7955: $46
	ld d, a                                          ; $7956: $57
	ld d, e                                          ; $7957: $53
	ld c, c                                          ; $7958: $49
	add hl, sp                                       ; $7959: $39
	xor b                                            ; $795a: $a8
	pop af                                           ; $795b: $f1
	halt                                             ; $795c: $76
	inc [hl]                                         ; $795d: $34
	db $ed                                           ; $795e: $ed
	jp nc, $2fa1                                     ; $795f: $d2 $a1 $2f

	ld [hl-], a                                      ; $7962: $32
	pop af                                           ; $7963: $f1
	add d                                            ; $7964: $82
	inc a                                            ; $7965: $3c
	adc e                                            ; $7966: $8b
	ldh a, [$72]                                     ; $7967: $f0 $72
	ld c, a                                          ; $7969: $4f
	inc de                                           ; $796a: $13
	pop af                                           ; $796b: $f1
	ld c, $3b                                        ; $796c: $0e $3b
	ccf                                              ; $796e: $3f
	dec a                                            ; $796f: $3d
	ld a, [hl-]                                      ; $7970: $3a
	xor l                                            ; $7971: $ad
	pop af                                           ; $7972: $f1
	or e                                             ; $7973: $b3
	di                                               ; $7974: $f3
	jp c, Jump_095_524a                              ; $7975: $da $4a $52

	dec sp                                           ; $7978: $3b
	dec a                                            ; $7979: $3d
	ld d, l                                          ; $797a: $55
	ld c, b                                          ; $797b: $48
	and e                                            ; $797c: $a3
	db $eb                                           ; $797d: $eb
	ld [hl], c                                       ; $797e: $71
	ld c, d                                          ; $797f: $4a
	ld a, $66                                        ; $7980: $3e $66
	xor b                                            ; $7982: $a8
	ldh a, [rHDMA1]                                  ; $7983: $f0 $51
	dec sp                                           ; $7985: $3b
	ccf                                              ; $7986: $3f
	ld d, l                                          ; $7987: $55
	ld c, [hl]                                       ; $7988: $4e
	ld b, d                                          ; $7989: $42
	xor h                                            ; $798a: $ac
	add a                                            ; $798b: $87
	ldh a, [$5d]                                     ; $798c: $f0 $5d

jr_095_798e:
	ld b, h                                          ; $798e: $44
	dec sp                                           ; $798f: $3b
	dec a                                            ; $7990: $3d
	ld b, c                                          ; $7991: $41
	ld b, h                                          ; $7992: $44
	inc a                                            ; $7993: $3c
	ld d, b                                          ; $7994: $50
	and b                                            ; $7995: $a0
	cpl                                              ; $7996: $2f
	ld b, e                                          ; $7997: $43
	rst JumpTable                                          ; $7998: $c7
	xor b                                            ; $7999: $a8
	ld b, b                                          ; $799a: $40
	ld c, l                                          ; $799b: $4d
	ld c, e                                          ; $799c: $4b
	inc [hl]                                         ; $799d: $34
	add a                                            ; $799e: $87
	ldh a, [$5d]                                     ; $799f: $f0 $5d
	ld b, h                                          ; $79a1: $44
	dec sp                                           ; $79a2: $3b
	dec a                                            ; $79a3: $3d
	ld c, h                                          ; $79a4: $4c
	and b                                            ; $79a5: $a0
	ld b, [hl]                                       ; $79a6: $46
	dec sp                                           ; $79a7: $3b
	inc [hl]                                         ; $79a8: $34
	pop af                                           ; $79a9: $f1
	nop                                              ; $79aa: $00
	pop af                                           ; $79ab: $f1
	ld l, b                                          ; $79ac: $68
	ld b, a                                          ; $79ad: $47
	inc de                                           ; $79ae: $13
	ldh a, [$e8]                                     ; $79af: $f0 $e8
	ld d, b                                          ; $79b1: $50
	ld a, [hl-]                                      ; $79b2: $3a
	ld e, h                                          ; $79b3: $5c
	ld d, [hl]                                       ; $79b4: $56
	dec [hl]                                         ; $79b5: $35
	ld b, b                                          ; $79b6: $40
	ld c, l                                          ; $79b7: $4d
	ld e, e                                          ; $79b8: $5b
	ld d, [hl]                                       ; $79b9: $56
	and b                                            ; $79ba: $a0
	cpl                                              ; $79bb: $2f
	ld [hl-], a                                      ; $79bc: $32
	ld e, d                                          ; $79bd: $5a
	add hl, sp                                       ; $79be: $39
	ld l, [hl]                                       ; $79bf: $6e
	dec sp                                           ; $79c0: $3b
	ccf                                              ; $79c1: $3f
	xor h                                            ; $79c2: $ac
	ldh a, [rHDMA1]                                  ; $79c3: $f0 $51
	dec sp                                           ; $79c5: $3b
	ccf                                              ; $79c6: $3f
	ld a, d                                          ; $79c7: $7a
	ld e, a                                          ; $79c8: $5f
	add hl, sp                                       ; $79c9: $39
	ld c, b                                          ; $79ca: $48
	ld [hl], $33                                     ; $79cb: $36 $33
	add hl, bc                                       ; $79cd: $09
	cpl                                              ; $79ce: $2f
	ld b, e                                          ; $79cf: $43
	ld e, b                                          ; $79d0: $58
	ccf                                              ; $79d1: $3f
	xor h                                            ; $79d2: $ac
	ld d, h                                          ; $79d3: $54
	ld c, l                                          ; $79d4: $4d
	inc a                                            ; $79d5: $3c
	ld d, b                                          ; $79d6: $50
	db $eb                                           ; $79d7: $eb
	ld e, c                                          ; $79d8: $59
	inc a                                            ; $79d9: $3c
	ld a, [hl-]                                      ; $79da: $3a
	and b                                            ; $79db: $a0
	cpl                                              ; $79dc: $2f
	ld b, e                                          ; $79dd: $43
	ld b, c                                          ; $79de: $41
	inc [hl]                                         ; $79df: $34
	ld b, [hl]                                       ; $79e0: $46
	ld c, l                                          ; $79e1: $4d
	ld c, e                                          ; $79e2: $4b
	xor h                                            ; $79e3: $ac
	db $ec                                           ; $79e4: $ec
	and $48                                          ; $79e5: $e6 $48
	and b                                            ; $79e7: $a0
	cpl                                              ; $79e8: $2f
	ld b, e                                          ; $79e9: $43
	db $ec                                           ; $79ea: $ec
	and $a0                                          ; $79eb: $e6 $a0
	xor $20                                          ; $79ed: $ee $20
	inc [hl]                                         ; $79ef: $34
	ld d, $a0                                        ; $79f0: $16 $a0
	cpl                                              ; $79f2: $2f
	ld b, e                                          ; $79f3: $43
	db $eb                                           ; $79f4: $eb
	rst FarCall                                          ; $79f5: $f7
	and c                                            ; $79f6: $a1
	ret                                              ; $79f7: $c9


	ld c, h                                          ; $79f8: $4c
	ld c, b                                          ; $79f9: $48
	and b                                            ; $79fa: $a0
	cpl                                              ; $79fb: $2f
	ld b, e                                          ; $79fc: $43
	ld l, e                                          ; $79fd: $6b
	inc a                                            ; $79fe: $3c
	db $f4                                           ; $79ff: $f4
	ld h, e                                          ; $7a00: $63
	ld l, h                                          ; $7a01: $6c
	sbc d                                            ; $7a02: $9a
	xor c                                            ; $7a03: $a9
	halt                                             ; $7a04: $76
	ld c, d                                          ; $7a05: $4a
	db $ec                                           ; $7a06: $ec
	cp c                                             ; $7a07: $b9
	ld d, b                                          ; $7a08: $50
	db $ed                                           ; $7a09: $ed
	db $d3                                           ; $7a0a: $d3
	ld b, a                                          ; $7a0b: $47
	ldh a, [rLCDC]                                   ; $7a0c: $f0 $40
	ld c, [hl]                                       ; $7a0e: $4e
	ld b, l                                          ; $7a0f: $45
	and b                                            ; $7a10: $a0
	cpl                                              ; $7a11: $2f
	ld b, e                                          ; $7a12: $43
	ld c, b                                          ; $7a13: $48
	inc hl                                           ; $7a14: $23
	db $ec                                           ; $7a15: $ec
	and $50                                          ; $7a16: $e6 $50
	ld a, $55                                        ; $7a18: $3e $55
	inc de                                           ; $7a1a: $13
	ld a, [hl-]                                      ; $7a1b: $3a
	jr c, jr_095_7a58                                ; $7a1c: $38 $3a

	ld [hl], h                                       ; $7a1e: $74
	and b                                            ; $7a1f: $a0
	ld c, b                                          ; $7a20: $48
	inc h                                            ; $7a21: $24
	ld c, b                                          ; $7a22: $48
	inc h                                            ; $7a23: $24
	ld c, b                                          ; $7a24: $48
	inc h                                            ; $7a25: $24
	xor b                                            ; $7a26: $a8
	ld l, a                                          ; $7a27: $6f
	dec sp                                           ; $7a28: $3b
	ccf                                              ; $7a29: $3f
	ld l, e                                          ; $7a2a: $6b
	ld c, d                                          ; $7a2b: $4a
	ld d, h                                          ; $7a2c: $54
	ld b, c                                          ; $7a2d: $41
	ld a, [hl-]                                      ; $7a2e: $3a
	ld b, a                                          ; $7a2f: $47
	inc de                                           ; $7a30: $13
	ldh a, [$32]                                     ; $7a31: $f0 $32
	ldh a, [$7e]                                     ; $7a33: $f0 $7e
	ld a, [hl-]                                      ; $7a35: $3a
	ld b, c                                          ; $7a36: $41
	ld b, h                                          ; $7a37: $44
	ld e, a                                          ; $7a38: $5f
	add hl, sp                                       ; $7a39: $39
	ld c, b                                          ; $7a3a: $48
	and b                                            ; $7a3b: $a0
	cpl                                              ; $7a3c: $2f
	ld b, e                                          ; $7a3d: $43
	ld c, b                                          ; $7a3e: $48
	inc h                                            ; $7a3f: $24
	ld c, b                                          ; $7a40: $48
	inc h                                            ; $7a41: $24
	and b                                            ; $7a42: $a0
	db $ed                                           ; $7a43: $ed
	add [hl]                                         ; $7a44: $86
	ldh a, [$d4]                                     ; $7a45: $f0 $d4
	ldh a, [c]                                       ; $7a47: $f2
	inc hl                                           ; $7a48: $23
	ld b, a                                          ; $7a49: $47
	ld c, e                                          ; $7a4a: $4b
	inc de                                           ; $7a4b: $13
	ldh a, [$67]                                     ; $7a4c: $f0 $67
	ldh a, [$9f]                                     ; $7a4e: $f0 $9f
	ld b, [hl]                                       ; $7a50: $46
	ld c, [hl]                                       ; $7a51: $4e
	ld b, c                                          ; $7a52: $41
	ld b, h                                          ; $7a53: $44
	ld e, l                                          ; $7a54: $5d
	ld e, d                                          ; $7a55: $5a
	xor e                                            ; $7a56: $ab
	db $f4                                           ; $7a57: $f4

jr_095_7a58:
	ld h, d                                          ; $7a58: $62
	ldh a, [rVBK]                                    ; $7a59: $f0 $4f
	ld a, [hl-]                                      ; $7a5b: $3a
	ld c, c                                          ; $7a5c: $49
	ld e, h                                          ; $7a5d: $5c
	ld b, a                                          ; $7a5e: $47
	inc [hl]                                         ; $7a5f: $34
	ldh a, [rHDMA5]                                  ; $7a60: $f0 $55
	pop af                                           ; $7a62: $f1
	add b                                            ; $7a63: $80
	ld a, e                                          ; $7a64: $7b
	inc a                                            ; $7a65: $3c
	ld d, a                                          ; $7a66: $57
	ld c, b                                          ; $7a67: $48
	and b                                            ; $7a68: $a0
	cpl                                              ; $7a69: $2f
	ld b, e                                          ; $7a6a: $43
	ld c, e                                          ; $7a6b: $4b
	ld b, [hl]                                       ; $7a6c: $46
	xor l                                            ; $7a6d: $ad
	ld [hl-], a                                      ; $7a6e: $32
	pop af                                           ; $7a6f: $f1

jr_095_7a70:
	add d                                            ; $7a70: $82
	inc a                                            ; $7a71: $3c
	ld b, a                                          ; $7a72: $47
	ld b, b                                          ; $7a73: $40
	ld b, c                                          ; $7a74: $41
	ld a, [hl-]                                      ; $7a75: $3a
	ld a, a                                          ; $7a76: $7f
	ld d, e                                          ; $7a77: $53
	ld d, c                                          ; $7a78: $51
	ld c, [hl]                                       ; $7a79: $4e
	inc sp                                           ; $7a7a: $33
	add hl, bc                                       ; $7a7b: $09
	ld d, $4f                                        ; $7a7c: $16 $4f
	db $ec                                           ; $7a7e: $ec
	reti                                             ; $7a7f: $d9


	inc de                                           ; $7a80: $13
	ldh a, [$32]                                     ; $7a81: $f0 $32
	ldh a, [$7e]                                     ; $7a83: $f0 $7e
	ld a, [hl-]                                      ; $7a85: $3a
	ldh a, [$f8]                                     ; $7a86: $f0 $f8
	dec sp                                           ; $7a88: $3b
	ccf                                              ; $7a89: $3f
	ld [hl], a                                       ; $7a8a: $77
	dec sp                                           ; $7a8b: $3b
	ccf                                              ; $7a8c: $3f
	ld c, [hl]                                       ; $7a8d: $4e
	ld b, d                                          ; $7a8e: $42
	ld c, h                                          ; $7a8f: $4c
	ld c, b                                          ; $7a90: $48
	and b                                            ; $7a91: $a0
	cpl                                              ; $7a92: $2f
	ld b, e                                          ; $7a93: $43
	ld e, [hl]                                       ; $7a94: $5e
	dec sp                                           ; $7a95: $3b
	ld c, b                                          ; $7a96: $48
	jr c, jr_095_7acd                                ; $7a97: $38 $34

	jr c, jr_095_7b09                                ; $7a99: $38 $6e

	ld c, b                                          ; $7a9b: $48
	inc hl                                           ; $7a9c: $23
	xor h                                            ; $7a9d: $ac
	ldh a, [$08]                                     ; $7a9e: $f0 $08
	ld d, b                                          ; $7aa0: $50
	inc [hl]                                         ; $7aa1: $34
	inc a                                            ; $7aa2: $3c
	ld b, c                                          ; $7aa3: $41
	di                                               ; $7aa4: $f3
	ld e, a                                          ; $7aa5: $5f
	ld e, h                                          ; $7aa6: $5c
	ld a, [hl-]                                      ; $7aa7: $3a

Call_095_7aa8:
	pop hl                                           ; $7aa8: $e1
	ld b, l                                          ; $7aa9: $45
	ld d, a                                          ; $7aaa: $57
	inc de                                           ; $7aab: $13
	ret                                              ; $7aac: $c9


	ldh a, [$32]                                     ; $7aad: $f0 $32
	ldh a, [$7e]                                     ; $7aaf: $f0 $7e
	ld a, [hl-]                                      ; $7ab1: $3a
	pop af                                           ; $7ab2: $f1
	ld b, [hl]                                       ; $7ab3: $46
	ld b, d                                          ; $7ab4: $42
	ldh a, [$38]                                     ; $7ab5: $f0 $38
	ld d, e                                          ; $7ab7: $53
	inc de                                           ; $7ab8: $13
	ldh a, [$8a]                                     ; $7ab9: $f0 $8a
	ldh a, [rHDMA2]                                  ; $7abb: $f0 $52
	ldh a, [rSB]                                     ; $7abd: $f0 $01
	ld d, e                                          ; $7abf: $53
	ld b, [hl]                                       ; $7ac0: $46
	ld c, [hl]                                       ; $7ac1: $4e
	db $ec                                           ; $7ac2: $ec
	ret c                                            ; $7ac3: $d8

	and b                                            ; $7ac4: $a0
	ld c, b                                          ; $7ac5: $48
	inc h                                            ; $7ac6: $24
	ld c, b                                          ; $7ac7: $48
	inc h                                            ; $7ac8: $24
	ld c, b                                          ; $7ac9: $48
	inc h                                            ; $7aca: $24
	xor h                                            ; $7acb: $ac
	db $ed                                           ; $7acc: $ed

jr_095_7acd:
	ld b, c                                          ; $7acd: $41
	ld b, a                                          ; $7ace: $47
	ld b, b                                          ; $7acf: $40
	add hl, sp                                       ; $7ad0: $39
	ld [hl], a                                       ; $7ad1: $77
	dec sp                                           ; $7ad2: $3b
	ccf                                              ; $7ad3: $3f
	ld c, [hl]                                       ; $7ad4: $4e
	and c                                            ; $7ad5: $a1
	cpl                                              ; $7ad6: $2f
	ld b, e                                          ; $7ad7: $43
	db $ec                                           ; $7ad8: $ec
	dec l                                            ; $7ad9: $2d
	ld b, h                                          ; $7ada: $44
	ld b, l                                          ; $7adb: $45
	and b                                            ; $7adc: $a0
	ld b, [hl]                                       ; $7add: $46
	ld d, a                                          ; $7ade: $57
	ld d, e                                          ; $7adf: $53
	ld c, c                                          ; $7ae0: $49
	ld c, b                                          ; $7ae1: $48
	and b                                            ; $7ae2: $a0
	cpl                                              ; $7ae3: $2f
	ld b, e                                          ; $7ae4: $43
	db $ec                                           ; $7ae5: $ec
	and $50                                          ; $7ae6: $e6 $50
	ld a, $55                                        ; $7ae8: $3e $55
	ld a, [hl-]                                      ; $7aea: $3a
	jr c, jr_095_7b32                                ; $7aeb: $38 $45

	xor h                                            ; $7aed: $ac
	jr c, jr_095_7a70                                ; $7aee: $38 $80

	ld c, a                                          ; $7af0: $4f
	ld l, h                                          ; $7af1: $6c
	dec a                                            ; $7af2: $3d
	jr c, jr_095_7b3c                                ; $7af3: $38 $47

	pop af                                           ; $7af5: $f1
	rra                                              ; $7af6: $1f
	ld a, a                                          ; $7af7: $7f
	ld a, [hl-]                                      ; $7af8: $3a
	ldh a, [$38]                                     ; $7af9: $f0 $38
	ld d, e                                          ; $7afb: $53
	inc de                                           ; $7afc: $13
	adc e                                            ; $7afd: $8b
	ld e, h                                          ; $7afe: $5c
	ld b, h                                          ; $7aff: $44
	ld b, l                                          ; $7b00: $45
	inc [hl]                                         ; $7b01: $34
	halt                                             ; $7b02: $76
	ld c, e                                          ; $7b03: $4b
	and b                                            ; $7b04: $a0
	ld e, [hl]                                       ; $7b05: $5e
	dec sp                                           ; $7b06: $3b
	ld c, b                                          ; $7b07: $48
	and b                                            ; $7b08: $a0

jr_095_7b09:
	cpl                                              ; $7b09: $2f
	ld b, e                                          ; $7b0a: $43
	ld l, d                                          ; $7b0b: $6a
	ld d, d                                          ; $7b0c: $52
	ld c, d                                          ; $7b0d: $4a
	ldh a, [rOCPS]                                   ; $7b0e: $f0 $6a
	ld d, a                                          ; $7b10: $57
	ld c, d                                          ; $7b11: $4a
	inc de                                           ; $7b12: $13
	jr c, jr_095_7b4d                                ; $7b13: $38 $38

	ld b, c                                          ; $7b15: $41
	ld b, h                                          ; $7b16: $44
	ld b, l                                          ; $7b17: $45
	and b                                            ; $7b18: $a0
	xor $1f                                          ; $7b19: $ee $1f
	xor l                                            ; $7b1b: $ad
	ld b, [hl]                                       ; $7b1c: $46
	ld d, a                                          ; $7b1d: $57
	ld d, e                                          ; $7b1e: $53
	ld c, c                                          ; $7b1f: $49
	xor l                                            ; $7b20: $ad
	ld b, b                                          ; $7b21: $40
	ld c, l                                          ; $7b22: $4d
	ld e, e                                          ; $7b23: $5b
	ld d, [hl]                                       ; $7b24: $56
	ld c, b                                          ; $7b25: $48
	ld h, a                                          ; $7b26: $67
	ld d, l                                          ; $7b27: $55
	ld c, h                                          ; $7b28: $4c
	and b                                            ; $7b29: $a0
	cpl                                              ; $7b2a: $2f
	ld b, e                                          ; $7b2b: $43
	pop af                                           ; $7b2c: $f1
	rra                                              ; $7b2d: $1f
	ld a, a                                          ; $7b2e: $7f
	sub h                                            ; $7b2f: $94
	ld a, $3f                                        ; $7b30: $3e $3f

jr_095_7b32:
	ld c, h                                          ; $7b32: $4c
	and b                                            ; $7b33: $a0
	cpl                                              ; $7b34: $2f
	ld b, e                                          ; $7b35: $43
	db $ec                                           ; $7b36: $ec
	ld a, [de]                                       ; $7b37: $1a
	ldh a, [$0a]                                     ; $7b38: $f0 $0a
	ldh a, [c]                                       ; $7b3a: $f2
	rlca                                             ; $7b3b: $07

jr_095_7b3c:
	ld e, h                                          ; $7b3c: $5c
	ld c, a                                          ; $7b3d: $4f
	inc de                                           ; $7b3e: $13
	ldh a, [$5c]                                     ; $7b3f: $f0 $5c
	ld d, l                                          ; $7b41: $55
	ld a, [hl-]                                      ; $7b42: $3a
	jr c, jr_095_7b7f                                ; $7b43: $38 $3a

	ld [hl], h                                       ; $7b45: $74
	xor b                                            ; $7b46: $a8
	jr c, jr_095_7b81                                ; $7b47: $38 $38

	ld d, h                                          ; $7b49: $54
	ld c, c                                          ; $7b4a: $49
	pop af                                           ; $7b4b: $f1
	adc d                                            ; $7b4c: $8a

jr_095_7b4d:
	ld d, a                                          ; $7b4d: $57
	ld b, b                                          ; $7b4e: $40
	add hl, sp                                       ; $7b4f: $39
	ld b, h                                          ; $7b50: $44
	ld c, b                                          ; $7b51: $48
	and b                                            ; $7b52: $a0
	cpl                                              ; $7b53: $2f
	ld h, $f0                                        ; $7b54: $26 $f0
	db $fd                                           ; $7b56: $fd
	ld [hl], e                                       ; $7b57: $73
	inc [hl]                                         ; $7b58: $34
	ldh a, [$a6]                                     ; $7b59: $f0 $a6
	ldh a, [$a6]                                     ; $7b5b: $f0 $a6
	ld e, c                                          ; $7b5d: $59
	ld [hl], e                                       ; $7b5e: $73
	ld c, b                                          ; $7b5f: $48
	ldh a, [$a9]                                     ; $7b60: $f0 $a9
	di                                               ; $7b62: $f3
	inc bc                                           ; $7b63: $03
	ld a, c                                          ; $7b64: $79
	ld b, l                                          ; $7b65: $45
	xor e                                            ; $7b66: $ab
	ld c, b                                          ; $7b67: $48
	ldh a, [$f2]                                     ; $7b68: $f0 $f2
	ldh a, [rAUD3LOW]                                ; $7b6a: $f0 $1d
	db $f4                                           ; $7b6c: $f4
	ccf                                              ; $7b6d: $3f
	ldh a, [$2f]                                     ; $7b6e: $f0 $2f
	ldh a, [$2f]                                     ; $7b70: $f0 $2f
	ldh a, [$7c]                                     ; $7b72: $f0 $7c
	ld [hl], e                                       ; $7b74: $73
	ld l, c                                          ; $7b75: $69
	ld c, b                                          ; $7b76: $48
	dec h                                            ; $7b77: $25
	add hl, bc                                       ; $7b78: $09
	cpl                                              ; $7b79: $2f
	ld b, e                                          ; $7b7a: $43
	ld b, c                                          ; $7b7b: $41
	ld [hl], $3a                                     ; $7b7c: $36 $3a
	ld b, c                                          ; $7b7e: $41

jr_095_7b7f:
	ld b, h                                          ; $7b7f: $44
	and c                                            ; $7b80: $a1

jr_095_7b81:
	cpl                                              ; $7b81: $2f
	ld b, e                                          ; $7b82: $43
	ld l, e                                          ; $7b83: $6b
	ld b, h                                          ; $7b84: $44
	ld d, h                                          ; $7b85: $54
	ld c, l                                          ; $7b86: $4d
	xor c                                            ; $7b87: $a9
	ldh a, [rBGP]                                    ; $7b88: $f0 $47
	ldh a, [c]                                       ; $7b8a: $f2
	ld [bc], a                                       ; $7b8b: $02
	ld e, e                                          ; $7b8c: $5b
	ld d, [hl]                                       ; $7b8d: $56
	ld c, b                                          ; $7b8e: $48
	ld a, [hl-]                                      ; $7b8f: $3a
	jr c, jr_095_7bd7                                ; $7b90: $38 $45

	add hl, sp                                       ; $7b92: $39
	ld b, h                                          ; $7b93: $44
	ld c, b                                          ; $7b94: $48
	and b                                            ; $7b95: $a0
	cpl                                              ; $7b96: $2f
	ld h, $f0                                        ; $7b97: $26 $f0
	and [hl]                                         ; $7b99: $a6
	ldh a, [$a6]                                     ; $7b9a: $f0 $a6
	ld [hl], e                                       ; $7b9c: $73
	ld c, b                                          ; $7b9d: $48
	ld e, d                                          ; $7b9e: $5a
	add hl, sp                                       ; $7b9f: $39
	ld a, $3d                                        ; $7ba0: $3e $3d
	xor e                                            ; $7ba2: $ab
	ld c, b                                          ; $7ba3: $48
	ld l, e                                          ; $7ba4: $6b
	inc a                                            ; $7ba5: $3c
	ld c, b                                          ; $7ba6: $48
	dec sp                                           ; $7ba7: $3b
	dec a                                            ; $7ba8: $3d
	ld b, d                                          ; $7ba9: $42
	inc a                                            ; $7baa: $3c
	ld c, b                                          ; $7bab: $48
	dec h                                            ; $7bac: $25
	add hl, bc                                       ; $7bad: $09
	cpl                                              ; $7bae: $2f
	ld b, e                                          ; $7baf: $43
	ld e, d                                          ; $7bb0: $5a
	add hl, sp                                       ; $7bb1: $39
	ld l, [hl]                                       ; $7bb2: $6e
	ld d, b                                          ; $7bb3: $50
	xor h                                            ; $7bb4: $ac
	ldh a, [rOCPS]                                   ; $7bb5: $f0 $6a
	ldh a, [$9f]                                     ; $7bb7: $f0 $9f
	ldh a, [$c6]                                     ; $7bb9: $f0 $c6
	ld b, d                                          ; $7bbb: $42
	ld b, l                                          ; $7bbc: $45
	add hl, sp                                       ; $7bbd: $39
	ld b, h                                          ; $7bbe: $44
	sub a                                            ; $7bbf: $97
	ld c, b                                          ; $7bc0: $48
	dec [hl]                                         ; $7bc1: $35
	ldh a, [$98]                                     ; $7bc2: $f0 $98
	ld b, d                                          ; $7bc4: $42
	ld b, h                                          ; $7bc5: $44
	and c                                            ; $7bc6: $a1
	ld d, d                                          ; $7bc7: $52
	jr c, jr_095_7c05                                ; $7bc8: $38 $3b

	dec a                                            ; $7bca: $3d
	ld a, [hl-]                                      ; $7bcb: $3a
	ld [hl], h                                       ; $7bcc: $74
	ld c, b                                          ; $7bcd: $48
	and b                                            ; $7bce: $a0
	cpl                                              ; $7bcf: $2f
	ld b, e                                          ; $7bd0: $43
	db $ed                                           ; $7bd1: $ed
	ld e, d                                          ; $7bd2: $5a
	add hl, bc                                       ; $7bd3: $09
	ld e, d                                          ; $7bd4: $5a
	ld d, h                                          ; $7bd5: $54
	ld b, a                                          ; $7bd6: $47

jr_095_7bd7:
	pop af                                           ; $7bd7: $f1
	add c                                            ; $7bd8: $81
	ld c, c                                          ; $7bd9: $49
	ld a, $3d                                        ; $7bda: $3e $3d
	ld b, d                                          ; $7bdc: $42
	inc a                                            ; $7bdd: $3c
	ld a, [hl-]                                      ; $7bde: $3a
	ld e, c                                          ; $7bdf: $59
	xor b                                            ; $7be0: $a8
	ldh a, [rAUD1LOW]                                ; $7be1: $f0 $13
	jr c, @+$47                                      ; $7be3: $38 $45

	ld e, c                                          ; $7be5: $59
	and b                                            ; $7be6: $a0
	cpl                                              ; $7be7: $2f
	ld b, e                                          ; $7be8: $43
	ld l, e                                          ; $7be9: $6b
	inc a                                            ; $7bea: $3c
	db $ed                                           ; $7beb: $ed
	ld bc, $6c4e                                     ; $7bec: $01 $4e $6c
	dec a                                            ; $7bef: $3d
	jr c, jr_095_7c36                                ; $7bf0: $38 $44

	xor b                                            ; $7bf2: $a8
	ld c, a                                          ; $7bf3: $4f
	ld a, $3c                                        ; $7bf4: $3e $3c
	ld a, $3f                                        ; $7bf6: $3e $3f
	inc [hl]                                         ; $7bf8: $34
	ld d, h                                          ; $7bf9: $54
	ld c, l                                          ; $7bfa: $4d
	inc a                                            ; $7bfb: $3c
	ld a, [hl-]                                      ; $7bfc: $3a
	and c                                            ; $7bfd: $a1
	ld b, b                                          ; $7bfe: $40
	ld b, d                                          ; $7bff: $42
	add hl, sp                                       ; $7c00: $39
	ld h, c                                          ; $7c01: $61
	di                                               ; $7c02: $f3
	ld a, $f1                                        ; $7c03: $3e $f1

jr_095_7c05:
	xor l                                            ; $7c05: $ad
	ld d, c                                          ; $7c06: $51
	ld c, [hl]                                       ; $7c07: $4e
	inc a                                            ; $7c08: $3c
	ld d, b                                          ; $7c09: $50
	inc de                                           ; $7c0a: $13
	db $ec                                           ; $7c0b: $ec
	ld [$a048], sp                                   ; $7c0c: $08 $48 $a0
	ld d, d                                          ; $7c0f: $52
	dec a                                            ; $7c10: $3d
	ldh a, [$bb]                                     ; $7c11: $f0 $bb
	pop af                                           ; $7c13: $f1
	sub [hl]                                         ; $7c14: $96
	pop af                                           ; $7c15: $f1
	ld l, $44                                        ; $7c16: $2e $44
	ld b, l                                          ; $7c18: $45
	ld e, c                                          ; $7c19: $59
	and b                                            ; $7c1a: $a0
	cpl                                              ; $7c1b: $2f
	ld b, e                                          ; $7c1c: $43
	ld a, [hl-]                                      ; $7c1d: $3a
	ld b, a                                          ; $7c1e: $47
	ld e, c                                          ; $7c1f: $59
	scf                                              ; $7c20: $37
	di                                               ; $7c21: $f3
	ld a, $f1                                        ; $7c22: $3e $f1
	xor l                                            ; $7c24: $ad
	scf                                              ; $7c25: $37
	inc de                                           ; $7c26: $13
	ld h, h                                          ; $7c27: $64
	ld e, c                                          ; $7c28: $59
	jr c, jr_095_7c62                                ; $7c29: $38 $37

	db $ec                                           ; $7c2b: $ec
	and $37                                          ; $7c2c: $e6 $37
	and d                                            ; $7c2e: $a2
	xor $20                                          ; $7c2f: $ee $20
	ld d, $48                                        ; $7c31: $16 $48
	and b                                            ; $7c33: $a0
	ld b, [hl]                                       ; $7c34: $46
	ld e, c                                          ; $7c35: $59

jr_095_7c36:
	dec sp                                           ; $7c36: $3b
	inc [hl]                                         ; $7c37: $34
	ld b, b                                          ; $7c38: $40
	ld c, l                                          ; $7c39: $4d
	and d                                            ; $7c3a: $a2
	cpl                                              ; $7c3b: $2f
	ld b, e                                          ; $7c3c: $43
	ld b, b                                          ; $7c3d: $40
	ld d, h                                          ; $7c3e: $54
	ld b, a                                          ; $7c3f: $47
	pop af                                           ; $7c40: $f1
	add c                                            ; $7c41: $81
	ld h, c                                          ; $7c42: $61
	ccf                                              ; $7c43: $3f
	dec a                                            ; $7c44: $3d
	ld b, l                                          ; $7c45: $45
	and b                                            ; $7c46: $a0
	ld b, l                                          ; $7c47: $45
	inc a                                            ; $7c48: $3c
	dec sp                                           ; $7c49: $3b
	dec a                                            ; $7c4a: $3d
	ld [hl], h                                       ; $7c4b: $74
	xor b                                            ; $7c4c: $a8
	db $ed                                           ; $7c4d: $ed
	ld bc, $423d                                     ; $7c4e: $01 $3d $42
	and b                                            ; $7c51: $a0
	cpl                                              ; $7c52: $2f
	ld b, e                                          ; $7c53: $43
	di                                               ; $7c54: $f3
	ld a, $f1                                        ; $7c55: $3e $f1
	xor l                                            ; $7c57: $ad
	ld d, c                                          ; $7c58: $51
	ld c, [hl]                                       ; $7c59: $4e
	ld c, c                                          ; $7c5a: $49
	inc a                                            ; $7c5b: $3c
	inc de                                           ; $7c5c: $13
	add d                                            ; $7c5d: $82
	dec sp                                           ; $7c5e: $3b
	ccf                                              ; $7c5f: $3f
	ld a, [hl-]                                      ; $7c60: $3a
	inc a                                            ; $7c61: $3c

jr_095_7c62:
	dec sp                                           ; $7c62: $3b
	dec a                                            ; $7c63: $3d
	and c                                            ; $7c64: $a1
	ld b, [hl]                                       ; $7c65: $46
	inc [hl]                                         ; $7c66: $34
	ld d, h                                          ; $7c67: $54
	ld c, l                                          ; $7c68: $4d
	ld c, h                                          ; $7c69: $4c
	xor c                                            ; $7c6a: $a9
	ldh a, [rHDMA1]                                  ; $7c6b: $f0 $51
	ld h, c                                          ; $7c6d: $61
	di                                               ; $7c6e: $f3
	add d                                            ; $7c6f: $82
	inc a                                            ; $7c70: $3c
	ld d, b                                          ; $7c71: $50
	ldh a, [c]                                       ; $7c72: $f2
	ld a, a                                          ; $7c73: $7f
	ld c, l                                          ; $7c74: $4d
	ccf                                              ; $7c75: $3f
	pop af                                           ; $7c76: $f1
	inc l                                            ; $7c77: $2c
	pop af                                           ; $7c78: $f1
	sbc [hl]                                         ; $7c79: $9e
	ldh a, [rTAC]                                    ; $7c7a: $f0 $07
	ldh a, [c]                                       ; $7c7c: $f2
	inc hl                                           ; $7c7d: $23
	add b                                            ; $7c7e: $80
	ld c, c                                          ; $7c7f: $49
	inc de                                           ; $7c80: $13
	ldh a, [$c6]                                     ; $7c81: $f0 $c6
	pop af                                           ; $7c83: $f1
	and h                                            ; $7c84: $a4
	ldh a, [c]                                       ; $7c85: $f2
	rst $38                                          ; $7c86: $ff
	di                                               ; $7c87: $f3
	pop bc                                           ; $7c88: $c1
	ld b, d                                          ; $7c89: $42
	dec a                                            ; $7c8a: $3d
	ld [hl], c                                       ; $7c8b: $71
	ld b, a                                          ; $7c8c: $47
	ldh a, [$67]                                     ; $7c8d: $f0 $67
	di                                               ; $7c8f: $f3
	ld a, $51                                        ; $7c90: $3e $51
	ld c, [hl]                                       ; $7c92: $4e
	ld b, d                                          ; $7c93: $42
	and b                                            ; $7c94: $a0
	cpl                                              ; $7c95: $2f
	ld b, e                                          ; $7c96: $43
	ldh a, [$c6]                                     ; $7c97: $f0 $c6
	pop af                                           ; $7c99: $f1
	and h                                            ; $7c9a: $a4
	ldh a, [c]                                       ; $7c9b: $f2
	rst $38                                          ; $7c9c: $ff
	di                                               ; $7c9d: $f3
	pop bc                                           ; $7c9e: $c1
	ld c, b                                          ; $7c9f: $48
	and c                                            ; $7ca0: $a1
	ld b, [hl]                                       ; $7ca1: $46
	dec sp                                           ; $7ca2: $3b
	ld [hl], $37                                     ; $7ca3: $36 $37
	inc de                                           ; $7ca5: $13
	ld l, d                                          ; $7ca6: $6a
	ld b, d                                          ; $7ca7: $42
	ld c, e                                          ; $7ca8: $4b
	ldh a, [$0c]                                     ; $7ca9: $f0 $0c
	inc a                                            ; $7cab: $3c
	ld a, [hl-]                                      ; $7cac: $3a
	inc a                                            ; $7cad: $3c
	dec sp                                           ; $7cae: $3b
	dec a                                            ; $7caf: $3d
	sbc d                                            ; $7cb0: $9a
	ld b, a                                          ; $7cb1: $47
	ld a, $3f                                        ; $7cb2: $3e $3f
	and d                                            ; $7cb4: $a2
	ld b, b                                          ; $7cb5: $40
	ld c, l                                          ; $7cb6: $4d
	ld e, e                                          ; $7cb7: $5b
	ld d, [hl]                                       ; $7cb8: $56
	inc [hl]                                         ; $7cb9: $34
	ld b, [hl]                                       ; $7cba: $46
	ld d, a                                          ; $7cbb: $57
	ld d, e                                          ; $7cbc: $53
	ld c, c                                          ; $7cbd: $49
	ld c, h                                          ; $7cbe: $4c
	and b                                            ; $7cbf: $a0
	cpl                                              ; $7cc0: $2f
	ld b, e                                          ; $7cc1: $43
	ld b, [hl]                                       ; $7cc2: $46
	inc [hl]                                         ; $7cc3: $34
	db $ec                                           ; $7cc4: $ec
	and $ad                                          ; $7cc5: $e6 $ad
	ld [$48be], a                                    ; $7cc7: $ea $be $48
	and b                                            ; $7cca: $a0
	cpl                                              ; $7ccb: $2f
	ld [hl-], a                                      ; $7ccc: $32
	ld b, [hl]                                       ; $7ccd: $46
	ld c, l                                          ; $7cce: $4d
	ld c, e                                          ; $7ccf: $4b
	ld l, l                                          ; $7cd0: $6d
	ldh a, [$65]                                     ; $7cd1: $f0 $65
	xor $10                                          ; $7cd3: $ee $10
	xor b                                            ; $7cd5: $a8
	ld a, a                                          ; $7cd6: $7f
	ld b, a                                          ; $7cd7: $47
	ld a, [hl-]                                      ; $7cd8: $3a
	ld c, [hl]                                       ; $7cd9: $4e
	ld a, [hl-]                                      ; $7cda: $3a
	ld [hl], h                                       ; $7cdb: $74
	and e                                            ; $7cdc: $a3
	cpl                                              ; $7cdd: $2f
	ld [hl-], a                                      ; $7cde: $32
	ld b, [hl]                                       ; $7cdf: $46
	ld e, c                                          ; $7ce0: $59
	xor h                                            ; $7ce1: $ac
	ld l, d                                          ; $7ce2: $6a
	ld l, b                                          ; $7ce3: $68
	ld c, a                                          ; $7ce4: $4f
	ldh a, [$f3]                                     ; $7ce5: $f0 $f3
	ld c, l                                          ; $7ce7: $4d
	dec a                                            ; $7ce8: $3d
	ld a, [hl-]                                      ; $7ce9: $3a
	xor b                                            ; $7cea: $a8
	pop af                                           ; $7ceb: $f1
	ld d, $38                                        ; $7cec: $16 $38
	ld c, d                                          ; $7cee: $4a
	inc [hl]                                         ; $7cef: $34
	ldh a, [rSVBK]                                   ; $7cf0: $f0 $70
	ld b, a                                          ; $7cf2: $47
	ld a, d                                          ; $7cf3: $7a
	ld e, a                                          ; $7cf4: $5f
	add hl, sp                                       ; $7cf5: $39
	and e                                            ; $7cf6: $a3
	cpl                                              ; $7cf7: $2f
	ld [hl-], a                                      ; $7cf8: $32
	ld b, [hl]                                       ; $7cf9: $46
	inc [hl]                                         ; $7cfa: $34
	ld b, [hl]                                       ; $7cfb: $46
	ld c, l                                          ; $7cfc: $4d
	ld c, e                                          ; $7cfd: $4b
	inc de                                           ; $7cfe: $13
	db $ec                                           ; $7cff: $ec
	and $ec                                          ; $7d00: $e6 $ec
	ret c                                            ; $7d02: $d8

	inc a                                            ; $7d03: $3c
	and e                                            ; $7d04: $a3
	cpl                                              ; $7d05: $2f
	ld b, e                                          ; $7d06: $43
	ld l, e                                          ; $7d07: $6b

jr_095_7d08:
	ld a, $3f                                        ; $7d08: $3e $3f
	ld c, [hl]                                       ; $7d0a: $4e
	ld b, c                                          ; $7d0b: $41
	ld b, h                                          ; $7d0c: $44
	ld e, a                                          ; $7d0d: $5f
	add hl, sp                                       ; $7d0e: $39
	ld c, b                                          ; $7d0f: $48
	and b                                            ; $7d10: $a0
	ld l, d                                          ; $7d11: $6a
	ld l, b                                          ; $7d12: $68
	ld d, h                                          ; $7d13: $54
	ld b, b                                          ; $7d14: $40
	ld c, e                                          ; $7d15: $4b
	inc de                                           ; $7d16: $13
	ldh a, [$e1]                                     ; $7d17: $f0 $e1
	ld d, e                                          ; $7d19: $53
	ld e, b                                          ; $7d1a: $58
	ld a, [hl-]                                      ; $7d1b: $3a
	jr c, jr_095_7d81                                ; $7d1c: $38 $63

	ld b, l                                          ; $7d1e: $45
	ld c, b                                          ; $7d1f: $48
	and b                                            ; $7d20: $a0
	cpl                                              ; $7d21: $2f
	ld b, e                                          ; $7d22: $43
	ldh a, [$98]                                     ; $7d23: $f0 $98
	inc a                                            ; $7d25: $3c
	ld h, d                                          ; $7d26: $62
	add b                                            ; $7d27: $80
	ld e, l                                          ; $7d28: $5d
	ccf                                              ; $7d29: $3f
	ld c, [hl]                                       ; $7d2a: $4e
	inc de                                           ; $7d2b: $13
	ld l, h                                          ; $7d2c: $6c
	dec a                                            ; $7d2d: $3d
	jr c, jr_095_7d74                                ; $7d2e: $38 $44

	ld a, [hl-]                                      ; $7d30: $3a
	xor l                                            ; $7d31: $ad
	add hl, sp                                       ; $7d32: $39
	ld e, c                                          ; $7d33: $59
	ld b, c                                          ; $7d34: $41
	ld c, b                                          ; $7d35: $48
	inc [hl]                                         ; $7d36: $34
	pop af                                           ; $7d37: $f1
	dec l                                            ; $7d38: $2d
	ld h, d                                          ; $7d39: $62
	inc a                                            ; $7d3a: $3c
	ld e, l                                          ; $7d3b: $5d
	ld c, l                                          ; $7d3c: $4d
	ld c, [hl]                                       ; $7d3d: $4e
	inc de                                           ; $7d3e: $13
	db $ec                                           ; $7d3f: $ec
	cp $ec                                           ; $7d40: $fe $ec
	ret c                                            ; $7d42: $d8

	ld a, [hl-]                                      ; $7d43: $3a
	and b                                            ; $7d44: $a0
	cpl                                              ; $7d45: $2f
	ld b, e                                          ; $7d46: $43
	ld b, c                                          ; $7d47: $41
	ld [hl], $18                                     ; $7d48: $36 $18
	add hl, bc                                       ; $7d4a: $09
	cpl                                              ; $7d4b: $2f
	ld b, e                                          ; $7d4c: $43
	ld l, e                                          ; $7d4d: $6b
	ld b, h                                          ; $7d4e: $44
	ld [hl], $18                                     ; $7d4f: $36 $18
	add hl, bc                                       ; $7d51: $09
	cpl                                              ; $7d52: $2f
	ld b, e                                          ; $7d53: $43
	ldh a, [$9b]                                     ; $7d54: $f0 $9b
	ldh a, [c]                                       ; $7d56: $f2
	ld h, a                                          ; $7d57: $67
	jr c, jr_095_7d99                                ; $7d58: $38 $3f

	ld a, b                                          ; $7d5a: $78
	ld c, [hl]                                       ; $7d5b: $4e
	sub a                                            ; $7d5c: $97
	ld c, b                                          ; $7d5d: $48
	jr jr_095_7d69                                   ; $7d5e: $18 $09

	ld e, h                                          ; $7d60: $5c
	ld d, [hl]                                       ; $7d61: $56
	ld e, c                                          ; $7d62: $59
	dec sp                                           ; $7d63: $3b
	and d                                            ; $7d64: $a2
	cpl                                              ; $7d65: $2f
	ld b, e                                          ; $7d66: $43
	ld a, [hl-]                                      ; $7d67: $3a
	inc [hl]                                         ; $7d68: $34

jr_095_7d69:
	ld l, e                                          ; $7d69: $6b
	ld b, h                                          ; $7d6a: $44
	and d                                            ; $7d6b: $a2
	cpl                                              ; $7d6c: $2f
	ld b, e                                          ; $7d6d: $43
	ldh a, [rSB]                                     ; $7d6e: $f0 $01
	ldh a, [rSB]                                     ; $7d70: $f0 $01
	dec sp                                           ; $7d72: $3b

jr_095_7d73:
	and d                                            ; $7d73: $a2

jr_095_7d74:
	ld h, c                                          ; $7d74: $61
	ld h, [hl]                                       ; $7d75: $66
	ld c, b                                          ; $7d76: $48
	ret                                              ; $7d77: $c9


	xor h                                            ; $7d78: $ac
	ldh a, [c]                                       ; $7d79: $f2
	ld a, a                                          ; $7d7a: $7f
	ld a, $3f                                        ; $7d7b: $3e $3f
	ld b, l                                          ; $7d7d: $45
	ld e, c                                          ; $7d7e: $59
	xor b                                            ; $7d7f: $a8
	ld l, e                                          ; $7d80: $6b

jr_095_7d81:
	ld a, [hl-]                                      ; $7d81: $3a
	ld b, d                                          ; $7d82: $42
	ld b, l                                          ; $7d83: $45
	inc [hl]                                         ; $7d84: $34
	ld d, h                                          ; $7d85: $54
	jr c, jr_095_7d08                                ; $7d86: $38 $80

	ld c, e                                          ; $7d88: $4b
	ld e, c                                          ; $7d89: $59
	and d                                            ; $7d8a: $a2
	pop af                                           ; $7d8b: $f1
	ld [hl], h                                       ; $7d8c: $74
	pop af                                           ; $7d8d: $f1
	ld [hl], h                                       ; $7d8e: $74
	ld c, b                                          ; $7d8f: $48
	add hl, bc                                       ; $7d90: $09
	ldh a, [rSCY]                                    ; $7d91: $f0 $42
	ld b, c                                          ; $7d93: $41
	inc [hl]                                         ; $7d94: $34
	di                                               ; $7d95: $f3
	ld c, d                                          ; $7d96: $4a
	jr c, jr_095_7dfc                                ; $7d97: $38 $63

jr_095_7d99:
	ld c, h                                          ; $7d99: $4c
	xor b                                            ; $7d9a: $a8
	ld l, a                                          ; $7d9b: $6f
	ld h, d                                          ; $7d9c: $62
	add b                                            ; $7d9d: $80
	ld e, l                                          ; $7d9e: $5d
	ld b, l                                          ; $7d9f: $45
	add hl, sp                                       ; $7da0: $39
	ld a, [hl-]                                      ; $7da1: $3a
	ld b, c                                          ; $7da2: $41
	ccf                                              ; $7da3: $3f
	xor h                                            ; $7da4: $ac
	ld l, e                                          ; $7da5: $6b
	ccf                                              ; $7da6: $3f
	pop af                                           ; $7da7: $f1
	ld de, $f142                                     ; $7da8: $11 $42 $f1
	rst SubAFromHL                                          ; $7dab: $d7
	ldh a, [$2d]                                     ; $7dac: $f0 $2d
	ld d, b                                          ; $7dae: $50
	sbc h                                            ; $7daf: $9c
	ld a, [hl-]                                      ; $7db0: $3a
	ld b, d                                          ; $7db1: $42
	and b                                            ; $7db2: $a0
	db $f4                                           ; $7db3: $f4
	ld h, a                                          ; $7db4: $67
	ldh a, [c]                                       ; $7db5: $f2
	rst GetHLinHL                                          ; $7db6: $cf
	ldh a, [$1f]                                     ; $7db7: $f0 $1f
	ldh a, [$6e]                                     ; $7db9: $f0 $6e
	xor b                                            ; $7dbb: $a8
	db $f4                                           ; $7dbc: $f4
	add b                                            ; $7dbd: $80
	sub c                                            ; $7dbe: $91
	ld b, a                                          ; $7dbf: $47
	ldh a, [$b2]                                     ; $7dc0: $f0 $b2
	ld b, c                                          ; $7dc2: $41
	ld c, d                                          ; $7dc3: $4a
	ld b, [hl]                                       ; $7dc4: $46
	ldh a, [rSB]                                     ; $7dc5: $f0 $01
	ld a, [hl-]                                      ; $7dc7: $3a
	ld e, b                                          ; $7dc8: $58
	jr c, jr_095_7d73                                ; $7dc9: $38 $a8

	db $eb                                           ; $7dcb: $eb
	sbc b                                            ; $7dcc: $98
	ld c, b                                          ; $7dcd: $48
	and b                                            ; $7dce: $a0
	cpl                                              ; $7dcf: $2f
	ld b, e                                          ; $7dd0: $43
	jr c, jr_095_7e07                                ; $7dd1: $38 $34

	ld h, a                                          ; $7dd3: $67
	dec sp                                           ; $7dd4: $3b
	ccf                                              ; $7dd5: $3f
	db $ec                                           ; $7dd6: $ec
	push de                                          ; $7dd7: $d5
	xor l                                            ; $7dd8: $ad
	ld l, e                                          ; $7dd9: $6b
	ld b, h                                          ; $7dda: $44
	dec sp                                           ; $7ddb: $3b
	dec a                                            ; $7ddc: $3d
	ld b, c                                          ; $7ddd: $41
	ld b, h                                          ; $7dde: $44
	xor l                                            ; $7ddf: $ad
	ld b, [hl]                                       ; $7de0: $46
	dec sp                                           ; $7de1: $3b
	inc [hl]                                         ; $7de2: $34
	db $ec                                           ; $7de3: $ec
	and $a8                                          ; $7de4: $e6 $a8
	add a                                            ; $7de6: $87
	ldh a, [$5b]                                     ; $7de7: $f0 $5b
	ldh a, [$5e]                                     ; $7de9: $f0 $5e
	and c                                            ; $7deb: $a1
	ld d, l                                          ; $7dec: $55
	inc [hl]                                         ; $7ded: $34
	ld d, l                                          ; $7dee: $55
	ld l, [hl]                                       ; $7def: $6e
	ld a, $59                                        ; $7df0: $3e $59
	scf                                              ; $7df2: $37
	inc de                                           ; $7df3: $13
	di                                               ; $7df4: $f3
	rst GetHLinHL                                          ; $7df5: $cf
	di                                               ; $7df6: $f3
	ret nc                                           ; $7df7: $d0

	ld b, l                                          ; $7df8: $45
	inc [hl]                                         ; $7df9: $34
	db $ec                                           ; $7dfa: $ec
	ld a, b                                          ; $7dfb: $78

jr_095_7dfc:
	ld h, d                                          ; $7dfc: $62
	pop af                                           ; $7dfd: $f1
	sbc l                                            ; $7dfe: $9d
	add hl, sp                                       ; $7dff: $39
	ld a, [hl-]                                      ; $7e00: $3a
	ld b, c                                          ; $7e01: $41
	ccf                                              ; $7e02: $3f
	and b                                            ; $7e03: $a0
	cpl                                              ; $7e04: $2f
	ld b, e                                          ; $7e05: $43
	db $ec                                           ; $7e06: $ec

jr_095_7e07:
	and $34                                          ; $7e07: $e6 $34
	add a                                            ; $7e09: $87
	ldh a, [$5b]                                     ; $7e0a: $f0 $5b
	ldh a, [$5e]                                     ; $7e0c: $f0 $5e
	and c                                            ; $7e0e: $a1
	ld d, $36                                        ; $7e0f: $16 $36
	scf                                              ; $7e11: $37
	inc de                                           ; $7e12: $13
	ld c, a                                          ; $7e13: $4f
	ld a, $3c                                        ; $7e14: $3e $3c
	ld a, $3f                                        ; $7e16: $3e $3f
	ld [hl], d                                       ; $7e18: $72
	ccf                                              ; $7e19: $3f
	dec a                                            ; $7e1a: $3d
	ld b, d                                          ; $7e1b: $42
	xor l                                            ; $7e1c: $ad
	db $eb                                           ; $7e1d: $eb
	ld c, a                                          ; $7e1e: $4f
	ld e, c                                          ; $7e1f: $59
	and d                                            ; $7e20: $a2
	cpl                                              ; $7e21: $2f
	ld b, e                                          ; $7e22: $43
	ld b, [hl]                                       ; $7e23: $46
	inc [hl]                                         ; $7e24: $34
	xor $09                                          ; $7e25: $ee $09
	ld e, b                                          ; $7e27: $58
	ld e, c                                          ; $7e28: $59
	ld b, c                                          ; $7e29: $41
	xor b                                            ; $7e2a: $a8
	ld c, b                                          ; $7e2b: $48
	inc hl                                           ; $7e2c: $23
	ld [$48be], a                                    ; $7e2d: $ea $be $48
	and b                                            ; $7e30: $a0
	pop af                                           ; $7e31: $f1
	inc l                                            ; $7e32: $2c
	di                                               ; $7e33: $f3
	ld d, e                                          ; $7e34: $53
	di                                               ; $7e35: $f3
	ld d, e                                          ; $7e36: $53
	di                                               ; $7e37: $f3
	ld d, e                                          ; $7e38: $53
	ldh a, [rAUD1HIGH]                               ; $7e39: $f0 $14
	ldh a, [c]                                       ; $7e3b: $f2
	ld [hl], c                                       ; $7e3c: $71
	ldh a, [rLYC]                                    ; $7e3d: $f0 $45
	ldh a, [c]                                       ; $7e3f: $f2
	ld [hl], c                                       ; $7e40: $71
	ld l, b                                          ; $7e41: $68
	xor l                                            ; $7e42: $ad
	db $eb                                           ; $7e43: $eb
	sbc b                                            ; $7e44: $98
	xor l                                            ; $7e45: $ad
	add b                                            ; $7e46: $80
	jr c, jr_095_7e90                                ; $7e47: $38 $47

	ld d, h                                          ; $7e49: $54
	ld b, d                                          ; $7e4a: $42
	ld l, b                                          ; $7e4b: $68
	ld d, e                                          ; $7e4c: $53
	ld a, b                                          ; $7e4d: $78
	dec a                                            ; $7e4e: $3d
	ld h, e                                          ; $7e4f: $63
	ld c, b                                          ; $7e50: $48
	add hl, bc                                       ; $7e51: $09
	ld d, h                                          ; $7e52: $54
	ld b, d                                          ; $7e53: $42
	ldh a, [$f6]                                     ; $7e54: $f0 $f6
	push af                                          ; $7e56: $f5
	inc e                                            ; $7e57: $1c
	pop af                                           ; $7e58: $f1
	sub [hl]                                         ; $7e59: $96
	ld b, d                                          ; $7e5a: $42
	inc de                                           ; $7e5b: $13
	ld l, a                                          ; $7e5c: $6f
	db $ec                                           ; $7e5d: $ec
	inc h                                            ; $7e5e: $24
	ld d, h                                          ; $7e5f: $54
	ld b, b                                          ; $7e60: $40
	scf                                              ; $7e61: $37
	inc de                                           ; $7e62: $13
	ldh a, [$f6]                                     ; $7e63: $f0 $f6
	pop af                                           ; $7e65: $f1
	inc [hl]                                         ; $7e66: $34
	ldh a, [c]                                       ; $7e67: $f2
	pop bc                                           ; $7e68: $c1
	pop af                                           ; $7e69: $f1
	ld a, d                                          ; $7e6a: $7a
	ldh a, [c]                                       ; $7e6b: $f2
	ld [bc], a                                       ; $7e6c: $02
	ldh a, [$7a]                                     ; $7e6d: $f0 $7a
	ld h, d                                          ; $7e6f: $62
	pop af                                           ; $7e70: $f1
	xor l                                            ; $7e71: $ad
	ldh a, [rOBP0]                                   ; $7e72: $f0 $48
	ld d, c                                          ; $7e74: $51
	ld c, [hl]                                       ; $7e75: $4e
	ld b, d                                          ; $7e76: $42
	ld b, a                                          ; $7e77: $47
	inc de                                           ; $7e78: $13
	ldh a, [rSCY]                                    ; $7e79: $f0 $42
	ld e, b                                          ; $7e7b: $58
	ld h, e                                          ; $7e7c: $63
	ld a, $38                                        ; $7e7d: $3e $38
	ld l, b                                          ; $7e7f: $68
	ld b, h                                          ; $7e80: $44
	ld h, e                                          ; $7e81: $63
	xor b                                            ; $7e82: $a8
	ld a, $3c                                        ; $7e83: $3e $3c
	ld c, a                                          ; $7e85: $4f
	db $ed                                           ; $7e86: $ed
	ld d, a                                          ; $7e87: $57
	push af                                          ; $7e88: $f5
	dec e                                            ; $7e89: $1d
	di                                               ; $7e8a: $f3
	add c                                            ; $7e8b: $81
	xor l                                            ; $7e8c: $ad
	db $ed                                           ; $7e8d: $ed
	ld h, b                                          ; $7e8e: $60
	ld b, d                                          ; $7e8f: $42

jr_095_7e90:
	ldh a, [$f6]                                     ; $7e90: $f0 $f6
	pop af                                           ; $7e92: $f1
	inc [hl]                                         ; $7e93: $34
	ldh a, [c]                                       ; $7e94: $f2
	pop bc                                           ; $7e95: $c1
	pop af                                           ; $7e96: $f1
	ld a, d                                          ; $7e97: $7a
	ld l, b                                          ; $7e98: $68
	ldh a, [hDisp1_OBP0]                                     ; $7e99: $f0 $93
	ld b, h                                          ; $7e9b: $44
	ld h, e                                          ; $7e9c: $63
	ld c, b                                          ; $7e9d: $48
	add hl, bc                                       ; $7e9e: $09
	ld h, h                                          ; $7e9f: $64
	ld e, a                                          ; $7ea0: $5f
	inc a                                            ; $7ea1: $3c
	ld a, [hl-]                                      ; $7ea2: $3a
	ldh a, [c]                                       ; $7ea3: $f2
	cpl                                              ; $7ea4: $2f
	push af                                          ; $7ea5: $f5
	ld a, [de]                                       ; $7ea6: $1a
	ld e, d                                          ; $7ea7: $5a
	ld c, a                                          ; $7ea8: $4f
	ld c, e                                          ; $7ea9: $4b
	xor h                                            ; $7eaa: $ac
	ld d, h                                          ; $7eab: $54
	ld b, d                                          ; $7eac: $42
	ldh a, [$f6]                                     ; $7ead: $f0 $f6
	pop af                                           ; $7eaf: $f1
	inc [hl]                                         ; $7eb0: $34
	ldh a, [c]                                       ; $7eb1: $f2
	pop bc                                           ; $7eb2: $c1
	pop af                                           ; $7eb3: $f1
	ld a, d                                          ; $7eb4: $7a
	ldh a, [$1f]                                     ; $7eb5: $f0 $1f
	ldh a, [$6e]                                     ; $7eb7: $f0 $6e
	ld b, d                                          ; $7eb9: $42
	sbc [hl]                                         ; $7eba: $9e
	ld b, a                                          ; $7ebb: $47
	inc de                                           ; $7ebc: $13
	ld a, [hl-]                                      ; $7ebd: $3a
	ld d, c                                          ; $7ebe: $51
	ld d, c                                          ; $7ebf: $51
	ldh a, [$8c]                                     ; $7ec0: $f0 $8c
	ld c, a                                          ; $7ec2: $4f
	ld a, [hl-]                                      ; $7ec3: $3a
	ld d, l                                          ; $7ec4: $55
	xor h                                            ; $7ec5: $ac
	ldh a, [$d8]                                     ; $7ec6: $f0 $d8
	ld c, l                                          ; $7ec8: $4d
	push af                                          ; $7ec9: $f5
	dec de                                           ; $7eca: $1b
	ld d, c                                          ; $7ecb: $51
	ld b, d                                          ; $7ecc: $42
	ld b, l                                          ; $7ecd: $45
	and b                                            ; $7ece: $a0
	cpl                                              ; $7ecf: $2f
	ld b, e                                          ; $7ed0: $43
	ld e, b                                          ; $7ed1: $58
	ccf                                              ; $7ed2: $3f
	inc [hl]                                         ; $7ed3: $34
	db $ec                                           ; $7ed4: $ec
	push bc                                          ; $7ed5: $c5
	db $ed                                           ; $7ed6: $ed
	ld e, b                                          ; $7ed7: $58
	ld a, [hl-]                                      ; $7ed8: $3a
	and b                                            ; $7ed9: $a0
	ld d, $a2                                        ; $7eda: $16 $a2
	cpl                                              ; $7edc: $2f
	ld b, e                                          ; $7edd: $43
	ld b, [hl]                                       ; $7ede: $46
	inc [hl]                                         ; $7edf: $34
	db $ec                                           ; $7ee0: $ec
	and $a8                                          ; $7ee1: $e6 $a8
	xor $06                                          ; $7ee3: $ee $06
	ld b, a                                          ; $7ee5: $47
	ld c, b                                          ; $7ee6: $48
	add hl, bc                                       ; $7ee7: $09
	ld h, h                                          ; $7ee8: $64
	ldh a, [$c8]                                     ; $7ee9: $f0 $c8
	jr c, jr_095_7f24                                ; $7eeb: $38 $37

	inc de                                           ; $7eed: $13
	ldh a, [$7f]                                     ; $7eee: $f0 $7f
	ld h, d                                          ; $7ef0: $62
	ldh a, [c]                                       ; $7ef1: $f2
	ld hl, sp+$3e                                    ; $7ef2: $f8 $3e
	ccf                                              ; $7ef4: $3f
	scf                                              ; $7ef5: $37
	and d                                            ; $7ef6: $a2
	cpl                                              ; $7ef7: $2f
	ld b, e                                          ; $7ef8: $43
	ld e, d                                          ; $7ef9: $5a
	inc [hl]                                         ; $7efa: $34
	db $eb                                           ; $7efb: $eb
	rst FarCall                                          ; $7efc: $f7
	and b                                            ; $7efd: $a0
	pop af                                           ; $7efe: $f1
	dec c                                            ; $7eff: $0d
	ldh a, [$79]                                     ; $7f00: $f0 $79
	ld a, $3f                                        ; $7f02: $3e $3f
	jr c, @+$50                                      ; $7f04: $38 $4e

	ldh a, [$ea]                                     ; $7f06: $f0 $ea
	ld c, e                                          ; $7f08: $4b
	inc de                                           ; $7f09: $13
	ldh a, [rAUD1LOW]                                ; $7f0a: $f0 $13
	jr c, jr_095_7f50                                ; $7f0c: $38 $42

	scf                                              ; $7f0e: $37
	ld a, b                                          ; $7f0f: $78
	ccf                                              ; $7f10: $3f
	and d                                            ; $7f11: $a2
	cpl                                              ; $7f12: $2f
	ld b, e                                          ; $7f13: $43
	ld h, h                                          ; $7f14: $64
	inc [hl]                                         ; $7f15: $34
	ld h, h                                          ; $7f16: $64
	jr c, jr_095_7f7d                                ; $7f17: $38 $64

	jr c, jr_095_7f63                                ; $7f19: $38 $48

	and b                                            ; $7f1b: $a0
	ld c, b                                          ; $7f1c: $48
	jr c, jr_095_7f5c                                ; $7f1d: $38 $3d

	ld h, e                                          ; $7f1f: $63
	xor l                                            ; $7f20: $ad
	sbc c                                            ; $7f21: $99
	ld h, c                                          ; $7f22: $61
	ld a, [hl-]                                      ; $7f23: $3a

jr_095_7f24:
	ld e, b                                          ; $7f24: $58
	jr c, jr_095_7f5e                                ; $7f25: $38 $37

	and d                                            ; $7f27: $a2
	ld c, b                                          ; $7f28: $48
	ld l, e                                          ; $7f29: $6b
	ld b, d                                          ; $7f2a: $42
	ldh a, [rAUD2LEN]                                ; $7f2b: $f0 $16
	and c                                            ; $7f2d: $a1
	ld a, $50                                        ; $7f2e: $3e $50
	ld a, e                                          ; $7f30: $7b
	dec sp                                           ; $7f31: $3b
	ld d, l                                          ; $7f32: $55
	ld c, l                                          ; $7f33: $4d
	ld a, [hl-]                                      ; $7f34: $3a
	jr c, jr_095_7f81                                ; $7f35: $38 $4a

	scf                                              ; $7f37: $37
	inc de                                           ; $7f38: $13
	ld b, [hl]                                       ; $7f39: $46
	ld a, [hl-]                                      ; $7f3a: $3a
	dec a                                            ; $7f3b: $3d
	ld b, d                                          ; $7f3c: $42
	ldh a, [c]                                       ; $7f3d: $f2
	ld [bc], a                                       ; $7f3e: $02
	ldh a, [$7a]                                     ; $7f3f: $f0 $7a
	ld c, e                                          ; $7f41: $4b
	ldh a, [rOBP1]                                   ; $7f42: $f0 $49
	ccf                                              ; $7f44: $3f
	ldh a, [$2d]                                     ; $7f45: $f0 $2d
	dec sp                                           ; $7f47: $3b
	ccf                                              ; $7f48: $3f
	ld c, [hl]                                       ; $7f49: $4e
	ld h, e                                          ; $7f4a: $63
	and d                                            ; $7f4b: $a2
	ld b, b                                          ; $7f4c: $40
	add hl, sp                                       ; $7f4d: $39
	ld c, b                                          ; $7f4e: $48
	inc [hl]                                         ; $7f4f: $34

jr_095_7f50:
	ld [hl+], a                                      ; $7f50: $22
	ld a, [hl-]                                      ; $7f51: $3a
	ld d, b                                          ; $7f52: $50
	ldh a, [rAUDVOL]                                 ; $7f53: $f0 $24
	ld c, e                                          ; $7f55: $4b
	inc de                                           ; $7f56: $13
	ldh a, [$0a]                                     ; $7f57: $f0 $0a
	jr c, jr_095_7fbe                                ; $7f59: $38 $63

	ld c, h                                          ; $7f5b: $4c

jr_095_7f5c:
	ld c, b                                          ; $7f5c: $48
	dec [hl]                                         ; $7f5d: $35

jr_095_7f5e:
	inc hl                                           ; $7f5e: $23
	db $ec                                           ; $7f5f: $ec
	cp h                                             ; $7f60: $bc
	ld e, b                                          ; $7f61: $58
	ld b, c                                          ; $7f62: $41

jr_095_7f63:
	ld c, b                                          ; $7f63: $48
	add hl, bc                                       ; $7f64: $09
	ld a, [hl-]                                      ; $7f65: $3a
	inc [hl]                                         ; $7f66: $34
	db $ed                                           ; $7f67: $ed
	sbc a                                            ; $7f68: $9f
	ld l, a                                          ; $7f69: $6f
	ld b, d                                          ; $7f6a: $42
	db $ed                                           ; $7f6b: $ed
	ld [hl], c                                       ; $7f6c: $71
	ld h, d                                          ; $7f6d: $62
	ld c, b                                          ; $7f6e: $48
	add hl, bc                                       ; $7f6f: $09
	pop af                                           ; $7f70: $f1
	sub $45                                          ; $7f71: $d6 $45
	ld d, a                                          ; $7f73: $57
	ldh a, [$bc]                                     ; $7f74: $f0 $bc
	ld b, a                                          ; $7f76: $47
	ldh a, [$0b]                                     ; $7f77: $f0 $0b
	ld d, e                                          ; $7f79: $53
	sub h                                            ; $7f7a: $94
	ld c, [hl]                                       ; $7f7b: $4e
	inc de                                           ; $7f7c: $13

jr_095_7f7d:
	db $ed                                           ; $7f7d: $ed
	xor h                                            ; $7f7e: $ac
	add h                                            ; $7f7f: $84
	ld d, e                                          ; $7f80: $53

jr_095_7f81:
	inc [hl]                                         ; $7f81: $34
	ld l, a                                          ; $7f82: $6f
	ld b, d                                          ; $7f83: $42
	ldh a, [$aa]                                     ; $7f84: $f0 $aa
	adc c                                            ; $7f86: $89
	ldh a, [$7f]                                     ; $7f87: $f0 $7f
	ld b, a                                          ; $7f89: $47
	inc de                                           ; $7f8a: $13
	ldh a, [$6f]                                     ; $7f8b: $f0 $6f
	ccf                                              ; $7f8d: $3f
	ld c, [hl]                                       ; $7f8e: $4e
	ld c, c                                          ; $7f8f: $49
	ld [hl], a                                       ; $7f90: $77
	dec sp                                           ; $7f91: $3b
	ccf                                              ; $7f92: $3f
	ld c, [hl]                                       ; $7f93: $4e
	ld b, d                                          ; $7f94: $42
	and c                                            ; $7f95: $a1
	ld b, [hl]                                       ; $7f96: $46
	ld a, [hl-]                                      ; $7f97: $3a
	dec a                                            ; $7f98: $3d
	ld b, d                                          ; $7f99: $42
	ldh a, [rAUD2LOW]                                ; $7f9a: $f0 $18
	pop af                                           ; $7f9c: $f1
	ld l, d                                          ; $7f9d: $6a
	ld c, e                                          ; $7f9e: $4b
	inc de                                           ; $7f9f: $13
	ld l, a                                          ; $7fa0: $6f
	ld d, e                                          ; $7fa1: $53
	di                                               ; $7fa2: $f3
	cp [hl]                                          ; $7fa3: $be
	ld a, $3f                                        ; $7fa4: $3e $3f
	ld l, [hl]                                       ; $7fa6: $6e
	ld c, [hl]                                       ; $7fa7: $4e
	ld h, e                                          ; $7fa8: $63
	and d                                            ; $7fa9: $a2
	ldh a, [$f4]                                     ; $7faa: $f0 $f4
	di                                               ; $7fac: $f3
	ld c, l                                          ; $7fad: $4d
	ld c, e                                          ; $7fae: $4b
	xor $10                                          ; $7faf: $ee $10
	inc de                                           ; $7fb1: $13
	ld c, d                                          ; $7fb2: $4a
	ld e, h                                          ; $7fb3: $5c
	ccf                                              ; $7fb4: $3f
	jr c, @+$50                                      ; $7fb5: $38 $4e

	ld b, d                                          ; $7fb7: $42
	ld c, h                                          ; $7fb8: $4c
	xor $10                                          ; $7fb9: $ee $10
	and b                                            ; $7fbb: $a0
	cpl                                              ; $7fbc: $2f
	ld b, e                                          ; $7fbd: $43

jr_095_7fbe:
	ld d, d                                          ; $7fbe: $52
	inc [hl]                                         ; $7fbf: $34
	sbc c                                            ; $7fc0: $99
	ccf                                              ; $7fc1: $3f
	inc [hl]                                         ; $7fc2: $34
	db $ec                                           ; $7fc3: $ec
	db $db                                           ; $7fc4: $db
	and d                                            ; $7fc5: $a2
	pop af                                           ; $7fc6: $f1
	jr nc, @+$73                                     ; $7fc7: $30 $71

	ld a, [hl-]                                      ; $7fc9: $3a
	jr c, @+$4c                                      ; $7fca: $38 $4a

	and d                                            ; $7fcc: $a2
	ldh a, [c]                                       ; $7fcd: $f2
	ld h, e                                          ; $7fce: $63
	di                                               ; $7fcf: $f3
	inc bc                                           ; $7fd0: $03
	ldh a, [rAUD1LOW]                                ; $7fd1: $f0 $13
	ldh a, [rAUD2LEN]                                ; $7fd3: $f0 $16
	ld b, l                                          ; $7fd5: $45
	and b                                            ; $7fd6: $a0
	cpl                                              ; $7fd7: $2f
	ld b, e                                          ; $7fd8: $43
	ld d, h                                          ; $7fd9: $54
	xor $10                                          ; $7fda: $ee $10
	add hl, bc                                       ; $7fdc: $09

jr_095_7fdd:
	cpl                                              ; $7fdd: $2f
	ld b, e                                          ; $7fde: $43
	pop af                                           ; $7fdf: $f1
	jr z, @-$0e                                      ; $7fe0: $28 $f0

	ld b, h                                          ; $7fe2: $44
	ld e, e                                          ; $7fe3: $5b
	ld d, [hl]                                       ; $7fe4: $56
	push af                                          ; $7fe5: $f5
	jr jr_095_7fdd                                   ; $7fe6: $18 $f5

	add hl, de                                       ; $7fe8: $19
	ld d, e                                          ; $7fe9: $53
	inc de                                           ; $7fea: $13
	sub h                                            ; $7feb: $94
	ld c, [hl]                                       ; $7fec: $4e
	inc a                                            ; $7fed: $3c
	ld d, b                                          ; $7fee: $50
	inc [hl]                                         ; $7fef: $34
	di                                               ; $7ff0: $f3
	rst FarCall                                          ; $7ff1: $f7
	db $f4                                           ; $7ff2: $f4
	ld h, c                                          ; $7ff3: $61
	ldh a, [$5a]                                     ; $7ff4: $f0 $5a
	ld h, a                                          ; $7ff6: $67
	ld d, h                                          ; $7ff7: $54
	add hl, sp                                       ; $7ff8: $39
	and b                                            ; $7ff9: $a0
	cpl                                              ; $7ffa: $2f
	ld [hl-], a                                      ; $7ffb: $32
	ld b, b                                          ; $7ffc: $40
	ld a, $3f                                        ; $7ffd: $3e $3f
	db $f0                                           ; $7fff: $f0
