; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08c", ROMX[$4000], BANK[$8c]

	ld e, h                                          ; $4000: $5c
	dec sp                                           ; $4001: $3b
	ld c, c                                          ; $4002: $49
	call c, $f2a0                                    ; $4003: $dc $a0 $f2
	and [hl]                                         ; $4006: $a6
	ldh a, [$59]                                     ; $4007: $f0 $59
	ld a, [hl-]                                      ; $4009: $3a
	ld b, c                                          ; $400a: $41
	ld b, h                                          ; $400b: $44
	inc a                                            ; $400c: $3c
	ld d, b                                          ; $400d: $50
	xor b                                            ; $400e: $a8
	ld b, b                                          ; $400f: $40
	ld b, c                                          ; $4010: $41
	ld a, [hl-]                                      ; $4011: $3a
	ld b, a                                          ; $4012: $47
	ldh a, [$d8]                                     ; $4013: $f0 $d8
	ld d, e                                          ; $4015: $53
	ld d, d                                          ; $4016: $52
	ld a, [hl-]                                      ; $4017: $3a
	jr c, jr_08c_405c                                ; $4018: $38 $42

	and b                                            ; $401a: $a0
	ld b, b                                          ; $401b: $40
	ld c, l                                          ; $401c: $4d
	ld c, d                                          ; $401d: $4a
	ld c, a                                          ; $401e: $4f
	inc [hl]                                         ; $401f: $34
	jr c, jr_08c_405a                                ; $4020: $38 $38

	ld h, e                                          ; $4022: $63
	xor b                                            ; $4023: $a8
	ldh a, [$29]                                     ; $4024: $f0 $29
	ld a, $38                                        ; $4026: $3e $38
	inc a                                            ; $4028: $3c
	ld d, b                                          ; $4029: $50
	and b                                            ; $402a: $a0
	cpl                                              ; $402b: $2f
	ld [$0907], a                                    ; $402c: $ea $07 $09
	xor $1f                                          ; $402f: $ee $1f
	inc [hl]                                         ; $4031: $34
	ret nc                                           ; $4032: $d0

	xor b                                            ; $4033: $a8
	xor $2d                                          ; $4034: $ee $2d
	inc [hl]                                         ; $4036: $34
	ldh a, [c]                                       ; $4037: $f2
	ld a, [hl-]                                      ; $4038: $3a
	ldh a, [rTAC]                                    ; $4039: $f0 $07
	rst SubAFromDE                                          ; $403b: $df
	ld h, e                                          ; $403c: $63
	and b                                            ; $403d: $a0
	ret nc                                           ; $403e: $d0

	xor b                                            ; $403f: $a8
	ld d, h                                          ; $4040: $54
	ld b, d                                          ; $4041: $42
	sbc l                                            ; $4042: $9d
	ld d, b                                          ; $4043: $50
	jr c, jr_08c_4090                                ; $4044: $38 $4a

	jr c, jr_08c_4080                                ; $4046: $38 $38

	and c                                            ; $4048: $a1
	ld d, h                                          ; $4049: $54
	ld b, d                                          ; $404a: $42
	sbc l                                            ; $404b: $9d
	ld d, b                                          ; $404c: $50
	jr c, jr_08c_4095                                ; $404d: $38 $46

	ld c, l                                          ; $404f: $4d
	ld a, e                                          ; $4050: $7b
	jr c, jr_08c_408b                                ; $4051: $38 $38

	and c                                            ; $4053: $a1
	add hl, bc                                       ; $4054: $09
	ld b, b                                          ; $4055: $40
	ld c, l                                          ; $4056: $4d
	ld e, e                                          ; $4057: $5b
	ld d, [hl]                                       ; $4058: $56
	inc [hl]                                         ; $4059: $34

jr_08c_405a:
	db $ec                                           ; $405a: $ec
	push bc                                          ; $405b: $c5

jr_08c_405c:
	xor h                                            ; $405c: $ac
	ldh a, [rAUD2HIGH]                               ; $405d: $f0 $19
	ld b, a                                          ; $405f: $47
	sub [hl]                                         ; $4060: $96
	ld d, a                                          ; $4061: $57
	ld d, d                                          ; $4062: $52
	ld a, $66                                        ; $4063: $3e $66
	add hl, sp                                       ; $4065: $39
	and b                                            ; $4066: $a0
	cpl                                              ; $4067: $2f
	ld b, e                                          ; $4068: $43
	ld b, b                                          ; $4069: $40
	add hl, sp                                       ; $406a: $39
	ld b, h                                          ; $406b: $44
	ld c, h                                          ; $406c: $4c
	xor b                                            ; $406d: $a8
	db $eb                                           ; $406e: $eb
	ld d, d                                          ; $406f: $52
	inc a                                            ; $4070: $3c
	and b                                            ; $4071: $a0
	ld b, [hl]                                       ; $4072: $46
	ld e, c                                          ; $4073: $59
	ld b, c                                          ; $4074: $41
	inc [hl]                                         ; $4075: $34
	ld [$13e9], a                                    ; $4076: $ea $e9 $13
	ld a, [hl-]                                      ; $4079: $3a
	dec sp                                           ; $407a: $3b
	ld h, c                                          ; $407b: $61
	ld d, [hl]                                       ; $407c: $56
	dec sp                                           ; $407d: $3b
	dec a                                            ; $407e: $3d
	and b                                            ; $407f: $a0

jr_08c_4080:
	cpl                                              ; $4080: $2f
	db $ed                                           ; $4081: $ed
	xor c                                            ; $4082: $a9
	ld [$0962], a                                    ; $4083: $ea $62 $09
	xor $1f                                          ; $4086: $ee $1f
	inc [hl]                                         ; $4088: $34
	sub d                                            ; $4089: $92
	adc [hl]                                         ; $408a: $8e

jr_08c_408b:
	dec sp                                           ; $408b: $3b
	ccf                                              ; $408c: $3f
	ld l, h                                          ; $408d: $6c
	ld c, [hl]                                       ; $408e: $4e
	ld c, h                                          ; $408f: $4c

jr_08c_4090:
	and b                                            ; $4090: $a0
	ld b, [hl]                                       ; $4091: $46
	ld d, a                                          ; $4092: $57
	ld d, e                                          ; $4093: $53
	ld c, c                                          ; $4094: $49

jr_08c_4095:
	add hl, sp                                       ; $4095: $39
	xor b                                            ; $4096: $a8
	ld l, e                                          ; $4097: $6b
	ld b, h                                          ; $4098: $44
	inc a                                            ; $4099: $3c
	inc [hl]                                         ; $409a: $34
	pop af                                           ; $409b: $f1
	inc b                                            ; $409c: $04
	ld c, l                                          ; $409d: $4d
	ld b, b                                          ; $409e: $40
	add hl, sp                                       ; $409f: $39

Call_08c_40a0:
	ld a, [hl-]                                      ; $40a0: $3a
	ld a, a                                          ; $40a1: $7f
	ld d, e                                          ; $40a2: $53
	inc de                                           ; $40a3: $13
	ld a, $3f                                        ; $40a4: $3e $3f
	ld e, h                                          ; $40a6: $5c
	dec a                                            ; $40a7: $3d
	ld h, e                                          ; $40a8: $63
	and b                                            ; $40a9: $a0
	ld b, [hl]                                       ; $40aa: $46
	ld d, a                                          ; $40ab: $57
	ld d, e                                          ; $40ac: $53
	ld c, c                                          ; $40ad: $49
	add hl, sp                                       ; $40ae: $39
	xor b                                            ; $40af: $a8
	sub d                                            ; $40b0: $92
	adc [hl]                                         ; $40b1: $8e
	dec sp                                           ; $40b2: $3b
	ccf                                              ; $40b3: $3f
	ld l, h                                          ; $40b4: $6c
	ld c, [hl]                                       ; $40b5: $4e
	and b                                            ; $40b6: $a0
	cpl                                              ; $40b7: $2f
	db $ed                                           ; $40b8: $ed
	ld e, e                                          ; $40b9: $5b
	ld c, e                                          ; $40ba: $4b
	pop af                                           ; $40bb: $f1
	ld a, [de]                                       ; $40bc: $1a
	pop af                                           ; $40bd: $f1
	inc c                                            ; $40be: $0c
	pop af                                           ; $40bf: $f1
	inc b                                            ; $40c0: $04
	ld c, l                                          ; $40c1: $4d
	ld a, [hl-]                                      ; $40c2: $3a
	jr c, jr_08c_4111                                ; $40c3: $38 $4c

	add hl, bc                                       ; $40c5: $09
	db $f4                                           ; $40c6: $f4
	adc d                                            ; $40c7: $8a
	ld d, d                                          ; $40c8: $52
	ld a, $3f                                        ; $40c9: $3e $3f
	pop af                                           ; $40cb: $f1
	add hl, hl                                       ; $40cc: $29
	ld a, $3c                                        ; $40cd: $3e $3c
	dec sp                                           ; $40cf: $3b
	dec a                                            ; $40d0: $3d
	inc de                                           ; $40d1: $13
	ld a, [hl-]                                      ; $40d2: $3a
	ld c, b                                          ; $40d3: $48
	and b                                            ; $40d4: $a0
	ret                                              ; $40d5: $c9


	sbc l                                            ; $40d6: $9d
	ld d, b                                          ; $40d7: $50
	jr c, jr_08c_40ed                                ; $40d8: $38 $13

	db $f4                                           ; $40da: $f4
	adc d                                            ; $40db: $8a
	ld d, d                                          ; $40dc: $52
	ld a, $3f                                        ; $40dd: $3e $3f
	ld d, l                                          ; $40df: $55
	ld c, l                                          ; $40e0: $4d
	ccf                                              ; $40e1: $3f
	ld c, a                                          ; $40e2: $4f
	inc de                                           ; $40e3: $13
	jr c, jr_08c_411e                                ; $40e4: $38 $38

	db $ec                                           ; $40e6: $ec
	ret c                                            ; $40e7: $d8

	and b                                            ; $40e8: $a0
	ld b, b                                          ; $40e9: $40
	ld b, c                                          ; $40ea: $41
	ld a, [hl-]                                      ; $40eb: $3a
	pop af                                           ; $40ec: $f1

jr_08c_40ed:
	ld a, [de]                                       ; $40ed: $1a
	pop af                                           ; $40ee: $f1
	ld l, d                                          ; $40ef: $6a
	pop af                                           ; $40f0: $f1
	inc bc                                           ; $40f1: $03
	ld a, [hl-]                                      ; $40f2: $3a
	ld d, h                                          ; $40f3: $54
	ld c, c                                          ; $40f4: $49
	inc de                                           ; $40f5: $13
	add d                                            ; $40f6: $82
	ld h, e                                          ; $40f7: $63
	ld a, [hl-]                                      ; $40f8: $3a
	ld d, l                                          ; $40f9: $55
	dec a                                            ; $40fa: $3d
	dec sp                                           ; $40fb: $3b
	ccf                                              ; $40fc: $3f
	and b                                            ; $40fd: $a0
	cpl                                              ; $40fe: $2f
	add sp, -$11                                     ; $40ff: $e8 $ef
	add hl, bc                                       ; $4101: $09
	ld l, e                                          ; $4102: $6b
	ld c, c                                          ; $4103: $49
	inc a                                            ; $4104: $3c
	ld a, [hl-]                                      ; $4105: $3a
	ld c, [hl]                                       ; $4106: $4e
	ld c, c                                          ; $4107: $49
	inc de                                           ; $4108: $13
	db $ec                                           ; $4109: $ec
	ld [$a048], sp                                   ; $410a: $08 $48 $a0
	call c, Call_08c_6ba8                            ; $410d: $dc $a8 $6b
	ld c, c                                          ; $4110: $49

jr_08c_4111:
	inc a                                            ; $4111: $3c
	ld a, [hl-]                                      ; $4112: $3a
	ld c, [hl]                                       ; $4113: $4e
	ld c, c                                          ; $4114: $49
	inc de                                           ; $4115: $13
	jr c, jr_08c_4150                                ; $4116: $38 $38

	ld b, c                                          ; $4118: $41
	ld b, h                                          ; $4119: $44
	ld e, l                                          ; $411a: $5d
	ld e, d                                          ; $411b: $5a
	ld a, [hl-]                                      ; $411c: $3a
	ld c, b                                          ; $411d: $48

jr_08c_411e:
	and b                                            ; $411e: $a0
	ld l, e                                          ; $411f: $6b
	ld c, c                                          ; $4120: $49
	inc a                                            ; $4121: $3c
	ld a, [hl-]                                      ; $4122: $3a
	ld c, [hl]                                       ; $4123: $4e
	inc a                                            ; $4124: $3c
	ld a, [hl-]                                      ; $4125: $3a
	ld [hl], h                                       ; $4126: $74
	ld c, b                                          ; $4127: $48
	and b                                            ; $4128: $a0
	db $ed                                           ; $4129: $ed
	ld d, l                                          ; $412a: $55
	inc [hl]                                         ; $412b: $34
	ldh a, [rDIV]                                    ; $412c: $f0 $04
	ld e, c                                          ; $412e: $59
	ldh a, [$2f]                                     ; $412f: $f0 $2f
	ld e, c                                          ; $4131: $59
	ld b, l                                          ; $4132: $45
	and b                                            ; $4133: $a0
	cpl                                              ; $4134: $2f
	db $ed                                           ; $4135: $ed
	xor c                                            ; $4136: $a9
	inc [hl]                                         ; $4137: $34
	db $eb                                           ; $4138: $eb
	rra                                              ; $4139: $1f
	add hl, bc                                       ; $413a: $09
	ld b, b                                          ; $413b: $40
	ld b, c                                          ; $413c: $41
	ld a, [hl-]                                      ; $413d: $3a
	ld d, h                                          ; $413e: $54
	ld c, c                                          ; $413f: $49
	ld a, [hl-]                                      ; $4140: $3a
	jr c, jr_08c_4188                                ; $4141: $38 $45

	xor b                                            ; $4143: $a8
	dec a                                            ; $4144: $3d
	ld d, d                                          ; $4145: $52
	dec a                                            ; $4146: $3d
	ld d, d                                          ; $4147: $52
	inc de                                           ; $4148: $13
	add hl, sp                                       ; $4149: $39
	ld d, d                                          ; $414a: $52
	ld d, l                                          ; $414b: $55
	jr c, jr_08c_4189                                ; $414c: $38 $3b

	dec a                                            ; $414e: $3d
	ld b, h                                          ; $414f: $44

jr_08c_4150:
	ld e, l                                          ; $4150: $5d
	and b                                            ; $4151: $a0
	ld e, d                                          ; $4152: $5a
	add hl, sp                                       ; $4153: $39
	xor c                                            ; $4154: $a9
	ld d, c                                          ; $4155: $51
	ld [hl], b                                       ; $4156: $70
	jr c, @+$4c                                      ; $4157: $38 $4a

	ld a, $66                                        ; $4159: $3e $66
	add hl, sp                                       ; $415b: $39
	and b                                            ; $415c: $a0
	db $ed                                           ; $415d: $ed
	ld e, l                                          ; $415e: $5d
	ld c, d                                          ; $415f: $4a
	ld c, a                                          ; $4160: $4f
	xor h                                            ; $4161: $ac
	db $ec                                           ; $4162: $ec
	ld de, $56eb                                     ; $4163: $11 $eb $56
	and b                                            ; $4166: $a0
	cpl                                              ; $4167: $2f
	add sp, $42                                      ; $4168: $e8 $42
	add hl, bc                                       ; $416a: $09
	jp hl                                            ; $416b: $e9


	and h                                            ; $416c: $a4
	xor b                                            ; $416d: $a8
	xor $08                                          ; $416e: $ee $08
	ld c, d                                          ; $4170: $4a
	inc de                                           ; $4171: $13
	db $f4                                           ; $4172: $f4
	adc c                                            ; $4173: $89
	inc a                                            ; $4174: $3c
	ld c, l                                          ; $4175: $4d
	ld h, c                                          ; $4176: $61
	ld d, [hl]                                       ; $4177: $56
	dec sp                                           ; $4178: $3b
	ccf                                              ; $4179: $3f
	ld c, b                                          ; $417a: $48
	and b                                            ; $417b: $a0
	ld d, d                                          ; $417c: $52
	dec sp                                           ; $417d: $3b
	dec a                                            ; $417e: $3d
	ld d, l                                          ; $417f: $55
	xor h                                            ; $4180: $ac
	pop af                                           ; $4181: $f1
	sub c                                            ; $4182: $91
	ld a, $53                                        ; $4183: $3e $53
	ld d, a                                          ; $4185: $57
	pop af                                           ; $4186: $f1
	ld b, h                                          ; $4187: $44

jr_08c_4188:
	ld a, [hl-]                                      ; $4188: $3a

jr_08c_4189:
	ld b, c                                          ; $4189: $41
	ld b, h                                          ; $418a: $44
	inc a                                            ; $418b: $3c
	ld d, b                                          ; $418c: $50
	and b                                            ; $418d: $a0
	jr c, jr_08c_41c8                                ; $418e: $38 $38

	ld a, a                                          ; $4190: $7f
	ld b, a                                          ; $4191: $47
	ld a, [hl-]                                      ; $4192: $3a
	ld b, c                                          ; $4193: $41
	ccf                                              ; $4194: $3f
	inc de                                           ; $4195: $13
	ld a, [hl-]                                      ; $4196: $3a
	dec sp                                           ; $4197: $3b
	ccf                                              ; $4198: $3f
	ld a, [hl-]                                      ; $4199: $3a
	jr c, jr_08c_41ff                                ; $419a: $38 $63

	ld b, l                                          ; $419c: $45
	and b                                            ; $419d: $a0
	cpl                                              ; $419e: $2f
	jp hl                                            ; $419f: $e9


	ld a, d                                          ; $41a0: $7a
	add hl, bc                                       ; $41a1: $09
	xor $1f                                          ; $41a2: $ee $1f
	inc [hl]                                         ; $41a4: $34
	cp d                                             ; $41a5: $ba
	and b                                            ; $41a6: $a0
	ld c, a                                          ; $41a7: $4f
	add hl, sp                                       ; $41a8: $39
	ret                                              ; $41a9: $c9


	xor h                                            ; $41aa: $ac
	ld a, [hl]                                       ; $41ab: $7e
	ld d, l                                          ; $41ac: $55
	ldh a, [c]                                       ; $41ad: $f2
	ret                                              ; $41ae: $c9


	dec sp                                           ; $41af: $3b
	ccf                                              ; $41b0: $3f
	ldh a, [c]                                       ; $41b1: $f2
	ld h, d                                          ; $41b2: $62
	ldh a, [rSB]                                     ; $41b3: $f0 $01
	ccf                                              ; $41b5: $3f
	ld l, h                                          ; $41b6: $6c
	ld c, [hl]                                       ; $41b7: $4e
	ld c, c                                          ; $41b8: $49
	xor h                                            ; $41b9: $ac
	jr c, jr_08c_41f4                                ; $41ba: $38 $38

	inc a                                            ; $41bc: $3c
	ld c, a                                          ; $41bd: $4f
	ld a, $4d                                        ; $41be: $3e $4d
	ld a, [hl-]                                      ; $41c0: $3a
	jr c, jr_08c_420f                                ; $41c1: $38 $4c

	and b                                            ; $41c3: $a0
	ld d, d                                          ; $41c4: $52
	sbc h                                            ; $41c5: $9c
	ld c, e                                          ; $41c6: $4b
	db $eb                                           ; $41c7: $eb

jr_08c_41c8:
	xor [hl]                                         ; $41c8: $ae
	inc a                                            ; $41c9: $3c
	ld d, b                                          ; $41ca: $50
	ld b, l                                          ; $41cb: $45
	xor b                                            ; $41cc: $a8
	cp d                                             ; $41cd: $ba
	and b                                            ; $41ce: $a0
	ld l, a                                          ; $41cf: $6f
	ld b, d                                          ; $41d0: $42
	pop af                                           ; $41d1: $f1
	xor e                                            ; $41d2: $ab
	inc [hl]                                         ; $41d3: $34
	db $eb                                           ; $41d4: $eb
	ld d, b                                          ; $41d5: $50
	and c                                            ; $41d6: $a1
	cpl                                              ; $41d7: $2f
	add sp, $56                                      ; $41d8: $e8 $56
	add hl, bc                                       ; $41da: $09
	ld b, [hl]                                       ; $41db: $46
	inc [hl]                                         ; $41dc: $34
	ld b, [hl]                                       ; $41dd: $46
	ld d, a                                          ; $41de: $57
	ld d, e                                          ; $41df: $53
	ld c, c                                          ; $41e0: $49
	add hl, sp                                       ; $41e1: $39
	xor b                                            ; $41e2: $a8
	ld c, d                                          ; $41e3: $4a
	ld c, a                                          ; $41e4: $4f
	xor h                                            ; $41e5: $ac
	pop af                                           ; $41e6: $f1
	db $d3                                           ; $41e7: $d3
	ld [hl], c                                       ; $41e8: $71
	ld d, c                                          ; $41e9: $51
	ldh a, [$cb]                                     ; $41ea: $f0 $cb
	ld b, h                                          ; $41ec: $44
	ld c, c                                          ; $41ed: $49
	ld [hl], a                                       ; $41ee: $77
	add hl, sp                                       ; $41ef: $39
	ld a, [hl-]                                      ; $41f0: $3a
	and b                                            ; $41f1: $a0
	ldh a, [$29]                                     ; $41f2: $f0 $29

jr_08c_41f4:
	ld a, $38                                        ; $41f4: $3e $38
	ld a, [hl-]                                      ; $41f6: $3a
	xor b                                            ; $41f7: $a8
	ld b, b                                          ; $41f8: $40
	ld b, c                                          ; $41f9: $41
	ld a, [hl-]                                      ; $41fa: $3a
	ld b, a                                          ; $41fb: $47
	pop af                                           ; $41fc: $f1
	db $d3                                           ; $41fd: $d3
	ld [hl], c                                       ; $41fe: $71

jr_08c_41ff:
	ccf                                              ; $41ff: $3f
	ld d, l                                          ; $4200: $55
	ld c, l                                          ; $4201: $4d
	ld c, [hl]                                       ; $4202: $4e
	ld c, c                                          ; $4203: $49
	ld c, e                                          ; $4204: $4b
	inc de                                           ; $4205: $13
	ld [hl], a                                       ; $4206: $77
	ld h, e                                          ; $4207: $63
	ld a, [hl-]                                      ; $4208: $3a
	inc a                                            ; $4209: $3c
	dec sp                                           ; $420a: $3b
	dec a                                            ; $420b: $3d
	ld h, e                                          ; $420c: $63
	and b                                            ; $420d: $a0
	ld b, [hl]                                       ; $420e: $46

jr_08c_420f:
	ld d, a                                          ; $420f: $57
	ld d, e                                          ; $4210: $53
	ld c, c                                          ; $4211: $49
	add hl, sp                                       ; $4212: $39
	xor b                                            ; $4213: $a8
	ldh a, [$29]                                     ; $4214: $f0 $29
	ld a, $38                                        ; $4216: $3e $38
	ld a, [hl-]                                      ; $4218: $3a
	and b                                            ; $4219: $a0
	cpl                                              ; $421a: $2f
	db $ed                                           ; $421b: $ed
	ld e, [hl]                                       ; $421c: $5e
	inc [hl]                                         ; $421d: $34
	pop af                                           ; $421e: $f1
	and $f3                                          ; $421f: $e6 $f3
	pop de                                           ; $4221: $d1
	inc a                                            ; $4222: $3c
	ld d, b                                          ; $4223: $50
	ld l, [hl]                                       ; $4224: $6e
	ld d, a                                          ; $4225: $57
	ldh a, [hDisp1_WX]                                     ; $4226: $f0 $96
	ld a, c                                          ; $4228: $79
	add hl, bc                                       ; $4229: $09
	ld h, e                                          ; $422a: $63
	inc [hl]                                         ; $422b: $34
	ld l, a                                          ; $422c: $6f
	ld c, a                                          ; $422d: $4f
	xor h                                            ; $422e: $ac
	ld b, b                                          ; $422f: $40
	add hl, sp                                       ; $4230: $39
	db $ec                                           ; $4231: $ec
	ret c                                            ; $4232: $d8

	inc a                                            ; $4233: $3c
	ld c, c                                          ; $4234: $49
	inc de                                           ; $4235: $13
	ld [hl], a                                       ; $4236: $77
	dec sp                                           ; $4237: $3b
	ccf                                              ; $4238: $3f
	dec a                                            ; $4239: $3d
	ld e, l                                          ; $423a: $5d
	ld e, d                                          ; $423b: $5a
	ld c, b                                          ; $423c: $48
	and b                                            ; $423d: $a0
	ld b, b                                          ; $423e: $40
	ld b, c                                          ; $423f: $41
	ld a, [hl-]                                      ; $4240: $3a
	ld b, a                                          ; $4241: $47
	ldh a, [$d8]                                     ; $4242: $f0 $d8
	ld e, d                                          ; $4244: $5a
	inc a                                            ; $4245: $3c
	dec sp                                           ; $4246: $3b
	dec a                                            ; $4247: $3d
	xor c                                            ; $4248: $a9
	ldh a, [$67]                                     ; $4249: $f0 $67
	ldh a, [$9f]                                     ; $424b: $f0 $9f
	ld a, [hl-]                                      ; $424d: $3a
	ld d, l                                          ; $424e: $55
	ld a, $61                                        ; $424f: $3e $61
	ld d, [hl]                                       ; $4251: $56
	add hl, sp                                       ; $4252: $39
	ld a, [hl-]                                      ; $4253: $3a
	ld c, b                                          ; $4254: $48
	and b                                            ; $4255: $a0
	pop af                                           ; $4256: $f1
	ld a, [hl]                                       ; $4257: $7e
	ld c, d                                          ; $4258: $4a
	ld c, a                                          ; $4259: $4f
	jr c, jr_08c_4294                                ; $425a: $38 $38

	inc a                                            ; $425c: $3c
	ld d, b                                          ; $425d: $50
	xor h                                            ; $425e: $ac
	pop af                                           ; $425f: $f1
	db $d3                                           ; $4260: $d3
	ld [hl], c                                       ; $4261: $71
	ccf                                              ; $4262: $3f
	pop af                                           ; $4263: $f1
	add hl, hl                                       ; $4264: $29
	ld a, $3c                                        ; $4265: $3e $3c
	dec sp                                           ; $4267: $3b
	dec a                                            ; $4268: $3d
	ld a, [hl-]                                      ; $4269: $3a
	ld c, b                                          ; $426a: $48
	and b                                            ; $426b: $a0
	cpl                                              ; $426c: $2f
	add sp, -$19                                     ; $426d: $e8 $e7
	add hl, bc                                       ; $426f: $09
	db $ec                                           ; $4270: $ec
	cp c                                             ; $4271: $b9
	xor b                                            ; $4272: $a8
	ldh a, [$a3]                                     ; $4273: $f0 $a3
	ldh a, [$0b]                                     ; $4275: $f0 $0b
	dec sp                                           ; $4277: $3b
	ccf                                              ; $4278: $3f
	add d                                            ; $4279: $82
	ld h, e                                          ; $427a: $63
	ld c, l                                          ; $427b: $4d
	ld a, [hl-]                                      ; $427c: $3a
	ld d, l                                          ; $427d: $55
	ccf                                              ; $427e: $3f
	and b                                            ; $427f: $a0
	ld b, [hl]                                       ; $4280: $46
	ld d, a                                          ; $4281: $57
	ld d, e                                          ; $4282: $53
	ld c, c                                          ; $4283: $49
	add hl, sp                                       ; $4284: $39
	xor b                                            ; $4285: $a8
	ldh a, [$08]                                     ; $4286: $f0 $08
	ld d, b                                          ; $4288: $50
	inc [hl]                                         ; $4289: $34
	ldh a, [$d6]                                     ; $428a: $f0 $d6
	inc [hl]                                         ; $428c: $34
	ldh a, [$bb]                                     ; $428d: $f0 $bb
	ld d, d                                          ; $428f: $52
	dec sp                                           ; $4290: $3b
	dec a                                            ; $4291: $3d
	ld h, e                                          ; $4292: $63
	ld b, l                                          ; $4293: $45

jr_08c_4294:
	and b                                            ; $4294: $a0
	ld b, b                                          ; $4295: $40
	add hl, sp                                       ; $4296: $39
	xor b                                            ; $4297: $a8
	ld b, [hl]                                       ; $4298: $46
	ld d, a                                          ; $4299: $57
	ld d, e                                          ; $429a: $53
	ld c, c                                          ; $429b: $49
	add hl, sp                                       ; $429c: $39
	and b                                            ; $429d: $a0
	ldh a, [$d6]                                     ; $429e: $f0 $d6
	ld c, e                                          ; $42a0: $4b
	inc [hl]                                         ; $42a1: $34
	ld l, e                                          ; $42a2: $6b
	ld h, d                                          ; $42a3: $62
	inc de                                           ; $42a4: $13
	pop af                                           ; $42a5: $f1
	xor e                                            ; $42a6: $ab
	ld h, h                                          ; $42a7: $64
	add hl, sp                                       ; $42a8: $39
	inc a                                            ; $42a9: $3c
	ld a, [hl-]                                      ; $42aa: $3a
	xor l                                            ; $42ab: $ad
	ld l, e                                          ; $42ac: $6b
	inc a                                            ; $42ad: $3c
	db $eb                                           ; $42ae: $eb
	call z, Call_08c_464b                            ; $42af: $cc $4b $46
	ld c, [hl]                                       ; $42b2: $4e
	and c                                            ; $42b3: $a1
	cpl                                              ; $42b4: $2f
	db $ed                                           ; $42b5: $ed
	xor c                                            ; $42b6: $a9
	ld b, d                                          ; $42b7: $42
	pop af                                           ; $42b8: $f1
	xor e                                            ; $42b9: $ab
	ld a, [hl-]                                      ; $42ba: $3a
	ld d, b                                          ; $42bb: $50
	ld a, [hl-]                                      ; $42bc: $3a
	ld b, c                                          ; $42bd: $41
	ld c, d                                          ; $42be: $4a
	ld c, a                                          ; $42bf: $4f
	jr c, @+$3a                                      ; $42c0: $38 $38

	ld b, l                                          ; $42c2: $45
	add hl, bc                                       ; $42c3: $09
	ld b, [hl]                                       ; $42c4: $46
	ld d, a                                          ; $42c5: $57
	ld d, e                                          ; $42c6: $53
	ld c, c                                          ; $42c7: $49
	add hl, sp                                       ; $42c8: $39
	xor b                                            ; $42c9: $a8
	ldh a, [$29]                                     ; $42ca: $f0 $29
	ld a, $38                                        ; $42cc: $3e $38
	ld a, [hl-]                                      ; $42ce: $3a
	xor b                                            ; $42cf: $a8
	ld c, d                                          ; $42d0: $4a
	ld c, a                                          ; $42d1: $4f
	inc [hl]                                         ; $42d2: $34
	ld l, e                                          ; $42d3: $6b
	ld h, d                                          ; $42d4: $62
	pop af                                           ; $42d5: $f1
	xor e                                            ; $42d6: $ab
	ld h, h                                          ; $42d7: $64
	add hl, sp                                       ; $42d8: $39
	inc a                                            ; $42d9: $3c
	ld a, [hl-]                                      ; $42da: $3a
	ld c, b                                          ; $42db: $48
	and b                                            ; $42dc: $a0
	ld b, [hl]                                       ; $42dd: $46
	ld d, a                                          ; $42de: $57
	ld d, e                                          ; $42df: $53
	ld c, c                                          ; $42e0: $49
	add hl, sp                                       ; $42e1: $39
	dec [hl]                                         ; $42e2: $35
	rla                                              ; $42e3: $17
	ld c, d                                          ; $42e4: $4a
	ld c, a                                          ; $42e5: $4f
	inc [hl]                                         ; $42e6: $34
	ld b, b                                          ; $42e7: $40
	add hl, sp                                       ; $42e8: $39
	jr c, jr_08c_4324                                ; $42e9: $38 $39

	ld b, d                                          ; $42eb: $42
	ld c, a                                          ; $42ec: $4f
	xor h                                            ; $42ed: $ac
	pop af                                           ; $42ee: $f1
	sbc $3b                                          ; $42ef: $de $3b
	ld h, c                                          ; $42f1: $61
	ld d, [hl]                                       ; $42f2: $56
	add hl, sp                                       ; $42f3: $39
	ld c, h                                          ; $42f4: $4c
	and b                                            ; $42f5: $a0
	adc b                                            ; $42f6: $88
	sub c                                            ; $42f7: $91
	inc [hl]                                         ; $42f8: $34
	ldh a, [$29]                                     ; $42f9: $f0 $29
	ld a, $38                                        ; $42fb: $3e $38
	ld h, e                                          ; $42fd: $63
	dec [hl]                                         ; $42fe: $35
	rla                                              ; $42ff: $17
	ld b, b                                          ; $4300: $40
	ld c, l                                          ; $4301: $4d
	ld e, e                                          ; $4302: $5b
	ld d, [hl]                                       ; $4303: $56
	xor h                                            ; $4304: $ac
	db $eb                                           ; $4305: $eb
	ld e, c                                          ; $4306: $59
	inc a                                            ; $4307: $3c
	ld a, [hl-]                                      ; $4308: $3a
	and b                                            ; $4309: $a0
	cpl                                              ; $430a: $2f
	ld d, h                                          ; $430b: $54
	ld d, h                                          ; $430c: $54
	ld c, e                                          ; $430d: $4b
	db $f4                                           ; $430e: $f4
	adc b                                            ; $430f: $88
	ld d, l                                          ; $4310: $55
	ldh a, [$a8]                                     ; $4311: $f0 $a8
	pop af                                           ; $4313: $f1
	xor e                                            ; $4314: $ab
	ld a, [hl-]                                      ; $4315: $3a
	ld b, c                                          ; $4316: $41
	ccf                                              ; $4317: $3f
	ld e, d                                          ; $4318: $5a
	add hl, sp                                       ; $4319: $39
	and c                                            ; $431a: $a1
	db $eb                                           ; $431b: $eb
	ccf                                              ; $431c: $3f
	xor l                                            ; $431d: $ad
	ldh a, [$a8]                                     ; $431e: $f0 $a8
	pop af                                           ; $4320: $f1
	xor e                                            ; $4321: $ab
	ld c, e                                          ; $4322: $4b
	ld b, [hl]                                       ; $4323: $46

jr_08c_4324:
	ld d, d                                          ; $4324: $52
	ld d, a                                          ; $4325: $57
	db $ec                                           ; $4326: $ec
	dec b                                            ; $4327: $05
	ld b, d                                          ; $4328: $42
	and b                                            ; $4329: $a0
	ldh a, [$a8]                                     ; $432a: $f0 $a8
	pop af                                           ; $432c: $f1
	xor e                                            ; $432d: $ab
	ld a, [hl-]                                      ; $432e: $3a
	ld b, c                                          ; $432f: $41
	ccf                                              ; $4330: $3f
	adc e                                            ; $4331: $8b
	ld e, h                                          ; $4332: $5c
	ld a, [hl-]                                      ; $4333: $3a
	ld b, d                                          ; $4334: $42
	xor c                                            ; $4335: $a9
	ld c, d                                          ; $4336: $4a
	ld c, a                                          ; $4337: $4f
	inc [hl]                                         ; $4338: $34
	ldh a, [$08]                                     ; $4339: $f0 $08
	ld c, c                                          ; $433b: $49
	ld b, c                                          ; $433c: $41
	ld e, d                                          ; $433d: $5a
	inc de                                           ; $433e: $13
	db $ec                                           ; $433f: $ec
	dec b                                            ; $4340: $05
	ld h, e                                          ; $4341: $63
	and b                                            ; $4342: $a0
	ldh a, [$a8]                                     ; $4343: $f0 $a8
	pop af                                           ; $4345: $f1
	xor e                                            ; $4346: $ab
	xor c                                            ; $4347: $a9
	ldh a, [$a8]                                     ; $4348: $f0 $a8
	pop af                                           ; $434a: $f1
	xor e                                            ; $434b: $ab
	ld c, e                                          ; $434c: $4b
	ret                                              ; $434d: $c9


	ld c, b                                          ; $434e: $48
	and b                                            ; $434f: $a0
	cpl                                              ; $4350: $2f
	ld d, h                                          ; $4351: $54
	ld b, d                                          ; $4352: $42
	inc [hl]                                         ; $4353: $34
	ldh a, [c]                                       ; $4354: $f2
	ld c, d                                          ; $4355: $4a
	di                                               ; $4356: $f3
	sbc l                                            ; $4357: $9d
	ldh a, [c]                                       ; $4358: $f2
	jp $f142                                         ; $4359: $c3 $42 $f1


	ld e, h                                          ; $435c: $5c
	ldh a, [$ed]                                     ; $435d: $f0 $ed
	ld c, e                                          ; $435f: $4b
	and c                                            ; $4360: $a1
	db $eb                                           ; $4361: $eb
	ccf                                              ; $4362: $3f
	xor b                                            ; $4363: $a8
	jp hl                                            ; $4364: $e9


	adc $5d                                          ; $4365: $ce $5d
	ld e, d                                          ; $4367: $5a
	xor h                                            ; $4368: $ac
	ld d, d                                          ; $4369: $52
	ld b, h                                          ; $436a: $44
	pop af                                           ; $436b: $f1
	xor e                                            ; $436c: $ab
	ld e, [hl]                                       ; $436d: $5e
	ld a, [hl-]                                      ; $436e: $3a
	jr c, jr_08c_43b3                                ; $436f: $38 $42

	ld c, b                                          ; $4371: $48
	and b                                            ; $4372: $a0
	jp hl                                            ; $4373: $e9


	adc $5d                                          ; $4374: $ce $5d
	ld e, d                                          ; $4376: $5a
	xor h                                            ; $4377: $ac
	ld d, d                                          ; $4378: $52
	ld b, h                                          ; $4379: $44
	pop af                                           ; $437a: $f1
	xor e                                            ; $437b: $ab
	ld e, [hl]                                       ; $437c: $5e
	ld a, [hl-]                                      ; $437d: $3a
	jr c, jr_08c_43c2                                ; $437e: $38 $42

	ld b, l                                          ; $4380: $45
	and b                                            ; $4381: $a0
	pop af                                           ; $4382: $f1
	ld e, h                                          ; $4383: $5c
	ld a, $51                                        ; $4384: $3e $51
	ldh a, [$cb]                                     ; $4386: $f0 $cb
	ccf                                              ; $4388: $3f
	xor h                                            ; $4389: $ac
	ret                                              ; $438a: $c9


	pop af                                           ; $438b: $f1
	xor e                                            ; $438c: $ab
	ld e, [hl]                                       ; $438d: $5e
	ld a, [hl-]                                      ; $438e: $3a
	jr c, jr_08c_43f4                                ; $438f: $38 $63

	and b                                            ; $4391: $a0
	ld b, b                                          ; $4392: $40
	ld c, l                                          ; $4393: $4d
	ld e, e                                          ; $4394: $5b
	ld d, [hl]                                       ; $4395: $56
	xor h                                            ; $4396: $ac
	ldh a, [rAUD2HIGH]                               ; $4397: $f0 $19
	ld b, a                                          ; $4399: $47
	sub [hl]                                         ; $439a: $96
	ld d, a                                          ; $439b: $57
	ld d, d                                          ; $439c: $52
	ld a, $66                                        ; $439d: $3e $66
	add hl, sp                                       ; $439f: $39
	and b                                            ; $43a0: $a0
	cpl                                              ; $43a1: $2f
	ld b, e                                          ; $43a2: $43
	ld b, b                                          ; $43a3: $40
	add hl, sp                                       ; $43a4: $39
	ld b, h                                          ; $43a5: $44
	ld c, h                                          ; $43a6: $4c
	and b                                            ; $43a7: $a0
	cpl                                              ; $43a8: $2f
	jp hl                                            ; $43a9: $e9


	cp e                                             ; $43aa: $bb
	xor h                                            ; $43ab: $ac
	ld [$6222], a                                    ; $43ac: $ea $22 $62
	inc de                                           ; $43af: $13
	db $eb                                           ; $43b0: $eb
	adc a                                            ; $43b1: $8f
	and e                                            ; $43b2: $a3

jr_08c_43b3:
	cpl                                              ; $43b3: $2f
	db $ed                                           ; $43b4: $ed
	xor c                                            ; $43b5: $a9
	jp hl                                            ; $43b6: $e9


	cp b                                             ; $43b7: $b8
	add hl, bc                                       ; $43b8: $09
	cpl                                              ; $43b9: $2f
	ld b, e                                          ; $43ba: $43
	db $ed                                           ; $43bb: $ed
	xor c                                            ; $43bc: $a9
	xor h                                            ; $43bd: $ac
	ld [$1322], a                                    ; $43be: $ea $22 $13
	ld [hl], d                                       ; $43c1: $72

jr_08c_43c2:
	ld b, a                                          ; $43c2: $47
	db $eb                                           ; $43c3: $eb
	ld e, h                                          ; $43c4: $5c
	and c                                            ; $43c5: $a1
	ld e, [hl]                                       ; $43c6: $5e
	dec sp                                           ; $43c7: $3b
	inc [hl]                                         ; $43c8: $34
	ld [$a922], a                                    ; $43c9: $ea $22 $a9
	ld l, a                                          ; $43cc: $6f
	ld c, e                                          ; $43cd: $4b
	ld b, [hl]                                       ; $43ce: $46
	ld d, d                                          ; $43cf: $52
	ld d, a                                          ; $43d0: $57
	ld c, b                                          ; $43d1: $48
	and b                                            ; $43d2: $a0
	cpl                                              ; $43d3: $2f
	jp hl                                            ; $43d4: $e9


	rst GetHLinHL                                          ; $43d5: $cf
	add hl, bc                                       ; $43d6: $09
	db $eb                                           ; $43d7: $eb
	db $f4                                           ; $43d8: $f4
	dec sp                                           ; $43d9: $3b
	ccf                                              ; $43da: $3f
	inc de                                           ; $43db: $13
	add d                                            ; $43dc: $82
	add hl, sp                                       ; $43dd: $39
	ld a, [hl-]                                      ; $43de: $3a
	ld d, b                                          ; $43df: $50
	ld c, b                                          ; $43e0: $48
	and b                                            ; $43e1: $a0
	cpl                                              ; $43e2: $2f
	jp hl                                            ; $43e3: $e9


	ret nc                                           ; $43e4: $d0

	add hl, bc                                       ; $43e5: $09
	cpl                                              ; $43e6: $2f
	add sp, $51                                      ; $43e7: $e8 $51
	add hl, bc                                       ; $43e9: $09
	ld b, b                                          ; $43ea: $40
	ld c, l                                          ; $43eb: $4d
	ld e, e                                          ; $43ec: $5b
	ld d, [hl]                                       ; $43ed: $56
	xor h                                            ; $43ee: $ac
	ld e, d                                          ; $43ef: $5a
	ld d, h                                          ; $43f0: $54
	ld b, a                                          ; $43f1: $47
	db $ec                                           ; $43f2: $ec
	rlca                                             ; $43f3: $07

jr_08c_43f4:
	and c                                            ; $43f4: $a1
	cpl                                              ; $43f5: $2f
	add sp, $0d                                      ; $43f6: $e8 $0d
	add hl, bc                                       ; $43f8: $09
	cpl                                              ; $43f9: $2f
	add sp, $2b                                      ; $43fa: $e8 $2b
	add hl, bc                                       ; $43fc: $09
	cpl                                              ; $43fd: $2f
	add sp, $52                                      ; $43fe: $e8 $52
	add hl, bc                                       ; $4400: $09
	cpl                                              ; $4401: $2f
	add sp, -$76                                     ; $4402: $e8 $8a
	add hl, bc                                       ; $4404: $09
	cpl                                              ; $4405: $2f
	jp hl                                            ; $4406: $e9


	cp c                                             ; $4407: $b9
	add hl, bc                                       ; $4408: $09
	ld l, a                                          ; $4409: $6f
	add a                                            ; $440a: $87
	adc e                                            ; $440b: $8b
	ld e, h                                          ; $440c: $5c
	ld a, [hl-]                                      ; $440d: $3a
	ld b, d                                          ; $440e: $42
	xor b                                            ; $440f: $a8
	jp hl                                            ; $4410: $e9


	ld b, h                                          ; $4411: $44
	and b                                            ; $4412: $a0
	cp e                                             ; $4413: $bb
	ld c, h                                          ; $4414: $4c
	and b                                            ; $4415: $a0
	cpl                                              ; $4416: $2f
	add sp, $63                                      ; $4417: $e8 $63
	add hl, bc                                       ; $4419: $09
	db $ec                                           ; $441a: $ec
	cp c                                             ; $441b: $b9
	xor b                                            ; $441c: $a8
	xor $06                                          ; $441d: $ee $06
	ld b, a                                          ; $441f: $47
	ldh a, [rLCDC]                                   ; $4420: $f0 $40
	ld c, l                                          ; $4422: $4d
	ccf                                              ; $4423: $3f
	ld c, b                                          ; $4424: $48
	and b                                            ; $4425: $a0
	db $ec                                           ; $4426: $ec
	reti                                             ; $4427: $d9


	xor h                                            ; $4428: $ac
	ld b, b                                          ; $4429: $40
	add hl, sp                                       ; $442a: $39
	ld [hl], a                                       ; $442b: $77
	add hl, sp                                       ; $442c: $39
	ld c, d                                          ; $442d: $4a
	ld a, $66                                        ; $442e: $3e $66
	add hl, sp                                       ; $4430: $39
	and b                                            ; $4431: $a0
	db $ec                                           ; $4432: $ec
	inc e                                            ; $4433: $1c
	xor b                                            ; $4434: $a8
	ld l, a                                          ; $4435: $6f
	inc [hl]                                         ; $4436: $34
	ld d, h                                          ; $4437: $54
	add hl, sp                                       ; $4438: $39
	jr c, jr_08c_4474                                ; $4439: $38 $39

	ld b, d                                          ; $443b: $42
	add a                                            ; $443c: $87
	adc e                                            ; $443d: $8b
	ld e, h                                          ; $443e: $5c
	and b                                            ; $443f: $a0
	cpl                                              ; $4440: $2f
	add sp, $43                                      ; $4441: $e8 $43
	and c                                            ; $4443: $a1
	rst JumpTable                                          ; $4444: $c7
	xor c                                            ; $4445: $a9
	ld l, a                                          ; $4446: $6f
	ld c, e                                          ; $4447: $4b
	adc e                                            ; $4448: $8b
	ld e, h                                          ; $4449: $5c
	ld a, [hl-]                                      ; $444a: $3a
	ld b, c                                          ; $444b: $41
	ld b, h                                          ; $444c: $44
	ld e, l                                          ; $444d: $5d
	ld e, d                                          ; $444e: $5a
	ld a, [hl-]                                      ; $444f: $3a
	ld c, b                                          ; $4450: $48
	and b                                            ; $4451: $a0
	add b                                            ; $4452: $80
	ld d, d                                          ; $4453: $52
	ld d, b                                          ; $4454: $50
	ld a, [hl-]                                      ; $4455: $3a
	inc a                                            ; $4456: $3c
	dec sp                                           ; $4457: $3b
	dec a                                            ; $4458: $3d
	xor c                                            ; $4459: $a9
	ld b, b                                          ; $445a: $40
	add hl, sp                                       ; $445b: $39
	ld c, b                                          ; $445c: $48
	and b                                            ; $445d: $a0
	db $eb                                           ; $445e: $eb
	add b                                            ; $445f: $80
	inc de                                           ; $4460: $13
	ld a, [hl-]                                      ; $4461: $3a
	ld b, d                                          ; $4462: $42
	inc a                                            ; $4463: $3c
	ld a, [hl-]                                      ; $4464: $3a
	ld [hl], h                                       ; $4465: $74
	ld c, b                                          ; $4466: $48
	and c                                            ; $4467: $a1
	cpl                                              ; $4468: $2f
	jp hl                                            ; $4469: $e9


	ld h, b                                          ; $446a: $60
	add hl, bc                                       ; $446b: $09
	add hl, sp                                       ; $446c: $39
	ldh a, [rSCY]                                    ; $446d: $f0 $42
	ldh a, [rSCY]                                    ; $446f: $f0 $42
	xor h                                            ; $4471: $ac
	ld l, a                                          ; $4472: $6f
	ld c, a                                          ; $4473: $4f

jr_08c_4474:
	db $ec                                           ; $4474: $ec
	db $f4                                           ; $4475: $f4
	and b                                            ; $4476: $a0
	add hl, sp                                       ; $4477: $39
	ldh a, [rSCY]                                    ; $4478: $f0 $42
	ldh a, [rSCY]                                    ; $447a: $f0 $42
	xor h                                            ; $447c: $ac
	ldh a, [$c0]                                     ; $447d: $f0 $c0
	ldh a, [$f0]                                     ; $447f: $f0 $f0
	ld c, c                                          ; $4481: $49
	di                                               ; $4482: $f3
	ld [bc], a                                       ; $4483: $02
	pop af                                           ; $4484: $f1
	ld [$423a], a                                    ; $4485: $ea $3a $42
	ld c, h                                          ; $4488: $4c
	and b                                            ; $4489: $a0
	add hl, sp                                       ; $448a: $39
	ldh a, [rSCY]                                    ; $448b: $f0 $42
	ldh a, [rSCY]                                    ; $448d: $f0 $42
	xor h                                            ; $448f: $ac
	ldh a, [c]                                       ; $4490: $f2
	sub e                                            ; $4491: $93
	ldh a, [$f0]                                     ; $4492: $f0 $f0
	inc [hl]                                         ; $4494: $34
	di                                               ; $4495: $f3
	ld [bc], a                                       ; $4496: $02
	pop af                                           ; $4497: $f1
	ld [$423a], a                                    ; $4498: $ea $3a $42
	ld c, h                                          ; $449b: $4c
	and b                                            ; $449c: $a0
	db $ed                                           ; $449d: $ed
	ld l, a                                          ; $449e: $6f
	ld h, c                                          ; $449f: $61
	db $ec                                           ; $44a0: $ec
	cp c                                             ; $44a1: $b9
	ld c, h                                          ; $44a2: $4c
	and b                                            ; $44a3: $a0
	cpl                                              ; $44a4: $2f
	pop af                                           ; $44a5: $f1
	ld a, a                                          ; $44a6: $7f
	ld h, d                                          ; $44a7: $62
	ld e, h                                          ; $44a8: $5c
	ld c, [hl]                                       ; $44a9: $4e
	ldh a, [$78]                                     ; $44aa: $f0 $78
	ldh a, [$f4]                                     ; $44ac: $f0 $f4
	ld d, e                                          ; $44ae: $53
	dec a                                            ; $44af: $3d
	ld d, d                                          ; $44b0: $52
	ld d, b                                          ; $44b1: $50
	ld a, [hl-]                                      ; $44b2: $3a
	jr c, jr_08c_4501                                ; $44b3: $38 $4c

	add hl, bc                                       ; $44b5: $09
	ld l, a                                          ; $44b6: $6f
	ld c, a                                          ; $44b7: $4f
	xor h                                            ; $44b8: $ac
	ld b, b                                          ; $44b9: $40
	ld b, d                                          ; $44ba: $42
	ldh a, [$78]                                     ; $44bb: $f0 $78
	ldh a, [$f4]                                     ; $44bd: $f0 $f4
	ld d, e                                          ; $44bf: $53
	adc e                                            ; $44c0: $8b
	ld e, h                                          ; $44c1: $5c
	ld a, [hl-]                                      ; $44c2: $3a
	ld b, d                                          ; $44c3: $42
	and b                                            ; $44c4: $a0
	db $f4                                           ; $44c5: $f4
	dec bc                                           ; $44c6: $0b
	ld a, b                                          ; $44c7: $78
	inc [hl]                                         ; $44c8: $34
	db $ec                                           ; $44c9: $ec
	sub d                                            ; $44ca: $92
	db $f4                                           ; $44cb: $f4
	ld b, [hl]                                       ; $44cc: $46
	ld b, a                                          ; $44cd: $47
	inc de                                           ; $44ce: $13
	ld a, [hl-]                                      ; $44cf: $3a
	dec sp                                           ; $44d0: $3b
	ld h, c                                          ; $44d1: $61
	ld d, [hl]                                       ; $44d2: $56
	add hl, sp                                       ; $44d3: $39
	inc a                                            ; $44d4: $3c
	ld c, a                                          ; $44d5: $4f
	ld c, h                                          ; $44d6: $4c
	and b                                            ; $44d7: $a0
	ld d, c                                          ; $44d8: $51
	ld [hl], b                                       ; $44d9: $70
	jr c, jr_08c_44ef                                ; $44da: $38 $13

	db $ec                                           ; $44dc: $ec
	sub d                                            ; $44dd: $92
	ld b, h                                          ; $44de: $44
	dec sp                                           ; $44df: $3b
	dec a                                            ; $44e0: $3d
	ld c, a                                          ; $44e1: $4f
	ld b, c                                          ; $44e2: $41
	ld c, h                                          ; $44e3: $4c
	and b                                            ; $44e4: $a0
	cpl                                              ; $44e5: $2f
	ld h, c                                          ; $44e6: $61
	dec sp                                           ; $44e7: $3b
	ld c, c                                          ; $44e8: $49
	ld c, a                                          ; $44e9: $4f
	add hl, bc                                       ; $44ea: $09
	rst JumpTable                                          ; $44eb: $c7
	xor c                                            ; $44ec: $a9
	add b                                            ; $44ed: $80
	ld d, d                                          ; $44ee: $52

jr_08c_44ef:
	ld d, b                                          ; $44ef: $50
	ld a, [hl-]                                      ; $44f0: $3a
	inc a                                            ; $44f1: $3c
	dec sp                                           ; $44f2: $3b
	dec a                                            ; $44f3: $3d
	inc de                                           ; $44f4: $13
	db $ec                                           ; $44f5: $ec
	ld [de], a                                       ; $44f6: $12
	ld c, b                                          ; $44f7: $48
	and b                                            ; $44f8: $a0
	ldh a, [$7e]                                     ; $44f9: $f0 $7e
	pop af                                           ; $44fb: $f1
	inc sp                                           ; $44fc: $33
	ld [hl], e                                       ; $44fd: $73
	ld l, c                                          ; $44fe: $69
	ldh a, [rAUD1LEN]                                ; $44ff: $f0 $11

jr_08c_4501:
	ld e, c                                          ; $4501: $59
	add e                                            ; $4502: $83
	ldh a, [rDIV]                                    ; $4503: $f0 $04
	ld e, c                                          ; $4505: $59
	inc de                                           ; $4506: $13
	adc e                                            ; $4507: $8b
	ld e, h                                          ; $4508: $5c
	db $ec                                           ; $4509: $ec
	ret c                                            ; $450a: $d8

	ld b, d                                          ; $450b: $42
	and c                                            ; $450c: $a1
	add b                                            ; $450d: $80
	ld d, d                                          ; $450e: $52
	ld d, b                                          ; $450f: $50
	ld a, [hl-]                                      ; $4510: $3a
	inc a                                            ; $4511: $3c
	dec sp                                           ; $4512: $3b
	dec a                                            ; $4513: $3d
	inc de                                           ; $4514: $13
	db $ec                                           ; $4515: $ec
	ld [de], a                                       ; $4516: $12
	ld c, b                                          ; $4517: $48
	and b                                            ; $4518: $a0
	cpl                                              ; $4519: $2f
	sbc h                                            ; $451a: $9c
	dec sp                                           ; $451b: $3b
	ld c, c                                          ; $451c: $49
	ldh a, [rAUD3LEVEL]                              ; $451d: $f0 $1c
	ld h, d                                          ; $451f: $62
	add b                                            ; $4520: $80
	ldh a, [$fe]                                     ; $4521: $f0 $fe
	dec sp                                           ; $4523: $3b
	ccf                                              ; $4524: $3f
	dec a                                            ; $4525: $3d
	inc a                                            ; $4526: $3c
	ld d, b                                          ; $4527: $50
	ld c, b                                          ; $4528: $48
	add hl, bc                                       ; $4529: $09
	ldh a, [rAUD3LEVEL]                              ; $452a: $f0 $1c
	ld h, d                                          ; $452c: $62
	add b                                            ; $452d: $80
	ldh a, [$fe]                                     ; $452e: $f0 $fe
	dec sp                                           ; $4530: $3b
	ccf                                              ; $4531: $3f
	dec a                                            ; $4532: $3d
	ld b, d                                          ; $4533: $42
	xor c                                            ; $4534: $a9
	ret nz                                           ; $4535: $c0

	ld c, b                                          ; $4536: $48
	and b                                            ; $4537: $a0
	ld b, b                                          ; $4538: $40
	ld b, c                                          ; $4539: $41
	ld a, [hl-]                                      ; $453a: $3a
	ld b, a                                          ; $453b: $47
	inc [hl]                                         ; $453c: $34
	ldh a, [$71]                                     ; $453d: $f0 $71
	inc a                                            ; $453f: $3c
	dec sp                                           ; $4540: $3b
	dec a                                            ; $4541: $3d
	and c                                            ; $4542: $a1
	ld b, b                                          ; $4543: $40
	ld b, c                                          ; $4544: $41
	ld a, [hl-]                                      ; $4545: $3a
	ld b, a                                          ; $4546: $47
	ldh a, [$71]                                     ; $4547: $f0 $71
	ld d, l                                          ; $4549: $55
	ld a, [hl-]                                      ; $454a: $3a
	jr c, jr_08c_4596                                ; $454b: $38 $49

	inc de                                           ; $454d: $13
	ld [hl], a                                       ; $454e: $77
	add hl, sp                                       ; $454f: $39
	ld e, l                                          ; $4550: $5d
	ld e, d                                          ; $4551: $5a
	ld c, b                                          ; $4552: $48
	and b                                            ; $4553: $a0
	ret                                              ; $4554: $c9


	ldh a, [$71]                                     ; $4555: $f0 $71
	jr c, jr_08c_45b6                                ; $4557: $38 $5d

	ld e, d                                          ; $4559: $5a
	inc de                                           ; $455a: $13
	sub [hl]                                         ; $455b: $96
	ld d, a                                          ; $455c: $57
	ld d, d                                          ; $455d: $52
	ld a, $66                                        ; $455e: $3e $66
	add hl, sp                                       ; $4560: $39
	and b                                            ; $4561: $a0
	ldh a, [$80]                                     ; $4562: $f0 $80
	ldh a, [$c5]                                     ; $4564: $f0 $c5
	ldh a, [$71]                                     ; $4566: $f0 $71
	inc a                                            ; $4568: $3c
	dec sp                                           ; $4569: $3b
	dec a                                            ; $456a: $3d
	ld c, h                                          ; $456b: $4c
	and b                                            ; $456c: $a0
	cpl                                              ; $456d: $2f
	add sp, $15                                      ; $456e: $e8 $15
	add hl, bc                                       ; $4570: $09
	add hl, sp                                       ; $4571: $39
	inc [hl]                                         ; $4572: $34
	xor $1f                                          ; $4573: $ee $1f
	xor b                                            ; $4575: $a8
	xor $06                                          ; $4576: $ee $06
	ld b, h                                          ; $4578: $44
	dec sp                                           ; $4579: $3b
	dec a                                            ; $457a: $3d
	inc a                                            ; $457b: $3c
	ld d, b                                          ; $457c: $50
	inc de                                           ; $457d: $13
	pop af                                           ; $457e: $f1
	ld l, c                                          ; $457f: $69
	ld a, a                                          ; $4580: $7f
	ld c, b                                          ; $4581: $48
	and b                                            ; $4582: $a0
	ld d, d                                          ; $4583: $52
	ld b, [hl]                                       ; $4584: $46
	inc [hl]                                         ; $4585: $34
	ld b, b                                          ; $4586: $40
	add hl, sp                                       ; $4587: $39
	jr c, jr_08c_45c3                                ; $4588: $38 $39

	sbc d                                            ; $458a: $9a
	ld b, a                                          ; $458b: $47
	inc de                                           ; $458c: $13
	ld a, $3f                                        ; $458d: $3e $3f
	ld h, h                                          ; $458f: $64
	ld e, h                                          ; $4590: $5c
	ld d, d                                          ; $4591: $52
	ld a, $66                                        ; $4592: $3e $66
	add hl, sp                                       ; $4594: $39
	xor b                                            ; $4595: $a8

jr_08c_4596:
	add hl, sp                                       ; $4596: $39
	ldh a, [rSCY]                                    ; $4597: $f0 $42
	ldh a, [rSCY]                                    ; $4599: $f0 $42
	ldh a, [rSCY]                                    ; $459b: $f0 $42
	and b                                            ; $459d: $a0
	ld c, c                                          ; $459e: $49
	ld d, a                                          ; $459f: $57
	ld b, [hl]                                       ; $45a0: $46
	ld e, [hl]                                       ; $45a1: $5e
	sbc h                                            ; $45a2: $9c
	xor h                                            ; $45a3: $ac
	xor $08                                          ; $45a4: $ee $08
	ld b, l                                          ; $45a6: $45
	ld d, a                                          ; $45a7: $57
	ld c, e                                          ; $45a8: $4b
	inc de                                           ; $45a9: $13
	ldh a, [$71]                                     ; $45aa: $f0 $71
	ld d, l                                          ; $45ac: $55
	ld a, [hl-]                                      ; $45ad: $3a
	inc a                                            ; $45ae: $3c
	dec sp                                           ; $45af: $3b
	dec a                                            ; $45b0: $3d
	ld h, e                                          ; $45b1: $63
	and b                                            ; $45b2: $a0
	cpl                                              ; $45b3: $2f
	add sp, $35                                      ; $45b4: $e8 $35

jr_08c_45b6:
	and c                                            ; $45b6: $a1
	rst JumpTable                                          ; $45b7: $c7
	xor c                                            ; $45b8: $a9
	ld b, b                                          ; $45b9: $40
	add hl, sp                                       ; $45ba: $39
	ld b, h                                          ; $45bb: $44
	ld b, l                                          ; $45bc: $45
	ld c, h                                          ; $45bd: $4c
	xor b                                            ; $45be: $a8
	ldh a, [$ab]                                     ; $45bf: $f0 $ab
	ld b, d                                          ; $45c1: $42
	adc h                                            ; $45c2: $8c

jr_08c_45c3:
	ld b, h                                          ; $45c3: $44
	ld c, a                                          ; $45c4: $4f
	ld b, c                                          ; $45c5: $41
	ld c, b                                          ; $45c6: $48
	and b                                            ; $45c7: $a0
	ld b, b                                          ; $45c8: $40
	ld b, c                                          ; $45c9: $41
	ld a, [hl-]                                      ; $45ca: $3a
	ld d, h                                          ; $45cb: $54
	ld c, c                                          ; $45cc: $49
	ld a, [hl-]                                      ; $45cd: $3a
	jr c, jr_08c_4633                                ; $45ce: $38 $63

	ld b, l                                          ; $45d0: $45
	xor b                                            ; $45d1: $a8
	ldh a, [$98]                                     ; $45d2: $f0 $98
	ld b, a                                          ; $45d4: $47
	db $ed                                           ; $45d5: $ed
	ld b, e                                          ; $45d6: $43
	inc [hl]                                         ; $45d7: $34
	ldh a, [$71]                                     ; $45d8: $f0 $71
	jr c, jr_08c_462b                                ; $45da: $38 $4f

	ld b, d                                          ; $45dc: $42
	sbc l                                            ; $45dd: $9d
	ld d, b                                          ; $45de: $50
	jr c, jr_08c_45f4                                ; $45df: $38 $13

	ld b, [hl]                                       ; $45e1: $46
	ld c, [hl]                                       ; $45e2: $4e
	ld c, d                                          ; $45e3: $4a
	ld a, $66                                        ; $45e4: $3e $66
	add hl, sp                                       ; $45e6: $39
	and b                                            ; $45e7: $a0
	ldh a, [$34]                                     ; $45e8: $f0 $34
	ld b, a                                          ; $45ea: $47
	ld h, h                                          ; $45eb: $64
	inc a                                            ; $45ec: $3c
	ld a, $55                                        ; $45ed: $3e $55
	ld a, [hl-]                                      ; $45ef: $3a
	jr c, jr_08c_463b                                ; $45f0: $38 $49

	inc de                                           ; $45f2: $13
	ld [hl], a                                       ; $45f3: $77

jr_08c_45f4:
	add hl, sp                                       ; $45f4: $39
	ld a, [hl-]                                      ; $45f5: $3a
	ld c, b                                          ; $45f6: $48
	and b                                            ; $45f7: $a0
	cpl                                              ; $45f8: $2f
	jp hl                                            ; $45f9: $e9


	ld a, e                                          ; $45fa: $7b
	add hl, bc                                       ; $45fb: $09
	ld l, a                                          ; $45fc: $6f
	dec sp                                           ; $45fd: $3b
	ccf                                              ; $45fe: $3f
	ld a, a                                          ; $45ff: $7f
	ld d, e                                          ; $4600: $53
	ldh a, [c]                                       ; $4601: $f2
	ld e, c                                          ; $4602: $59
	jr c, @+$44                                      ; $4603: $38 $42

	ld b, l                                          ; $4605: $45
	xor l                                            ; $4606: $ad
	adc e                                            ; $4607: $8b
	ld e, h                                          ; $4608: $5c
	ld a, [hl-]                                      ; $4609: $3a
	add h                                            ; $460a: $84
	ld b, a                                          ; $460b: $47
	ldh a, [c]                                       ; $460c: $f2
	ld l, e                                          ; $460d: $6b
	ldh a, [rAUD4GO]                                 ; $460e: $f0 $23
	ld c, a                                          ; $4610: $4f
	xor l                                            ; $4611: $ad
	ld a, [hl-]                                      ; $4612: $3a
	inc [hl]                                         ; $4613: $34
	ld l, e                                          ; $4614: $6b
	ld c, d                                          ; $4615: $4a
	ld c, a                                          ; $4616: $4f
	ld a, [hl-]                                      ; $4617: $3a
	jr c, jr_08c_465c                                ; $4618: $38 $42

	and b                                            ; $461a: $a0
	ld l, a                                          ; $461b: $6f
	dec sp                                           ; $461c: $3b
	ccf                                              ; $461d: $3f
	inc [hl]                                         ; $461e: $34
	ld b, b                                          ; $461f: $40
	ld b, c                                          ; $4620: $41
	ld a, [hl-]                                      ; $4621: $3a
	ld b, a                                          ; $4622: $47
	inc de                                           ; $4623: $13
	ldh a, [c]                                       ; $4624: $f2
	sub h                                            ; $4625: $94
	push af                                          ; $4626: $f5
	ld h, d                                          ; $4627: $62
	ld b, a                                          ; $4628: $47
	ld [hl], d                                       ; $4629: $72
	ld e, [hl]                                       ; $462a: $5e

jr_08c_462b:
	ld c, [hl]                                       ; $462b: $4e
	ld b, d                                          ; $462c: $42
	inc a                                            ; $462d: $3c
	ld a, $50                                        ; $462e: $3e $50
	and c                                            ; $4630: $a1
	db $ed                                           ; $4631: $ed
	ld b, e                                          ; $4632: $43

jr_08c_4633:
	ld l, a                                          ; $4633: $6f
	ld c, b                                          ; $4634: $48
	xor h                                            ; $4635: $ac
	ld b, b                                          ; $4636: $40
	ld b, c                                          ; $4637: $41
	ld a, [hl-]                                      ; $4638: $3a
	ld b, a                                          ; $4639: $47
	ld a, a                                          ; $463a: $7f

jr_08c_463b:
	ld d, e                                          ; $463b: $53
	inc de                                           ; $463c: $13
	ldh a, [$9c]                                     ; $463d: $f0 $9c
	ld d, l                                          ; $463f: $55
	ld a, [hl-]                                      ; $4640: $3a
	jr c, jr_08c_4692                                ; $4641: $38 $4f

	ld b, d                                          ; $4643: $42
	ld c, b                                          ; $4644: $48
	and b                                            ; $4645: $a0
	ldh a, [$71]                                     ; $4646: $f0 $71
	inc a                                            ; $4648: $3c
	dec sp                                           ; $4649: $3b
	dec a                                            ; $464a: $3d

Call_08c_464b:
Jump_08c_464b:
	ld e, l                                          ; $464b: $5d
	ld e, d                                          ; $464c: $5a
	xor h                                            ; $464d: $ac
	db $ec                                           ; $464e: $ec
	inc sp                                           ; $464f: $33
	ld c, c                                          ; $4650: $49
	inc a                                            ; $4651: $3c
	ld d, e                                          ; $4652: $53
	inc de                                           ; $4653: $13
	db $ed                                           ; $4654: $ed
	ld c, c                                          ; $4655: $49
	ld b, h                                          ; $4656: $44
	dec sp                                           ; $4657: $3b
	dec a                                            ; $4658: $3d
	ld c, h                                          ; $4659: $4c
	and b                                            ; $465a: $a0
	cpl                                              ; $465b: $2f

jr_08c_465c:
	sbc $38                                          ; $465c: $de $38
	ld c, [hl]                                       ; $465e: $4e
	ld l, h                                          ; $465f: $6c
	dec a                                            ; $4660: $3d
	jr c, jr_08c_46a7                                ; $4661: $38 $44

	dec sp                                           ; $4663: $3b
	dec a                                            ; $4664: $3d
	ld c, h                                          ; $4665: $4c
	add hl, bc                                       ; $4666: $09
	adc b                                            ; $4667: $88
	sub c                                            ; $4668: $91
	ld b, d                                          ; $4669: $42
	di                                               ; $466a: $f3
	inc l                                            ; $466b: $2c
	di                                               ; $466c: $f3
	dec l                                            ; $466d: $2d
	ld c, a                                          ; $466e: $4f
	inc de                                           ; $466f: $13
	ld b, [hl]                                       ; $4670: $46
	ld b, c                                          ; $4671: $41
	ld a, [hl-]                                      ; $4672: $3a
	pop af                                           ; $4673: $f1
	ld a, a                                          ; $4674: $7f
	ld b, a                                          ; $4675: $47
	inc de                                           ; $4676: $13
	db $ec                                           ; $4677: $ec
	inc de                                           ; $4678: $13
	ld b, d                                          ; $4679: $42
	inc a                                            ; $467a: $3c
	ld a, $50                                        ; $467b: $3e $50
	ld c, b                                          ; $467d: $48
	and c                                            ; $467e: $a1
	ld b, b                                          ; $467f: $40
	add hl, sp                                       ; $4680: $39
	ld [hl], a                                       ; $4681: $77
	dec sp                                           ; $4682: $3b
	dec a                                            ; $4683: $3d
	ld c, d                                          ; $4684: $4a
	ld a, $66                                        ; $4685: $3e $66
	add hl, sp                                       ; $4687: $39
	xor b                                            ; $4688: $a8
	ldh a, [$5f]                                     ; $4689: $f0 $5f
	ldh a, [$9b]                                     ; $468b: $f0 $9b
	ld b, d                                          ; $468d: $42
	pop af                                           ; $468e: $f1
	ld [$73f0], sp                                   ; $468f: $08 $f0 $73

jr_08c_4692:
	dec sp                                           ; $4692: $3b
	ccf                                              ; $4693: $3f
	xor h                                            ; $4694: $ac
	ld d, c                                          ; $4695: $51
	ld [hl], b                                       ; $4696: $70
	jr c, jr_08c_46e5                                ; $4697: $38 $4c

	and b                                            ; $4699: $a0
	db $eb                                           ; $469a: $eb
	dec h                                            ; $469b: $25
	ld b, [hl]                                       ; $469c: $46
	dec sp                                           ; $469d: $3b
	dec a                                            ; $469e: $3d
	ld c, h                                          ; $469f: $4c
	xor b                                            ; $46a0: $a8
	ld d, c                                          ; $46a1: $51
	ld [hl], b                                       ; $46a2: $70
	inc a                                            ; $46a3: $3c
	dec sp                                           ; $46a4: $3b
	dec a                                            ; $46a5: $3d
	ld a, [hl-]                                      ; $46a6: $3a

jr_08c_46a7:
	ld c, b                                          ; $46a7: $48
	and b                                            ; $46a8: $a0
	cpl                                              ; $46a9: $2f
	ld e, [hl]                                       ; $46aa: $5e
	dec sp                                           ; $46ab: $3b
	ld [hl], $f0                                     ; $46ac: $36 $f0
	inc e                                            ; $46ae: $1c
	ld h, d                                          ; $46af: $62
	add b                                            ; $46b0: $80
	ldh a, [$fe]                                     ; $46b1: $f0 $fe
	dec sp                                           ; $46b3: $3b
	ccf                                              ; $46b4: $3f
	dec a                                            ; $46b5: $3d
	inc a                                            ; $46b6: $3c
	ld d, b                                          ; $46b7: $50
	ld c, b                                          ; $46b8: $48
	add hl, bc                                       ; $46b9: $09
	db $ec                                           ; $46ba: $ec
	dec hl                                           ; $46bb: $2b
	db $ed                                           ; $46bc: $ed
	ld c, c                                          ; $46bd: $49
	ld b, h                                          ; $46be: $44
	dec sp                                           ; $46bf: $3b
	dec a                                            ; $46c0: $3d
	inc de                                           ; $46c1: $13
	ld b, d                                          ; $46c2: $42
	ld b, a                                          ; $46c3: $47
	xor b                                            ; $46c4: $a8
	xor $06                                          ; $46c5: $ee $06
	ld b, a                                          ; $46c7: $47
	ld [hl], d                                       ; $46c8: $72
	ccf                                              ; $46c9: $3f
	ccf                                              ; $46ca: $3f
	pop af                                           ; $46cb: $f1
	add hl, hl                                       ; $46cc: $29
	ld a, $3c                                        ; $46cd: $3e $3c
	dec sp                                           ; $46cf: $3b
	dec a                                            ; $46d0: $3d
	ld a, [hl-]                                      ; $46d1: $3a
	ld c, b                                          ; $46d2: $48
	and b                                            ; $46d3: $a0
	ld e, [hl]                                       ; $46d4: $5e
	dec sp                                           ; $46d5: $3b
	inc [hl]                                         ; $46d6: $34
	ldh a, [$71]                                     ; $46d7: $f0 $71
	inc a                                            ; $46d9: $3c
	dec sp                                           ; $46da: $3b
	dec a                                            ; $46db: $3d
	ld b, d                                          ; $46dc: $42
	xor c                                            ; $46dd: $a9
	ld l, a                                          ; $46de: $6f
	ld c, d                                          ; $46df: $4a
	ld d, c                                          ; $46e0: $51
	ld d, b                                          ; $46e1: $50
	ld [hl], d                                       ; $46e2: $72
	ccf                                              ; $46e3: $3f
	dec a                                            ; $46e4: $3d

jr_08c_46e5:
	ld b, d                                          ; $46e5: $42
	ld b, a                                          ; $46e6: $47
	ld c, b                                          ; $46e7: $48
	and b                                            ; $46e8: $a0
	db $ec                                           ; $46e9: $ec
	db $d3                                           ; $46ea: $d3
	xor h                                            ; $46eb: $ac
	ldh a, [rAUD3LEVEL]                              ; $46ec: $f0 $1c
	ld h, d                                          ; $46ee: $62
	add b                                            ; $46ef: $80
	ldh a, [$fe]                                     ; $46f0: $f0 $fe
	dec sp                                           ; $46f2: $3b
	ccf                                              ; $46f3: $3f
	dec a                                            ; $46f4: $3d
	ld b, d                                          ; $46f5: $42
	and c                                            ; $46f6: $a1
	cpl                                              ; $46f7: $2f
	rst JumpTable                                          ; $46f8: $c7
	ld b, h                                          ; $46f9: $44
	dec sp                                           ; $46fa: $3b
	dec a                                            ; $46fb: $3d
	ld c, h                                          ; $46fc: $4c
	add hl, bc                                       ; $46fd: $09
	db $ec                                           ; $46fe: $ec
	inc sp                                           ; $46ff: $33
	ld b, h                                          ; $4700: $44
	ld e, l                                          ; $4701: $5d
	inc de                                           ; $4702: $13
	ld c, a                                          ; $4703: $4f
	add hl, sp                                       ; $4704: $39
	ld l, l                                          ; $4705: $6d
	ldh a, [$0d]                                     ; $4706: $f0 $0d
	inc [hl]                                         ; $4708: $34
	ld [hl], d                                       ; $4709: $72
	ccf                                              ; $470a: $3f
	ld l, h                                          ; $470b: $6c
	dec a                                            ; $470c: $3d
	jr c, jr_08c_4749                                ; $470d: $38 $3a

	ld c, b                                          ; $470f: $48
	and b                                            ; $4710: $a0
	ldh a, [$31]                                     ; $4711: $f0 $31
	ld c, e                                          ; $4713: $4b
	ldh a, [$71]                                     ; $4714: $f0 $71
	inc a                                            ; $4716: $3c
	dec sp                                           ; $4717: $3b
	dec a                                            ; $4718: $3d
	ld b, c                                          ; $4719: $41
	inc de                                           ; $471a: $13
	ld c, d                                          ; $471b: $4a
	ld a, $66                                        ; $471c: $3e $66
	add hl, sp                                       ; $471e: $39
	dec [hl]                                         ; $471f: $35
	add hl, sp                                       ; $4720: $39
	ldh a, [rSCY]                                    ; $4721: $f0 $42
	ldh a, [rSCY]                                    ; $4723: $f0 $42
	ldh a, [rSCY]                                    ; $4725: $f0 $42
	ld c, b                                          ; $4727: $48
	and b                                            ; $4728: $a0

jr_08c_4729:
	db $ec                                           ; $4729: $ec
	inc sp                                           ; $472a: $33
	ld b, h                                          ; $472b: $44
	ld e, l                                          ; $472c: $5d
	ld a, [hl-]                                      ; $472d: $3a
	ld d, b                                          ; $472e: $50
	inc de                                           ; $472f: $13
	jr c, jr_08c_476a                                ; $4730: $38 $38

	ld b, d                                          ; $4732: $42
	ld b, a                                          ; $4733: $47
	ld c, h                                          ; $4734: $4c
	and b                                            ; $4735: $a0
	ldh a, [$80]                                     ; $4736: $f0 $80
	ldh a, [$c5]                                     ; $4738: $f0 $c5
	inc [hl]                                         ; $473a: $34
	ldh a, [$c9]                                     ; $473b: $f0 $c9
	jr c, jr_08c_477e                                ; $473d: $38 $3f

	ld c, [hl]                                       ; $473f: $4e
	ld c, h                                          ; $4740: $4c
	xor b                                            ; $4741: $a8
	jp hl                                            ; $4742: $e9


	ld b, h                                          ; $4743: $44
	and b                                            ; $4744: $a0
	jr c, @+$3a                                      ; $4745: $38 $38

	pop af                                           ; $4747: $f1
	db $eb                                           ; $4748: $eb

jr_08c_4749:
	ld [hl], c                                       ; $4749: $71
	ld b, h                                          ; $474a: $44
	dec sp                                           ; $474b: $3b
	dec a                                            ; $474c: $3d
	ld c, h                                          ; $474d: $4c
	and b                                            ; $474e: $a0
	cpl                                              ; $474f: $2f
	db $ed                                           ; $4750: $ed
	xor c                                            ; $4751: $a9
	ld b, d                                          ; $4752: $42
	ldh a, [$d2]                                     ; $4753: $f0 $d2
	ld h, d                                          ; $4755: $62
	ld [hl], d                                       ; $4756: $72
	ccf                                              ; $4757: $3f
	dec a                                            ; $4758: $3d
	inc a                                            ; $4759: $3c
	ld d, b                                          ; $475a: $50
	ld c, b                                          ; $475b: $48
	add hl, bc                                       ; $475c: $09
	ld e, [hl]                                       ; $475d: $5e
	dec sp                                           ; $475e: $3b
	xor c                                            ; $475f: $a9
	ld b, b                                          ; $4760: $40
	ld b, c                                          ; $4761: $41
	ld a, [hl-]                                      ; $4762: $3a
	inc [hl]                                         ; $4763: $34
	db $eb                                           ; $4764: $eb
	ld c, a                                          ; $4765: $4f
	xor l                                            ; $4766: $ad
	ld c, d                                          ; $4767: $4a
	ld c, a                                          ; $4768: $4f
	inc [hl]                                         ; $4769: $34

jr_08c_476a:
	ldh a, [$29]                                     ; $476a: $f0 $29
	ld a, $38                                        ; $476c: $3e $38
	ld a, [hl-]                                      ; $476e: $3a
	ld c, b                                          ; $476f: $48
	and b                                            ; $4770: $a0
	ld b, b                                          ; $4771: $40
	inc [hl]                                         ; $4772: $34
	ld b, b                                          ; $4773: $40
	ld b, c                                          ; $4774: $41
	ld a, [hl-]                                      ; $4775: $3a
	sbc d                                            ; $4776: $9a
	add d                                            ; $4777: $82
	dec sp                                           ; $4778: $3b
	ccf                                              ; $4779: $3f
	xor h                                            ; $477a: $ac
	db $eb                                           ; $477b: $eb
	ld l, d                                          ; $477c: $6a
	ld a, [hl-]                                      ; $477d: $3a

jr_08c_477e:
	jr c, jr_08c_4729                                ; $477e: $38 $a9

	ldh a, [$29]                                     ; $4780: $f0 $29
	ld a, $38                                        ; $4782: $3e $38
	ld e, l                                          ; $4784: $5d
	ld e, d                                          ; $4785: $5a
	ld c, b                                          ; $4786: $48
	and b                                            ; $4787: $a0
	ldh a, [rAUD4ENV]                                ; $4788: $f0 $21
	ld c, c                                          ; $478a: $49
	pop af                                           ; $478b: $f1
	dec a                                            ; $478c: $3d
	inc a                                            ; $478d: $3c
	dec sp                                           ; $478e: $3b
	ccf                                              ; $478f: $3f
	ld b, b                                          ; $4790: $40
	ld b, c                                          ; $4791: $41
	ld a, [hl-]                                      ; $4792: $3a
	sbc d                                            ; $4793: $9a
	inc de                                           ; $4794: $13
	add d                                            ; $4795: $82
	ld h, e                                          ; $4796: $63
	ld c, l                                          ; $4797: $4d
	ld c, [hl]                                       ; $4798: $4e
	ld c, c                                          ; $4799: $49
	xor h                                            ; $479a: $ac
	pop af                                           ; $479b: $f1
	sbc c                                            ; $479c: $99
	ld c, l                                          ; $479d: $4d
	ld h, c                                          ; $479e: $61
	ld d, [hl]                                       ; $479f: $56
	add hl, sp                                       ; $47a0: $39
	ld c, b                                          ; $47a1: $48
	and b                                            ; $47a2: $a0
	cpl                                              ; $47a3: $2f
	jp hl                                            ; $47a4: $e9


	ret nz                                           ; $47a5: $c0

	add hl, bc                                       ; $47a6: $09
	db $ec                                           ; $47a7: $ec
	add hl, bc                                       ; $47a8: $09
	xor h                                            ; $47a9: $ac
	ldh a, [hDisp0_SCX]                                     ; $47aa: $f0 $84
	add h                                            ; $47ac: $84
	dec sp                                           ; $47ad: $3b
	ld e, h                                          ; $47ae: $5c
	ld d, a                                          ; $47af: $57
	ld b, h                                          ; $47b0: $44
	dec sp                                           ; $47b1: $3b
	dec a                                            ; $47b2: $3d
	ld b, d                                          ; $47b3: $42
	ld b, a                                          ; $47b4: $47
	ld c, b                                          ; $47b5: $48
	and b                                            ; $47b6: $a0
	add b                                            ; $47b7: $80
	ld d, d                                          ; $47b8: $52
	ld d, b                                          ; $47b9: $50
	ld a, [hl-]                                      ; $47ba: $3a
	inc a                                            ; $47bb: $3c
	dec sp                                           ; $47bc: $3b
	dec a                                            ; $47bd: $3d
	ld l, h                                          ; $47be: $6c
	dec a                                            ; $47bf: $3d
	jr c, jr_08c_47d5                                ; $47c0: $38 $13

	ld c, h                                          ; $47c2: $4c
	xor l                                            ; $47c3: $ad
	db $ec                                           ; $47c4: $ec
	add hl, bc                                       ; $47c5: $09
	ld b, d                                          ; $47c6: $42
	jr c, @+$3a                                      ; $47c7: $38 $38

	di                                               ; $47c9: $f3
	ld h, l                                          ; $47ca: $65
	pop af                                           ; $47cb: $f1
	ld l, [hl]                                       ; $47cc: $6e
	ld b, h                                          ; $47cd: $44
	dec sp                                           ; $47ce: $3b
	dec a                                            ; $47cf: $3d
	ld b, d                                          ; $47d0: $42
	ld b, a                                          ; $47d1: $47
	ld c, b                                          ; $47d2: $48
	and b                                            ; $47d3: $a0
	ld l, a                                          ; $47d4: $6f

jr_08c_47d5:
	ld c, c                                          ; $47d5: $49
	xor $06                                          ; $47d6: $ee $06
	ld e, e                                          ; $47d8: $5b
	ld d, [hl]                                       ; $47d9: $56
	xor h                                            ; $47da: $ac
	add b                                            ; $47db: $80
	ld d, d                                          ; $47dc: $52
	ld d, b                                          ; $47dd: $50
	ld a, [hl-]                                      ; $47de: $3a
	inc a                                            ; $47df: $3c
	dec sp                                           ; $47e0: $3b
	dec a                                            ; $47e1: $3d
	db $ec                                           ; $47e2: $ec
	ld [de], a                                       ; $47e3: $12
	and b                                            ; $47e4: $a0
	cpl                                              ; $47e5: $2f
	add sp, -$6c                                     ; $47e6: $e8 $94
	add hl, bc                                       ; $47e8: $09
	ldh a, [hDisp0_SCX]                                     ; $47e9: $f0 $84
	add h                                            ; $47eb: $84
	dec sp                                           ; $47ec: $3b
	ld e, h                                          ; $47ed: $5c
	ld d, a                                          ; $47ee: $57
	ld c, d                                          ; $47ef: $4a
	ld [hl], d                                       ; $47f0: $72
	ld c, l                                          ; $47f1: $4d
	ccf                                              ; $47f2: $3f
	xor h                                            ; $47f3: $ac
	ldh a, [$29]                                     ; $47f4: $f0 $29
	ld a, $3c                                        ; $47f6: $3e $3c
	dec sp                                           ; $47f8: $3b
	dec a                                            ; $47f9: $3d
	ld a, [hl-]                                      ; $47fa: $3a
	ld c, b                                          ; $47fb: $48
	and b                                            ; $47fc: $a0
	ld d, c                                          ; $47fd: $51
	ld [hl], b                                       ; $47fe: $70
	ld d, l                                          ; $47ff: $55
	ldh a, [rAUD1ENV]                                ; $4800: $f0 $12
	jr c, jr_08c_484d                                ; $4802: $38 $49

	ld d, h                                          ; $4804: $54
	ld e, a                                          ; $4805: $5f
	ld d, d                                          ; $4806: $52
	ld c, d                                          ; $4807: $4a
	inc de                                           ; $4808: $13
	di                                               ; $4809: $f3
	sub l                                            ; $480a: $95
	dec sp                                           ; $480b: $3b
	dec a                                            ; $480c: $3d
	ld c, a                                          ; $480d: $4f
	ld b, c                                          ; $480e: $41
	ld c, h                                          ; $480f: $4c
	and b                                            ; $4810: $a0
	ldh a, [$3e]                                     ; $4811: $f0 $3e
	inc a                                            ; $4813: $3c
	ld d, b                                          ; $4814: $50
	ld [hl], d                                       ; $4815: $72
	ld c, [hl]                                       ; $4816: $4e
	ld c, c                                          ; $4817: $49
	xor h                                            ; $4818: $ac
	add h                                            ; $4819: $84
	ldh a, [$2a]                                     ; $481a: $f0 $2a
	ld a, [hl-]                                      ; $481c: $3a
	ld b, c                                          ; $481d: $41
	ccf                                              ; $481e: $3f
	xor h                                            ; $481f: $ac
	ld h, c                                          ; $4820: $61
	dec sp                                           ; $4821: $3b
	pop af                                           ; $4822: $f1
	rla                                              ; $4823: $17
	ld e, l                                          ; $4824: $5d
	ld b, a                                          ; $4825: $47
	ld [hl], d                                       ; $4826: $72
	ld e, [hl]                                       ; $4827: $5e
	ccf                                              ; $4828: $3f
	ld d, l                                          ; $4829: $55
	ld c, [hl]                                       ; $482a: $4e
	ld c, h                                          ; $482b: $4c
	and b                                            ; $482c: $a0
	ld [$ace8], a                                    ; $482d: $ea $e8 $ac
	db $eb                                           ; $4830: $eb
	cp c                                             ; $4831: $b9
	inc [hl]                                         ; $4832: $34
	ldh a, [$71]                                     ; $4833: $f0 $71
	ld d, l                                          ; $4835: $55
	ld a, [hl-]                                      ; $4836: $3a
	inc a                                            ; $4837: $3c
	dec sp                                           ; $4838: $3b
	dec a                                            ; $4839: $3d
	and c                                            ; $483a: $a1
	cpl                                              ; $483b: $2f
	db $ed                                           ; $483c: $ed
	xor c                                            ; $483d: $a9
	ld c, c                                          ; $483e: $49
	xor $06                                          ; $483f: $ee $06
	ld b, h                                          ; $4841: $44
	dec sp                                           ; $4842: $3b
	dec a                                            ; $4843: $3d
	inc a                                            ; $4844: $3c
	ld d, b                                          ; $4845: $50
	ld c, b                                          ; $4846: $48
	add hl, bc                                       ; $4847: $09
	adc b                                            ; $4848: $88
	sub c                                            ; $4849: $91
	xor c                                            ; $484a: $a9
	ld h, e                                          ; $484b: $63
	inc [hl]                                         ; $484c: $34

jr_08c_484d:
	ld l, a                                          ; $484d: $6f
	ld c, a                                          ; $484e: $4f
	ld b, b                                          ; $484f: $40
	add hl, sp                                       ; $4850: $39
	ld c, b                                          ; $4851: $48
	and b                                            ; $4852: $a0
	ld e, [hl]                                       ; $4853: $5e
	dec sp                                           ; $4854: $3b
	inc [hl]                                         ; $4855: $34
	ld l, a                                          ; $4856: $6f
	ld c, c                                          ; $4857: $49
	xor $06                                          ; $4858: $ee $06
	ld a, [hl-]                                      ; $485a: $3a
	ld d, b                                          ; $485b: $50
	xor h                                            ; $485c: $ac
	ldh a, [c]                                       ; $485d: $f2
	ld a, d                                          ; $485e: $7a
	ld b, c                                          ; $485f: $41
	ld c, d                                          ; $4860: $4a

jr_08c_4861:
	ld c, a                                          ; $4861: $4f
	jr c, jr_08c_489c                                ; $4862: $38 $38

	dec sp                                           ; $4864: $3b
	ccf                                              ; $4865: $3f
	sbc d                                            ; $4866: $9a
	and c                                            ; $4867: $a1
	xor $08                                          ; $4868: $ee $08
	ld b, h                                          ; $486a: $44
	dec sp                                           ; $486b: $3b
	dec a                                            ; $486c: $3d
	ld d, b                                          ; $486d: $50
	xor h                                            ; $486e: $ac
	ldh a, [$71]                                     ; $486f: $f0 $71
	pop af                                           ; $4871: $f1
	ld [hl], l                                       ; $4872: $75
	ld b, a                                          ; $4873: $47
	db $f4                                           ; $4874: $f4
	ld [$505e], sp                                   ; $4875: $08 $5e $50
	ld c, l                                          ; $4878: $4d
	ld a, [hl-]                                      ; $4879: $3a
	inc a                                            ; $487a: $3c
	dec sp                                           ; $487b: $3b
	dec a                                            ; $487c: $3d
	inc de                                           ; $487d: $13
	inc a                                            ; $487e: $3c
	ld c, a                                          ; $487f: $4f
	ld a, $4d                                        ; $4880: $3e $4d
	ld a, [hl-]                                      ; $4882: $3a
	jr c, jr_08c_48d1                                ; $4883: $38 $4c

	and b                                            ; $4885: $a0
	cpl                                              ; $4886: $2f
	db $ed                                           ; $4887: $ed
	ld e, [hl]                                       ; $4888: $5e
	ld a, a                                          ; $4889: $7f
	ldh a, [$9a]                                     ; $488a: $f0 $9a
	inc a                                            ; $488c: $3c
	ld a, [hl-]                                      ; $488d: $3a
	inc a                                            ; $488e: $3c
	dec sp                                           ; $488f: $3b
	dec a                                            ; $4890: $3d
	ld b, l                                          ; $4891: $45
	add hl, bc                                       ; $4892: $09
	ld e, [hl]                                       ; $4893: $5e
	dec sp                                           ; $4894: $3b
	xor c                                            ; $4895: $a9
	ld a, a                                          ; $4896: $7f
	ldh a, [$9a]                                     ; $4897: $f0 $9a
	inc a                                            ; $4899: $3c
	ld a, [hl-]                                      ; $489a: $3a
	inc a                                            ; $489b: $3c

jr_08c_489c:
	dec sp                                           ; $489c: $3b
	dec a                                            ; $489d: $3d
	ld b, d                                          ; $489e: $42
	xor c                                            ; $489f: $a9
	db $ec                                           ; $48a0: $ec
	dec hl                                           ; $48a1: $2b
	ldh a, [c]                                       ; $48a2: $f2
	ld l, d                                          ; $48a3: $6a
	ld c, l                                          ; $48a4: $4d
	dec a                                            ; $48a5: $3d
	ld b, d                                          ; $48a6: $42
	ld b, a                                          ; $48a7: $47
	ld c, b                                          ; $48a8: $48
	and b                                            ; $48a9: $a0
	ld c, a                                          ; $48aa: $4f
	add hl, sp                                       ; $48ab: $39
	xor h                                            ; $48ac: $ac
	db $ed                                           ; $48ad: $ed
	xor e                                            ; $48ae: $ab
	ld a, [hl-]                                      ; $48af: $3a
	ld b, c                                          ; $48b0: $41
	ld b, h                                          ; $48b1: $44
	inc a                                            ; $48b2: $3c
	ld d, b                                          ; $48b3: $50
	ld c, b                                          ; $48b4: $48
	and b                                            ; $48b5: $a0
	ret                                              ; $48b6: $c9


jr_08c_48b7:
	xor h                                            ; $48b7: $ac
	db $ed                                           ; $48b8: $ed
	xor e                                            ; $48b9: $ab
	ld d, c                                          ; $48ba: $51
	ldh a, [$cb]                                     ; $48bb: $f0 $cb
	ld a, [hl-]                                      ; $48bd: $3a
	jr c, jr_08c_4861                                ; $48be: $38 $a1

	cpl                                              ; $48c0: $2f
	db $ed                                           ; $48c1: $ed
	ld [hl], d                                       ; $48c2: $72
	ldh a, [$71]                                     ; $48c3: $f0 $71
	jr c, jr_08c_48b7                                ; $48c5: $38 $f0

	ld b, b                                          ; $48c7: $40
	ld d, a                                          ; $48c8: $57
	ldh a, [$2c]                                     ; $48c9: $f0 $2c
	inc a                                            ; $48cb: $3c
	ld c, a                                          ; $48cc: $4f
	ld c, h                                          ; $48cd: $4c
	add hl, bc                                       ; $48ce: $09
	pop af                                           ; $48cf: $f1
	add c                                            ; $48d0: $81

jr_08c_48d1:
	ld h, c                                          ; $48d1: $61
	dec a                                            ; $48d2: $3d
	ld d, a                                          ; $48d3: $57
	ld a, $3a                                        ; $48d4: $3e $3a
	ld d, l                                          ; $48d6: $55
	ccf                                              ; $48d7: $3f
	xor h                                            ; $48d8: $ac
	sbc $ec                                          ; $48d9: $de $ec
	cp c                                             ; $48db: $b9
	and b                                            ; $48dc: $a0
	ldh a, [c]                                       ; $48dd: $f2
	ld a, d                                          ; $48de: $7a
	ld c, c                                          ; $48df: $49
	ldh a, [c]                                       ; $48e0: $f2
	ld d, c                                          ; $48e1: $51
	ld d, a                                          ; $48e2: $57
	ldh a, [rTMA]                                    ; $48e3: $f0 $06
	ld h, e                                          ; $48e5: $63
	ld a, c                                          ; $48e6: $79
	ld b, d                                          ; $48e7: $42
	inc de                                           ; $48e8: $13
	ldh a, [$71]                                     ; $48e9: $f0 $71
	pop af                                           ; $48eb: $f1
	ld [hl], l                                       ; $48ec: $75
	ld c, h                                          ; $48ed: $4c
	and b                                            ; $48ee: $a0
	pop af                                           ; $48ef: $f1
	add c                                            ; $48f0: $81
	ld h, c                                          ; $48f1: $61
	dec a                                            ; $48f2: $3d
	ld d, b                                          ; $48f3: $50
	db $eb                                           ; $48f4: $eb
	ld e, c                                          ; $48f5: $59
	inc a                                            ; $48f6: $3c
	ld c, c                                          ; $48f7: $49
	inc de                                           ; $48f8: $13
	ld [hl], a                                       ; $48f9: $77
	dec sp                                           ; $48fa: $3b
	ld h, c                                          ; $48fb: $61
	ld d, [hl]                                       ; $48fc: $56
	dec sp                                           ; $48fd: $3b
	dec a                                            ; $48fe: $3d
	and b                                            ; $48ff: $a0
	ret                                              ; $4900: $c9


	inc [hl]                                         ; $4901: $34
	ldh a, [$71]                                     ; $4902: $f0 $71
	ld b, b                                          ; $4904: $40
	add hl, sp                                       ; $4905: $39
	ld b, h                                          ; $4906: $44
	ld e, l                                          ; $4907: $5d
	ld e, d                                          ; $4908: $5a
	inc de                                           ; $4909: $13
	add a                                            ; $490a: $87
	ldh a, [$5b]                                     ; $490b: $f0 $5b
	ldh a, [$5e]                                     ; $490d: $f0 $5e
	inc a                                            ; $490f: $3c
	ld a, [hl-]                                      ; $4910: $3a
	and b                                            ; $4911: $a0
	cpl                                              ; $4912: $2f
	ld b, e                                          ; $4913: $43
	add a                                            ; $4914: $87
	ldh a, [$5b]                                     ; $4915: $f0 $5b
	ldh a, [$5e]                                     ; $4917: $f0 $5e
	ld b, h                                          ; $4919: $44
	ld b, l                                          ; $491a: $45
	xor b                                            ; $491b: $a8
	ld e, b                                          ; $491c: $58
	ld b, [hl]                                       ; $491d: $46
	inc [hl]                                         ; $491e: $34
	ldh a, [rLCDC]                                   ; $491f: $f0 $40
	ld e, a                                          ; $4921: $5f
	add hl, sp                                       ; $4922: $39
	and b                                            ; $4923: $a0
	ld d, c                                          ; $4924: $51
	inc [hl]                                         ; $4925: $34
	ld d, c                                          ; $4926: $51
	ld [hl], b                                       ; $4927: $70
	ld d, l                                          ; $4928: $55
	inc de                                           ; $4929: $13
	add e                                            ; $492a: $83
	ldh a, [rP1]                                     ; $492b: $f0 $00
	ldh a, [$03]                                     ; $492d: $f0 $03
	ld b, [hl]                                       ; $492f: $46
	dec sp                                           ; $4930: $3b
	dec a                                            ; $4931: $3d
	ld c, h                                          ; $4932: $4c
	and b                                            ; $4933: $a0
	cpl                                              ; $4934: $2f
	add sp, -$3a                                     ; $4935: $e8 $c6
	add hl, bc                                       ; $4937: $09
	ld h, e                                          ; $4938: $63
	inc [hl]                                         ; $4939: $34
	ld l, a                                          ; $493a: $6f
	ld c, a                                          ; $493b: $4f
	xor l                                            ; $493c: $ad
	ld l, e                                          ; $493d: $6b
	ccf                                              ; $493e: $3f
	ldh a, [c]                                       ; $493f: $f2
	db $e4                                           ; $4940: $e4
	ld b, c                                          ; $4941: $41
	ld b, h                                          ; $4942: $44
	ld b, d                                          ; $4943: $42
	inc a                                            ; $4944: $3c
	xor h                                            ; $4945: $ac
	ldh a, [$f4]                                     ; $4946: $f0 $f4
	ld e, [hl]                                       ; $4948: $5e
	ccf                                              ; $4949: $3f
	ld a, [hl-]                                      ; $494a: $3a
	jr c, @+$5f                                      ; $494b: $38 $5d

	ld e, d                                          ; $494d: $5a
	ld c, b                                          ; $494e: $48
	and b                                            ; $494f: $a0
	ld l, a                                          ; $4950: $6f
	inc [hl]                                         ; $4951: $34
	db $ed                                           ; $4952: $ed
	db $e3                                           ; $4953: $e3
	ld d, e                                          ; $4954: $53
	pop af                                           ; $4955: $f1
	jr nc, @+$54                                     ; $4956: $30 $52

	ld c, [hl]                                       ; $4958: $4e
	inc a                                            ; $4959: $3c
	ld c, c                                          ; $495a: $49
	inc de                                           ; $495b: $13
	ld [hl], a                                       ; $495c: $77
	dec sp                                           ; $495d: $3b
	ld h, c                                          ; $495e: $61
	ld d, [hl]                                       ; $495f: $56
	dec sp                                           ; $4960: $3b
	dec a                                            ; $4961: $3d
	and b                                            ; $4962: $a0
	ld l, a                                          ; $4963: $6f
	ld a, [hl-]                                      ; $4964: $3a
	ld b, c                                          ; $4965: $41
	ccf                                              ; $4966: $3f
	inc [hl]                                         ; $4967: $34
	ld d, d                                          ; $4968: $52
	ld b, h                                          ; $4969: $44
	pop af                                           ; $496a: $f1
	cp [hl]                                          ; $496b: $be
	ld d, e                                          ; $496c: $53
	inc de                                           ; $496d: $13
	db $f4                                           ; $496e: $f4
	add a                                            ; $496f: $87
	ld e, [hl]                                       ; $4970: $5e
	ccf                                              ; $4971: $3f
	ld c, [hl]                                       ; $4972: $4e
	ld c, a                                          ; $4973: $4f
	ld b, d                                          ; $4974: $42
	and b                                            ; $4975: $a0
	cpl                                              ; $4976: $2f
	add sp, $1a                                      ; $4977: $e8 $1a
	add hl, bc                                       ; $4979: $09
	ld e, [hl]                                       ; $497a: $5e
	dec sp                                           ; $497b: $3b
	ld [hl], $24                                     ; $497c: $36 $24
	inc de                                           ; $497e: $13
	ld l, e                                          ; $497f: $6b
	ld h, d                                          ; $4980: $62
	add d                                            ; $4981: $82
	dec sp                                           ; $4982: $3b
	ccf                                              ; $4983: $3f
	ld c, [hl]                                       ; $4984: $4e
	ld b, d                                          ; $4985: $42
	and c                                            ; $4986: $a1
	ld e, [hl]                                       ; $4987: $5e
	dec sp                                           ; $4988: $3b
	ld [hl], $24                                     ; $4989: $36 $24

jr_08c_498b:
	ld l, d                                          ; $498b: $6a
	ld b, d                                          ; $498c: $42
	ldh a, [rLCDC]                                   ; $498d: $f0 $40
	ld d, a                                          ; $498f: $57
	ldh a, [$2c]                                     ; $4990: $f0 $2c
	ld b, d                                          ; $4992: $42
	inc de                                           ; $4993: $13
	ld d, h                                          ; $4994: $54
	ld c, c                                          ; $4995: $49
	inc [hl]                                         ; $4996: $34
	ldh a, [$f4]                                     ; $4997: $f0 $f4
	ld e, [hl]                                       ; $4999: $5e
	ccf                                              ; $499a: $3f
	ld a, [hl-]                                      ; $499b: $3a
	jr c, jr_08c_49e0                                ; $499c: $38 $42

	and c                                            ; $499e: $a1
	ld e, [hl]                                       ; $499f: $5e
	dec sp                                           ; $49a0: $3b
	ld [hl], $24                                     ; $49a1: $36 $24
	inc de                                           ; $49a3: $13
	ld l, d                                          ; $49a4: $6a
	ld b, d                                          ; $49a5: $42
	inc [hl]                                         ; $49a6: $34
	db $ed                                           ; $49a7: $ed
	ld e, [hl]                                       ; $49a8: $5e
	ldh a, [$f4]                                     ; $49a9: $f0 $f4
	ld e, [hl]                                       ; $49ab: $5e
	ccf                                              ; $49ac: $3f
	ld a, [hl-]                                      ; $49ad: $3a
	jr c, @+$44                                      ; $49ae: $38 $42

	and c                                            ; $49b0: $a1
	cpl                                              ; $49b1: $2f
	adc l                                            ; $49b2: $8d
	inc [hl]                                         ; $49b3: $34
	db $ed                                           ; $49b4: $ed
	ld e, [hl]                                       ; $49b5: $5e
	ld c, b                                          ; $49b6: $48
	ldh a, [$71]                                     ; $49b7: $f0 $71
	ld d, l                                          ; $49b9: $55

jr_08c_49ba:
	ld a, [hl-]                                      ; $49ba: $3a
	inc a                                            ; $49bb: $3c
	dec sp                                           ; $49bc: $3b
	dec a                                            ; $49bd: $3d
	ld b, l                                          ; $49be: $45
	add hl, bc                                       ; $49bf: $09
	ld b, h                                          ; $49c0: $44
	inc [hl]                                         ; $49c1: $34
	add a                                            ; $49c2: $87
	ldh a, [$5b]                                     ; $49c3: $f0 $5b
	ldh a, [$5e]                                     ; $49c5: $f0 $5e
	ld [hl], $24                                     ; $49c7: $36 $24
	inc de                                           ; $49c9: $13
	ld l, e                                          ; $49ca: $6b
	ld b, h                                          ; $49cb: $44
	inc a                                            ; $49cc: $3c
	ldh a, [$d2]                                     ; $49cd: $f0 $d2
	ld d, e                                          ; $49cf: $53
	db $f4                                           ; $49d0: $f4
	rlca                                             ; $49d1: $07
	jr c, jr_08c_4a31                                ; $49d2: $38 $5d

	ld e, d                                          ; $49d4: $5a
	ld c, b                                          ; $49d5: $48
	and b                                            ; $49d6: $a0
	xor $2d                                          ; $49d7: $ee $2d
	xor $2d                                          ; $49d9: $ee $2d
	xor b                                            ; $49db: $a8
	ldh a, [rAUD1LOW]                                ; $49dc: $f0 $13
	ldh a, [$63]                                     ; $49de: $f0 $63

jr_08c_49e0:
	ld b, a                                          ; $49e0: $47
	ld l, [hl]                                       ; $49e1: $6e
	ld a, c                                          ; $49e2: $79
	db $ed                                           ; $49e3: $ed
	adc c                                            ; $49e4: $89
	ld a, $3a                                        ; $49e5: $3e $3a
	ld d, l                                          ; $49e7: $55
	ccf                                              ; $49e8: $3f
	ld c, a                                          ; $49e9: $4f
	inc de                                           ; $49ea: $13
	jr c, jr_08c_4a25                                ; $49eb: $38 $38

	ld b, d                                          ; $49ed: $42
	ld b, l                                          ; $49ee: $45
	and b                                            ; $49ef: $a0
	add hl, sp                                       ; $49f0: $39
	ldh a, [rSCY]                                    ; $49f1: $f0 $42
	ldh a, [rSCY]                                    ; $49f3: $f0 $42
	ldh a, [rSCY]                                    ; $49f5: $f0 $42
	xor b                                            ; $49f7: $a8
	ld h, h                                          ; $49f8: $64

jr_08c_49f9:
	inc a                                            ; $49f9: $3c
	ld a, $38                                        ; $49fa: $3e $38
	xor b                                            ; $49fc: $a8
	db $ed                                           ; $49fd: $ed
	adc c                                            ; $49fe: $89
	ld a, $61                                        ; $49ff: $3e $61
	ld d, [hl]                                       ; $4a01: $56
	dec sp                                           ; $4a02: $3b
	ccf                                              ; $4a03: $3f
	ld c, b                                          ; $4a04: $48
	and b                                            ; $4a05: $a0
	jr c, @+$36                                      ; $4a06: $38 $34

	inc hl                                           ; $4a08: $23
	jr c, jr_08c_498b                                ; $4a09: $38 $80

	inc [hl]                                         ; $4a0b: $34
	ldh a, [rLCDC]                                   ; $4a0c: $f0 $40
	dec sp                                           ; $4a0e: $3b
	ccf                                              ; $4a0f: $3f
	ld c, a                                          ; $4a10: $4f
	xor h                                            ; $4a11: $ac
	ld d, c                                          ; $4a12: $51
	ld [hl], b                                       ; $4a13: $70
	jr c, @+$4e                                      ; $4a14: $38 $4c

	and b                                            ; $4a16: $a0
	cpl                                              ; $4a17: $2f
	ld b, [hl]                                       ; $4a18: $46
	ld e, c                                          ; $4a19: $59
	dec sp                                           ; $4a1a: $3b
	inc [hl]                                         ; $4a1b: $34
	ld d, d                                          ; $4a1c: $52
	ld b, h                                          ; $4a1d: $44
	ld e, d                                          ; $4a1e: $5a
	ld e, h                                          ; $4a1f: $5c
	ld e, d                                          ; $4a20: $5a
	ld e, h                                          ; $4a21: $5c
	ld a, $3f                                        ; $4a22: $3e $3f
	ld c, [hl]                                       ; $4a24: $4e

jr_08c_4a25:
	ld b, l                                          ; $4a25: $45
	add hl, bc                                       ; $4a26: $09
	ld h, e                                          ; $4a27: $63
	inc [hl]                                         ; $4a28: $34
	ld l, a                                          ; $4a29: $6f
	ld c, a                                          ; $4a2a: $4f
	xor l                                            ; $4a2b: $ad
	ld c, d                                          ; $4a2c: $4a
	ld c, a                                          ; $4a2d: $4f
	inc [hl]                                         ; $4a2e: $34
	xor $06                                          ; $4a2f: $ee $06

jr_08c_4a31:
	ld b, a                                          ; $4a31: $47
	jr c, @+$50                                      ; $4a32: $38 $4e

	ld c, c                                          ; $4a34: $49
	ld e, h                                          ; $4a35: $5c
	ld c, e                                          ; $4a36: $4b
	inc de                                           ; $4a37: $13
	jr c, jr_08c_49ba                                ; $4a38: $38 $80

	ld c, a                                          ; $4a3a: $4f
	ld a, $3f                                        ; $4a3b: $3e $3f
	ld c, [hl]                                       ; $4a3d: $4e
	ld e, l                                          ; $4a3e: $5d
	ld e, d                                          ; $4a3f: $5a
	ld c, b                                          ; $4a40: $48
	and b                                            ; $4a41: $a0
	ld h, e                                          ; $4a42: $63
	inc [hl]                                         ; $4a43: $34
	ld l, a                                          ; $4a44: $6f
	ld c, a                                          ; $4a45: $4f
	xor b                                            ; $4a46: $a8
	ld b, [hl]                                       ; $4a47: $46
	ld d, d                                          ; $4a48: $52
	ld d, a                                          ; $4a49: $57
	db $ed                                           ; $4a4a: $ed
	db $e3                                           ; $4a4b: $e3
	ld b, a                                          ; $4a4c: $47
	ld a, [hl]                                       ; $4a4d: $7e
	ld d, l                                          ; $4a4e: $55
	ld a, [hl-]                                      ; $4a4f: $3a
	jr c, jr_08c_4a9b                                ; $4a50: $38 $49

	inc de                                           ; $4a52: $13
	ld [hl], a                                       ; $4a53: $77
	ld h, e                                          ; $4a54: $63
	ld a, [hl-]                                      ; $4a55: $3a
	jr c, jr_08c_49f9                                ; $4a56: $38 $a1

	ld l, a                                          ; $4a58: $6f
	ld c, a                                          ; $4a59: $4f
	ld d, d                                          ; $4a5a: $52
	ld b, h                                          ; $4a5b: $44
	xor h                                            ; $4a5c: $ac
	ld e, d                                          ; $4a5d: $5a
	ld e, h                                          ; $4a5e: $5c
	ld e, d                                          ; $4a5f: $5a
	ld e, h                                          ; $4a60: $5c
	jr c, jr_08c_4a9e                                ; $4a61: $38 $3b

	ccf                                              ; $4a63: $3f
	ld c, [hl]                                       ; $4a64: $4e
	and b                                            ; $4a65: $a0
	cpl                                              ; $4a66: $2f
	add hl, sp                                       ; $4a67: $39
	dec sp                                           ; $4a68: $3b
	inc [hl]                                         ; $4a69: $34
	db $ed                                           ; $4a6a: $ed
	ld l, a                                          ; $4a6b: $6f
	ld h, c                                          ; $4a6c: $61
	ldh a, [$5c]                                     ; $4a6d: $f0 $5c
	jr c, jr_08c_4ab9                                ; $4a6f: $38 $48

	add hl, bc                                       ; $4a71: $09
	ld b, h                                          ; $4a72: $44
	inc [hl]                                         ; $4a73: $34
	add a                                            ; $4a74: $87
	ldh a, [$5b]                                     ; $4a75: $f0 $5b
	ldh a, [$5e]                                     ; $4a77: $f0 $5e
	xor c                                            ; $4a79: $a9
	ldh a, [$08]                                     ; $4a7a: $f0 $08
	ld d, b                                          ; $4a7c: $50
	xor h                                            ; $4a7d: $ac
	ld b, b                                          ; $4a7e: $40
	ld d, h                                          ; $4a7f: $54
	ld c, d                                          ; $4a80: $4a
	ld [$a0f9], a                                    ; $4a81: $ea $f9 $a0
	ld l, a                                          ; $4a84: $6f
	ld b, a                                          ; $4a85: $47
	inc [hl]                                         ; $4a86: $34
	add a                                            ; $4a87: $87
	ldh a, [$5b]                                     ; $4a88: $f0 $5b
	ldh a, [$5e]                                     ; $4a8a: $f0 $5e
	dec sp                                           ; $4a8c: $3b
	ccf                                              ; $4a8d: $3f
	inc de                                           ; $4a8e: $13
	add d                                            ; $4a8f: $82
	dec sp                                           ; $4a90: $3b
	ccf                                              ; $4a91: $3f
	ld h, h                                          ; $4a92: $64
	jr c, jr_08c_4ad4                                ; $4a93: $38 $3f

	xor h                                            ; $4a95: $ac
	ld d, h                                          ; $4a96: $54
	ld c, l                                          ; $4a97: $4d
	ld a, [hl-]                                      ; $4a98: $3a
	ld b, c                                          ; $4a99: $41
	db $ec                                           ; $4a9a: $ec

jr_08c_4a9b:
	jr nz, jr_08c_4aec                               ; $4a9b: $20 $4f

	add hl, sp                                       ; $4a9d: $39

jr_08c_4a9e:
	and b                                            ; $4a9e: $a0
	ld l, a                                          ; $4a9f: $6f
	ld b, a                                          ; $4aa0: $47
	inc [hl]                                         ; $4aa1: $34
	add a                                            ; $4aa2: $87
	ldh a, [$5b]                                     ; $4aa3: $f0 $5b
	ldh a, [$5e]                                     ; $4aa5: $f0 $5e
	ld b, h                                          ; $4aa7: $44
	inc a                                            ; $4aa8: $3c
	ld d, b                                          ; $4aa9: $50
	inc de                                           ; $4aaa: $13
	dec sp                                           ; $4aab: $3b
	ccf                                              ; $4aac: $3f
	add d                                            ; $4aad: $82
	dec sp                                           ; $4aae: $3b
	ccf                                              ; $4aaf: $3f
	dec a                                            ; $4ab0: $3d
	ld b, d                                          ; $4ab1: $42
	ld b, a                                          ; $4ab2: $47
	ld c, b                                          ; $4ab3: $48
	and b                                            ; $4ab4: $a0
	cpl                                              ; $4ab5: $2f
	ldh a, [rAUD3LEVEL]                              ; $4ab6: $f0 $1c
	ld d, e                                          ; $4ab8: $53

jr_08c_4ab9:
	inc [hl]                                         ; $4ab9: $34
	ldh a, [$d3]                                     ; $4aba: $f0 $d3
	dec sp                                           ; $4abc: $3b
	ld h, c                                          ; $4abd: $61
	ld d, [hl]                                       ; $4abe: $56
	dec sp                                           ; $4abf: $3b
	dec a                                            ; $4ac0: $3d
	add hl, bc                                       ; $4ac1: $09
	add a                                            ; $4ac2: $87
	ldh a, [$5b]                                     ; $4ac3: $f0 $5b
	ldh a, [$5e]                                     ; $4ac5: $f0 $5e
	xor c                                            ; $4ac7: $a9
	push af                                          ; $4ac8: $f5
	ld h, c                                          ; $4ac9: $61
	ld h, d                                          ; $4aca: $62
	ldh a, [c]                                       ; $4acb: $f2
	ld hl, sp+$3e                                    ; $4acc: $f8 $3e
	ccf                                              ; $4ace: $3f
	rst SubAFromDE                                          ; $4acf: $df
	ld c, h                                          ; $4ad0: $4c
	and b                                            ; $4ad1: $a0
	ld h, c                                          ; $4ad2: $61
	ld d, [hl]                                       ; $4ad3: $56

jr_08c_4ad4:
	ld b, c                                          ; $4ad4: $41
	ld c, c                                          ; $4ad5: $49
	pop af                                           ; $4ad6: $f1
	ld h, $5d                                        ; $4ad7: $26 $5d
	ld c, [hl]                                       ; $4ad9: $4e
	xor c                                            ; $4ada: $a9
	ld [hl], d                                       ; $4adb: $72
	dec a                                            ; $4adc: $3d
	ld c, c                                          ; $4add: $49
	ld d, h                                          ; $4ade: $54
	ld e, a                                          ; $4adf: $5f
	xor h                                            ; $4ae0: $ac
	add a                                            ; $4ae1: $87
	ldh a, [$5b]                                     ; $4ae2: $f0 $5b
	ldh a, [$5e]                                     ; $4ae4: $f0 $5e
	db $ec                                           ; $4ae6: $ec
	ld [de], a                                       ; $4ae7: $12
	and b                                            ; $4ae8: $a0
	ld c, d                                          ; $4ae9: $4a
	ld c, a                                          ; $4aea: $4f
	xor h                                            ; $4aeb: $ac

jr_08c_4aec:
	ld h, c                                          ; $4aec: $61
	ld d, [hl]                                       ; $4aed: $56
	ld b, c                                          ; $4aee: $41
	ld c, c                                          ; $4aef: $49
	pop af                                           ; $4af0: $f1
	ld h, $38                                        ; $4af1: $26 $38
	ccf                                              ; $4af3: $3f
	ld c, [hl]                                       ; $4af4: $4e
	inc a                                            ; $4af5: $3c
	ld d, b                                          ; $4af6: $50
	xor h                                            ; $4af7: $ac
	add a                                            ; $4af8: $87
	ldh a, [$5b]                                     ; $4af9: $f0 $5b
	ldh a, [$5e]                                     ; $4afb: $f0 $5e
	db $ec                                           ; $4afd: $ec
	ld [de], a                                       ; $4afe: $12
	and b                                            ; $4aff: $a0
	ld d, c                                          ; $4b00: $51
	ld [hl], b                                       ; $4b01: $70
	ld d, l                                          ; $4b02: $55
	sub b                                            ; $4b03: $90
	ld a, $dc                                        ; $4b04: $3e $dc
	xor b                                            ; $4b06: $a8
	ld e, b                                          ; $4b07: $58
	ld b, [hl]                                       ; $4b08: $46
	inc [hl]                                         ; $4b09: $34
	sub [hl]                                         ; $4b0a: $96
	ld d, a                                          ; $4b0b: $57
	ld d, d                                          ; $4b0c: $52
	ld a, $66                                        ; $4b0d: $3e $66
	add hl, sp                                       ; $4b0f: $39
	and b                                            ; $4b10: $a0
	sbc $34                                          ; $4b11: $de $34
	db $ec                                           ; $4b13: $ec
	ld h, c                                          ; $4b14: $61
	inc de                                           ; $4b15: $13
	ld a, $3f                                        ; $4b16: $3e $3f
	ld c, [hl]                                       ; $4b18: $4e
	ld a, a                                          ; $4b19: $7f
	ldh a, [rTAC]                                    ; $4b1a: $f0 $07
	ld b, h                                          ; $4b1c: $44
	dec sp                                           ; $4b1d: $3b
	dec a                                            ; $4b1e: $3d
	ld c, h                                          ; $4b1f: $4c
	and b                                            ; $4b20: $a0
	cpl                                              ; $4b21: $2f
	ld a, l                                          ; $4b22: $7d
	ld h, l                                          ; $4b23: $65
	ldh a, [c]                                       ; $4b24: $f2
	adc l                                            ; $4b25: $8d
	ld d, e                                          ; $4b26: $53
	ld a, b                                          ; $4b27: $78
	dec a                                            ; $4b28: $3d
	ldh a, [rBGP]                                    ; $4b29: $f0 $47
	inc [hl]                                         ; $4b2b: $34
	ldh a, [rKEY1]                                   ; $4b2c: $f0 $4d
	ldh a, [rKEY1]                                   ; $4b2e: $f0 $4d
	dec sp                                           ; $4b30: $3b
	ld h, c                                          ; $4b31: $61
	ld d, [hl]                                       ; $4b32: $56
	dec sp                                           ; $4b33: $3b
	dec a                                            ; $4b34: $3d
	add hl, bc                                       ; $4b35: $09
	ld l, a                                          ; $4b36: $6f
	ld c, h                                          ; $4b37: $4c
	inc [hl]                                         ; $4b38: $34
	xor $1e                                          ; $4b39: $ee $1e
	ld c, c                                          ; $4b3b: $49
	ld e, h                                          ; $4b3c: $5c
	ld [hl], a                                       ; $4b3d: $77
	ld h, e                                          ; $4b3e: $63
	sbc h                                            ; $4b3f: $9c
	xor h                                            ; $4b40: $ac
	ld a, $53                                        ; $4b41: $3e $53
	ld l, h                                          ; $4b43: $6c
	add b                                            ; $4b44: $80
	jr c, jr_08c_4ba8                                ; $4b45: $38 $61

	ld d, [hl]                                       ; $4b47: $56
	dec sp                                           ; $4b48: $3b
	dec a                                            ; $4b49: $3d
	ld b, d                                          ; $4b4a: $42
	xor l                                            ; $4b4b: $ad
	ldh a, [$29]                                     ; $4b4c: $f0 $29
	ld a, $3c                                        ; $4b4e: $3e $3c
	dec sp                                           ; $4b50: $3b
	dec a                                            ; $4b51: $3d
	ld a, [hl-]                                      ; $4b52: $3a
	ld c, b                                          ; $4b53: $48
	and b                                            ; $4b54: $a0
	ld l, a                                          ; $4b55: $6f
	ld c, a                                          ; $4b56: $4f
	db $ec                                           ; $4b57: $ec
	ld de, $3f3e                                     ; $4b58: $11 $3e $3f
	inc de                                           ; $4b5b: $13
	ld a, $53                                        ; $4b5c: $3e $53
	ld l, h                                          ; $4b5e: $6c
	add b                                            ; $4b5f: $80
	jr c, @+$63                                      ; $4b60: $38 $61

	ld d, [hl]                                       ; $4b62: $56
	dec sp                                           ; $4b63: $3b
	dec a                                            ; $4b64: $3d
	xor b                                            ; $4b65: $a8
	ld [hl], b                                       ; $4b66: $70
	ld [hl], c                                       ; $4b67: $71
	ld b, c                                          ; $4b68: $41
	ld c, h                                          ; $4b69: $4c
	and b                                            ; $4b6a: $a0
	ld [hl], b                                       ; $4b6b: $70
	ld [hl], c                                       ; $4b6c: $71
	ld b, c                                          ; $4b6d: $41
	ld c, h                                          ; $4b6e: $4c
	xor b                                            ; $4b6f: $a8
	ldh a, [$71]                                     ; $4b70: $f0 $71
	ld d, l                                          ; $4b72: $55
	ccf                                              ; $4b73: $3f
	inc [hl]                                         ; $4b74: $34
	ret                                              ; $4b75: $c9


	ld b, h                                          ; $4b76: $44
	ld e, l                                          ; $4b77: $5d
	xor h                                            ; $4b78: $ac
	ld a, $53                                        ; $4b79: $3e $53
	ld l, h                                          ; $4b7b: $6c
	add b                                            ; $4b7c: $80
	jr c, jr_08c_4be0                                ; $4b7d: $38 $61

	ld d, [hl]                                       ; $4b7f: $56
	dec sp                                           ; $4b80: $3b
	dec a                                            ; $4b81: $3d
	and b                                            ; $4b82: $a0
	cpl                                              ; $4b83: $2f
	add sp, -$10                                     ; $4b84: $e8 $f0
	add hl, bc                                       ; $4b86: $09
	rst JumpTable                                          ; $4b87: $c7
	xor c                                            ; $4b88: $a9
	ld l, a                                          ; $4b89: $6f
	ld c, e                                          ; $4b8a: $4b
	inc [hl]                                         ; $4b8b: $34
	ld d, c                                          ; $4b8c: $51
	ld [hl], b                                       ; $4b8d: $70
	jr c, jr_08c_4bd9                                ; $4b8e: $38 $49

	inc de                                           ; $4b90: $13
	ld [$3a4d], a                                    ; $4b91: $ea $4d $3a
	ld c, b                                          ; $4b94: $48
	and b                                            ; $4b95: $a0
	ld l, a                                          ; $4b96: $6f
	ld c, e                                          ; $4b97: $4b
	inc de                                           ; $4b98: $13
	ld d, c                                          ; $4b99: $51
	ld [hl], b                                       ; $4b9a: $70
	ld d, l                                          ; $4b9b: $55
	ld a, a                                          ; $4b9c: $7f
	ld b, a                                          ; $4b9d: $47
	sub [hl]                                         ; $4b9e: $96
	dec sp                                           ; $4b9f: $3b
	ld h, c                                          ; $4ba0: $61
	ld d, [hl]                                       ; $4ba1: $56
	dec sp                                           ; $4ba2: $3b
	dec a                                            ; $4ba3: $3d
	xor b                                            ; $4ba4: $a8
	ld c, a                                          ; $4ba5: $4f
	add hl, sp                                       ; $4ba6: $39
	db $ed                                           ; $4ba7: $ed

jr_08c_4ba8:
	ld e, $5f                                        ; $4ba8: $1e $5f
	add hl, sp                                       ; $4baa: $39
	inc a                                            ; $4bab: $3c
	ld a, [hl-]                                      ; $4bac: $3a
	and b                                            ; $4bad: $a0
	db $ec                                           ; $4bae: $ec
	cp c                                             ; $4baf: $b9
	ld c, c                                          ; $4bb0: $49
	inc de                                           ; $4bb1: $13
	ld [hl], a                                       ; $4bb2: $77
	xor $1f                                          ; $4bb3: $ee $1f
	ld b, h                                          ; $4bb5: $44
	ld e, l                                          ; $4bb6: $5d
	ld e, d                                          ; $4bb7: $5a
	xor l                                            ; $4bb8: $ad
	pop af                                           ; $4bb9: $f1
	ld a, e                                          ; $4bba: $7b
	ldh a, [hDisp1_WY]                                     ; $4bbb: $f0 $95
	ld d, e                                          ; $4bbd: $53
	ldh a, [rTMA]                                    ; $4bbe: $f0 $06
	ld h, e                                          ; $4bc0: $63
	ld a, [hl-]                                      ; $4bc1: $3a
	jr c, jr_08c_4c06                                ; $4bc2: $38 $42

	inc a                                            ; $4bc4: $3c
	ld a, [hl-]                                      ; $4bc5: $3a
	and c                                            ; $4bc6: $a1
	cpl                                              ; $4bc7: $2f
	ld [$09b3], a                                    ; $4bc8: $ea $b3 $09
	xor $1f                                          ; $4bcb: $ee $1f
	inc [hl]                                         ; $4bcd: $34
	ld [$a0b3], a                                    ; $4bce: $ea $b3 $a0
	ld d, c                                          ; $4bd1: $51
	ld [hl], b                                       ; $4bd2: $70
	ld d, l                                          ; $4bd3: $55
	inc [hl]                                         ; $4bd4: $34
	db $ec                                           ; $4bd5: $ec
	cp c                                             ; $4bd6: $b9
	ld c, h                                          ; $4bd7: $4c
	and b                                            ; $4bd8: $a0

jr_08c_4bd9:
	adc b                                            ; $4bd9: $88
	sub c                                            ; $4bda: $91
	inc [hl]                                         ; $4bdb: $34
	db $ec                                           ; $4bdc: $ec
	cp c                                             ; $4bdd: $b9
	ld c, h                                          ; $4bde: $4c
	and b                                            ; $4bdf: $a0

jr_08c_4be0:
	add h                                            ; $4be0: $84
	ldh a, [$2a]                                     ; $4be1: $f0 $2a
	ld b, d                                          ; $4be3: $42
	db $ec                                           ; $4be4: $ec
	ld l, b                                          ; $4be5: $68
	inc de                                           ; $4be6: $13
	ld e, l                                          ; $4be7: $5d
	dec sp                                           ; $4be8: $3b
	ld d, h                                          ; $4be9: $54
	add hl, sp                                       ; $4bea: $39
	db $eb                                           ; $4beb: $eb
	or b                                             ; $4bec: $b0
	ld b, d                                          ; $4bed: $42
	ld c, h                                          ; $4bee: $4c
	and b                                            ; $4bef: $a0
	cpl                                              ; $4bf0: $2f
	ld b, b                                          ; $4bf1: $40
	ld b, d                                          ; $4bf2: $42
	ld h, h                                          ; $4bf3: $64
	inc a                                            ; $4bf4: $3c
	ldh a, [rSB]                                     ; $4bf5: $f0 $01
	ld c, d                                          ; $4bf7: $4a
	inc [hl]                                         ; $4bf8: $34
	pop af                                           ; $4bf9: $f1
	ld l, [hl]                                       ; $4bfa: $6e
	ldh a, [$cf]                                     ; $4bfb: $f0 $cf
	sub b                                            ; $4bfd: $90
	ld a, $71                                        ; $4bfe: $3e $71
	ld c, [hl]                                       ; $4c00: $4e
	ld b, l                                          ; $4c01: $45
	ld c, h                                          ; $4c02: $4c
	add hl, bc                                       ; $4c03: $09
	adc b                                            ; $4c04: $88
	sub c                                            ; $4c05: $91

jr_08c_4c06:
	xor b                                            ; $4c06: $a8
	ld d, h                                          ; $4c07: $54
	ld b, c                                          ; $4c08: $41
	ld a, [hl-]                                      ; $4c09: $3a
	ld b, a                                          ; $4c0a: $47
	inc [hl]                                         ; $4c0b: $34
	ld b, h                                          ; $4c0c: $44
	ld d, d                                          ; $4c0d: $52
	ld e, b                                          ; $4c0e: $58
	ld c, l                                          ; $4c0f: $4d
	ld c, [hl]                                       ; $4c10: $4e
	ld a, [hl-]                                      ; $4c11: $3a
	ld b, c                                          ; $4c12: $41
	ccf                                              ; $4c13: $3f
	xor h                                            ; $4c14: $ac
	ldh a, [$78]                                     ; $4c15: $f0 $78
	ldh a, [rVBK]                                    ; $4c17: $f0 $4f
	db $eb                                           ; $4c19: $eb
	ld d, [hl]                                       ; $4c1a: $56
	and b                                            ; $4c1b: $a0
	ld b, b                                          ; $4c1c: $40
	ld c, l                                          ; $4c1d: $4d
	ld c, a                                          ; $4c1e: $4f
	inc [hl]                                         ; $4c1f: $34
	call c, Call_08c_6aa8                            ; $4c20: $dc $a8 $6a
	ld b, d                                          ; $4c23: $42
	ld c, a                                          ; $4c24: $4f
	xor h                                            ; $4c25: $ac
	ld d, c                                          ; $4c26: $51
	ld [hl], b                                       ; $4c27: $70
	ld d, l                                          ; $4c28: $55
	db $eb                                           ; $4c29: $eb
	ld h, e                                          ; $4c2a: $63
	ld a, $4c                                        ; $4c2b: $3e $4c
	and b                                            ; $4c2d: $a0
	xor $1f                                          ; $4c2e: $ee $1f
	xor h                                            ; $4c30: $ac
	ld l, d                                          ; $4c31: $6a
	ld b, d                                          ; $4c32: $42
	ld c, a                                          ; $4c33: $4f
	db $eb                                           ; $4c34: $eb
	ld h, e                                          ; $4c35: $63
	ld a, $4c                                        ; $4c36: $3e $4c
	and b                                            ; $4c38: $a0
	cpl                                              ; $4c39: $2f
	ld b, b                                          ; $4c3a: $40
	ld b, c                                          ; $4c3b: $41
	ld a, [hl-]                                      ; $4c3c: $3a
	sbc d                                            ; $4c3d: $9a
	ldh a, [rAUD1LOW]                                ; $4c3e: $f0 $13
	jr c, jr_08c_4c83                                ; $4c40: $38 $41

	db $ec                                           ; $4c42: $ec
	ret c                                            ; $4c43: $d8

	and c                                            ; $4c44: $a1
	rst JumpTable                                          ; $4c45: $c7
	xor c                                            ; $4c46: $a9
	ld l, d                                          ; $4c47: $6a
	ld b, d                                          ; $4c48: $42
	ld c, d                                          ; $4c49: $4a
	inc [hl]                                         ; $4c4a: $34
	ld b, h                                          ; $4c4b: $44
	ld d, d                                          ; $4c4c: $52
	ld e, b                                          ; $4c4d: $58
	ld c, l                                          ; $4c4e: $4d
	dec a                                            ; $4c4f: $3d
	ld b, d                                          ; $4c50: $42
	ld c, e                                          ; $4c51: $4b
	inc de                                           ; $4c52: $13
	ld l, a                                          ; $4c53: $6f
	ld b, h                                          ; $4c54: $44
	ld e, l                                          ; $4c55: $5d
	ld a, [hl-]                                      ; $4c56: $3a
	ld b, d                                          ; $4c57: $42
	ld c, b                                          ; $4c58: $48
	and c                                            ; $4c59: $a1
	ld b, b                                          ; $4c5a: $40
	ld c, l                                          ; $4c5b: $4d
	ld e, e                                          ; $4c5c: $5b
	ld d, [hl]                                       ; $4c5d: $56
	xor h                                            ; $4c5e: $ac
	ldh a, [rLCDC]                                   ; $4c5f: $f0 $40
	dec sp                                           ; $4c61: $3b
	ccf                                              ; $4c62: $3f
	ld c, [hl]                                       ; $4c63: $4e
	ldh a, [$78]                                     ; $4c64: $f0 $78
	ldh a, [$f4]                                     ; $4c66: $f0 $f4
	ld b, a                                          ; $4c68: $47
	inc de                                           ; $4c69: $13
	ld a, [hl-]                                      ; $4c6a: $3a
	ld d, b                                          ; $4c6b: $50
	ld a, [hl-]                                      ; $4c6c: $3a
	inc a                                            ; $4c6d: $3c
	dec sp                                           ; $4c6e: $3b
	dec a                                            ; $4c6f: $3d
	ld b, d                                          ; $4c70: $42
	ld c, h                                          ; $4c71: $4c
	and b                                            ; $4c72: $a0
	ld b, b                                          ; $4c73: $40
	ld c, l                                          ; $4c74: $4d
	ld e, e                                          ; $4c75: $5b
	ld d, [hl]                                       ; $4c76: $56
	xor h                                            ; $4c77: $ac
	ld l, d                                          ; $4c78: $6a
	ld b, d                                          ; $4c79: $42
	ldh a, [rLCDC]                                   ; $4c7a: $f0 $40
	ld d, a                                          ; $4c7c: $57
	ldh a, [$2c]                                     ; $4c7d: $f0 $2c
	xor h                                            ; $4c7f: $ac
	add b                                            ; $4c80: $80
	ld d, d                                          ; $4c81: $52
	ld d, b                                          ; $4c82: $50

jr_08c_4c83:
	ld a, [hl-]                                      ; $4c83: $3a
	inc a                                            ; $4c84: $3c
	dec sp                                           ; $4c85: $3b
	dec a                                            ; $4c86: $3d
	ld c, d                                          ; $4c87: $4a
	ld a, $66                                        ; $4c88: $3e $66
	add hl, sp                                       ; $4c8a: $39
	and b                                            ; $4c8b: $a0
	cpl                                              ; $4c8c: $2f
	xor $1f                                          ; $4c8d: $ee $1f
	inc [hl]                                         ; $4c8f: $34
	ld d, h                                          ; $4c90: $54
	ld b, c                                          ; $4c91: $41
	ld a, [hl-]                                      ; $4c92: $3a
	ld c, a                                          ; $4c93: $4f
	ld b, c                                          ; $4c94: $41
	ld b, h                                          ; $4c95: $44
	ld c, c                                          ; $4c96: $49
	ld [hl], a                                       ; $4c97: $77
	add hl, sp                                       ; $4c98: $39
	ld b, l                                          ; $4c99: $45
	add hl, bc                                       ; $4c9a: $09
	db $ec                                           ; $4c9b: $ec
	reti                                             ; $4c9c: $d9


	xor h                                            ; $4c9d: $ac
	db $eb                                           ; $4c9e: $eb
	ld e, b                                          ; $4c9f: $58
	ld b, l                                          ; $4ca0: $45
	ld c, h                                          ; $4ca1: $4c
	ld c, b                                          ; $4ca2: $48
	and b                                            ; $4ca3: $a0
	ld b, b                                          ; $4ca4: $40
	add hl, sp                                       ; $4ca5: $39
	ld [hl], a                                       ; $4ca6: $77
	add hl, sp                                       ; $4ca7: $39
	ld c, d                                          ; $4ca8: $4a
	ld a, $66                                        ; $4ca9: $3e $66
	add hl, sp                                       ; $4cab: $39
	and b                                            ; $4cac: $a0
	db $ed                                           ; $4cad: $ed
	ld h, a                                          ; $4cae: $67
	ld c, c                                          ; $4caf: $49
	xor $06                                          ; $4cb0: $ee $06
	ld b, a                                          ; $4cb2: $47
	ld [hl], d                                       ; $4cb3: $72
	ccf                                              ; $4cb4: $3f
	ld c, [hl]                                       ; $4cb5: $4e
	inc de                                           ; $4cb6: $13
	ld b, d                                          ; $4cb7: $42
	ld d, e                                          ; $4cb8: $53
	inc [hl]                                         ; $4cb9: $34
	db $ec                                           ; $4cba: $ec
	dec [hl]                                         ; $4cbb: $35
	inc a                                            ; $4cbc: $3c
	dec sp                                           ; $4cbd: $3b
	dec a                                            ; $4cbe: $3d
	ld a, [hl-]                                      ; $4cbf: $3a
	and b                                            ; $4cc0: $a0
	cpl                                              ; $4cc1: $2f
	add sp, $1b                                      ; $4cc2: $e8 $1b
	ld c, b                                          ; $4cc4: $48
	add hl, bc                                       ; $4cc5: $09
	ld c, d                                          ; $4cc6: $4a
	ld c, a                                          ; $4cc7: $4f
	inc [hl]                                         ; $4cc8: $34
	ld l, a                                          ; $4cc9: $6f
	ld c, a                                          ; $4cca: $4f
	inc de                                           ; $4ccb: $13
	ret                                              ; $4ccc: $c9


	sbc l                                            ; $4ccd: $9d
	ld d, b                                          ; $4cce: $50
	jr c, jr_08c_4d0b                                ; $4ccf: $38 $3a

	ld d, b                                          ; $4cd1: $50
	xor h                                            ; $4cd2: $ac
	ld [hl], d                                       ; $4cd3: $72
	ccf                                              ; $4cd4: $3f
	ld c, a                                          ; $4cd5: $4f
	db $ec                                           ; $4cd6: $ec
	ld a, [bc]                                       ; $4cd7: $0a
	dec sp                                           ; $4cd8: $3b
	ccf                                              ; $4cd9: $3f
	ld c, b                                          ; $4cda: $48
	and b                                            ; $4cdb: $a0
	db $eb                                           ; $4cdc: $eb
	inc [hl]                                         ; $4cdd: $34
	ld h, e                                          ; $4cde: $63
	ld c, h                                          ; $4cdf: $4c
	add l                                            ; $4ce0: $85
	xor b                                            ; $4ce1: $a8
	add hl, sp                                       ; $4ce2: $39
	ldh a, [rSCY]                                    ; $4ce3: $f0 $42
	ldh a, [rSCY]                                    ; $4ce5: $f0 $42
	and b                                            ; $4ce7: $a0
	db $d3                                           ; $4ce8: $d3
	ld c, b                                          ; $4ce9: $48
	dec [hl]                                         ; $4cea: $35
	rla                                              ; $4ceb: $17
	ld b, b                                          ; $4cec: $40
	ld c, l                                          ; $4ced: $4d
	ld e, e                                          ; $4cee: $5b
	ld d, [hl]                                       ; $4cef: $56
	xor h                                            ; $4cf0: $ac
	db $eb                                           ; $4cf1: $eb
	inc [hl]                                         ; $4cf2: $34
	ld h, e                                          ; $4cf3: $63
	ld c, h                                          ; $4cf4: $4c
	and b                                            ; $4cf5: $a0
	cpl                                              ; $4cf6: $2f
	add sp, -$5f                                     ; $4cf7: $e8 $a1
	add hl, bc                                       ; $4cf9: $09
	ld b, b                                          ; $4cfa: $40
	add hl, sp                                       ; $4cfb: $39
	add d                                            ; $4cfc: $82
	ld h, e                                          ; $4cfd: $63
	ld c, l                                          ; $4cfe: $4d
	ccf                                              ; $4cff: $3f
	ld c, a                                          ; $4d00: $4f
	xor h                                            ; $4d01: $ac
	db $ec                                           ; $4d02: $ec
	reti                                             ; $4d03: $d9


	xor h                                            ; $4d04: $ac
	db $ec                                           ; $4d05: $ec
	dec [hl]                                         ; $4d06: $35
	inc a                                            ; $4d07: $3c
	dec sp                                           ; $4d08: $3b
	dec a                                            ; $4d09: $3d
	ld a, [hl-]                                      ; $4d0a: $3a

jr_08c_4d0b:
	ld c, b                                          ; $4d0b: $48
	and b                                            ; $4d0c: $a0
	ld b, [hl]                                       ; $4d0d: $46
	ld a, [hl-]                                      ; $4d0e: $3a
	dec a                                            ; $4d0f: $3d
	ld c, e                                          ; $4d10: $4b
	ld b, b                                          ; $4d11: $40
	add hl, sp                                       ; $4d12: $39
	inc a                                            ; $4d13: $3c
	ld c, a                                          ; $4d14: $4f
	inc de                                           ; $4d15: $13
	ld a, $4d                                        ; $4d16: $3e $4d
	ld a, [hl-]                                      ; $4d18: $3a
	jr c, @+$5f                                      ; $4d19: $38 $5d

	ld e, d                                          ; $4d1b: $5a
	xor h                                            ; $4d1c: $ac
	ld l, a                                          ; $4d1d: $6f
	ld c, e                                          ; $4d1e: $4b
	ld a, a                                          ; $4d1f: $7f
	ld b, a                                          ; $4d20: $47
	ld d, c                                          ; $4d21: $51
	ld c, [hl]                                       ; $4d22: $4e
	ld c, a                                          ; $4d23: $4f
	ld b, d                                          ; $4d24: $42
	and b                                            ; $4d25: $a0
	ld b, [hl]                                       ; $4d26: $46
	ld a, [hl-]                                      ; $4d27: $3a
	dec a                                            ; $4d28: $3d
	ld c, e                                          ; $4d29: $4b
	inc de                                           ; $4d2a: $13
	jr c, jr_08c_4d65                                ; $4d2b: $38 $38

	ld c, d                                          ; $4d2d: $4a
	ld a, $66                                        ; $4d2e: $3e $66
	add hl, sp                                       ; $4d30: $39
	ld e, l                                          ; $4d31: $5d
	ld e, d                                          ; $4d32: $5a
	ld c, b                                          ; $4d33: $48
	and b                                            ; $4d34: $a0
	cpl                                              ; $4d35: $2f
	add sp, $36                                      ; $4d36: $e8 $36
	ld c, b                                          ; $4d38: $48
	add hl, bc                                       ; $4d39: $09
	jr c, jr_08c_4d74                                ; $4d3a: $38 $38

	ld b, d                                          ; $4d3c: $42
	xor l                                            ; $4d3d: $ad
	ld l, d                                          ; $4d3e: $6a
	ldh a, [$0d]                                     ; $4d3f: $f0 $0d
	inc a                                            ; $4d41: $3c
	ld d, b                                          ; $4d42: $50
	inc de                                           ; $4d43: $13
	ld a, a                                          ; $4d44: $7f
	ld h, d                                          ; $4d45: $62
	ldh a, [$9a]                                     ; $4d46: $f0 $9a
	ld e, l                                          ; $4d48: $5d
	ccf                                              ; $4d49: $3f
	ld d, l                                          ; $4d4a: $55
	ld c, l                                          ; $4d4b: $4d
	ld c, l                                          ; $4d4c: $4d
	ld a, e                                          ; $4d4d: $7b
	ld c, b                                          ; $4d4e: $48
	and b                                            ; $4d4f: $a0
	ld [hl], d                                       ; $4d50: $72
	ld h, c                                          ; $4d51: $61
	ld d, [hl]                                       ; $4d52: $56
	dec sp                                           ; $4d53: $3b
	dec a                                            ; $4d54: $3d
	ld c, a                                          ; $4d55: $4f
	ld b, d                                          ; $4d56: $42
	ld c, e                                          ; $4d57: $4b
	xor h                                            ; $4d58: $ac
	db $eb                                           ; $4d59: $eb
	inc [hl]                                         ; $4d5a: $34
	ld b, l                                          ; $4d5b: $45
	and b                                            ; $4d5c: $a0
	ld l, d                                          ; $4d5d: $6a
	ldh a, [$0d]                                     ; $4d5e: $f0 $0d
	inc a                                            ; $4d60: $3c
	ld d, b                                          ; $4d61: $50
	xor h                                            ; $4d62: $ac
	ld a, a                                          ; $4d63: $7f
	ld h, d                                          ; $4d64: $62

jr_08c_4d65:
	ldh a, [$9a]                                     ; $4d65: $f0 $9a
	ld e, l                                          ; $4d67: $5d
	ccf                                              ; $4d68: $3f
	ld c, h                                          ; $4d69: $4c
	and b                                            ; $4d6a: $a0
	ld [$13c4], a                                    ; $4d6b: $ea $c4 $13
	db $eb                                           ; $4d6e: $eb
	and l                                            ; $4d6f: $a5
	inc [hl]                                         ; $4d70: $34
	add a                                            ; $4d71: $87
	ldh a, [$5d]                                     ; $4d72: $f0 $5d

jr_08c_4d74:
	call c, $2fa0                                    ; $4d74: $dc $a0 $2f
	add sp, $11                                      ; $4d77: $e8 $11
	add hl, bc                                       ; $4d79: $09
	db $ec                                           ; $4d7a: $ec
	reti                                             ; $4d7b: $d9


	xor h                                            ; $4d7c: $ac
	ret nz                                           ; $4d7d: $c0

	ld c, b                                          ; $4d7e: $48
	and b                                            ; $4d7f: $a0
	xor $1f                                          ; $4d80: $ee $1f
	xor h                                            ; $4d82: $ac
	ld l, a                                          ; $4d83: $6f
	ld c, a                                          ; $4d84: $4f
	ldh a, [$0c]                                     ; $4d85: $f0 $0c
	jr c, jr_08c_4dc6                                ; $4d87: $38 $3d

	ld d, h                                          ; $4d89: $54
	ld c, c                                          ; $4d8a: $49
	ld b, [hl]                                       ; $4d8b: $46
	ld c, [hl]                                       ; $4d8c: $4e
	ld h, e                                          ; $4d8d: $63
	and b                                            ; $4d8e: $a0
	db $ec                                           ; $4d8f: $ec
	reti                                             ; $4d90: $d9


	inc [hl]                                         ; $4d91: $34
	add a                                            ; $4d92: $87
	ldh a, [$5d]                                     ; $4d93: $f0 $5d
	ld a, [hl-]                                      ; $4d95: $3a
	ld b, d                                          ; $4d96: $42
	ld c, h                                          ; $4d97: $4c
	and b                                            ; $4d98: $a0
	cpl                                              ; $4d99: $2f
	add sp, -$17                                     ; $4d9a: $e8 $e9
	ld c, b                                          ; $4d9c: $48
	add hl, bc                                       ; $4d9d: $09
	ldh a, [$ac]                                     ; $4d9e: $f0 $ac
	dec a                                            ; $4da0: $3d
	ld d, h                                          ; $4da1: $54
	ld c, c                                          ; $4da2: $49
	ld b, d                                          ; $4da3: $42
	ld b, [hl]                                       ; $4da4: $46
	ld c, [hl]                                       ; $4da5: $4e
	add h                                            ; $4da6: $84
	xor h                                            ; $4da7: $ac
	ld b, b                                          ; $4da8: $40
	ld b, c                                          ; $4da9: $41
	ld a, [hl-]                                      ; $4daa: $3a
	ld b, a                                          ; $4dab: $47
	jr c, jr_08c_4dfc                                ; $4dac: $38 $4e

	ld b, d                                          ; $4dae: $42
	inc a                                            ; $4daf: $3c
	ld a, [hl-]                                      ; $4db0: $3a
	ld c, b                                          ; $4db1: $48
	and c                                            ; $4db2: $a1
	ld l, a                                          ; $4db3: $6f
	db $ed                                           ; $4db4: $ed
	ld b, e                                          ; $4db5: $43
	xor h                                            ; $4db6: $ac
	ldh a, [$ac]                                     ; $4db7: $f0 $ac
	dec a                                            ; $4db9: $3d
	ld d, h                                          ; $4dba: $54
	ld c, c                                          ; $4dbb: $49
	ld a, [hl-]                                      ; $4dbc: $3a
	ld b, c                                          ; $4dbd: $41
	ccf                                              ; $4dbe: $3f
	ld a, [hl-]                                      ; $4dbf: $3a
	jr c, jr_08c_4e25                                ; $4dc0: $38 $63

	ld b, l                                          ; $4dc2: $45
	and b                                            ; $4dc3: $a0
	ldh a, [$ac]                                     ; $4dc4: $f0 $ac

jr_08c_4dc6:
	dec a                                            ; $4dc6: $3d
	ld d, h                                          ; $4dc7: $54
	ld c, c                                          ; $4dc8: $49
	ld b, d                                          ; $4dc9: $42
	ld b, [hl]                                       ; $4dca: $46
	ld c, [hl]                                       ; $4dcb: $4e

jr_08c_4dcc:
	add h                                            ; $4dcc: $84
	ld b, d                                          ; $4dcd: $42
	ldh a, [$38]                                     ; $4dce: $f0 $38
	ld d, e                                          ; $4dd0: $53
	inc de                                           ; $4dd1: $13
	ldh a, [c]                                       ; $4dd2: $f2
	ld a, [$383e]                                    ; $4dd3: $fa $3e $38
	ld b, c                                          ; $4dd6: $41
	db $ec                                           ; $4dd7: $ec
	ret c                                            ; $4dd8: $d8

	ld b, d                                          ; $4dd9: $42
	and c                                            ; $4dda: $a1
	cpl                                              ; $4ddb: $2f
	add sp, -$65                                     ; $4ddc: $e8 $9b
	add hl, bc                                       ; $4dde: $09
	rst JumpTable                                          ; $4ddf: $c7
	ld a, [hl-]                                      ; $4de0: $3a
	ld b, d                                          ; $4de1: $42
	xor c                                            ; $4de2: $a9
	ld e, d                                          ; $4de3: $5a
	ld d, h                                          ; $4de4: $54
	inc a                                            ; $4de5: $3c
	ld d, b                                          ; $4de6: $50
	ld b, b                                          ; $4de7: $40
	ld b, c                                          ; $4de8: $41
	ld a, [hl-]                                      ; $4de9: $3a
	sbc d                                            ; $4dea: $9a
	inc de                                           ; $4deb: $13
	ldh a, [$0c]                                     ; $4dec: $f0 $0c
	jr c, jr_08c_4e2d                                ; $4dee: $38 $3d

	ld b, d                                          ; $4df0: $42
	and c                                            ; $4df1: $a1
	ld e, [hl]                                       ; $4df2: $5e
	dec sp                                           ; $4df3: $3b
	xor c                                            ; $4df4: $a9
	db $ed                                           ; $4df5: $ed
	rla                                              ; $4df6: $17
	dec sp                                           ; $4df7: $3b
	ccf                                              ; $4df8: $3f
	ld l, e                                          ; $4df9: $6b
	ld b, d                                          ; $4dfa: $42
	sbc d                                            ; $4dfb: $9a

jr_08c_4dfc:
	and c                                            ; $4dfc: $a1
	ld e, [hl]                                       ; $4dfd: $5e
	dec sp                                           ; $4dfe: $3b
	xor c                                            ; $4dff: $a9
	db $ec                                           ; $4e00: $ec
	db $d3                                           ; $4e01: $d3
	xor h                                            ; $4e02: $ac
	ld b, b                                          ; $4e03: $40
	ld b, c                                          ; $4e04: $41
	ld a, [hl-]                                      ; $4e05: $3a
	sbc d                                            ; $4e06: $9a
	ldh a, [$2d]                                     ; $4e07: $f0 $2d
	dec sp                                           ; $4e09: $3b
	ccf                                              ; $4e0a: $3f
	ld c, [hl]                                       ; $4e0b: $4e
	ld b, d                                          ; $4e0c: $42
	and c                                            ; $4e0d: $a1
	ld e, h                                          ; $4e0e: $5c
	ld d, [hl]                                       ; $4e0f: $56
	dec sp                                           ; $4e10: $3b
	and d                                            ; $4e11: $a2
	cpl                                              ; $4e12: $2f
	ld b, e                                          ; $4e13: $43
	ld c, b                                          ; $4e14: $48
	ld [hl+], a                                      ; $4e15: $22
	inc [hl]                                         ; $4e16: $34
	ld d, h                                          ; $4e17: $54
	ld b, d                                          ; $4e18: $42
	pop af                                           ; $4e19: $f1
	push bc                                          ; $4e1a: $c5
	di                                               ; $4e1b: $f3
	ld e, d                                          ; $4e1c: $5a
	ldh a, [c]                                       ; $4e1d: $f2
	ret nc                                           ; $4e1e: $d0

	xor h                                            ; $4e1f: $ac
	pop af                                           ; $4e20: $f1
	jr nc, jr_08c_4e75                               ; $4e21: $30 $52

	dec sp                                           ; $4e23: $3b
	ld h, c                                          ; $4e24: $61

jr_08c_4e25:
	ld d, [hl]                                       ; $4e25: $56
	dec sp                                           ; $4e26: $3b
	dec a                                            ; $4e27: $3d
	ld l, h                                          ; $4e28: $6c
	dec a                                            ; $4e29: $3d
	jr c, jr_08c_4dcc                                ; $4e2a: $38 $a0

	ld e, [hl]                                       ; $4e2c: $5e

jr_08c_4e2d:
	dec sp                                           ; $4e2d: $3b
	inc [hl]                                         ; $4e2e: $34
	adc b                                            ; $4e2f: $88
	sub c                                            ; $4e30: $91
	xor c                                            ; $4e31: $a9
	db $eb                                           ; $4e32: $eb
	ld e, c                                          ; $4e33: $59
	and b                                            ; $4e34: $a0
	cpl                                              ; $4e35: $2f
	ld b, e                                          ; $4e36: $43
	add a                                            ; $4e37: $87
	ldh a, [$5b]                                     ; $4e38: $f0 $5b
	ldh a, [$5e]                                     ; $4e3a: $f0 $5e
	ld b, h                                          ; $4e3c: $44
	ld b, l                                          ; $4e3d: $45
	xor b                                            ; $4e3e: $a8
	ld d, c                                          ; $4e3f: $51
	sbc l                                            ; $4e40: $9d
	ld b, a                                          ; $4e41: $47
	ldh a, [rOBP0]                                   ; $4e42: $f0 $48
	ld e, h                                          ; $4e44: $5c
	ld b, h                                          ; $4e45: $44
	ld d, c                                          ; $4e46: $51
	dec sp                                           ; $4e47: $3b
	ccf                                              ; $4e48: $3f
	and b                                            ; $4e49: $a0
	xor $1f                                          ; $4e4a: $ee $1f
	xor l                                            ; $4e4c: $ad
	ld c, d                                          ; $4e4d: $4a
	ld c, a                                          ; $4e4e: $4f
	inc [hl]                                         ; $4e4f: $34
	db $ec                                           ; $4e50: $ec
	reti                                             ; $4e51: $d9


jr_08c_4e52:
	ldh a, [$71]                                     ; $4e52: $f0 $71
	jr c, jr_08c_4eb9                                ; $4e54: $38 $63

	and b                                            ; $4e56: $a0
	cpl                                              ; $4e57: $2f
	ld b, e                                          ; $4e58: $43
	ldh a, [$08]                                     ; $4e59: $f0 $08
	ld d, b                                          ; $4e5b: $50
	inc [hl]                                         ; $4e5c: $34
	pop af                                           ; $4e5d: $f1
	jr nc, jr_08c_4eb2                               ; $4e5e: $30 $52

	dec sp                                           ; $4e60: $3b
	ccf                                              ; $4e61: $3f
	ld c, [hl]                                       ; $4e62: $4e
	ldh a, [rTAC]                                    ; $4e63: $f0 $07
	xor h                                            ; $4e65: $ac
	ldh a, [$62]                                     ; $4e66: $f0 $62
	ld d, l                                          ; $4e68: $55
	ldh a, [rLCDC]                                   ; $4e69: $f0 $40
	dec sp                                           ; $4e6b: $3b
	ccf                                              ; $4e6c: $3f
	ld d, b                                          ; $4e6d: $50
	ld c, l                                          ; $4e6e: $4d
	ld c, [hl]                                       ; $4e6f: $4e
	ld b, c                                          ; $4e70: $41
	ld b, h                                          ; $4e71: $44
	inc a                                            ; $4e72: $3c
	ld d, b                                          ; $4e73: $50
	inc de                                           ; $4e74: $13

jr_08c_4e75:
	pop af                                           ; $4e75: $f1
	ld l, e                                          ; $4e76: $6b
	ld a, $3d                                        ; $4e77: $3e $3d
	ld a, a                                          ; $4e79: $7f
	ldh a, [rTAC]                                    ; $4e7a: $f0 $07
	ld c, d                                          ; $4e7c: $4a
	ld a, $66                                        ; $4e7d: $3e $66
	add hl, sp                                       ; $4e7f: $39
	and b                                            ; $4e80: $a0
	rst JumpTable                                          ; $4e81: $c7
	ld b, h                                          ; $4e82: $44
	ld e, l                                          ; $4e83: $5d
	ld e, d                                          ; $4e84: $5a
	ld c, b                                          ; $4e85: $48
	and b                                            ; $4e86: $a0
	cpl                                              ; $4e87: $2f
	ld b, e                                          ; $4e88: $43
	ld b, b                                          ; $4e89: $40
	ld c, l                                          ; $4e8a: $4d
	ld c, c                                          ; $4e8b: $49
	ld c, a                                          ; $4e8c: $4f
	xor h                                            ; $4e8d: $ac
	halt                                             ; $4e8e: $76
	ld c, c                                          ; $4e8f: $49
	xor $06                                          ; $4e90: $ee $06
	ld e, e                                          ; $4e92: $5b
	ld d, [hl]                                       ; $4e93: $56
	inc [hl]                                         ; $4e94: $34
	jr c, jr_08c_4f05                                ; $4e95: $38 $6e

	and c                                            ; $4e97: $a1
	ld b, b                                          ; $4e98: $40
	inc [hl]                                         ; $4e99: $34
	ld b, b                                          ; $4e9a: $40
	ld b, c                                          ; $4e9b: $41
	ld a, [hl-]                                      ; $4e9c: $3a
	ld d, h                                          ; $4e9d: $54
	ld c, c                                          ; $4e9e: $49
	xor l                                            ; $4e9f: $ad
	db $ed                                           ; $4ea0: $ed
	ld b, e                                          ; $4ea1: $43
	ld l, a                                          ; $4ea2: $6f
	ld c, b                                          ; $4ea3: $48
	and b                                            ; $4ea4: $a0
	ld b, [hl]                                       ; $4ea5: $46
	dec sp                                           ; $4ea6: $3b
	inc [hl]                                         ; $4ea7: $34
	ldh a, [rOBP0]                                   ; $4ea8: $f0 $48
	ld e, h                                          ; $4eaa: $5c
	ld b, h                                          ; $4eab: $44
	ld a, $3d                                        ; $4eac: $3e $3d
	ld l, h                                          ; $4eae: $6c
	dec a                                            ; $4eaf: $3d
	jr c, jr_08c_4e52                                ; $4eb0: $38 $a0

jr_08c_4eb2:
	cpl                                              ; $4eb2: $2f
	ld b, e                                          ; $4eb3: $43
	ld c, e                                          ; $4eb4: $4b
	ld c, e                                          ; $4eb5: $4b
	ld c, e                                          ; $4eb6: $4b
	ld c, e                                          ; $4eb7: $4b
	xor l                                            ; $4eb8: $ad

jr_08c_4eb9:
	db $ec                                           ; $4eb9: $ec
	cp c                                             ; $4eba: $b9
	ld c, h                                          ; $4ebb: $4c
	xor b                                            ; $4ebc: $a8
	ld [hl-], a                                      ; $4ebd: $32
	pop af                                           ; $4ebe: $f1
	push bc                                          ; $4ebf: $c5
	di                                               ; $4ec0: $f3
	ld e, d                                          ; $4ec1: $5a
	ldh a, [c]                                       ; $4ec2: $f2
	ret nc                                           ; $4ec3: $d0

	ld b, d                                          ; $4ec4: $42
	pop af                                           ; $4ec5: $f1
	or d                                             ; $4ec6: $b2
	pop af                                           ; $4ec7: $f1
	ld c, b                                          ; $4ec8: $48
	db $ed                                           ; $4ec9: $ed
	ldh [c], a                                       ; $4eca: $e2
	scf                                              ; $4ecb: $37
	scf                                              ; $4ecc: $37
	inc sp                                           ; $4ecd: $33
	add hl, bc                                       ; $4ece: $09
	ld e, b                                          ; $4ecf: $58
	dec sp                                           ; $4ed0: $3b
	ld e, h                                          ; $4ed1: $5c
	ld c, e                                          ; $4ed2: $4b
	xor h                                            ; $4ed3: $ac
	sbc $f0                                          ; $4ed4: $de $f0
	ld [hl], c                                       ; $4ed6: $71
	inc a                                            ; $4ed7: $3c
	dec sp                                           ; $4ed8: $3b
	dec a                                            ; $4ed9: $3d
	ld c, h                                          ; $4eda: $4c
	and b                                            ; $4edb: $a0
	cpl                                              ; $4edc: $2f
	ld b, e                                          ; $4edd: $43
	ld b, b                                          ; $4ede: $40
	ld c, l                                          ; $4edf: $4d
	ld b, l                                          ; $4ee0: $45
	ld d, a                                          ; $4ee1: $57
	ld c, a                                          ; $4ee2: $4f
	ld e, b                                          ; $4ee3: $58
	xor h                                            ; $4ee4: $ac
	ld e, b                                          ; $4ee5: $58
	dec sp                                           ; $4ee6: $3b
	ld e, h                                          ; $4ee7: $5c
	add d                                            ; $4ee8: $82
	jr c, jr_08c_4f27                                ; $4ee9: $38 $3c

	ld e, l                                          ; $4eeb: $5d
	ccf                                              ; $4eec: $3f
	dec a                                            ; $4eed: $3d
	inc de                                           ; $4eee: $13
	pop af                                           ; $4eef: $f1
	ld h, c                                          ; $4ef0: $61
	ld e, h                                          ; $4ef1: $5c
	ld d, e                                          ; $4ef2: $53
	ldh a, [$0c]                                     ; $4ef3: $f0 $0c
	ld e, h                                          ; $4ef5: $5c
	dec a                                            ; $4ef6: $3d
	jr c, jr_08c_4f33                                ; $4ef7: $38 $3a

	and b                                            ; $4ef9: $a0
	ld e, [hl]                                       ; $4efa: $5e
	dec sp                                           ; $4efb: $3b
	inc [hl]                                         ; $4efc: $34
	ld a, [hl-]                                      ; $4efd: $3a
	inc [hl]                                         ; $4efe: $34
	ld l, e                                          ; $4eff: $6b
	ld b, d                                          ; $4f00: $42
	sbc d                                            ; $4f01: $9a
	inc a                                            ; $4f02: $3c
	inc de                                           ; $4f03: $13
	pop af                                           ; $4f04: $f1

jr_08c_4f05:
	dec d                                            ; $4f05: $15
	ld c, l                                          ; $4f06: $4d
	ld h, c                                          ; $4f07: $61
	ld d, [hl]                                       ; $4f08: $56
	dec sp                                           ; $4f09: $3b
	dec a                                            ; $4f0a: $3d
	xor b                                            ; $4f0b: $a8
	ld b, b                                          ; $4f0c: $40
	ld b, c                                          ; $4f0d: $41
	ld a, [hl-]                                      ; $4f0e: $3a
	sbc d                                            ; $4f0f: $9a
	jr c, jr_08c_4f4a                                ; $4f10: $38 $38

	db $ec                                           ; $4f12: $ec
	ret c                                            ; $4f13: $d8

	and b                                            ; $4f14: $a0
	cpl                                              ; $4f15: $2f
	ld b, e                                          ; $4f16: $43
	pop af                                           ; $4f17: $f1
	dec d                                            ; $4f18: $15
	ld c, l                                          ; $4f19: $4d
	ld h, c                                          ; $4f1a: $61
	ld d, [hl]                                       ; $4f1b: $56
	dec sp                                           ; $4f1c: $3b
	dec a                                            ; $4f1d: $3d
	inc a                                            ; $4f1e: $3c
	xor l                                            ; $4f1f: $ad
	ld l, e                                          ; $4f20: $6b
	ld b, h                                          ; $4f21: $44
	inc a                                            ; $4f22: $3c
	ld a, [hl-]                                      ; $4f23: $3a
	ld [hl], h                                       ; $4f24: $74
	dec [hl]                                         ; $4f25: $35
	ld [hl-], a                                      ; $4f26: $32

jr_08c_4f27:
	ld d, d                                          ; $4f27: $52
	inc [hl]                                         ; $4f28: $34
	jr c, jr_08c_4f63                                ; $4f29: $38 $38

	inc a                                            ; $4f2b: $3c
	and e                                            ; $4f2c: $a3
	ld b, [hl]                                       ; $4f2d: $46
	dec sp                                           ; $4f2e: $3b
	inc [hl]                                         ; $4f2f: $34
	db $ec                                           ; $4f30: $ec
	dec e                                            ; $4f31: $1d
	ld h, d                                          ; $4f32: $62

jr_08c_4f33:
	inc de                                           ; $4f33: $13
	ld [$4531], a                                    ; $4f34: $ea $31 $45
	and b                                            ; $4f37: $a0
	cpl                                              ; $4f38: $2f
	ld [$acc9], a                                    ; $4f39: $ea $c9 $ac
	db $ed                                           ; $4f3c: $ed
	ld d, a                                          ; $4f3d: $57
	db $ec                                           ; $4f3e: $ec
	dec e                                            ; $4f3f: $1d
	ld h, d                                          ; $4f40: $62
	inc de                                           ; $4f41: $13
	ld [$a33f], a                                    ; $4f42: $ea $3f $a3
	cpl                                              ; $4f45: $2f
	jp hl                                            ; $4f46: $e9


	ld sp, $f009                                     ; $4f47: $31 $09 $f0

Jump_08c_4f4a:
jr_08c_4f4a:
	ld d, a                                          ; $4f4a: $57
	ldh a, [$ae]                                     ; $4f4b: $f0 $ae
	ld c, h                                          ; $4f4d: $4c
	xor b                                            ; $4f4e: $a8
	ld d, h                                          ; $4f4f: $54
	ld b, c                                          ; $4f50: $41
	ld a, [hl-]                                      ; $4f51: $3a
	db $ec                                           ; $4f52: $ec
	dec e                                            ; $4f53: $1d
	inc de                                           ; $4f54: $13
	ld [hl], d                                       ; $4f55: $72
	ld c, l                                          ; $4f56: $4d
	ld c, [hl]                                       ; $4f57: $4e
	ld a, [hl-]                                      ; $4f58: $3a
	ld b, c                                          ; $4f59: $41
	ccf                                              ; $4f5a: $3f
	ld c, b                                          ; $4f5b: $48
	and b                                            ; $4f5c: $a0
	db $ed                                           ; $4f5d: $ed
	ld h, c                                          ; $4f5e: $61
	ld [hl], d                                       ; $4f5f: $72
	ccf                                              ; $4f60: $3f
	ld c, a                                          ; $4f61: $4f
	inc de                                           ; $4f62: $13

jr_08c_4f63:
	ldh a, [$57]                                     ; $4f63: $f0 $57
	ldh a, [$ae]                                     ; $4f65: $f0 $ae
	ld a, [hl-]                                      ; $4f67: $3a
	db $ec                                           ; $4f68: $ec
	dec e                                            ; $4f69: $1d
	ld c, h                                          ; $4f6a: $4c
	and b                                            ; $4f6b: $a0
	cpl                                              ; $4f6c: $2f
	ld b, e                                          ; $4f6d: $43
	ldh a, [$66]                                     ; $4f6e: $f0 $66
	ld b, c                                          ; $4f70: $41
	ld c, d                                          ; $4f71: $4a
	ld c, a                                          ; $4f72: $4f
	ld d, b                                          ; $4f73: $50
	ld e, [hl]                                       ; $4f74: $5e
	dec a                                            ; $4f75: $3d
	ld l, h                                          ; $4f76: $6c
	dec a                                            ; $4f77: $3d
	jr c, jr_08c_4fc4                                ; $4f78: $38 $4a

	inc de                                           ; $4f7a: $13
	db $eb                                           ; $4f7b: $eb
	ld e, a                                          ; $4f7c: $5f
	and b                                            ; $4f7d: $a0
	cpl                                              ; $4f7e: $2f
	add sp, -$26                                     ; $4f7f: $e8 $da
	add hl, bc                                       ; $4f81: $09
	ld b, b                                          ; $4f82: $40
	ld c, l                                          ; $4f83: $4d
	ld e, e                                          ; $4f84: $5b
	ld d, [hl]                                       ; $4f85: $56
	inc [hl]                                         ; $4f86: $34
	db $ec                                           ; $4f87: $ec
	push bc                                          ; $4f88: $c5
	inc de                                           ; $4f89: $13
	ldh a, [rAUD2HIGH]                               ; $4f8a: $f0 $19
	ld b, a                                          ; $4f8c: $47
	sub [hl]                                         ; $4f8d: $96
	ld d, a                                          ; $4f8e: $57
	ld d, d                                          ; $4f8f: $52
	ld a, $66                                        ; $4f90: $3e $66
	add hl, sp                                       ; $4f92: $39
	and b                                            ; $4f93: $a0
	cpl                                              ; $4f94: $2f
	ld b, e                                          ; $4f95: $43
	ld b, b                                          ; $4f96: $40
	add hl, sp                                       ; $4f97: $39
	ld b, h                                          ; $4f98: $44
	ld c, h                                          ; $4f99: $4c
	xor b                                            ; $4f9a: $a8
	db $eb                                           ; $4f9b: $eb
	ld d, d                                          ; $4f9c: $52
	inc a                                            ; $4f9d: $3c
	and c                                            ; $4f9e: $a1
	ldh a, [rAUD2LOW]                                ; $4f9f: $f0 $18
	ldh a, [$dc]                                     ; $4fa1: $f0 $dc
	ld h, d                                          ; $4fa3: $62
	ld [hl], d                                       ; $4fa4: $72
	ld c, [hl]                                       ; $4fa5: $4e
	ld b, d                                          ; $4fa6: $42
	ld c, c                                          ; $4fa7: $49
	xor h                                            ; $4fa8: $ac
	db $ed                                           ; $4fa9: $ed
	sub h                                            ; $4faa: $94
	ld b, a                                          ; $4fab: $47
	add c                                            ; $4fac: $81
	ld [hl], l                                       ; $4fad: $75
	ld a, l                                          ; $4fae: $7d
	ld d, c                                          ; $4faf: $51
	ld c, [hl]                                       ; $4fb0: $4e
	ld b, d                                          ; $4fb1: $42
	inc de                                           ; $4fb2: $13
	ld e, d                                          ; $4fb3: $5a
	dec sp                                           ; $4fb4: $3b
	ld h, c                                          ; $4fb5: $61
	ld d, e                                          ; $4fb6: $53
	adc e                                            ; $4fb7: $8b
	ld e, h                                          ; $4fb8: $5c
	and c                                            ; $4fb9: $a1
	cpl                                              ; $4fba: $2f
	add sp, $1e                                      ; $4fbb: $e8 $1e
	add hl, bc                                       ; $4fbd: $09
	ld b, h                                          ; $4fbe: $44
	inc a                                            ; $4fbf: $3c
	ld d, b                                          ; $4fc0: $50
	xor h                                            ; $4fc1: $ac
	db $ed                                           ; $4fc2: $ed
	inc b                                            ; $4fc3: $04

jr_08c_4fc4:
	ld b, a                                          ; $4fc4: $47
	jr c, jr_08c_5015                                ; $4fc5: $38 $4e

	ld b, c                                          ; $4fc7: $41
	ld b, h                                          ; $4fc8: $44
	ld c, a                                          ; $4fc9: $4f
	ld b, c                                          ; $4fca: $41
	ld c, h                                          ; $4fcb: $4c
	and b                                            ; $4fcc: $a0
	db $ed                                           ; $4fcd: $ed
	inc b                                            ; $4fce: $04
	ld a, [hl-]                                      ; $4fcf: $3a
	ld b, c                                          ; $4fd0: $41
	ld b, h                                          ; $4fd1: $44
	inc a                                            ; $4fd2: $3c
	ld d, b                                          ; $4fd3: $50
	xor h                                            ; $4fd4: $ac
	sub c                                            ; $4fd5: $91
	ldh a, [$59]                                     ; $4fd6: $f0 $59
	ld b, d                                          ; $4fd8: $42
	ld d, h                                          ; $4fd9: $54
	ld c, c                                          ; $4fda: $49
	ld b, l                                          ; $4fdb: $45
	ld c, h                                          ; $4fdc: $4c
	and b                                            ; $4fdd: $a0
	db $eb                                           ; $4fde: $eb
	ld d, c                                          ; $4fdf: $51
	xor h                                            ; $4fe0: $ac
	db $ed                                           ; $4fe1: $ed
	inc b                                            ; $4fe2: $04
	ld b, h                                          ; $4fe3: $44
	ld c, a                                          ; $4fe4: $4f
	ld b, c                                          ; $4fe5: $41
	ld c, h                                          ; $4fe6: $4c
	and b                                            ; $4fe7: $a0
	ld b, b                                          ; $4fe8: $40
	ld c, l                                          ; $4fe9: $4d
	ld e, e                                          ; $4fea: $5b
	ld d, [hl]                                       ; $4feb: $56
	inc [hl]                                         ; $4fec: $34
	ld l, d                                          ; $4fed: $6a
	ldh a, [$0d]                                     ; $4fee: $f0 $0d
	ld l, a                                          ; $4ff0: $6f
	ld d, e                                          ; $4ff1: $53
	inc de                                           ; $4ff2: $13
	db $ed                                           ; $4ff3: $ed
	ld h, [hl]                                       ; $4ff4: $66
	ld a, $3f                                        ; $4ff5: $3e $3f
	rst SubAFromDE                                          ; $4ff7: $df
	ld c, h                                          ; $4ff8: $4c
	and b                                            ; $4ff9: $a0
	db $ec                                           ; $4ffa: $ec
	reti                                             ; $4ffb: $d9


	inc [hl]                                         ; $4ffc: $34
	ldh a, [$ab]                                     ; $4ffd: $f0 $ab
	ld b, d                                          ; $4fff: $42
	adc h                                            ; $5000: $8c
	ld c, e                                          ; $5001: $4b
	inc de                                           ; $5002: $13
	db $ec                                           ; $5003: $ec
	inc e                                            ; $5004: $1c
	and b                                            ; $5005: $a0
	ld b, b                                          ; $5006: $40
	ld b, d                                          ; $5007: $42
	ldh a, [$38]                                     ; $5008: $f0 $38
	ld d, e                                          ; $500a: $53
	xor h                                            ; $500b: $ac
	ldh a, [$57]                                     ; $500c: $f0 $57
	ldh a, [$ae]                                     ; $500e: $f0 $ae
	ld b, h                                          ; $5010: $44
	ld c, a                                          ; $5011: $4f
	ld b, c                                          ; $5012: $41
	ld c, h                                          ; $5013: $4c
	and b                                            ; $5014: $a0

jr_08c_5015:
	cpl                                              ; $5015: $2f
	ld [$0990], a                                    ; $5016: $ea $90 $09
	ld b, h                                          ; $5019: $44
	dec sp                                           ; $501a: $3b
	dec a                                            ; $501b: $3d
	ld d, b                                          ; $501c: $50
	xor h                                            ; $501d: $ac
	ld a, b                                          ; $501e: $78
	ld a, [hl-]                                      ; $501f: $3a
	ld e, l                                          ; $5020: $5d
	ld c, l                                          ; $5021: $4d
	ld a, e                                          ; $5022: $7b
	ld b, l                                          ; $5023: $45
	inc a                                            ; $5024: $3c
	dec sp                                           ; $5025: $3b
	dec a                                            ; $5026: $3d
	ld c, h                                          ; $5027: $4c
	ld c, b                                          ; $5028: $48
	and b                                            ; $5029: $a0
	ld b, h                                          ; $502a: $44
	dec sp                                           ; $502b: $3b
	dec a                                            ; $502c: $3d
	ld d, b                                          ; $502d: $50
	inc [hl]                                         ; $502e: $34
	db $ec                                           ; $502f: $ec
	db $d3                                           ; $5030: $d3
	inc de                                           ; $5031: $13
	ld h, e                                          ; $5032: $63
	ldh a, [rAUD1SWEEP]                              ; $5033: $f0 $10
	ld h, e                                          ; $5035: $63
	ldh a, [rAUD1SWEEP]                              ; $5036: $f0 $10
	inc de                                           ; $5038: $13
	ldh a, [rAUD2LOW]                                ; $5039: $f0 $18
	ldh a, [$dc]                                     ; $503b: $f0 $dc
	ld h, d                                          ; $503d: $62
	ld [hl], d                                       ; $503e: $72
	ld b, a                                          ; $503f: $47
	ld a, b                                          ; $5040: $78
	ld c, [hl]                                       ; $5041: $4e
	ld b, d                                          ; $5042: $42
	xor c                                            ; $5043: $a9
	ld b, h                                          ; $5044: $44

jr_08c_5045:
	jr c, jr_08c_5084                                ; $5045: $38 $3d

	jr c, jr_08c_507d                                ; $5047: $38 $34

	ld d, $13                                        ; $5049: $16 $13
	db $ed                                           ; $504b: $ed
	inc b                                            ; $504c: $04
	ld c, d                                          ; $504d: $4a
	ld a, $66                                        ; $504e: $3e $66
	and c                                            ; $5050: $a1
	ld b, h                                          ; $5051: $44
	dec sp                                           ; $5052: $3b
	dec a                                            ; $5053: $3d
	ld d, b                                          ; $5054: $50
	inc [hl]                                         ; $5055: $34
	db $ec                                           ; $5056: $ec
	db $d3                                           ; $5057: $d3
	inc de                                           ; $5058: $13
	ld h, e                                          ; $5059: $63
	ldh a, [rAUD1SWEEP]                              ; $505a: $f0 $10
	ld h, e                                          ; $505c: $63
	ldh a, [rAUD1SWEEP]                              ; $505d: $f0 $10
	inc de                                           ; $505f: $13
	ldh a, [rAUD2LOW]                                ; $5060: $f0 $18
	ldh a, [$dc]                                     ; $5062: $f0 $dc
	ld h, d                                          ; $5064: $62
	ld [hl], d                                       ; $5065: $72
	ld b, a                                          ; $5066: $47
	ld a, b                                          ; $5067: $78
	ld c, [hl]                                       ; $5068: $4e
	ld b, d                                          ; $5069: $42
	and c                                            ; $506a: $a1
	db $d3                                           ; $506b: $d3
	xor c                                            ; $506c: $a9
	ld a, b                                          ; $506d: $78
	ld a, [hl-]                                      ; $506e: $3a
	ld e, l                                          ; $506f: $5d
	ld c, l                                          ; $5070: $4d
	ld a, e                                          ; $5071: $7b
	ld b, l                                          ; $5072: $45
	inc a                                            ; $5073: $3c
	dec sp                                           ; $5074: $3b
	dec a                                            ; $5075: $3d
	ld c, b                                          ; $5076: $48
	and b                                            ; $5077: $a0
	cpl                                              ; $5078: $2f
	jp hl                                            ; $5079: $e9


	ld [bc], a                                       ; $507a: $02
	add hl, bc                                       ; $507b: $09
	rst JumpTable                                          ; $507c: $c7

jr_08c_507d:
	xor c                                            ; $507d: $a9
	db $ed                                           ; $507e: $ed
	sub h                                            ; $507f: $94
	ld b, a                                          ; $5080: $47
	add c                                            ; $5081: $81
	ld [hl], l                                       ; $5082: $75
	ld a, l                                          ; $5083: $7d

jr_08c_5084:
	ld d, c                                          ; $5084: $51
	ld c, [hl]                                       ; $5085: $4e
	ld b, d                                          ; $5086: $42
	ld c, e                                          ; $5087: $4b
	inc de                                           ; $5088: $13
	adc e                                            ; $5089: $8b
	ld e, h                                          ; $508a: $5c
	db $ec                                           ; $508b: $ec
	ret c                                            ; $508c: $d8

	ld b, c                                          ; $508d: $41
	ld b, h                                          ; $508e: $44
	ld c, b                                          ; $508f: $48
	and b                                            ; $5090: $a0
	db $d3                                           ; $5091: $d3
	xor c                                            ; $5092: $a9
	ld l, a                                          ; $5093: $6f
	ld d, e                                          ; $5094: $53
	ldh a, [$ab]                                     ; $5095: $f0 $ab
	ld b, d                                          ; $5097: $42
	adc h                                            ; $5098: $8c
	ld b, h                                          ; $5099: $44
	dec sp                                           ; $509a: $3b
	dec a                                            ; $509b: $3d
	ld d, b                                          ; $509c: $50
	xor h                                            ; $509d: $ac
	add c                                            ; $509e: $81
	ld [hl], l                                       ; $509f: $75
	ld a, l                                          ; $50a0: $7d
	ld d, c                                          ; $50a1: $51
	ld c, [hl]                                       ; $50a2: $4e
	ldh a, [$08]                                     ; $50a3: $f0 $08
	add hl, sp                                       ; $50a5: $39
	inc a                                            ; $50a6: $3c
	ld a, [hl-]                                      ; $50a7: $3a
	ld c, b                                          ; $50a8: $48
	and b                                            ; $50a9: $a0
	ret nz                                           ; $50aa: $c0

	xor h                                            ; $50ab: $ac
	ld [hl], d                                       ; $50ac: $72
	ccf                                              ; $50ad: $3f
	ld c, [hl]                                       ; $50ae: $4e
	ldh a, [$08]                                     ; $50af: $f0 $08
	add hl, sp                                       ; $50b1: $39
	ld d, e                                          ; $50b2: $53
	jr c, jr_08c_50ed                                ; $50b3: $38 $38

	ld b, c                                          ; $50b5: $41
	ld b, h                                          ; $50b6: $44
	and b                                            ; $50b7: $a0
	ld c, h                                          ; $50b8: $4c
	add l                                            ; $50b9: $85
	inc [hl]                                         ; $50ba: $34
	ld [hl], d                                       ; $50bb: $72
	dec a                                            ; $50bc: $3d
	xor c                                            ; $50bd: $a9
	ld l, d                                          ; $50be: $6a
	ld b, d                                          ; $50bf: $42
	ld d, c                                          ; $50c0: $51
	ld [hl], b                                       ; $50c1: $70
	jr c, jr_08c_5045                                ; $50c2: $38 $81

	ld [hl], l                                       ; $50c4: $75
	ld e, c                                          ; $50c5: $59
	ld c, h                                          ; $50c6: $4c
	and b                                            ; $50c7: $a0
	cpl                                              ; $50c8: $2f
	ld [$0908], a                                    ; $50c9: $ea $08 $09
	db $ec                                           ; $50cc: $ec
	reti                                             ; $50cd: $d9


	xor h                                            ; $50ce: $ac
	add c                                            ; $50cf: $81
	ldh a, [$1f]                                     ; $50d0: $f0 $1f
	dec sp                                           ; $50d2: $3b
	ccf                                              ; $50d3: $3f
	ld d, c                                          ; $50d4: $51
	ld [hl], b                                       ; $50d5: $70
	jr c, jr_08c_5124                                ; $50d6: $38 $4c

	and b                                            ; $50d8: $a0
	ld d, h                                          ; $50d9: $54
	add hl, sp                                       ; $50da: $39
	jr c, jr_08c_5116                                ; $50db: $38 $39

	ldh a, [rBGP]                                    ; $50dd: $f0 $47
	ld b, a                                          ; $50df: $47
	xor h                                            ; $50e0: $ac
	add c                                            ; $50e1: $81
	ldh a, [$1f]                                     ; $50e2: $f0 $1f
	ld b, h                                          ; $50e4: $44
	ld a, [hl-]                                      ; $50e5: $3a
	dec sp                                           ; $50e6: $3b
	ccf                                              ; $50e7: $3f
	inc [hl]                                         ; $50e8: $34
	ldh a, [$78]                                     ; $50e9: $f0 $78
	ld e, e                                          ; $50eb: $5b
	ld c, [hl]                                       ; $50ec: $4e

jr_08c_50ed:
	ld c, h                                          ; $50ed: $4c
	and b                                            ; $50ee: $a0
	db $ec                                           ; $50ef: $ec
	inc e                                            ; $50f0: $1c
	xor b                                            ; $50f1: $a8
	add c                                            ; $50f2: $81
	ldh a, [$1f]                                     ; $50f3: $f0 $1f
	ld b, h                                          ; $50f5: $44
	ld c, a                                          ; $50f6: $4f
	ld b, c                                          ; $50f7: $41
	ld c, h                                          ; $50f8: $4c
	and b                                            ; $50f9: $a0
	cpl                                              ; $50fa: $2f
	add sp, $75                                      ; $50fb: $e8 $75
	add hl, bc                                       ; $50fd: $09
	rst JumpTable                                          ; $50fe: $c7
	xor c                                            ; $50ff: $a9
	ld b, b                                          ; $5100: $40
	ld b, c                                          ; $5101: $41
	ld a, [hl-]                                      ; $5102: $3a
	ld b, a                                          ; $5103: $47
	ld d, c                                          ; $5104: $51
	ld [hl], b                                       ; $5105: $70
	ld d, l                                          ; $5106: $55
	inc de                                           ; $5107: $13
	ld a, [hl-]                                      ; $5108: $3a
	jr c, jr_08c_514d                                ; $5109: $38 $42

	inc a                                            ; $510b: $3c
	ld a, [hl-]                                      ; $510c: $3a
	ld c, b                                          ; $510d: $48
	and b                                            ; $510e: $a0
	ldh a, [$d8]                                     ; $510f: $f0 $d8
	ld d, e                                          ; $5111: $53
	ldh a, [$be]                                     ; $5112: $f0 $be
	ld b, d                                          ; $5114: $42
	ld c, e                                          ; $5115: $4b

jr_08c_5116:
	xor h                                            ; $5116: $ac
	db $eb                                           ; $5117: $eb
	ld c, a                                          ; $5118: $4f
	ld h, e                                          ; $5119: $63
	ld b, l                                          ; $511a: $45
	and b                                            ; $511b: $a0
	ld b, b                                          ; $511c: $40
	ld b, c                                          ; $511d: $41
	ld a, [hl-]                                      ; $511e: $3a
	ld b, a                                          ; $511f: $47
	xor h                                            ; $5120: $ac
	ldh a, [$d8]                                     ; $5121: $f0 $d8
	ld d, e                                          ; $5123: $53

jr_08c_5124:
	ld d, d                                          ; $5124: $52
	ld a, [hl-]                                      ; $5125: $3a
	ld d, l                                          ; $5126: $55
	ccf                                              ; $5127: $3f
	ld c, a                                          ; $5128: $4f
	ld c, b                                          ; $5129: $48
	and b                                            ; $512a: $a0
	cpl                                              ; $512b: $2f
	jp hl                                            ; $512c: $e9


	ld a, [$9209]                                    ; $512d: $fa $09 $92
	adc [hl]                                         ; $5130: $8e
	ld c, l                                          ; $5131: $4d
	ld a, e                                          ; $5132: $7b
	xor h                                            ; $5133: $ac
	ld e, h                                          ; $5134: $5c
	dec sp                                           ; $5135: $3b
	ld c, c                                          ; $5136: $49
	sub h                                            ; $5137: $94
	ld a, b                                          ; $5138: $78
	ld c, [hl]                                       ; $5139: $4e
	ld b, l                                          ; $513a: $45
	add hl, sp                                       ; $513b: $39
	ld b, a                                          ; $513c: $47
	inc de                                           ; $513d: $13
	ld a, [hl-]                                      ; $513e: $3a
	ld c, [hl]                                       ; $513f: $4e
	ld c, c                                          ; $5140: $49
	ld [hl], a                                       ; $5141: $77
	add hl, sp                                       ; $5142: $39
	ld a, [hl-]                                      ; $5143: $3a
	and b                                            ; $5144: $a0
	db $ec                                           ; $5145: $ec
	jp hl                                            ; $5146: $e9


	xor $19                                          ; $5147: $ee $19
	inc de                                           ; $5149: $13
	ld d, c                                          ; $514a: $51
	ld c, l                                          ; $514b: $4d
	ld a, e                                          ; $514c: $7b

jr_08c_514d:
	inc [hl]                                         ; $514d: $34
	ld c, a                                          ; $514e: $4f
	ld a, $3c                                        ; $514f: $3e $3c
	ld a, $3d                                        ; $5151: $3e $3d
	ld d, b                                          ; $5153: $50
	ld b, h                                          ; $5154: $44
	ld e, l                                          ; $5155: $5d
	ld e, d                                          ; $5156: $5a
	ld c, b                                          ; $5157: $48
	and b                                            ; $5158: $a0
	sub d                                            ; $5159: $92
	adc [hl]                                         ; $515a: $8e
	ld c, l                                          ; $515b: $4d
	ld a, e                                          ; $515c: $7b
	xor h                                            ; $515d: $ac
	sub h                                            ; $515e: $94
	ld a, b                                          ; $515f: $78
	ld c, [hl]                                       ; $5160: $4e
	inc a                                            ; $5161: $3c
	ld c, a                                          ; $5162: $4f
	ld c, h                                          ; $5163: $4c
	and b                                            ; $5164: $a0
	ld b, [hl]                                       ; $5165: $46
	ld b, c                                          ; $5166: $41
	ld a, [hl-]                                      ; $5167: $3a
	sbc d                                            ; $5168: $9a
	ld a, $3f                                        ; $5169: $3e $3f
	xor h                                            ; $516b: $ac
	pop af                                           ; $516c: $f1
	ld a, [hl-]                                      ; $516d: $3a
	ld d, l                                          ; $516e: $55
	ld a, [hl-]                                      ; $516f: $3a
	jr c, jr_08c_51b4                                ; $5170: $38 $42

	inc a                                            ; $5172: $3c
	ld a, $50                                        ; $5173: $3e $50
	and c                                            ; $5175: $a1
	cpl                                              ; $5176: $2f
	add sp, $16                                      ; $5177: $e8 $16
	add hl, bc                                       ; $5179: $09
	xor $1f                                          ; $517a: $ee $1f
	inc [hl]                                         ; $517c: $34
	adc b                                            ; $517d: $88
	sub c                                            ; $517e: $91
	xor l                                            ; $517f: $ad
	ldh a, [$3e]                                     ; $5180: $f0 $3e
	ldh a, [$0b]                                     ; $5182: $f0 $0b
	ld b, a                                          ; $5184: $47
	pop af                                           ; $5185: $f1
	ld c, d                                          ; $5186: $4a
	ld e, l                                          ; $5187: $5d
	pop af                                           ; $5188: $f1
	ld de, $1362                                     ; $5189: $11 $62 $13
	ld c, c                                          ; $518c: $49
	dec sp                                           ; $518d: $3b
	ccf                                              ; $518e: $3f
	ld c, [hl]                                       ; $518f: $4e
	ld l, h                                          ; $5190: $6c
	dec a                                            ; $5191: $3d
	jr c, jr_08c_51dc                                ; $5192: $38 $48

	and b                                            ; $5194: $a0
	db $d3                                           ; $5195: $d3
	xor c                                            ; $5196: $a9
	ld [$3bfb], a                                    ; $5197: $ea $fb $3b
	ccf                                              ; $519a: $3f
	inc de                                           ; $519b: $13
	ld d, c                                          ; $519c: $51
	ld [hl], b                                       ; $519d: $70
	jr c, jr_08c_51e2                                ; $519e: $38 $42

	ld c, h                                          ; $51a0: $4c
	and b                                            ; $51a1: $a0
	pop af                                           ; $51a2: $f1
	ld a, [hl-]                                      ; $51a3: $3a
	ld d, l                                          ; $51a4: $55
	ld a, [hl-]                                      ; $51a5: $3a
	jr c, jr_08c_51ed                                ; $51a6: $38 $45

	add hl, sp                                       ; $51a8: $39
	ld b, a                                          ; $51a9: $47
	inc de                                           ; $51aa: $13
	pop af                                           ; $51ab: $f1
	ld c, d                                          ; $51ac: $4a
	ld e, l                                          ; $51ad: $5d
	ld c, [hl]                                       ; $51ae: $4e
	ld b, d                                          ; $51af: $42
	inc a                                            ; $51b0: $3c
	ld a, $50                                        ; $51b1: $3e $50
	and c                                            ; $51b3: $a1

jr_08c_51b4:
	cpl                                              ; $51b4: $2f
	ld [$0963], a                                    ; $51b5: $ea $63 $09
	pop af                                           ; $51b8: $f1
	ld a, [hl-]                                      ; $51b9: $3a
	ld d, l                                          ; $51ba: $55
	ld a, [hl-]                                      ; $51bb: $3a
	jr c, jr_08c_5200                                ; $51bc: $38 $42

	xor c                                            ; $51be: $a9
	ld b, b                                          ; $51bf: $40
	ld b, c                                          ; $51c0: $41
	ld a, [hl-]                                      ; $51c1: $3a
	ld d, h                                          ; $51c2: $54
	ld c, c                                          ; $51c3: $49
	ld a, [hl-]                                      ; $51c4: $3a
	jr c, jr_08c_5210                                ; $51c5: $38 $49

	inc de                                           ; $51c7: $13
	ld [hl], a                                       ; $51c8: $77
	add hl, sp                                       ; $51c9: $39
	ld e, l                                          ; $51ca: $5d
	ld e, d                                          ; $51cb: $5a
	ld c, b                                          ; $51cc: $48
	and b                                            ; $51cd: $a0
	ld c, d                                          ; $51ce: $4a
	ld c, a                                          ; $51cf: $4f
	inc [hl]                                         ; $51d0: $34
	ldh a, [$08]                                     ; $51d1: $f0 $08
	ld d, b                                          ; $51d3: $50
	ldh a, [c]                                       ; $51d4: $f2
	rla                                              ; $51d5: $17
	ld d, e                                          ; $51d6: $53
	inc de                                           ; $51d7: $13
	sub h                                            ; $51d8: $94
	ccf                                              ; $51d9: $3f
	ld c, [hl]                                       ; $51da: $4e
	ld b, l                                          ; $51db: $45

jr_08c_51dc:
	xor b                                            ; $51dc: $a8
	db $ec                                           ; $51dd: $ec
	reti                                             ; $51de: $d9


	inc [hl]                                         ; $51df: $34
	ld d, c                                          ; $51e0: $51
	ld [hl], b                                       ; $51e1: $70

jr_08c_51e2:
	ld d, l                                          ; $51e2: $55
	pop af                                           ; $51e3: $f1
	ld a, [hl-]                                      ; $51e4: $3a
	db $ec                                           ; $51e5: $ec
	db $f4                                           ; $51e6: $f4
	and b                                            ; $51e7: $a0
	ld e, [hl]                                       ; $51e8: $5e
	dec sp                                           ; $51e9: $3b
	xor c                                            ; $51ea: $a9
	pop af                                           ; $51eb: $f1
	ld a, [hl-]                                      ; $51ec: $3a

jr_08c_51ed:
	ld d, l                                          ; $51ed: $55
	ld a, [hl-]                                      ; $51ee: $3a
	jr c, @+$44                                      ; $51ef: $38 $42

	xor c                                            ; $51f1: $a9
	adc b                                            ; $51f2: $88
	sub c                                            ; $51f3: $91
	inc a                                            ; $51f4: $3c
	ld a, [hl-]                                      ; $51f5: $3a
	ld c, b                                          ; $51f6: $48
	and b                                            ; $51f7: $a0
	cpl                                              ; $51f8: $2f
	add sp, -$5e                                     ; $51f9: $e8 $a2
	add hl, bc                                       ; $51fb: $09
	ld b, b                                          ; $51fc: $40
	inc [hl]                                         ; $51fd: $34
	db $ec                                           ; $51fe: $ec
	inc e                                            ; $51ff: $1c

jr_08c_5200:
	xor b                                            ; $5200: $a8
	ld c, d                                          ; $5201: $4a
	ld c, a                                          ; $5202: $4f
	inc [hl]                                         ; $5203: $34
	ld b, b                                          ; $5204: $40
	add hl, sp                                       ; $5205: $39
	ld c, e                                          ; $5206: $4b
	inc de                                           ; $5207: $13
	ld [hl], d                                       ; $5208: $72
	ld e, [hl]                                       ; $5209: $5e
	ld a, [hl-]                                      ; $520a: $3a
	jr c, jr_08c_526a                                ; $520b: $38 $5d

	ld e, d                                          ; $520d: $5a
	ld c, b                                          ; $520e: $48
	and b                                            ; $520f: $a0

jr_08c_5210:
	db $ed                                           ; $5210: $ed
	ld e, [hl]                                       ; $5211: $5e
	ld b, b                                          ; $5212: $40
	ld b, c                                          ; $5213: $41
	ld a, [hl-]                                      ; $5214: $3a
	pop af                                           ; $5215: $f1
	ld a, a                                          ; $5216: $7f
	ld b, a                                          ; $5217: $47
	ld c, e                                          ; $5218: $4b
	inc de                                           ; $5219: $13
	ld [hl], d                                       ; $521a: $72
	ld e, [hl]                                       ; $521b: $5e
	ld a, [hl-]                                      ; $521c: $3a
	jr c, @+$65                                      ; $521d: $38 $63

	ld b, l                                          ; $521f: $45
	and b                                            ; $5220: $a0
	ld c, d                                          ; $5221: $4a
	ld c, a                                          ; $5222: $4f
	inc [hl]                                         ; $5223: $34
	ld b, [hl]                                       ; $5224: $46
	ld c, l                                          ; $5225: $4d
	ld c, e                                          ; $5226: $4b
	xor h                                            ; $5227: $ac
	ld b, b                                          ; $5228: $40
	add hl, sp                                       ; $5229: $39
	ld [hl], d                                       ; $522a: $72
	ld e, [hl]                                       ; $522b: $5e
	ld a, [hl-]                                      ; $522c: $3a
	jr c, @+$5f                                      ; $522d: $38 $5d

	ld e, d                                          ; $522f: $5a
	ld c, b                                          ; $5230: $48
	and b                                            ; $5231: $a0
	ld [$72d8], a                                    ; $5232: $ea $d8 $72
	ld c, [hl]                                       ; $5235: $4e
	ld b, d                                          ; $5236: $42
	ld c, a                                          ; $5237: $4f
	xor h                                            ; $5238: $ac
	ld l, e                                          ; $5239: $6b
	ld b, h                                          ; $523a: $44
	inc a                                            ; $523b: $3c
	ldh a, [$71]                                     ; $523c: $f0 $71
	jr c, jr_08c_52a3                                ; $523e: $38 $63

	and b                                            ; $5240: $a0
	cpl                                              ; $5241: $2f
	ldh a, [$3b]                                     ; $5242: $f0 $3b
	dec sp                                           ; $5244: $3b
	ccf                                              ; $5245: $3f
	ld [hl], b                                       ; $5246: $70
	ld [hl], c                                       ; $5247: $71
	ld b, c                                          ; $5248: $41
	ld c, h                                          ; $5249: $4c
	dec [hl]                                         ; $524a: $35
	db $ec                                           ; $524b: $ec
	rrca                                             ; $524c: $0f
	and c                                            ; $524d: $a1
	ld b, [hl]                                       ; $524e: $46
	inc [hl]                                         ; $524f: $34
	ld b, [hl]                                       ; $5250: $46
	ld d, a                                          ; $5251: $57
	ld d, e                                          ; $5252: $53
	ld c, c                                          ; $5253: $49
	add hl, sp                                       ; $5254: $39
	xor b                                            ; $5255: $a8
	ld b, b                                          ; $5256: $40
	ld b, d                                          ; $5257: $42
	ldh a, [$4e]                                     ; $5258: $f0 $4e
	ld a, $58                                        ; $525a: $3e $58
	ld d, e                                          ; $525c: $53
	adc e                                            ; $525d: $8b
	ld e, h                                          ; $525e: $5c
	ld c, b                                          ; $525f: $48
	and b                                            ; $5260: $a0
	ld b, b                                          ; $5261: $40
	inc [hl]                                         ; $5262: $34
	ld b, b                                          ; $5263: $40
	ld b, c                                          ; $5264: $41
	ld a, [hl-]                                      ; $5265: $3a
	add b                                            ; $5266: $80
	ld c, a                                          ; $5267: $4f
	ld d, a                                          ; $5268: $57
	ld c, d                                          ; $5269: $4a

jr_08c_526a:
	inc de                                           ; $526a: $13
	add d                                            ; $526b: $82
	dec sp                                           ; $526c: $3b
	dec a                                            ; $526d: $3d
	ld b, c                                          ; $526e: $41
	db $ec                                           ; $526f: $ec
	ret c                                            ; $5270: $d8

	ld b, d                                          ; $5271: $42
	xor b                                            ; $5272: $a8
	ld b, [hl]                                       ; $5273: $46
	ld d, a                                          ; $5274: $57
	ld d, e                                          ; $5275: $53
	ld c, c                                          ; $5276: $49
	add hl, sp                                       ; $5277: $39
	and b                                            ; $5278: $a0
	ld b, [hl]                                       ; $5279: $46
	ld d, a                                          ; $527a: $57
	ld d, e                                          ; $527b: $53
	ld c, c                                          ; $527c: $49
	add hl, sp                                       ; $527d: $39
	xor b                                            ; $527e: $a8
	ldh a, [$4e]                                     ; $527f: $f0 $4e
	ld a, $38                                        ; $5281: $3e $38
	ld c, h                                          ; $5283: $4c
	and b                                            ; $5284: $a0
	cpl                                              ; $5285: $2f
	ldh a, [rAUD3LEVEL]                              ; $5286: $f0 $1c
	ld c, d                                          ; $5288: $4a
	ld c, a                                          ; $5289: $4f
	add b                                            ; $528a: $80
	ldh a, [$fe]                                     ; $528b: $f0 $fe
	dec sp                                           ; $528d: $3b
	ccf                                              ; $528e: $3f
	dec a                                            ; $528f: $3d
	ld d, b                                          ; $5290: $50
	and c                                            ; $5291: $a1
	ld c, a                                          ; $5292: $4f
	add hl, sp                                       ; $5293: $39
	ldh a, [rHDMA4]                                  ; $5294: $f0 $54
	ld a, $f0                                        ; $5296: $3e $f0
	ld c, [hl]                                       ; $5298: $4e
	ld a, $38                                        ; $5299: $3e $38
	inc de                                           ; $529b: $13
	add d                                            ; $529c: $82
	pop af                                           ; $529d: $f1
	adc h                                            ; $529e: $8c
	sbc l                                            ; $529f: $9d
	ld d, b                                          ; $52a0: $50
	jr c, jr_08c_52b6                                ; $52a1: $38 $13

jr_08c_52a3:
	inc a                                            ; $52a3: $3c
	ld e, l                                          ; $52a4: $5d
	ccf                                              ; $52a5: $3f
	ld d, l                                          ; $52a6: $55
	ld c, l                                          ; $52a7: $4d
	ccf                                              ; $52a8: $3f
	ld c, a                                          ; $52a9: $4f
	ld c, b                                          ; $52aa: $48
	and b                                            ; $52ab: $a0
	ld b, b                                          ; $52ac: $40
	ld b, c                                          ; $52ad: $41
	ld a, [hl-]                                      ; $52ae: $3a
	pop af                                           ; $52af: $f1
	ld a, a                                          ; $52b0: $7f
	ld b, a                                          ; $52b1: $47
	add d                                            ; $52b2: $82
	ld h, e                                          ; $52b3: $63
	ld a, [hl-]                                      ; $52b4: $3a
	ld d, l                                          ; $52b5: $55

jr_08c_52b6:
	ccf                                              ; $52b6: $3f
	ld c, a                                          ; $52b7: $4f
	inc de                                           ; $52b8: $13
	jr c, jr_08c_52f3                                ; $52b9: $38 $38

	ld c, d                                          ; $52bb: $4a
	ld a, $66                                        ; $52bc: $3e $66
	add hl, sp                                       ; $52be: $39
	and b                                            ; $52bf: $a0
	ld c, a                                          ; $52c0: $4f
	add hl, sp                                       ; $52c1: $39
	ldh a, [rHDMA4]                                  ; $52c2: $f0 $54
	ld a, $34                                        ; $52c4: $3e $34
	pop af                                           ; $52c6: $f1
	ld l, a                                          ; $52c7: $6f
	ld b, a                                          ; $52c8: $47
	inc de                                           ; $52c9: $13
	add d                                            ; $52ca: $82
	jr c, @-$0e                                      ; $52cb: $38 $f0

	jr c, jr_08c_5322                                ; $52cd: $38 $53

	ld b, [hl]                                       ; $52cf: $46
	ld c, [hl]                                       ; $52d0: $4e
	ld c, c                                          ; $52d1: $49
	ld [hl], a                                       ; $52d2: $77
	add hl, sp                                       ; $52d3: $39
	ld a, [hl-]                                      ; $52d4: $3a
	and b                                            ; $52d5: $a0
	cpl                                              ; $52d6: $2f
	ld b, b                                          ; $52d7: $40
	ld b, d                                          ; $52d8: $42
	add hl, sp                                       ; $52d9: $39
	ld h, c                                          ; $52da: $61
	pop af                                           ; $52db: $f1
	sbc e                                            ; $52dc: $9b
	ld c, l                                          ; $52dd: $4d
	ld c, [hl]                                       ; $52de: $4e
	ld b, l                                          ; $52df: $45
	add hl, bc                                       ; $52e0: $09
	ld [$74af], a                                    ; $52e1: $ea $af $74
	ld c, b                                          ; $52e4: $48
	and b                                            ; $52e5: $a0
	jp nc, $9bf1                                     ; $52e6: $d2 $f1 $9b

	ld c, l                                          ; $52e9: $4d
	ld c, [hl]                                       ; $52ea: $4e
	ld b, d                                          ; $52eb: $42
	ld c, a                                          ; $52ec: $4f
	xor h                                            ; $52ed: $ac
	ret                                              ; $52ee: $c9


	pop af                                           ; $52ef: $f1
	sbc $4e                                          ; $52f0: $de $4e
	inc a                                            ; $52f2: $3c

jr_08c_52f3:
	ld a, [hl-]                                      ; $52f3: $3a
	and b                                            ; $52f4: $a0
	db $ec                                           ; $52f5: $ec
	ld d, $a8                                        ; $52f6: $16 $a8
	ld c, d                                          ; $52f8: $4a
	ld c, a                                          ; $52f9: $4f
	inc [hl]                                         ; $52fa: $34
	pop af                                           ; $52fb: $f1
	sbc e                                            ; $52fc: $9b
	ld c, l                                          ; $52fd: $4d
	ld c, [hl]                                       ; $52fe: $4e
	ld b, d                                          ; $52ff: $42
	ld c, a                                          ; $5300: $4f
	ld c, h                                          ; $5301: $4c
	ld c, b                                          ; $5302: $48
	and b                                            ; $5303: $a0
	ld b, [hl]                                       ; $5304: $46
	dec sp                                           ; $5305: $3b
	inc [hl]                                         ; $5306: $34
	db $ec                                           ; $5307: $ec
	ld a, $45                                        ; $5308: $3e $45
	xor b                                            ; $530a: $a8
	ldh a, [$0a]                                     ; $530b: $f0 $0a
	ld d, l                                          ; $530d: $55
	ldh a, [rAUD2HIGH]                               ; $530e: $f0 $19
	ld b, a                                          ; $5310: $47
	sub [hl]                                         ; $5311: $96
	ld d, a                                          ; $5312: $57
	ld d, d                                          ; $5313: $52
	ld a, $66                                        ; $5314: $3e $66
	add hl, sp                                       ; $5316: $39
	and b                                            ; $5317: $a0
	cpl                                              ; $5318: $2f
	ld b, e                                          ; $5319: $43
	ld b, b                                          ; $531a: $40
	add hl, sp                                       ; $531b: $39
	ld b, h                                          ; $531c: $44
	ld c, h                                          ; $531d: $4c
	xor b                                            ; $531e: $a8
	ldh a, [$0a]                                     ; $531f: $f0 $0a
	ld d, l                                          ; $5321: $55

jr_08c_5322:
	sub [hl]                                         ; $5322: $96
	ld e, a                                          ; $5323: $5f
	add hl, sp                                       ; $5324: $39
	and b                                            ; $5325: $a0
	ld b, [hl]                                       ; $5326: $46
	ld b, b                                          ; $5327: $40
	ld d, h                                          ; $5328: $54
	ld d, e                                          ; $5329: $53
	ldh a, [$c9]                                     ; $532a: $f0 $c9
	jr c, jr_08c_536d                                ; $532c: $38 $3f

	ld c, [hl]                                       ; $532e: $4e
	ld h, e                                          ; $532f: $63
	xor b                                            ; $5330: $a8
	ldh a, [$e7]                                     ; $5331: $f0 $e7
	ld d, a                                          ; $5333: $57
	ld d, d                                          ; $5334: $52
	ld a, $66                                        ; $5335: $3e $66
	add hl, sp                                       ; $5337: $39
	and b                                            ; $5338: $a0
	cpl                                              ; $5339: $2f
	add sp, -$75                                     ; $533a: $e8 $8b
	and c                                            ; $533c: $a1
	xor $1f                                          ; $533d: $ee $1f
	xor b                                            ; $533f: $a8
	ld d, c                                          ; $5340: $51
	ld [hl], b                                       ; $5341: $70
	ld d, l                                          ; $5342: $55
	cp e                                             ; $5343: $bb
	xor b                                            ; $5344: $a8
	ld b, b                                          ; $5345: $40
	ld c, l                                          ; $5346: $4d
	ld b, a                                          ; $5347: $47
	xor h                                            ; $5348: $ac
	ldh a, [hDisp0_SCX]                                     ; $5349: $f0 $84
	add h                                            ; $534b: $84
	ld c, d                                          ; $534c: $4a
	xor $06                                          ; $534d: $ee $06
	ld b, a                                          ; $534f: $47
	ld [hl], d                                       ; $5350: $72
	ld c, l                                          ; $5351: $4d
	dec a                                            ; $5352: $3d
	ld a, $48                                        ; $5353: $3e $48
	and b                                            ; $5355: $a0
	xor $1f                                          ; $5356: $ee $1f
	xor b                                            ; $5358: $a8
	ld d, c                                          ; $5359: $51
	ld [hl], b                                       ; $535a: $70
	ld d, l                                          ; $535b: $55
	cp e                                             ; $535c: $bb
	ld c, h                                          ; $535d: $4c
	xor b                                            ; $535e: $a8
	ld l, a                                          ; $535f: $6f
	inc [hl]                                         ; $5360: $34
	ld d, h                                          ; $5361: $54
	add hl, sp                                       ; $5362: $39
	jr c, jr_08c_539e                                ; $5363: $38 $39

	ld b, d                                          ; $5365: $42
	add a                                            ; $5366: $87
	adc e                                            ; $5367: $8b
	ld e, h                                          ; $5368: $5c
	and b                                            ; $5369: $a0
	ld d, c                                          ; $536a: $51
	ld [hl], b                                       ; $536b: $70
	ld d, l                                          ; $536c: $55

jr_08c_536d:
	cp e                                             ; $536d: $bb
	ld c, h                                          ; $536e: $4c
	xor b                                            ; $536f: $a8
	ldh a, [rVBK]                                    ; $5370: $f0 $4f
	ld b, a                                          ; $5372: $47
	ldh a, [$8d]                                     ; $5373: $f0 $8d
	ld c, [hl]                                       ; $5375: $4e
	ldh a, [$74]                                     ; $5376: $f0 $74
	ldh a, [$7a]                                     ; $5378: $f0 $7a
	ld c, h                                          ; $537a: $4c
	and b                                            ; $537b: $a0
	cpl                                              ; $537c: $2f
	add sp, $2c                                      ; $537d: $e8 $2c
	and c                                            ; $537f: $a1
	ld l, a                                          ; $5380: $6f
	ld c, e                                          ; $5381: $4b
	inc [hl]                                         ; $5382: $34
	ld d, c                                          ; $5383: $51
	ld [hl], b                                       ; $5384: $70
	ld d, l                                          ; $5385: $55
	inc de                                           ; $5386: $13
	cp e                                             ; $5387: $bb
	ld c, c                                          ; $5388: $49
	ld [hl], a                                       ; $5389: $77
	xor $1f                                          ; $538a: $ee $1f
	ld b, h                                          ; $538c: $44
	ld e, l                                          ; $538d: $5d
	ld e, d                                          ; $538e: $5a
	xor l                                            ; $538f: $ad
	ldh a, [hDisp0_SCX]                                     ; $5390: $f0 $84
	add h                                            ; $5392: $84
	ld c, d                                          ; $5393: $4a
	xor $06                                          ; $5394: $ee $06
	ld b, a                                          ; $5396: $47
	ld [hl], d                                       ; $5397: $72
	ld c, l                                          ; $5398: $4d
	dec a                                            ; $5399: $3d
	ld a, $48                                        ; $539a: $3e $48
	and b                                            ; $539c: $a0
	ld l, a                                          ; $539d: $6f

jr_08c_539e:
	ld c, e                                          ; $539e: $4b
	inc [hl]                                         ; $539f: $34
	cp e                                             ; $53a0: $bb
	ld a, [hl-]                                      ; $53a1: $3a
	ld c, b                                          ; $53a2: $48
	dec [hl]                                         ; $53a3: $35
	rla                                              ; $53a4: $17
	adc e                                            ; $53a5: $8b
	ld l, h                                          ; $53a6: $6c
	ld d, e                                          ; $53a7: $53
	ldh a, [rTMA]                                    ; $53a8: $f0 $06
	ld h, e                                          ; $53aa: $63
	ld a, [hl-]                                      ; $53ab: $3a
	jr c, jr_08c_53f0                                ; $53ac: $38 $42

	inc a                                            ; $53ae: $3c
	ld c, a                                          ; $53af: $4f
	inc de                                           ; $53b0: $13
	ld a, $4d                                        ; $53b1: $3e $4d
	ld a, [hl-]                                      ; $53b3: $3a
	jr c, jr_08c_5402                                ; $53b4: $38 $4c

	and b                                            ; $53b6: $a0
	ld b, b                                          ; $53b7: $40
	add hl, sp                                       ; $53b8: $39
	ld [hl], $17                                     ; $53b9: $36 $17
	ld l, a                                          ; $53bb: $6f
	ld c, e                                          ; $53bc: $4b
	cp e                                             ; $53bd: $bb
	ld c, c                                          ; $53be: $49
	inc de                                           ; $53bf: $13
	ld [hl], a                                       ; $53c0: $77
	xor $1f                                          ; $53c1: $ee $1f
	ld b, h                                          ; $53c3: $44
	ld e, l                                          ; $53c4: $5d
	ld e, d                                          ; $53c5: $5a
	ld c, b                                          ; $53c6: $48
	and b                                            ; $53c7: $a0
	cpl                                              ; $53c8: $2f
	add sp, $2d                                      ; $53c9: $e8 $2d
	and c                                            ; $53cb: $a1
	ld l, a                                          ; $53cc: $6f
	ld c, e                                          ; $53cd: $4b
	inc [hl]                                         ; $53ce: $34
	ld d, c                                          ; $53cf: $51
	ld [hl], b                                       ; $53d0: $70
	ld d, l                                          ; $53d1: $55
	ldh a, [rAUD4ENV]                                ; $53d2: $f0 $21
	ldh a, [rAUD4GO]                                 ; $53d4: $f0 $23
	jr c, jr_08c_5421                                ; $53d6: $38 $49

	inc de                                           ; $53d8: $13
	ld [hl], a                                       ; $53d9: $77
	dec sp                                           ; $53da: $3b
	dec a                                            ; $53db: $3d
	ld h, e                                          ; $53dc: $63
	xor b                                            ; $53dd: $a8
	ldh a, [hDisp0_SCX]                                     ; $53de: $f0 $84
	add h                                            ; $53e0: $84
	ld c, d                                          ; $53e1: $4a
	xor $06                                          ; $53e2: $ee $06
	ld b, a                                          ; $53e4: $47
	ld [hl], d                                       ; $53e5: $72
	ld c, l                                          ; $53e6: $4d
	dec a                                            ; $53e7: $3d
	ld a, $48                                        ; $53e8: $3e $48
	and b                                            ; $53ea: $a0
	ld l, a                                          ; $53eb: $6f
	ld c, e                                          ; $53ec: $4b
	inc [hl]                                         ; $53ed: $34
	cp e                                             ; $53ee: $bb
	ld a, [hl-]                                      ; $53ef: $3a

jr_08c_53f0:
	ld c, b                                          ; $53f0: $48
	dec [hl]                                         ; $53f1: $35
	rla                                              ; $53f2: $17
	ld b, [hl]                                       ; $53f3: $46
	ld a, [hl-]                                      ; $53f4: $3a
	dec a                                            ; $53f5: $3d
	ld c, a                                          ; $53f6: $4f
	inc [hl]                                         ; $53f7: $34
	ld e, h                                          ; $53f8: $5c
	dec sp                                           ; $53f9: $3b
	ld c, c                                          ; $53fa: $49
	inc de                                           ; $53fb: $13
	adc e                                            ; $53fc: $8b
	ld e, h                                          ; $53fd: $5c
	ld b, a                                          ; $53fe: $47
	ld a, [hl-]                                      ; $53ff: $3a
	ld c, [hl]                                       ; $5400: $4e
	ld h, e                                          ; $5401: $63

jr_08c_5402:
	ld b, l                                          ; $5402: $45
	and b                                            ; $5403: $a0
	ld l, a                                          ; $5404: $6f
	ld c, e                                          ; $5405: $4b
	inc [hl]                                         ; $5406: $34
	cp e                                             ; $5407: $bb
	ld c, c                                          ; $5408: $49
	inc de                                           ; $5409: $13
	ld [hl], a                                       ; $540a: $77
	add hl, sp                                       ; $540b: $39
	ld a, [hl-]                                      ; $540c: $3a
	xor b                                            ; $540d: $a8
	ld b, [hl]                                       ; $540e: $46
	ld a, [hl-]                                      ; $540f: $3a
	dec a                                            ; $5410: $3d
	ld c, a                                          ; $5411: $4f
	inc [hl]                                         ; $5412: $34
	adc e                                            ; $5413: $8b
	ld e, h                                          ; $5414: $5c
	ld b, a                                          ; $5415: $47
	ld a, [hl-]                                      ; $5416: $3a
	ld c, [hl]                                       ; $5417: $4e
	ld c, c                                          ; $5418: $49
	jr c, @+$3a                                      ; $5419: $38 $38

	ld c, h                                          ; $541b: $4c
	and b                                            ; $541c: $a0
	rst JumpTable                                          ; $541d: $c7
	xor c                                            ; $541e: $a9
	ld l, a                                          ; $541f: $6f
	ld c, e                                          ; $5420: $4b

jr_08c_5421:
	ld b, [hl]                                       ; $5421: $46
	ld d, d                                          ; $5422: $52
	ld d, a                                          ; $5423: $57
	xor l                                            ; $5424: $ad
	ld c, d                                          ; $5425: $4a
	ld c, a                                          ; $5426: $4f
	inc [hl]                                         ; $5427: $34
	ldh a, [hDisp0_SCX]                                     ; $5428: $f0 $84
	add h                                            ; $542a: $84
	ld c, d                                          ; $542b: $4a
	ld [hl], d                                       ; $542c: $72
	ld c, l                                          ; $542d: $4d
	dec a                                            ; $542e: $3d
	ld a, $48                                        ; $542f: $3e $48
	and b                                            ; $5431: $a0
	ld l, a                                          ; $5432: $6f
	inc [hl]                                         ; $5433: $34
	ld d, h                                          ; $5434: $54
	add hl, sp                                       ; $5435: $39
	jr c, jr_08c_5471                                ; $5436: $38 $39

	ld b, d                                          ; $5438: $42
	ld b, l                                          ; $5439: $45
	ld d, a                                          ; $543a: $57
	ld c, a                                          ; $543b: $4f
	xor h                                            ; $543c: $ac
	ld [$49c1], a                                    ; $543d: $ea $c1 $49
	inc a                                            ; $5440: $3c
	ld b, d                                          ; $5441: $42
	ldh a, [$38]                                     ; $5442: $f0 $38
	ld d, e                                          ; $5444: $53
	inc de                                           ; $5445: $13
	adc e                                            ; $5446: $8b
	ld e, h                                          ; $5447: $5c
	ld b, h                                          ; $5448: $44
	ld a, [hl-]                                      ; $5449: $3a
	and b                                            ; $544a: $a0
	db $ec                                           ; $544b: $ec
	ld d, $36                                        ; $544c: $16 $36
	rla                                              ; $544e: $17
	ld [$42c1], a                                    ; $544f: $ea $c1 $42
	ldh a, [$38]                                     ; $5452: $f0 $38
	ld d, e                                          ; $5454: $53
	inc de                                           ; $5455: $13
	adc e                                            ; $5456: $8b
	ld e, h                                          ; $5457: $5c
	ld b, h                                          ; $5458: $44
	ld e, l                                          ; $5459: $5d
	ld e, d                                          ; $545a: $5a
	ld a, [hl-]                                      ; $545b: $3a
	ld c, b                                          ; $545c: $48
	and b                                            ; $545d: $a0
	ld l, a                                          ; $545e: $6f
	ld c, a                                          ; $545f: $4f
	inc [hl]                                         ; $5460: $34
	ld b, b                                          ; $5461: $40
	add hl, sp                                       ; $5462: $39
	ld [hl], a                                       ; $5463: $77
	dec sp                                           ; $5464: $3b
	dec a                                            ; $5465: $3d
	ld b, d                                          ; $5466: $42
	dec [hl]                                         ; $5467: $35
	rla                                              ; $5468: $17
	db $ec                                           ; $5469: $ec
	cp c                                             ; $546a: $b9
	inc [hl]                                         ; $546b: $34
	db $ed                                           ; $546c: $ed
	pop bc                                           ; $546d: $c1
	ld d, e                                          ; $546e: $53
	ldh a, [rTMA]                                    ; $546f: $f0 $06

jr_08c_5471:
	dec sp                                           ; $5471: $3b
	ccf                                              ; $5472: $3f
	xor l                                            ; $5473: $ad
	ld b, b                                          ; $5474: $40
	ld c, l                                          ; $5475: $4d
	ld b, a                                          ; $5476: $47
	inc [hl]                                         ; $5477: $34
	ldh a, [hDisp0_SCX]                                     ; $5478: $f0 $84
	add h                                            ; $547a: $84
	ld c, d                                          ; $547b: $4a
	ld [hl], d                                       ; $547c: $72
	ld c, l                                          ; $547d: $4d
	dec a                                            ; $547e: $3d
	ld a, $48                                        ; $547f: $3e $48
	and b                                            ; $5481: $a0
	ld b, b                                          ; $5482: $40
	add hl, sp                                       ; $5483: $39
	ld c, d                                          ; $5484: $4a
	ld a, $66                                        ; $5485: $3e $66
	add hl, sp                                       ; $5487: $39
	dec [hl]                                         ; $5488: $35
	rla                                              ; $5489: $17
	ld l, a                                          ; $548a: $6f
	ld c, e                                          ; $548b: $4b
	ld [$49c1], a                                    ; $548c: $ea $c1 $49
	inc a                                            ; $548f: $3c
	ld d, e                                          ; $5490: $53
	xor h                                            ; $5491: $ac
	adc e                                            ; $5492: $8b
	ld e, h                                          ; $5493: $5c
	ld b, h                                          ; $5494: $44
	ld e, l                                          ; $5495: $5d
	ld e, d                                          ; $5496: $5a
	ld a, [hl-]                                      ; $5497: $3a
	ld c, b                                          ; $5498: $48
	and b                                            ; $5499: $a0
	ld l, a                                          ; $549a: $6f
	ld c, c                                          ; $549b: $49
	ldh a, [$cd]                                     ; $549c: $f0 $cd
	ld e, e                                          ; $549e: $5b
	ld c, h                                          ; $549f: $4c

Call_08c_54a0:
	dec [hl]                                         ; $54a0: $35
	rla                                              ; $54a1: $17
	ld l, d                                          ; $54a2: $6a
	ldh a, [$0d]                                     ; $54a3: $f0 $0d
	ld c, e                                          ; $54a5: $4b
	inc [hl]                                         ; $54a6: $34
	ld [$49c1], a                                    ; $54a7: $ea $c1 $49
	inc a                                            ; $54aa: $3c
	ld h, d                                          ; $54ab: $62
	inc de                                           ; $54ac: $13
	pop af                                           ; $54ad: $f1
	push bc                                          ; $54ae: $c5
	dec a                                            ; $54af: $3d
	jr c, jr_08c_54ec                                ; $54b0: $38 $3a

	and b                                            ; $54b2: $a0
	ld l, a                                          ; $54b3: $6f
	ld c, e                                          ; $54b4: $4b
	inc [hl]                                         ; $54b5: $34
	ld b, [hl]                                       ; $54b6: $46
	ld d, d                                          ; $54b7: $52
	ld d, a                                          ; $54b8: $57
	inc de                                           ; $54b9: $13
	adc e                                            ; $54ba: $8b
	ld e, h                                          ; $54bb: $5c
	db $ec                                           ; $54bc: $ec
	ret c                                            ; $54bd: $d8

	ldh a, [$08]                                     ; $54be: $f0 $08
	add hl, sp                                       ; $54c0: $39
	inc a                                            ; $54c1: $3c
	ld a, [hl-]                                      ; $54c2: $3a
	xor l                                            ; $54c3: $ad
	db $ed                                           ; $54c4: $ed
	inc d                                            ; $54c5: $14
	add e                                            ; $54c6: $83
	ldh a, [$2c]                                     ; $54c7: $f0 $2c
	ld d, e                                          ; $54c9: $53
	jr c, jr_08c_5504                                ; $54ca: $38 $38

	ld a, [hl-]                                      ; $54cc: $3a
	ld c, b                                          ; $54cd: $48
	and b                                            ; $54ce: $a0
	ld l, a                                          ; $54cf: $6f
	ld c, e                                          ; $54d0: $4b
	xor h                                            ; $54d1: $ac
	adc e                                            ; $54d2: $8b
	ld e, h                                          ; $54d3: $5c
	db $ec                                           ; $54d4: $ec
	ret c                                            ; $54d5: $d8

	inc a                                            ; $54d6: $3c
	ld a, [hl-]                                      ; $54d7: $3a
	xor b                                            ; $54d8: $a8
	ld [$49c1], a                                    ; $54d9: $ea $c1 $49
	inc a                                            ; $54dc: $3c
	ld a, [hl-]                                      ; $54dd: $3a
	ld d, b                                          ; $54de: $50
	inc de                                           ; $54df: $13
	adc e                                            ; $54e0: $8b
	ld e, h                                          ; $54e1: $5c
	ld a, [hl-]                                      ; $54e2: $3a
	ld b, c                                          ; $54e3: $41
	ld b, h                                          ; $54e4: $44
	ld e, l                                          ; $54e5: $5d
	ld e, d                                          ; $54e6: $5a
	ld c, b                                          ; $54e7: $48
	and b                                            ; $54e8: $a0
	ld l, a                                          ; $54e9: $6f
	ld c, e                                          ; $54ea: $4b
	adc e                                            ; $54eb: $8b

jr_08c_54ec:
	ld e, h                                          ; $54ec: $5c
	db $ec                                           ; $54ed: $ec
	ret c                                            ; $54ee: $d8

	ld h, e                                          ; $54ef: $63
	dec [hl]                                         ; $54f0: $35
	rla                                              ; $54f1: $17
	ld [$49c1], a                                    ; $54f2: $ea $c1 $49
	inc a                                            ; $54f5: $3c
	ld d, e                                          ; $54f6: $53
	xor h                                            ; $54f7: $ac
	adc e                                            ; $54f8: $8b
	ld e, h                                          ; $54f9: $5c
	ld a, [hl-]                                      ; $54fa: $3a
	ld b, c                                          ; $54fb: $41
	ld b, h                                          ; $54fc: $44
	ld e, l                                          ; $54fd: $5d
	ld e, d                                          ; $54fe: $5a
	ld c, h                                          ; $54ff: $4c
	and b                                            ; $5500: $a0
	call c, $3548                                    ; $5501: $dc $48 $35

jr_08c_5504:
	rla                                              ; $5504: $17
	ld l, a                                          ; $5505: $6f
	ld c, e                                          ; $5506: $4b
	inc [hl]                                         ; $5507: $34
	ldh a, [hDisp0_SCX]                                     ; $5508: $f0 $84
	add h                                            ; $550a: $84
	ld c, d                                          ; $550b: $4a
	ld [hl], d                                       ; $550c: $72
	ld c, l                                          ; $550d: $4d
	dec a                                            ; $550e: $3d
	ld b, d                                          ; $550f: $42
	ld d, e                                          ; $5510: $53
	inc de                                           ; $5511: $13
	ldh a, [$29]                                     ; $5512: $f0 $29
	ld a, $3c                                        ; $5514: $3e $3c
	dec sp                                           ; $5516: $3b
	dec a                                            ; $5517: $3d
	ld a, [hl-]                                      ; $5518: $3a
	ld c, b                                          ; $5519: $48
	and b                                            ; $551a: $a0
	ld l, a                                          ; $551b: $6f
	ld c, e                                          ; $551c: $4b
	ld b, b                                          ; $551d: $40

jr_08c_551e:
	ld c, l                                          ; $551e: $4d
	ldh a, [$08]                                     ; $551f: $f0 $08
	ld e, d                                          ; $5521: $5a
	ld c, d                                          ; $5522: $4a
	ld c, a                                          ; $5523: $4f
	ldh a, [rAUD1LOW]                                ; $5524: $f0 $13
	jr c, jr_08c_5571                                ; $5526: $38 $49

	inc de                                           ; $5528: $13
	ld [hl], a                                       ; $5529: $77
	add hl, sp                                       ; $552a: $39
	ld e, l                                          ; $552b: $5d
	ld e, d                                          ; $552c: $5a
	xor l                                            ; $552d: $ad
	ldh a, [$64]                                     ; $552e: $f0 $64
	jr c, jr_08c_551e                                ; $5530: $38 $ec

	ret c                                            ; $5532: $d8

	ld e, l                                          ; $5533: $5d
	ld e, d                                          ; $5534: $5a
	ld c, h                                          ; $5535: $4c
	and b                                            ; $5536: $a0
	ld c, d                                          ; $5537: $4a
	ld c, a                                          ; $5538: $4f
	inc [hl]                                         ; $5539: $34
	ld [$42c1], a                                    ; $553a: $ea $c1 $42
	ldh a, [$38]                                     ; $553d: $f0 $38
	ld d, e                                          ; $553f: $53
	inc de                                           ; $5540: $13
	adc e                                            ; $5541: $8b
	ld e, h                                          ; $5542: $5c
	inc a                                            ; $5543: $3c
	ld a, [hl-]                                      ; $5544: $3a
	ld c, b                                          ; $5545: $48
	and b                                            ; $5546: $a0
	db $ec                                           ; $5547: $ec
	ld d, $48                                        ; $5548: $16 $48
	dec [hl]                                         ; $554a: $35
	rla                                              ; $554b: $17
	ld c, d                                          ; $554c: $4a
	ld c, a                                          ; $554d: $4f
	inc [hl]                                         ; $554e: $34
	ldh a, [hDisp0_SCX]                                     ; $554f: $f0 $84
	add h                                            ; $5551: $84
	ld c, d                                          ; $5552: $4a
	ld [hl], d                                       ; $5553: $72
	ld c, l                                          ; $5554: $4d
	dec a                                            ; $5555: $3d
	ld b, d                                          ; $5556: $42
	ld d, e                                          ; $5557: $53
	inc de                                           ; $5558: $13
	ldh a, [$29]                                     ; $5559: $f0 $29
	ld a, $3c                                        ; $555b: $3e $3c
	dec sp                                           ; $555d: $3b
	dec a                                            ; $555e: $3d
	inc a                                            ; $555f: $3c
	ld d, b                                          ; $5560: $50
	ld c, b                                          ; $5561: $48
	and b                                            ; $5562: $a0
	db $ec                                           ; $5563: $ec
	ld d, $36                                        ; $5564: $16 $36
	rla                                              ; $5566: $17
	ld l, a                                          ; $5567: $6f
	ld c, e                                          ; $5568: $4b
	ld [$49c1], a                                    ; $5569: $ea $c1 $49
	inc a                                            ; $556c: $3c
	ld d, e                                          ; $556d: $53
	xor h                                            ; $556e: $ac
	adc e                                            ; $556f: $8b
	ld e, h                                          ; $5570: $5c

jr_08c_5571:
	ld b, h                                          ; $5571: $44
	ld e, l                                          ; $5572: $5d
	ld e, d                                          ; $5573: $5a
	ld c, h                                          ; $5574: $4c
	ld c, b                                          ; $5575: $48
	and b                                            ; $5576: $a0
	db $ec                                           ; $5577: $ec
	ld d, $36                                        ; $5578: $16 $36
	rla                                              ; $557a: $17
	ld [$42c1], a                                    ; $557b: $ea $c1 $42
	ldh a, [$38]                                     ; $557e: $f0 $38
	ld d, e                                          ; $5580: $53
	inc de                                           ; $5581: $13
	jr c, jr_08c_55bc                                ; $5582: $38 $38

	ld c, c                                          ; $5584: $49
	ld [hl], a                                       ; $5585: $77
	add hl, sp                                       ; $5586: $39
	ld e, l                                          ; $5587: $5d
	ld e, d                                          ; $5588: $5a
	ld c, h                                          ; $5589: $4c
	and b                                            ; $558a: $a0
	xor $1f                                          ; $558b: $ee $1f
	xor b                                            ; $558d: $a8
	ld l, a                                          ; $558e: $6f
	ld c, a                                          ; $558f: $4f
	ld b, b                                          ; $5590: $40
	add hl, sp                                       ; $5591: $39
	ld [hl], a                                       ; $5592: $77
	add hl, sp                                       ; $5593: $39
	ld a, [hl-]                                      ; $5594: $3a
	ld c, b                                          ; $5595: $48
	and b                                            ; $5596: $a0
	xor $1f                                          ; $5597: $ee $1f
	inc [hl]                                         ; $5599: $34
	call c, $6fa8                                    ; $559a: $dc $a8 $6f
	ld c, a                                          ; $559d: $4f
	ld b, b                                          ; $559e: $40
	add hl, sp                                       ; $559f: $39
	ld [hl], a                                       ; $55a0: $77
	add hl, sp                                       ; $55a1: $39
	ld h, e                                          ; $55a2: $63
	and b                                            ; $55a3: $a0
	call c, $6fa8                                    ; $55a4: $dc $a8 $6f
	ld c, a                                          ; $55a7: $4f
	ld b, b                                          ; $55a8: $40
	add hl, sp                                       ; $55a9: $39
	ld [hl], a                                       ; $55aa: $77
	add hl, sp                                       ; $55ab: $39
	ld h, e                                          ; $55ac: $63
	and b                                            ; $55ad: $a0
	ld b, [hl]                                       ; $55ae: $46
	dec sp                                           ; $55af: $3b
	inc [hl]                                         ; $55b0: $34
	db $ec                                           ; $55b1: $ec
	ccf                                              ; $55b2: $3f
	ld b, l                                          ; $55b3: $45
	xor b                                            ; $55b4: $a8
	ldh a, [$0a]                                     ; $55b5: $f0 $0a
	ld d, l                                          ; $55b7: $55
	ldh a, [rAUD2HIGH]                               ; $55b8: $f0 $19
	ld b, a                                          ; $55ba: $47
	sub [hl]                                         ; $55bb: $96

jr_08c_55bc:
	ld d, a                                          ; $55bc: $57
	ld d, d                                          ; $55bd: $52
	ld a, $66                                        ; $55be: $3e $66
	add hl, sp                                       ; $55c0: $39
	and b                                            ; $55c1: $a0
	ld l, a                                          ; $55c2: $6f
	ldh a, [rSTAT]                                   ; $55c3: $f0 $41
	ld b, d                                          ; $55c5: $42
	ldh a, [$e7]                                     ; $55c6: $f0 $e7
	ldh a, [c]                                       ; $55c8: $f2
	ld h, h                                          ; $55c9: $64
	ld c, e                                          ; $55ca: $4b
	ld c, b                                          ; $55cb: $48
	and b                                            ; $55cc: $a0
	cpl                                              ; $55cd: $2f
	ld b, e                                          ; $55ce: $43
	ldh a, [$08]                                     ; $55cf: $f0 $08
	ld d, b                                          ; $55d1: $50
	inc [hl]                                         ; $55d2: $34
	db $ed                                           ; $55d3: $ed
	xor c                                            ; $55d4: $a9
	xor b                                            ; $55d5: $a8
	db $ec                                           ; $55d6: $ec
	xor $ec                                          ; $55d7: $ee $ec
	xor $a0                                          ; $55d9: $ee $a0
	cpl                                              ; $55db: $2f
	add sp, -$74                                     ; $55dc: $e8 $8c
	and c                                            ; $55de: $a1
	xor $1f                                          ; $55df: $ee $1f
	inc [hl]                                         ; $55e1: $34
	ld d, c                                          ; $55e2: $51
	ld [hl], b                                       ; $55e3: $70
	ld d, l                                          ; $55e4: $55
	db $ec                                           ; $55e5: $ec
	cp c                                             ; $55e6: $b9
	dec [hl]                                         ; $55e7: $35
	rla                                              ; $55e8: $17
	ld b, b                                          ; $55e9: $40
	ld c, l                                          ; $55ea: $4d
	ld b, a                                          ; $55eb: $47
	inc [hl]                                         ; $55ec: $34
	ldh a, [hDisp0_SCX]                                     ; $55ed: $f0 $84
	add h                                            ; $55ef: $84
	ld c, d                                          ; $55f0: $4a
	inc de                                           ; $55f1: $13
	xor $06                                          ; $55f2: $ee $06
	ld b, a                                          ; $55f4: $47
	pop af                                           ; $55f5: $f1
	ld h, [hl]                                       ; $55f6: $66
	ld e, l                                          ; $55f7: $5d
	dec a                                            ; $55f8: $3d
	ld a, $48                                        ; $55f9: $3e $48
	and b                                            ; $55fb: $a0
	xor $1f                                          ; $55fc: $ee $1f
	inc [hl]                                         ; $55fe: $34
	ld d, c                                          ; $55ff: $51
	ld [hl], b                                       ; $5600: $70
	ld d, l                                          ; $5601: $55
	db $ec                                           ; $5602: $ec
	cp c                                             ; $5603: $b9
	ld c, h                                          ; $5604: $4c
	xor b                                            ; $5605: $a8
	ld l, a                                          ; $5606: $6f
	inc [hl]                                         ; $5607: $34
	ld d, h                                          ; $5608: $54
	add hl, sp                                       ; $5609: $39
	jr c, jr_08c_5645                                ; $560a: $38 $39

	ld b, d                                          ; $560c: $42
	add a                                            ; $560d: $87
	adc e                                            ; $560e: $8b
	ld e, h                                          ; $560f: $5c
	and b                                            ; $5610: $a0
	ld d, c                                          ; $5611: $51
	ld [hl], b                                       ; $5612: $70
	ld d, l                                          ; $5613: $55
	db $ec                                           ; $5614: $ec
	cp c                                             ; $5615: $b9
	ld c, h                                          ; $5616: $4c
	xor b                                            ; $5617: $a8
	ldh a, [rVBK]                                    ; $5618: $f0 $4f
	ld b, a                                          ; $561a: $47
	ldh a, [$8d]                                     ; $561b: $f0 $8d
	ld c, [hl]                                       ; $561d: $4e
	db $eb                                           ; $561e: $eb
	ld e, e                                          ; $561f: $5b
	ld c, h                                          ; $5620: $4c
	and b                                            ; $5621: $a0
	cpl                                              ; $5622: $2f
	add sp, $0e                                      ; $5623: $e8 $0e
	and c                                            ; $5625: $a1
	ld l, a                                          ; $5626: $6f
	ld c, e                                          ; $5627: $4b
	inc [hl]                                         ; $5628: $34
	ld d, c                                          ; $5629: $51
	ld [hl], b                                       ; $562a: $70
	ld d, l                                          ; $562b: $55
	db $ec                                           ; $562c: $ec
	cp c                                             ; $562d: $b9
	ld c, c                                          ; $562e: $49
	inc de                                           ; $562f: $13
	ld [hl], a                                       ; $5630: $77
	xor $1f                                          ; $5631: $ee $1f
	ld b, h                                          ; $5633: $44
	ld e, l                                          ; $5634: $5d
	ld e, d                                          ; $5635: $5a
	xor l                                            ; $5636: $ad
	ldh a, [hDisp0_SCX]                                     ; $5637: $f0 $84
	add h                                            ; $5639: $84
	ld c, d                                          ; $563a: $4a
	xor $06                                          ; $563b: $ee $06
	ld b, a                                          ; $563d: $47
	pop af                                           ; $563e: $f1
	ld h, [hl]                                       ; $563f: $66
	ld e, l                                          ; $5640: $5d
	dec a                                            ; $5641: $3d
	ld a, $48                                        ; $5642: $3e $48
	and b                                            ; $5644: $a0

jr_08c_5645:
	ld l, a                                          ; $5645: $6f
	ld c, e                                          ; $5646: $4b
	inc [hl]                                         ; $5647: $34
	db $eb                                           ; $5648: $eb
	adc [hl]                                         ; $5649: $8e
	ld c, b                                          ; $564a: $48
	dec [hl]                                         ; $564b: $35
	rla                                              ; $564c: $17
	adc e                                            ; $564d: $8b
	ld l, h                                          ; $564e: $6c
	ld d, e                                          ; $564f: $53
	ldh a, [rTMA]                                    ; $5650: $f0 $06
	ld h, e                                          ; $5652: $63
	ld a, [hl-]                                      ; $5653: $3a
	jr c, jr_08c_5698                                ; $5654: $38 $42

	inc a                                            ; $5656: $3c
	ld c, a                                          ; $5657: $4f
	inc de                                           ; $5658: $13
	ld a, $4d                                        ; $5659: $3e $4d
	ld a, [hl-]                                      ; $565b: $3a
	jr c, jr_08c_56aa                                ; $565c: $38 $4c

	and b                                            ; $565e: $a0
	ld b, b                                          ; $565f: $40
	add hl, sp                                       ; $5660: $39
	ld [hl], $17                                     ; $5661: $36 $17
	ld l, a                                          ; $5663: $6f
	ld c, e                                          ; $5664: $4b
	db $ec                                           ; $5665: $ec
	cp c                                             ; $5666: $b9
	ld c, c                                          ; $5667: $49
	inc de                                           ; $5668: $13
	ld [hl], a                                       ; $5669: $77
	xor $1f                                          ; $566a: $ee $1f
	ld b, h                                          ; $566c: $44
	ld e, l                                          ; $566d: $5d
	ld e, d                                          ; $566e: $5a
	ld c, b                                          ; $566f: $48
	and b                                            ; $5670: $a0
	cpl                                              ; $5671: $2f
	add sp, $0f                                      ; $5672: $e8 $0f
	and c                                            ; $5674: $a1
	ld l, a                                          ; $5675: $6f
	ld c, e                                          ; $5676: $4b
	inc [hl]                                         ; $5677: $34
	ld d, c                                          ; $5678: $51
	ld [hl], b                                       ; $5679: $70
	ld d, l                                          ; $567a: $55
	jr c, jr_08c_56b5                                ; $567b: $38 $38

	ld c, c                                          ; $567d: $49
	inc de                                           ; $567e: $13
	ld [hl], a                                       ; $567f: $77
	dec sp                                           ; $5680: $3b
	dec a                                            ; $5681: $3d
	ld h, e                                          ; $5682: $63
	xor b                                            ; $5683: $a8
	ldh a, [hDisp0_SCX]                                     ; $5684: $f0 $84
	add h                                            ; $5686: $84
	ld c, d                                          ; $5687: $4a
	xor $06                                          ; $5688: $ee $06
	ld b, a                                          ; $568a: $47
	ld [hl], d                                       ; $568b: $72
	ld c, l                                          ; $568c: $4d
	dec a                                            ; $568d: $3d
	ld a, $48                                        ; $568e: $3e $48
	and b                                            ; $5690: $a0
	ld l, a                                          ; $5691: $6f
	ld c, e                                          ; $5692: $4b
	inc [hl]                                         ; $5693: $34
	db $eb                                           ; $5694: $eb
	adc [hl]                                         ; $5695: $8e
	ld c, b                                          ; $5696: $48
	dec [hl]                                         ; $5697: $35

jr_08c_5698:
	rla                                              ; $5698: $17
	ld b, [hl]                                       ; $5699: $46
	ld a, [hl-]                                      ; $569a: $3a
	dec a                                            ; $569b: $3d
	ld c, a                                          ; $569c: $4f
	inc [hl]                                         ; $569d: $34
	ld e, h                                          ; $569e: $5c
	dec sp                                           ; $569f: $3b
	ld c, c                                          ; $56a0: $49
	inc de                                           ; $56a1: $13
	adc e                                            ; $56a2: $8b
	ld e, h                                          ; $56a3: $5c
	ld b, a                                          ; $56a4: $47
	ld a, [hl-]                                      ; $56a5: $3a
	ld c, [hl]                                       ; $56a6: $4e
	ld h, e                                          ; $56a7: $63
	ld b, l                                          ; $56a8: $45
	and b                                            ; $56a9: $a0

jr_08c_56aa:
	ld l, a                                          ; $56aa: $6f
	ld c, e                                          ; $56ab: $4b
	db $ec                                           ; $56ac: $ec
	cp c                                             ; $56ad: $b9
	ld c, c                                          ; $56ae: $49
	ld [hl], a                                       ; $56af: $77
	add hl, sp                                       ; $56b0: $39
	ld a, [hl-]                                      ; $56b1: $3a
	dec [hl]                                         ; $56b2: $35
	rla                                              ; $56b3: $17
	ld b, [hl]                                       ; $56b4: $46

jr_08c_56b5:
	ld a, [hl-]                                      ; $56b5: $3a
	dec a                                            ; $56b6: $3d
	ld c, a                                          ; $56b7: $4f
	xor h                                            ; $56b8: $ac
	adc e                                            ; $56b9: $8b
	ld e, h                                          ; $56ba: $5c
	ld b, a                                          ; $56bb: $47
	ld a, [hl-]                                      ; $56bc: $3a
	ld c, [hl]                                       ; $56bd: $4e
	ld c, c                                          ; $56be: $49
	jr c, jr_08c_56f9                                ; $56bf: $38 $38

	ld c, h                                          ; $56c1: $4c
	and b                                            ; $56c2: $a0
	rst JumpTable                                          ; $56c3: $c7
	xor c                                            ; $56c4: $a9
	ld l, a                                          ; $56c5: $6f
	ld c, e                                          ; $56c6: $4b
	ld b, [hl]                                       ; $56c7: $46
	ld d, d                                          ; $56c8: $52
	ld d, a                                          ; $56c9: $57
	xor l                                            ; $56ca: $ad
	ld c, d                                          ; $56cb: $4a
	ld c, a                                          ; $56cc: $4f
	inc [hl]                                         ; $56cd: $34
	ldh a, [hDisp0_SCX]                                     ; $56ce: $f0 $84
	add h                                            ; $56d0: $84
	ld c, d                                          ; $56d1: $4a
	pop af                                           ; $56d2: $f1
	ld h, [hl]                                       ; $56d3: $66
	ld e, l                                          ; $56d4: $5d
	dec a                                            ; $56d5: $3d
	ld a, $48                                        ; $56d6: $3e $48
	and b                                            ; $56d8: $a0
	ld l, a                                          ; $56d9: $6f
	inc [hl]                                         ; $56da: $34
	ld d, h                                          ; $56db: $54
	add hl, sp                                       ; $56dc: $39
	jr c, jr_08c_5718                                ; $56dd: $38 $39

	ld b, d                                          ; $56df: $42
	ld b, l                                          ; $56e0: $45
	ld d, a                                          ; $56e1: $57
	ld c, a                                          ; $56e2: $4f
	xor h                                            ; $56e3: $ac
	ld c, a                                          ; $56e4: $4f
	add hl, sp                                       ; $56e5: $39
	ret                                              ; $56e6: $c9


	sbc b                                            ; $56e7: $98
	ld [hl], e                                       ; $56e8: $73
	sub e                                            ; $56e9: $93
	ld a, [hl-]                                      ; $56ea: $3a
	ldh a, [$38]                                     ; $56eb: $f0 $38
	ld d, e                                          ; $56ed: $53
	inc de                                           ; $56ee: $13
	adc e                                            ; $56ef: $8b
	ld e, h                                          ; $56f0: $5c
	ld b, h                                          ; $56f1: $44
	ld a, [hl-]                                      ; $56f2: $3a
	and b                                            ; $56f3: $a0
	db $ec                                           ; $56f4: $ec
	ld d, $36                                        ; $56f5: $16 $36
	rla                                              ; $56f7: $17
	ld c, a                                          ; $56f8: $4f

jr_08c_56f9:
	add hl, sp                                       ; $56f9: $39
	ret                                              ; $56fa: $c9


	sbc b                                            ; $56fb: $98
	ld [hl], e                                       ; $56fc: $73
	sub e                                            ; $56fd: $93
	ld a, [hl-]                                      ; $56fe: $3a
	ldh a, [$38]                                     ; $56ff: $f0 $38
	ld d, e                                          ; $5701: $53
	inc de                                           ; $5702: $13
	adc e                                            ; $5703: $8b
	ld e, h                                          ; $5704: $5c
	ld b, h                                          ; $5705: $44
	ld e, l                                          ; $5706: $5d
	ld e, d                                          ; $5707: $5a
	ld a, [hl-]                                      ; $5708: $3a
	ld c, b                                          ; $5709: $48
	and b                                            ; $570a: $a0
	ld l, a                                          ; $570b: $6f
	ld c, a                                          ; $570c: $4f
	inc [hl]                                         ; $570d: $34
	ld b, b                                          ; $570e: $40
	add hl, sp                                       ; $570f: $39
	ld [hl], a                                       ; $5710: $77
	dec sp                                           ; $5711: $3b
	dec a                                            ; $5712: $3d
	ld b, d                                          ; $5713: $42
	dec [hl]                                         ; $5714: $35
	rla                                              ; $5715: $17
	db $ec                                           ; $5716: $ec
	cp c                                             ; $5717: $b9

jr_08c_5718:
	inc [hl]                                         ; $5718: $34
	db $ed                                           ; $5719: $ed
	pop bc                                           ; $571a: $c1
	ld d, e                                          ; $571b: $53
	ldh a, [rTMA]                                    ; $571c: $f0 $06
	dec sp                                           ; $571e: $3b
	ccf                                              ; $571f: $3f
	xor l                                            ; $5720: $ad
	ld c, d                                          ; $5721: $4a
	ld c, a                                          ; $5722: $4f
	inc [hl]                                         ; $5723: $34
	ldh a, [hDisp0_SCX]                                     ; $5724: $f0 $84
	add h                                            ; $5726: $84
	ld c, d                                          ; $5727: $4a
	ld [hl], d                                       ; $5728: $72
	ld c, l                                          ; $5729: $4d
	dec a                                            ; $572a: $3d
	ld a, $48                                        ; $572b: $3e $48
	and b                                            ; $572d: $a0
	ld b, b                                          ; $572e: $40
	add hl, sp                                       ; $572f: $39
	ld c, d                                          ; $5730: $4a
	ld a, $66                                        ; $5731: $3e $66
	add hl, sp                                       ; $5733: $39
	dec [hl]                                         ; $5734: $35
	rla                                              ; $5735: $17
	ld l, a                                          ; $5736: $6f
	ld c, e                                          ; $5737: $4b
	sbc b                                            ; $5738: $98
	ld [hl], e                                       ; $5739: $73
	sub e                                            ; $573a: $93
	ld a, [hl-]                                      ; $573b: $3a
	ld b, d                                          ; $573c: $42
	ld d, e                                          ; $573d: $53
	xor h                                            ; $573e: $ac
	adc e                                            ; $573f: $8b
	ld e, h                                          ; $5740: $5c
	ld b, h                                          ; $5741: $44
	ld e, l                                          ; $5742: $5d
	ld e, d                                          ; $5743: $5a
	ld a, [hl-]                                      ; $5744: $3a
	ld c, b                                          ; $5745: $48
	and b                                            ; $5746: $a0
	ld l, a                                          ; $5747: $6f
	ld c, c                                          ; $5748: $49
	ldh a, [$cd]                                     ; $5749: $f0 $cd
	ld e, e                                          ; $574b: $5b
	ld c, h                                          ; $574c: $4c
	dec [hl]                                         ; $574d: $35
	rla                                              ; $574e: $17
	ld l, d                                          ; $574f: $6a
	ldh a, [$0d]                                     ; $5750: $f0 $0d
	ld c, e                                          ; $5752: $4b
	inc [hl]                                         ; $5753: $34
	db $eb                                           ; $5754: $eb
	ld h, l                                          ; $5755: $65
	ld c, c                                          ; $5756: $49
	inc a                                            ; $5757: $3c
	ld h, d                                          ; $5758: $62
	inc de                                           ; $5759: $13
	pop af                                           ; $575a: $f1
	ld h, [hl]                                       ; $575b: $66
	ld e, h                                          ; $575c: $5c
	dec a                                            ; $575d: $3d
	jr c, jr_08c_579a                                ; $575e: $38 $3a

	and b                                            ; $5760: $a0
	ld l, a                                          ; $5761: $6f
	ld c, e                                          ; $5762: $4b
	inc [hl]                                         ; $5763: $34
	ld b, [hl]                                       ; $5764: $46
	ld d, d                                          ; $5765: $52
	ld d, a                                          ; $5766: $57
	inc de                                           ; $5767: $13
	adc e                                            ; $5768: $8b
	ld e, h                                          ; $5769: $5c
	db $ec                                           ; $576a: $ec
	ret c                                            ; $576b: $d8

	ldh a, [$08]                                     ; $576c: $f0 $08
	add hl, sp                                       ; $576e: $39
	inc a                                            ; $576f: $3c
	ld a, [hl-]                                      ; $5770: $3a
	xor l                                            ; $5771: $ad
	sbc b                                            ; $5772: $98
	ld [hl], e                                       ; $5773: $73
	sub e                                            ; $5774: $93
	ld a, [hl-]                                      ; $5775: $3a
	ldh a, [$38]                                     ; $5776: $f0 $38
	ld d, e                                          ; $5778: $53
	jr c, jr_08c_57b3                                ; $5779: $38 $38

	ld a, [hl-]                                      ; $577b: $3a
	ld c, b                                          ; $577c: $48
	and b                                            ; $577d: $a0
	ld l, a                                          ; $577e: $6f
	ld c, e                                          ; $577f: $4b
	xor h                                            ; $5780: $ac
	adc e                                            ; $5781: $8b
	ld e, h                                          ; $5782: $5c
	db $ec                                           ; $5783: $ec
	ret c                                            ; $5784: $d8

	inc a                                            ; $5785: $3c
	ld a, [hl-]                                      ; $5786: $3a
	xor b                                            ; $5787: $a8
	db $eb                                           ; $5788: $eb
	ld h, l                                          ; $5789: $65
	ld c, c                                          ; $578a: $49
	inc a                                            ; $578b: $3c
	ld a, [hl-]                                      ; $578c: $3a
	ld d, b                                          ; $578d: $50
	inc de                                           ; $578e: $13
	adc e                                            ; $578f: $8b
	ld e, h                                          ; $5790: $5c
	ld a, [hl-]                                      ; $5791: $3a
	ld b, c                                          ; $5792: $41
	ld b, h                                          ; $5793: $44
	ld e, l                                          ; $5794: $5d
	ld e, d                                          ; $5795: $5a
	ld c, b                                          ; $5796: $48
	and b                                            ; $5797: $a0
	ld l, a                                          ; $5798: $6f
	ld c, e                                          ; $5799: $4b

jr_08c_579a:
	adc e                                            ; $579a: $8b
	ld e, h                                          ; $579b: $5c
	db $ec                                           ; $579c: $ec
	ret c                                            ; $579d: $d8

	ld h, e                                          ; $579e: $63
	dec [hl]                                         ; $579f: $35
	rla                                              ; $57a0: $17
	sbc b                                            ; $57a1: $98
	ld [hl], e                                       ; $57a2: $73
	sub e                                            ; $57a3: $93
	ld a, [hl-]                                      ; $57a4: $3a
	ldh a, [$38]                                     ; $57a5: $f0 $38
	ld d, e                                          ; $57a7: $53
	inc de                                           ; $57a8: $13
	adc e                                            ; $57a9: $8b
	ld l, h                                          ; $57aa: $6c
	ld a, [hl-]                                      ; $57ab: $3a
	ld b, c                                          ; $57ac: $41
	ld b, h                                          ; $57ad: $44
	ld e, l                                          ; $57ae: $5d
	ld e, d                                          ; $57af: $5a
	ld c, h                                          ; $57b0: $4c
	and b                                            ; $57b1: $a0
	ld c, d                                          ; $57b2: $4a

jr_08c_57b3:
	ld c, a                                          ; $57b3: $4f
	inc [hl]                                         ; $57b4: $34
	db $eb                                           ; $57b5: $eb
	ld h, l                                          ; $57b6: $65
	ld b, d                                          ; $57b7: $42
	ldh a, [$38]                                     ; $57b8: $f0 $38
	ld d, e                                          ; $57ba: $53
	inc de                                           ; $57bb: $13
	adc e                                            ; $57bc: $8b
	ld e, h                                          ; $57bd: $5c
	inc a                                            ; $57be: $3c
	ld a, [hl-]                                      ; $57bf: $3a
	ld c, b                                          ; $57c0: $48
	and b                                            ; $57c1: $a0
	call c, $3548                                    ; $57c2: $dc $48 $35
	rla                                              ; $57c5: $17
	ld l, a                                          ; $57c6: $6f
	ld c, e                                          ; $57c7: $4b
	db $eb                                           ; $57c8: $eb
	ld h, l                                          ; $57c9: $65
	ld c, c                                          ; $57ca: $49
	inc a                                            ; $57cb: $3c
	ld d, e                                          ; $57cc: $53
	xor h                                            ; $57cd: $ac
	adc e                                            ; $57ce: $8b
	ld e, h                                          ; $57cf: $5c
	ld b, h                                          ; $57d0: $44
	ld e, l                                          ; $57d1: $5d
	ld e, d                                          ; $57d2: $5a
	ld c, h                                          ; $57d3: $4c
	ld c, b                                          ; $57d4: $48
	and b                                            ; $57d5: $a0
	call c, $3548                                    ; $57d6: $dc $48 $35
	rla                                              ; $57d9: $17
	ld c, a                                          ; $57da: $4f
	add hl, sp                                       ; $57db: $39
	ret                                              ; $57dc: $c9


	sbc b                                            ; $57dd: $98
	ld [hl], e                                       ; $57de: $73
	sub e                                            ; $57df: $93
	ld a, [hl-]                                      ; $57e0: $3a
	ldh a, [$38]                                     ; $57e1: $f0 $38
	ld d, e                                          ; $57e3: $53
	inc de                                           ; $57e4: $13
	jr c, @+$3a                                      ; $57e5: $38 $38

	ld c, c                                          ; $57e7: $49
	ld [hl], a                                       ; $57e8: $77
	add hl, sp                                       ; $57e9: $39
	ld e, l                                          ; $57ea: $5d
	ld e, d                                          ; $57eb: $5a
	ld c, h                                          ; $57ec: $4c
	and b                                            ; $57ed: $a0
	ld d, h                                          ; $57ee: $54
	ld b, d                                          ; $57ef: $42
	ldh a, [rPCM34]                                  ; $57f0: $f0 $77
	ldh a, [$ac]                                     ; $57f2: $f0 $ac
	inc [hl]                                         ; $57f4: $34
	ld e, d                                          ; $57f5: $5a
	add hl, sp                                       ; $57f6: $39
	inc a                                            ; $57f7: $3c
	ld a, [hl-]                                      ; $57f8: $3a
	and c                                            ; $57f9: $a1
	cpl                                              ; $57fa: $2f
	jp hl                                            ; $57fb: $e9


	cp d                                             ; $57fc: $ba
	add hl, bc                                       ; $57fd: $09
	ld e, [hl]                                       ; $57fe: $5e
	dec sp                                           ; $57ff: $3b
	inc [hl]                                         ; $5800: $34
	ld b, [hl]                                       ; $5801: $46
	ld d, a                                          ; $5802: $57
	ld d, e                                          ; $5803: $53
	ld c, c                                          ; $5804: $49
	add hl, sp                                       ; $5805: $39
	xor b                                            ; $5806: $a8
	ld c, d                                          ; $5807: $4a
	ld c, a                                          ; $5808: $4f
	inc [hl]                                         ; $5809: $34
	ret                                              ; $580a: $c9


	inc de                                           ; $580b: $13
	db $eb                                           ; $580c: $eb
	ld c, a                                          ; $580d: $4f
	ld a, [hl-]                                      ; $580e: $3a
	and b                                            ; $580f: $a0
	ld b, [hl]                                       ; $5810: $46
	ld d, a                                          ; $5811: $57
	ld d, e                                          ; $5812: $53
	ld c, c                                          ; $5813: $49
	add hl, sp                                       ; $5814: $39
	xor b                                            ; $5815: $a8
	pop af                                           ; $5816: $f1
	db $d3                                           ; $5817: $d3
	ld [hl], c                                       ; $5818: $71
	ccf                                              ; $5819: $3f
	ld d, l                                          ; $581a: $55
	ld c, l                                          ; $581b: $4d
	ccf                                              ; $581c: $3f
	xor h                                            ; $581d: $ac
	ldh a, [$29]                                     ; $581e: $f0 $29
	ld a, $38                                        ; $5820: $3e $38
	ld h, e                                          ; $5822: $63
	and b                                            ; $5823: $a0
	cpl                                              ; $5824: $2f
	jp hl                                            ; $5825: $e9


	dec sp                                           ; $5826: $3b
	add hl, bc                                       ; $5827: $09
	rst JumpTable                                          ; $5828: $c7
	ld c, b                                          ; $5829: $48
	xor c                                            ; $582a: $a9
	ld d, h                                          ; $582b: $54
	ld c, l                                          ; $582c: $4d
	db $ec                                           ; $582d: $ec
	ret c                                            ; $582e: $d8

	ldh a, [$38]                                     ; $582f: $f0 $38
	ld d, e                                          ; $5831: $53
	inc de                                           ; $5832: $13
	ld b, l                                          ; $5833: $45
	inc a                                            ; $5834: $3c
	dec sp                                           ; $5835: $3b
	dec a                                            ; $5836: $3d
	inc a                                            ; $5837: $3c
	ld a, [hl-]                                      ; $5838: $3a
	ld c, b                                          ; $5839: $48
	and b                                            ; $583a: $a0
	rst JumpTable                                          ; $583b: $c7
	xor c                                            ; $583c: $a9
	ld e, d                                          ; $583d: $5a
	add hl, sp                                       ; $583e: $39
	jr c, jr_08c_587a                                ; $583f: $38 $39

	ld b, d                                          ; $5841: $42
	ld d, e                                          ; $5842: $53
	inc de                                           ; $5843: $13
	ldh a, [rPCM12]                                  ; $5844: $f0 $76
	ldh a, [rTMA]                                    ; $5846: $f0 $06
	add hl, sp                                       ; $5848: $39
	ld b, d                                          ; $5849: $42
	inc a                                            ; $584a: $3c
	ld a, [hl-]                                      ; $584b: $3a
	ld c, b                                          ; $584c: $48
	and b                                            ; $584d: $a0
	ret                                              ; $584e: $c9


	inc [hl]                                         ; $584f: $34
	db $ec                                           ; $5850: $ec
	ld h, d                                          ; $5851: $62
	ld c, b                                          ; $5852: $48
	and b                                            ; $5853: $a0
	cpl                                              ; $5854: $2f
	add sp, -$1e                                     ; $5855: $e8 $e2
	add hl, bc                                       ; $5857: $09
	ld e, [hl]                                       ; $5858: $5e
	dec sp                                           ; $5859: $3b
	xor c                                            ; $585a: $a9
	jp nc, $3a72                                     ; $585b: $d2 $72 $3a

	jr c, jr_08c_58aa                                ; $585e: $38 $4a

	ld c, h                                          ; $5860: $4c
	xor l                                            ; $5861: $ad
	db $eb                                           ; $5862: $eb
	ld c, a                                          ; $5863: $4f
	inc a                                            ; $5864: $3c
	ld d, b                                          ; $5865: $50
	ld c, b                                          ; $5866: $48
	and b                                            ; $5867: $a0
	ld b, b                                          ; $5868: $40
	add hl, sp                                       ; $5869: $39
	ld c, d                                          ; $586a: $4a
	ld c, a                                          ; $586b: $4f
	ld a, [hl-]                                      ; $586c: $3a
	jr c, jr_08c_58b8                                ; $586d: $38 $49

	ld [hl], a                                       ; $586f: $77
	add hl, sp                                       ; $5870: $39
	ld e, l                                          ; $5871: $5d
	ld e, d                                          ; $5872: $5a
	xor h                                            ; $5873: $ac
	ld b, b                                          ; $5874: $40
	add hl, sp                                       ; $5875: $39
	add d                                            ; $5876: $82
	ld h, e                                          ; $5877: $63
	ld c, l                                          ; $5878: $4d
	ld c, [hl]                                       ; $5879: $4e

jr_08c_587a:
	ld c, c                                          ; $587a: $49
	xor h                                            ; $587b: $ac
	ret                                              ; $587c: $c9


	db $eb                                           ; $587d: $eb
	ld c, a                                          ; $587e: $4f
	ld c, h                                          ; $587f: $4c
	ld c, b                                          ; $5880: $48
	and b                                            ; $5881: $a0
	rst JumpTable                                          ; $5882: $c7
	xor c                                            ; $5883: $a9
	ret                                              ; $5884: $c9


	db $eb                                           ; $5885: $eb
	ld c, a                                          ; $5886: $4f
	ld a, [hl-]                                      ; $5887: $3a
	ld c, b                                          ; $5888: $48
	and b                                            ; $5889: $a0
	ldh a, [hDisp1_SCY]                                     ; $588a: $f0 $90
	ldh a, [$cb]                                     ; $588c: $f0 $cb
	ld b, d                                          ; $588e: $42
	ldh a, [$38]                                     ; $588f: $f0 $38
	ld c, e                                          ; $5891: $4b
	inc [hl]                                         ; $5892: $34
	ld e, d                                          ; $5893: $5a
	add hl, sp                                       ; $5894: $39
	and c                                            ; $5895: $a1
	cpl                                              ; $5896: $2f
	add sp, $76                                      ; $5897: $e8 $76
	add hl, bc                                       ; $5899: $09
	adc b                                            ; $589a: $88
	sub c                                            ; $589b: $91
	xor c                                            ; $589c: $a9
	ldh a, [c]                                       ; $589d: $f2
	ld a, c                                          ; $589e: $79
	ld c, c                                          ; $589f: $49
	di                                               ; $58a0: $f3
	rla                                              ; $58a1: $17
	ldh a, [$8c]                                     ; $58a2: $f0 $8c
	ccf                                              ; $58a4: $3f
	xor h                                            ; $58a5: $ac
	ldh a, [$57]                                     ; $58a6: $f0 $57
	ldh a, [$ae]                                     ; $58a8: $f0 $ae

jr_08c_58aa:
	ld b, a                                          ; $58aa: $47
	ld a, [hl-]                                      ; $58ab: $3a
	dec sp                                           ; $58ac: $3b
	ccf                                              ; $58ad: $3f
	jr c, jr_08c_5905                                ; $58ae: $38 $55

	ld c, h                                          ; $58b0: $4c
	ld c, b                                          ; $58b1: $48
	and b                                            ; $58b2: $a0
	ldh a, [c]                                       ; $58b3: $f2
	ld e, l                                          ; $58b4: $5d
	ld c, a                                          ; $58b5: $4f
	ld a, $38                                        ; $58b6: $3e $38

jr_08c_58b8:
	ld c, h                                          ; $58b8: $4c
	xor b                                            ; $58b9: $a8
	ldh a, [c]                                       ; $58ba: $f2
	ld a, c                                          ; $58bb: $79
	ld c, e                                          ; $58bc: $4b
	ldh a, [hDisp1_SCY]                                     ; $58bd: $f0 $90
	ldh a, [rSB]                                     ; $58bf: $f0 $01
	ld a, [hl-]                                      ; $58c1: $3a
	inc a                                            ; $58c2: $3c
	dec sp                                           ; $58c3: $3b
	dec a                                            ; $58c4: $3d
	ld b, d                                          ; $58c5: $42
	ld b, a                                          ; $58c6: $47
	xor b                                            ; $58c7: $a8
	ld [hl], d                                       ; $58c8: $72
	ldh a, [hDisp1_WX]                                     ; $58c9: $f0 $96
	db $eb                                           ; $58cb: $eb
	ld d, [hl]                                       ; $58cc: $56
	and b                                            ; $58cd: $a0
	db $d3                                           ; $58ce: $d3
	xor c                                            ; $58cf: $a9
	ldh a, [c]                                       ; $58d0: $f2
	ld a, c                                          ; $58d1: $79
	ld c, e                                          ; $58d2: $4b
	ldh a, [hDisp1_SCY]                                     ; $58d3: $f0 $90
	ldh a, [rSB]                                     ; $58d5: $f0 $01
	ld a, [hl-]                                      ; $58d7: $3a
	inc a                                            ; $58d8: $3c
	dec sp                                           ; $58d9: $3b
	dec a                                            ; $58da: $3d
	ld b, d                                          ; $58db: $42
	ld b, a                                          ; $58dc: $47
	xor h                                            ; $58dd: $ac
	add h                                            ; $58de: $84
	ld c, e                                          ; $58df: $4b
	db $ed                                           ; $58e0: $ed
	adc $51                                          ; $58e1: $ce $51
	ld c, [hl]                                       ; $58e3: $4e
	ld c, a                                          ; $58e4: $4f
	ld b, d                                          ; $58e5: $42
	ld c, h                                          ; $58e6: $4c
	and b                                            ; $58e7: $a0
	cpl                                              ; $58e8: $2f
	db $eb                                           ; $58e9: $eb
	sub e                                            ; $58ea: $93
	xor h                                            ; $58eb: $ac
	add sp, -$6e                                     ; $58ec: $e8 $92
	xor b                                            ; $58ee: $a8
	db $eb                                           ; $58ef: $eb
	sub h                                            ; $58f0: $94
	ldh a, [hDisp1_SCY]                                     ; $58f1: $f0 $90
	ldh a, [rSB]                                     ; $58f3: $f0 $01
	ld a, [hl-]                                      ; $58f5: $3a
	jr c, jr_08c_5939                                ; $58f6: $38 $41

	ld b, h                                          ; $58f8: $44
	and e                                            ; $58f9: $a3
	cpl                                              ; $58fa: $2f
	jp hl                                            ; $58fb: $e9


	dec c                                            ; $58fc: $0d
	ld c, b                                          ; $58fd: $48
	add hl, bc                                       ; $58fe: $09
	ld b, b                                          ; $58ff: $40
	add hl, sp                                       ; $5900: $39
	ld c, b                                          ; $5901: $48
	dec [hl]                                         ; $5902: $35
	rla                                              ; $5903: $17
	ld b, b                                          ; $5904: $40

jr_08c_5905:
	ld c, l                                          ; $5905: $4d
	ld e, e                                          ; $5906: $5b
	ld d, [hl]                                       ; $5907: $56
	xor h                                            ; $5908: $ac
	ld l, a                                          ; $5909: $6f
	ld d, e                                          ; $590a: $53
	db $ec                                           ; $590b: $ec
	db $ed                                           ; $590c: $ed
	rst SubAFromDE                                          ; $590d: $df
	and b                                            ; $590e: $a0
	ld b, b                                          ; $590f: $40
	add hl, sp                                       ; $5910: $39
	xor l                                            ; $5911: $ad
	db $ed                                           ; $5912: $ed
	ld e, [hl]                                       ; $5913: $5e
	inc [hl]                                         ; $5914: $34
	db $ed                                           ; $5915: $ed
	adc $3e                                          ; $5916: $ce $3e
	ld a, [hl-]                                      ; $5918: $3a
	jr c, jr_08c_595d                                ; $5919: $38 $42

	ld c, h                                          ; $591b: $4c
	and b                                            ; $591c: $a0
	ld b, b                                          ; $591d: $40

jr_08c_591e:
	add hl, sp                                       ; $591e: $39
	xor l                                            ; $591f: $ad
	ldh a, [c]                                       ; $5920: $f2
	ld a, c                                          ; $5921: $79
	ld b, d                                          ; $5922: $42
	ld d, d                                          ; $5923: $52
	ld d, d                                          ; $5924: $52
	ld a, [hl-]                                      ; $5925: $3a
	ld b, d                                          ; $5926: $42
	ld c, h                                          ; $5927: $4c
	and b                                            ; $5928: $a0
	cpl                                              ; $5929: $2f
	pop af                                           ; $592a: $f1
	db $fc                                           ; $592b: $fc
	ldh a, [rOCPS]                                   ; $592c: $f0 $6a
	sbc l                                            ; $592e: $9d
	ld d, b                                          ; $592f: $50
	jr c, jr_08c_596e                                ; $5930: $38 $3c

	ld a, [hl-]                                      ; $5932: $3a
	add hl, bc                                       ; $5933: $09
	ld b, b                                          ; $5934: $40
	ld c, l                                          ; $5935: $4d
	ld e, e                                          ; $5936: $5b
	ld d, [hl]                                       ; $5937: $56
	xor h                                            ; $5938: $ac

jr_08c_5939:
	xor $06                                          ; $5939: $ee $06
	ld b, a                                          ; $593b: $47
	xor $19                                          ; $593c: $ee $19
	ld a, $52                                        ; $593e: $3e $52
	ld a, $66                                        ; $5940: $3e $66
	add hl, sp                                       ; $5942: $39
	and b                                            ; $5943: $a0
	ld b, b                                          ; $5944: $40
	ld c, l                                          ; $5945: $4d
	ld e, e                                          ; $5946: $5b
	ld d, [hl]                                       ; $5947: $56
	xor h                                            ; $5948: $ac
	ld c, a                                          ; $5949: $4f
	dec sp                                           ; $594a: $3b
	ld c, c                                          ; $594b: $49
	ldh a, [hDisp1_SCY]                                     ; $594c: $f0 $90
	ldh a, [rSB]                                     ; $594e: $f0 $01
	ld c, [hl]                                       ; $5950: $4e
	ld b, l                                          ; $5951: $45
	add hl, sp                                       ; $5952: $39
	ld b, a                                          ; $5953: $47
	inc de                                           ; $5954: $13
	ldh a, [$b6]                                     ; $5955: $f0 $b6
	di                                               ; $5957: $f3
	ld c, b                                          ; $5958: $48
	ld a, $52                                        ; $5959: $3e $52
	ld a, $66                                        ; $595b: $3e $66

jr_08c_595d:
	add hl, sp                                       ; $595d: $39
	and b                                            ; $595e: $a0
	sub d                                            ; $595f: $92
	adc [hl]                                         ; $5960: $8e
	dec sp                                           ; $5961: $3b
	ccf                                              ; $5962: $3f
	xor h                                            ; $5963: $ac
	ld c, a                                          ; $5964: $4f
	dec sp                                           ; $5965: $3b
	ld c, c                                          ; $5966: $49
	ldh a, [hDisp1_SCY]                                     ; $5967: $f0 $90
	ldh a, [rSB]                                     ; $5969: $f0 $01
	ld c, [hl]                                       ; $596b: $4e
	ld b, l                                          ; $596c: $45
	add hl, sp                                       ; $596d: $39

jr_08c_596e:
	ld b, a                                          ; $596e: $47
	inc de                                           ; $596f: $13
	ld a, [hl-]                                      ; $5970: $3a
	ld d, b                                          ; $5971: $50
	ld a, [hl-]                                      ; $5972: $3a
	ld e, h                                          ; $5973: $5c
	ld d, [hl]                                       ; $5974: $56
	ld c, h                                          ; $5975: $4c
	and b                                            ; $5976: $a0
	cpl                                              ; $5977: $2f
	ld b, e                                          ; $5978: $43
	ld b, [hl]                                       ; $5979: $46
	ld c, l                                          ; $597a: $4d
	inc [hl]                                         ; $597b: $34
	db $ed                                           ; $597c: $ed
	xor c                                            ; $597d: $a9
	ld d, e                                          ; $597e: $53
	inc de                                           ; $597f: $13
	db $ed                                           ; $5980: $ed
	push hl                                          ; $5981: $e5
	dec a                                            ; $5982: $3d
	ld d, b                                          ; $5983: $50
	ld a, [hl-]                                      ; $5984: $3a
	jr c, jr_08c_591e                                ; $5985: $38 $97

	and b                                            ; $5987: $a0
	cpl                                              ; $5988: $2f
	ld [hl-], a                                      ; $5989: $32
	ld e, d                                          ; $598a: $5a
	ld d, h                                          ; $598b: $54
	ld b, a                                          ; $598c: $47
	inc de                                           ; $598d: $13
	ld [$42be], a                                    ; $598e: $ea $be $42
	inc a                                            ; $5991: $3c
	ld a, [hl-]                                      ; $5992: $3a
	ld c, b                                          ; $5993: $48
	and e                                            ; $5994: $a3
	ld d, $a0                                        ; $5995: $16 $a0
	cpl                                              ; $5997: $2f
	ld b, e                                          ; $5998: $43
	ld b, [hl]                                       ; $5999: $46
	ld c, l                                          ; $599a: $4d
	ld c, e                                          ; $599b: $4b
	inc [hl]                                         ; $599c: $34
	db $ed                                           ; $599d: $ed
	xor c                                            ; $599e: $a9
	ld b, d                                          ; $599f: $42
	pop af                                           ; $59a0: $f1
	dec l                                            ; $59a1: $2d
	xor b                                            ; $59a2: $a8
	ld e, d                                          ; $59a3: $5a
	ld d, h                                          ; $59a4: $54
	inc a                                            ; $59a5: $3c
	ld d, b                                          ; $59a6: $50
	ld c, b                                          ; $59a7: $48
	xor h                                            ; $59a8: $ac
	scf                                              ; $59a9: $37
	scf                                              ; $59aa: $37

jr_08c_59ab:
	and d                                            ; $59ab: $a2
	ld e, h                                          ; $59ac: $5c
	ld d, [hl]                                       ; $59ad: $56
	ld e, c                                          ; $59ae: $59
	dec sp                                           ; $59af: $3b
	and d                                            ; $59b0: $a2
	ld b, [hl]                                       ; $59b1: $46
	ld b, [hl]                                       ; $59b2: $46
	inc [hl]                                         ; $59b3: $34
	db $eb                                           ; $59b4: $eb
	ld h, e                                          ; $59b5: $63
	and b                                            ; $59b6: $a0
	cpl                                              ; $59b7: $2f
	ld b, e                                          ; $59b8: $43
	db $ed                                           ; $59b9: $ed
	push hl                                          ; $59ba: $e5
	dec a                                            ; $59bb: $3d
	ld d, b                                          ; $59bc: $50
	ld a, [hl-]                                      ; $59bd: $3a
	jr c, jr_08c_59fc                                ; $59be: $38 $3c

	ld d, b                                          ; $59c0: $50
	inc de                                           ; $59c1: $13
	ld e, d                                          ; $59c2: $5a
	ld d, h                                          ; $59c3: $54
	ld b, a                                          ; $59c4: $47
	ld h, a                                          ; $59c5: $67
	dec sp                                           ; $59c6: $3b
	dec a                                            ; $59c7: $3d
	ld b, d                                          ; $59c8: $42
	inc a                                            ; $59c9: $3c
	ld c, c                                          ; $59ca: $49
	inc de                                           ; $59cb: $13
	ld [hl], a                                       ; $59cc: $77
	dec sp                                           ; $59cd: $3b
	ccf                                              ; $59ce: $3f
	dec a                                            ; $59cf: $3d
	ld b, l                                          ; $59d0: $45
	and b                                            ; $59d1: $a0
	db $eb                                           ; $59d2: $eb
	ccf                                              ; $59d3: $3f
	xor b                                            ; $59d4: $a8
	ret                                              ; $59d5: $c9


	inc de                                           ; $59d6: $13
	ldh a, [c]                                       ; $59d7: $f2
	sub d                                            ; $59d8: $92
	inc a                                            ; $59d9: $3c
	ld b, b                                          ; $59da: $40
	add hl, sp                                       ; $59db: $39
	ld c, c                                          ; $59dc: $49
	ld [hl], a                                       ; $59dd: $77
	dec sp                                           ; $59de: $3b
	ccf                                              ; $59df: $3f
	and b                                            ; $59e0: $a0
	cpl                                              ; $59e1: $2f
	ld b, e                                          ; $59e2: $43
	halt                                             ; $59e3: $76
	ld c, e                                          ; $59e4: $4b
	ld d, d                                          ; $59e5: $52
	ld b, c                                          ; $59e6: $41
	ld d, d                                          ; $59e7: $52
	ld c, c                                          ; $59e8: $49
	inc de                                           ; $59e9: $13
	ldh a, [c]                                       ; $59ea: $f2
	sub d                                            ; $59eb: $92
	inc a                                            ; $59ec: $3c
	ld e, b                                          ; $59ed: $58
	ld c, l                                          ; $59ee: $4d
	dec a                                            ; $59ef: $3d
	ld h, e                                          ; $59f0: $63
	ld e, l                                          ; $59f1: $5d
	ld b, h                                          ; $59f2: $44
	and b                                            ; $59f3: $a0
	add hl, sp                                       ; $59f4: $39
	db $eb                                           ; $59f5: $eb
	sbc b                                            ; $59f6: $98
	and b                                            ; $59f7: $a0
	cpl                                              ; $59f8: $2f
	ld b, e                                          ; $59f9: $43
	ld e, h                                          ; $59fa: $5c
	inc [hl]                                         ; $59fb: $34

jr_08c_59fc:
	pop af                                           ; $59fc: $f1
	ld d, $47                                        ; $59fd: $16 $47
	xor b                                            ; $59ff: $a8
	ld l, e                                          ; $5a00: $6b
	ld d, e                                          ; $5a01: $53
	ld h, h                                          ; $5a02: $64
	inc a                                            ; $5a03: $3c
	ld a, $38                                        ; $5a04: $3e $38
	ld b, d                                          ; $5a06: $42
	and c                                            ; $5a07: $a1
	ld e, b                                          ; $5a08: $58
	dec sp                                           ; $5a09: $3b
	ld e, h                                          ; $5a0a: $5c
	ld b, d                                          ; $5a0b: $42
	ldh a, [c]                                       ; $5a0c: $f2
	sub d                                            ; $5a0d: $92
	jr c, jr_08c_5a4d                                ; $5a0e: $38 $3d

	ldh a, [$d2]                                     ; $5a10: $f0 $d2
	ld h, d                                          ; $5a12: $62
	inc de                                           ; $5a13: $13
	ld [hl], a                                       ; $5a14: $77
	jr c, jr_08c_59ab                                ; $5a15: $38 $94

	ld a, $61                                        ; $5a17: $3e $61
	ld d, [hl]                                       ; $5a19: $56
	dec sp                                           ; $5a1a: $3b
	ccf                                              ; $5a1b: $3f
	xor l                                            ; $5a1c: $ad
	add hl, sp                                       ; $5a1d: $39
	db $eb                                           ; $5a1e: $eb
	sbc b                                            ; $5a1f: $98
	and b                                            ; $5a20: $a0
	cpl                                              ; $5a21: $2f
	ld b, e                                          ; $5a22: $43
	ld b, b                                          ; $5a23: $40
	inc [hl]                                         ; $5a24: $34
	ld b, b                                          ; $5a25: $40
	ld b, c                                          ; $5a26: $41
	ld a, [hl-]                                      ; $5a27: $3a
	ld b, a                                          ; $5a28: $47
	inc de                                           ; $5a29: $13
	ldh a, [$5d]                                     ; $5a2a: $f0 $5d
	ld a, [hl-]                                      ; $5a2c: $3a
	ldh a, [$d2]                                     ; $5a2d: $f0 $d2
	ld b, h                                          ; $5a2f: $44
	dec sp                                           ; $5a30: $3b
	dec a                                            ; $5a31: $3d
	and c                                            ; $5a32: $a1
	jp hl                                            ; $5a33: $e9


	and h                                            ; $5a34: $a4
	xor b                                            ; $5a35: $a8
	ldh a, [c]                                       ; $5a36: $f2
	ld bc, $3d3b                                     ; $5a37: $01 $3b $3d
	ld d, a                                          ; $5a3a: $57
	ld a, $3f                                        ; $5a3b: $3e $3f
	ld c, b                                          ; $5a3d: $48
	and b                                            ; $5a3e: $a0
	cpl                                              ; $5a3f: $2f
	ld b, e                                          ; $5a40: $43
	ldh a, [$34]                                     ; $5a41: $f0 $34
	ld b, a                                          ; $5a43: $47
	inc [hl]                                         ; $5a44: $34
	db $ec                                           ; $5a45: $ec
	ld [$4858], sp                                   ; $5a46: $08 $58 $48
	and b                                            ; $5a49: $a0
	ld e, b                                          ; $5a4a: $58
	ld b, [hl]                                       ; $5a4b: $46
	inc [hl]                                         ; $5a4c: $34

jr_08c_5a4d:
	ldh a, [hDisp1_SCY]                                     ; $5a4d: $f0 $90
	ldh a, [$cb]                                     ; $5a4f: $f0 $cb
	ld d, d                                          ; $5a51: $52
	ld a, $66                                        ; $5a52: $3e $66
	add hl, sp                                       ; $5a54: $39
	ld b, l                                          ; $5a55: $45
	and b                                            ; $5a56: $a0
	cpl                                              ; $5a57: $2f
	ld [hl-], a                                      ; $5a58: $32
	ld d, h                                          ; $5a59: $54
	ld b, d                                          ; $5a5a: $42
	ldh a, [rIF]                                     ; $5a5b: $f0 $0f
	ldh a, [rDIV]                                    ; $5a5d: $f0 $04
	ld e, c                                          ; $5a5f: $59
	ld h, l                                          ; $5a60: $65
	ld c, e                                          ; $5a61: $4b
	xor h                                            ; $5a62: $ac
	pop af                                           ; $5a63: $f1
	ld c, e                                          ; $5a64: $4b
	sbc [hl]                                         ; $5a65: $9e
	ld b, a                                          ; $5a66: $47
	ld c, b                                          ; $5a67: $48
	and e                                            ; $5a68: $a3
	cpl                                              ; $5a69: $2f
	ld b, e                                          ; $5a6a: $43
	ld h, h                                          ; $5a6b: $64
	ld h, h                                          ; $5a6c: $64
	ld h, h                                          ; $5a6d: $64
	ld h, h                                          ; $5a6e: $64
	scf                                              ; $5a6f: $37
	scf                                              ; $5a70: $37
	and d                                            ; $5a71: $a2
	cpl                                              ; $5a72: $2f
	ld b, e                                          ; $5a73: $43
	ld d, d                                          ; $5a74: $52
	dec a                                            ; $5a75: $3d
	inc [hl]                                         ; $5a76: $34
	ld l, [hl]                                       ; $5a77: $6e
	ld d, b                                          ; $5a78: $50
	ld c, l                                          ; $5a79: $4d
	ccf                                              ; $5a7a: $3f
	db $ec                                           ; $5a7b: $ec
	push de                                          ; $5a7c: $d5
	and b                                            ; $5a7d: $a0
	db $eb                                           ; $5a7e: $eb
	ccf                                              ; $5a7f: $3f
	xor b                                            ; $5a80: $a8
	ldh a, [$3e]                                     ; $5a81: $f0 $3e
	inc a                                            ; $5a83: $3c
	ld d, b                                          ; $5a84: $50
	inc [hl]                                         ; $5a85: $34
	ld b, [hl]                                       ; $5a86: $46
	ld a, [hl-]                                      ; $5a87: $3a
	dec a                                            ; $5a88: $3d
	ld b, d                                          ; $5a89: $42
	di                                               ; $5a8a: $f3
	add hl, de                                       ; $5a8b: $19
	ld d, e                                          ; $5a8c: $53
	ld [hl], d                                       ; $5a8d: $72
	ld e, [hl]                                       ; $5a8e: $5e
	dec a                                            ; $5a8f: $3d
	ld d, b                                          ; $5a90: $50
	xor h                                            ; $5a91: $ac
	ldh a, [c]                                       ; $5a92: $f2
	ld l, [hl]                                       ; $5a93: $6e
	ldh a, [rAUD1HIGH]                               ; $5a94: $f0 $14
	ld b, d                                          ; $5a96: $42
	sbc d                                            ; $5a97: $9a
	ld h, d                                          ; $5a98: $62
	ld [hl], a                                       ; $5a99: $77
	jr c, jr_08c_5ae0                                ; $5a9a: $38 $44

	ld a, $61                                        ; $5a9c: $3e $61
	ld d, [hl]                                       ; $5a9e: $56
	dec sp                                           ; $5a9f: $3b
	ccf                                              ; $5aa0: $3f
	ld c, b                                          ; $5aa1: $48
	and b                                            ; $5aa2: $a0
	cpl                                              ; $5aa3: $2f
	ld b, e                                          ; $5aa4: $43
	ld l, [hl]                                       ; $5aa5: $6e
	ld d, b                                          ; $5aa6: $50
	ld c, l                                          ; $5aa7: $4d
	ld c, [hl]                                       ; $5aa8: $4e
	halt                                             ; $5aa9: $76
	ld c, a                                          ; $5aaa: $4f
	xor h                                            ; $5aab: $ac

Jump_08c_5aac:
	halt                                             ; $5aac: $76
	ld b, h                                          ; $5aad: $44
	ld e, l                                          ; $5aae: $5d
	ld e, d                                          ; $5aaf: $5a
	and b                                            ; $5ab0: $a0
	ld c, b                                          ; $5ab1: $48
	ld c, a                                          ; $5ab2: $4f
	add hl, sp                                       ; $5ab3: $39
	inc [hl]                                         ; $5ab4: $34
	ld b, [hl]                                       ; $5ab5: $46
	ld c, l                                          ; $5ab6: $4d
	inc a                                            ; $5ab7: $3c
	ld d, b                                          ; $5ab8: $50
	xor h                                            ; $5ab9: $ac
	ld l, l                                          ; $5aba: $6d
	ldh a, [rAUD1HIGH]                               ; $5abb: $f0 $14
	ld c, a                                          ; $5abd: $4f
	dec a                                            ; $5abe: $3d
	dec sp                                           ; $5abf: $3b
	dec a                                            ; $5ac0: $3d
	ld b, d                                          ; $5ac1: $42
	ld c, h                                          ; $5ac2: $4c
	and b                                            ; $5ac3: $a0
	cpl                                              ; $5ac4: $2f
	ld b, e                                          ; $5ac5: $43
	ld b, b                                          ; $5ac6: $40
	add hl, sp                                       ; $5ac7: $39
	ld b, h                                          ; $5ac8: $44
	ld c, h                                          ; $5ac9: $4c
	xor b                                            ; $5aca: $a8
	ld b, [hl]                                       ; $5acb: $46
	dec sp                                           ; $5acc: $3b
	ld c, c                                          ; $5acd: $49
	jr c, jr_08c_5b09                                ; $5ace: $38 $39

	ldh a, [$2a]                                     ; $5ad0: $f0 $2a
	ld b, h                                          ; $5ad2: $44
	ld c, h                                          ; $5ad3: $4c
	and b                                            ; $5ad4: $a0
	ld c, b                                          ; $5ad5: $48
	ld a, b                                          ; $5ad6: $78
	ldh a, [rAUD1HIGH]                               ; $5ad7: $f0 $14
	ld b, d                                          ; $5ad9: $42
	ld l, d                                          ; $5ada: $6a
	ld [hl], b                                       ; $5adb: $70
	ld e, a                                          ; $5adc: $5f
	ld c, e                                          ; $5add: $4b
	xor h                                            ; $5ade: $ac
	ld l, a                                          ; $5adf: $6f

jr_08c_5ae0:
	dec a                                            ; $5ae0: $3d
	ld h, c                                          ; $5ae1: $61
	xor h                                            ; $5ae2: $ac
	db $ec                                           ; $5ae3: $ec
	db $d3                                           ; $5ae4: $d3
	ld c, [hl]                                       ; $5ae5: $4e
	ld b, c                                          ; $5ae6: $41
	ld c, d                                          ; $5ae7: $4a
	ld a, $66                                        ; $5ae8: $3e $66
	add hl, sp                                       ; $5aea: $39
	ld c, h                                          ; $5aeb: $4c
	and c                                            ; $5aec: $a1
	ld b, b                                          ; $5aed: $40
	ld c, l                                          ; $5aee: $4d
	ld e, e                                          ; $5aef: $5b
	ld d, [hl]                                       ; $5af0: $56
	xor h                                            ; $5af1: $ac
	ld [$4cd3], a                                    ; $5af2: $ea $d3 $4c
	and b                                            ; $5af5: $a0
	ld b, [hl]                                       ; $5af6: $46
	ld c, l                                          ; $5af7: $4d
	xor c                                            ; $5af8: $a9
	ld l, e                                          ; $5af9: $6b
	ld a, $3f                                        ; $5afa: $3e $3f
	ld c, [hl]                                       ; $5afc: $4e
	ld b, d                                          ; $5afd: $42
	and c                                            ; $5afe: $a1
	cpl                                              ; $5aff: $2f
	add sp, $77                                      ; $5b00: $e8 $77
	add hl, bc                                       ; $5b02: $09
	add hl, sp                                       ; $5b03: $39
	ld h, e                                          ; $5b04: $63
	ld [hl], h                                       ; $5b05: $74
	inc [hl]                                         ; $5b06: $34
	db $ec                                           ; $5b07: $ec
	inc de                                           ; $5b08: $13

jr_08c_5b09:
	db $ed                                           ; $5b09: $ed
	res 5, b                                         ; $5b0a: $cb $a8
	ld b, [hl]                                       ; $5b0c: $46
	ld d, a                                          ; $5b0d: $57
	ld d, e                                          ; $5b0e: $53
	ld c, c                                          ; $5b0f: $49
	add hl, sp                                       ; $5b10: $39
	xor b                                            ; $5b11: $a8
	add a                                            ; $5b12: $87
	sbc d                                            ; $5b13: $9a
	ld b, a                                          ; $5b14: $47
	ld d, c                                          ; $5b15: $51
	ld c, [hl]                                       ; $5b16: $4e
	ld c, h                                          ; $5b17: $4c
	and b                                            ; $5b18: $a0
	db $ed                                           ; $5b19: $ed
	ld c, c                                          ; $5b1a: $49
	ld c, h                                          ; $5b1b: $4c
	xor b                                            ; $5b1c: $a8
	ld b, [hl]                                       ; $5b1d: $46
	ld d, a                                          ; $5b1e: $57
	ld d, e                                          ; $5b1f: $53
	ld c, c                                          ; $5b20: $49
	add hl, sp                                       ; $5b21: $39
	xor b                                            ; $5b22: $a8
	add a                                            ; $5b23: $87
	sbc d                                            ; $5b24: $9a
	ld b, a                                          ; $5b25: $47
	ld d, c                                          ; $5b26: $51
	ld c, [hl]                                       ; $5b27: $4e
	ld h, e                                          ; $5b28: $63
	and b                                            ; $5b29: $a0
	db $ec                                           ; $5b2a: $ec
	inc de                                           ; $5b2b: $13
	db $ed                                           ; $5b2c: $ed
	bit 1, h                                         ; $5b2d: $cb $4c
	xor b                                            ; $5b2f: $a8
	ld b, [hl]                                       ; $5b30: $46
	ld d, a                                          ; $5b31: $57
	ld d, e                                          ; $5b32: $53
	ld c, c                                          ; $5b33: $49
	add hl, sp                                       ; $5b34: $39
	and b                                            ; $5b35: $a0
	cpl                                              ; $5b36: $2f
	add sp, $1f                                      ; $5b37: $e8 $1f
	add hl, bc                                       ; $5b39: $09
	ld e, [hl]                                       ; $5b3a: $5e
	dec sp                                           ; $5b3b: $3b
	xor c                                            ; $5b3c: $a9
	ld b, [hl]                                       ; $5b3d: $46
	inc [hl]                                         ; $5b3e: $34
	ld b, [hl]                                       ; $5b3f: $46
	ld d, a                                          ; $5b40: $57
	ld d, e                                          ; $5b41: $53
	ld c, c                                          ; $5b42: $49
	add hl, sp                                       ; $5b43: $39
	ld c, b                                          ; $5b44: $48
	and b                                            ; $5b45: $a0
	ld e, [hl]                                       ; $5b46: $5e
	dec sp                                           ; $5b47: $3b
	inc [hl]                                         ; $5b48: $34
	di                                               ; $5b49: $f3
	dec b                                            ; $5b4a: $05
	di                                               ; $5b4b: $f3
	adc a                                            ; $5b4c: $8f
	xor c                                            ; $5b4d: $a9
	ld b, b                                          ; $5b4e: $40
	ld c, l                                          ; $5b4f: $4d
	ld c, e                                          ; $5b50: $4b
	inc [hl]                                         ; $5b51: $34
	jr c, jr_08c_5ba4                                ; $5b52: $38 $50

	ld a, [hl-]                                      ; $5b54: $3a
	jr c, @+$65                                      ; $5b55: $38 $63

	and b                                            ; $5b57: $a0
	ld e, [hl]                                       ; $5b58: $5e
	dec sp                                           ; $5b59: $3b
	xor c                                            ; $5b5a: $a9
	ld e, [hl]                                       ; $5b5b: $5e
	inc [hl]                                         ; $5b5c: $34
	pop af                                           ; $5b5d: $f1
	ld b, $f1                                        ; $5b5e: $06 $f1
	ld a, $3e                                        ; $5b60: $3e $3e
	ccf                                              ; $5b62: $3f
	ld h, h                                          ; $5b63: $64
	ld d, l                                          ; $5b64: $55
	ld h, e                                          ; $5b65: $63
	and b                                            ; $5b66: $a0
	cpl                                              ; $5b67: $2f
	db $ed                                           ; $5b68: $ed
	set 5, l                                         ; $5b69: $cb $ed
	ld bc, $414e                                     ; $5b6b: $01 $4e $41
	ld b, h                                          ; $5b6e: $44
	add hl, bc                                       ; $5b6f: $09
	db $ec                                           ; $5b70: $ec
	inc de                                           ; $5b71: $13
	ld b, d                                          ; $5b72: $42
	ld d, e                                          ; $5b73: $53
	inc de                                           ; $5b74: $13
	ld [hl], d                                       ; $5b75: $72
	add b                                            ; $5b76: $80
	inc a                                            ; $5b77: $3c
	ld c, [hl]                                       ; $5b78: $4e
	ld c, c                                          ; $5b79: $49
	jr c, jr_08c_5bb4                                ; $5b7a: $38 $38

	ld c, h                                          ; $5b7c: $4c
	xor b                                            ; $5b7d: $a8
	cp d                                             ; $5b7e: $ba
	and b                                            ; $5b7f: $a0
	ld b, b                                          ; $5b80: $40
	add hl, sp                                       ; $5b81: $39
	xor b                                            ; $5b82: $a8
	db $ec                                           ; $5b83: $ec
	inc de                                           ; $5b84: $13
	ld b, d                                          ; $5b85: $42
	ld d, e                                          ; $5b86: $53
	inc de                                           ; $5b87: $13
	ld [hl], d                                       ; $5b88: $72
	add b                                            ; $5b89: $80
	inc a                                            ; $5b8a: $3c
	ld c, [hl]                                       ; $5b8b: $4e
	ld c, c                                          ; $5b8c: $49
	jr c, jr_08c_5bc7                                ; $5b8d: $38 $38

	ld c, h                                          ; $5b8f: $4c
	and b                                            ; $5b90: $a0
	db $ec                                           ; $5b91: $ec
	inc de                                           ; $5b92: $13
	ld b, d                                          ; $5b93: $42
	ld d, e                                          ; $5b94: $53
	inc de                                           ; $5b95: $13
	ld [hl], d                                       ; $5b96: $72
	add b                                            ; $5b97: $80
	inc a                                            ; $5b98: $3c
	ld c, [hl]                                       ; $5b99: $4e
	ld c, c                                          ; $5b9a: $49
	jr c, @+$3a                                      ; $5b9b: $38 $38

	ld c, h                                          ; $5b9d: $4c
	and b                                            ; $5b9e: $a0
	cpl                                              ; $5b9f: $2f
	ld b, e                                          ; $5ba0: $43
	db $ed                                           ; $5ba1: $ed
	xor c                                            ; $5ba2: $a9
	ld b, d                                          ; $5ba3: $42

jr_08c_5ba4:
	ldh a, [$f8]                                     ; $5ba4: $f0 $f8
	xor h                                            ; $5ba6: $ac
	jp hl                                            ; $5ba7: $e9


	ld [$f213], a                                    ; $5ba8: $ea $13 $f2
	ld l, c                                          ; $5bab: $69
	ccf                                              ; $5bac: $3f
	ld c, [hl]                                       ; $5bad: $4e
	ld b, l                                          ; $5bae: $45
	and b                                            ; $5baf: $a0
	cpl                                              ; $5bb0: $2f
	add sp, $5d                                      ; $5bb1: $e8 $5d
	add hl, bc                                       ; $5bb3: $09

jr_08c_5bb4:
	ld e, h                                          ; $5bb4: $5c
	ld d, [hl]                                       ; $5bb5: $56
	dec sp                                           ; $5bb6: $3b
	scf                                              ; $5bb7: $37
	inc de                                           ; $5bb8: $13
	ldh a, [rKEY1]                                   ; $5bb9: $f0 $4d
	inc [hl]                                         ; $5bbb: $34
	db $ec                                           ; $5bbc: $ec
	ld de, $3d3e                                     ; $5bbd: $11 $3e $3d

jr_08c_5bc0:
	xor l                                            ; $5bc0: $ad
	db $ec                                           ; $5bc1: $ec
	ld d, c                                          ; $5bc2: $51
	ld b, [hl]                                       ; $5bc3: $46
	ld d, a                                          ; $5bc4: $57
	ld d, e                                          ; $5bc5: $53
	ld c, c                                          ; $5bc6: $49

jr_08c_5bc7:
	add hl, sp                                       ; $5bc7: $39
	and b                                            ; $5bc8: $a0
	ld e, h                                          ; $5bc9: $5c
	ld d, [hl]                                       ; $5bca: $56
	dec sp                                           ; $5bcb: $3b
	scf                                              ; $5bcc: $37
	inc de                                           ; $5bcd: $13
	ld b, [hl]                                       ; $5bce: $46
	ld e, c                                          ; $5bcf: $59
	dec sp                                           ; $5bd0: $3b
	inc [hl]                                         ; $5bd1: $34
	db $ec                                           ; $5bd2: $ec
	ld de, $3d3e                                     ; $5bd3: $11 $3e $3d
	xor b                                            ; $5bd6: $a8
	push af                                          ; $5bd7: $f5
	ld h, b                                          ; $5bd8: $60
	inc a                                            ; $5bd9: $3c
	ld e, b                                          ; $5bda: $58
	ld a, [hl-]                                      ; $5bdb: $3a
	jr c, jr_08c_5c28                                ; $5bdc: $38 $4a

	ld b, l                                          ; $5bde: $45
	and b                                            ; $5bdf: $a0
	ld e, h                                          ; $5be0: $5c
	ld d, [hl]                                       ; $5be1: $56
	dec sp                                           ; $5be2: $3b
	scf                                              ; $5be3: $37
	inc de                                           ; $5be4: $13
	ld b, [hl]                                       ; $5be5: $46
	ld e, c                                          ; $5be6: $59
	dec sp                                           ; $5be7: $3b
	inc [hl]                                         ; $5be8: $34
	db $ec                                           ; $5be9: $ec
	ld de, $3d3e                                     ; $5bea: $11 $3e $3d
	and b                                            ; $5bed: $a0
	cpl                                              ; $5bee: $2f
	add sp, $5e                                      ; $5bef: $e8 $5e
	and d                                            ; $5bf1: $a2
	ld b, [hl]                                       ; $5bf2: $46
	dec sp                                           ; $5bf3: $3b
	inc [hl]                                         ; $5bf4: $34
	ldh a, [$d8]                                     ; $5bf5: $f0 $d8
	ld e, d                                          ; $5bf7: $5a
	jr c, jr_08c_5c5d                                ; $5bf8: $38 $63

	xor b                                            ; $5bfa: $a8
	ld d, h                                          ; $5bfb: $54
	ld b, c                                          ; $5bfc: $41
	ld a, [hl-]                                      ; $5bfd: $3a
	sbc d                                            ; $5bfe: $9a
	ld d, c                                          ; $5bff: $51
	ld c, [hl]                                       ; $5c00: $4e
	add h                                            ; $5c01: $84
	ld b, h                                          ; $5c02: $44
	ld c, c                                          ; $5c03: $49
	inc de                                           ; $5c04: $13
	ld [hl], a                                       ; $5c05: $77
	ld h, e                                          ; $5c06: $63
	ld a, [hl-]                                      ; $5c07: $3a
	inc a                                            ; $5c08: $3c
	dec sp                                           ; $5c09: $3b
	dec a                                            ; $5c0a: $3d
	ld c, b                                          ; $5c0b: $48
	and b                                            ; $5c0c: $a0
	ld b, [hl]                                       ; $5c0d: $46
	dec sp                                           ; $5c0e: $3b
	inc [hl]                                         ; $5c0f: $34
	ld l, e                                          ; $5c10: $6b
	ccf                                              ; $5c11: $3f
	ld d, h                                          ; $5c12: $54
	ld c, c                                          ; $5c13: $49
	ld d, c                                          ; $5c14: $51
	ld c, [hl]                                       ; $5c15: $4e
	ld b, d                                          ; $5c16: $42
	ld b, l                                          ; $5c17: $45
	xor b                                            ; $5c18: $a8
	ld c, a                                          ; $5c19: $4f
	add hl, sp                                       ; $5c1a: $39
	inc [hl]                                         ; $5c1b: $34
	db $eb                                           ; $5c1c: $eb

jr_08c_5c1d:
	ld a, d                                          ; $5c1d: $7a
	jr c, jr_08c_5bc0                                ; $5c1e: $38 $a0

	ld b, [hl]                                       ; $5c20: $46
	dec sp                                           ; $5c21: $3b
	inc [hl]                                         ; $5c22: $34
	ld l, e                                          ; $5c23: $6b
	ccf                                              ; $5c24: $3f
	ld d, h                                          ; $5c25: $54
	ld c, c                                          ; $5c26: $49
	ld d, c                                          ; $5c27: $51

jr_08c_5c28:
	ld c, [hl]                                       ; $5c28: $4e
	ld b, d                                          ; $5c29: $42
	ld b, l                                          ; $5c2a: $45
	xor b                                            ; $5c2b: $a8
	ldh a, [$d8]                                     ; $5c2c: $f0 $d8
	ld e, d                                          ; $5c2e: $5a
	jr c, jr_08c_5c1d                                ; $5c2f: $38 $ec

	ret c                                            ; $5c31: $d8

	and b                                            ; $5c32: $a0
	cpl                                              ; $5c33: $2f
	add sp, $13                                      ; $5c34: $e8 $13
	add hl, bc                                       ; $5c36: $09
	ld b, [hl]                                       ; $5c37: $46
	dec sp                                           ; $5c38: $3b
	inc [hl]                                         ; $5c39: $34
	db $eb                                           ; $5c3a: $eb
	ld c, a                                          ; $5c3b: $4f
	xor l                                            ; $5c3c: $ad
	pop af                                           ; $5c3d: $f1
	cp d                                             ; $5c3e: $ba
	dec sp                                           ; $5c3f: $3b
	ccf                                              ; $5c40: $3f
	ld c, [hl]                                       ; $5c41: $4e
	ld c, c                                          ; $5c42: $49
	ld d, h                                          ; $5c43: $54
	ld e, a                                          ; $5c44: $5f
	inc de                                           ; $5c45: $13
	ld [hl], d                                       ; $5c46: $72
	ld d, b                                          ; $5c47: $50
	ld c, l                                          ; $5c48: $4d
	ld h, c                                          ; $5c49: $61
	ld d, [hl]                                       ; $5c4a: $56
	dec sp                                           ; $5c4b: $3b
	dec a                                            ; $5c4c: $3d
	ld c, b                                          ; $5c4d: $48
	and b                                            ; $5c4e: $a0
	xor $10                                          ; $5c4f: $ee $10
	and b                                            ; $5c51: $a0
	cpl                                              ; $5c52: $2f
	ld [hl-], a                                      ; $5c53: $32
	db $ed                                           ; $5c54: $ed
	xor c                                            ; $5c55: $a9
	ld b, d                                          ; $5c56: $42
	ld l, [hl]                                       ; $5c57: $6e
	add b                                            ; $5c58: $80
	xor h                                            ; $5c59: $ac
	ldh a, [c]                                       ; $5c5a: $f2
	ld l, c                                          ; $5c5b: $69
	pop af                                           ; $5c5c: $f1

jr_08c_5c5d:
	halt                                             ; $5c5d: $76
	ld e, l                                          ; $5c5e: $5d
	ccf                                              ; $5c5f: $3f
	ld c, [hl]                                       ; $5c60: $4e
	ld a, [hl-]                                      ; $5c61: $3a
	ld c, b                                          ; $5c62: $48
	and e                                            ; $5c63: $a3
	ld b, [hl]                                       ; $5c64: $46
	dec sp                                           ; $5c65: $3b
	inc [hl]                                         ; $5c66: $34
	ld l, a                                          ; $5c67: $6f
	xor l                                            ; $5c68: $ad
	pop af                                           ; $5c69: $f1
	cp d                                             ; $5c6a: $ba
	dec sp                                           ; $5c6b: $3b
	ccf                                              ; $5c6c: $3f
	dec a                                            ; $5c6d: $3d
	ld b, d                                          ; $5c6e: $42
	ld c, h                                          ; $5c6f: $4c
	and b                                            ; $5c70: $a0
	ld d, c                                          ; $5c71: $51
	ld [hl], b                                       ; $5c72: $70
	ld d, l                                          ; $5c73: $55
	di                                               ; $5c74: $f3
	ld c, [hl]                                       ; $5c75: $4e
	ld l, [hl]                                       ; $5c76: $6e
	inc a                                            ; $5c77: $3c
	ld c, h                                          ; $5c78: $4c
	and b                                            ; $5c79: $a0
	cpl                                              ; $5c7a: $2f
	ld [$09d6], a                                    ; $5c7b: $ea $d6 $09
	cpl                                              ; $5c7e: $2f
	ld b, e                                          ; $5c7f: $43
	db $ed                                           ; $5c80: $ed
	ld [de], a                                       ; $5c81: $12
	ld d, c                                          ; $5c82: $51
	ld [hl], b                                       ; $5c83: $70
	ld d, l                                          ; $5c84: $55
	inc de                                           ; $5c85: $13
	db $ec                                           ; $5c86: $ec
	ld c, a                                          ; $5c87: $4f
	dec [hl]                                         ; $5c88: $35
	ldh a, [$8a]                                     ; $5c89: $f0 $8a
	ldh a, [rHDMA2]                                  ; $5c8b: $f0 $52
	jr c, jr_08c_5cd4                                ; $5c8d: $38 $45

	and b                                            ; $5c8f: $a0
	ld b, [hl]                                       ; $5c90: $46
	inc [hl]                                         ; $5c91: $34
	ld b, [hl]                                       ; $5c92: $46
	ld d, a                                          ; $5c93: $57
	ld d, e                                          ; $5c94: $53
	ld c, c                                          ; $5c95: $49
	add hl, sp                                       ; $5c96: $39
	xor b                                            ; $5c97: $a8
	ldh a, [$29]                                     ; $5c98: $f0 $29
	ld a, $38                                        ; $5c9a: $3e $38
	ld a, [hl-]                                      ; $5c9c: $3a
	and b                                            ; $5c9d: $a0
	cpl                                              ; $5c9e: $2f
	ld [$09d7], a                                    ; $5c9f: $ea $d7 $09
	cpl                                              ; $5ca2: $2f
	ld b, e                                          ; $5ca3: $43
	or h                                             ; $5ca4: $b4
	xor h                                            ; $5ca5: $ac
	ld [$344f], a                                    ; $5ca6: $ea $4f $34
	db $ec                                           ; $5ca9: $ec
	inc c                                            ; $5caa: $0c
	and c                                            ; $5cab: $a1
	xor $1f                                          ; $5cac: $ee $1f
	xor h                                            ; $5cae: $ac
	ld l, [hl]                                       ; $5caf: $6e
	dec sp                                           ; $5cb0: $3b
	ccf                                              ; $5cb1: $3f
	ld l, h                                          ; $5cb2: $6c
	ccf                                              ; $5cb3: $3f
	and b                                            ; $5cb4: $a0
	cpl                                              ; $5cb5: $2f
	ld b, e                                          ; $5cb6: $43
	xor $2d                                          ; $5cb7: $ee $2d
	inc [hl]                                         ; $5cb9: $34
	db $ed                                           ; $5cba: $ed
	ld e, e                                          ; $5cbb: $5b
	rst SubAFromDE                                          ; $5cbc: $df
	ld b, l                                          ; $5cbd: $45
	and b                                            ; $5cbe: $a0
	ld b, [hl]                                       ; $5cbf: $46
	ld d, a                                          ; $5cc0: $57
	ld d, e                                          ; $5cc1: $53
	ld c, c                                          ; $5cc2: $49
	add hl, sp                                       ; $5cc3: $39
	xor b                                            ; $5cc4: $a8
	ldh a, [$29]                                     ; $5cc5: $f0 $29
	ld a, $38                                        ; $5cc7: $3e $38
	and b                                            ; $5cc9: $a0
	cpl                                              ; $5cca: $2f
	ld b, e                                          ; $5ccb: $43
	or h                                             ; $5ccc: $b4
	xor h                                            ; $5ccd: $ac
	ldh a, [c]                                       ; $5cce: $f2
	inc [hl]                                         ; $5ccf: $34
	ldh a, [c]                                       ; $5cd0: $f2
	ld h, d                                          ; $5cd1: $62
	ldh a, [rSB]                                     ; $5cd2: $f0 $01

jr_08c_5cd4:
	ld c, d                                          ; $5cd4: $4a
	ld c, a                                          ; $5cd5: $4f
	inc [hl]                                         ; $5cd6: $34
	db $ec                                           ; $5cd7: $ec
	inc c                                            ; $5cd8: $0c
	and c                                            ; $5cd9: $a1
	jr c, jr_08c_5d14                                ; $5cda: $38 $38

	ld b, d                                          ; $5cdc: $42
	ld d, e                                          ; $5cdd: $53
	pop af                                           ; $5cde: $f1
	inc b                                            ; $5cdf: $04
	ld c, l                                          ; $5ce0: $4d
	ld c, [hl]                                       ; $5ce1: $4e
	ld c, c                                          ; $5ce2: $49
	jr c, jr_08c_5d1d                                ; $5ce3: $38 $38

	ld c, h                                          ; $5ce5: $4c
	and b                                            ; $5ce6: $a0
	cpl                                              ; $5ce7: $2f
	ld b, e                                          ; $5ce8: $43
	pop af                                           ; $5ce9: $f1
	inc b                                            ; $5cea: $04
	ld c, l                                          ; $5ceb: $4d
	dec a                                            ; $5cec: $3d
	ld d, b                                          ; $5ced: $50
	inc de                                           ; $5cee: $13
	db $ed                                           ; $5cef: $ed
	ld e, e                                          ; $5cf0: $5b
	rst SubAFromDE                                          ; $5cf1: $df
	ld c, h                                          ; $5cf2: $4c
	and b                                            ; $5cf3: $a0
	cpl                                              ; $5cf4: $2f
	ld b, e                                          ; $5cf5: $43
	xor $2d                                          ; $5cf6: $ee $2d
	inc [hl]                                         ; $5cf8: $34
	db $ed                                           ; $5cf9: $ed
	xor c                                            ; $5cfa: $a9
	and b                                            ; $5cfb: $a0
	ld b, [hl]                                       ; $5cfc: $46
	ld d, a                                          ; $5cfd: $57
	ld d, e                                          ; $5cfe: $53
	ld c, c                                          ; $5cff: $49
	add hl, sp                                       ; $5d00: $39
	xor b                                            ; $5d01: $a8
	ld l, a                                          ; $5d02: $6f
	ld c, a                                          ; $5d03: $4f
	ld l, e                                          ; $5d04: $6b
	inc a                                            ; $5d05: $3c
	ld l, [hl]                                       ; $5d06: $6e
	ld e, a                                          ; $5d07: $5f
	add hl, sp                                       ; $5d08: $39
	inc a                                            ; $5d09: $3c
	ld a, [hl-]                                      ; $5d0a: $3a
	and b                                            ; $5d0b: $a0
	cpl                                              ; $5d0c: $2f
	ld b, e                                          ; $5d0d: $43
	ld [hl], b                                       ; $5d0e: $70
	ld [hl], c                                       ; $5d0f: $71
	ld b, c                                          ; $5d10: $41
	ld c, b                                          ; $5d11: $48
	inc [hl]                                         ; $5d12: $34
	db $ed                                           ; $5d13: $ed

jr_08c_5d14:
	xor c                                            ; $5d14: $a9
	xor b                                            ; $5d15: $a8
	ld l, e                                          ; $5d16: $6b
	ld c, a                                          ; $5d17: $4f
	pop af                                           ; $5d18: $f1
	inc b                                            ; $5d19: $04
	ld c, l                                          ; $5d1a: $4d
	ld a, [hl-]                                      ; $5d1b: $3a
	inc a                                            ; $5d1c: $3c

jr_08c_5d1d:
	dec sp                                           ; $5d1d: $3b
	dec a                                            ; $5d1e: $3d
	ld b, l                                          ; $5d1f: $45
	and b                                            ; $5d20: $a0
	ldh a, [$80]                                     ; $5d21: $f0 $80
	ldh a, [$c5]                                     ; $5d23: $f0 $c5
	pop af                                           ; $5d25: $f1
	ld a, [$383e]                                    ; $5d26: $fa $3e $38
	ld b, l                                          ; $5d29: $45
	ld c, h                                          ; $5d2a: $4c
	and b                                            ; $5d2b: $a0
	cpl                                              ; $5d2c: $2f
	ld b, e                                          ; $5d2d: $43
	ld l, d                                          ; $5d2e: $6a
	ldh a, [rAUD1HIGH]                               ; $5d2f: $f0 $14
	ld c, e                                          ; $5d31: $4b
	xor h                                            ; $5d32: $ac
	jp hl                                            ; $5d33: $e9


	dec [hl]                                         ; $5d34: $35
	xor b                                            ; $5d35: $a8
	ld [$a038], a                                    ; $5d36: $ea $38 $a0
	xor $1f                                          ; $5d39: $ee $1f
	inc [hl]                                         ; $5d3b: $34
	ld [$a0a9], a                                    ; $5d3c: $ea $a9 $a0
	db $ec                                           ; $5d3f: $ec
	inc de                                           ; $5d40: $13
	db $ed                                           ; $5d41: $ed
	adc l                                            ; $5d42: $8d
	ld b, h                                          ; $5d43: $44
	dec sp                                           ; $5d44: $3b
	dec a                                            ; $5d45: $3d
	ld c, h                                          ; $5d46: $4c
	and b                                            ; $5d47: $a0
	cpl                                              ; $5d48: $2f
	add sp, $2e                                      ; $5d49: $e8 $2e
	add hl, bc                                       ; $5d4b: $09
	ld b, b                                          ; $5d4c: $40
	add hl, sp                                       ; $5d4d: $39
	jr c, jr_08c_5d89                                ; $5d4e: $38 $39

	db $ed                                           ; $5d50: $ed
	adc l                                            ; $5d51: $8d
	ld a, [hl-]                                      ; $5d52: $3a
	ld b, c                                          ; $5d53: $41
	ld b, h                                          ; $5d54: $44
	xor b                                            ; $5d55: $a8
	db $ed                                           ; $5d56: $ed
	ld c, c                                          ; $5d57: $49
	ld c, h                                          ; $5d58: $4c
	xor l                                            ; $5d59: $ad
	xor $06                                          ; $5d5a: $ee $06
	ld b, a                                          ; $5d5c: $47
	ld [hl], d                                       ; $5d5d: $72
	ld c, l                                          ; $5d5e: $4d
	ccf                                              ; $5d5f: $3f
	ldh a, [$29]                                     ; $5d60: $f0 $29
	ld a, $38                                        ; $5d62: $3e $38
	ld a, [hl-]                                      ; $5d64: $3a
	ld c, b                                          ; $5d65: $48
	and b                                            ; $5d66: $a0
	ld a, [hl]                                       ; $5d67: $7e
	ld d, l                                          ; $5d68: $55
	ldh a, [$2d]                                     ; $5d69: $f0 $2d
	dec sp                                           ; $5d6b: $3b
	ccf                                              ; $5d6c: $3f
	ld c, [hl]                                       ; $5d6d: $4e
	ld c, h                                          ; $5d6e: $4c
	xor b                                            ; $5d6f: $a8
	ld [$acab], a                                    ; $5d70: $ea $ab $ac
	db $ed                                           ; $5d73: $ed
	ld c, c                                          ; $5d74: $49
	ld c, h                                          ; $5d75: $4c
	ld c, b                                          ; $5d76: $48
	and b                                            ; $5d77: $a0
	db $ed                                           ; $5d78: $ed
	ld [hl], c                                       ; $5d79: $71
	ld d, d                                          ; $5d7a: $52
	ld c, d                                          ; $5d7b: $4a
	xor h                                            ; $5d7c: $ac
	ld a, [hl]                                       ; $5d7d: $7e
	ld d, l                                          ; $5d7e: $55
	ldh a, [$2d]                                     ; $5d7f: $f0 $2d
	dec sp                                           ; $5d81: $3b
	ccf                                              ; $5d82: $3f
	ld c, [hl]                                       ; $5d83: $4e
	ld c, h                                          ; $5d84: $4c
	and b                                            ; $5d85: $a0
	cpl                                              ; $5d86: $2f
	add sp, -$25                                     ; $5d87: $e8 $db

jr_08c_5d89:
	add hl, bc                                       ; $5d89: $09
	db $ec                                           ; $5d8a: $ec
	ld d, d                                          ; $5d8b: $52
	ld c, a                                          ; $5d8c: $4f
	db $ec                                           ; $5d8d: $ec
	ld [$54ac], sp                                   ; $5d8e: $08 $ac $54
	ld c, l                                          ; $5d91: $4d
	ld b, a                                          ; $5d92: $47
	di                                               ; $5d93: $f3
	rla                                              ; $5d94: $17
	ldh a, [$8c]                                     ; $5d95: $f0 $8c
	ld c, [hl]                                       ; $5d97: $4e
	ld c, c                                          ; $5d98: $49
	xor h                                            ; $5d99: $ac
	ret                                              ; $5d9a: $c9


	ld c, b                                          ; $5d9b: $48
	and b                                            ; $5d9c: $a0
	ld l, a                                          ; $5d9d: $6f
	ld c, e                                          ; $5d9e: $4b
	inc [hl]                                         ; $5d9f: $34
	db $ec                                           ; $5da0: $ec
	xor $42                                          ; $5da1: $ee $42
	ldh a, [$38]                                     ; $5da3: $f0 $38
	ld d, e                                          ; $5da5: $53
	inc de                                           ; $5da6: $13
	adc e                                            ; $5da7: $8b
	ld e, h                                          ; $5da8: $5c
	inc a                                            ; $5da9: $3c
	ld a, [hl-]                                      ; $5daa: $3a
	and b                                            ; $5dab: $a0
	db $ec                                           ; $5dac: $ec
	ld d, d                                          ; $5dad: $52
	ld c, a                                          ; $5dae: $4f
	adc e                                            ; $5daf: $8b
	ld e, h                                          ; $5db0: $5c
	inc de                                           ; $5db1: $13
	ld b, h                                          ; $5db2: $44
	ld e, l                                          ; $5db3: $5d
	ld e, d                                          ; $5db4: $5a
	inc [hl]                                         ; $5db5: $34
	db $ec                                           ; $5db6: $ec
	xor $42                                          ; $5db7: $ee $42
	ldh a, [$38]                                     ; $5db9: $f0 $38
	ld d, e                                          ; $5dbb: $53
	inc de                                           ; $5dbc: $13
	ld c, a                                          ; $5dbd: $4f
	dec sp                                           ; $5dbe: $3b
	ld c, c                                          ; $5dbf: $49
	adc e                                            ; $5dc0: $8b
	ld e, h                                          ; $5dc1: $5c
	ld b, h                                          ; $5dc2: $44
	ld a, [hl-]                                      ; $5dc3: $3a
	ld c, b                                          ; $5dc4: $48
	and b                                            ; $5dc5: $a0
	cpl                                              ; $5dc6: $2f
	jp hl                                            ; $5dc7: $e9


	or a                                             ; $5dc8: $b7
	add hl, bc                                       ; $5dc9: $09
	xor $1f                                          ; $5dca: $ee $1f
	xor l                                            ; $5dcc: $ad
	xor $06                                          ; $5dcd: $ee $06
	ld b, a                                          ; $5dcf: $47
	ld [hl], d                                       ; $5dd0: $72
	ld c, l                                          ; $5dd1: $4d
	ccf                                              ; $5dd2: $3f
	ld b, l                                          ; $5dd3: $45
	inc a                                            ; $5dd4: $3c
	dec sp                                           ; $5dd5: $3b
	dec a                                            ; $5dd6: $3d
	and b                                            ; $5dd7: $a0
	xor $1f                                          ; $5dd8: $ee $1f
	inc [hl]                                         ; $5dda: $34
	ld [hl], d                                       ; $5ddb: $72
	ld c, c                                          ; $5ddc: $49
	ld c, l                                          ; $5ddd: $4d
	ld h, c                                          ; $5dde: $61
	ld d, [hl]                                       ; $5ddf: $56
	add hl, sp                                       ; $5de0: $39
	ld c, h                                          ; $5de1: $4c
	and b                                            ; $5de2: $a0
	xor $1f                                          ; $5de3: $ee $1f
	inc [hl]                                         ; $5de5: $34
	ldh a, [$57]                                     ; $5de6: $f0 $57
	ldh a, [$ae]                                     ; $5de8: $f0 $ae
	ld c, h                                          ; $5dea: $4c
	ld c, b                                          ; $5deb: $48
	and b                                            ; $5dec: $a0
	add hl, sp                                       ; $5ded: $39
	ld d, d                                          ; $5dee: $52
	ld d, l                                          ; $5def: $55
	pop af                                           ; $5df0: $f1
	ld e, e                                          ; $5df1: $5b
	ld c, l                                          ; $5df2: $4d
	ld c, [hl]                                       ; $5df3: $4e
	ld b, d                                          ; $5df4: $42
	and c                                            ; $5df5: $a1
	cpl                                              ; $5df6: $2f
	add sp, $39                                      ; $5df7: $e8 $39
	add hl, bc                                       ; $5df9: $09
	db $ec                                           ; $5dfa: $ec
	cp c                                             ; $5dfb: $b9
	xor b                                            ; $5dfc: $a8
	ret                                              ; $5dfd: $c9


	inc [hl]                                         ; $5dfe: $34
	db $ec                                           ; $5dff: $ec
	db $ed                                           ; $5e00: $ed
	ld c, a                                          ; $5e01: $4f
	ld d, b                                          ; $5e02: $50
	jr c, jr_08c_5e42                                ; $5e03: $38 $3d

	jr c, @+$15                                      ; $5e05: $38 $13

	ld c, c                                          ; $5e07: $49
	ld d, h                                          ; $5e08: $54
	ld e, a                                          ; $5e09: $5f
	ld d, e                                          ; $5e0a: $53
	ld b, [hl]                                       ; $5e0b: $46
	ld c, [hl]                                       ; $5e0c: $4e
	ld b, c                                          ; $5e0d: $41
	ld b, h                                          ; $5e0e: $44
	and b                                            ; $5e0f: $a0
	ld b, b                                          ; $5e10: $40
	ld c, l                                          ; $5e11: $4d
	ld e, e                                          ; $5e12: $5b
	ld d, [hl]                                       ; $5e13: $56
	xor h                                            ; $5e14: $ac
	db $ed                                           ; $5e15: $ed
	or c                                             ; $5e16: $b1
	ld a, $52                                        ; $5e17: $3e $52
	ld a, $66                                        ; $5e19: $3e $66
	add hl, sp                                       ; $5e1b: $39
	inc a                                            ; $5e1c: $3c
	and c                                            ; $5e1d: $a1
	ld b, b                                          ; $5e1e: $40
	ld c, l                                          ; $5e1f: $4d
	ld e, e                                          ; $5e20: $5b
	ld d, [hl]                                       ; $5e21: $56
	xor h                                            ; $5e22: $ac
	xor $06                                          ; $5e23: $ee $06
	ld b, a                                          ; $5e25: $47
	pop af                                           ; $5e26: $f1
	ld e, e                                          ; $5e27: $5b
	ld d, a                                          ; $5e28: $57
	ld d, d                                          ; $5e29: $52
	ld a, $66                                        ; $5e2a: $3e $66
	add hl, sp                                       ; $5e2c: $39
	and b                                            ; $5e2d: $a0
	cpl                                              ; $5e2e: $2f
	db $eb                                           ; $5e2f: $eb
	sub e                                            ; $5e30: $93
	xor h                                            ; $5e31: $ac
	add sp, -$6e                                     ; $5e32: $e8 $92
	xor b                                            ; $5e34: $a8
	db $eb                                           ; $5e35: $eb
	sub h                                            ; $5e36: $94
	pop af                                           ; $5e37: $f1
	ld e, e                                          ; $5e38: $5b
	ld c, l                                          ; $5e39: $4d
	ld a, [hl-]                                      ; $5e3a: $3a
	jr c, jr_08c_5e7e                                ; $5e3b: $38 $41

	ld b, h                                          ; $5e3d: $44
	and e                                            ; $5e3e: $a3
	cpl                                              ; $5e3f: $2f
	add sp, $44                                      ; $5e40: $e8 $44

jr_08c_5e42:
	ld c, b                                          ; $5e42: $48
	add hl, bc                                       ; $5e43: $09
	ld e, [hl]                                       ; $5e44: $5e
	dec sp                                           ; $5e45: $3b
	xor c                                            ; $5e46: $a9
	rst JumpTable                                          ; $5e47: $c7
	ld c, h                                          ; $5e48: $4c
	xor b                                            ; $5e49: $a8
	ld a, [hl]                                       ; $5e4a: $7e
	ld d, l                                          ; $5e4b: $55
	ldh a, [rTAC]                                    ; $5e4c: $f0 $07
	inc a                                            ; $5e4e: $3c
	ld d, b                                          ; $5e4f: $50
	ld a, [hl-]                                      ; $5e50: $3a
	jr c, jr_08c_5eb0                                ; $5e51: $38 $5d

	ld e, d                                          ; $5e53: $5a
	ld c, b                                          ; $5e54: $48
	and b                                            ; $5e55: $a0
	pop af                                           ; $5e56: $f1
	ld e, e                                          ; $5e57: $5b
	ld c, l                                          ; $5e58: $4d
	ld a, [hl-]                                      ; $5e59: $3a
	jr c, @+$3c                                      ; $5e5a: $38 $3a

	ld d, b                                          ; $5e5c: $50
	xor h                                            ; $5e5d: $ac
	pop af                                           ; $5e5e: $f1
	ld e, e                                          ; $5e5f: $5b
	ld c, l                                          ; $5e60: $4d
	ld a, [hl-]                                      ; $5e61: $3a
	jr c, jr_08c_5e9f                                ; $5e62: $38 $3b

	ccf                                              ; $5e64: $3f
	inc de                                           ; $5e65: $13
	add d                                            ; $5e66: $82
	ld e, [hl]                                       ; $5e67: $5e
	ld a, e                                          ; $5e68: $7b
	jr c, jr_08c_5ea3                                ; $5e69: $38 $38

	ld b, d                                          ; $5e6b: $42
	ld b, a                                          ; $5e6c: $47
	ld c, b                                          ; $5e6d: $48
	and b                                            ; $5e6e: $a0
	ld b, b                                          ; $5e6f: $40
	add hl, sp                                       ; $5e70: $39
	xor b                                            ; $5e71: $a8
	pop af                                           ; $5e72: $f1
	ld e, e                                          ; $5e73: $5b
	ld c, l                                          ; $5e74: $4d
	ld a, [hl-]                                      ; $5e75: $3a
	jr c, jr_08c_5eb9                                ; $5e76: $38 $41

	ld b, h                                          ; $5e78: $44
	ld c, b                                          ; $5e79: $48
	and b                                            ; $5e7a: $a0
	cpl                                              ; $5e7b: $2f
	add sp, -$55                                     ; $5e7c: $e8 $ab

jr_08c_5e7e:
	add hl, bc                                       ; $5e7e: $09
	ld b, b                                          ; $5e7f: $40
	ld c, l                                          ; $5e80: $4d
	ld e, e                                          ; $5e81: $5b
	ld d, [hl]                                       ; $5e82: $56
	xor h                                            ; $5e83: $ac
	ld c, a                                          ; $5e84: $4f
	dec sp                                           ; $5e85: $3b
	ld c, c                                          ; $5e86: $49
	pop af                                           ; $5e87: $f1
	ld e, e                                          ; $5e88: $5b
	ld c, l                                          ; $5e89: $4d
	ld c, [hl]                                       ; $5e8a: $4e
	ld b, l                                          ; $5e8b: $45
	add hl, sp                                       ; $5e8c: $39
	ld b, a                                          ; $5e8d: $47
	inc de                                           ; $5e8e: $13
	ldh a, [$b6]                                     ; $5e8f: $f0 $b6
	di                                               ; $5e91: $f3
	ld c, b                                          ; $5e92: $48
	ld a, $52                                        ; $5e93: $3e $52
	ld a, $66                                        ; $5e95: $3e $66
	add hl, sp                                       ; $5e97: $39
	and b                                            ; $5e98: $a0
	sub d                                            ; $5e99: $92
	adc [hl]                                         ; $5e9a: $8e
	dec sp                                           ; $5e9b: $3b
	ccf                                              ; $5e9c: $3f
	xor h                                            ; $5e9d: $ac
	ld c, a                                          ; $5e9e: $4f

jr_08c_5e9f:
	dec sp                                           ; $5e9f: $3b
	ld c, c                                          ; $5ea0: $49
	pop af                                           ; $5ea1: $f1
	ld e, e                                          ; $5ea2: $5b

jr_08c_5ea3:
	ld c, l                                          ; $5ea3: $4d
	ld c, [hl]                                       ; $5ea4: $4e
	ld b, l                                          ; $5ea5: $45
	add hl, sp                                       ; $5ea6: $39
	ld b, a                                          ; $5ea7: $47
	inc de                                           ; $5ea8: $13
	ld a, [hl-]                                      ; $5ea9: $3a
	ld d, b                                          ; $5eaa: $50
	ld a, [hl-]                                      ; $5eab: $3a
	ld e, h                                          ; $5eac: $5c
	ld d, [hl]                                       ; $5ead: $56
	ld c, h                                          ; $5eae: $4c
	and b                                            ; $5eaf: $a0

jr_08c_5eb0:
	db $eb                                           ; $5eb0: $eb
	sub l                                            ; $5eb1: $95
	inc de                                           ; $5eb2: $13
	sbc l                                            ; $5eb3: $9d
	ld h, c                                          ; $5eb4: $61
	ld d, [hl]                                       ; $5eb5: $56
	sbc l                                            ; $5eb6: $9d
	ld h, c                                          ; $5eb7: $61
	ld d, [hl]                                       ; $5eb8: $56

jr_08c_5eb9:
	ld c, h                                          ; $5eb9: $4c
	and b                                            ; $5eba: $a0
	cpl                                              ; $5ebb: $2f
	pop af                                           ; $5ebc: $f1
	ld [hl], $7b                                     ; $5ebd: $36 $7b
	ld a, [hl-]                                      ; $5ebf: $3a
	jr c, jr_08c_5f07                                ; $5ec0: $38 $45

	add hl, sp                                       ; $5ec2: $39
	ld b, a                                          ; $5ec3: $47
	ld a, a                                          ; $5ec4: $7f
	ld h, d                                          ; $5ec5: $62
	add b                                            ; $5ec6: $80
	ld e, l                                          ; $5ec7: $5d
	ld a, [hl-]                                      ; $5ec8: $3a
	jr c, jr_08c_5f14                                ; $5ec9: $38 $49

	add hl, bc                                       ; $5ecb: $09
	call c, $dea8                                    ; $5ecc: $dc $a8 $de
	ld a, a                                          ; $5ecf: $7f
	ld h, d                                          ; $5ed0: $62
	add b                                            ; $5ed1: $80
	ld e, l                                          ; $5ed2: $5d
	ld a, [hl-]                                      ; $5ed3: $3a
	jr c, jr_08c_5f1f                                ; $5ed4: $38 $49

	and b                                            ; $5ed6: $a0
	cpl                                              ; $5ed7: $2f
	pop af                                           ; $5ed8: $f1
	ld [hl], $7b                                     ; $5ed9: $36 $7b
	ld a, [hl-]                                      ; $5edb: $3a
	ld e, l                                          ; $5edc: $5d
	ld c, l                                          ; $5edd: $4d
	ld a, e                                          ; $5ede: $7b
	jr c, jr_08c_5f19                                ; $5edf: $38 $38

	ld b, c                                          ; $5ee1: $41
	ld b, h                                          ; $5ee2: $44
	ld b, l                                          ; $5ee3: $45
	add hl, bc                                       ; $5ee4: $09
	ld b, b                                          ; $5ee5: $40
	ld c, l                                          ; $5ee6: $4d
	ld c, e                                          ; $5ee7: $4b
	ld h, e                                          ; $5ee8: $63

jr_08c_5ee9:
	inc a                                            ; $5ee9: $3c
	dec sp                                           ; $5eea: $3b
	ccf                                              ; $5eeb: $3f
	ld c, [hl]                                       ; $5eec: $4e
	ld e, l                                          ; $5eed: $5d
	ld e, d                                          ; $5eee: $5a
	ld c, b                                          ; $5eef: $48
	and b                                            ; $5ef0: $a0
	cpl                                              ; $5ef1: $2f
	pop af                                           ; $5ef2: $f1
	ld [hl], $41                                     ; $5ef3: $36 $41
	ld c, d                                          ; $5ef5: $4a
	ld c, a                                          ; $5ef6: $4f
	inc [hl]                                         ; $5ef7: $34
	halt                                             ; $5ef8: $76
	ld b, d                                          ; $5ef9: $42
	ld a, c                                          ; $5efa: $79
	jr c, jr_08c_5ee9                                ; $5efb: $38 $ec

	ret c                                            ; $5efd: $d8

	ld b, l                                          ; $5efe: $45
	add hl, bc                                       ; $5eff: $09
	ld b, b                                          ; $5f00: $40
	ld b, c                                          ; $5f01: $41
	ld a, [hl-]                                      ; $5f02: $3a
	sbc d                                            ; $5f03: $9a
	xor h                                            ; $5f04: $ac
	ldh a, [$a4]                                     ; $5f05: $f0 $a4

jr_08c_5f07:
	ld e, [hl]                                       ; $5f07: $5e
	ld c, [hl]                                       ; $5f08: $4e
	ld h, e                                          ; $5f09: $63
	ld e, l                                          ; $5f0a: $5d
	ld a, [hl-]                                      ; $5f0b: $3a
	jr c, jr_08c_5f58                                ; $5f0c: $38 $4a

	ld a, $66                                        ; $5f0e: $3e $66
	add hl, sp                                       ; $5f10: $39
	and b                                            ; $5f11: $a0
	ld b, b                                          ; $5f12: $40
	ld c, l                                          ; $5f13: $4d

jr_08c_5f14:
	ld e, e                                          ; $5f14: $5b
	ld d, [hl]                                       ; $5f15: $56
	xor h                                            ; $5f16: $ac
	ldh a, [$0a]                                     ; $5f17: $f0 $0a

jr_08c_5f19:
	pop af                                           ; $5f19: $f1
	jr @-$0d                                         ; $5f1a: $18 $f1

	ld e, e                                          ; $5f1c: $5b
	ld d, a                                          ; $5f1d: $57
	ld d, d                                          ; $5f1e: $52

jr_08c_5f1f:
	ld a, $66                                        ; $5f1f: $3e $66
	add hl, sp                                       ; $5f21: $39
	and b                                            ; $5f22: $a0
	cpl                                              ; $5f23: $2f
	ld b, e                                          ; $5f24: $43
	ld b, b                                          ; $5f25: $40
	add hl, sp                                       ; $5f26: $39

jr_08c_5f27:
	ld a, $45                                        ; $5f27: $3e $45
	add hl, sp                                       ; $5f29: $39
	and b                                            ; $5f2a: $a0
	add e                                            ; $5f2b: $83
	ldh a, [$2f]                                     ; $5f2c: $f0 $2f
	ld e, c                                          ; $5f2e: $59
	ld c, e                                          ; $5f2f: $4b
	inc de                                           ; $5f30: $13
	ld e, d                                          ; $5f31: $5a
	ld b, d                                          ; $5f32: $42
	sbc l                                            ; $5f33: $9d
	ld d, b                                          ; $5f34: $50
	jr c, jr_08c_5f27                                ; $5f35: $38 $f0

	ld a, $f0                                        ; $5f37: $3e $f0
	dec bc                                           ; $5f39: $0b
	ld a, [hl-]                                      ; $5f3a: $3a
	ld b, d                                          ; $5f3b: $42
	and c                                            ; $5f3c: $a1
	cpl                                              ; $5f3d: $2f
	add sp, $64                                      ; $5f3e: $e8 $64
	add hl, bc                                       ; $5f40: $09
	ld b, h                                          ; $5f41: $44
	dec sp                                           ; $5f42: $3b
	dec a                                            ; $5f43: $3d
	ld d, b                                          ; $5f44: $50
	xor h                                            ; $5f45: $ac
	xor $06                                          ; $5f46: $ee $06
	ld b, a                                          ; $5f48: $47
	ld [$47ef], a                                    ; $5f49: $ea $ef $47
	inc de                                           ; $5f4c: $13
	call Call_08c_40a0                               ; $5f4d: $cd $a0 $40
	ld c, l                                          ; $5f50: $4d
	ld e, e                                          ; $5f51: $5b
	ld d, [hl]                                       ; $5f52: $56
	xor h                                            ; $5f53: $ac
	sub c                                            ; $5f54: $91
	ldh a, [$59]                                     ; $5f55: $f0 $59
	inc [hl]                                         ; $5f57: $34

jr_08c_5f58:
	ld [$45ef], a                                    ; $5f58: $ea $ef $45
	ld c, h                                          ; $5f5b: $4c
	and b                                            ; $5f5c: $a0
	ld b, b                                          ; $5f5d: $40
	ld c, l                                          ; $5f5e: $4d
	ld e, e                                          ; $5f5f: $5b
	ld d, [hl]                                       ; $5f60: $56
	xor h                                            ; $5f61: $ac
	ld [$47ef], a                                    ; $5f62: $ea $ef $47
	inc de                                           ; $5f65: $13
	ld [$a0a9], a                                    ; $5f66: $ea $a9 $a0
	cpl                                              ; $5f69: $2f
	pop af                                           ; $5f6a: $f1
	daa                                              ; $5f6b: $27
	ldh a, [rP1]                                     ; $5f6c: $f0 $00
	ld a, [hl-]                                      ; $5f6e: $3a
	ld d, b                                          ; $5f6f: $50
	ldh a, [$67]                                     ; $5f70: $f0 $67
	ldh a, [$9f]                                     ; $5f72: $f0 $9f
	ld b, [hl]                                       ; $5f74: $46
	ld c, [hl]                                       ; $5f75: $4e
	ld b, c                                          ; $5f76: $41
	ld b, h                                          ; $5f77: $44
	ld e, l                                          ; $5f78: $5d
	ld e, d                                          ; $5f79: $5a
	ld a, [hl-]                                      ; $5f7a: $3a
	add hl, bc                                       ; $5f7b: $09
	ld b, b                                          ; $5f7c: $40
	add hl, sp                                       ; $5f7d: $39
	xor c                                            ; $5f7e: $a9
	ld b, b                                          ; $5f7f: $40
	ld c, l                                          ; $5f80: $4d
	ld a, [hl-]                                      ; $5f81: $3a
	ld d, b                                          ; $5f82: $50
	inc [hl]                                         ; $5f83: $34
	ld [$62f0], a                                    ; $5f84: $ea $f0 $62
	inc de                                           ; $5f87: $13
	db $ec                                           ; $5f88: $ec
	ld c, $49                                        ; $5f89: $0e $49
	ld [$a0a9], a                                    ; $5f8b: $ea $a9 $a0
	ld b, b                                          ; $5f8e: $40
	ld c, l                                          ; $5f8f: $4d
	ld e, e                                          ; $5f90: $5b
	ld d, [hl]                                       ; $5f91: $56
	xor h                                            ; $5f92: $ac
	db $eb                                           ; $5f93: $eb
	inc [hl]                                         ; $5f94: $34
	inc a                                            ; $5f95: $3c
	ld d, b                                          ; $5f96: $50
	xor h                                            ; $5f97: $ac
	ld [$4cf0], a                                    ; $5f98: $ea $f0 $4c
	and b                                            ; $5f9b: $a0
	ld b, b                                          ; $5f9c: $40
	ld c, l                                          ; $5f9d: $4d
	ld e, e                                          ; $5f9e: $5b
	ld d, [hl]                                       ; $5f9f: $56
	xor h                                            ; $5fa0: $ac
	ld [$62f0], a                                    ; $5fa1: $ea $f0 $62
	inc de                                           ; $5fa4: $13
	ld [$3ca9], a                                    ; $5fa5: $ea $a9 $3c
	and b                                            ; $5fa8: $a0
	cpl                                              ; $5fa9: $2f
	ld c, c                                          ; $5faa: $49
	ld d, a                                          ; $5fab: $57
	ld b, [hl]                                       ; $5fac: $46
	ld e, [hl]                                       ; $5fad: $5e
	sbc h                                            ; $5fae: $9c
	pop af                                           ; $5faf: $f1
	ld e, e                                          ; $5fb0: $5b
	ld c, l                                          ; $5fb1: $4d
	ld c, [hl]                                       ; $5fb2: $4e
	ld b, l                                          ; $5fb3: $45
	add hl, bc                                       ; $5fb4: $09
	ld c, c                                          ; $5fb5: $49
	ld d, a                                          ; $5fb6: $57
	ld b, [hl]                                       ; $5fb7: $46
	ld e, [hl]                                       ; $5fb8: $5e
	sbc h                                            ; $5fb9: $9c
	xor h                                            ; $5fba: $ac
	ld [$62f1], a                                    ; $5fbb: $ea $f1 $62
	inc de                                           ; $5fbe: $13
	ld h, a                                          ; $5fbf: $67
	dec sp                                           ; $5fc0: $3b
	ccf                                              ; $5fc1: $3f
	ld l, h                                          ; $5fc2: $6c
	ld d, d                                          ; $5fc3: $52
	ld a, $66                                        ; $5fc4: $3e $66
	add hl, sp                                       ; $5fc6: $39
	and b                                            ; $5fc7: $a0
	ld b, b                                          ; $5fc8: $40
	ld c, l                                          ; $5fc9: $4d
	ld a, [hl-]                                      ; $5fca: $3a
	ld d, b                                          ; $5fcb: $50
	xor h                                            ; $5fcc: $ac
	ld [$47f1], a                                    ; $5fcd: $ea $f1 $47
	inc de                                           ; $5fd0: $13
	ld h, a                                          ; $5fd1: $67
	dec sp                                           ; $5fd2: $3b
	ccf                                              ; $5fd3: $3f
	ld l, h                                          ; $5fd4: $6c
	ld d, d                                          ; $5fd5: $52
	ld a, $66                                        ; $5fd6: $3e $66
	add hl, sp                                       ; $5fd8: $39
	inc a                                            ; $5fd9: $3c
	and c                                            ; $5fda: $a1
	ld b, b                                          ; $5fdb: $40
	ld c, l                                          ; $5fdc: $4d
	ld e, e                                          ; $5fdd: $5b
	ld d, [hl]                                       ; $5fde: $56
	xor h                                            ; $5fdf: $ac
	ld [$4cf1], a                                    ; $5fe0: $ea $f1 $4c
	and b                                            ; $5fe3: $a0
	ld c, c                                          ; $5fe4: $49
	ld d, h                                          ; $5fe5: $54
	ld e, a                                          ; $5fe6: $5f
	ld c, d                                          ; $5fe7: $4a
	inc [hl]                                         ; $5fe8: $34
	ld e, d                                          ; $5fe9: $5a
	add hl, sp                                       ; $5fea: $39
	xor c                                            ; $5feb: $a9
	ld d, h                                          ; $5fec: $54
	ld b, d                                          ; $5fed: $42
	ld [$a0e2], a                                    ; $5fee: $ea $e2 $a0
	cpl                                              ; $5ff1: $2f
	add sp, -$49                                     ; $5ff2: $e8 $b7
	add hl, bc                                       ; $5ff4: $09
	ld e, [hl]                                       ; $5ff5: $5e
	dec sp                                           ; $5ff6: $3b
	inc [hl]                                         ; $5ff7: $34
	ld b, [hl]                                       ; $5ff8: $46
	ld d, a                                          ; $5ff9: $57
	ld d, e                                          ; $5ffa: $53
	ld c, c                                          ; $5ffb: $49
	add hl, sp                                       ; $5ffc: $39
	xor b                                            ; $5ffd: $a8
	db $ec                                           ; $5ffe: $ec
	ld d, b                                          ; $5fff: $50
	inc [hl]                                         ; $6000: $34
	ldh a, [$29]                                     ; $6001: $f0 $29
	ld a, $38                                        ; $6003: $3e $38
	ld h, e                                          ; $6005: $63
	and b                                            ; $6006: $a0
	ld b, [hl]                                       ; $6007: $46
	ld d, a                                          ; $6008: $57
	ld d, e                                          ; $6009: $53
	ld c, c                                          ; $600a: $49
	add hl, sp                                       ; $600b: $39
	xor h                                            ; $600c: $ac
	pop af                                           ; $600d: $f1
	db $d3                                           ; $600e: $d3
	ld [hl], c                                       ; $600f: $71
	ccf                                              ; $6010: $3f
	ld d, l                                          ; $6011: $55
	ld c, l                                          ; $6012: $4d
	ccf                                              ; $6013: $3f
	xor b                                            ; $6014: $a8
	db $ec                                           ; $6015: $ec
	ld d, b                                          ; $6016: $50
	inc [hl]                                         ; $6017: $34
	ldh a, [$29]                                     ; $6018: $f0 $29
	ld a, $38                                        ; $601a: $3e $38
	ld h, e                                          ; $601c: $63
	and b                                            ; $601d: $a0
	adc b                                            ; $601e: $88
	sub c                                            ; $601f: $91
	xor c                                            ; $6020: $a9
	ldh a, [$29]                                     ; $6021: $f0 $29
	ld a, $38                                        ; $6023: $3e $38
	ld a, [hl-]                                      ; $6025: $3a
	and b                                            ; $6026: $a0
	cpl                                              ; $6027: $2f
	ld [$0964], a                                    ; $6028: $ea $64 $09
	rst JumpTable                                          ; $602b: $c7
	ld c, b                                          ; $602c: $48
	xor c                                            ; $602d: $a9
	ldh a, [rPCM12]                                  ; $602e: $f0 $76
	ldh a, [rTMA]                                    ; $6030: $f0 $06
	ld h, e                                          ; $6032: $63
	ld a, [hl-]                                      ; $6033: $3a
	jr c, jr_08c_6072                                ; $6034: $38 $3c

	ld a, [hl-]                                      ; $6036: $3a
	ld [hl], h                                       ; $6037: $74
	ld c, b                                          ; $6038: $48
	and b                                            ; $6039: $a0
	db $ed                                           ; $603a: $ed
	ld e, l                                          ; $603b: $5d
	ld c, d                                          ; $603c: $4a
	ld c, e                                          ; $603d: $4b
	xor h                                            ; $603e: $ac
	ld a, a                                          ; $603f: $7f
	ld b, a                                          ; $6040: $47
	sub [hl]                                         ; $6041: $96
	dec sp                                           ; $6042: $3b
	ccf                                              ; $6043: $3f
	dec a                                            ; $6044: $3d
	ld b, c                                          ; $6045: $41
	inc de                                           ; $6046: $13
	ld b, h                                          ; $6047: $44
	ld e, l                                          ; $6048: $5d
	ld e, d                                          ; $6049: $5a
	ld a, [hl-]                                      ; $604a: $3a
	ld c, b                                          ; $604b: $48
	and b                                            ; $604c: $a0
	ret                                              ; $604d: $c9


	inc [hl]                                         ; $604e: $34
	db $ec                                           ; $604f: $ec
	ld h, d                                          ; $6050: $62
	xor l                                            ; $6051: $ad
	ldh a, [rPCM12]                                  ; $6052: $f0 $76
	ldh a, [rTMA]                                    ; $6054: $f0 $06
	ld h, e                                          ; $6056: $63
	ld a, [hl-]                                      ; $6057: $3a
	jr c, @+$3e                                      ; $6058: $38 $3c

	ld a, [hl-]                                      ; $605a: $3a
	ld c, b                                          ; $605b: $48
	and b                                            ; $605c: $a0
	cpl                                              ; $605d: $2f
	jp hl                                            ; $605e: $e9


	inc bc                                           ; $605f: $03
	add hl, bc                                       ; $6060: $09
	ld b, b                                          ; $6061: $40
	inc [hl]                                         ; $6062: $34
	ld b, b                                          ; $6063: $40
	ld b, c                                          ; $6064: $41
	ld a, [hl-]                                      ; $6065: $3a
	ld d, h                                          ; $6066: $54
	ld c, c                                          ; $6067: $49
	ld a, [hl-]                                      ; $6068: $3a
	jr c, jr_08c_60b0                                ; $6069: $38 $45

	xor b                                            ; $606b: $a8
	inc a                                            ; $606c: $3c
	dec sp                                           ; $606d: $3b
	ld d, h                                          ; $606e: $54
	ld b, h                                          ; $606f: $44
	ld e, l                                          ; $6070: $5d
	ld b, h                                          ; $6071: $44

jr_08c_6072:
	inc a                                            ; $6072: $3c
	ld d, b                                          ; $6073: $50
	ld c, b                                          ; $6074: $48
	and b                                            ; $6075: $a0
	inc a                                            ; $6076: $3c
	dec sp                                           ; $6077: $3b
	ld d, h                                          ; $6078: $54
	ld b, h                                          ; $6079: $44
	ld e, l                                          ; $607a: $5d
	ld b, l                                          ; $607b: $45
	xor b                                            ; $607c: $a8
	ld c, d                                          ; $607d: $4a
	ld c, a                                          ; $607e: $4f
	inc [hl]                                         ; $607f: $34
	ret                                              ; $6080: $c9


	ldh a, [$29]                                     ; $6081: $f0 $29
	ld a, $38                                        ; $6083: $3e $38
	ld a, [hl-]                                      ; $6085: $3a
	and b                                            ; $6086: $a0
	ld b, [hl]                                       ; $6087: $46
	ld d, a                                          ; $6088: $57
	ld d, e                                          ; $6089: $53
	ld c, c                                          ; $608a: $49
	add hl, sp                                       ; $608b: $39
	xor b                                            ; $608c: $a8
	pop af                                           ; $608d: $f1
	db $d3                                           ; $608e: $d3
	ld [hl], c                                       ; $608f: $71
	ld d, c                                          ; $6090: $51
	ldh a, [$cb]                                     ; $6091: $f0 $cb
	ld c, d                                          ; $6093: $4a
	xor h                                            ; $6094: $ac
	ldh a, [$9f]                                     ; $6095: $f0 $9f
	ldh a, [c]                                       ; $6097: $f2
	sbc $66                                          ; $6098: $de $66
	add hl, sp                                       ; $609a: $39
	db $ed                                           ; $609b: $ed
	and $38                                          ; $609c: $e6 $38
	ld e, l                                          ; $609e: $5d
	ld e, d                                          ; $609f: $5a
	ld c, b                                          ; $60a0: $48
	and b                                            ; $60a1: $a0
	add hl, bc                                       ; $60a2: $09
	db $ed                                           ; $60a3: $ed
	ld d, a                                          ; $60a4: $57
	xor h                                            ; $60a5: $ac
	ldh a, [$9a]                                     ; $60a6: $f0 $9a
	ld e, h                                          ; $60a8: $5c
	ldh a, [rTMA]                                    ; $60a9: $f0 $06
	dec sp                                           ; $60ab: $3b
	ccf                                              ; $60ac: $3f
	ld d, l                                          ; $60ad: $55
	ld c, l                                          ; $60ae: $4d
	ccf                                              ; $60af: $3f

jr_08c_60b0:
	xor h                                            ; $60b0: $ac
	sbc $46                                          ; $60b1: $de $46
	ld d, a                                          ; $60b3: $57
	ld d, e                                          ; $60b4: $53
	ld c, c                                          ; $60b5: $49
	add hl, sp                                       ; $60b6: $39
	and b                                            ; $60b7: $a0
	cpl                                              ; $60b8: $2f
	ld b, e                                          ; $60b9: $43
	ld l, d                                          ; $60ba: $6a
	ldh a, [$0d]                                     ; $60bb: $f0 $0d
	ld c, e                                          ; $60bd: $4b
	inc [hl]                                         ; $60be: $34
	halt                                             ; $60bf: $76
	inc a                                            ; $60c0: $3c
	ld d, b                                          ; $60c1: $50
	inc de                                           ; $60c2: $13
	ldh a, [$3b]                                     ; $60c3: $f0 $3b
	dec sp                                           ; $60c5: $3b
	ccf                                              ; $60c6: $3f
	db $ec                                           ; $60c7: $ec
	ld a, [bc]                                       ; $60c8: $0a
	and c                                            ; $60c9: $a1
	add hl, sp                                       ; $60ca: $39
	inc [hl]                                         ; $60cb: $34
	xor $1f                                          ; $60cc: $ee $1f
	xor b                                            ; $60ce: $a8
	ld b, b                                          ; $60cf: $40
	add hl, sp                                       ; $60d0: $39
	ld a, $3f                                        ; $60d1: $3e $3f
	ld d, l                                          ; $60d3: $55
	ld c, l                                          ; $60d4: $4d
	ld c, [hl]                                       ; $60d5: $4e
	ld c, c                                          ; $60d6: $49
	inc [hl]                                         ; $60d7: $34
	ldh a, [$29]                                     ; $60d8: $f0 $29
	ld a, $38                                        ; $60da: $3e $38
	ld a, [hl-]                                      ; $60dc: $3a
	and b                                            ; $60dd: $a0
	call c, $d0a8                                    ; $60de: $dc $a8 $d0
	and b                                            ; $60e1: $a0
	cpl                                              ; $60e2: $2f
	ld b, e                                          ; $60e3: $43
	ld e, e                                          ; $60e4: $5b
	ld d, [hl]                                       ; $60e5: $56
	ld b, [hl]                                       ; $60e6: $46
	inc [hl]                                         ; $60e7: $34
	ld b, b                                          ; $60e8: $40
	add hl, sp                                       ; $60e9: $39
	ld d, c                                          ; $60ea: $51
	ld c, [hl]                                       ; $60eb: $4e
	ld b, l                                          ; $60ec: $45
	and b                                            ; $60ed: $a0
	db $ec                                           ; $60ee: $ec
	rst AddAOntoHL                                          ; $60ef: $ef
	ld c, a                                          ; $60f0: $4f
	xor h                                            ; $60f1: $ac
	ld a, b                                          ; $60f2: $78
	dec a                                            ; $60f3: $3d
	ld c, c                                          ; $60f4: $49
	ld d, h                                          ; $60f5: $54
	ld e, a                                          ; $60f6: $5f
	ld b, h                                          ; $60f7: $44
	inc a                                            ; $60f8: $3c
	ld d, b                                          ; $60f9: $50
	inc de                                           ; $60fa: $13
	ret                                              ; $60fb: $c9


	ldh a, [c]                                       ; $60fc: $f2
	ld a, [hl]                                       ; $60fd: $7e
	ld e, h                                          ; $60fe: $5c
	ld h, c                                          ; $60ff: $61
	ld d, [hl]                                       ; $6100: $56
	dec sp                                           ; $6101: $3b
	dec a                                            ; $6102: $3d
	ld c, h                                          ; $6103: $4c
	and b                                            ; $6104: $a0
	cpl                                              ; $6105: $2f
	ld b, e                                          ; $6106: $43
	ld [$36af], a                                    ; $6107: $ea $af $36
	rla                                              ; $610a: $17
	add sp, $50                                      ; $610b: $e8 $50
	inc de                                           ; $610d: $13
	add sp, -$7a                                     ; $610e: $e8 $86
	and e                                            ; $6110: $a3
	db $ed                                           ; $6111: $ed
	ld d, a                                          ; $6112: $57
	inc de                                           ; $6113: $13
	ld c, c                                          ; $6114: $49
	ccf                                              ; $6115: $3f
	ld c, a                                          ; $6116: $4f
	ld [$a8b7], a                                    ; $6117: $ea $b7 $a8
	ld d, d                                          ; $611a: $52
	dec a                                            ; $611b: $3d
	ld l, d                                          ; $611c: $6a
	ldh a, [$0d]                                     ; $611d: $f0 $0d
	ldh a, [$3b]                                     ; $611f: $f0 $3b
	dec sp                                           ; $6121: $3b
	ccf                                              ; $6122: $3f
	ld d, l                                          ; $6123: $55
	ld c, l                                          ; $6124: $4d
	ld c, [hl]                                       ; $6125: $4e
	and c                                            ; $6126: $a1

jr_08c_6127:
	db $ed                                           ; $6127: $ed
	ld d, a                                          ; $6128: $57
	ld [$a8b7], a                                    ; $6129: $ea $b7 $a8
	ld d, d                                          ; $612c: $52
	dec a                                            ; $612d: $3d
	ld l, d                                          ; $612e: $6a
	ldh a, [$0d]                                     ; $612f: $f0 $0d
	ldh a, [$3b]                                     ; $6131: $f0 $3b
	dec sp                                           ; $6133: $3b
	ccf                                              ; $6134: $3f
	ld d, l                                          ; $6135: $55
	ld c, l                                          ; $6136: $4d
	ld c, [hl]                                       ; $6137: $4e
	and c                                            ; $6138: $a1
	db $ed                                           ; $6139: $ed
	ld d, a                                          ; $613a: $57
	ret                                              ; $613b: $c9


	inc de                                           ; $613c: $13
	db $eb                                           ; $613d: $eb
	jr c, jr_08c_619d                                ; $613e: $38 $5d

	ld e, d                                          ; $6140: $5a
	xor h                                            ; $6141: $ac
	ld d, d                                          ; $6142: $52
	dec a                                            ; $6143: $3d
	ld l, d                                          ; $6144: $6a
	ldh a, [$0d]                                     ; $6145: $f0 $0d
	ldh a, [$3b]                                     ; $6147: $f0 $3b
	dec sp                                           ; $6149: $3b
	ccf                                              ; $614a: $3f
	ld d, l                                          ; $614b: $55
	ld c, l                                          ; $614c: $4d
	ld c, [hl]                                       ; $614d: $4e
	and c                                            ; $614e: $a1
	cpl                                              ; $614f: $2f
	ld b, e                                          ; $6150: $43
	ld [$a8c3], a                                    ; $6151: $ea $c3 $a8
	jp hl                                            ; $6154: $e9


	ld b, [hl]                                       ; $6155: $46
	and b                                            ; $6156: $a0
	db $ed                                           ; $6157: $ed
	ld d, a                                          ; $6158: $57
	inc de                                           ; $6159: $13
	ld c, c                                          ; $615a: $49
	ccf                                              ; $615b: $3f
	ld c, a                                          ; $615c: $4f
	db $eb                                           ; $615d: $eb
	ld h, e                                          ; $615e: $63
	xor b                                            ; $615f: $a8
	ld d, d                                          ; $6160: $52
	dec a                                            ; $6161: $3d
	ld l, d                                          ; $6162: $6a
	ldh a, [$0d]                                     ; $6163: $f0 $0d
	ldh a, [$3b]                                     ; $6165: $f0 $3b
	dec sp                                           ; $6167: $3b
	ccf                                              ; $6168: $3f
	ld c, h                                          ; $6169: $4c
	and b                                            ; $616a: $a0
	cpl                                              ; $616b: $2f
	ld b, e                                          ; $616c: $43
	jp hl                                            ; $616d: $e9


	ld b, [hl]                                       ; $616e: $46
	and b                                            ; $616f: $a0
	db $ed                                           ; $6170: $ed
	ld d, a                                          ; $6171: $57
	db $eb                                           ; $6172: $eb
	ld h, e                                          ; $6173: $63
	xor b                                            ; $6174: $a8
	ld d, d                                          ; $6175: $52
	dec a                                            ; $6176: $3d
	ld l, d                                          ; $6177: $6a
	ldh a, [$0d]                                     ; $6178: $f0 $0d
	ldh a, [$3b]                                     ; $617a: $f0 $3b
	dec sp                                           ; $617c: $3b
	ccf                                              ; $617d: $3f
	ld c, h                                          ; $617e: $4c
	and b                                            ; $617f: $a0
	db $ed                                           ; $6180: $ed
	ld d, a                                          ; $6181: $57
	ret                                              ; $6182: $c9


	inc de                                           ; $6183: $13
	db $eb                                           ; $6184: $eb
	jr c, jr_08c_6127                                ; $6185: $38 $a0

	cpl                                              ; $6187: $2f
	ld b, e                                          ; $6188: $43
	rst JumpTable                                          ; $6189: $c7
	ld c, b                                          ; $618a: $48
	and b                                            ; $618b: $a0
	db $ed                                           ; $618c: $ed
	ld d, a                                          ; $618d: $57
	inc de                                           ; $618e: $13
	ld c, c                                          ; $618f: $49
	ccf                                              ; $6190: $3f
	ld c, a                                          ; $6191: $4f
	ld [$a8b7], a                                    ; $6192: $ea $b7 $a8
	ld d, d                                          ; $6195: $52
	dec a                                            ; $6196: $3d
	ld l, d                                          ; $6197: $6a
	ldh a, [$0d]                                     ; $6198: $f0 $0d
	ldh a, [$3b]                                     ; $619a: $f0 $3b
	dec sp                                           ; $619c: $3b

jr_08c_619d:
	ccf                                              ; $619d: $3f
	ld c, h                                          ; $619e: $4c
	and b                                            ; $619f: $a0
	db $ed                                           ; $61a0: $ed
	ld d, a                                          ; $61a1: $57
	ld [$a0b7], a                                    ; $61a2: $ea $b7 $a0
	cpl                                              ; $61a5: $2f
	ld b, e                                          ; $61a6: $43
	ld b, b                                          ; $61a7: $40
	add hl, sp                                       ; $61a8: $39
	inc [hl]                                         ; $61a9: $34
	db $ec                                           ; $61aa: $ec
	cp c                                             ; $61ab: $b9
	and b                                            ; $61ac: $a0
	ld c, e                                          ; $61ad: $4b
	ld [hl], h                                       ; $61ae: $74
	inc [hl]                                         ; $61af: $34
	ld a, b                                          ; $61b0: $78
	ld a, [hl-]                                      ; $61b1: $3a
	ld e, l                                          ; $61b2: $5d
	ld c, l                                          ; $61b3: $4d
	ld a, e                                          ; $61b4: $7b
	inc de                                           ; $61b5: $13
	ld b, l                                          ; $61b6: $45
	inc a                                            ; $61b7: $3c
	dec sp                                           ; $61b8: $3b
	dec a                                            ; $61b9: $3d
	ld c, b                                          ; $61ba: $48
	and b                                            ; $61bb: $a0
	cpl                                              ; $61bc: $2f
	ld b, e                                          ; $61bd: $43
	xor $10                                          ; $61be: $ee $10
	xor b                                            ; $61c0: $a8
	add sp, -$72                                     ; $61c1: $e8 $8e
	and e                                            ; $61c3: $a3
	ld b, [hl]                                       ; $61c4: $46
	dec sp                                           ; $61c5: $3b
	inc [hl]                                         ; $61c6: $34
	ld b, b                                          ; $61c7: $40
	add hl, sp                                       ; $61c8: $39
	ld b, h                                          ; $61c9: $44
	and b                                            ; $61ca: $a0
	cpl                                              ; $61cb: $2f
	ld b, e                                          ; $61cc: $43
	db $eb                                           ; $61cd: $eb
	rst FarCall                                          ; $61ce: $f7
	and c                                            ; $61cf: $a1
	cpl                                              ; $61d0: $2f
	ld b, e                                          ; $61d1: $43
	ld b, [hl]                                       ; $61d2: $46
	ld d, a                                          ; $61d3: $57
	ld d, e                                          ; $61d4: $53
	ld c, c                                          ; $61d5: $49
	add hl, sp                                       ; $61d6: $39
	xor b                                            ; $61d7: $a8
	ldh a, [$29]                                     ; $61d8: $f0 $29
	ld a, $38                                        ; $61da: $3e $38
	ld b, l                                          ; $61dc: $45
	xor b                                            ; $61dd: $a8
	ld [hl-], a                                      ; $61de: $32
	db $ed                                           ; $61df: $ed
	ld e, e                                          ; $61e0: $5b
	db $eb                                           ; $61e1: $eb
	dec a                                            ; $61e2: $3d
	inc de                                           ; $61e3: $13
	ld c, a                                          ; $61e4: $4f
	ld d, b                                          ; $61e5: $50
	ld e, [hl]                                       ; $61e6: $5e
	ld c, [hl]                                       ; $61e7: $4e
	ld a, [hl-]                                      ; $61e8: $3a
	ld b, c                                          ; $61e9: $41
	ccf                                              ; $61ea: $3f
	xor h                                            ; $61eb: $ac
	halt                                             ; $61ec: $76
	ld c, e                                          ; $61ed: $4b
	pop af                                           ; $61ee: $f1
	and d                                            ; $61ef: $a2
	ld a, c                                          ; $61f0: $79
	pop af                                           ; $61f1: $f1
	ld b, d                                          ; $61f2: $42
	ld b, h                                          ; $61f3: $44
	ld e, c                                          ; $61f4: $59
	scf                                              ; $61f5: $37
	inc sp                                           ; $61f6: $33
	add hl, bc                                       ; $61f7: $09
	cpl                                              ; $61f8: $2f
	ld b, e                                          ; $61f9: $43
	ld b, [hl]                                       ; $61fa: $46
	dec sp                                           ; $61fb: $3b
	inc [hl]                                         ; $61fc: $34
	db $ed                                           ; $61fd: $ed
	xor c                                            ; $61fe: $a9
	xor b                                            ; $61ff: $a8
	jp hl                                            ; $6200: $e9


	ld d, c                                          ; $6201: $51
	and b                                            ; $6202: $a0
	cpl                                              ; $6203: $2f
	ld [hl-], a                                      ; $6204: $32
	db $eb                                           ; $6205: $eb
	dec a                                            ; $6206: $3d
	inc de                                           ; $6207: $13
	ldh a, [rAUD2LEN]                                ; $6208: $f0 $16
	ldh a, [$c0]                                     ; $620a: $f0 $c0
	ld a, $3f                                        ; $620c: $3e $3f
	ld h, h                                          ; $620e: $64
	db $ec                                           ; $620f: $ec
	ld l, $a3                                        ; $6210: $2e $a3
	ld b, b                                          ; $6212: $40
	ld c, l                                          ; $6213: $4d
	ld e, e                                          ; $6214: $5b
	ld d, [hl]                                       ; $6215: $56
	xor h                                            ; $6216: $ac
	or b                                             ; $6217: $b0
	xor b                                            ; $6218: $a8
	ld d, $a0                                        ; $6219: $16 $a0
	ld b, b                                          ; $621b: $40
	ld c, l                                          ; $621c: $4d
	ld e, e                                          ; $621d: $5b
	ld d, [hl]                                       ; $621e: $56
	xor h                                            ; $621f: $ac
	or b                                             ; $6220: $b0
	inc a                                            ; $6221: $3c
	xor b                                            ; $6222: $a8
	ld d, $a0                                        ; $6223: $16 $a0
	ld b, b                                          ; $6225: $40
	ld c, l                                          ; $6226: $4d
	ld e, e                                          ; $6227: $5b
	ld d, [hl]                                       ; $6228: $56
	xor h                                            ; $6229: $ac
	ld e, b                                          ; $622a: $58
	ld b, l                                          ; $622b: $45
	ld a, [hl-]                                      ; $622c: $3a
	ld d, b                                          ; $622d: $50
	ld c, b                                          ; $622e: $48
	and b                                            ; $622f: $a0
	add hl, bc                                       ; $6230: $09
	xor $10                                          ; $6231: $ee $10
	and b                                            ; $6233: $a0
	cpl                                              ; $6234: $2f
	ld b, e                                          ; $6235: $43
	ld h, h                                          ; $6236: $64
	ld e, c                                          ; $6237: $59
	jr c, jr_08c_626e                                ; $6238: $38 $34

	db $ed                                           ; $623a: $ed
	add d                                            ; $623b: $82
	ld e, b                                          ; $623c: $58
	ld e, c                                          ; $623d: $59
	ld b, c                                          ; $623e: $41
	xor b                                            ; $623f: $a8
	sbc c                                            ; $6240: $99
	dec sp                                           ; $6241: $3b
	ccf                                              ; $6242: $3f
	ld d, l                                          ; $6243: $55
	ld c, l                                          ; $6244: $4d
	ld e, c                                          ; $6245: $59
	and b                                            ; $6246: $a0
	cpl                                              ; $6247: $2f
	ld b, e                                          ; $6248: $43
	db $ec                                           ; $6249: $ec
	reti                                             ; $624a: $d9


	xor h                                            ; $624b: $ac
	ld d, h                                          ; $624c: $54
	ld b, d                                          ; $624d: $42
	pop af                                           ; $624e: $f1
	ld de, $573a                                     ; $624f: $11 $3a $57
	ld e, e                                          ; $6252: $5b
	ld d, [hl]                                       ; $6253: $56
	xor h                                            ; $6254: $ac
	ldh a, [$e1]                                     ; $6255: $f0 $e1
	ldh a, [rSB]                                     ; $6257: $f0 $01
	ld d, b                                          ; $6259: $50
	ld c, l                                          ; $625a: $4d
	ld c, [hl]                                       ; $625b: $4e
	ld b, l                                          ; $625c: $45
	ld a, [hl-]                                      ; $625d: $3a
	ld [hl], h                                       ; $625e: $74
	and b                                            ; $625f: $a0
	cpl                                              ; $6260: $2f
	ld b, e                                          ; $6261: $43
	db $eb                                           ; $6262: $eb
	inc [hl]                                         ; $6263: $34
	xor h                                            ; $6264: $ac
	ldh a, [rSVBK]                                   ; $6265: $f0 $70
	ld b, a                                          ; $6267: $47
	db $ed                                           ; $6268: $ed
	ld e, b                                          ; $6269: $58
	and b                                            ; $626a: $a0
	cpl                                              ; $626b: $2f
	ld b, e                                          ; $626c: $43
	db $ec                                           ; $626d: $ec

jr_08c_626e:
	rst SubAFromDE                                          ; $626e: $df
	ld c, e                                          ; $626f: $4b
	xor h                                            ; $6270: $ac
	ld c, c                                          ; $6271: $49
	add hl, sp                                       ; $6272: $39
	ld c, c                                          ; $6273: $49
	add hl, sp                                       ; $6274: $39
	ld a, b                                          ; $6275: $78
	ld a, [hl-]                                      ; $6276: $3a
	inc a                                            ; $6277: $3c
	dec sp                                           ; $6278: $3b
	dec a                                            ; $6279: $3d
	ld a, [hl-]                                      ; $627a: $3a
	and b                                            ; $627b: $a0
	cpl                                              ; $627c: $2f
	ld b, e                                          ; $627d: $43
	ld e, d                                          ; $627e: $5a
	add hl, sp                                       ; $627f: $39
	ld a, $3d                                        ; $6280: $3e $3d
	ld b, c                                          ; $6282: $41
	ld b, h                                          ; $6283: $44
	ld e, a                                          ; $6284: $5f
	add hl, sp                                       ; $6285: $39
	xor c                                            ; $6286: $a9
	db $eb                                           ; $6287: $eb
	inc [hl]                                         ; $6288: $34
	xor h                                            ; $6289: $ac
	ldh a, [rSVBK]                                   ; $628a: $f0 $70
	ld b, a                                          ; $628c: $47
	db $ed                                           ; $628d: $ed
	ld e, b                                          ; $628e: $58
	and b                                            ; $628f: $a0
	cpl                                              ; $6290: $2f
	ld b, e                                          ; $6291: $43
	db $ec                                           ; $6292: $ec
	rst SubAFromDE                                          ; $6293: $df
	inc [hl]                                         ; $6294: $34
	ld [hl], b                                       ; $6295: $70
	ld [hl], c                                       ; $6296: $71
	ld b, c                                          ; $6297: $41
	ld c, h                                          ; $6298: $4c
	xor b                                            ; $6299: $a8
	add sp, -$21                                     ; $629a: $e8 $df
	xor h                                            ; $629c: $ac
	jp hl                                            ; $629d: $e9


	xor [hl]                                         ; $629e: $ae
	and b                                            ; $629f: $a0
	db $ec                                           ; $62a0: $ec
	cp c                                             ; $62a1: $b9
	ld a, b                                          ; $62a2: $78
	ccf                                              ; $62a3: $3f
	ld d, l                                          ; $62a4: $55
	ld c, l                                          ; $62a5: $4d
	ccf                                              ; $62a6: $3f
	xor l                                            ; $62a7: $ad
	ld a, b                                          ; $62a8: $78
	ld a, [hl-]                                      ; $62a9: $3a
	jr c, jr_08c_62e8                                ; $62aa: $38 $3c

	ld c, c                                          ; $62ac: $49
	ld [hl], a                                       ; $62ad: $77
	dec sp                                           ; $62ae: $3b
	ccf                                              ; $62af: $3f
	xor h                                            ; $62b0: $ac
	ret                                              ; $62b1: $c9


	ldh a, [$d0]                                     ; $62b2: $f0 $d0
	pop af                                           ; $62b4: $f1
	cp c                                             ; $62b5: $b9
	ld c, d                                          ; $62b6: $4a
	ld a, $3d                                        ; $62b7: $3e $3d
	ld c, b                                          ; $62b9: $48
	and b                                            ; $62ba: $a0
	cpl                                              ; $62bb: $2f
	ld b, e                                          ; $62bc: $43
	sbc $70                                          ; $62bd: $de $70
	ld [hl], c                                       ; $62bf: $71
	ld b, c                                          ; $62c0: $41
	ld c, h                                          ; $62c1: $4c
	and b                                            ; $62c2: $a0
	db $ed                                           ; $62c3: $ed
	ld e, c                                          ; $62c4: $59
	inc [hl]                                         ; $62c5: $34
	adc b                                            ; $62c6: $88
	ld h, d                                          ; $62c7: $62
	ldh a, [$fa]                                     ; $62c8: $f0 $fa
	ld b, c                                          ; $62ca: $41
	ld c, d                                          ; $62cb: $4a
	inc de                                           ; $62cc: $13
	sbc c                                            ; $62cd: $99
	dec sp                                           ; $62ce: $3b
	ccf                                              ; $62cf: $3f
	ld d, d                                          ; $62d0: $52
	ld a, $3d                                        ; $62d1: $3e $3d
	inc a                                            ; $62d3: $3c
	ld d, b                                          ; $62d4: $50
	ld c, b                                          ; $62d5: $48
	and b                                            ; $62d6: $a0
	cpl                                              ; $62d7: $2f
	ld b, e                                          ; $62d8: $43
	sbc $34                                          ; $62d9: $de $34
	ld [hl], b                                       ; $62db: $70
	ld [hl], c                                       ; $62dc: $71
	ld b, c                                          ; $62dd: $41
	ld c, h                                          ; $62de: $4c
	and b                                            ; $62df: $a0
	ret                                              ; $62e0: $c9


	ld b, h                                          ; $62e1: $44
	ld e, l                                          ; $62e2: $5d
	xor h                                            ; $62e3: $ac
	ldh a, [$f3]                                     ; $62e4: $f0 $f3
	ld c, l                                          ; $62e6: $4d
	ccf                                              ; $62e7: $3f

jr_08c_62e8:
	ld [$a0b4], a                                    ; $62e8: $ea $b4 $a0
	cpl                                              ; $62eb: $2f
	ld b, e                                          ; $62ec: $43
	ld [hl], b                                       ; $62ed: $70
	ld [hl], c                                       ; $62ee: $71
	ld b, c                                          ; $62ef: $41
	ld b, l                                          ; $62f0: $45
	xor b                                            ; $62f1: $a8
	ld c, a                                          ; $62f2: $4f
	add hl, sp                                       ; $62f3: $39
	ldh a, [hDisp0_SCX]                                     ; $62f4: $f0 $84
	ldh a, [$0d]                                     ; $62f6: $f0 $0d
	ld c, c                                          ; $62f8: $49
	ld a, $3a                                        ; $62f9: $3e $3a
	jr c, jr_08c_6339                                ; $62fb: $38 $3c

	ld d, b                                          ; $62fd: $50
	and b                                            ; $62fe: $a0
	cpl                                              ; $62ff: $2f
	ld b, e                                          ; $6300: $43
	sbc c                                            ; $6301: $99
	dec sp                                           ; $6302: $3b
	dec a                                            ; $6303: $3d
	and c                                            ; $6304: $a1
	db $ed                                           ; $6305: $ed
	ld e, c                                          ; $6306: $59
	xor b                                            ; $6307: $a8
	ld l, a                                          ; $6308: $6f
	ld c, a                                          ; $6309: $4f
	xor h                                            ; $630a: $ac
	ld l, d                                          ; $630b: $6a
	ld a, b                                          ; $630c: $78
	dec a                                            ; $630d: $3d
	ld c, c                                          ; $630e: $49
	ld d, h                                          ; $630f: $54
	ld e, a                                          ; $6310: $5f
	ld c, d                                          ; $6311: $4a
	ld d, c                                          ; $6312: $51
	inc a                                            ; $6313: $3c
	ld d, b                                          ; $6314: $50
	ld c, b                                          ; $6315: $48
	and b                                            ; $6316: $a0
	cpl                                              ; $6317: $2f
	ld b, e                                          ; $6318: $43
	jp hl                                            ; $6319: $e9


	dec h                                            ; $631a: $25
	ld b, l                                          ; $631b: $45
	and b                                            ; $631c: $a0
	ld l, a                                          ; $631d: $6f
	ld c, a                                          ; $631e: $4f
	xor h                                            ; $631f: $ac
	ld l, d                                          ; $6320: $6a
	ld a, b                                          ; $6321: $78
	dec a                                            ; $6322: $3d
	ld c, c                                          ; $6323: $49
	ld d, h                                          ; $6324: $54
	ld e, a                                          ; $6325: $5f
	ld c, d                                          ; $6326: $4a
	ld d, c                                          ; $6327: $51
	inc a                                            ; $6328: $3c
	ld d, b                                          ; $6329: $50
	and b                                            ; $632a: $a0
	cpl                                              ; $632b: $2f
	ld b, e                                          ; $632c: $43
	jp hl                                            ; $632d: $e9


	dec h                                            ; $632e: $25
	and b                                            ; $632f: $a0
	db $ec                                           ; $6330: $ec
	db $10                                           ; $6331: $10
	xor h                                            ; $6332: $ac
	ld l, d                                          ; $6333: $6a
	ld a, b                                          ; $6334: $78
	dec a                                            ; $6335: $3d
	ld c, c                                          ; $6336: $49
	ld d, h                                          ; $6337: $54
	ld e, a                                          ; $6338: $5f

jr_08c_6339:
	ld c, d                                          ; $6339: $4a
	ld d, c                                          ; $633a: $51
	inc a                                            ; $633b: $3c
	ld d, b                                          ; $633c: $50
	and b                                            ; $633d: $a0
	cpl                                              ; $633e: $2f
	ld b, e                                          ; $633f: $43
	db $ec                                           ; $6340: $ec
	rst SubAFromDE                                          ; $6341: $df
	inc [hl]                                         ; $6342: $34
	ldh a, [$c7]                                     ; $6343: $f0 $c7
	jr c, jr_08c_6381                                ; $6345: $38 $3a

	and b                                            ; $6347: $a0
	ld c, a                                          ; $6348: $4f
	add hl, sp                                       ; $6349: $39
	inc [hl]                                         ; $634a: $34
	ld d, c                                          ; $634b: $51
	dec sp                                           ; $634c: $3b
	inc a                                            ; $634d: $3c
	ld d, a                                          ; $634e: $57
	inc de                                           ; $634f: $13
	pop af                                           ; $6350: $f1
	sbc d                                            ; $6351: $9a
	ld c, d                                          ; $6352: $4a
	ld d, c                                          ; $6353: $51
	ld c, h                                          ; $6354: $4c
	and b                                            ; $6355: $a0
	cpl                                              ; $6356: $2f
	ld b, e                                          ; $6357: $43
	pop af                                           ; $6358: $f1
	cp d                                             ; $6359: $ba
	ld d, l                                          ; $635a: $55
	ld a, [hl-]                                      ; $635b: $3a
	ld c, [hl]                                       ; $635c: $4e
	ldh a, [c]                                       ; $635d: $f2
	ld a, e                                          ; $635e: $7b
	ldh a, [c]                                       ; $635f: $f2
	ld a, h                                          ; $6360: $7c
	ld b, d                                          ; $6361: $42
	inc de                                           ; $6362: $13
	di                                               ; $6363: $f3
	ld e, c                                          ; $6364: $59
	ld a, b                                          ; $6365: $78
	ld b, h                                          ; $6366: $44
	ld c, h                                          ; $6367: $4c
	and b                                            ; $6368: $a0
	ld [$acab], a                                    ; $6369: $ea $ab $ac
	db $ed                                           ; $636c: $ed
	ld d, a                                          ; $636d: $57
	db $ed                                           ; $636e: $ed
	ld l, h                                          ; $636f: $6c
	ld c, d                                          ; $6370: $4a
	ld d, c                                          ; $6371: $51
	ld c, h                                          ; $6372: $4c
	and b                                            ; $6373: $a0
	cpl                                              ; $6374: $2f
	ld b, e                                          ; $6375: $43
	ld b, b                                          ; $6376: $40
	add hl, sp                                       ; $6377: $39
	ld b, h                                          ; $6378: $44
	ld c, h                                          ; $6379: $4c
	xor b                                            ; $637a: $a8
	ld d, c                                          ; $637b: $51
	ld [hl], b                                       ; $637c: $70
	ld d, l                                          ; $637d: $55
	db $ed                                           ; $637e: $ed
	ld l, h                                          ; $637f: $6c
	ld c, h                                          ; $6380: $4c

jr_08c_6381:
	and b                                            ; $6381: $a0
	ldh a, [c]                                       ; $6382: $f2
	ld [de], a                                       ; $6383: $12
	ld c, l                                          ; $6384: $4d
	ld a, [hl-]                                      ; $6385: $3a
	jr c, jr_08c_63d1                                ; $6386: $38 $49

	inc de                                           ; $6388: $13
	jr c, jr_08c_63c3                                ; $6389: $38 $38

	ld b, d                                          ; $638b: $42
	ld c, d                                          ; $638c: $4a
	ld d, c                                          ; $638d: $51
	ld e, l                                          ; $638e: $5d
	ld e, d                                          ; $638f: $5a
	ld c, b                                          ; $6390: $48
	and b                                            ; $6391: $a0
	cpl                                              ; $6392: $2f
	ld b, e                                          ; $6393: $43
	rst JumpTable                                          ; $6394: $c7
	ld b, h                                          ; $6395: $44
	ld c, h                                          ; $6396: $4c
	and b                                            ; $6397: $a0
	db $ec                                           ; $6398: $ec
	push bc                                          ; $6399: $c5
	xor h                                            ; $639a: $ac
	ldh a, [$f0]                                     ; $639b: $f0 $f0
	ld b, a                                          ; $639d: $47
	sub h                                            ; $639e: $94
	ccf                                              ; $639f: $3f
	ld c, a                                          ; $63a0: $4f
	pop af                                           ; $63a1: $f1
	ld l, c                                          ; $63a2: $69
	ld a, a                                          ; $63a3: $7f
	ld a, [hl-]                                      ; $63a4: $3a
	ldh a, [c]                                       ; $63a5: $f2
	ld a, e                                          ; $63a6: $7b
	ldh a, [c]                                       ; $63a7: $f2
	ld a, h                                          ; $63a8: $7c
	ld b, a                                          ; $63a9: $47
	inc de                                           ; $63aa: $13
	ld a, [hl-]                                      ; $63ab: $3a
	dec sp                                           ; $63ac: $3b
	ccf                                              ; $63ad: $3f
	ld e, h                                          ; $63ae: $5c
	ld d, d                                          ; $63af: $52
	ld a, $3d                                        ; $63b0: $3e $3d
	and b                                            ; $63b2: $a0
	cpl                                              ; $63b3: $2f
	ld b, e                                          ; $63b4: $43
	adc b                                            ; $63b5: $88
	sub c                                            ; $63b6: $91
	xor h                                            ; $63b7: $ac
	pop af                                           ; $63b8: $f1
	sub b                                            ; $63b9: $90
	ld [hl], b                                       ; $63ba: $70
	ld a, $f3                                        ; $63bb: $3e $f3
	dec d                                            ; $63bd: $15
	ld d, l                                          ; $63be: $55
	ld a, [hl-]                                      ; $63bf: $3a
	dec sp                                           ; $63c0: $3b
	dec a                                            ; $63c1: $3d
	ld b, l                                          ; $63c2: $45

jr_08c_63c3:
	and b                                            ; $63c3: $a0
	di                                               ; $63c4: $f3
	ld b, a                                          ; $63c5: $47
	dec sp                                           ; $63c6: $3b
	ccf                                              ; $63c7: $3f
	xor h                                            ; $63c8: $ac
	ld l, a                                          ; $63c9: $6f
	ld b, d                                          ; $63ca: $42
	adc e                                            ; $63cb: $8b
	ld e, h                                          ; $63cc: $5c
	ld a, [hl-]                                      ; $63cd: $3a
	ldh a, [c]                                       ; $63ce: $f2
	ld a, e                                          ; $63cf: $7b
	ldh a, [c]                                       ; $63d0: $f2

jr_08c_63d1:
	ld a, h                                          ; $63d1: $7c
	ld c, d                                          ; $63d2: $4a
	ld d, c                                          ; $63d3: $51
	and b                                            ; $63d4: $a0
	cpl                                              ; $63d5: $2f
	ld b, e                                          ; $63d6: $43
	xor $1f                                          ; $63d7: $ee $1f
	xor h                                            ; $63d9: $ac
	db $ed                                           ; $63da: $ed
	sbc e                                            ; $63db: $9b
	ld b, d                                          ; $63dc: $42
	di                                               ; $63dd: $f3
	ld b, a                                          ; $63de: $47
	ld b, h                                          ; $63df: $44
	ld c, a                                          ; $63e0: $4f
	ld b, c                                          ; $63e1: $41
	ld c, h                                          ; $63e2: $4c
	and b                                            ; $63e3: $a0
	db $eb                                           ; $63e4: $eb
	ld d, c                                          ; $63e5: $51
	xor h                                            ; $63e6: $ac
	add sp, -$3b                                     ; $63e7: $e8 $c5
	xor h                                            ; $63e9: $ac
	ld c, c                                          ; $63ea: $49
	ccf                                              ; $63eb: $3f
	ld c, a                                          ; $63ec: $4f
	ldh a, [$57]                                     ; $63ed: $f0 $57
	ldh a, [$ae]                                     ; $63ef: $f0 $ae
	ld c, d                                          ; $63f1: $4a
	ld a, $3d                                        ; $63f2: $3e $3d
	and b                                            ; $63f4: $a0
	cpl                                              ; $63f5: $2f
	ld b, e                                          ; $63f6: $43
	jp hl                                            ; $63f7: $e9


	xor l                                            ; $63f8: $ad
	xor b                                            ; $63f9: $a8
	ld b, [hl]                                       ; $63fa: $46
	ld d, a                                          ; $63fb: $57
	ld d, e                                          ; $63fc: $53
	ld c, c                                          ; $63fd: $49
	add hl, sp                                       ; $63fe: $39
	and b                                            ; $63ff: $a0
	db $eb                                           ; $6400: $eb
	ld d, c                                          ; $6401: $51
	xor h                                            ; $6402: $ac
	db $eb                                           ; $6403: $eb
	xor e                                            ; $6404: $ab
	inc [hl]                                         ; $6405: $34
	db $ed                                           ; $6406: $ed
	add l                                            ; $6407: $85
	ld h, d                                          ; $6408: $62
	inc de                                           ; $6409: $13
	add sp, -$80                                     ; $640a: $e8 $80
	and b                                            ; $640c: $a0
	cpl                                              ; $640d: $2f
	ld b, e                                          ; $640e: $43
	jr c, jr_08c_647f                                ; $640f: $38 $6e

	inc [hl]                                         ; $6411: $34
	ld b, b                                          ; $6412: $40
	ld b, c                                          ; $6413: $41
	ld a, [hl-]                                      ; $6414: $3a
	add a                                            ; $6415: $87
	ld a, $3d                                        ; $6416: $3e $3d
	sbc d                                            ; $6418: $9a
	inc de                                           ; $6419: $13
	db $ec                                           ; $641a: $ec

jr_08c_641b:
	ret c                                            ; $641b: $d8

	inc a                                            ; $641c: $3c
	ld d, b                                          ; $641d: $50
	and b                                            ; $641e: $a0
	db $eb                                           ; $641f: $eb
	ld d, c                                          ; $6420: $51
	xor h                                            ; $6421: $ac
	db $eb                                           ; $6422: $eb
	xor e                                            ; $6423: $ab
	inc [hl]                                         ; $6424: $34
	ldh a, [rAUD4ENV]                                ; $6425: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6427: $f0 $23
	jr c, jr_08c_641b                                ; $6429: $38 $f0

	ld b, e                                          ; $642b: $43
	ldh a, [rAUDTERM]                                ; $642c: $f0 $25
	ld h, d                                          ; $642e: $62
	inc de                                           ; $642f: $13
	add sp, -$80                                     ; $6430: $e8 $80
	and b                                            ; $6432: $a0
	cpl                                              ; $6433: $2f
	ld b, e                                          ; $6434: $43
	ld a, a                                          ; $6435: $7f
	ld b, a                                          ; $6436: $47
	sub [hl]                                         ; $6437: $96
	dec sp                                           ; $6438: $3b
	ccf                                              ; $6439: $3f
	ld d, l                                          ; $643a: $55
	ld c, l                                          ; $643b: $4d
	dec a                                            ; $643c: $3d
	and c                                            ; $643d: $a1
	ld [$a0f8], a                                    ; $643e: $ea $f8 $a0
	cpl                                              ; $6441: $2f
	ld b, e                                          ; $6442: $43
	jp hl                                            ; $6443: $e9


	ld sp, hl                                        ; $6444: $f9
	xor h                                            ; $6445: $ac
	db $eb                                           ; $6446: $eb
	ld e, a                                          ; $6447: $5f
	and b                                            ; $6448: $a0
	db $eb                                           ; $6449: $eb
	ld d, c                                          ; $644a: $51
	xor h                                            ; $644b: $ac
	db $ec                                           ; $644c: $ec
	ld c, l                                          ; $644d: $4d
	jr c, jr_08c_648d                                ; $644e: $38 $3d

	ld b, h                                          ; $6450: $44
	jr c, @+$3f                                      ; $6451: $38 $3d

	ldh a, [rSCX]                                    ; $6453: $f0 $43
	ldh a, [rAUDTERM]                                ; $6455: $f0 $25
	xor h                                            ; $6457: $ac
	ld c, c                                          ; $6458: $49
	ccf                                              ; $6459: $3f
	ld c, a                                          ; $645a: $4f
	cp e                                             ; $645b: $bb
	ld c, d                                          ; $645c: $4a
	ld d, c                                          ; $645d: $51
	and b                                            ; $645e: $a0
	db $eb                                           ; $645f: $eb
	ld d, c                                          ; $6460: $51
	xor h                                            ; $6461: $ac
	db $eb                                           ; $6462: $eb
	xor e                                            ; $6463: $ab
	inc [hl]                                         ; $6464: $34
	ldh a, [rSCX]                                    ; $6465: $f0 $43
	ldh a, [rAUDTERM]                                ; $6467: $f0 $25
	ld h, d                                          ; $6469: $62
	inc de                                           ; $646a: $13
	add sp, -$80                                     ; $646b: $e8 $80
	and b                                            ; $646d: $a0
	ld [$acab], a                                    ; $646e: $ea $ab $ac
	db $ed                                           ; $6471: $ed
	ld d, a                                          ; $6472: $57
	pop af                                           ; $6473: $f1
	or $38                                           ; $6474: $f6 $38
	ld c, d                                          ; $6476: $4a
	ld d, c                                          ; $6477: $51
	ld c, h                                          ; $6478: $4c
	and b                                            ; $6479: $a0
	cpl                                              ; $647a: $2f
	ld b, e                                          ; $647b: $43
	adc b                                            ; $647c: $88
	sub c                                            ; $647d: $91
	inc [hl]                                         ; $647e: $34

jr_08c_647f:
	pop af                                           ; $647f: $f1
	or $38                                           ; $6480: $f6 $38
	ld c, h                                          ; $6482: $4c
	and b                                            ; $6483: $a0
	db $eb                                           ; $6484: $eb
	ld d, a                                          ; $6485: $57
	ld c, d                                          ; $6486: $4a
	ld a, $3d                                        ; $6487: $3e $3d
	xor b                                            ; $6489: $a8
	pop af                                           ; $648a: $f1
	ld a, c                                          ; $648b: $79
	pop af                                           ; $648c: $f1

jr_08c_648d:
	ld h, d                                          ; $648d: $62
	ld b, a                                          ; $648e: $47
	ldh a, [rBGP]                                    ; $648f: $f0 $47
	ldh a, [$2a]                                     ; $6491: $f0 $2a
	ld d, e                                          ; $6493: $53
	inc de                                           ; $6494: $13
	inc a                                            ; $6495: $3c
	inc a                                            ; $6496: $3c
	dec sp                                           ; $6497: $3b
	ccf                                              ; $6498: $3f
	ld a, $52                                        ; $6499: $3e $52
	dec sp                                           ; $649b: $3b
	ccf                                              ; $649c: $3f
	ld c, b                                          ; $649d: $48
	and b                                            ; $649e: $a0
	db $eb                                           ; $649f: $eb
	ccf                                              ; $64a0: $3f
	xor b                                            ; $64a1: $a8
	pop af                                           ; $64a2: $f1
	ld a, c                                          ; $64a3: $79
	pop af                                           ; $64a4: $f1
	ld h, d                                          ; $64a5: $62
	ld b, a                                          ; $64a6: $47
	ldh a, [rBGP]                                    ; $64a7: $f0 $47
	ldh a, [$2a]                                     ; $64a9: $f0 $2a
	ld d, e                                          ; $64ab: $53
	inc de                                           ; $64ac: $13
	inc a                                            ; $64ad: $3c
	inc a                                            ; $64ae: $3c
	dec sp                                           ; $64af: $3b
	ccf                                              ; $64b0: $3f
	ld a, $52                                        ; $64b1: $3e $52
	dec sp                                           ; $64b3: $3b
	ccf                                              ; $64b4: $3f
	ld c, b                                          ; $64b5: $48
	and b                                            ; $64b6: $a0
	db $eb                                           ; $64b7: $eb
	ccf                                              ; $64b8: $3f
	xor b                                            ; $64b9: $a8
	ldh a, [$c7]                                     ; $64ba: $f0 $c7
	ld c, l                                          ; $64bc: $4d
	ccf                                              ; $64bd: $3f
	ld a, $52                                        ; $64be: $3e $52
	dec sp                                           ; $64c0: $3b
	ccf                                              ; $64c1: $3f
	ld c, b                                          ; $64c2: $48
	and b                                            ; $64c3: $a0
	cpl                                              ; $64c4: $2f
	ld b, e                                          ; $64c5: $43
	jr c, jr_08c_6536                                ; $64c6: $38 $6e

	xor h                                            ; $64c8: $ac
	jp hl                                            ; $64c9: $e9


	cp h                                             ; $64ca: $bc
	xor h                                            ; $64cb: $ac
	jp hl                                            ; $64cc: $e9


	dec l                                            ; $64cd: $2d
	and b                                            ; $64ce: $a0
	add hl, bc                                       ; $64cf: $09
	db $eb                                           ; $64d0: $eb
	ld a, e                                          ; $64d1: $7b
	ld c, d                                          ; $64d2: $4a
	xor h                                            ; $64d3: $ac
	ld h, h                                          ; $64d4: $64
	ldh a, [rAUDVOL]                                 ; $64d5: $f0 $24
	ld d, c                                          ; $64d7: $51
	ld c, [hl]                                       ; $64d8: $4e
	db $ec                                           ; $64d9: $ec

jr_08c_64da:
	or $ac                                           ; $64da: $f6 $ac
	ld l, a                                          ; $64dc: $6f
	inc [hl]                                         ; $64dd: $34
	adc e                                            ; $64de: $8b
	ld e, h                                          ; $64df: $5c
	ld c, d                                          ; $64e0: $4a
	ld d, c                                          ; $64e1: $51
	and b                                            ; $64e2: $a0
	ld d, h                                          ; $64e3: $54
	add hl, sp                                       ; $64e4: $39
	jr c, jr_08c_6520                                ; $64e5: $38 $39

	pop af                                           ; $64e7: $f1
	jr z, jr_08c_64da                                ; $64e8: $28 $f0

	ld b, h                                          ; $64ea: $44
	dec sp                                           ; $64eb: $3b
	ccf                                              ; $64ec: $3f
	xor h                                            ; $64ed: $ac
	jr c, jr_08c_6528                                ; $64ee: $38 $38

	ld c, d                                          ; $64f0: $4a
	ld d, c                                          ; $64f1: $51
	ld c, h                                          ; $64f2: $4c
	and b                                            ; $64f3: $a0
	ld d, h                                          ; $64f4: $54
	add hl, sp                                       ; $64f5: $39
	jr c, jr_08c_6531                                ; $64f6: $38 $39

	db $ec                                           ; $64f8: $ec
	ld l, c                                          ; $64f9: $69
	xor h                                            ; $64fa: $ac
	ldh a, [$5f]                                     ; $64fb: $f0 $5f
	ldh a, [$9b]                                     ; $64fd: $f0 $9b
	pop de                                           ; $64ff: $d1
	ld a, b                                          ; $6500: $78
	ld d, d                                          ; $6501: $52
	ld a, c                                          ; $6502: $79
	ld b, c                                          ; $6503: $41
	ld c, h                                          ; $6504: $4c
	and b                                            ; $6505: $a0
	cpl                                              ; $6506: $2f
	ld [hl-], a                                      ; $6507: $32
	ld l, e                                          ; $6508: $6b
	ld h, d                                          ; $6509: $62
	ldh a, [rAUDVOL]                                 ; $650a: $f0 $24
	db $ec                                           ; $650c: $ec
	ld d, $36                                        ; $650d: $16 $36
	inc sp                                           ; $650f: $33
	add hl, bc                                       ; $6510: $09
	cpl                                              ; $6511: $2f
	add sp, $0c                                      ; $6512: $e8 $0c
	add hl, bc                                       ; $6514: $09
	cpl                                              ; $6515: $2f
	add sp, $27                                      ; $6516: $e8 $27
	add hl, bc                                       ; $6518: $09
	cpl                                              ; $6519: $2f
	ld [hl-], a                                      ; $651a: $32
	pop af                                           ; $651b: $f1
	ld a, e                                          ; $651c: $7b
	ldh a, [hDisp1_WY]                                     ; $651d: $f0 $95
	ld c, e                                          ; $651f: $4b

jr_08c_6520:
	db $ed                                           ; $6520: $ed
	sbc e                                            ; $6521: $9b
	inc de                                           ; $6522: $13
	xor a                                            ; $6523: $af
	or l                                             ; $6524: $b5
	and e                                            ; $6525: $a3
	cpl                                              ; $6526: $2f
	ld [hl-], a                                      ; $6527: $32

jr_08c_6528:
	adc e                                            ; $6528: $8b
	ld e, h                                          ; $6529: $5c
	ld a, [hl-]                                      ; $652a: $3a
	db $ed                                           ; $652b: $ed
	jr @+$15                                         ; $652c: $18 $13

	db $eb                                           ; $652e: $eb
	ld h, l                                          ; $652f: $65
	xor b                                            ; $6530: $a8

jr_08c_6531:
	xor a                                            ; $6531: $af
	or l                                             ; $6532: $b5
	and e                                            ; $6533: $a3
	cpl                                              ; $6534: $2f
	ld [hl-], a                                      ; $6535: $32

jr_08c_6536:
	adc e                                            ; $6536: $8b
	ld e, h                                          ; $6537: $5c
	ld a, [hl-]                                      ; $6538: $3a
	ldh a, [$74]                                     ; $6539: $f0 $74
	ldh a, [$7a]                                     ; $653b: $f0 $7a
	ld c, e                                          ; $653d: $4b
	inc de                                           ; $653e: $13
	ld [$a8c1], a                                    ; $653f: $ea $c1 $a8
	xor a                                            ; $6542: $af
	or l                                             ; $6543: $b5
	and e                                            ; $6544: $a3
	cpl                                              ; $6545: $2f
	db $ed                                           ; $6546: $ed
	ld l, [hl]                                       ; $6547: $6e
	inc [hl]                                         ; $6548: $34
	db $ec                                           ; $6549: $ec
	push af                                          ; $654a: $f5
	pop af                                           ; $654b: $f1
	add hl, de                                       ; $654c: $19
	pop af                                           ; $654d: $f1
	dec c                                            ; $654e: $0d
	ld d, e                                          ; $654f: $53
	inc de                                           ; $6550: $13
	ld [$f19b], a                                    ; $6551: $ea $9b $f1
	sbc $3b                                          ; $6554: $de $3b
	ccf                                              ; $6556: $3f
	jr c, jr_08c_65a7                                ; $6557: $38 $4e

	inc de                                           ; $6559: $13
	xor a                                            ; $655a: $af
	or l                                             ; $655b: $b5
	and e                                            ; $655c: $a3
	cpl                                              ; $655d: $2f
	db $ed                                           ; $655e: $ed
	ld l, [hl]                                       ; $655f: $6e
	xor h                                            ; $6560: $ac
	sbc b                                            ; $6561: $98
	pop af                                           ; $6562: $f1
	inc sp                                           ; $6563: $33
	ld e, c                                          ; $6564: $59
	sub e                                            ; $6565: $93
	add e                                            ; $6566: $83
	ldh a, [$fd]                                     ; $6567: $f0 $fd
	ldh a, [$3d]                                     ; $6569: $f0 $3d
	ld b, a                                          ; $656b: $47
	pop af                                           ; $656c: $f1
	add sp, -$10                                     ; $656d: $e8 $f0
	add hl, de                                       ; $656f: $19
	xor b                                            ; $6570: $a8
	xor a                                            ; $6571: $af
	or l                                             ; $6572: $b5
	and e                                            ; $6573: $a3
	cpl                                              ; $6574: $2f
	db $ed                                           ; $6575: $ed
	ld l, [hl]                                       ; $6576: $6e
	inc [hl]                                         ; $6577: $34
	ldh a, [$6d]                                     ; $6578: $f0 $6d
	ld e, c                                          ; $657a: $59
	ldh a, [$60]                                     ; $657b: $f0 $60
	ld b, d                                          ; $657d: $42
	db $ed                                           ; $657e: $ed
	add l                                            ; $657f: $85
	ld h, d                                          ; $6580: $62
	inc de                                           ; $6581: $13
	db $ed                                           ; $6582: $ed
	ld bc, $4e38                                     ; $6583: $01 $38 $4e
	xor b                                            ; $6586: $a8
	xor a                                            ; $6587: $af
	or l                                             ; $6588: $b5
	and e                                            ; $6589: $a3
	cpl                                              ; $658a: $2f
	ld [hl-], a                                      ; $658b: $32
	db $ec                                           ; $658c: $ec
	sub a                                            ; $658d: $97
	ld h, d                                          ; $658e: $62
	inc de                                           ; $658f: $13
	ldh a, [c]                                       ; $6590: $f2
	ret                                              ; $6591: $c9


	dec sp                                           ; $6592: $3b
	ccf                                              ; $6593: $3f
	jr c, jr_08c_65e4                                ; $6594: $38 $4e

	xor b                                            ; $6596: $a8
	xor a                                            ; $6597: $af
	or l                                             ; $6598: $b5
	xor b                                            ; $6599: $a8
	db $ec                                           ; $659a: $ec
	rst SubAFromDE                                          ; $659b: $df
	ld a, [hl-]                                      ; $659c: $3a
	ld d, b                                          ; $659d: $50
	add a                                            ; $659e: $87
	ldh a, [$5b]                                     ; $659f: $f0 $5b
	ldh a, [$5e]                                     ; $65a1: $f0 $5e
	inc a                                            ; $65a3: $3c
	ld a, [hl-]                                      ; $65a4: $3a
	and e                                            ; $65a5: $a3
	cpl                                              ; $65a6: $2f

jr_08c_65a7:
	ld [hl-], a                                      ; $65a7: $32

jr_08c_65a8:
	pop af                                           ; $65a8: $f1
	ld de, $65f0                                     ; $65a9: $11 $f0 $65
	ld d, e                                          ; $65ac: $53
	ldh a, [c]                                       ; $65ad: $f2
	ld e, c                                          ; $65ae: $59
	jr c, jr_08c_6605                                ; $65af: $38 $54

	ld c, c                                          ; $65b1: $49
	ld h, d                                          ; $65b2: $62
	inc de                                           ; $65b3: $13
	ld a, a                                          ; $65b4: $7f
	ld b, a                                          ; $65b5: $47
	ld a, $3f                                        ; $65b6: $3e $3f
	jr c, jr_08c_65f9                                ; $65b8: $38 $3f

	xor h                                            ; $65ba: $ac
	ld b, [hl]                                       ; $65bb: $46
	ld d, d                                          ; $65bc: $52
	ld d, a                                          ; $65bd: $57
	db $ed                                           ; $65be: $ed
	ld l, $3a                                        ; $65bf: $2e $3a
	db $ed                                           ; $65c1: $ed
	ld h, d                                          ; $65c2: $62
	ldh a, [c]                                       ; $65c3: $f2
	ld h, a                                          ; $65c4: $67
	ld e, h                                          ; $65c5: $5c
	ld b, [hl]                                       ; $65c6: $46
	jr c, @+$55                                      ; $65c7: $38 $53

	inc de                                           ; $65c9: $13
	ld c, d                                          ; $65ca: $4a
	ld e, h                                          ; $65cb: $5c
	ld a, [hl-]                                      ; $65cc: $3a
	jr c, jr_08c_661f                                ; $65cd: $38 $50

	ld a, $38                                        ; $65cf: $3e $38
	and e                                            ; $65d1: $a3
	cpl                                              ; $65d2: $2f
	ld [hl-], a                                      ; $65d3: $32
	db $ec                                           ; $65d4: $ec
	ld [hl], h                                       ; $65d5: $74
	ld b, a                                          ; $65d6: $47
	ldh a, [c]                                       ; $65d7: $f2
	ld e, c                                          ; $65d8: $59
	jr c, @+$44                                      ; $65d9: $38 $42

	ld c, d                                          ; $65db: $4a
	inc de                                           ; $65dc: $13
	pop af                                           ; $65dd: $f1
	cpl                                              ; $65de: $2f
	ld l, [hl]                                       ; $65df: $6e
	db $ec                                           ; $65e0: $ec
	db $fc                                           ; $65e1: $fc
	ld c, e                                          ; $65e2: $4b
	db $ed                                           ; $65e3: $ed

jr_08c_65e4:
	ld l, b                                          ; $65e4: $68
	xor b                                            ; $65e5: $a8
	xor a                                            ; $65e6: $af
	or l                                             ; $65e7: $b5
	and e                                            ; $65e8: $a3
	cpl                                              ; $65e9: $2f
	ld [hl-], a                                      ; $65ea: $32
	pop af                                           ; $65eb: $f1
	ld de, $65f0                                     ; $65ec: $11 $f0 $65
	ld d, e                                          ; $65ef: $53
	ldh a, [c]                                       ; $65f0: $f2
	ld e, c                                          ; $65f1: $59
	jr c, jr_08c_6636                                ; $65f2: $38 $42

	ld c, d                                          ; $65f4: $4a
	inc de                                           ; $65f5: $13
	add e                                            ; $65f6: $83
	ldh a, [$2f]                                     ; $65f7: $f0 $2f

jr_08c_65f9:
	ld e, c                                          ; $65f9: $59
	ld c, e                                          ; $65fa: $4b
	ld h, a                                          ; $65fb: $67
	inc a                                            ; $65fc: $3c
	ld a, [hl-]                                      ; $65fd: $3a
	jr c, jr_08c_65a8                                ; $65fe: $38 $a8

	xor a                                            ; $6600: $af
	or l                                             ; $6601: $b5
	and e                                            ; $6602: $a3
	cpl                                              ; $6603: $2f
	ld [hl-], a                                      ; $6604: $32

jr_08c_6605:
	db $ec                                           ; $6605: $ec
	pop af                                           ; $6606: $f1
	db $ec                                           ; $6607: $ec
	add hl, hl                                       ; $6608: $29
	xor b                                            ; $6609: $a8
	xor a                                            ; $660a: $af
	or l                                             ; $660b: $b5
	and e                                            ; $660c: $a3
	cpl                                              ; $660d: $2f
	ld [hl-], a                                      ; $660e: $32
	ldh a, [$74]                                     ; $660f: $f0 $74
	ldh a, [$7a]                                     ; $6611: $f0 $7a
	db $ec                                           ; $6613: $ec
	add hl, hl                                       ; $6614: $29
	xor b                                            ; $6615: $a8
	xor a                                            ; $6616: $af
	or l                                             ; $6617: $b5
	and e                                            ; $6618: $a3
	cpl                                              ; $6619: $2f
	ld [hl-], a                                      ; $661a: $32
	ld [$4b29], a                                    ; $661b: $ea $29 $4b
	inc de                                           ; $661e: $13

jr_08c_661f:
	adc e                                            ; $661f: $8b
	ld e, h                                          ; $6620: $5c
	db $ec                                           ; $6621: $ec
	ret c                                            ; $6622: $d8

	xor a                                            ; $6623: $af
	inc de                                           ; $6624: $13
	or l                                             ; $6625: $b5
	and e                                            ; $6626: $a3
	cpl                                              ; $6627: $2f
	ld [hl-], a                                      ; $6628: $32
	db $eb                                           ; $6629: $eb
	add c                                            ; $662a: $81
	ld c, e                                          ; $662b: $4b
	ld b, [hl]                                       ; $662c: $46
	ld d, d                                          ; $662d: $52
	ld d, a                                          ; $662e: $57
	inc de                                           ; $662f: $13
	adc e                                            ; $6630: $8b
	ld e, h                                          ; $6631: $5c
	db $ec                                           ; $6632: $ec
	ret c                                            ; $6633: $d8

	xor a                                            ; $6634: $af
	inc de                                           ; $6635: $13

jr_08c_6636:
	or l                                             ; $6636: $b5
	and e                                            ; $6637: $a3
	ld c, a                                          ; $6638: $4f
	add hl, sp                                       ; $6639: $39
	ldh a, [c]                                       ; $663a: $f2
	ld d, h                                          ; $663b: $54
	ld d, e                                          ; $663c: $53
	inc de                                           ; $663d: $13
	ldh a, [c]                                       ; $663e: $f2
	ld c, l                                          ; $663f: $4d
	jr c, jr_08c_6681                                ; $6640: $38 $3f

	ld c, [hl]                                       ; $6642: $4e
	ld b, c                                          ; $6643: $41
	ld c, d                                          ; $6644: $4a
	ld d, c                                          ; $6645: $51
	ld c, h                                          ; $6646: $4c
	and b                                            ; $6647: $a0
	cpl                                              ; $6648: $2f

jr_08c_6649:
	ld b, e                                          ; $6649: $43
	jp hl                                            ; $664a: $e9


	inc [hl]                                         ; $664b: $34
	and b                                            ; $664c: $a0
	jr c, jr_08c_6687                                ; $664d: $38 $38

jr_08c_664f:
	ld c, d                                          ; $664f: $4a
	ld d, c                                          ; $6650: $51
	ld c, h                                          ; $6651: $4c
	xor b                                            ; $6652: $a8
	ld [$a0a9], a                                    ; $6653: $ea $a9 $a0
	ld l, a                                          ; $6656: $6f
	inc [hl]                                         ; $6657: $34

jr_08c_6658:
	ld b, l                                          ; $6658: $45
	ld d, l                                          ; $6659: $55
	ld d, h                                          ; $665a: $54
	ld b, d                                          ; $665b: $42
	pop af                                           ; $665c: $f1
	jr z, jr_08c_664f                                ; $665d: $28 $f0

	ld b, h                                          ; $665f: $44
	ld c, d                                          ; $6660: $4a
	inc de                                           ; $6661: $13
	ldh a, [c]                                       ; $6662: $f2
	rst FarCall                                          ; $6663: $f7
	ld a, $38                                        ; $6664: $3e $38
	ld c, c                                          ; $6666: $49
	ld e, h                                          ; $6667: $5c
	ld b, a                                          ; $6668: $47
	xor h                                            ; $6669: $ac
	db $ed                                           ; $666a: $ed
	sbc e                                            ; $666b: $9b
	ld d, c                                          ; $666c: $51
	ld c, [hl]                                       ; $666d: $4e
	ld b, c                                          ; $666e: $41
	ld c, d                                          ; $666f: $4a
	ld d, c                                          ; $6670: $51
	ld b, l                                          ; $6671: $45
	and b                                            ; $6672: $a0
	cpl                                              ; $6673: $2f
	ld b, e                                          ; $6674: $43
	db $ed                                           ; $6675: $ed
	ld d, a                                          ; $6676: $57
	xor h                                            ; $6677: $ac
	ld [$cdca], a                                    ; $6678: $ea $ca $cd
	and b                                            ; $667b: $a0
	or [hl]                                          ; $667c: $b6
	xor b                                            ; $667d: $a8
	ld [$a0a9], a                                    ; $667e: $ea $a9 $a0

jr_08c_6681:
	cpl                                              ; $6681: $2f
	ld b, e                                          ; $6682: $43
	db $ed                                           ; $6683: $ed
	ld d, a                                          ; $6684: $57
	xor h                                            ; $6685: $ac
	db $ec                                           ; $6686: $ec

jr_08c_6687:
	ld c, [hl]                                       ; $6687: $4e
	call Call_08c_54a0                               ; $6688: $cd $a0 $54
	add hl, sp                                       ; $668b: $39
	jr c, jr_08c_66c7                                ; $668c: $38 $39

	ldh a, [$ee]                                     ; $668e: $f0 $ee
	ld c, e                                          ; $6690: $4b
	inc de                                           ; $6691: $13
	pop af                                           ; $6692: $f1
	jp nc, Jump_08c_4f4a                             ; $6693: $d2 $4a $4f

	ldh a, [c]                                       ; $6696: $f2
	rst FarCall                                          ; $6697: $f7
	ld a, $55                                        ; $6698: $3e $55
	ccf                                              ; $669a: $3f
	inc de                                           ; $669b: $13
	ld [$4ad9], a                                    ; $669c: $ea $d9 $4a
	ld d, c                                          ; $669f: $51
	ld c, h                                          ; $66a0: $4c
	and b                                            ; $66a1: $a0
	ld d, h                                          ; $66a2: $54
	add hl, sp                                       ; $66a3: $39
	jr c, jr_08c_66df                                ; $66a4: $38 $39

	ldh a, [$ee]                                     ; $66a6: $f0 $ee
	ld h, d                                          ; $66a8: $62
	inc de                                           ; $66a9: $13
	pop af                                           ; $66aa: $f1
	db $ed                                           ; $66ab: $ed
	pop af                                           ; $66ac: $f1
	ld h, $51                                        ; $66ad: $26 $51
	ld c, [hl]                                       ; $66af: $4e
	db $ec                                           ; $66b0: $ec
	or $ac                                           ; $66b1: $f6 $ac
	ld [$4ad9], a                                    ; $66b3: $ea $d9 $4a
	ld d, c                                          ; $66b6: $51
	ld c, h                                          ; $66b7: $4c
	and b                                            ; $66b8: $a0
	cpl                                              ; $66b9: $2f
	add sp, $32                                      ; $66ba: $e8 $32
	add hl, bc                                       ; $66bc: $09
	ld l, a                                          ; $66bd: $6f
	ld c, a                                          ; $66be: $4f
	inc [hl]                                         ; $66bf: $34
	ld b, b                                          ; $66c0: $40
	add hl, sp                                       ; $66c1: $39
	ld [hl], a                                       ; $66c2: $77
	jr c, jr_08c_6717                                ; $66c3: $38 $52

	ld d, c                                          ; $66c5: $51
	xor b                                            ; $66c6: $a8

jr_08c_66c7:
	jr c, jr_08c_6649                                ; $66c7: $38 $80

	ld c, a                                          ; $66c9: $4f
	di                                               ; $66ca: $f3
	ld a, [hl]                                       ; $66cb: $7e
	ld c, l                                          ; $66cc: $4d
	ccf                                              ; $66cd: $3f
	ccf                                              ; $66ce: $3f
	xor h                                            ; $66cf: $ac
	db $ec                                           ; $66d0: $ec
	ld hl, sp+$48                                    ; $66d1: $f8 $48
	and b                                            ; $66d3: $a0
	or [hl]                                          ; $66d4: $b6
	xor b                                            ; $66d5: $a8
	jr c, jr_08c_6658                                ; $66d6: $38 $80

	ld c, a                                          ; $66d8: $4f
	ld d, h                                          ; $66d9: $54
	add hl, sp                                       ; $66da: $39
	jr c, jr_08c_6716                                ; $66db: $38 $39

	ld b, d                                          ; $66dd: $42
	ld b, a                                          ; $66de: $47

jr_08c_66df:
	xor h                                            ; $66df: $ac
	di                                               ; $66e0: $f3
	ld a, [hl]                                       ; $66e1: $7e
	ld c, l                                          ; $66e2: $4d
	ccf                                              ; $66e3: $3f
	ld d, d                                          ; $66e4: $52
	ld d, c                                          ; $66e5: $51
	inc a                                            ; $66e6: $3c
	ld d, b                                          ; $66e7: $50
	ld c, b                                          ; $66e8: $48
	and b                                            ; $66e9: $a0
	or [hl]                                          ; $66ea: $b6
	xor b                                            ; $66eb: $a8
	ld b, l                                          ; $66ec: $45
	ld d, l                                          ; $66ed: $55
	sub h                                            ; $66ee: $94
	ccf                                              ; $66ef: $3f
	ld e, h                                          ; $66f0: $5c
	ld d, d                                          ; $66f1: $52
	ld d, c                                          ; $66f2: $51
	ld c, h                                          ; $66f3: $4c
	and b                                            ; $66f4: $a0
	cpl                                              ; $66f5: $2f
	add sp, $33                                      ; $66f6: $e8 $33
	add hl, bc                                       ; $66f8: $09
	rst JumpTable                                          ; $66f9: $c7
	ld c, d                                          ; $66fa: $4a
	ld d, c                                          ; $66fb: $51
	inc a                                            ; $66fc: $3c
	xor l                                            ; $66fd: $ad
	pop af                                           ; $66fe: $f1
	add hl, de                                       ; $66ff: $19
	pop af                                           ; $6700: $f1
	dec c                                            ; $6701: $0d
	ld l, h                                          ; $6702: $6c
	dec a                                            ; $6703: $3d
	jr c, jr_08c_674d                                ; $6704: $38 $47

	ld c, e                                          ; $6706: $4b
	xor h                                            ; $6707: $ac
	jr c, jr_08c_6746                                ; $6708: $38 $3c

	ld a, [hl-]                                      ; $670a: $3a
	jr c, jr_08c_675c                                ; $670b: $38 $4f

	ld b, d                                          ; $670d: $42
	ld c, d                                          ; $670e: $4a
	ld d, c                                          ; $670f: $51
	ld c, h                                          ; $6710: $4c
	ld c, b                                          ; $6711: $48
	and b                                            ; $6712: $a0
	cp [hl]                                          ; $6713: $be
	xor b                                            ; $6714: $a8
	ld h, h                                          ; $6715: $64

jr_08c_6716:
	ldh a, [c]                                       ; $6716: $f2

jr_08c_6717:
	add h                                            ; $6717: $84
	ld d, e                                          ; $6718: $53
	ldh a, [$c9]                                     ; $6719: $f0 $c9
	jr c, jr_08c_675a                                ; $671b: $38 $3d

	ld b, c                                          ; $671d: $41
	ld c, d                                          ; $671e: $4a
	ld d, c                                          ; $671f: $51
	inc a                                            ; $6720: $3c
	ld c, b                                          ; $6721: $48
	and b                                            ; $6722: $a0
	cp [hl]                                          ; $6723: $be
	xor l                                            ; $6724: $ad
	jp z, $b0ac                                      ; $6725: $ca $ac $b0

	and b                                            ; $6728: $a0
	cpl                                              ; $6729: $2f
	jp hl                                            ; $672a: $e9


	ld c, [hl]                                       ; $672b: $4e
	add hl, bc                                       ; $672c: $09
	ld d, h                                          ; $672d: $54
	add hl, sp                                       ; $672e: $39
	ld a, $3f                                        ; $672f: $3e $3f
	pop af                                           ; $6731: $f1
	ld h, $38                                        ; $6732: $26 $38
	ccf                                              ; $6734: $3f
	jr c, @+$50                                      ; $6735: $38 $4e

	ld c, c                                          ; $6737: $49
	xor h                                            ; $6738: $ac
	pop af                                           ; $6739: $f1
	add hl, de                                       ; $673a: $19
	pop af                                           ; $673b: $f1
	dec c                                            ; $673c: $0d
	ld b, d                                          ; $673d: $42
	ldh a, [rAUD2HIGH]                               ; $673e: $f0 $19
	ld b, d                                          ; $6740: $42
	db $ec                                           ; $6741: $ec
	ld l, e                                          ; $6742: $6b
	inc de                                           ; $6743: $13
	ld l, h                                          ; $6744: $6c
	dec a                                            ; $6745: $3d

jr_08c_6746:
	jr c, jr_08c_6792                                ; $6746: $38 $4a

	ld d, c                                          ; $6748: $51
	ld c, h                                          ; $6749: $4c
	ld c, b                                          ; $674a: $48
	and b                                            ; $674b: $a0
	ld d, h                                          ; $674c: $54

jr_08c_674d:
	add hl, sp                                       ; $674d: $39
	ld a, $3f                                        ; $674e: $3e $3f
	pop af                                           ; $6750: $f1
	ld h, $55                                        ; $6751: $26 $55
	ld c, c                                          ; $6753: $49
	xor h                                            ; $6754: $ac
	ldh a, [$7f]                                     ; $6755: $f0 $7f
	ld d, e                                          ; $6757: $53
	push af                                          ; $6758: $f5
	or c                                             ; $6759: $b1

jr_08c_675a:
	jr c, jr_08c_679b                                ; $675a: $38 $3f

jr_08c_675c:
	ld d, l                                          ; $675c: $55
	ld c, [hl]                                       ; $675d: $4e
	inc de                                           ; $675e: $13
	ld a, a                                          ; $675f: $7f
	ld d, e                                          ; $6760: $53
	ld a, $52                                        ; $6761: $3e $52
	ld d, c                                          ; $6763: $51
	and b                                            ; $6764: $a0
	ld l, a                                          ; $6765: $6f
	ld b, a                                          ; $6766: $47
	ld c, e                                          ; $6767: $4b
	xor h                                            ; $6768: $ac
	ld d, h                                          ; $6769: $54
	ld b, d                                          ; $676a: $42
	sbc l                                            ; $676b: $9d
	ld d, b                                          ; $676c: $50
	jr c, jr_08c_67b1                                ; $676d: $38 $42

	db $ed                                           ; $676f: $ed
	add [hl]                                         ; $6770: $86
	ld d, e                                          ; $6771: $53
	inc de                                           ; $6772: $13
	db $ed                                           ; $6773: $ed
	xor d                                            ; $6774: $aa
	jr c, jr_08c_67af                                ; $6775: $38 $38

	ld c, d                                          ; $6777: $4a
	ld d, c                                          ; $6778: $51
	ld c, h                                          ; $6779: $4c
	and b                                            ; $677a: $a0
	db $ec                                           ; $677b: $ec
	inc de                                           ; $677c: $13
	ldh a, [c]                                       ; $677d: $f2
	db $10                                           ; $677e: $10
	ld c, d                                          ; $677f: $4a
	ld d, c                                          ; $6780: $51
	ld c, h                                          ; $6781: $4c
	xor b                                            ; $6782: $a8
	db $ed                                           ; $6783: $ed
	jp nz, $f24a                                     ; $6784: $c2 $4a $f2

	rst FarCall                                          ; $6787: $f7
	ld a, $38                                        ; $6788: $3e $38
	ld c, d                                          ; $678a: $4a
	ld d, c                                          ; $678b: $51
	ld a, $48                                        ; $678c: $3e $48
	and b                                            ; $678e: $a0
	db $ec                                           ; $678f: $ec
	inc de                                           ; $6790: $13
	ldh a, [c]                                       ; $6791: $f2

jr_08c_6792:
	db $10                                           ; $6792: $10
	ld c, d                                          ; $6793: $4a
	ld d, c                                          ; $6794: $51
	ld c, h                                          ; $6795: $4c
	xor b                                            ; $6796: $a8
	ldh a, [rHDMA4]                                  ; $6797: $f0 $54
	ld a, $f0                                        ; $6799: $3e $f0

jr_08c_679b:
	adc a                                            ; $679b: $8f
	ld l, h                                          ; $679c: $6c
	ld d, d                                          ; $679d: $52
	ld a, c                                          ; $679e: $79
	ld b, c                                          ; $679f: $41
	inc a                                            ; $67a0: $3c
	and c                                            ; $67a1: $a1
	cpl                                              ; $67a2: $2f
	add sp, -$61                                     ; $67a3: $e8 $9f
	add hl, bc                                       ; $67a5: $09
	ldh a, [c]                                       ; $67a6: $f2
	db $10                                           ; $67a7: $10
	ld b, d                                          ; $67a8: $42
	push af                                          ; $67a9: $f5
	ld b, c                                          ; $67aa: $41
	ld b, d                                          ; $67ab: $42
	db $ed                                           ; $67ac: $ed
	ld a, [bc]                                       ; $67ad: $0a
	ld b, a                                          ; $67ae: $47

jr_08c_67af:
	ldh a, [$e7]                                     ; $67af: $f0 $e7

jr_08c_67b1:
	dec sp                                           ; $67b1: $3b
	ccf                                              ; $67b2: $3f
	inc de                                           ; $67b3: $13
	ld h, h                                          ; $67b4: $64
	ldh a, [rAUDVOL]                                 ; $67b5: $f0 $24
	ld a, $4a                                        ; $67b7: $3e $4a
	ld e, h                                          ; $67b9: $5c
	ld c, [hl]                                       ; $67ba: $4e
	ld a, [hl-]                                      ; $67bb: $3a
	ld b, c                                          ; $67bc: $41
	ccf                                              ; $67bd: $3f
	xor h                                            ; $67be: $ac
	pop af                                           ; $67bf: $f1
	add sp, $6c                                      ; $67c0: $e8 $6c
	dec a                                            ; $67c2: $3d
	jr c, jr_08c_680f                                ; $67c3: $38 $4a

	ld d, c                                          ; $67c5: $51
	ld c, b                                          ; $67c6: $48
	and b                                            ; $67c7: $a0
	db $ec                                           ; $67c8: $ec
	cp c                                             ; $67c9: $b9
	xor b                                            ; $67ca: $a8
	ld b, b                                          ; $67cb: $40
	ld c, l                                          ; $67cc: $4d
	ld a, [hl-]                                      ; $67cd: $3a
	ld d, b                                          ; $67ce: $50
	inc [hl]                                         ; $67cf: $34
	db $ed                                           ; $67d0: $ed
	ld a, [bc]                                       ; $67d1: $0a
	ld b, a                                          ; $67d2: $47
	ldh a, [$e7]                                     ; $67d3: $f0 $e7
	dec sp                                           ; $67d5: $3b
	ccf                                              ; $67d6: $3f
	inc de                                           ; $67d7: $13
	ld [$a0f9], a                                    ; $67d8: $ea $f9 $a0
	db $ec                                           ; $67db: $ec
	cp c                                             ; $67dc: $b9
	xor b                                            ; $67dd: $a8
	db $ed                                           ; $67de: $ed
	ld a, [bc]                                       ; $67df: $0a
	ld b, a                                          ; $67e0: $47
	ldh a, [$e7]                                     ; $67e1: $f0 $e7
	ld d, a                                          ; $67e3: $57
	ld d, d                                          ; $67e4: $52
	ld a, $66                                        ; $67e5: $3e $66
	add hl, sp                                       ; $67e7: $39
	and b                                            ; $67e8: $a0
	cpl                                              ; $67e9: $2f
	add sp, -$62                                     ; $67ea: $e8 $9e
	add hl, bc                                       ; $67ec: $09
	ld e, [hl]                                       ; $67ed: $5e
	dec sp                                           ; $67ee: $3b
	xor c                                            ; $67ef: $a9
	adc b                                            ; $67f0: $88
	sub c                                            ; $67f1: $91
	ld c, d                                          ; $67f2: $4a
	ld d, c                                          ; $67f3: $51
	inc a                                            ; $67f4: $3c
	ld c, b                                          ; $67f5: $48
	scf                                              ; $67f6: $37
	inc de                                           ; $67f7: $13
	ld h, e                                          ; $67f8: $63
	inc [hl]                                         ; $67f9: $34
	ld l, a                                          ; $67fa: $6f
	inc [hl]                                         ; $67fb: $34
	xor $05                                          ; $67fc: $ee $05
	ld a, [hl-]                                      ; $67fe: $3a
	ld b, c                                          ; $67ff: $41
	ld c, d                                          ; $6800: $4a
	ld d, c                                          ; $6801: $51
	ld c, b                                          ; $6802: $48
	and b                                            ; $6803: $a0
	ld h, e                                          ; $6804: $63
	inc [hl]                                         ; $6805: $34
	ld l, a                                          ; $6806: $6f
	inc [hl]                                         ; $6807: $34
	xor $05                                          ; $6808: $ee $05
	ld a, [hl-]                                      ; $680a: $3a
	ld b, c                                          ; $680b: $41
	ld c, d                                          ; $680c: $4a
	ld d, c                                          ; $680d: $51
	xor b                                            ; $680e: $a8

jr_08c_680f:
	ldh a, [$34]                                     ; $680f: $f0 $34
	ld b, d                                          ; $6811: $42
	ldh a, [$28]                                     ; $6812: $f0 $28
	ld b, a                                          ; $6814: $47
	ld h, a                                          ; $6815: $67
	inc a                                            ; $6816: $3c
	ld a, [hl-]                                      ; $6817: $3a
	jr c, jr_08c_6863                                ; $6818: $38 $49

	ld c, b                                          ; $681a: $48
	and b                                            ; $681b: $a0
	ld b, h                                          ; $681c: $44
	inc [hl]                                         ; $681d: $34
	ld b, h                                          ; $681e: $44
	dec sp                                           ; $681f: $3b
	dec a                                            ; $6820: $3d
	ld d, b                                          ; $6821: $50
	xor h                                            ; $6822: $ac
	pop af                                           ; $6823: $f1
	ld l, a                                          ; $6824: $6f
	ld b, d                                          ; $6825: $42
	ldh a, [$30]                                     ; $6826: $f0 $30
	ldh a, [$28]                                     ; $6828: $f0 $28
	ld b, a                                          ; $682a: $47
	ld h, a                                          ; $682b: $67
	inc a                                            ; $682c: $3c
	ld a, [hl-]                                      ; $682d: $3a
	jr c, jr_08c_6879                                ; $682e: $38 $49

	ld c, b                                          ; $6830: $48
	and b                                            ; $6831: $a0
	cpl                                              ; $6832: $2f
	db $ed                                           ; $6833: $ed
	sbc e                                            ; $6834: $9b
	ld c, d                                          ; $6835: $4a
	ld c, a                                          ; $6836: $4f
	db $ec                                           ; $6837: $ec
	inc c                                            ; $6838: $0c
	and c                                            ; $6839: $a1
	db $ed                                           ; $683a: $ed
	sbc e                                            ; $683b: $9b
	ld c, a                                          ; $683c: $4f
	jr c, jr_08c_6877                                ; $683d: $38 $38

	ld c, d                                          ; $683f: $4a
	ld d, c                                          ; $6840: $51
	ld e, l                                          ; $6841: $5d
	ld e, d                                          ; $6842: $5a
	xor h                                            ; $6843: $ac
	db $ec                                           ; $6844: $ec
	add hl, bc                                       ; $6845: $09
	xor h                                            ; $6846: $ac
	xor $06                                          ; $6847: $ee $06
	ld b, a                                          ; $6849: $47
	jr c, jr_08c_689a                                ; $684a: $38 $4e

	ld b, c                                          ; $684c: $41
	ld c, d                                          ; $684d: $4a

jr_08c_684e:
	ld d, c                                          ; $684e: $51
	inc a                                            ; $684f: $3c
	ld d, b                                          ; $6850: $50
	ld c, b                                          ; $6851: $48
	and b                                            ; $6852: $a0
	ld b, b                                          ; $6853: $40
	ld c, l                                          ; $6854: $4d
	xor $2d                                          ; $6855: $ee $2d
	jr c, jr_08c_68a3                                ; $6857: $38 $4a

	ld d, c                                          ; $6859: $51
	ld c, h                                          ; $685a: $4c
	xor b                                            ; $685b: $a8
	ld c, d                                          ; $685c: $4a
	ld c, a                                          ; $685d: $4f
	inc [hl]                                         ; $685e: $34
	ld c, a                                          ; $685f: $4f
	add hl, sp                                       ; $6860: $39
	ldh a, [rHDMA4]                                  ; $6861: $f0 $54

jr_08c_6863:
	ld a, $ac                                        ; $6863: $3e $ac
	ld h, h                                          ; $6865: $64
	ldh a, [rAUDVOL]                                 ; $6866: $f0 $24
	ld a, $52                                        ; $6868: $3e $52
	ld a, $66                                        ; $686a: $3e $66
	add hl, sp                                       ; $686c: $39
	and b                                            ; $686d: $a0
	ld b, b                                          ; $686e: $40
	ld c, l                                          ; $686f: $4d
	ld c, e                                          ; $6870: $4b
	xor h                                            ; $6871: $ac
	jr c, jr_08c_68ac                                ; $6872: $38 $38

	ldh a, [$a4]                                     ; $6874: $f0 $a4
	ld e, [hl]                                       ; $6876: $5e

jr_08c_6877:
	ld c, d                                          ; $6877: $4a
	ld d, c                                          ; $6878: $51

jr_08c_6879:
	ld c, h                                          ; $6879: $4c
	and b                                            ; $687a: $a0
	ld c, a                                          ; $687b: $4f
	add hl, sp                                       ; $687c: $39
	inc [hl]                                         ; $687d: $34
	ldh a, [c]                                       ; $687e: $f2
	adc [hl]                                         ; $687f: $8e
	ldh a, [hLCDCIntHandlerIdx]                                     ; $6880: $f0 $81
	ld c, d                                          ; $6882: $4a
	ld d, c                                          ; $6883: $51
	ld c, h                                          ; $6884: $4c
	xor b                                            ; $6885: $a8
	ld d, c                                          ; $6886: $51
	sbc l                                            ; $6887: $9d
	pop af                                           ; $6888: $f1
	db $ed                                           ; $6889: $ed
	dec sp                                           ; $688a: $3b
	ccf                                              ; $688b: $3f
	ld a, $52                                        ; $688c: $3e $52
	add hl, sp                                       ; $688e: $39
	ld b, d                                          ; $688f: $42
	ld d, e                                          ; $6890: $53
	xor h                                            ; $6891: $ac
	pop af                                           ; $6892: $f1
	xor b                                            ; $6893: $a8
	ld a, $38                                        ; $6894: $3e $38
	ld c, d                                          ; $6896: $4a
	ld d, c                                          ; $6897: $51
	ld e, l                                          ; $6898: $5d
	ld e, d                                          ; $6899: $5a

jr_08c_689a:
	ld c, b                                          ; $689a: $48
	and b                                            ; $689b: $a0
	cpl                                              ; $689c: $2f
	add sp, $66                                      ; $689d: $e8 $66
	add hl, bc                                       ; $689f: $09
	ld c, d                                          ; $68a0: $4a
	ld c, a                                          ; $68a1: $4f
	inc [hl]                                         ; $68a2: $34

jr_08c_68a3:
	adc d                                            ; $68a3: $8a
	ld a, $38                                        ; $68a4: $3e $38
	pop af                                           ; $68a6: $f1
	ld [hl], b                                       ; $68a7: $70
	ld c, e                                          ; $68a8: $4b
	inc de                                           ; $68a9: $13
	ld c, e                                          ; $68aa: $4b
	inc a                                            ; $68ab: $3c

jr_08c_68ac:
	ld a, [hl-]                                      ; $68ac: $3a
	jr c, jr_08c_68fe                                ; $68ad: $38 $4f

	ld b, d                                          ; $68af: $42
	ld b, a                                          ; $68b0: $47
	ld a, $3d                                        ; $68b1: $3e $3d
	ld d, l                                          ; $68b3: $55
	ld c, e                                          ; $68b4: $4b
	inc de                                           ; $68b5: $13
	ld a, [hl-]                                      ; $68b6: $3a
	jr c, jr_08c_6903                                ; $68b7: $38 $4a

	ld d, c                                          ; $68b9: $51
	ld c, h                                          ; $68ba: $4c
	and b                                            ; $68bb: $a0
	or [hl]                                          ; $68bc: $b6
	xor b                                            ; $68bd: $a8
	ld d, h                                          ; $68be: $54
	ld b, d                                          ; $68bf: $42
	ld c, e                                          ; $68c0: $4b
	inc a                                            ; $68c1: $3c
	ld a, [hl-]                                      ; $68c2: $3a
	ld e, b                                          ; $68c3: $58
	ld h, d                                          ; $68c4: $62
	pop af                                           ; $68c5: $f1
	jp $ac47                                         ; $68c6: $c3 $47 $ac


	sbc e                                            ; $68c9: $9b
	ld h, d                                          ; $68ca: $62
	ld [hl], a                                       ; $68cb: $77
	jr c, jr_08c_684e                                ; $68cc: $38 $80

	ld e, h                                          ; $68ce: $5c
	ld b, b                                          ; $68cf: $40
	add hl, sp                                       ; $68d0: $39
	ld c, d                                          ; $68d1: $4a
	ld d, c                                          ; $68d2: $51
	and b                                            ; $68d3: $a0
	ld d, d                                          ; $68d4: $52
	dec sp                                           ; $68d5: $3b
	dec a                                            ; $68d6: $3d
	ld d, l                                          ; $68d7: $55
	ld b, b                                          ; $68d8: $40
	ld b, d                                          ; $68d9: $42
	ldh a, [rOCPS]                                   ; $68da: $f0 $6a
	ld d, a                                          ; $68dc: $57
	inc a                                            ; $68dd: $3c
	ld c, a                                          ; $68de: $4f
	inc de                                           ; $68df: $13
	ld a, $4d                                        ; $68e0: $3e $4d
	ld d, d                                          ; $68e2: $52
	ld a, c                                          ; $68e3: $79
	ld b, c                                          ; $68e4: $41
	ld c, h                                          ; $68e5: $4c
	and b                                            ; $68e6: $a0
	cpl                                              ; $68e7: $2f
	add sp, -$60                                     ; $68e8: $e8 $a0
	add hl, bc                                       ; $68ea: $09
	ld b, b                                          ; $68eb: $40
	add hl, sp                                       ; $68ec: $39
	ld c, d                                          ; $68ed: $4a
	ld d, c                                          ; $68ee: $51
	ld e, l                                          ; $68ef: $5d
	ld e, d                                          ; $68f0: $5a
	xor l                                            ; $68f1: $ad
	ld d, h                                          ; $68f2: $54
	ld b, c                                          ; $68f3: $41
	ld a, [hl-]                                      ; $68f4: $3a
	ld b, a                                          ; $68f5: $47
	db $ec                                           ; $68f6: $ec
	inc de                                           ; $68f7: $13
	ldh a, [c]                                       ; $68f8: $f2
	ld d, h                                          ; $68f9: $54
	ld h, d                                          ; $68fa: $62
	ld [hl], d                                       ; $68fb: $72
	ccf                                              ; $68fc: $3f
	xor h                                            ; $68fd: $ac

jr_08c_68fe:
	ld l, e                                          ; $68fe: $6b
	ld c, a                                          ; $68ff: $4f
	ldh a, [$78]                                     ; $6900: $f0 $78
	ld e, e                                          ; $6902: $5b

jr_08c_6903:
	ld a, [hl-]                                      ; $6903: $3a
	jr c, jr_08c_6940                                ; $6904: $38 $3a

	ld b, c                                          ; $6906: $41
	ccf                                              ; $6907: $3f
	ld c, b                                          ; $6908: $48
	and b                                            ; $6909: $a0
	ld b, b                                          ; $690a: $40
	add hl, sp                                       ; $690b: $39
	jr c, @+$3b                                      ; $690c: $38 $39

	ldh a, [$28]                                     ; $690e: $f0 $28
	ld b, a                                          ; $6910: $47
	ld a, $3c                                        ; $6911: $3e $3c
	xor h                                            ; $6913: $ac
	ldh a, [rAUD3LEVEL]                              ; $6914: $f0 $1c
	ld d, e                                          ; $6916: $53
	jr c, jr_08c_6955                                ; $6917: $38 $3c

	ld a, [hl-]                                      ; $6919: $3a
	jr c, jr_08c_6956                                ; $691a: $38 $3a

	ld b, c                                          ; $691c: $41
	ccf                                              ; $691d: $3f
	xor h                                            ; $691e: $ac
	db $ed                                           ; $691f: $ed
	dec bc                                           ; $6920: $0b
	ld c, d                                          ; $6921: $4a
	ld d, c                                          ; $6922: $51
	ld c, h                                          ; $6923: $4c
	ld c, b                                          ; $6924: $48
	and b                                            ; $6925: $a0
	ld b, b                                          ; $6926: $40
	add hl, sp                                       ; $6927: $39
	jr c, jr_08c_6963                                ; $6928: $38 $39

	ldh a, [$28]                                     ; $692a: $f0 $28
	ld b, a                                          ; $692c: $47
	ld a, $3c                                        ; $692d: $3e $3c
	xor h                                            ; $692f: $ac
	ldh a, [rAUD3LEVEL]                              ; $6930: $f0 $1c
	ld d, e                                          ; $6932: $53
	jr c, @+$3e                                      ; $6933: $38 $3c

	ld a, [hl-]                                      ; $6935: $3a
	jr c, jr_08c_6979                                ; $6936: $38 $41

	ld c, d                                          ; $6938: $4a
	ld d, c                                          ; $6939: $51
	ld c, h                                          ; $693a: $4c
	and b                                            ; $693b: $a0
	cpl                                              ; $693c: $2f
	add sp, $67                                      ; $693d: $e8 $67
	add hl, bc                                       ; $693f: $09

jr_08c_6940:
	ld [$ad81], a                                    ; $6940: $ea $81 $ad
	ld c, d                                          ; $6943: $4a
	ld c, a                                          ; $6944: $4f
	inc [hl]                                         ; $6945: $34
	jr c, @-$7e                                      ; $6946: $38 $80

	ld d, d                                          ; $6948: $52
	ld c, d                                          ; $6949: $4a
	ld c, a                                          ; $694a: $4f
	ldh a, [$5d]                                     ; $694b: $f0 $5d
	ld e, [hl]                                       ; $694d: $5e
	dec a                                            ; $694e: $3d
	ld d, l                                          ; $694f: $55
	inc de                                           ; $6950: $13
	ld a, [hl-]                                      ; $6951: $3a
	jr c, jr_08c_69a3                                ; $6952: $38 $4f

	ld b, d                                          ; $6954: $42

jr_08c_6955:
	ld c, a                                          ; $6955: $4f

jr_08c_6956:
	ld b, [hl]                                       ; $6956: $46
	ld d, a                                          ; $6957: $57
	ld d, d                                          ; $6958: $52
	ld d, c                                          ; $6959: $51
	ld c, h                                          ; $695a: $4c
	ld c, b                                          ; $695b: $48
	and b                                            ; $695c: $a0
	ld [$ad81], a                                    ; $695d: $ea $81 $ad
	ld c, d                                          ; $6960: $4a
	ld c, a                                          ; $6961: $4f
	inc [hl]                                         ; $6962: $34

jr_08c_6963:
	ld b, b                                          ; $6963: $40
	ld c, l                                          ; $6964: $4d
	ld c, d                                          ; $6965: $4a
	ldh a, [c]                                       ; $6966: $f2
	db $db                                           ; $6967: $db
	ld d, d                                          ; $6968: $52
	ld a, c                                          ; $6969: $79
	ld c, [hl]                                       ; $696a: $4e
	ld c, c                                          ; $696b: $49
	xor h                                            ; $696c: $ac
	ld l, e                                          ; $696d: $6b
	ld b, h                                          ; $696e: $44
	inc a                                            ; $696f: $3c
	ldh a, [hDisp1_WY]                                     ; $6970: $f0 $95
	ld a, a                                          ; $6972: $7f
	ld a, [hl-]                                      ; $6973: $3a
	jr c, jr_08c_69c0                                ; $6974: $38 $4a

	ld d, c                                          ; $6976: $51
	ld c, h                                          ; $6977: $4c
	and b                                            ; $6978: $a0

jr_08c_6979:
	ld [$4881], a                                    ; $6979: $ea $81 $48
	and b                                            ; $697c: $a0
	ld b, b                                          ; $697d: $40
	ld c, l                                          ; $697e: $4d
	ld e, e                                          ; $697f: $5b
	ld d, [hl]                                       ; $6980: $56
	xor h                                            ; $6981: $ac
	ld e, d                                          ; $6982: $5a
	ld d, h                                          ; $6983: $54
	ld b, a                                          ; $6984: $47
	pop af                                           ; $6985: $f1
	ld c, $38                                        ; $6986: $0e $38
	ldh a, [$2c]                                     ; $6988: $f0 $2c
	ld b, a                                          ; $698a: $47
	inc de                                           ; $698b: $13
	ld [$3ca9], a                                    ; $698c: $ea $a9 $3c
	and c                                            ; $698f: $a1
	cpl                                              ; $6990: $2f
	add sp, -$29                                     ; $6991: $e8 $d7
	add hl, bc                                       ; $6993: $09
	cpl                                              ; $6994: $2f
	add sp, -$28                                     ; $6995: $e8 $d8
	add hl, bc                                       ; $6997: $09
	cpl                                              ; $6998: $2f
	add sp, -$27                                     ; $6999: $e8 $d9
	add hl, bc                                       ; $699b: $09
	ldh a, [$7e]                                     ; $699c: $f0 $7e
	inc [hl]                                         ; $699e: $34
	db $eb                                           ; $699f: $eb
	add c                                            ; $69a0: $81
	ld e, b                                          ; $69a1: $58
	ld b, c                                          ; $69a2: $41

jr_08c_69a3:
	inc de                                           ; $69a3: $13
	ld c, d                                          ; $69a4: $4a
	ld d, c                                          ; $69a5: $51
	inc a                                            ; $69a6: $3c
	ld [hl], $38                                     ; $69a7: $36 $38
	jr c, jr_08c_69f5                                ; $69a9: $38 $4a

	ld d, c                                          ; $69ab: $51
	ld e, l                                          ; $69ac: $5d
	ld e, d                                          ; $69ad: $5a
	ld c, b                                          ; $69ae: $48
	and b                                            ; $69af: $a0
	ld l, a                                          ; $69b0: $6f
	inc [hl]                                         ; $69b1: $34
	ldh a, [c]                                       ; $69b2: $f2
	sbc b                                            ; $69b3: $98
	pop af                                           ; $69b4: $f1
	ld a, d                                          ; $69b5: $7a
	ld c, c                                          ; $69b6: $49
	inc a                                            ; $69b7: $3c
	ld h, d                                          ; $69b8: $62
	inc de                                           ; $69b9: $13
	ld [hl], d                                       ; $69ba: $72
	ld b, a                                          ; $69bb: $47
	ld a, b                                          ; $69bc: $78
	ld c, [hl]                                       ; $69bd: $4e
	ld d, h                                          ; $69be: $54
	ld c, c                                          ; $69bf: $49

jr_08c_69c0:
	ld c, e                                          ; $69c0: $4b
	inc de                                           ; $69c1: $13
	ld b, b                                          ; $69c2: $40
	ld b, c                                          ; $69c3: $41
	ld a, [hl-]                                      ; $69c4: $3a
	ld b, a                                          ; $69c5: $47
	pop af                                           ; $69c6: $f1
	sub d                                            ; $69c7: $92
	ld d, l                                          ; $69c8: $55
	ld a, [hl-]                                      ; $69c9: $3a
	jr c, jr_08c_6a0d                                ; $69ca: $38 $41

	ld c, d                                          ; $69cc: $4a
	ld d, c                                          ; $69cd: $51
	and b                                            ; $69ce: $a0
	cpl                                              ; $69cf: $2f
	ld b, b                                          ; $69d0: $40
	ld c, l                                          ; $69d1: $4d
	ld a, [hl-]                                      ; $69d2: $3a
	ld d, b                                          ; $69d3: $50
	inc [hl]                                         ; $69d4: $34
	jp hl                                            ; $69d5: $e9


	xor a                                            ; $69d6: $af
	ld c, h                                          ; $69d7: $4c
	add hl, bc                                       ; $69d8: $09
	xor $2d                                          ; $69d9: $ee $2d
	xor b                                            ; $69db: $a8
	xor $06                                          ; $69dc: $ee $06
	ld b, a                                          ; $69de: $47
	ld [hl], d                                       ; $69df: $72
	ld c, l                                          ; $69e0: $4d
	ld c, [hl]                                       ; $69e1: $4e
	ld a, [hl-]                                      ; $69e2: $3a
	ld b, c                                          ; $69e3: $41
	ccf                                              ; $69e4: $3f
	xor h                                            ; $69e5: $ac
	pop af                                           ; $69e6: $f1
	and d                                            ; $69e7: $a2
	ld a, c                                          ; $69e8: $79
	ld c, d                                          ; $69e9: $4a
	ld d, c                                          ; $69ea: $51
	ld c, b                                          ; $69eb: $48
	and b                                            ; $69ec: $a0
	or [hl]                                          ; $69ed: $b6

jr_08c_69ee:
	xor b                                            ; $69ee: $a8
	xor $06                                          ; $69ef: $ee $06
	ld b, a                                          ; $69f1: $47
	ld [hl], d                                       ; $69f2: $72
	ccf                                              ; $69f3: $3f
	ld d, l                                          ; $69f4: $55

jr_08c_69f5:
	ld c, l                                          ; $69f5: $4d
	ld d, d                                          ; $69f6: $52
	ld d, c                                          ; $69f7: $51
	inc a                                            ; $69f8: $3c
	and c                                            ; $69f9: $a1
	ld b, [hl]                                       ; $69fa: $46
	ld d, a                                          ; $69fb: $57
	ld d, e                                          ; $69fc: $53
	ld c, c                                          ; $69fd: $49
	add hl, sp                                       ; $69fe: $39
	xor b                                            ; $69ff: $a8
	jp hl                                            ; $6a00: $e9


	ld a, [hl+]                                      ; $6a01: $2a
	and b                                            ; $6a02: $a0
	cpl                                              ; $6a03: $2f
	sbc $e1                                          ; $6a04: $de $e1
	ld a, [hl-]                                      ; $6a06: $3a
	ld b, d                                          ; $6a07: $42
	and c                                            ; $6a08: $a1
	ld b, b                                          ; $6a09: $40
	inc [hl]                                         ; $6a0a: $34
	ld b, b                                          ; $6a0b: $40
	ld b, c                                          ; $6a0c: $41

jr_08c_6a0d:
	ld a, [hl-]                                      ; $6a0d: $3a
	xor l                                            ; $6a0e: $ad
	ldh a, [$d8]                                     ; $6a0f: $f0 $d8
	ld e, d                                          ; $6a11: $5a
	jr c, jr_08c_6a5e                                ; $6a12: $38 $4a

	ld d, c                                          ; $6a14: $51
	ld c, b                                          ; $6a15: $48
	and b                                            ; $6a16: $a0
	ld b, b                                          ; $6a17: $40
	inc [hl]                                         ; $6a18: $34
	ld b, b                                          ; $6a19: $40
	ld b, c                                          ; $6a1a: $41
	ld a, [hl-]                                      ; $6a1b: $3a
	xor l                                            ; $6a1c: $ad
	ldh a, [c]                                       ; $6a1d: $f2
	sbc b                                            ; $6a1e: $98
	pop af                                           ; $6a1f: $f1
	ld a, d                                          ; $6a20: $7a
	ld b, a                                          ; $6a21: $47
	db $ed                                           ; $6a22: $ed
	ld [hl], h                                       ; $6a23: $74
	ld b, d                                          ; $6a24: $42
	ld a, [hl-]                                      ; $6a25: $3a
	jr c, jr_08c_6a3b                                ; $6a26: $38 $13

	pop hl                                           ; $6a28: $e1
	db $ed                                           ; $6a29: $ed
	ld b, e                                          ; $6a2a: $43
	jr c, jr_08c_6a7f                                ; $6a2b: $38 $52

	ld d, c                                          ; $6a2d: $51
	ld c, b                                          ; $6a2e: $48
	and b                                            ; $6a2f: $a0
	ld b, b                                          ; $6a30: $40
	ld b, c                                          ; $6a31: $41
	ld a, [hl-]                                      ; $6a32: $3a
	ld d, h                                          ; $6a33: $54
	ld c, c                                          ; $6a34: $49
	xor h                                            ; $6a35: $ac
	add d                                            ; $6a36: $82
	ld h, e                                          ; $6a37: $63
	ld a, [hl-]                                      ; $6a38: $3a
	ld d, l                                          ; $6a39: $55
	ccf                                              ; $6a3a: $3f

jr_08c_6a3b:
	ld c, a                                          ; $6a3b: $4f
	ld c, b                                          ; $6a3c: $48
	and b                                            ; $6a3d: $a0
	cpl                                              ; $6a3e: $2f
	db $ec                                           ; $6a3f: $ec
	db $d3                                           ; $6a40: $d3
	ld a, [hl-]                                      ; $6a41: $3a
	ld b, d                                          ; $6a42: $42
	and c                                            ; $6a43: $a1
	ldh a, [$3b]                                     ; $6a44: $f0 $3b
	dec sp                                           ; $6a46: $3b
	ccf                                              ; $6a47: $3f
	ld d, l                                          ; $6a48: $55
	ld c, l                                          ; $6a49: $4d
	ld c, [hl]                                       ; $6a4a: $4e
	db $ed                                           ; $6a4b: $ed
	ld h, d                                          ; $6a4c: $62
	ld d, e                                          ; $6a4d: $53
	xor h                                            ; $6a4e: $ac
	ld b, [hl]                                       ; $6a4f: $46
	ld d, d                                          ; $6a50: $52
	ld d, a                                          ; $6a51: $57
	jr c, jr_08c_6aa6                                ; $6a52: $38 $52

	ld a, c                                          ; $6a54: $79
	ld b, c                                          ; $6a55: $41
	ld a, $ac                                        ; $6a56: $3e $ac
	db $ed                                           ; $6a58: $ed
	jp Jump_08c_464b                                 ; $6a59: $c3 $4b $46


	ld d, d                                          ; $6a5c: $52
	ld d, a                                          ; $6a5d: $57

jr_08c_6a5e:
	ld c, b                                          ; $6a5e: $48
	and b                                            ; $6a5f: $a0
	ld l, a                                          ; $6a60: $6f
	ld b, d                                          ; $6a61: $42
	pop af                                           ; $6a62: $f1
	ld de, $65f0                                     ; $6a63: $11 $f0 $65
	ld h, d                                          ; $6a66: $62
	db $ed                                           ; $6a67: $ed
	ld h, h                                          ; $6a68: $64
	ld a, $3f                                        ; $6a69: $3e $3f
	xor h                                            ; $6a6b: $ac
	jr c, jr_08c_69ee                                ; $6a6c: $38 $80

	ld c, a                                          ; $6a6e: $4f
	ld h, h                                          ; $6a6f: $64
	di                                               ; $6a70: $f3
	ld [hl+], a                                      ; $6a71: $22
	ld e, b                                          ; $6a72: $58
	ld b, c                                          ; $6a73: $41
	ld d, e                                          ; $6a74: $53
	inc de                                           ; $6a75: $13
	pop af                                           ; $6a76: $f1
	ld c, $3b                                        ; $6a77: $0e $3b
	ccf                                              ; $6a79: $3f
	ld d, l                                          ; $6a7a: $55
	ld c, [hl]                                       ; $6a7b: $4e
	ld b, c                                          ; $6a7c: $41
	ld c, d                                          ; $6a7d: $4a
	ld d, c                                          ; $6a7e: $51

jr_08c_6a7f:
	and b                                            ; $6a7f: $a0
	pop af                                           ; $6a80: $f1
	ld de, $65f0                                     ; $6a81: $11 $f0 $65
	ld d, e                                          ; $6a84: $53
	ldh a, [c]                                       ; $6a85: $f2
	ld e, c                                          ; $6a86: $59
	jr c, jr_08c_6acb                                ; $6a87: $38 $42

	ld c, d                                          ; $6a89: $4a
	xor h                                            ; $6a8a: $ac
	ld b, [hl]                                       ; $6a8b: $46
	ld d, d                                          ; $6a8c: $52
	ld d, a                                          ; $6a8d: $57
	db $ed                                           ; $6a8e: $ed
	jp $1362                                         ; $6a8f: $c3 $62 $13


	ld a, $52                                        ; $6a92: $3e $52
	ld a, c                                          ; $6a94: $79
	ld b, c                                          ; $6a95: $41
	inc a                                            ; $6a96: $3c
	ld d, b                                          ; $6a97: $50
	ld c, b                                          ; $6a98: $48
	and b                                            ; $6a99: $a0
	pop af                                           ; $6a9a: $f1
	ld c, $38                                        ; $6a9b: $0e $38
	ldh a, [$2c]                                     ; $6a9d: $f0 $2c
	dec sp                                           ; $6a9f: $3b
	ccf                                              ; $6aa0: $3f
	xor h                                            ; $6aa1: $ac
	sub b                                            ; $6aa2: $90
	ld a, $38                                        ; $6aa3: $3e $38
	ld c, d                                          ; $6aa5: $4a

jr_08c_6aa6:
	ld d, c                                          ; $6aa6: $51
	ld c, h                                          ; $6aa7: $4c

Call_08c_6aa8:
	and b                                            ; $6aa8: $a0
	cpl                                              ; $6aa9: $2f
	ldh a, [$08]                                     ; $6aaa: $f0 $08
	ld d, b                                          ; $6aac: $50
	inc [hl]                                         ; $6aad: $34
	ld [$0947], a                                    ; $6aae: $ea $47 $09
	ld e, [hl]                                       ; $6ab1: $5e
	inc [hl]                                         ; $6ab2: $34
	jr c, @+$3a                                      ; $6ab3: $38 $38

	ld c, d                                          ; $6ab5: $4a
	ld d, c                                          ; $6ab6: $51
	xor l                                            ; $6ab7: $ad
	xor $08                                          ; $6ab8: $ee $08
	ld c, d                                          ; $6aba: $4a
	ldh a, [rHDMA1]                                  ; $6abb: $f0 $51
	ccf                                              ; $6abd: $3f
	ld d, d                                          ; $6abe: $52
	ld d, c                                          ; $6abf: $51
	inc a                                            ; $6ac0: $3c
	ld d, b                                          ; $6ac1: $50
	ld c, b                                          ; $6ac2: $48
	and b                                            ; $6ac3: $a0
	cpl                                              ; $6ac4: $2f
	ld b, e                                          ; $6ac5: $43
	jr c, jr_08c_6b00                                ; $6ac6: $38 $38

	inc a                                            ; $6ac8: $3c
	ld d, b                                          ; $6ac9: $50
	inc [hl]                                         ; $6aca: $34

jr_08c_6acb:
	jr c, jr_08c_6b05                                ; $6acb: $38 $38

	inc a                                            ; $6acd: $3c
	ld d, b                                          ; $6ace: $50
	xor b                                            ; $6acf: $a8
	ldh a, [c]                                       ; $6ad0: $f2
	ld hl, sp+$3e                                    ; $6ad1: $f8 $3e
	ccf                                              ; $6ad3: $3f
	and c                                            ; $6ad4: $a1
	jp hl                                            ; $6ad5: $e9


	inc d                                            ; $6ad6: $14
	xor b                                            ; $6ad7: $a8
	ldh a, [$29]                                     ; $6ad8: $f0 $29
	ld a, $38                                        ; $6ada: $3e $38
	ld c, d                                          ; $6adc: $4a
	ld d, c                                          ; $6add: $51
	and b                                            ; $6ade: $a0
	jp hl                                            ; $6adf: $e9


	inc d                                            ; $6ae0: $14
	xor b                                            ; $6ae1: $a8
	ld h, h                                          ; $6ae2: $64
	add d                                            ; $6ae3: $82
	pop af                                           ; $6ae4: $f1
	adc h                                            ; $6ae5: $8c
	ld b, a                                          ; $6ae6: $47
	di                                               ; $6ae7: $f3
	ld c, d                                          ; $6ae8: $4a
	ld e, [hl]                                       ; $6ae9: $5e
	ccf                                              ; $6aea: $3f
	xor h                                            ; $6aeb: $ac
	ld [$a0b6], a                                    ; $6aec: $ea $b6 $a0
	jp hl                                            ; $6aef: $e9


	inc d                                            ; $6af0: $14
	xor b                                            ; $6af1: $a8
	ld c, d                                          ; $6af2: $4a
	ld c, a                                          ; $6af3: $4f
	inc [hl]                                         ; $6af4: $34
	ld b, b                                          ; $6af5: $40
	ld b, c                                          ; $6af6: $41
	ld a, [hl-]                                      ; $6af7: $3a
	ld b, a                                          ; $6af8: $47
	inc de                                           ; $6af9: $13
	ldh a, [c]                                       ; $6afa: $f2
	sbc h                                            ; $6afb: $9c
	ld d, l                                          ; $6afc: $55
	ld a, [hl-]                                      ; $6afd: $3a
	jr c, jr_08c_6b4a                                ; $6afe: $38 $4a

jr_08c_6b00:
	ld d, c                                          ; $6b00: $51
	inc a                                            ; $6b01: $3c
	ld d, b                                          ; $6b02: $50
	ld c, b                                          ; $6b03: $48
	and b                                            ; $6b04: $a0

jr_08c_6b05:
	cpl                                              ; $6b05: $2f
	ldh a, [$9a]                                     ; $6b06: $f0 $9a
	ld e, h                                          ; $6b08: $5c
	ldh a, [rTMA]                                    ; $6b09: $f0 $06
	dec sp                                           ; $6b0b: $3b
	ccf                                              ; $6b0c: $3f
	inc [hl]                                         ; $6b0d: $34
	db $eb                                           ; $6b0e: $eb
	jr c, jr_08c_6b56                                ; $6b0f: $38 $45

	add hl, bc                                       ; $6b11: $09
	db $eb                                           ; $6b12: $eb
	ld d, a                                          ; $6b13: $57
	ld c, d                                          ; $6b14: $4a
	ld a, $3d                                        ; $6b15: $3e $3d
	xor b                                            ; $6b17: $a8
	xor $06                                          ; $6b18: $ee $06
	ld b, a                                          ; $6b1a: $47
	pop af                                           ; $6b1b: $f1
	ld c, $38                                        ; $6b1c: $0e $38
	ldh a, [$2c]                                     ; $6b1e: $f0 $2c
	ld d, c                                          ; $6b20: $51
	ld c, [hl]                                       ; $6b21: $4e
	ld b, d                                          ; $6b22: $42
	ld d, e                                          ; $6b23: $53
	inc de                                           ; $6b24: $13
	sub b                                            ; $6b25: $90
	ld a, $55                                        ; $6b26: $3e $55
	ccf                                              ; $6b28: $3f
	inc [hl]                                         ; $6b29: $34
	add b                                            ; $6b2a: $80
	jr c, jr_08c_6b75                                ; $6b2b: $38 $48

	and b                                            ; $6b2d: $a0
	db $eb                                           ; $6b2e: $eb
	ld d, a                                          ; $6b2f: $57
	ld c, d                                          ; $6b30: $4a
	ld a, $3d                                        ; $6b31: $3e $3d
	xor b                                            ; $6b33: $a8
	ld l, d                                          ; $6b34: $6a
	ldh a, [$0d]                                     ; $6b35: $f0 $0d
	inc a                                            ; $6b37: $3c
	ld d, b                                          ; $6b38: $50
	inc de                                           ; $6b39: $13
	ld a, a                                          ; $6b3a: $7f
	ld h, d                                          ; $6b3b: $62
	ldh a, [$9a]                                     ; $6b3c: $f0 $9a
	ld e, l                                          ; $6b3e: $5d
	ld d, d                                          ; $6b3f: $52
	ld d, c                                          ; $6b40: $51
	ld b, d                                          ; $6b41: $42
	ld c, d                                          ; $6b42: $4a
	ld c, b                                          ; $6b43: $48
	and b                                            ; $6b44: $a0
	db $eb                                           ; $6b45: $eb
	ld d, a                                          ; $6b46: $57
	ld c, d                                          ; $6b47: $4a
	ld a, $3d                                        ; $6b48: $3e $3d

jr_08c_6b4a:
	xor b                                            ; $6b4a: $a8
	ld l, a                                          ; $6b4b: $6f
	ld a, e                                          ; $6b4c: $7b
	inc a                                            ; $6b4d: $3c
	ld d, a                                          ; $6b4e: $57
	inc de                                           ; $6b4f: $13
	sub b                                            ; $6b50: $90
	ld a, $41                                        ; $6b51: $3e $41
	ld c, d                                          ; $6b53: $4a
	ld a, $52                                        ; $6b54: $3e $52

jr_08c_6b56:
	dec sp                                           ; $6b56: $3b
	ccf                                              ; $6b57: $3f
	ld c, b                                          ; $6b58: $48
	and b                                            ; $6b59: $a0
	cpl                                              ; $6b5a: $2f
	pop af                                           ; $6b5b: $f1
	ld de, $65f0                                     ; $6b5c: $11 $f0 $65
	ld c, e                                          ; $6b5f: $4b
	add a                                            ; $6b60: $87
	ldh a, [$5b]                                     ; $6b61: $f0 $5b
	ldh a, [$5e]                                     ; $6b63: $f0 $5e
	and c                                            ; $6b65: $a1
	db $ed                                           ; $6b66: $ed
	ld h, h                                          ; $6b67: $64
	ld a, $3f                                        ; $6b68: $3e $3f
	ld d, l                                          ; $6b6a: $55
	ld b, h                                          ; $6b6b: $44
	ld e, b                                          ; $6b6c: $58
	dec sp                                           ; $6b6d: $3b
	ccf                                              ; $6b6e: $3f
	xor h                                            ; $6b6f: $ac
	jp hl                                            ; $6b70: $e9


	inc d                                            ; $6b71: $14
	xor b                                            ; $6b72: $a8
	ld c, d                                          ; $6b73: $4a
	ld c, a                                          ; $6b74: $4f

jr_08c_6b75:
	inc [hl]                                         ; $6b75: $34
	db $eb                                           ; $6b76: $eb
	ld l, b                                          ; $6b77: $68
	ld b, l                                          ; $6b78: $45
	and b                                            ; $6b79: $a0
	db $ed                                           ; $6b7a: $ed
	ld h, h                                          ; $6b7b: $64
	ld a, $3f                                        ; $6b7c: $3e $3f
	ld d, l                                          ; $6b7e: $55
	ld b, h                                          ; $6b7f: $44
	ld e, b                                          ; $6b80: $58
	dec sp                                           ; $6b81: $3b
	ccf                                              ; $6b82: $3f
	xor h                                            ; $6b83: $ac
	jp hl                                            ; $6b84: $e9


	inc d                                            ; $6b85: $14
	and b                                            ; $6b86: $a0
	xor $2d                                          ; $6b87: $ee $2d
	inc [hl]                                         ; $6b89: $34
	db $eb                                           ; $6b8a: $eb
	ld l, b                                          ; $6b8b: $68
	and b                                            ; $6b8c: $a0
	ld d, h                                          ; $6b8d: $54
	ld c, l                                          ; $6b8e: $4d
	ldh a, [$8a]                                     ; $6b8f: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6b91: $f0 $52
	jr c, jr_08c_6bdf                                ; $6b93: $38 $4a

	ld d, c                                          ; $6b95: $51
	ld c, h                                          ; $6b96: $4c
	and c                                            ; $6b97: $a1
	cpl                                              ; $6b98: $2f
	xor $1f                                          ; $6b99: $ee $1f
	inc [hl]                                         ; $6b9b: $34
	db $ec                                           ; $6b9c: $ec
	rst SubAFromDE                                          ; $6b9d: $df
	ld b, a                                          ; $6b9e: $47
	ld b, l                                          ; $6b9f: $45
	ld d, l                                          ; $6ba0: $55
	ldh a, [rPCM12]                                  ; $6ba1: $f0 $76
	ldh a, [rTMA]                                    ; $6ba3: $f0 $06
	add hl, sp                                       ; $6ba5: $39
	ld b, l                                          ; $6ba6: $45
	add hl, bc                                       ; $6ba7: $09

Call_08c_6ba8:
	ld e, [hl]                                       ; $6ba8: $5e
	dec sp                                           ; $6ba9: $3b
	xor h                                            ; $6baa: $ac
	ld b, [hl]                                       ; $6bab: $46
	inc [hl]                                         ; $6bac: $34
	jp hl                                            ; $6bad: $e9


	inc d                                            ; $6bae: $14
	xor b                                            ; $6baf: $a8
	ld d, c                                          ; $6bb0: $51
	ld [hl], b                                       ; $6bb1: $70
	ld d, l                                          ; $6bb2: $55
	ldh a, [$29]                                     ; $6bb3: $f0 $29
	ld a, $38                                        ; $6bb5: $3e $38
	ld c, d                                          ; $6bb7: $4a
	ld d, c                                          ; $6bb8: $51
	and b                                            ; $6bb9: $a0
	adc b                                            ; $6bba: $88
	sub c                                            ; $6bbb: $91
	ld c, d                                          ; $6bbc: $4a
	ld d, c                                          ; $6bbd: $51
	inc a                                            ; $6bbe: $3c
	xor c                                            ; $6bbf: $a9
	ld d, h                                          ; $6bc0: $54
	ld c, l                                          ; $6bc1: $4d
	pop af                                           ; $6bc2: $f1
	ld c, $3b                                        ; $6bc3: $0e $3b
	ccf                                              ; $6bc5: $3f
	ld e, h                                          ; $6bc6: $5c
	ld d, d                                          ; $6bc7: $52
	ld d, c                                          ; $6bc8: $51
	ld c, h                                          ; $6bc9: $4c
	and b                                            ; $6bca: $a0
	adc b                                            ; $6bcb: $88
	sub c                                            ; $6bcc: $91
	ld c, d                                          ; $6bcd: $4a
	ld d, c                                          ; $6bce: $51
	inc a                                            ; $6bcf: $3c
	xor c                                            ; $6bd0: $a9
	ldh a, [$29]                                     ; $6bd1: $f0 $29
	ld a, $38                                        ; $6bd3: $3e $38
	ld c, d                                          ; $6bd5: $4a
	ld d, c                                          ; $6bd6: $51
	and b                                            ; $6bd7: $a0
	cpl                                              ; $6bd8: $2f
	ld [$0953], a                                    ; $6bd9: $ea $53 $09
	rst JumpTable                                          ; $6bdc: $c7
	ld c, d                                          ; $6bdd: $4a
	ld d, c                                          ; $6bde: $51

jr_08c_6bdf:
	inc a                                            ; $6bdf: $3c
	ld c, b                                          ; $6be0: $48
	and b                                            ; $6be1: $a0
	rst JumpTable                                          ; $6be2: $c7
	ld c, d                                          ; $6be3: $4a
	ld d, c                                          ; $6be4: $51
	inc a                                            ; $6be5: $3c
	xor l                                            ; $6be6: $ad
	ldh a, [$64]                                     ; $6be7: $f0 $64
	jr c, @+$3c                                      ; $6be9: $38 $3a

	ld b, c                                          ; $6beb: $41
	ld c, d                                          ; $6bec: $4a
	ld d, c                                          ; $6bed: $51
	ld c, h                                          ; $6bee: $4c
	and b                                            ; $6bef: $a0
	cp [hl]                                          ; $6bf0: $be
	xor c                                            ; $6bf1: $a9
	ldh a, [$8a]                                     ; $6bf2: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6bf4: $f0 $52
	jr c, jr_08c_6c41                                ; $6bf6: $38 $49

	inc de                                           ; $6bf8: $13
	ld [hl], a                                       ; $6bf9: $77
	xor $1f                                          ; $6bfa: $ee $1f
	ld c, d                                          ; $6bfc: $4a
	ld d, c                                          ; $6bfd: $51
	ld e, l                                          ; $6bfe: $5d
	ld e, d                                          ; $6bff: $5a
	ld c, b                                          ; $6c00: $48
	and b                                            ; $6c01: $a0
	cpl                                              ; $6c02: $2f
	add sp, $61                                      ; $6c03: $e8 $61
	add hl, bc                                       ; $6c05: $09
	or [hl]                                          ; $6c06: $b6
	xor b                                            ; $6c07: $a8
	ld l, a                                          ; $6c08: $6f
	ld c, a                                          ; $6c09: $4f
	inc [hl]                                         ; $6c0a: $34
	ld b, b                                          ; $6c0b: $40
	add hl, sp                                       ; $6c0c: $39
	ld [hl], a                                       ; $6c0d: $77
	jr c, jr_08c_6c62                                ; $6c0e: $38 $52

	ld d, c                                          ; $6c10: $51
	and b                                            ; $6c11: $a0
	or [hl]                                          ; $6c12: $b6
	xor b                                            ; $6c13: $a8
	ldh a, [$8a]                                     ; $6c14: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6c16: $f0 $52
	jr c, @+$4c                                      ; $6c18: $38 $4a

	ld d, c                                          ; $6c1a: $51
	ld c, h                                          ; $6c1b: $4c
	and b                                            ; $6c1c: $a0
	ld b, b                                          ; $6c1d: $40
	ld c, l                                          ; $6c1e: $4d
	ld c, a                                          ; $6c1f: $4f
	ldh a, [$8a]                                     ; $6c20: $f0 $8a
	ldh a, [rHDMA2]                                  ; $6c22: $f0 $52
	jr c, jr_08c_6c70                                ; $6c24: $38 $4a

	ld d, c                                          ; $6c26: $51
	ld c, h                                          ; $6c27: $4c
	and b                                            ; $6c28: $a0
	ld b, [hl]                                       ; $6c29: $46
	ld d, d                                          ; $6c2a: $52
	ld d, a                                          ; $6c2b: $57
	db $eb                                           ; $6c2c: $eb
	ld h, $49                                        ; $6c2d: $26 $49
	inc a                                            ; $6c2f: $3c
	inc de                                           ; $6c30: $13
	pop af                                           ; $6c31: $f1
	ld c, $63                                        ; $6c32: $0e $63
	ld a, [hl-]                                      ; $6c34: $3a
	jr c, jr_08c_6c79                                ; $6c35: $38 $42

	ld c, d                                          ; $6c37: $4a
	xor l                                            ; $6c38: $ad
	ld e, d                                          ; $6c39: $5a
	ld c, l                                          ; $6c3a: $4d
	ld d, e                                          ; $6c3b: $53
	jr c, @+$3a                                      ; $6c3c: $38 $38

	ld c, d                                          ; $6c3e: $4a
	ld a, $66                                        ; $6c3f: $3e $66

jr_08c_6c41:
	add hl, sp                                       ; $6c41: $39
	ld c, b                                          ; $6c42: $48
	and c                                            ; $6c43: $a1
	cpl                                              ; $6c44: $2f
	add sp, $62                                      ; $6c45: $e8 $62
	and c                                            ; $6c47: $a1
	ldh a, [$57]                                     ; $6c48: $f0 $57
	ldh a, [$ae]                                     ; $6c4a: $f0 $ae
	ld c, d                                          ; $6c4c: $4a
	ld d, c                                          ; $6c4d: $51
	ld c, h                                          ; $6c4e: $4c
	xor b                                            ; $6c4f: $a8
	ld l, a                                          ; $6c50: $6f
	ld c, a                                          ; $6c51: $4f
	inc [hl]                                         ; $6c52: $34
	sbc b                                            ; $6c53: $98
	ld h, l                                          ; $6c54: $65
	add c                                            ; $6c55: $81
	ldh a, [$03]                                     ; $6c56: $f0 $03
	ld a, [hl-]                                      ; $6c58: $3a
	ld b, d                                          ; $6c59: $42
	ld d, e                                          ; $6c5a: $53
	xor h                                            ; $6c5b: $ac
	adc e                                            ; $6c5c: $8b
	ld e, h                                          ; $6c5d: $5c
	ld a, [hl-]                                      ; $6c5e: $3a
	ld b, c                                          ; $6c5f: $41
	ld c, d                                          ; $6c60: $4a
	ld d, c                                          ; $6c61: $51

jr_08c_6c62:
	and b                                            ; $6c62: $a0
	ldh a, [$57]                                     ; $6c63: $f0 $57
	ldh a, [$ae]                                     ; $6c65: $f0 $ae
	ld c, d                                          ; $6c67: $4a
	ld d, c                                          ; $6c68: $51
	ld c, h                                          ; $6c69: $4c
	xor b                                            ; $6c6a: $a8
	ld d, h                                          ; $6c6b: $54
	ld c, l                                          ; $6c6c: $4d
	ld b, a                                          ; $6c6d: $47
	ldh a, [$ec]                                     ; $6c6e: $f0 $ec

jr_08c_6c70:
	ld [hl], c                                       ; $6c70: $71
	ld d, d                                          ; $6c71: $52
	ld a, $3d                                        ; $6c72: $3e $3d
	and b                                            ; $6c74: $a0
	ldh a, [$57]                                     ; $6c75: $f0 $57
	ldh a, [$ae]                                     ; $6c77: $f0 $ae

jr_08c_6c79:
	ld a, [hl-]                                      ; $6c79: $3a
	db $eb                                           ; $6c7a: $eb
	and b                                            ; $6c7b: $a0
	inc de                                           ; $6c7c: $13
	ld c, d                                          ; $6c7d: $4a
	ld d, c                                          ; $6c7e: $51
	ld c, h                                          ; $6c7f: $4c
	and b                                            ; $6c80: $a0
	cpl                                              ; $6c81: $2f
	add sp, -$56                                     ; $6c82: $e8 $aa
	and c                                            ; $6c84: $a1
	ld d, h                                          ; $6c85: $54
	inc [hl]                                         ; $6c86: $34
	ld d, h                                          ; $6c87: $54
	add hl, sp                                       ; $6c88: $39
	jr c, jr_08c_6cc4                                ; $6c89: $38 $39

	ld b, d                                          ; $6c8b: $42
	ld c, e                                          ; $6c8c: $4b
	xor h                                            ; $6c8d: $ac
	ret                                              ; $6c8e: $c9


	ld c, b                                          ; $6c8f: $48
	and b                                            ; $6c90: $a0
	ld d, h                                          ; $6c91: $54
	add hl, sp                                       ; $6c92: $39
	jr c, jr_08c_6cce                                ; $6c93: $38 $39

	ld b, d                                          ; $6c95: $42
	ld c, e                                          ; $6c96: $4b
	xor h                                            ; $6c97: $ac
	ret                                              ; $6c98: $c9


	ldh a, [$71]                                     ; $6c99: $f0 $71
	ld d, l                                          ; $6c9b: $55
	ccf                                              ; $6c9c: $3f
	ld c, b                                          ; $6c9d: $48
	and b                                            ; $6c9e: $a0
	ld h, e                                          ; $6c9f: $63
	inc [hl]                                         ; $6ca0: $34
	ld l, a                                          ; $6ca1: $6f
	ld c, e                                          ; $6ca2: $4b
	xor h                                            ; $6ca3: $ac
	ret                                              ; $6ca4: $c9


	ld c, b                                          ; $6ca5: $48
	and b                                            ; $6ca6: $a0
	cpl                                              ; $6ca7: $2f
	add sp, -$6b                                     ; $6ca8: $e8 $95
	and c                                            ; $6caa: $a1
	ld l, a                                          ; $6cab: $6f
	ld c, a                                          ; $6cac: $4f
	adc e                                            ; $6cad: $8b
	ld e, h                                          ; $6cae: $5c
	ld a, [hl-]                                      ; $6caf: $3a
	ld b, c                                          ; $6cb0: $41
	ld c, d                                          ; $6cb1: $4a
	ld d, c                                          ; $6cb2: $51
	ld e, l                                          ; $6cb3: $5d
	ld e, d                                          ; $6cb4: $5a
	xor h                                            ; $6cb5: $ac
	ld l, a                                          ; $6cb6: $6f
	ld b, a                                          ; $6cb7: $47
	ld c, e                                          ; $6cb8: $4b
	inc [hl]                                         ; $6cb9: $34
	ret                                              ; $6cba: $c9


	db $ed                                           ; $6cbb: $ed
	ld a, b                                          ; $6cbc: $78
	ld e, e                                          ; $6cbd: $5b
	ld d, [hl]                                       ; $6cbe: $56
	inc de                                           ; $6cbf: $13
	ld a, [hl-]                                      ; $6cc0: $3a
	jr c, jr_08c_6d0d                                ; $6cc1: $38 $4a

	ld d, c                                          ; $6cc3: $51

jr_08c_6cc4:
	inc a                                            ; $6cc4: $3c
	ld c, b                                          ; $6cc5: $48
	and c                                            ; $6cc6: $a1
	ld a, [hl]                                       ; $6cc7: $7e
	jr c, jr_08c_6d13                                ; $6cc8: $38 $49

	xor h                                            ; $6cca: $ac
	ld [hl], a                                       ; $6ccb: $77
	jr c, jr_08c_6d20                                ; $6ccc: $38 $52

jr_08c_6cce:
	ld d, c                                          ; $6cce: $51
	ld e, l                                          ; $6ccf: $5d
	ld e, d                                          ; $6cd0: $5a
	xor l                                            ; $6cd1: $ad
	ret                                              ; $6cd2: $c9


	db $ed                                           ; $6cd3: $ed
	ld a, b                                          ; $6cd4: $78
	ld e, e                                          ; $6cd5: $5b
	ld d, [hl]                                       ; $6cd6: $56
	inc de                                           ; $6cd7: $13
	ld b, [hl]                                       ; $6cd8: $46
	ld d, a                                          ; $6cd9: $57
	ld d, d                                          ; $6cda: $52
	ld a, c                                          ; $6cdb: $79
	ld b, c                                          ; $6cdc: $41
	inc a                                            ; $6cdd: $3c
	and c                                            ; $6cde: $a1
	ret                                              ; $6cdf: $c9


	db $ed                                           ; $6ce0: $ed
	ld a, b                                          ; $6ce1: $78
	ld e, e                                          ; $6ce2: $5b
	ld d, [hl]                                       ; $6ce3: $56
	inc de                                           ; $6ce4: $13
	ld b, [hl]                                       ; $6ce5: $46
	ld d, a                                          ; $6ce6: $57
	ld d, d                                          ; $6ce7: $52
	ld a, c                                          ; $6ce8: $79
	ld b, c                                          ; $6ce9: $41
	inc a                                            ; $6cea: $3c
	and c                                            ; $6ceb: $a1
	ld d, c                                          ; $6cec: $51
	ld [hl], b                                       ; $6ced: $70
	ld d, l                                          ; $6cee: $55
	ldh a, [$71]                                     ; $6cef: $f0 $71
	jr c, jr_08c_6d3d                                ; $6cf1: $38 $4a

	ld d, c                                          ; $6cf3: $51
	ld c, h                                          ; $6cf4: $4c
	ld c, b                                          ; $6cf5: $48
	and b                                            ; $6cf6: $a0
	cpl                                              ; $6cf7: $2f
	add sp, -$4c                                     ; $6cf8: $e8 $b4
	and c                                            ; $6cfa: $a1
	db $eb                                           ; $6cfb: $eb
	ld d, a                                          ; $6cfc: $57
	xor b                                            ; $6cfd: $a8
	ld l, a                                          ; $6cfe: $6f
	ld b, d                                          ; $6cff: $42
	dec a                                            ; $6d00: $3d
	ld [hl], c                                       ; $6d01: $71
	ld b, a                                          ; $6d02: $47
	ld c, b                                          ; $6d03: $48
	and b                                            ; $6d04: $a0
	db $eb                                           ; $6d05: $eb
	ld d, a                                          ; $6d06: $57
	xor b                                            ; $6d07: $a8
	sbc $f0                                          ; $6d08: $de $f0
	ld [hl], c                                       ; $6d0a: $71
	ld d, l                                          ; $6d0b: $55
	ccf                                              ; $6d0c: $3f

jr_08c_6d0d:
	ld c, b                                          ; $6d0d: $48
	and b                                            ; $6d0e: $a0
	db $eb                                           ; $6d0f: $eb
	ld d, a                                          ; $6d10: $57
	xor b                                            ; $6d11: $a8
	jp hl                                            ; $6d12: $e9


jr_08c_6d13:
	inc d                                            ; $6d13: $14
	and b                                            ; $6d14: $a0
	cpl                                              ; $6d15: $2f
	add sp, $17                                      ; $6d16: $e8 $17
	add hl, bc                                       ; $6d18: $09
	ld b, b                                          ; $6d19: $40
	add hl, sp                                       ; $6d1a: $39
	inc a                                            ; $6d1b: $3c
	ld c, a                                          ; $6d1c: $4f
	inc de                                           ; $6d1d: $13
	ld a, $4d                                        ; $6d1e: $3e $4d

jr_08c_6d20:
	ld a, [hl-]                                      ; $6d20: $3a
	jr c, jr_08c_6d6d                                ; $6d21: $38 $4a

	ld d, c                                          ; $6d23: $51
	ld e, l                                          ; $6d24: $5d
	ld e, d                                          ; $6d25: $5a
	ld c, b                                          ; $6d26: $48
	and b                                            ; $6d27: $a0
	ld c, d                                          ; $6d28: $4a
	ld c, a                                          ; $6d29: $4f
	inc [hl]                                         ; $6d2a: $34
	ldh a, [$71]                                     ; $6d2b: $f0 $71
	jr c, jr_08c_6d6d                                ; $6d2d: $38 $3e

	xor h                                            ; $6d2f: $ac
	pop af                                           ; $6d30: $f1
	ld de, $65f0                                     ; $6d31: $11 $f0 $65
	ld b, a                                          ; $6d34: $47
	ldh a, [$5c]                                     ; $6d35: $f0 $5c
	ld b, b                                          ; $6d37: $40
	add hl, sp                                       ; $6d38: $39
	ld e, e                                          ; $6d39: $5b
	ld d, [hl]                                       ; $6d3a: $56
	inc de                                           ; $6d3b: $13
	ld b, [hl]                                       ; $6d3c: $46

jr_08c_6d3d:
	ld d, a                                          ; $6d3d: $57
	ld d, d                                          ; $6d3e: $52
	ld a, c                                          ; $6d3f: $79
	ld b, c                                          ; $6d40: $41
	inc a                                            ; $6d41: $3c
	and c                                            ; $6d42: $a1
	ld c, d                                          ; $6d43: $4a
	ld c, a                                          ; $6d44: $4f
	inc [hl]                                         ; $6d45: $34
	ldh a, [$71]                                     ; $6d46: $f0 $71
	jr c, jr_08c_6d94                                ; $6d48: $38 $4a

	ld d, c                                          ; $6d4a: $51
	ld c, b                                          ; $6d4b: $48
	and b                                            ; $6d4c: $a0
	cpl                                              ; $6d4d: $2f
	add sp, $37                                      ; $6d4e: $e8 $37
	add hl, bc                                       ; $6d50: $09
	rst JumpTable                                          ; $6d51: $c7
	ld c, d                                          ; $6d52: $4a
	ld d, c                                          ; $6d53: $51
	inc a                                            ; $6d54: $3c
	xor c                                            ; $6d55: $a9
	ld b, b                                          ; $6d56: $40
	ld c, l                                          ; $6d57: $4d
	ld a, [hl-]                                      ; $6d58: $3a
	ld d, b                                          ; $6d59: $50
	inc [hl]                                         ; $6d5a: $34
	ldh a, [$9f]                                     ; $6d5b: $f0 $9f
	ld e, e                                          ; $6d5d: $5b
	ld d, d                                          ; $6d5e: $52
	ld d, c                                          ; $6d5f: $51
	ld c, b                                          ; $6d60: $48
	and b                                            ; $6d61: $a0
	ld b, b                                          ; $6d62: $40
	inc [hl]                                         ; $6d63: $34
	ld b, b                                          ; $6d64: $40
	ld c, l                                          ; $6d65: $4d
	ld a, [hl-]                                      ; $6d66: $3a
	ld d, b                                          ; $6d67: $50
	ld c, b                                          ; $6d68: $48
	and b                                            ; $6d69: $a0
	ld b, b                                          ; $6d6a: $40
	add hl, sp                                       ; $6d6b: $39
	ld b, h                                          ; $6d6c: $44

jr_08c_6d6d:
	ld c, c                                          ; $6d6d: $49
	ld c, e                                          ; $6d6e: $4b
	xor h                                            ; $6d6f: $ac
	ld [hl], a                                       ; $6d70: $77
	jr c, jr_08c_6dc5                                ; $6d71: $38 $52

	ld d, c                                          ; $6d73: $51
	ld e, l                                          ; $6d74: $5d
	ld e, d                                          ; $6d75: $5a
	ld c, b                                          ; $6d76: $48
	and b                                            ; $6d77: $a0
	db $ed                                           ; $6d78: $ed
	inc h                                            ; $6d79: $24
	ccf                                              ; $6d7a: $3f
	ld c, a                                          ; $6d7b: $4f
	xor h                                            ; $6d7c: $ac
	ld d, h                                          ; $6d7d: $54
	ld b, d                                          ; $6d7e: $42
	db $ec                                           ; $6d7f: $ec
	cp $47                                           ; $6d80: $fe $47
	inc de                                           ; $6d82: $13
	pop af                                           ; $6d83: $f1
	sbc e                                            ; $6d84: $9b
	ld c, l                                          ; $6d85: $4d
	ld d, d                                          ; $6d86: $52
	ld a, c                                          ; $6d87: $79
	ld b, c                                          ; $6d88: $41
	ld c, h                                          ; $6d89: $4c
	and b                                            ; $6d8a: $a0
	cpl                                              ; $6d8b: $2f
	add sp, -$6a                                     ; $6d8c: $e8 $96
	add hl, bc                                       ; $6d8e: $09
	jr c, jr_08c_6dc5                                ; $6d8f: $38 $34

	jr c, jr_08c_6df1                                ; $6d91: $38 $5e

	xor b                                            ; $6d93: $a8

jr_08c_6d94:
	ld l, a                                          ; $6d94: $6f
	ld c, e                                          ; $6d95: $4b
	ldh a, [$34]                                     ; $6d96: $f0 $34
	ld b, a                                          ; $6d98: $47
	inc de                                           ; $6d99: $13
	inc a                                            ; $6d9a: $3c
	ld d, d                                          ; $6d9b: $52
	jr c, @+$54                                      ; $6d9c: $38 $52

	ld a, c                                          ; $6d9e: $79
	ld b, c                                          ; $6d9f: $41
	inc a                                            ; $6da0: $3c
	ld d, b                                          ; $6da1: $50
	ld c, b                                          ; $6da2: $48
	and b                                            ; $6da3: $a0
	jp hl                                            ; $6da4: $e9


	inc d                                            ; $6da5: $14
	xor b                                            ; $6da6: $a8
	ld l, a                                          ; $6da7: $6f
	ld b, d                                          ; $6da8: $42
	sbc d                                            ; $6da9: $9a
	ld c, e                                          ; $6daa: $4b
	ld a, a                                          ; $6dab: $7f
	ld b, a                                          ; $6dac: $47
	ld a, $3a                                        ; $6dad: $3e $3a
	jr c, jr_08c_6dfb                                ; $6daf: $38 $4a

	inc de                                           ; $6db1: $13
	ld d, l                                          ; $6db2: $55
	ld b, h                                          ; $6db3: $44
	ld e, b                                          ; $6db4: $58
	jr c, jr_08c_6dff                                ; $6db5: $38 $48

	and b                                            ; $6db7: $a0
	jp hl                                            ; $6db8: $e9


	inc d                                            ; $6db9: $14
	xor b                                            ; $6dba: $a8
	ld a, a                                          ; $6dbb: $7f
	ld h, d                                          ; $6dbc: $62
	pop af                                           ; $6dbd: $f1
	sbc l                                            ; $6dbe: $9d
	dec sp                                           ; $6dbf: $3b

jr_08c_6dc0:
	ccf                                              ; $6dc0: $3f
	ld d, l                                          ; $6dc1: $55
	ld b, h                                          ; $6dc2: $44
	ld e, b                                          ; $6dc3: $58
	dec sp                                           ; $6dc4: $3b

jr_08c_6dc5:
	ccf                                              ; $6dc5: $3f
	ld c, b                                          ; $6dc6: $48
	and b                                            ; $6dc7: $a0
	cpl                                              ; $6dc8: $2f
	ld c, a                                          ; $6dc9: $4f
	dec sp                                           ; $6dca: $3b
	ld c, c                                          ; $6dcb: $49
	ld d, c                                          ; $6dcc: $51
	ld [hl], b                                       ; $6dcd: $70
	jr c, jr_08c_6dc0                                ; $6dce: $38 $f0

	jr z, jr_08c_6e21                                ; $6dd0: $28 $4f

	ld b, [hl]                                       ; $6dd2: $46
	ld c, [hl]                                       ; $6dd3: $4e
	ld b, c                                          ; $6dd4: $41
	ld b, h                                          ; $6dd5: $44
	ld e, l                                          ; $6dd6: $5d
	ld e, d                                          ; $6dd7: $5a
	add hl, bc                                       ; $6dd8: $09
	ld b, b                                          ; $6dd9: $40
	ld b, c                                          ; $6dda: $41
	ld a, [hl-]                                      ; $6ddb: $3a
	ldh a, [$28]                                     ; $6ddc: $f0 $28
	xor h                                            ; $6dde: $ac
	pop af                                           ; $6ddf: $f1
	ld c, h                                          ; $6de0: $4c
	ldh a, [$61]                                     ; $6de1: $f0 $61
	ld c, a                                          ; $6de3: $4f
	add b                                            ; $6de4: $80
	ld e, h                                          ; $6de5: $5c
	ld d, d                                          ; $6de6: $52
	ld a, c                                          ; $6de7: $79
	ld b, c                                          ; $6de8: $41
	ld c, b                                          ; $6de9: $48
	and b                                            ; $6dea: $a0
	ld l, a                                          ; $6deb: $6f
	ld c, e                                          ; $6dec: $4b
	xor h                                            ; $6ded: $ac
	pop af                                           ; $6dee: $f1
	ld b, $f1                                        ; $6def: $06 $f1

jr_08c_6df1:
	ld a, $58                                        ; $6df1: $3e $58
	ld a, c                                          ; $6df3: $79
	ccf                                              ; $6df4: $3f
	ld c, a                                          ; $6df5: $4f
	ld d, b                                          ; $6df6: $50
	jr c, jr_08c_6e4b                                ; $6df7: $38 $52

	ld d, c                                          ; $6df9: $51
	ld c, b                                          ; $6dfa: $48

jr_08c_6dfb:
	and b                                            ; $6dfb: $a0
	ldh a, [$34]                                     ; $6dfc: $f0 $34
	ld b, a                                          ; $6dfe: $47

jr_08c_6dff:
	inc [hl]                                         ; $6dff: $34
	ldh a, [rAUD1LOW]                                ; $6e00: $f0 $13
	ldh a, [$63]                                     ; $6e02: $f0 $63
	ld b, a                                          ; $6e04: $47
	inc de                                           ; $6e05: $13
	ld h, a                                          ; $6e06: $67
	inc a                                            ; $6e07: $3c
	ld a, [hl-]                                      ; $6e08: $3a
	ld d, l                                          ; $6e09: $55
	ccf                                              ; $6e0a: $3f
	ld c, a                                          ; $6e0b: $4f
	jr c, jr_08c_6e46                                ; $6e0c: $38 $38

	ld c, d                                          ; $6e0e: $4a
	ld d, c                                          ; $6e0f: $51
	ld c, b                                          ; $6e10: $48
	and b                                            ; $6e11: $a0
	cpl                                              ; $6e12: $2f
	ld c, a                                          ; $6e13: $4f
	dec sp                                           ; $6e14: $3b
	ld c, c                                          ; $6e15: $49
	db $ed                                           ; $6e16: $ed
	ld h, c                                          ; $6e17: $61
	ld c, a                                          ; $6e18: $4f
	ld a, b                                          ; $6e19: $78
	ld a, [hl-]                                      ; $6e1a: $3a
	ld e, h                                          ; $6e1b: $5c
	ld d, [hl]                                       ; $6e1c: $56
	ld c, b                                          ; $6e1d: $48
	add hl, bc                                       ; $6e1e: $09
	xor $06                                          ; $6e1f: $ee $06

jr_08c_6e21:
	ld a, [hl-]                                      ; $6e21: $3a
	ld d, b                                          ; $6e22: $50
	xor h                                            ; $6e23: $ac
	ld d, d                                          ; $6e24: $52
	ld b, h                                          ; $6e25: $44
	db $ed                                           ; $6e26: $ed
	adc c                                            ; $6e27: $89
	ld c, d                                          ; $6e28: $4a
	ld e, h                                          ; $6e29: $5c
	ld d, d                                          ; $6e2a: $52
	ld d, c                                          ; $6e2b: $51
	ld e, l                                          ; $6e2c: $5d
	ld e, d                                          ; $6e2d: $5a
	ld c, b                                          ; $6e2e: $48
	and b                                            ; $6e2f: $a0
	ld b, b                                          ; $6e30: $40
	ld b, c                                          ; $6e31: $41
	ld a, [hl-]                                      ; $6e32: $3a
	ld b, a                                          ; $6e33: $47
	xor h                                            ; $6e34: $ac
	ld a, b                                          ; $6e35: $78
	dec a                                            ; $6e36: $3d
	ld d, l                                          ; $6e37: $55
	ld c, e                                          ; $6e38: $4b
	ld b, [hl]                                       ; $6e39: $46
	ld d, a                                          ; $6e3a: $57
	ld d, d                                          ; $6e3b: $52
	ld a, c                                          ; $6e3c: $79
	ld b, c                                          ; $6e3d: $41
	ld c, h                                          ; $6e3e: $4c
	ld c, b                                          ; $6e3f: $48
	and b                                            ; $6e40: $a0
	ld b, [hl]                                       ; $6e41: $46
	ld d, d                                          ; $6e42: $52
	ld d, a                                          ; $6e43: $57
	ld a, b                                          ; $6e44: $78
	dec a                                            ; $6e45: $3d

jr_08c_6e46:
	jr c, jr_08c_6e91                                ; $6e46: $38 $49

	ld c, e                                          ; $6e48: $4b
	xor h                                            ; $6e49: $ac
	ld [hl], a                                       ; $6e4a: $77

jr_08c_6e4b:
	jr c, jr_08c_6e9f                                ; $6e4b: $38 $52

	ld a, c                                          ; $6e4d: $79
	ld b, c                                          ; $6e4e: $41
	inc a                                            ; $6e4f: $3c
	ld d, b                                          ; $6e50: $50
	and b                                            ; $6e51: $a0
	jp z, $f0ac                                      ; $6e52: $ca $ac $f0

	add hl, de                                       ; $6e55: $19
	ld b, a                                          ; $6e56: $47
	sub [hl]                                         ; $6e57: $96
	ld d, a                                          ; $6e58: $57
	ld d, d                                          ; $6e59: $52
	ld a, $66                                        ; $6e5a: $3e $66
	add hl, sp                                       ; $6e5c: $39
	inc a                                            ; $6e5d: $3c
	and c                                            ; $6e5e: $a1
	cpl                                              ; $6e5f: $2f
	ld b, e                                          ; $6e60: $43
	ld b, b                                          ; $6e61: $40
	add hl, sp                                       ; $6e62: $39
	ld b, h                                          ; $6e63: $44
	ld c, h                                          ; $6e64: $4c
	xor b                                            ; $6e65: $a8
	db $eb                                           ; $6e66: $eb
	ld d, d                                          ; $6e67: $52
	and b                                            ; $6e68: $a0
	db $ec                                           ; $6e69: $ec
	inc de                                           ; $6e6a: $13
	ld h, h                                          ; $6e6b: $64
	pop af                                           ; $6e6c: $f1
	xor c                                            ; $6e6d: $a9
	ld d, e                                          ; $6e6e: $53
	xor h                                            ; $6e6f: $ac
	adc $38                                          ; $6e70: $ce $38
	ld d, d                                          ; $6e72: $52
	ld d, c                                          ; $6e73: $51
	ld c, h                                          ; $6e74: $4c
	and b                                            ; $6e75: $a0
	cpl                                              ; $6e76: $2f
	jp hl                                            ; $6e77: $e9


	ld a, $09                                        ; $6e78: $3e $09
	db $eb                                           ; $6e7a: $eb
	ld d, h                                          ; $6e7b: $54
	pop af                                           ; $6e7c: $f1
	and l                                            ; $6e7d: $a5
	pop af                                           ; $6e7e: $f1
	and [hl]                                         ; $6e7f: $a6
	ld c, d                                          ; $6e80: $4a
	ld d, c                                          ; $6e81: $51
	inc de                                           ; $6e82: $13
	ld c, h                                          ; $6e83: $4c
	dec [hl]                                         ; $6e84: $35
	ld l, a                                          ; $6e85: $6f
	ld c, a                                          ; $6e86: $4f
	inc [hl]                                         ; $6e87: $34
	ld b, b                                          ; $6e88: $40
	add hl, sp                                       ; $6e89: $39
	ld [hl], a                                       ; $6e8a: $77
	jr c, jr_08c_6edf                                ; $6e8b: $38 $52

	ld d, c                                          ; $6e8d: $51
	and b                                            ; $6e8e: $a0
	sbc $ac                                          ; $6e8f: $de $ac

jr_08c_6e91:
	db $eb                                           ; $6e91: $eb
	ld d, h                                          ; $6e92: $54
	ld c, d                                          ; $6e93: $4a
	ld d, c                                          ; $6e94: $51
	ld c, h                                          ; $6e95: $4c
	and b                                            ; $6e96: $a0
	ldh a, [$57]                                     ; $6e97: $f0 $57
	ldh a, [$ae]                                     ; $6e99: $f0 $ae
	ld c, d                                          ; $6e9b: $4a
	ld d, c                                          ; $6e9c: $51
	ld c, h                                          ; $6e9d: $4c
	and b                                            ; $6e9e: $a0

jr_08c_6e9f:
	cpl                                              ; $6e9f: $2f
	add sp, -$20                                     ; $6ea0: $e8 $e0
	add hl, bc                                       ; $6ea2: $09
	rst JumpTable                                          ; $6ea3: $c7
	ld c, d                                          ; $6ea4: $4a
	ld d, c                                          ; $6ea5: $51
	inc a                                            ; $6ea6: $3c
	and c                                            ; $6ea7: $a1
	ld b, b                                          ; $6ea8: $40
	add hl, sp                                       ; $6ea9: $39
	inc a                                            ; $6eaa: $3c
	ld c, a                                          ; $6eab: $4f
	inc de                                           ; $6eac: $13
	ld a, $4d                                        ; $6ead: $3e $4d
	ld d, d                                          ; $6eaf: $52
	ld a, c                                          ; $6eb0: $79
	ld b, c                                          ; $6eb1: $41
	ld e, l                                          ; $6eb2: $5d
	ld e, d                                          ; $6eb3: $5a
	ld c, b                                          ; $6eb4: $48
	and b                                            ; $6eb5: $a0
	ld b, b                                          ; $6eb6: $40
	ld b, c                                          ; $6eb7: $41
	ld a, [hl-]                                      ; $6eb8: $3a
	inc [hl]                                         ; $6eb9: $34
	ldh a, [$a4]                                     ; $6eba: $f0 $a4
	ld e, [hl]                                       ; $6ebc: $5e
	xor l                                            ; $6ebd: $ad
	ld l, a                                          ; $6ebe: $6f
	ldh a, [$64]                                     ; $6ebf: $f0 $64
	jr c, jr_08c_6f0d                                ; $6ec1: $38 $4a

	ld d, c                                          ; $6ec3: $51
	ld c, b                                          ; $6ec4: $48
	and b                                            ; $6ec5: $a0
	cpl                                              ; $6ec6: $2f
	jp hl                                            ; $6ec7: $e9


	or a                                             ; $6ec8: $b7
	add hl, bc                                       ; $6ec9: $09
	ld l, a                                          ; $6eca: $6f
	inc [hl]                                         ; $6ecb: $34
	ld c, c                                          ; $6ecc: $49
	ccf                                              ; $6ecd: $3f
	ld c, a                                          ; $6ece: $4f
	pop af                                           ; $6ecf: $f1
	and d                                            ; $6ed0: $a2
	ld a, c                                          ; $6ed1: $79
	ld c, d                                          ; $6ed2: $4a
	ld d, c                                          ; $6ed3: $51
	ld c, b                                          ; $6ed4: $48
	and b                                            ; $6ed5: $a0
	db $ed                                           ; $6ed6: $ed
	ld c, c                                          ; $6ed7: $49
	db $ec                                           ; $6ed8: $ec
	ret c                                            ; $6ed9: $d8

	ld c, c                                          ; $6eda: $49
	inc de                                           ; $6edb: $13
	ld [hl], a                                       ; $6edc: $77
	add hl, sp                                       ; $6edd: $39
	add h                                            ; $6ede: $84

jr_08c_6edf:
	ld d, e                                          ; $6edf: $53
	inc [hl]                                         ; $6ee0: $34
	jr c, jr_08c_6f31                                ; $6ee1: $38 $4e

	ld b, d                                          ; $6ee3: $42
	inc a                                            ; $6ee4: $3c
	ld a, $50                                        ; $6ee5: $3e $50
	and c                                            ; $6ee7: $a1
	db $ec                                           ; $6ee8: $ec
	reti                                             ; $6ee9: $d9


	xor h                                            ; $6eea: $ac
	ld b, b                                          ; $6eeb: $40
	add hl, sp                                       ; $6eec: $39
	ld [hl], a                                       ; $6eed: $77
	jr c, jr_08c_6f42                                ; $6eee: $38 $52

	ld d, c                                          ; $6ef0: $51
	inc a                                            ; $6ef1: $3c
	and c                                            ; $6ef2: $a1
	pop af                                           ; $6ef3: $f1
	xor c                                            ; $6ef4: $a9
	ld b, d                                          ; $6ef5: $42
	ldh a, [rAUD3LEVEL]                              ; $6ef6: $f0 $1c
	dec sp                                           ; $6ef8: $3b
	ccf                                              ; $6ef9: $3f
	inc de                                           ; $6efa: $13
	ldh a, [$71]                                     ; $6efb: $f0 $71
	ld d, l                                          ; $6efd: $55
	ld b, [hl]                                       ; $6efe: $46
	ld d, a                                          ; $6eff: $57
	ld d, d                                          ; $6f00: $52
	ld a, c                                          ; $6f01: $79
	ld b, c                                          ; $6f02: $41
	inc a                                            ; $6f03: $3c
	and c                                            ; $6f04: $a1
	cpl                                              ; $6f05: $2f
	ld [hl], d                                       ; $6f06: $72
	add b                                            ; $6f07: $80
	ld [hl], c                                       ; $6f08: $71
	ld d, b                                          ; $6f09: $50
	ld c, l                                          ; $6f0a: $4d
	ld c, [hl]                                       ; $6f0b: $4e
	ld c, c                                          ; $6f0c: $49

jr_08c_6f0d:
	inc [hl]                                         ; $6f0d: $34
	ldh a, [$71]                                     ; $6f0e: $f0 $71
	jr c, jr_08c_6f57                                ; $6f10: $38 $45

	ld c, h                                          ; $6f12: $4c
	add hl, bc                                       ; $6f13: $09
	db $ec                                           ; $6f14: $ec
	cp c                                             ; $6f15: $b9
	xor l                                            ; $6f16: $ad
	ld b, b                                          ; $6f17: $40
	add hl, sp                                       ; $6f18: $39
	ld [hl], a                                       ; $6f19: $77
	dec sp                                           ; $6f1a: $3b
	ccf                                              ; $6f1b: $3f
	ld d, l                                          ; $6f1c: $55
	ld c, l                                          ; $6f1d: $4d
	ccf                                              ; $6f1e: $3f
	ld c, b                                          ; $6f1f: $48
	and b                                            ; $6f20: $a0
	db $ec                                           ; $6f21: $ec
	reti                                             ; $6f22: $d9


	xor h                                            ; $6f23: $ac
	ld b, b                                          ; $6f24: $40
	add hl, sp                                       ; $6f25: $39
	ld [hl], a                                       ; $6f26: $77
	jr c, jr_08c_6f7b                                ; $6f27: $38 $52

	ld d, c                                          ; $6f29: $51
	ld b, l                                          ; $6f2a: $45
	ld c, h                                          ; $6f2b: $4c
	and b                                            ; $6f2c: $a0

jr_08c_6f2d:
	add hl, sp                                       ; $6f2d: $39
	add b                                            ; $6f2e: $80
	ld e, a                                          ; $6f2f: $5f
	ld a, [hl-]                                      ; $6f30: $3a

jr_08c_6f31:
	di                                               ; $6f31: $f3
	scf                                              ; $6f32: $37
	ld c, d                                          ; $6f33: $4a
	inc de                                           ; $6f34: $13
	ld [hl], d                                       ; $6f35: $72
	add b                                            ; $6f36: $80
	ld [hl], c                                       ; $6f37: $71
	ld d, b                                          ; $6f38: $50
	ld c, l                                          ; $6f39: $4d
	ld c, [hl]                                       ; $6f3a: $4e
	ld c, c                                          ; $6f3b: $49
	ld c, b                                          ; $6f3c: $48
	and b                                            ; $6f3d: $a0
	cpl                                              ; $6f3e: $2f
	add sp, $14                                      ; $6f3f: $e8 $14
	and c                                            ; $6f41: $a1

jr_08c_6f42:
	rst JumpTable                                          ; $6f42: $c7
	ld c, d                                          ; $6f43: $4a
	ld d, c                                          ; $6f44: $51
	inc a                                            ; $6f45: $3c
	xor c                                            ; $6f46: $a9
	ld c, d                                          ; $6f47: $4a
	ld c, a                                          ; $6f48: $4f

jr_08c_6f49:
	inc [hl]                                         ; $6f49: $34
	ld h, h                                          ; $6f4a: $64
	inc a                                            ; $6f4b: $3c
	ld a, $55                                        ; $6f4c: $3e $55
	ld c, e                                          ; $6f4e: $4b
	ld a, [hl-]                                      ; $6f4f: $3a
	jr c, @+$4b                                      ; $6f50: $38 $49

	inc de                                           ; $6f52: $13
	ld [hl], a                                       ; $6f53: $77
	jr c, @+$54                                      ; $6f54: $38 $52

	ld d, c                                          ; $6f56: $51

jr_08c_6f57:
	ld c, b                                          ; $6f57: $48
	and b                                            ; $6f58: $a0
	ld b, b                                          ; $6f59: $40
	inc [hl]                                         ; $6f5a: $34
	ld b, b                                          ; $6f5b: $40
	ld b, c                                          ; $6f5c: $41
	ld a, [hl-]                                      ; $6f5d: $3a
	sbc d                                            ; $6f5e: $9a
	inc de                                           ; $6f5f: $13
	add d                                            ; $6f60: $82
	ld h, e                                          ; $6f61: $63
	ld a, [hl-]                                      ; $6f62: $3a
	ld d, l                                          ; $6f63: $55
	ccf                                              ; $6f64: $3f
	ld c, a                                          ; $6f65: $4f
	ld c, b                                          ; $6f66: $48
	and b                                            ; $6f67: $a0
	ld b, b                                          ; $6f68: $40
	ld b, c                                          ; $6f69: $41
	ld a, [hl-]                                      ; $6f6a: $3a
	sbc d                                            ; $6f6b: $9a
	xor h                                            ; $6f6c: $ac
	ldh a, [rHDMA5]                                  ; $6f6d: $f0 $55
	ldh a, [rBCPS]                                   ; $6f6f: $f0 $68
	ld c, d                                          ; $6f71: $4a
	ld d, c                                          ; $6f72: $51
	ld c, h                                          ; $6f73: $4c
	and b                                            ; $6f74: $a0
	cpl                                              ; $6f75: $2f
	jp hl                                            ; $6f76: $e9


	ld a, c                                          ; $6f77: $79
	ld c, b                                          ; $6f78: $48
	add hl, bc                                       ; $6f79: $09
	ld a, a                                          ; $6f7a: $7f

jr_08c_6f7b:
	ld b, a                                          ; $6f7b: $47
	ld a, $3f                                        ; $6f7c: $3e $3f
	ld l, h                                          ; $6f7e: $6c
	ccf                                              ; $6f7f: $3f
	ld d, l                                          ; $6f80: $55
	ld b, h                                          ; $6f81: $44
	ld e, b                                          ; $6f82: $58
	jr c, jr_08c_6f2d                                ; $6f83: $38 $a8

	ld l, a                                          ; $6f85: $6f
	ld c, e                                          ; $6f86: $4b
	inc [hl]                                         ; $6f87: $34
	ret                                              ; $6f88: $c9


	inc de                                           ; $6f89: $13
	ldh a, [$71]                                     ; $6f8a: $f0 $71
	jr c, jr_08c_6fd7                                ; $6f8c: $38 $49

	ld [hl], a                                       ; $6f8e: $77
	jr c, jr_08c_6fe3                                ; $6f8f: $38 $52

	ld d, c                                          ; $6f91: $51
	and b                                            ; $6f92: $a0
	ld l, d                                          ; $6f93: $6a
	ldh a, [$0d]                                     ; $6f94: $f0 $0d
	ld c, e                                          ; $6f96: $4b
	inc [hl]                                         ; $6f97: $34
	ld a, a                                          ; $6f98: $7f
	ld b, a                                          ; $6f99: $47
	ld a, $3f                                        ; $6f9a: $3e $3f
	ld [hl], d                                       ; $6f9c: $72
	ccf                                              ; $6f9d: $3f
	inc de                                           ; $6f9e: $13
	db $ed                                           ; $6f9f: $ed
	ld [hl], a                                       ; $6fa0: $77
	ld h, d                                          ; $6fa1: $62
	db $ec                                           ; $6fa2: $ec
	ld b, b                                          ; $6fa3: $40
	ld d, l                                          ; $6fa4: $55
	ld b, h                                          ; $6fa5: $44
	ld e, b                                          ; $6fa6: $58
	jr c, jr_08c_6f49                                ; $6fa7: $38 $a0

	ld l, d                                          ; $6fa9: $6a
	ldh a, [$0d]                                     ; $6faa: $f0 $0d
	ld c, e                                          ; $6fac: $4b
	xor h                                            ; $6fad: $ac
	ld b, l                                          ; $6fae: $45
	ld d, l                                          ; $6faf: $55
	ld [hl], d                                       ; $6fb0: $72
	ccf                                              ; $6fb1: $3f
	ld d, l                                          ; $6fb2: $55
	ld b, h                                          ; $6fb3: $44
	ld e, b                                          ; $6fb4: $58
	jr c, jr_08c_7003                                ; $6fb5: $38 $4c

	and b                                            ; $6fb7: $a0
	ld l, d                                          ; $6fb8: $6a
	ld [hl], d                                       ; $6fb9: $72
	ccf                                              ; $6fba: $3f
	ld e, h                                          ; $6fbb: $5c
	dec a                                            ; $6fbc: $3d
	xor h                                            ; $6fbd: $ac
	ld a, l                                          ; $6fbe: $7d
	ldh a, [$03]                                     ; $6fbf: $f0 $03
	ldh a, [$35]                                     ; $6fc1: $f0 $35
	ld b, d                                          ; $6fc3: $42
	db $ec                                           ; $6fc4: $ec
	ldh a, [c]                                       ; $6fc5: $f2
	xor b                                            ; $6fc6: $a8
	cp e                                             ; $6fc7: $bb
	ld c, d                                          ; $6fc8: $4a
	ld d, c                                          ; $6fc9: $51
	ld c, h                                          ; $6fca: $4c
	and b                                            ; $6fcb: $a0
	cpl                                              ; $6fcc: $2f
	add sp, -$1a                                     ; $6fcd: $e8 $e6
	add hl, bc                                       ; $6fcf: $09
	ld l, a                                          ; $6fd0: $6f
	ld c, a                                          ; $6fd1: $4f
	ld b, b                                          ; $6fd2: $40
	add hl, sp                                       ; $6fd3: $39
	ld [hl], a                                       ; $6fd4: $77
	jr c, @+$54                                      ; $6fd5: $38 $52

jr_08c_6fd7:
	ld d, c                                          ; $6fd7: $51
	xor b                                            ; $6fd8: $a8
	pop af                                           ; $6fd9: $f1
	sub $38                                          ; $6fda: $d6 $38
	jr c, jr_08c_7028                                ; $6fdc: $38 $4a

	ld d, c                                          ; $6fde: $51
	ld c, h                                          ; $6fdf: $4c
	and b                                            ; $6fe0: $a0
	or [hl]                                          ; $6fe1: $b6
	xor b                                            ; $6fe2: $a8

jr_08c_6fe3:
	ldh a, [$78]                                     ; $6fe3: $f0 $78
	ldh a, [rVBK]                                    ; $6fe5: $f0 $4f
	ld a, $3f                                        ; $6fe7: $3e $3f
	ld a, $52                                        ; $6fe9: $3e $52
	jr c, @+$54                                      ; $6feb: $38 $52

	ld d, c                                          ; $6fed: $51
	ld c, h                                          ; $6fee: $4c
	and b                                            ; $6fef: $a0
	or [hl]                                          ; $6ff0: $b6
	xor b                                            ; $6ff1: $a8
	ld l, a                                          ; $6ff2: $6f
	ld c, a                                          ; $6ff3: $4f
	ld b, b                                          ; $6ff4: $40
	add hl, sp                                       ; $6ff5: $39
	ld [hl], a                                       ; $6ff6: $77
	jr c, @+$54                                      ; $6ff7: $38 $52

	ld d, c                                          ; $6ff9: $51
	and b                                            ; $6ffa: $a0
	cpl                                              ; $6ffb: $2f
	add sp, $2f                                      ; $6ffc: $e8 $2f
	add hl, bc                                       ; $6ffe: $09
	ld l, a                                          ; $6fff: $6f
	ld c, a                                          ; $7000: $4f

jr_08c_7001:
	ldh a, [$2d]                                     ; $7001: $f0 $2d

jr_08c_7003:
	dec sp                                           ; $7003: $3b
	ccf                                              ; $7004: $3f
	ld d, d                                          ; $7005: $52
	ld d, c                                          ; $7006: $51
	ld e, l                                          ; $7007: $5d
	ld e, d                                          ; $7008: $5a
	ld c, b                                          ; $7009: $48
	and b                                            ; $700a: $a0
	ld b, b                                          ; $700b: $40
	ld b, d                                          ; $700c: $42
	sbc l                                            ; $700d: $9d
	ld d, b                                          ; $700e: $50
	jr c, jr_08c_7001                                ; $700f: $38 $f0

	dec l                                            ; $7011: $2d
	dec sp                                           ; $7012: $3b
	ccf                                              ; $7013: $3f
	ld d, d                                          ; $7014: $52
	ld d, c                                          ; $7015: $51
	ld b, l                                          ; $7016: $45
	and b                                            ; $7017: $a0
	ldh a, [rAUD1ENV]                                ; $7018: $f0 $12
	sbc a                                            ; $701a: $9f
	ldh a, [rTIMA]                                   ; $701b: $f0 $05
	ld b, a                                          ; $701d: $47
	ld c, a                                          ; $701e: $4f
	ld a, [hl-]                                      ; $701f: $3a
	dec sp                                           ; $7020: $3b
	ccf                                              ; $7021: $3f
	xor h                                            ; $7022: $ac
	db $ec                                           ; $7023: $ec
	dec b                                            ; $7024: $05
	add h                                            ; $7025: $84
	ld d, e                                          ; $7026: $53
	inc de                                           ; $7027: $13

jr_08c_7028:
	jr c, jr_08c_7078                                ; $7028: $38 $4e

	ld b, c                                          ; $702a: $41
	ld c, d                                          ; $702b: $4a
	ld d, c                                          ; $702c: $51
	inc a                                            ; $702d: $3c
	and c                                            ; $702e: $a1
	cpl                                              ; $702f: $2f
	add sp, -$6f                                     ; $7030: $e8 $91
	and c                                            ; $7032: $a1
	ld l, a                                          ; $7033: $6f
	inc [hl]                                         ; $7034: $34
	ldh a, [rAUD3LEVEL]                              ; $7035: $f0 $1c
	ld d, e                                          ; $7037: $53
	ldh a, [$5c]                                     ; $7038: $f0 $5c
	jr c, jr_08c_7078                                ; $703a: $38 $3c

	ld d, b                                          ; $703c: $50
	xor h                                            ; $703d: $ac
	ld [$4a91], a                                    ; $703e: $ea $91 $4a
	ld a, $3d                                        ; $7041: $3e $3d
	and b                                            ; $7043: $a0
	ld [$a91e], a                                    ; $7044: $ea $1e $a9
	ld [$4a91], a                                    ; $7047: $ea $91 $4a
	ld a, $3d                                        ; $704a: $3e $3d
	and b                                            ; $704c: $a0
	ld [$a11e], a                                    ; $704d: $ea $1e $a1
	cpl                                              ; $7050: $2f
	ld b, e                                          ; $7051: $43
	ld b, b                                          ; $7052: $40
	add hl, sp                                       ; $7053: $39
	ld b, h                                          ; $7054: $44
	ld c, h                                          ; $7055: $4c
	xor b                                            ; $7056: $a8
	db $eb                                           ; $7057: $eb
	ld d, d                                          ; $7058: $52
	inc a                                            ; $7059: $3c
	and b                                            ; $705a: $a0
	ld d, c                                          ; $705b: $51
	ld [hl], b                                       ; $705c: $70
	ld d, l                                          ; $705d: $55
	pop af                                           ; $705e: $f1
	ret                                              ; $705f: $c9


	ld d, l                                          ; $7060: $55
	ccf                                              ; $7061: $3f
	xor h                                            ; $7062: $ac
	ldh a, [rAUD3LEVEL]                              ; $7063: $f0 $1c
	ld d, d                                          ; $7065: $52
	jr c, jr_08c_70bb                                ; $7066: $38 $53

	ld a, $40                                        ; $7068: $3e $40
	add hl, sp                                       ; $706a: $39
	ld c, d                                          ; $706b: $4a
	ld d, c                                          ; $706c: $51
	and b                                            ; $706d: $a0
	cpl                                              ; $706e: $2f
	add a                                            ; $706f: $87
	ldh a, [$5d]                                     ; $7070: $f0 $5d
	ld b, h                                          ; $7072: $44
	inc [hl]                                         ; $7073: $34
	ld l, e                                          ; $7074: $6b
	db $f4                                           ; $7075: $f4
	dec h                                            ; $7076: $25
	inc a                                            ; $7077: $3c

jr_08c_7078:
	ld c, d                                          ; $7078: $4a
	ldh a, [hDisp1_LCDC]                                     ; $7079: $f0 $8f
	ld d, d                                          ; $707b: $52
	ld a, [hl-]                                      ; $707c: $3a
	ld e, h                                          ; $707d: $5c
	ld d, [hl]                                       ; $707e: $56
	add hl, bc                                       ; $707f: $09
	jp hl                                            ; $7080: $e9


	inc d                                            ; $7081: $14
	xor b                                            ; $7082: $a8
	db $eb                                           ; $7083: $eb
	ld d, a                                          ; $7084: $57
	xor b                                            ; $7085: $a8
	db $ed                                           ; $7086: $ed
	ld h, h                                          ; $7087: $64
	inc a                                            ; $7088: $3c
	ld e, l                                          ; $7089: $5d
	ccf                                              ; $708a: $3f
	ld c, b                                          ; $708b: $48
	and b                                            ; $708c: $a0
	jp hl                                            ; $708d: $e9


	inc d                                            ; $708e: $14
	xor b                                            ; $708f: $a8
	db $eb                                           ; $7090: $eb
	ld d, a                                          ; $7091: $57
	xor b                                            ; $7092: $a8
	pop af                                           ; $7093: $f1
	ld de, $65f0                                     ; $7094: $11 $f0 $65
	ld d, e                                          ; $7097: $53
	ldh a, [c]                                       ; $7098: $f2
	ld e, c                                          ; $7099: $59
	ld d, l                                          ; $709a: $55
	ccf                                              ; $709b: $3f
	ld c, b                                          ; $709c: $48
	and b                                            ; $709d: $a0
	cpl                                              ; $709e: $2f
	add a                                            ; $709f: $87
	ldh a, [$5b]                                     ; $70a0: $f0 $5b
	ldh a, [$5e]                                     ; $70a2: $f0 $5e
	ld b, h                                          ; $70a4: $44
	ld b, l                                          ; $70a5: $45
	dec [hl]                                         ; $70a6: $35
	ld a, a                                          ; $70a7: $7f
	ld b, d                                          ; $70a8: $42
	ld a, c                                          ; $70a9: $79
	jr c, jr_08c_70f0                                ; $70aa: $38 $44

	ld b, l                                          ; $70ac: $45
	add hl, bc                                       ; $70ad: $09
	ld b, [hl]                                       ; $70ae: $46
	dec sp                                           ; $70af: $3b
	inc [hl]                                         ; $70b0: $34
	ld c, a                                          ; $70b1: $4f
	add hl, sp                                       ; $70b2: $39
	xor $05                                          ; $70b3: $ee $05
	ld c, d                                          ; $70b5: $4a
	ld d, c                                          ; $70b6: $51
	ld c, b                                          ; $70b7: $48
	and b                                            ; $70b8: $a0
	cpl                                              ; $70b9: $2f
	ld b, e                                          ; $70ba: $43

jr_08c_70bb:
	ld b, [hl]                                       ; $70bb: $46
	dec sp                                           ; $70bc: $3b
	inc [hl]                                         ; $70bd: $34
	db $ec                                           ; $70be: $ec
	rst SubAFromDE                                          ; $70bf: $df
	xor b                                            ; $70c0: $a8
	add a                                            ; $70c1: $87
	ldh a, [$5b]                                     ; $70c2: $f0 $5b
	ldh a, [$5e]                                     ; $70c4: $f0 $5e
	and c                                            ; $70c6: $a1
	cpl                                              ; $70c7: $2f
	ld [hl-], a                                      ; $70c8: $32
	ldh a, [hDisp1_LCDC]                                     ; $70c9: $f0 $8f
	ld d, d                                          ; $70cb: $52
	ld a, c                                          ; $70cc: $79
	ld c, l                                          ; $70cd: $4d
	ld a, e                                          ; $70ce: $7b
	ld b, l                                          ; $70cf: $45
	inc a                                            ; $70d0: $3c
	dec sp                                           ; $70d1: $3b
	dec a                                            ; $70d2: $3d
	inc de                                           ; $70d3: $13
	inc a                                            ; $70d4: $3c
	ld a, [hl-]                                      ; $70d5: $3a
	ld c, b                                          ; $70d6: $48
	and e                                            ; $70d7: $a3
	cpl                                              ; $70d8: $2f
	ld e, d                                          ; $70d9: $5a
	add hl, sp                                       ; $70da: $39
	ld d, c                                          ; $70db: $51
	ld c, l                                          ; $70dc: $4d
	ld a, e                                          ; $70dd: $7b
	db $ec                                           ; $70de: $ec
	ld a, [bc]                                       ; $70df: $0a
	and c                                            ; $70e0: $a1
	db $eb                                           ; $70e1: $eb
	ld d, a                                          ; $70e2: $57
	xor b                                            ; $70e3: $a8
	ld c, c                                          ; $70e4: $49
	ld d, a                                          ; $70e5: $57
	ld b, [hl]                                       ; $70e6: $46
	ld e, [hl]                                       ; $70e7: $5e
	sbc h                                            ; $70e8: $9c
	xor h                                            ; $70e9: $ac
	ldh a, [hDisp1_LCDC]                                     ; $70ea: $f0 $8f
	ld d, d                                          ; $70ec: $52
	ld a, c                                          ; $70ed: $79
	ccf                                              ; $70ee: $3f
	ld c, a                                          ; $70ef: $4f

jr_08c_70f0:
	ld d, b                                          ; $70f0: $50
	ld e, [hl]                                       ; $70f1: $5e
	ld d, d                                          ; $70f2: $52
	ld d, c                                          ; $70f3: $51
	inc a                                            ; $70f4: $3c
	and c                                            ; $70f5: $a1
	db $eb                                           ; $70f6: $eb
	ld d, a                                          ; $70f7: $57
	xor b                                            ; $70f8: $a8
	ldh a, [hDisp1_LCDC]                                     ; $70f9: $f0 $8f
	ld b, c                                          ; $70fb: $41
	ld c, d                                          ; $70fc: $4a
	ld c, a                                          ; $70fd: $4f
	jr c, jr_08c_7138                                ; $70fe: $38 $38

	ld c, d                                          ; $7100: $4a
	ld d, c                                          ; $7101: $51
	inc a                                            ; $7102: $3c
	and c                                            ; $7103: $a1
	ld c, c                                          ; $7104: $49
	ld d, a                                          ; $7105: $57
	ld b, [hl]                                       ; $7106: $46
	ld e, [hl]                                       ; $7107: $5e
	sbc h                                            ; $7108: $9c
	xor h                                            ; $7109: $ac
	ldh a, [hDisp1_LCDC]                                     ; $710a: $f0 $8f
	ld l, h                                          ; $710c: $6c
	dec a                                            ; $710d: $3d
	jr c, jr_08c_715a                                ; $710e: $38 $4a

	ld d, c                                          ; $7110: $51
	and b                                            ; $7111: $a0
	ld l, a                                          ; $7112: $6f
	inc [hl]                                         ; $7113: $34
	ldh a, [rOBP0]                                   ; $7114: $f0 $48
	ldh a, [$2c]                                     ; $7116: $f0 $2c
	ldh a, [rLY]                                     ; $7118: $f0 $44
	dec sp                                           ; $711a: $3b
	ccf                                              ; $711b: $3f
	xor h                                            ; $711c: $ac
	ld h, e                                          ; $711d: $63
	ld d, a                                          ; $711e: $57
	ld c, c                                          ; $711f: $49
	adc e                                            ; $7120: $8b
	ld e, h                                          ; $7121: $5c
	ld a, [hl-]                                      ; $7122: $3a
	ld b, c                                          ; $7123: $41
	ld c, d                                          ; $7124: $4a
	ld d, c                                          ; $7125: $51
	and b                                            ; $7126: $a0
	cpl                                              ; $7127: $2f
	ldh a, [rOBP0]                                   ; $7128: $f0 $48
	ldh a, [$2c]                                     ; $712a: $f0 $2c
	ldh a, [rLY]                                     ; $712c: $f0 $44
	dec sp                                           ; $712e: $3b
	ccf                                              ; $712f: $3f
	sub b                                            ; $7130: $90
	ld a, $38                                        ; $7131: $3e $38
	ld b, l                                          ; $7133: $45
	ld c, h                                          ; $7134: $4c
	add hl, bc                                       ; $7135: $09
	db $ec                                           ; $7136: $ec
	cp c                                             ; $7137: $b9

jr_08c_7138:
	xor b                                            ; $7138: $a8
	ld b, b                                          ; $7139: $40
	ld c, l                                          ; $713a: $4d
	ld b, a                                          ; $713b: $47
	xor h                                            ; $713c: $ac
	xor $06                                          ; $713d: $ee $06
	ld b, a                                          ; $713f: $47
	ld a, b                                          ; $7140: $78
	ld c, l                                          ; $7141: $4d
	dec a                                            ; $7142: $3d
	ld b, d                                          ; $7143: $42
	ld c, d                                          ; $7144: $4a
	ld c, b                                          ; $7145: $48
	and b                                            ; $7146: $a0
	db $ec                                           ; $7147: $ec
	cp c                                             ; $7148: $b9
	xor b                                            ; $7149: $a8
	ld l, a                                          ; $714a: $6f
	ld c, a                                          ; $714b: $4f
	ld b, b                                          ; $714c: $40
	add hl, sp                                       ; $714d: $39
	ld [hl], a                                       ; $714e: $77
	jr c, jr_08c_71a3                                ; $714f: $38 $52

	ld d, c                                          ; $7151: $51
	and b                                            ; $7152: $a0
	ld l, a                                          ; $7153: $6f
	ld c, a                                          ; $7154: $4f
	ld b, b                                          ; $7155: $40
	add hl, sp                                       ; $7156: $39
	ld [hl], a                                       ; $7157: $77
	jr c, jr_08c_71ac                                ; $7158: $38 $52

jr_08c_715a:
	ld d, c                                          ; $715a: $51
	and b                                            ; $715b: $a0
	cpl                                              ; $715c: $2f
	db $ed                                           ; $715d: $ed
	sub d                                            ; $715e: $92
	ld a, [hl-]                                      ; $715f: $3a
	ld b, c                                          ; $7160: $41
	db $ec                                           ; $7161: $ec
	ret c                                            ; $7162: $d8

	and c                                            ; $7163: $a1
	ld b, b                                          ; $7164: $40
	add hl, sp                                       ; $7165: $39
	inc a                                            ; $7166: $3c
	ld c, a                                          ; $7167: $4f
	xor h                                            ; $7168: $ac

jr_08c_7169:
	ld a, $4d                                        ; $7169: $3e $4d
	ld a, [hl-]                                      ; $716b: $3a
	jr c, jr_08c_71b8                                ; $716c: $38 $4a

	ld d, c                                          ; $716e: $51
	ld e, l                                          ; $716f: $5d
	ld e, d                                          ; $7170: $5a
	ld c, b                                          ; $7171: $48
	and b                                            ; $7172: $a0
	ld b, b                                          ; $7173: $40
	ld b, c                                          ; $7174: $41
	ld a, [hl-]                                      ; $7175: $3a
	add d                                            ; $7176: $82
	jr c, jr_08c_7169                                ; $7177: $38 $f0

	jr c, jr_08c_718e                                ; $7179: $38 $13

	ld a, [hl-]                                      ; $717b: $3a
	jr c, jr_08c_71c7                                ; $717c: $38 $49

	ld [hl], a                                       ; $717e: $77
	jr c, jr_08c_71d3                                ; $717f: $38 $52

	ld d, c                                          ; $7181: $51
	and b                                            ; $7182: $a0
	ld b, b                                          ; $7183: $40
	ld b, c                                          ; $7184: $41
	ld a, [hl-]                                      ; $7185: $3a
	xor h                                            ; $7186: $ac
	ldh a, [$d8]                                     ; $7187: $f0 $d8
	ld e, d                                          ; $7189: $5a
	jr c, jr_08c_71d6                                ; $718a: $38 $4a

	ld d, c                                          ; $718c: $51
	ld c, b                                          ; $718d: $48

jr_08c_718e:
	and b                                            ; $718e: $a0
	cpl                                              ; $718f: $2f
	ldh a, [c]                                       ; $7190: $f2
	ld a, [$383e]                                    ; $7191: $fa $3e $38
	ldh a, [rOBP0]                                   ; $7194: $f0 $48
	ldh a, [$2c]                                     ; $7196: $f0 $2c
	ld c, a                                          ; $7198: $4f
	ld [hl], d                                       ; $7199: $72
	ld c, l                                          ; $719a: $4d
	ld c, [hl]                                       ; $719b: $4e
	ld a, $4c                                        ; $719c: $3e $4c
	add hl, bc                                       ; $719e: $09
	or [hl]                                          ; $719f: $b6
	xor b                                            ; $71a0: $a8
	ld c, d                                          ; $71a1: $4a
	ld c, a                                          ; $71a2: $4f

jr_08c_71a3:
	inc [hl]                                         ; $71a3: $34
	xor $06                                          ; $71a4: $ee $06
	ld b, a                                          ; $71a6: $47
	ld [hl], d                                       ; $71a7: $72
	ld c, l                                          ; $71a8: $4d
	ld c, [hl]                                       ; $71a9: $4e
	ld b, d                                          ; $71aa: $42
	ld d, e                                          ; $71ab: $53

jr_08c_71ac:
	xor h                                            ; $71ac: $ac
	db $ed                                           ; $71ad: $ed
	ld [hl], d                                       ; $71ae: $72
	ldh a, [$29]                                     ; $71af: $f0 $29
	ld a, $38                                        ; $71b1: $3e $38
	ld c, d                                          ; $71b3: $4a
	ld d, c                                          ; $71b4: $51
	ld c, b                                          ; $71b5: $48
	and b                                            ; $71b6: $a0
	db $eb                                           ; $71b7: $eb

jr_08c_71b8:
	ld d, h                                          ; $71b8: $54
	ld c, d                                          ; $71b9: $4a
	ld d, c                                          ; $71ba: $51
	ld c, h                                          ; $71bb: $4c
	xor b                                            ; $71bc: $a8
	db $ed                                           ; $71bd: $ed
	sub h                                            ; $71be: $94
	ld b, a                                          ; $71bf: $47
	ld [hl], d                                       ; $71c0: $72
	ld c, l                                          ; $71c1: $4d
	ld c, [hl]                                       ; $71c2: $4e
	ld b, c                                          ; $71c3: $41
	ld c, d                                          ; $71c4: $4a
	ld d, c                                          ; $71c5: $51
	inc a                                            ; $71c6: $3c

jr_08c_71c7:
	ld d, b                                          ; $71c7: $50
	and b                                            ; $71c8: $a0
	db $ed                                           ; $71c9: $ed
	sub h                                            ; $71ca: $94
	ld b, a                                          ; $71cb: $47

jr_08c_71cc:
	ld [hl], d                                       ; $71cc: $72
	ld c, l                                          ; $71cd: $4d
	ld c, [hl]                                       ; $71ce: $4e
	ld a, [hl-]                                      ; $71cf: $3a
	ld b, c                                          ; $71d0: $41
	ccf                                              ; $71d1: $3f
	xor h                                            ; $71d2: $ac

jr_08c_71d3:
	db $eb                                           ; $71d3: $eb
	ld d, h                                          ; $71d4: $54
	ld d, h                                          ; $71d5: $54

jr_08c_71d6:
	ld c, c                                          ; $71d6: $49
	ld b, h                                          ; $71d7: $44
	ld c, c                                          ; $71d8: $49
	inc de                                           ; $71d9: $13
	ld [hl], a                                       ; $71da: $77
	jr c, jr_08c_722f                                ; $71db: $38 $52

	ld d, c                                          ; $71dd: $51
	and b                                            ; $71de: $a0
	ldh a, [rOBP0]                                   ; $71df: $f0 $48
	ldh a, [$2c]                                     ; $71e1: $f0 $2c
	ldh a, [rLY]                                     ; $71e3: $f0 $44
	ld c, e                                          ; $71e5: $4b
	ldh a, [c]                                       ; $71e6: $f2
	cp l                                             ; $71e7: $bd
	ld d, l                                          ; $71e8: $55
	ccf                                              ; $71e9: $3f
	xor h                                            ; $71ea: $ac
	ldh a, [$f3]                                     ; $71eb: $f0 $f3
	ld c, l                                          ; $71ed: $4d
	ld d, d                                          ; $71ee: $52
	ld d, c                                          ; $71ef: $51
	ld c, h                                          ; $71f0: $4c
	and b                                            ; $71f1: $a0
	cpl                                              ; $71f2: $2f
	ld b, b                                          ; $71f3: $40
	ld c, l                                          ; $71f4: $4d
	ld e, e                                          ; $71f5: $5b
	ld d, [hl]                                       ; $71f6: $56
	inc [hl]                                         ; $71f7: $34
	ret                                              ; $71f8: $c9


	ldh a, [hDisp1_LCDC]                                     ; $71f9: $f0 $8f
	ld c, a                                          ; $71fb: $4f
	add hl, sp                                       ; $71fc: $39
	add hl, bc                                       ; $71fd: $09
	db $eb                                           ; $71fe: $eb
	ld d, a                                          ; $71ff: $57
	xor b                                            ; $7200: $a8
	db $ed                                           ; $7201: $ed
	add sp, $3b                                      ; $7202: $e8 $3b
	ccf                                              ; $7204: $3f
	ld d, l                                          ; $7205: $55

jr_08c_7206:
	ld c, l                                          ; $7206: $4d
	ccf                                              ; $7207: $3f
	xor h                                            ; $7208: $ac
	ldh a, [$29]                                     ; $7209: $f0 $29
	ld a, $38                                        ; $720b: $3e $38
	ld c, d                                          ; $720d: $4a
	ld d, c                                          ; $720e: $51
	ld c, b                                          ; $720f: $48
	and b                                            ; $7210: $a0
	db $eb                                           ; $7211: $eb
	ld d, a                                          ; $7212: $57
	xor b                                            ; $7213: $a8
	db $ed                                           ; $7214: $ed
	jp hl                                            ; $7215: $e9


	ld d, d                                          ; $7216: $52
	ld c, c                                          ; $7217: $49
	jr c, @+$6e                                      ; $7218: $38 $6c

	dec a                                            ; $721a: $3d
	jr c, jr_08c_7267                                ; $721b: $38 $4a

	ld c, b                                          ; $721d: $48
	and b                                            ; $721e: $a0
	db $eb                                           ; $721f: $eb
	ld d, a                                          ; $7220: $57
	xor b                                            ; $7221: $a8
	ld d, c                                          ; $7222: $51
	sbc l                                            ; $7223: $9d
	ld b, a                                          ; $7224: $47
	ldh a, [$f3]                                     ; $7225: $f0 $f3
	ld c, l                                          ; $7227: $4d
	ccf                                              ; $7228: $3f
	ld a, $52                                        ; $7229: $3e $52
	dec sp                                           ; $722b: $3b
	ccf                                              ; $722c: $3f
	ld c, b                                          ; $722d: $48
	and b                                            ; $722e: $a0

jr_08c_722f:
	cpl                                              ; $722f: $2f
	ld d, d                                          ; $7230: $52
	ld b, h                                          ; $7231: $44
	ld d, d                                          ; $7232: $52
	ld b, h                                          ; $7233: $44
	inc [hl]                                         ; $7234: $34
	ldh a, [$f3]                                     ; $7235: $f0 $f3
	ld c, l                                          ; $7237: $4d
	ld c, [hl]                                       ; $7238: $4e
	ld b, d                                          ; $7239: $42
	ld c, e                                          ; $723a: $4b
	ldh a, [$0a]                                     ; $723b: $f0 $0a
	jr c, jr_08c_71cc                                ; $723d: $38 $8d

	add hl, bc                                       ; $723f: $09
	ld b, b                                          ; $7240: $40
	ld b, c                                          ; $7241: $41
	ld a, [hl-]                                      ; $7242: $3a
	ld d, h                                          ; $7243: $54
	ld c, c                                          ; $7244: $49
	add d                                            ; $7245: $82
	ld h, e                                          ; $7246: $63
	ld c, l                                          ; $7247: $4d
	ccf                                              ; $7248: $3f
	ld c, a                                          ; $7249: $4f
	xor h                                            ; $724a: $ac
	pop af                                           ; $724b: $f1
	sbc $3b                                          ; $724c: $de $3b
	ccf                                              ; $724e: $3f
	ld a, $52                                        ; $724f: $3e $52
	jr c, jr_08c_72a5                                ; $7251: $38 $52

	ld d, c                                          ; $7253: $51
	ld c, b                                          ; $7254: $48
	and b                                            ; $7255: $a0
	ld b, b                                          ; $7256: $40
	ld b, c                                          ; $7257: $41
	ld a, [hl-]                                      ; $7258: $3a
	ld d, h                                          ; $7259: $54
	ld c, c                                          ; $725a: $49
	inc de                                           ; $725b: $13
	add d                                            ; $725c: $82
	ld h, e                                          ; $725d: $63
	ld a, [hl-]                                      ; $725e: $3a
	jr c, jr_08c_72ab                                ; $725f: $38 $4a

	ld d, l                                          ; $7261: $55
	ld b, h                                          ; $7262: $44
	ld e, b                                          ; $7263: $58
	jr c, jr_08c_7206                                ; $7264: $38 $a0

	rst JumpTable                                          ; $7266: $c7

jr_08c_7267:
	ld c, e                                          ; $7267: $4b
	add d                                            ; $7268: $82
	ld h, e                                          ; $7269: $63
	ld c, l                                          ; $726a: $4d
	ccf                                              ; $726b: $3f
	ld c, a                                          ; $726c: $4f
	ld c, b                                          ; $726d: $48
	and b                                            ; $726e: $a0
	cpl                                              ; $726f: $2f
	ld c, a                                          ; $7270: $4f
	add hl, sp                                       ; $7271: $39
	ldh a, [rHDMA4]                                  ; $7272: $f0 $54
	ld a, $92                                        ; $7274: $3e $92
	adc [hl]                                         ; $7276: $8e
	ld c, l                                          ; $7277: $4d
	ld c, [hl]                                       ; $7278: $4e
	inc a                                            ; $7279: $3c
	ld a, [hl-]                                      ; $727a: $3a
	and c                                            ; $727b: $a1
	rst JumpTable                                          ; $727c: $c7
	ld c, d                                          ; $727d: $4a
	ld d, c                                          ; $727e: $51
	ld c, h                                          ; $727f: $4c
	xor b                                            ; $7280: $a8
	ld c, a                                          ; $7281: $4f
	add hl, sp                                       ; $7282: $39
	ldh a, [rHDMA4]                                  ; $7283: $f0 $54
	ld a, $3a                                        ; $7285: $3e $3a
	ld d, b                                          ; $7287: $50
	xor l                                            ; $7288: $ad
	db $ed                                           ; $7289: $ed
	nop                                              ; $728a: $00
	ld d, d                                          ; $728b: $52
	ld d, c                                          ; $728c: $51
	and b                                            ; $728d: $a0
	ld c, a                                          ; $728e: $4f
	add hl, sp                                       ; $728f: $39
	ldh a, [rHDMA4]                                  ; $7290: $f0 $54
	ld a, $3a                                        ; $7292: $3e $3a
	ld d, b                                          ; $7294: $50
	xor h                                            ; $7295: $ac
	sub d                                            ; $7296: $92
	adc [hl]                                         ; $7297: $8e
	dec sp                                           ; $7298: $3b
	ccf                                              ; $7299: $3f
	ld l, h                                          ; $729a: $6c
	ld d, d                                          ; $729b: $52
	ld d, c                                          ; $729c: $51
	and b                                            ; $729d: $a0
	ret                                              ; $729e: $c9


	xor h                                            ; $729f: $ac
	ldh a, [rAUD1LOW]                                ; $72a0: $f0 $13
	ldh a, [$63]                                     ; $72a2: $f0 $63
	ld l, h                                          ; $72a4: $6c

jr_08c_72a5:
	dec a                                            ; $72a5: $3d
	jr c, jr_08c_72f2                                ; $72a6: $38 $4a

	ld d, c                                          ; $72a8: $51
	and b                                            ; $72a9: $a0
	ld l, d                                          ; $72aa: $6a

jr_08c_72ab:
	ld [hl], d                                       ; $72ab: $72
	ccf                                              ; $72ac: $3f
	ld e, h                                          ; $72ad: $5c
	dec a                                            ; $72ae: $3d
	xor h                                            ; $72af: $ac
	db $ec                                           ; $72b0: $ec
	ld a, [$f0ac]                                    ; $72b1: $fa $ac $f0
	adc d                                            ; $72b4: $8a
	ldh a, [rHDMA2]                                  ; $72b5: $f0 $52
	inc a                                            ; $72b7: $3c
	dec sp                                           ; $72b8: $3b
	dec a                                            ; $72b9: $3d
	ld c, d                                          ; $72ba: $4a
	ld d, c                                          ; $72bb: $51
	ld c, h                                          ; $72bc: $4c
	and b                                            ; $72bd: $a0
	cpl                                              ; $72be: $2f
	jp hl                                            ; $72bf: $e9


	rrc c                                            ; $72c0: $cb $09
	db $ec                                           ; $72c2: $ec

jr_08c_72c3:
	cp c                                             ; $72c3: $b9
	xor b                                            ; $72c4: $a8
	db $ec                                           ; $72c5: $ec
	reti                                             ; $72c6: $d9


	xor h                                            ; $72c7: $ac
	ld b, b                                          ; $72c8: $40
	add hl, sp                                       ; $72c9: $39
	ld [hl], a                                       ; $72ca: $77
	jr c, jr_08c_731f                                ; $72cb: $38 $52

	ld d, c                                          ; $72cd: $51
	ld b, l                                          ; $72ce: $45
	ld c, h                                          ; $72cf: $4c
	and b                                            ; $72d0: $a0
	ld b, b                                          ; $72d1: $40
	add hl, sp                                       ; $72d2: $39
	jr c, @+$3b                                      ; $72d3: $38 $39

	ld c, c                                          ; $72d5: $49
	xor h                                            ; $72d6: $ac
	ld [hl], a                                       ; $72d7: $77
	jr c, @+$54                                      ; $72d8: $38 $52

	ld a, $3d                                        ; $72da: $3e $3d
	and b                                            ; $72dc: $a0
	cpl                                              ; $72dd: $2f
	jp hl                                            ; $72de: $e9


	add hl, sp                                       ; $72df: $39
	add hl, bc                                       ; $72e0: $09
	cp [hl]                                          ; $72e1: $be
	xor l                                            ; $72e2: $ad
	ld b, b                                          ; $72e3: $40
	add hl, sp                                       ; $72e4: $39
	ld [hl], a                                       ; $72e5: $77
	dec sp                                           ; $72e6: $3b
	ccf                                              ; $72e7: $3f
	ld c, [hl]                                       ; $72e8: $4e
	ld b, c                                          ; $72e9: $41
	ld c, d                                          ; $72ea: $4a
	ld d, c                                          ; $72eb: $51
	inc a                                            ; $72ec: $3c
	ld c, b                                          ; $72ed: $48
	and b                                            ; $72ee: $a0
	ld b, b                                          ; $72ef: $40
	ld b, c                                          ; $72f0: $41
	ld a, [hl-]                                      ; $72f1: $3a

jr_08c_72f2:
	ld b, a                                          ; $72f2: $47
	inc de                                           ; $72f3: $13
	ldh a, [$8a]                                     ; $72f4: $f0 $8a
	ldh a, [rHDMA2]                                  ; $72f6: $f0 $52
	ld d, l                                          ; $72f8: $55
	ld a, [hl-]                                      ; $72f9: $3a
	jr c, jr_08c_7346                                ; $72fa: $38 $4a

	ld d, c                                          ; $72fc: $51
	inc a                                            ; $72fd: $3c
	and c                                            ; $72fe: $a1
	ld b, b                                          ; $72ff: $40
	add hl, sp                                       ; $7300: $39
	ld [hl], a                                       ; $7301: $77
	dec sp                                           ; $7302: $3b
	ccf                                              ; $7303: $3f
	ld c, [hl]                                       ; $7304: $4e
	ld b, c                                          ; $7305: $41
	ld c, d                                          ; $7306: $4a
	ld d, c                                          ; $7307: $51
	ld c, h                                          ; $7308: $4c
	and b                                            ; $7309: $a0
	cpl                                              ; $730a: $2f
	jp hl                                            ; $730b: $e9


	call z, $ec09                                    ; $730c: $cc $09 $ec
	inc de                                           ; $730f: $13

jr_08c_7310:
	ld h, h                                          ; $7310: $64
	ldh a, [hDisp0_OBP0]                                     ; $7311: $f0 $86
	ld d, e                                          ; $7313: $53
	inc de                                           ; $7314: $13
	adc $46                                          ; $7315: $ce $46
	ld d, a                                          ; $7317: $57
	ld d, d                                          ; $7318: $52
	ld d, c                                          ; $7319: $51
	ld c, h                                          ; $731a: $4c
	and b                                            ; $731b: $a0
	cpl                                              ; $731c: $2f
	add sp, $59                                      ; $731d: $e8 $59

jr_08c_731f:
	add hl, bc                                       ; $731f: $09
	ld l, a                                          ; $7320: $6f
	ld c, a                                          ; $7321: $4f
	ld b, b                                          ; $7322: $40
	add hl, sp                                       ; $7323: $39
	ld [hl], a                                       ; $7324: $77
	jr c, jr_08c_7379                                ; $7325: $38 $52

	ld d, c                                          ; $7327: $51
	xor b                                            ; $7328: $a8
	db $ed                                           ; $7329: $ed
	inc d                                            ; $732a: $14
	ldh a, [$60]                                     ; $732b: $f0 $60
	ldh a, [$c4]                                     ; $732d: $f0 $c4
	add e                                            ; $732f: $83
	ld l, c                                          ; $7330: $69
	inc de                                           ; $7331: $13
	ld a, [hl-]                                      ; $7332: $3a
	ld b, c                                          ; $7333: $41
	ld c, d                                          ; $7334: $4a
	ld d, c                                          ; $7335: $51
	ld c, h                                          ; $7336: $4c
	ld c, b                                          ; $7337: $48
	and b                                            ; $7338: $a0
	or [hl]                                          ; $7339: $b6
	xor b                                            ; $733a: $a8
	db $eb                                           ; $733b: $eb
	ld d, h                                          ; $733c: $54
	sbc e                                            ; $733d: $9b
	ld h, d                                          ; $733e: $62
	inc de                                           ; $733f: $13
	ld [hl], a                                       ; $7340: $77
	jr c, jr_08c_72c3                                ; $7341: $38 $80

	ld e, h                                          ; $7343: $5c
	ld b, b                                          ; $7344: $40
	add hl, sp                                       ; $7345: $39

jr_08c_7346:
	ld c, d                                          ; $7346: $4a
	ld d, c                                          ; $7347: $51
	and b                                            ; $7348: $a0
	cpl                                              ; $7349: $2f
	ld [$0948], a                                    ; $734a: $ea $48 $09
	ldh a, [$b7]                                     ; $734d: $f0 $b7
	ldh a, [$8c]                                     ; $734f: $f0 $8c
	ld c, l                                          ; $7351: $4d
	ld c, [hl]                                       ; $7352: $4e
	inc a                                            ; $7353: $3c
	ld c, a                                          ; $7354: $4f
	inc de                                           ; $7355: $13
	ld a, $4d                                        ; $7356: $3e $4d
	ld d, d                                          ; $7358: $52
	ld a, c                                          ; $7359: $79
	ld b, c                                          ; $735a: $41
	ld e, l                                          ; $735b: $5d
	ld e, d                                          ; $735c: $5a
	ld c, b                                          ; $735d: $48
	and b                                            ; $735e: $a0
	ld b, b                                          ; $735f: $40
	ld b, c                                          ; $7360: $41
	ld a, [hl-]                                      ; $7361: $3a
	ldh a, [$a4]                                     ; $7362: $f0 $a4
	ld e, [hl]                                       ; $7364: $5e
	ld c, e                                          ; $7365: $4b
	xor h                                            ; $7366: $ac
	pop af                                           ; $7367: $f1
	jr nc, jr_08c_73db                               ; $7368: $30 $71

	ccf                                              ; $736a: $3f
	ld d, l                                          ; $736b: $55
	ld b, h                                          ; $736c: $44

jr_08c_736d:
	ld e, b                                          ; $736d: $58
	jr c, jr_08c_7310                                ; $736e: $38 $a0

	ld b, b                                          ; $7370: $40
	ld b, c                                          ; $7371: $41
	ld a, [hl-]                                      ; $7372: $3a
	sbc d                                            ; $7373: $9a
	ldh a, [$2d]                                     ; $7374: $f0 $2d
	ld d, a                                          ; $7376: $57
	ld d, d                                          ; $7377: $52
	ld a, c                                          ; $7378: $79

jr_08c_7379:
	ld b, c                                          ; $7379: $41
	and b                                            ; $737a: $a0
	cpl                                              ; $737b: $2f
	jp hl                                            ; $737c: $e9


	jp hl                                            ; $737d: $e9


	add hl, bc                                       ; $737e: $09
	xor $06                                          ; $737f: $ee $06
	ld b, a                                          ; $7381: $47
	ld [hl], d                                       ; $7382: $72
	ld c, l                                          ; $7383: $4d
	ccf                                              ; $7384: $3f
	xor h                                            ; $7385: $ac
	ldh a, [$29]                                     ; $7386: $f0 $29
	ld a, $38                                        ; $7388: $3e $38
	ld c, d                                          ; $738a: $4a
	ld d, c                                          ; $738b: $51
	ld c, b                                          ; $738c: $48
	and b                                            ; $738d: $a0
	ld [hl], d                                       ; $738e: $72
	ld c, c                                          ; $738f: $49
	ld c, l                                          ; $7390: $4d
	ccf                                              ; $7391: $3f
	ld a, $52                                        ; $7392: $3e $52
	jr c, @+$54                                      ; $7394: $38 $52

	ld d, c                                          ; $7396: $51
	ld c, h                                          ; $7397: $4c
	ld c, b                                          ; $7398: $48
	and b                                            ; $7399: $a0
	db $ec                                           ; $739a: $ec
	db $eb                                           ; $739b: $eb
	xor h                                            ; $739c: $ac
	ld [hl], d                                       ; $739d: $72
	ccf                                              ; $739e: $3f
	ld d, d                                          ; $739f: $52
	ld a, $66                                        ; $73a0: $3e $66
	add hl, sp                                       ; $73a2: $39
	and b                                            ; $73a3: $a0
	ld d, h                                          ; $73a4: $54
	ld b, c                                          ; $73a5: $41
	ld a, [hl-]                                      ; $73a6: $3a
	ld b, a                                          ; $73a7: $47
	inc de                                           ; $73a8: $13
	ld h, h                                          ; $73a9: $64
	ldh a, [hDisp0_OBP0]                                     ; $73aa: $f0 $86
	ld d, e                                          ; $73ac: $53
	ld b, [hl]                                       ; $73ad: $46
	ld c, [hl]                                       ; $73ae: $4e
	ldh a, [rTIMA]                                   ; $73af: $f0 $05
	pop af                                           ; $73b1: $f1
	rrca                                             ; $73b2: $0f
	dec sp                                           ; $73b3: $3b
	ccf                                              ; $73b4: $3f
	xor h                                            ; $73b5: $ac
	db $eb                                           ; $73b6: $eb
	ld d, h                                          ; $73b7: $54
	ld c, c                                          ; $73b8: $49
	ld [hl], a                                       ; $73b9: $77
	jr c, @+$54                                      ; $73ba: $38 $52

	ld d, c                                          ; $73bc: $51
	and b                                            ; $73bd: $a0
	cpl                                              ; $73be: $2f
	ld [$0980], a                                    ; $73bf: $ea $80 $09
	db $ec                                           ; $73c2: $ec
	cp c                                             ; $73c3: $b9
	xor l                                            ; $73c4: $ad
	ld b, b                                          ; $73c5: $40
	add hl, sp                                       ; $73c6: $39
	ld [hl], a                                       ; $73c7: $77
	dec sp                                           ; $73c8: $3b
	ccf                                              ; $73c9: $3f
	inc de                                           ; $73ca: $13
	ld d, l                                          ; $73cb: $55
	ld c, l                                          ; $73cc: $4d
	ld c, [hl]                                       ; $73cd: $4e
	ld b, c                                          ; $73ce: $41
	ld c, d                                          ; $73cf: $4a
	ld d, c                                          ; $73d0: $51
	ld c, h                                          ; $73d1: $4c
	and b                                            ; $73d2: $a0
	ld b, b                                          ; $73d3: $40
	add hl, sp                                       ; $73d4: $39
	ld [hl], a                                       ; $73d5: $77
	jr c, jr_08c_742a                                ; $73d6: $38 $52

	ld d, c                                          ; $73d8: $51
	ld b, l                                          ; $73d9: $45
	ld c, h                                          ; $73da: $4c

jr_08c_73db:
	and b                                            ; $73db: $a0
	cpl                                              ; $73dc: $2f
	ld [$a158], a                                    ; $73dd: $ea $58 $a1
	ld b, b                                          ; $73e0: $40
	ld b, c                                          ; $73e1: $41
	ld a, [hl-]                                      ; $73e2: $3a
	sbc d                                            ; $73e3: $9a
	ld h, d                                          ; $73e4: $62
	ld a, $3a                                        ; $73e5: $3e $3a
	jr c, jr_08c_736d                                ; $73e7: $38 $84

	inc de                                           ; $73e9: $13
	ld b, h                                          ; $73ea: $44
	ld c, c                                          ; $73eb: $49
	inc [hl]                                         ; $73ec: $34
	ldh a, [$9f]                                     ; $73ed: $f0 $9f
	ld e, e                                          ; $73ef: $5b
	ccf                                              ; $73f0: $3f
	ld d, d                                          ; $73f1: $52
	ld d, c                                          ; $73f2: $51
	inc a                                            ; $73f3: $3c
	ld d, b                                          ; $73f4: $50
	ld c, b                                          ; $73f5: $48
	and b                                            ; $73f6: $a0
	ld b, b                                          ; $73f7: $40
	ld b, c                                          ; $73f8: $41
	ld a, [hl-]                                      ; $73f9: $3a
	sbc d                                            ; $73fa: $9a
	ld h, d                                          ; $73fb: $62
	ld a, $3d                                        ; $73fc: $3e $3d
	ld d, b                                          ; $73fe: $50
	xor h                                            ; $73ff: $ac
	xor $05                                          ; $7400: $ee $05
	ld c, d                                          ; $7402: $4a
	ld d, c                                          ; $7403: $51
	ld b, l                                          ; $7404: $45
	and b                                            ; $7405: $a0
	ld b, b                                          ; $7406: $40
	ld b, c                                          ; $7407: $41
	ld a, [hl-]                                      ; $7408: $3a
	sbc d                                            ; $7409: $9a
	inc de                                           ; $740a: $13
	ld a, $3a                                        ; $740b: $3e $3a
	jr c, @+$4c                                      ; $740d: $38 $4a

	ld d, l                                          ; $740f: $55
	ld b, h                                          ; $7410: $44
	ld e, b                                          ; $7411: $58
	jr c, jr_08c_745c                                ; $7412: $38 $48

	and b                                            ; $7414: $a0
	cpl                                              ; $7415: $2f
	ld [$097f], a                                    ; $7416: $ea $7f $09
	ld b, b                                          ; $7419: $40
	add hl, sp                                       ; $741a: $39
	ld c, d                                          ; $741b: $4a
	ld d, c                                          ; $741c: $51
	ld b, l                                          ; $741d: $45
	ld c, h                                          ; $741e: $4c
	xor b                                            ; $741f: $a8
	ld c, d                                          ; $7420: $4a
	ld c, a                                          ; $7421: $4f
	inc [hl]                                         ; $7422: $34
	pop af                                           ; $7423: $f1
	ld c, h                                          ; $7424: $4c
	ldh a, [$61]                                     ; $7425: $f0 $61
	ld b, h                                          ; $7427: $44
	ld e, l                                          ; $7428: $5d
	ld c, d                                          ; $7429: $4a

jr_08c_742a:
	ld c, a                                          ; $742a: $4f
	inc de                                           ; $742b: $13
	db $eb                                           ; $742c: $eb
	add a                                            ; $742d: $87
	and b                                            ; $742e: $a0
	ld b, b                                          ; $742f: $40
	ld c, l                                          ; $7430: $4d
	ld a, [hl-]                                      ; $7431: $3a
	ld d, b                                          ; $7432: $50
	xor h                                            ; $7433: $ac
	pop af                                           ; $7434: $f1
	ld c, h                                          ; $7435: $4c
	ldh a, [$61]                                     ; $7436: $f0 $61
	ld b, h                                          ; $7438: $44
	ld e, l                                          ; $7439: $5d
	ld c, d                                          ; $743a: $4a
	ld c, a                                          ; $743b: $4f
	xor h                                            ; $743c: $ac
	ld l, a                                          ; $743d: $6f
	xor $2d                                          ; $743e: $ee $2d
	jr c, jr_08c_748c                                ; $7440: $38 $4a

	ld d, c                                          ; $7442: $51
	and b                                            ; $7443: $a0
	ld b, b                                          ; $7444: $40
	add hl, sp                                       ; $7445: $39
	ld c, d                                          ; $7446: $4a
	ld d, c                                          ; $7447: $51
	ld b, l                                          ; $7448: $45
	ld c, h                                          ; $7449: $4c
	xor b                                            ; $744a: $a8
	ld b, b                                          ; $744b: $40
	ld b, c                                          ; $744c: $41
	ld a, [hl-]                                      ; $744d: $3a
	ld b, a                                          ; $744e: $47
	inc de                                           ; $744f: $13
	ld h, h                                          ; $7450: $64
	di                                               ; $7451: $f3
	ld e, l                                          ; $7452: $5d
	ld c, a                                          ; $7453: $4f
	ldh a, [c]                                       ; $7454: $f2
	cp l                                             ; $7455: $bd
	ld d, l                                          ; $7456: $55
	ld a, [hl-]                                      ; $7457: $3a
	jr c, jr_08c_7498                                ; $7458: $38 $3e

	ld c, b                                          ; $745a: $48
	and b                                            ; $745b: $a0

jr_08c_745c:
	ld b, b                                          ; $745c: $40
	ld c, l                                          ; $745d: $4d
	ld e, e                                          ; $745e: $5b
	ld d, [hl]                                       ; $745f: $56
	xor h                                            ; $7460: $ac
	ldh a, [rAUD2HIGH]                               ; $7461: $f0 $19
	ld b, a                                          ; $7463: $47
	sub [hl]                                         ; $7464: $96
	ld d, a                                          ; $7465: $57
	ld d, d                                          ; $7466: $52
	ld a, $66                                        ; $7467: $3e $66
	add hl, sp                                       ; $7469: $39
	inc a                                            ; $746a: $3c
	and c                                            ; $746b: $a1
	db $ed                                           ; $746c: $ed
	ld c, c                                          ; $746d: $49
	ld c, d                                          ; $746e: $4a
	ld d, c                                          ; $746f: $51
	ld c, h                                          ; $7470: $4c
	xor b                                            ; $7471: $a8
	jp z, $f0ac                                      ; $7472: $ca $ac $f0

	rst SubAFromBC                                          ; $7475: $e7
	ld d, a                                          ; $7476: $57
	ld d, d                                          ; $7477: $52
	ld a, $66                                        ; $7478: $3e $66
	add hl, sp                                       ; $747a: $39
	and b                                            ; $747b: $a0
	pop af                                           ; $747c: $f1
	ld h, l                                          ; $747d: $65
	dec sp                                           ; $747e: $3b
	ccf                                              ; $747f: $3f
	xor h                                            ; $7480: $ac
	db $ed                                           ; $7481: $ed
	inc bc                                           ; $7482: $03
	ld b, h                                          ; $7483: $44
	ld c, c                                          ; $7484: $49
	ld [hl], a                                       ; $7485: $77
	jr c, jr_08c_74da                                ; $7486: $38 $52

	ld a, c                                          ; $7488: $79
	ld b, c                                          ; $7489: $41
	inc a                                            ; $748a: $3c
	and c                                            ; $748b: $a1

jr_08c_748c:
	cpl                                              ; $748c: $2f
	add sp, $30                                      ; $748d: $e8 $30
	add hl, bc                                       ; $748f: $09
	or [hl]                                          ; $7490: $b6
	xor l                                            ; $7491: $ad
	ld b, b                                          ; $7492: $40
	add hl, sp                                       ; $7493: $39
	ld [hl], a                                       ; $7494: $77
	add hl, sp                                       ; $7495: $39
	ld c, c                                          ; $7496: $49
	inc [hl]                                         ; $7497: $34

jr_08c_7498:
	ld c, a                                          ; $7498: $4f
	dec sp                                           ; $7499: $3b
	ld c, c                                          ; $749a: $49
	inc de                                           ; $749b: $13
	db $ed                                           ; $749c: $ed
	inc bc                                           ; $749d: $03
	ld c, d                                          ; $749e: $4a
	ld d, c                                          ; $749f: $51
	ld c, h                                          ; $74a0: $4c
	ld c, b                                          ; $74a1: $48
	and b                                            ; $74a2: $a0
	or [hl]                                          ; $74a3: $b6
	xor b                                            ; $74a4: $a8
	ldh a, [$d0]                                     ; $74a5: $f0 $d0
	ld [hl], a                                       ; $74a7: $77
	ldh a, [c]                                       ; $74a8: $f2
	or b                                             ; $74a9: $b0
	ld a, [hl-]                                      ; $74aa: $3a
	ldh a, [$78]                                     ; $74ab: $f0 $78
	ld e, e                                          ; $74ad: $5b
	ld d, e                                          ; $74ae: $53
	inc de                                           ; $74af: $13
	ld a, $52                                        ; $74b0: $3e $52
	ld d, c                                          ; $74b2: $51
	ld c, h                                          ; $74b3: $4c
	ld c, b                                          ; $74b4: $48
	and b                                            ; $74b5: $a0
	or [hl]                                          ; $74b6: $b6
	xor b                                            ; $74b7: $a8
	ldh a, [$57]                                     ; $74b8: $f0 $57
	ldh a, [$ae]                                     ; $74ba: $f0 $ae
	ld c, d                                          ; $74bc: $4a
	ld d, c                                          ; $74bd: $51
	ld c, h                                          ; $74be: $4c
	ld c, b                                          ; $74bf: $48
	and b                                            ; $74c0: $a0
	cpl                                              ; $74c1: $2f
	add sp, -$1f                                     ; $74c2: $e8 $e1
	add hl, bc                                       ; $74c4: $09
	ld b, b                                          ; $74c5: $40
	add hl, sp                                       ; $74c6: $39
	add d                                            ; $74c7: $82
	dec sp                                           ; $74c8: $3b
	ccf                                              ; $74c9: $3f
	ld a, $52                                        ; $74ca: $3e $52
	ld e, [hl]                                       ; $74cc: $5e
	ld a, e                                          ; $74cd: $7b
	xor h                                            ; $74ce: $ac
	ld [$5dbf], a                                    ; $74cf: $ea $bf $5d
	ld e, d                                          ; $74d2: $5a
	ld c, b                                          ; $74d3: $48
	and b                                            ; $74d4: $a0
	ld b, b                                          ; $74d5: $40
	add hl, sp                                       ; $74d6: $39
	ld c, d                                          ; $74d7: $4a
	ld d, c                                          ; $74d8: $51
	ld e, l                                          ; $74d9: $5d

jr_08c_74da:
	ld e, d                                          ; $74da: $5a
	xor l                                            ; $74db: $ad
	pop af                                           ; $74dc: $f1
	ld h, l                                          ; $74dd: $65
	ldh a, [$c9]                                     ; $74de: $f0 $c9
	ld h, d                                          ; $74e0: $62
	ld [hl], d                                       ; $74e1: $72
	ccf                                              ; $74e2: $3f
	ld c, a                                          ; $74e3: $4f
	xor h                                            ; $74e4: $ac
	ld l, e                                          ; $74e5: $6b
	ld c, a                                          ; $74e6: $4f
	ldh a, [$78]                                     ; $74e7: $f0 $78
	ld e, e                                          ; $74e9: $5b
	ld a, [hl-]                                      ; $74ea: $3a
	jr c, jr_08c_752e                                ; $74eb: $38 $41

	ld c, d                                          ; $74ed: $4a
	ld d, c                                          ; $74ee: $51
	ld c, h                                          ; $74ef: $4c
	ld c, b                                          ; $74f0: $48
	and b                                            ; $74f1: $a0
	ld b, b                                          ; $74f2: $40
	add hl, sp                                       ; $74f3: $39
	ld c, d                                          ; $74f4: $4a
	ld d, c                                          ; $74f5: $51
	ld e, l                                          ; $74f6: $5d
	ld e, d                                          ; $74f7: $5a
	xor l                                            ; $74f8: $ad
	db $ed                                           ; $74f9: $ed
	ld h, l                                          ; $74fa: $65
	ld d, c                                          ; $74fb: $51
	ld c, [hl]                                       ; $74fc: $4e
	ldh a, [rVBK]                                    ; $74fd: $f0 $4f
	ld d, e                                          ; $74ff: $53
	inc de                                           ; $7500: $13
	ld a, [hl-]                                      ; $7501: $3a
	jr c, jr_08c_7545                                ; $7502: $38 $41

	ld c, d                                          ; $7504: $4a
	ld d, c                                          ; $7505: $51
	ld c, h                                          ; $7506: $4c
	ld c, b                                          ; $7507: $48
	and b                                            ; $7508: $a0
	cpl                                              ; $7509: $2f
	ld b, b                                          ; $750a: $40
	add hl, sp                                       ; $750b: $39
	ld b, h                                          ; $750c: $44
	ld c, h                                          ; $750d: $4c
	inc [hl]                                         ; $750e: $34
	ld b, b                                          ; $750f: $40
	add hl, sp                                       ; $7510: $39
	ld [hl], a                                       ; $7511: $77
	add hl, sp                                       ; $7512: $39
	ld b, l                                          ; $7513: $45
	add hl, bc                                       ; $7514: $09
	ld l, a                                          ; $7515: $6f
	jr c, jr_08c_7498                                ; $7516: $38 $80

	ld c, a                                          ; $7518: $4f
	inc [hl]                                         ; $7519: $34
	ldh a, [hDisp0_BGP]                                     ; $751a: $f0 $85
	ld c, l                                          ; $751c: $4d
	pop af                                           ; $751d: $f1
	ld h, l                                          ; $751e: $65
	ld b, a                                          ; $751f: $47
	inc de                                           ; $7520: $13
	ld h, h                                          ; $7521: $64
	ldh a, [$c8]                                     ; $7522: $f0 $c8
	jr c, jr_08c_7564                                ; $7524: $38 $3e

	ccf                                              ; $7526: $3f
	ld c, [hl]                                       ; $7527: $4e
	ld b, c                                          ; $7528: $41
	ld c, d                                          ; $7529: $4a
	ld d, c                                          ; $752a: $51
	xor l                                            ; $752b: $ad
	ld l, d                                          ; $752c: $6a
	ld l, b                                          ; $752d: $68

jr_08c_752e:
	inc [hl]                                         ; $752e: $34
	inc a                                            ; $752f: $3c
	ld a, [hl-]                                      ; $7530: $3a
	dec sp                                           ; $7531: $3b
	dec a                                            ; $7532: $3d
	ld l, h                                          ; $7533: $6c
	dec a                                            ; $7534: $3d
	jr c, jr_08c_757f                                ; $7535: $38 $48

	and b                                            ; $7537: $a0
	ldh a, [hDisp0_BGP]                                     ; $7538: $f0 $85
	ld c, l                                          ; $753a: $4d
	pop af                                           ; $753b: $f1
	ld h, l                                          ; $753c: $65
	ld b, a                                          ; $753d: $47
	ld h, h                                          ; $753e: $64
	ldh a, [$c8]                                     ; $753f: $f0 $c8
	jr c, jr_08c_7594                                ; $7541: $38 $51

	ld c, [hl]                                       ; $7543: $4e
	inc de                                           ; $7544: $13

jr_08c_7545:
	add h                                            ; $7545: $84
	ld b, d                                          ; $7546: $42
	db $ed                                           ; $7547: $ed
	ld l, a                                          ; $7548: $6f
	ld h, c                                          ; $7549: $61
	ld d, e                                          ; $754a: $53
	xor h                                            ; $754b: $ac
	ldh a, [rTAC]                                    ; $754c: $f0 $07
	inc a                                            ; $754e: $3c
	ld c, [hl]                                       ; $754f: $4e
	ld a, a                                          ; $7550: $7f
	ld d, e                                          ; $7551: $53
	ld a, $52                                        ; $7552: $3e $52
	ld d, c                                          ; $7554: $51
	and b                                            ; $7555: $a0
	ld b, [hl]                                       ; $7556: $46
	ld c, l                                          ; $7557: $4d
	ld c, e                                          ; $7558: $4b
	ld l, e                                          ; $7559: $6b
	dec sp                                           ; $755a: $3b
	ccf                                              ; $755b: $3f
	jr c, jr_08c_7597                                ; $755c: $38 $39

	inc de                                           ; $755e: $13
	pop af                                           ; $755f: $f1
	ld h, l                                          ; $7560: $65
	ldh a, [$e7]                                     ; $7561: $f0 $e7
	ld c, d                                          ; $7563: $4a

jr_08c_7564:
	ld d, c                                          ; $7564: $51
	inc a                                            ; $7565: $3c
	and c                                            ; $7566: $a1
	cpl                                              ; $7567: $2f
	jp hl                                            ; $7568: $e9


	call nz, $f209                                   ; $7569: $c4 $09 $f2
	adc b                                            ; $756c: $88
	pop af                                           ; $756d: $f1
	call nz, $3442                                   ; $756e: $c4 $42 $34
	ldh a, [$0e]                                     ; $7571: $f0 $0e
	di                                               ; $7573: $f3
	rst SubAFromHL                                          ; $7574: $d7
	pop af                                           ; $7575: $f1
	ld h, l                                          ; $7576: $65
	ld b, d                                          ; $7577: $42
	inc de                                           ; $7578: $13
	pop af                                           ; $7579: $f1
	ld h, l                                          ; $757a: $65
	ldh a, [$e7]                                     ; $757b: $f0 $e7
	ld c, d                                          ; $757d: $4a
	ld d, c                                          ; $757e: $51

jr_08c_757f:
	ld c, h                                          ; $757f: $4c
	xor b                                            ; $7580: $a8
	ld b, [hl]                                       ; $7581: $46
	ld c, l                                          ; $7582: $4d
	ld d, e                                          ; $7583: $53
	ld [$4cbf], a                                    ; $7584: $ea $bf $4c
	ld c, b                                          ; $7587: $48
	and b                                            ; $7588: $a0
	pop af                                           ; $7589: $f1
	add d                                            ; $758a: $82
	inc a                                            ; $758b: $3c
	inc [hl]                                         ; $758c: $34
	ldh a, [$0e]                                     ; $758d: $f0 $0e
	di                                               ; $758f: $f3
	rst SubAFromHL                                          ; $7590: $d7
	pop af                                           ; $7591: $f1
	ld h, l                                          ; $7592: $65
	ld b, d                                          ; $7593: $42

jr_08c_7594:
	inc de                                           ; $7594: $13
	pop af                                           ; $7595: $f1
	ld h, l                                          ; $7596: $65

jr_08c_7597:
	ldh a, [$e7]                                     ; $7597: $f0 $e7
	ld c, d                                          ; $7599: $4a
	ld d, c                                          ; $759a: $51
	ld b, l                                          ; $759b: $45
	ld c, h                                          ; $759c: $4c
	xor b                                            ; $759d: $a8
	ld b, b                                          ; $759e: $40
	ld c, l                                          ; $759f: $4d
	ld a, [hl-]                                      ; $75a0: $3a
	ld d, b                                          ; $75a1: $50
	inc [hl]                                         ; $75a2: $34
	ldh a, [$2d]                                     ; $75a3: $f0 $2d
	dec sp                                           ; $75a5: $3b
	ccf                                              ; $75a6: $3f
	ld d, d                                          ; $75a7: $52
	ld d, c                                          ; $75a8: $51
	and b                                            ; $75a9: $a0
	ldh a, [c]                                       ; $75aa: $f2
	sub a                                            ; $75ab: $97
	ldh a, [$e7]                                     ; $75ac: $f0 $e7
	ld c, c                                          ; $75ae: $49
	add d                                            ; $75af: $82
	add hl, sp                                       ; $75b0: $39
	ld c, c                                          ; $75b1: $49
	xor h                                            ; $75b2: $ac
	ldh a, [$0e]                                     ; $75b3: $f0 $0e
	di                                               ; $75b5: $f3
	rst SubAFromHL                                          ; $75b6: $d7
	pop af                                           ; $75b7: $f1
	ld h, l                                          ; $75b8: $65
	ld c, d                                          ; $75b9: $4a
	ld d, c                                          ; $75ba: $51
	ld c, h                                          ; $75bb: $4c
	and b                                            ; $75bc: $a0
	cpl                                              ; $75bd: $2f
	add sp, $57                                      ; $75be: $e8 $57
	add hl, bc                                       ; $75c0: $09
	rst JumpTable                                          ; $75c1: $c7
	ld c, d                                          ; $75c2: $4a
	ld d, c                                          ; $75c3: $51
	inc a                                            ; $75c4: $3c
	xor c                                            ; $75c5: $a9
	ldh a, [rAUD4GO]                                 ; $75c6: $f0 $23
	ldh a, [c]                                       ; $75c8: $f2
	rrca                                             ; $75c9: $0f
	ldh a, [$e7]                                     ; $75ca: $f0 $e7
	ld a, [hl-]                                      ; $75cc: $3a
	ld d, b                                          ; $75cd: $50
	xor h                                            ; $75ce: $ac
	ld l, a                                          ; $75cf: $6f
	ld c, a                                          ; $75d0: $4f
	ldh a, [$2d]                                     ; $75d1: $f0 $2d
	dec sp                                           ; $75d3: $3b
	ccf                                              ; $75d4: $3f
	ld d, d                                          ; $75d5: $52
	ld d, c                                          ; $75d6: $51
	ld e, l                                          ; $75d7: $5d
	ld e, d                                          ; $75d8: $5a
	ld c, b                                          ; $75d9: $48
	and b                                            ; $75da: $a0
	cp [hl]                                          ; $75db: $be
	xor c                                            ; $75dc: $a9
	ldh a, [rAUD4GO]                                 ; $75dd: $f0 $23
	ldh a, [c]                                       ; $75df: $f2
	rrca                                             ; $75e0: $0f
	ldh a, [$e7]                                     ; $75e1: $f0 $e7
	ld c, e                                          ; $75e3: $4b
	ldh a, [$f5]                                     ; $75e4: $f0 $f5
	add hl, sp                                       ; $75e6: $39
	ld c, c                                          ; $75e7: $49
	inc de                                           ; $75e8: $13
	ld [hl], a                                       ; $75e9: $77
	jr c, jr_08c_763e                                ; $75ea: $38 $52

	ld d, c                                          ; $75ec: $51
	ld e, l                                          ; $75ed: $5d
	ld e, d                                          ; $75ee: $5a
	ld c, b                                          ; $75ef: $48
	and b                                            ; $75f0: $a0
	ldh a, [rAUD4GO]                                 ; $75f1: $f0 $23
	ldh a, [c]                                       ; $75f3: $f2
	rrca                                             ; $75f4: $0f
	ldh a, [$e7]                                     ; $75f5: $f0 $e7
	db $ec                                           ; $75f7: $ec
	ret c                                            ; $75f8: $d8

	ld c, c                                          ; $75f9: $49
	inc de                                           ; $75fa: $13
	ld [hl], a                                       ; $75fb: $77
	jr c, jr_08c_7650                                ; $75fc: $38 $52

	ld d, c                                          ; $75fe: $51
	ld e, l                                          ; $75ff: $5d
	ld e, d                                          ; $7600: $5a
	ld c, b                                          ; $7601: $48
	and b                                            ; $7602: $a0
	cpl                                              ; $7603: $2f
	add sp, $28                                      ; $7604: $e8 $28
	add hl, bc                                       ; $7606: $09
	rst JumpTable                                          ; $7607: $c7
	ld c, d                                          ; $7608: $4a
	ld d, c                                          ; $7609: $51
	ld c, h                                          ; $760a: $4c
	xor b                                            ; $760b: $a8
	db $ec                                           ; $760c: $ec
	dec b                                            ; $760d: $05
	ld b, c                                          ; $760e: $41
	ld c, d                                          ; $760f: $4a
	ld d, c                                          ; $7610: $51
	inc a                                            ; $7611: $3c
	ld c, b                                          ; $7612: $48
	and b                                            ; $7613: $a0
	or [hl]                                          ; $7614: $b6
	xor b                                            ; $7615: $a8
	db $ec                                           ; $7616: $ec
	dec b                                            ; $7617: $05
	ld a, [hl-]                                      ; $7618: $3a
	ld d, b                                          ; $7619: $50
	xor h                                            ; $761a: $ac
	db $eb                                           ; $761b: $eb
	inc [hl]                                         ; $761c: $34
	ld c, d                                          ; $761d: $4a
	ld d, c                                          ; $761e: $51
	ld c, h                                          ; $761f: $4c
	and b                                            ; $7620: $a0
	ld b, b                                          ; $7621: $40
	add hl, sp                                       ; $7622: $39
	ld c, d                                          ; $7623: $4a
	ld d, c                                          ; $7624: $51
	ld e, l                                          ; $7625: $5d
	ld e, d                                          ; $7626: $5a
	xor b                                            ; $7627: $a8
	db $ec                                           ; $7628: $ec
	dec b                                            ; $7629: $05
	ld b, c                                          ; $762a: $41
	ld c, d                                          ; $762b: $4a
	ld d, c                                          ; $762c: $51
	ld c, h                                          ; $762d: $4c
	and b                                            ; $762e: $a0
	cpl                                              ; $762f: $2f
	jp hl                                            ; $7630: $e9


	ld a, [hl-]                                      ; $7631: $3a
	and c                                            ; $7632: $a1
	ld b, b                                          ; $7633: $40
	ld c, l                                          ; $7634: $4d
	ld a, [hl-]                                      ; $7635: $3a
	ld d, b                                          ; $7636: $50
	db $eb                                           ; $7637: $eb
	add a                                            ; $7638: $87
	xor b                                            ; $7639: $a8
	ret                                              ; $763a: $c9


	ld a, a                                          ; $763b: $7f
	ld b, a                                          ; $763c: $47
	ld a, [hl-]                                      ; $763d: $3a

jr_08c_763e:
	dec sp                                           ; $763e: $3b
	dec a                                            ; $763f: $3d
	inc de                                           ; $7640: $13
	ld b, h                                          ; $7641: $44
	ld e, l                                          ; $7642: $5d
	ld c, d                                          ; $7643: $4a
	ld d, c                                          ; $7644: $51
	inc a                                            ; $7645: $3c
	ld d, b                                          ; $7646: $50
	ld c, b                                          ; $7647: $48
	and b                                            ; $7648: $a0
	ld b, b                                          ; $7649: $40
	ld c, l                                          ; $764a: $4d
	ld a, [hl-]                                      ; $764b: $3a
	ld d, b                                          ; $764c: $50
	db $eb                                           ; $764d: $eb
	add a                                            ; $764e: $87
	xor b                                            ; $764f: $a8

jr_08c_7650:
	ldh a, [$60]                                     ; $7650: $f0 $60
	ld e, c                                          ; $7652: $59
	add c                                            ; $7653: $81
	ld c, d                                          ; $7654: $4a
	pop af                                           ; $7655: $f1
	dec c                                            ; $7656: $0d
	ldh a, [$79]                                     ; $7657: $f0 $79
	ld a, $3f                                        ; $7659: $3e $3f
	ld d, l                                          ; $765b: $55
	ld c, l                                          ; $765c: $4d
	ld c, [hl]                                       ; $765d: $4e
	ld c, c                                          ; $765e: $49
	inc de                                           ; $765f: $13
	ld [hl], a                                       ; $7660: $77
	jr c, jr_08c_76b5                                ; $7661: $38 $52

	ld d, c                                          ; $7663: $51
	inc a                                            ; $7664: $3c
	ld d, b                                          ; $7665: $50
	and b                                            ; $7666: $a0
	ld b, b                                          ; $7667: $40
	ld c, l                                          ; $7668: $4d
	ld a, [hl-]                                      ; $7669: $3a
	ld d, b                                          ; $766a: $50
	db $eb                                           ; $766b: $eb
	add a                                            ; $766c: $87
	and b                                            ; $766d: $a0
	ldh a, [$57]                                     ; $766e: $f0 $57
	ldh a, [$ae]                                     ; $7670: $f0 $ae
	ld a, [hl-]                                      ; $7672: $3a
	ldh a, [$3f]                                     ; $7673: $f0 $3f
	ld d, e                                          ; $7675: $53
	inc de                                           ; $7676: $13
	adc $46                                          ; $7677: $ce $46
	ld d, a                                          ; $7679: $57
	ld d, d                                          ; $767a: $52
	ld d, c                                          ; $767b: $51
	ld c, h                                          ; $767c: $4c
	and b                                            ; $767d: $a0
	cpl                                              ; $767e: $2f
	add sp, $38                                      ; $767f: $e8 $38
	and c                                            ; $7681: $a1
	or [hl]                                          ; $7682: $b6
	xor b                                            ; $7683: $a8
	ld l, a                                          ; $7684: $6f
	ld c, a                                          ; $7685: $4f
	ldh a, [$57]                                     ; $7686: $f0 $57
	ldh a, [$ae]                                     ; $7688: $f0 $ae
	ld b, h                                          ; $768a: $44
	ld c, c                                          ; $768b: $49
	ld [hl], a                                       ; $768c: $77
	jr c, jr_08c_76e1                                ; $768d: $38 $52

	ld d, c                                          ; $768f: $51
	and b                                            ; $7690: $a0
	ldh a, [$57]                                     ; $7691: $f0 $57
	ldh a, [$ae]                                     ; $7693: $f0 $ae
	ld c, d                                          ; $7695: $4a
	ld d, c                                          ; $7696: $51
	ld c, h                                          ; $7697: $4c
	xor b                                            ; $7698: $a8
	ld [hl], d                                       ; $7699: $72
	ld c, c                                          ; $769a: $49
	ld c, l                                          ; $769b: $4d
	ccf                                              ; $769c: $3f
	ld a, $52                                        ; $769d: $3e $52
	jr c, jr_08c_76f3                                ; $769f: $38 $52

	ld d, c                                          ; $76a1: $51
	ld c, h                                          ; $76a2: $4c
	and b                                            ; $76a3: $a0
	ldh a, [$57]                                     ; $76a4: $f0 $57
	ldh a, [$ae]                                     ; $76a6: $f0 $ae
	ld a, [hl-]                                      ; $76a8: $3a
	ldh a, [$3f]                                     ; $76a9: $f0 $3f
	ld c, d                                          ; $76ab: $4a
	ld d, c                                          ; $76ac: $51
	ld c, h                                          ; $76ad: $4c
	and b                                            ; $76ae: $a0
	cpl                                              ; $76af: $2f
	jp hl                                            ; $76b0: $e9


	ld c, a                                          ; $76b1: $4f
	ld c, b                                          ; $76b2: $48
	add hl, bc                                       ; $76b3: $09
	pop af                                           ; $76b4: $f1

jr_08c_76b5:
	ld l, a                                          ; $76b5: $6f
	ld b, d                                          ; $76b6: $42
	add h                                            ; $76b7: $84
	ld h, d                                          ; $76b8: $62
	ld [hl], d                                       ; $76b9: $72
	ld c, [hl]                                       ; $76ba: $4e
	ld b, d                                          ; $76bb: $42
	ld c, e                                          ; $76bc: $4b
	inc de                                           ; $76bd: $13
	ldh a, [$64]                                     ; $76be: $f0 $64
	ld c, d                                          ; $76c0: $4a
	ld d, c                                          ; $76c1: $51
	ld c, b                                          ; $76c2: $48
	and b                                            ; $76c3: $a0
	ldh a, [$3f]                                     ; $76c4: $f0 $3f
	ld h, d                                          ; $76c6: $62
	ld [hl], d                                       ; $76c7: $72
	ld b, a                                          ; $76c8: $47
	ld a, b                                          ; $76c9: $78
	dec a                                            ; $76ca: $3d
	ld b, c                                          ; $76cb: $41
	ld e, e                                          ; $76cc: $5b
	ld d, [hl]                                       ; $76cd: $56
	inc de                                           ; $76ce: $13
	ld a, [hl-]                                      ; $76cf: $3a
	jr c, jr_08c_7713                                ; $76d0: $38 $41

	ld c, d                                          ; $76d2: $4a
	ld d, c                                          ; $76d3: $51
	inc a                                            ; $76d4: $3c
	and c                                            ; $76d5: $a1
	ld l, e                                          ; $76d6: $6b
	ld h, d                                          ; $76d7: $62
	ld [hl], d                                       ; $76d8: $72
	ld b, a                                          ; $76d9: $47
	ld a, b                                          ; $76da: $78
	dec a                                            ; $76db: $3d
	ld b, c                                          ; $76dc: $41
	ld c, d                                          ; $76dd: $4a
	ld d, c                                          ; $76de: $51
	inc a                                            ; $76df: $3c
	and c                                            ; $76e0: $a1

jr_08c_76e1:
	cpl                                              ; $76e1: $2f
	ld d, h                                          ; $76e2: $54
	ld b, d                                          ; $76e3: $42
	ldh a, [$3f]                                     ; $76e4: $f0 $3f
	inc [hl]                                         ; $76e6: $34
	db $ec                                           ; $76e7: $ec
	rst SubAFromDE                                          ; $76e8: $df
	ld b, a                                          ; $76e9: $47
	ldh a, [rPCM12]                                  ; $76ea: $f0 $76
	ccf                                              ; $76ec: $3f
	ld c, [hl]                                       ; $76ed: $4e
	ld c, h                                          ; $76ee: $4c
	add hl, bc                                       ; $76ef: $09
	ld b, b                                          ; $76f0: $40
	add hl, sp                                       ; $76f1: $39
	ld c, e                                          ; $76f2: $4b

jr_08c_76f3:
	ld [hl], a                                       ; $76f3: $77
	ld e, [hl]                                       ; $76f4: $5e
	ld d, d                                          ; $76f5: $52
	ld a, c                                          ; $76f6: $79
	ld b, c                                          ; $76f7: $41
	ld e, l                                          ; $76f8: $5d
	ld e, d                                          ; $76f9: $5a
	ld c, b                                          ; $76fa: $48
	xor h                                            ; $76fb: $ac
	ld c, d                                          ; $76fc: $4a
	ld c, a                                          ; $76fd: $4f
	inc [hl]                                         ; $76fe: $34
	ldh a, [$29]                                     ; $76ff: $f0 $29
	ld a, $38                                        ; $7701: $3e $38
	ld c, d                                          ; $7703: $4a
	ld d, c                                          ; $7704: $51
	ld c, b                                          ; $7705: $48
	and b                                            ; $7706: $a0
	cp [hl]                                          ; $7707: $be
	xor c                                            ; $7708: $a9
	ld d, h                                          ; $7709: $54
	ld b, c                                          ; $770a: $41
	ld a, [hl-]                                      ; $770b: $3a
	ld b, a                                          ; $770c: $47
	db $ed                                           ; $770d: $ed
	ld c, c                                          ; $770e: $49
	db $ec                                           ; $770f: $ec
	ret c                                            ; $7710: $d8

	ld c, c                                          ; $7711: $49
	inc de                                           ; $7712: $13

jr_08c_7713:
	ld [hl], a                                       ; $7713: $77
	jr c, jr_08c_7768                                ; $7714: $38 $52

	ld d, c                                          ; $7716: $51
	ld e, l                                          ; $7717: $5d
	ld e, d                                          ; $7718: $5a
	ld c, b                                          ; $7719: $48
	and b                                            ; $771a: $a0
	cp [hl]                                          ; $771b: $be
	xor c                                            ; $771c: $a9
	ld d, h                                          ; $771d: $54
	ld b, c                                          ; $771e: $41
	ld a, [hl-]                                      ; $771f: $3a
	ld b, a                                          ; $7720: $47
	db $ec                                           ; $7721: $ec
	inc de                                           ; $7722: $13
	ld d, b                                          ; $7723: $50
	inc de                                           ; $7724: $13
	db $eb                                           ; $7725: $eb
	add a                                            ; $7726: $87
	ld e, l                                          ; $7727: $5d
	ld e, d                                          ; $7728: $5a
	ld c, b                                          ; $7729: $48
	and b                                            ; $772a: $a0
	db $eb                                           ; $772b: $eb
	ld d, h                                          ; $772c: $54
	ldh a, [$3f]                                     ; $772d: $f0 $3f
	ld c, d                                          ; $772f: $4a
	ld d, c                                          ; $7730: $51
	ld c, h                                          ; $7731: $4c
	xor b                                            ; $7732: $a8
	db $eb                                           ; $7733: $eb
	ld h, a                                          ; $7734: $67
	inc [hl]                                         ; $7735: $34
	ld d, h                                          ; $7736: $54
	ld b, c                                          ; $7737: $41
	ld a, [hl-]                                      ; $7738: $3a
	ldh a, [$3f]                                     ; $7739: $f0 $3f
	ld d, e                                          ; $773b: $53
	inc de                                           ; $773c: $13
	ldh a, [$bd]                                     ; $773d: $f0 $bd
	ld e, l                                          ; $773f: $5d
	ld c, [hl]                                       ; $7740: $4e
	ld b, c                                          ; $7741: $41
	ld c, d                                          ; $7742: $4a
	ld a, $66                                        ; $7743: $3e $66
	add hl, sp                                       ; $7745: $39
	ld c, h                                          ; $7746: $4c
	and c                                            ; $7747: $a1
	cpl                                              ; $7748: $2f
	add sp, -$68                                     ; $7749: $e8 $98
	add hl, bc                                       ; $774b: $09
	or [hl]                                          ; $774c: $b6
	xor b                                            ; $774d: $a8
	ld l, a                                          ; $774e: $6f
	ld c, a                                          ; $774f: $4f
	ld b, b                                          ; $7750: $40
	add hl, sp                                       ; $7751: $39
	ld [hl], a                                       ; $7752: $77
	jr c, jr_08c_77a7                                ; $7753: $38 $52

	ld d, c                                          ; $7755: $51
	xor b                                            ; $7756: $a8
	ldh a, [$3f]                                     ; $7757: $f0 $3f
	ld c, e                                          ; $7759: $4b
	inc [hl]                                         ; $775a: $34
	pop af                                           ; $775b: $f1
	and e                                            ; $775c: $a3
	pop af                                           ; $775d: $f1
	ld [hl], d                                       ; $775e: $72
	ld c, d                                          ; $775f: $4a
	ld d, c                                          ; $7760: $51
	ld c, h                                          ; $7761: $4c
	and b                                            ; $7762: $a0
	db $ec                                           ; $7763: $ec
	reti                                             ; $7764: $d9


	inc [hl]                                         ; $7765: $34
	ld b, b                                          ; $7766: $40
	add hl, sp                                       ; $7767: $39

jr_08c_7768:
	ld c, d                                          ; $7768: $4a
	ld d, c                                          ; $7769: $51
	ld b, l                                          ; $776a: $45
	ld c, h                                          ; $776b: $4c
	xor b                                            ; $776c: $a8
	ld l, a                                          ; $776d: $6f
	ld c, a                                          ; $776e: $4f
	inc [hl]                                         ; $776f: $34
	jr c, jr_08c_77c7                                ; $7770: $38 $55

	ld d, b                                          ; $7772: $50
	sub d                                            ; $7773: $92
	adc [hl]                                         ; $7774: $8e
	dec sp                                           ; $7775: $3b
	ccf                                              ; $7776: $3f
	ld c, a                                          ; $7777: $4f
	inc de                                           ; $7778: $13
	ldh a, [rAUD1LOW]                                ; $7779: $f0 $13
	ldh a, [$63]                                     ; $777b: $f0 $63
	ld b, h                                          ; $777d: $44
	ld c, c                                          ; $777e: $49
	ld [hl], a                                       ; $777f: $77
	jr c, jr_08c_77d4                                ; $7780: $38 $52

	ld d, c                                          ; $7782: $51
	inc a                                            ; $7783: $3c
	ld d, b                                          ; $7784: $50
	ld c, b                                          ; $7785: $48
	and b                                            ; $7786: $a0
	db $ec                                           ; $7787: $ec
	reti                                             ; $7788: $d9


	inc [hl]                                         ; $7789: $34
	ld b, b                                          ; $778a: $40
	add hl, sp                                       ; $778b: $39
	ld c, d                                          ; $778c: $4a
	ld d, c                                          ; $778d: $51
	ld b, l                                          ; $778e: $45
	ld c, h                                          ; $778f: $4c
	and b                                            ; $7790: $a0
	cpl                                              ; $7791: $2f
	add sp, $54                                      ; $7792: $e8 $54
	and c                                            ; $7794: $a1
	ld l, a                                          ; $7795: $6f
	ld b, a                                          ; $7796: $47
	ld c, e                                          ; $7797: $4b
	inc de                                           ; $7798: $13
	ldh a, [$bd]                                     ; $7799: $f0 $bd
	ld e, l                                          ; $779b: $5d
	ld d, d                                          ; $779c: $52
	ld a, c                                          ; $779d: $79
	ld b, c                                          ; $779e: $41
	inc a                                            ; $779f: $3c
	ld d, b                                          ; $77a0: $50
	ld c, b                                          ; $77a1: $48
	and b                                            ; $77a2: $a0
	ldh a, [rHDMA4]                                  ; $77a3: $f0 $54
	ld a, [hl-]                                      ; $77a5: $3a
	ld d, l                                          ; $77a6: $55

jr_08c_77a7:
	ld c, c                                          ; $77a7: $49
	ld c, a                                          ; $77a8: $4f
	xor h                                            ; $77a9: $ac
	ld l, a                                          ; $77aa: $6f
	ld b, a                                          ; $77ab: $47
	ld c, e                                          ; $77ac: $4b
	ldh a, [$bd]                                     ; $77ad: $f0 $bd
	ld e, l                                          ; $77af: $5d
	ld d, d                                          ; $77b0: $52
	ld a, c                                          ; $77b1: $79
	ld b, c                                          ; $77b2: $41
	ld e, l                                          ; $77b3: $5d
	ld e, d                                          ; $77b4: $5a
	ld c, b                                          ; $77b5: $48
	and b                                            ; $77b6: $a0
	ld b, b                                          ; $77b7: $40
	ld b, c                                          ; $77b8: $41
	ld a, [hl-]                                      ; $77b9: $3a
	ld h, e                                          ; $77ba: $63
	ld e, l                                          ; $77bb: $5d
	ld c, e                                          ; $77bc: $4b
	xor h                                            ; $77bd: $ac
	ld a, [hl-]                                      ; $77be: $3a
	jr c, jr_08c_780a                                ; $77bf: $38 $49

	ld [hl], a                                       ; $77c1: $77
	jr c, @+$54                                      ; $77c2: $38 $52

	ld d, c                                          ; $77c4: $51
	and b                                            ; $77c5: $a0
	cpl                                              ; $77c6: $2f

jr_08c_77c7:
	jp hl                                            ; $77c7: $e9


	push bc                                          ; $77c8: $c5
	add hl, bc                                       ; $77c9: $09
	or [hl]                                          ; $77ca: $b6
	xor b                                            ; $77cb: $a8
	ld l, e                                          ; $77cc: $6b
	sbc d                                            ; $77cd: $9a
	ld c, a                                          ; $77ce: $4f
	ldh a, [$5f]                                     ; $77cf: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $77d1: $f0 $94
	inc a                                            ; $77d3: $3c

jr_08c_77d4:
	ld d, b                                          ; $77d4: $50
	xor h                                            ; $77d5: $ac
	ldh a, [$e1]                                     ; $77d6: $f0 $e1
	ldh a, [rSB]                                     ; $77d8: $f0 $01
	ld a, [$5b5b]                                    ; $77da: $fa $5b $5b
	ld d, [hl]                                       ; $77dd: $56
	jr c, jr_08c_783d                                ; $77de: $38 $5d

	ld d, d                                          ; $77e0: $52
	ld a, c                                          ; $77e1: $79
	ld b, c                                          ; $77e2: $41
	ld c, h                                          ; $77e3: $4c
	and b                                            ; $77e4: $a0
	xor $19                                          ; $77e5: $ee $19
	ld b, h                                          ; $77e7: $44
	ld e, l                                          ; $77e8: $5d
	ld c, d                                          ; $77e9: $4a
	xor h                                            ; $77ea: $ac
	ld l, e                                          ; $77eb: $6b
	ld c, c                                          ; $77ec: $49
	inc a                                            ; $77ed: $3c
	ld a, [hl-]                                      ; $77ee: $3a
	ld c, [hl]                                       ; $77ef: $4e
	ld a, [hl-]                                      ; $77f0: $3a
	ld d, b                                          ; $77f1: $50
	xor h                                            ; $77f2: $ac
	jr c, jr_08c_782d                                ; $77f3: $38 $38

	ld c, d                                          ; $77f5: $4a
	ld d, c                                          ; $77f6: $51
	ld e, l                                          ; $77f7: $5d
	ld e, d                                          ; $77f8: $5a
	ld c, b                                          ; $77f9: $48
	and b                                            ; $77fa: $a0
	ld b, b                                          ; $77fb: $40
	ld c, l                                          ; $77fc: $4d
	ld a, [hl-]                                      ; $77fd: $3a
	ld d, b                                          ; $77fe: $50
	inc [hl]                                         ; $77ff: $34
	sub d                                            ; $7800: $92
	adc [hl]                                         ; $7801: $8e
	ld c, l                                          ; $7802: $4d
	ld a, e                                          ; $7803: $7b
	inc de                                           ; $7804: $13
	ld l, e                                          ; $7805: $6b
	ld c, c                                          ; $7806: $49
	inc a                                            ; $7807: $3c
	ld a, [hl-]                                      ; $7808: $3a
	ld d, a                                          ; $7809: $57

jr_08c_780a:
	ld d, d                                          ; $780a: $52
	ld d, c                                          ; $780b: $51
	inc a                                            ; $780c: $3c
	ld c, h                                          ; $780d: $4c
	and b                                            ; $780e: $a0
	ld l, a                                          ; $780f: $6f
	inc [hl]                                         ; $7810: $34
	ld d, h                                          ; $7811: $54
	add hl, sp                                       ; $7812: $39
	jr c, jr_08c_784e                                ; $7813: $38 $39

	ldh a, [$3f]                                     ; $7815: $f0 $3f
	ld c, e                                          ; $7817: $4b
	xor h                                            ; $7818: $ac
	ret                                              ; $7819: $c9


	ld c, b                                          ; $781a: $48
	and b                                            ; $781b: $a0
	cpl                                              ; $781c: $2f
	add sp, $5a                                      ; $781d: $e8 $5a
	add hl, bc                                       ; $781f: $09
	db $eb                                           ; $7820: $eb
	ld d, a                                          ; $7821: $57
	xor b                                            ; $7822: $a8
	ld d, h                                          ; $7823: $54
	add hl, sp                                       ; $7824: $39
	jr c, jr_08c_7860                                ; $7825: $38 $39

	db $ec                                           ; $7827: $ec
	cp $4b                                           ; $7828: $fe $4b
	xor h                                            ; $782a: $ac
	ldh a, [c]                                       ; $782b: $f2
	ld a, c                                          ; $782c: $79

jr_08c_782d:
	inc a                                            ; $782d: $3c
	ld d, b                                          ; $782e: $50
	db $ed                                           ; $782f: $ed
	ld l, b                                          ; $7830: $68
	ld c, d                                          ; $7831: $4a
	ld c, b                                          ; $7832: $48
	and b                                            ; $7833: $a0
	db $eb                                           ; $7834: $eb
	ld d, a                                          ; $7835: $57
	xor b                                            ; $7836: $a8
	ld a, a                                          ; $7837: $7f
	ld h, d                                          ; $7838: $62
	pop af                                           ; $7839: $f1
	sbc l                                            ; $783a: $9d
	dec sp                                           ; $783b: $3b
	ccf                                              ; $783c: $3f

jr_08c_783d:
	jr c, jr_08c_787c                                ; $783d: $38 $3d

	ld b, h                                          ; $783f: $44
	jr c, @+$41                                      ; $7840: $38 $3f

	ld c, b                                          ; $7842: $48
	and b                                            ; $7843: $a0
	db $eb                                           ; $7844: $eb
	add a                                            ; $7845: $87
	ld e, l                                          ; $7846: $5d
	ld e, d                                          ; $7847: $5a
	xor l                                            ; $7848: $ad
	ret                                              ; $7849: $c9


	ldh a, [hDisp1_LCDC]                                     ; $784a: $f0 $8f
	ld d, d                                          ; $784c: $52
	ld a, c                                          ; $784d: $79

jr_08c_784e:
	ccf                                              ; $784e: $3f
	xor h                                            ; $784f: $ac
	ld c, a                                          ; $7850: $4f
	ld d, b                                          ; $7851: $50
	ld e, [hl]                                       ; $7852: $5e
	ld d, d                                          ; $7853: $52
	ld d, c                                          ; $7854: $51
	inc a                                            ; $7855: $3c
	and c                                            ; $7856: $a1
	cpl                                              ; $7857: $2f
	ld [$0961], a                                    ; $7858: $ea $61 $09
	ld d, h                                          ; $785b: $54
	add hl, sp                                       ; $785c: $39
	jr c, jr_08c_7898                                ; $785d: $38 $39

	db $ec                                           ; $785f: $ec

jr_08c_7860:
	cp $4b                                           ; $7860: $fe $4b
	xor h                                            ; $7862: $ac
	ldh a, [c]                                       ; $7863: $f2
	ld a, c                                          ; $7864: $79
	inc a                                            ; $7865: $3c
	ld d, b                                          ; $7866: $50
	db $ed                                           ; $7867: $ed
	ld l, b                                          ; $7868: $68
	ld a, [hl-]                                      ; $7869: $3a
	ld b, d                                          ; $786a: $42
	ld c, d                                          ; $786b: $4a
	ld c, b                                          ; $786c: $48
	and b                                            ; $786d: $a0
	ld l, a                                          ; $786e: $6f
	ld c, e                                          ; $786f: $4b
	db $ec                                           ; $7870: $ec
	cp $53                                           ; $7871: $fe $53
	inc de                                           ; $7873: $13
	xor $05                                          ; $7874: $ee $05
	ld a, [hl-]                                      ; $7876: $3a
	ld b, c                                          ; $7877: $41
	ld c, d                                          ; $7878: $4a
	ld d, c                                          ; $7879: $51
	ld c, b                                          ; $787a: $48
	and b                                            ; $787b: $a0

jr_08c_787c:
	ld c, a                                          ; $787c: $4f
	dec sp                                           ; $787d: $3b
	ld c, c                                          ; $787e: $49
	inc [hl]                                         ; $787f: $34
	ldh a, [$34]                                     ; $7880: $f0 $34
	ld a, [hl-]                                      ; $7882: $3a
	ldh a, [$3f]                                     ; $7883: $f0 $3f
	ld a, [hl-]                                      ; $7885: $3a
	ld d, b                                          ; $7886: $50
	xor h                                            ; $7887: $ac
	db $eb                                           ; $7888: $eb
	add a                                            ; $7889: $87
	ld e, l                                          ; $788a: $5d
	ld e, d                                          ; $788b: $5a
	ld c, b                                          ; $788c: $48
	and b                                            ; $788d: $a0
	cpl                                              ; $788e: $2f
	add sp, $5b                                      ; $788f: $e8 $5b
	ld c, b                                          ; $7891: $48
	add hl, bc                                       ; $7892: $09
	ldh a, [c]                                       ; $7893: $f2
	ld a, c                                          ; $7894: $79
	inc a                                            ; $7895: $3c
	ld d, b                                          ; $7896: $50
	xor h                                            ; $7897: $ac

jr_08c_7898:
	ld d, h                                          ; $7898: $54
	add hl, sp                                       ; $7899: $39
	jr c, jr_08c_78d5                                ; $789a: $38 $39

	db $ec                                           ; $789c: $ec
	cp $47                                           ; $789d: $fe $47
	inc de                                           ; $789f: $13
	ldh a, [c]                                       ; $78a0: $f2
	ld e, c                                          ; $78a1: $59
	jr c, jr_08c_78e5                                ; $78a2: $38 $41

	ld c, d                                          ; $78a4: $4a
	ld d, c                                          ; $78a5: $51
	ld c, b                                          ; $78a6: $48
	and b                                            ; $78a7: $a0
	db $eb                                           ; $78a8: $eb
	ld d, a                                          ; $78a9: $57
	xor b                                            ; $78aa: $a8
	ld l, a                                          ; $78ab: $6f
	ld b, d                                          ; $78ac: $42
	adc e                                            ; $78ad: $8b
	ld l, h                                          ; $78ae: $6c
	ld b, a                                          ; $78af: $47
	ld c, e                                          ; $78b0: $4b
	xor h                                            ; $78b1: $ac
	ret                                              ; $78b2: $c9


	ld c, b                                          ; $78b3: $48
	and b                                            ; $78b4: $a0
	db $eb                                           ; $78b5: $eb
	ld d, a                                          ; $78b6: $57
	ld c, b                                          ; $78b7: $48
	and b                                            ; $78b8: $a0
	ld d, h                                          ; $78b9: $54
	ld b, d                                          ; $78ba: $42
	db $eb                                           ; $78bb: $eb
	cp d                                             ; $78bc: $ba
	xor b                                            ; $78bd: $a8
	ld l, d                                          ; $78be: $6a
	ld b, a                                          ; $78bf: $47
	ld c, a                                          ; $78c0: $4f
	xor h                                            ; $78c1: $ac
	ldh a, [rOBP0]                                   ; $78c2: $f0 $48
	ld e, h                                          ; $78c4: $5c
	ld b, h                                          ; $78c5: $44
	ld a, $b6                                        ; $78c6: $3e $b6
	and c                                            ; $78c8: $a1
	cpl                                              ; $78c9: $2f
	add sp, $5c                                      ; $78ca: $e8 $5c
	add hl, bc                                       ; $78cc: $09
	ld b, b                                          ; $78cd: $40
	add hl, sp                                       ; $78ce: $39
	ld [hl], a                                       ; $78cf: $77
	dec sp                                           ; $78d0: $3b
	ccf                                              ; $78d1: $3f
	ld d, l                                          ; $78d2: $55
	ld c, l                                          ; $78d3: $4d
	ccf                                              ; $78d4: $3f

jr_08c_78d5:
	xor h                                            ; $78d5: $ac
	db $ec                                           ; $78d6: $ec
	cp c                                             ; $78d7: $b9
	ld c, b                                          ; $78d8: $48
	and b                                            ; $78d9: $a0
	db $eb                                           ; $78da: $eb
	ld d, h                                          ; $78db: $54
	ldh a, [$a5]                                     ; $78dc: $f0 $a5
	ldh a, [c]                                       ; $78de: $f2
	ld a, [bc]                                       ; $78df: $0a
	inc de                                           ; $78e0: $13
	ld c, d                                          ; $78e1: $4a
	ld d, c                                          ; $78e2: $51
	ld c, h                                          ; $78e3: $4c
	ld c, b                                          ; $78e4: $48

jr_08c_78e5:
	and b                                            ; $78e5: $a0
	cpl                                              ; $78e6: $2f
	jp hl                                            ; $78e7: $e9


	ld e, b                                          ; $78e8: $58
	and c                                            ; $78e9: $a1
	ld b, b                                          ; $78ea: $40
	add hl, sp                                       ; $78eb: $39
	jr c, jr_08c_7927                                ; $78ec: $38 $39

	db $ec                                           ; $78ee: $ec
	or $ac                                           ; $78ef: $f6 $ac
	db $ed                                           ; $78f1: $ed
	ld a, a                                          ; $78f2: $7f
	ld b, [hl]                                       ; $78f3: $46
	ld c, [hl]                                       ; $78f4: $4e
	ld b, c                                          ; $78f5: $41
	ld c, d                                          ; $78f6: $4a
	ld d, c                                          ; $78f7: $51
	inc a                                            ; $78f8: $3c
	and c                                            ; $78f9: $a1
	db $ec                                           ; $78fa: $ec
	ld e, c                                          ; $78fb: $59
	ld b, h                                          ; $78fc: $44
	ld c, c                                          ; $78fd: $49
	xor h                                            ; $78fe: $ac
	jr c, @+$3a                                      ; $78ff: $38 $38

	ldh a, [$a5]                                     ; $7901: $f0 $a5
	ldh a, [c]                                       ; $7903: $f2
	ld a, [bc]                                       ; $7904: $0a
	ld e, e                                          ; $7905: $5b
	ld d, [hl]                                       ; $7906: $56
	inc de                                           ; $7907: $13
	ld a, [hl-]                                      ; $7908: $3a
	jr c, jr_08c_794c                                ; $7909: $38 $41

	ld c, d                                          ; $790b: $4a
	ld d, c                                          ; $790c: $51
	inc a                                            ; $790d: $3c
	and c                                            ; $790e: $a1
	db $ed                                           ; $790f: $ed
	ld a, a                                          ; $7910: $7f
	ld b, [hl]                                       ; $7911: $46
	ld c, [hl]                                       ; $7912: $4e
	ld c, c                                          ; $7913: $49
	ld c, e                                          ; $7914: $4b
	xor h                                            ; $7915: $ac
	ld [hl], a                                       ; $7916: $77
	ld e, [hl]                                       ; $7917: $5e
	ld a, [hl-]                                      ; $7918: $3a
	jr c, jr_08c_795c                                ; $7919: $38 $41

	ld c, d                                          ; $791b: $4a
	ld d, c                                          ; $791c: $51
	ld e, l                                          ; $791d: $5d
	ld e, d                                          ; $791e: $5a
	ld c, b                                          ; $791f: $48
	and b                                            ; $7920: $a0
	cpl                                              ; $7921: $2f
	add sp, -$67                                     ; $7922: $e8 $99
	add hl, bc                                       ; $7924: $09
	ldh a, [c]                                       ; $7925: $f2
	ld d, c                                          ; $7926: $51

jr_08c_7927:
	ld b, d                                          ; $7927: $42
	ldh a, [$a5]                                     ; $7928: $f0 $a5
	ldh a, [c]                                       ; $792a: $f2
	ld a, [bc]                                       ; $792b: $0a
	ld c, a                                          ; $792c: $4f
	xor h                                            ; $792d: $ac
	jr c, jr_08c_7968                                ; $792e: $38 $38

	ld c, c                                          ; $7930: $49
	ld [hl], a                                       ; $7931: $77
	jr c, jr_08c_7986                                ; $7932: $38 $52

	ld d, c                                          ; $7934: $51
	and b                                            ; $7935: $a0
	or [hl]                                          ; $7936: $b6
	xor b                                            ; $7937: $a8
	jr c, jr_08c_7972                                ; $7938: $38 $38

	ldh a, [$a5]                                     ; $793a: $f0 $a5
	ldh a, [c]                                       ; $793c: $f2
	ld a, [bc]                                       ; $793d: $0a
	ld c, d                                          ; $793e: $4a
	ld d, c                                          ; $793f: $51
	ld c, h                                          ; $7940: $4c
	and b                                            ; $7941: $a0
	or [hl]                                          ; $7942: $b6
	xor b                                            ; $7943: $a8
	ld a, [hl]                                       ; $7944: $7e
	jr c, jr_08c_7990                                ; $7945: $38 $49

	ld [hl], a                                       ; $7947: $77
	jr c, jr_08c_799c                                ; $7948: $38 $52

	ld d, c                                          ; $794a: $51
	ld b, l                                          ; $794b: $45

jr_08c_794c:
	and b                                            ; $794c: $a0
	ld d, h                                          ; $794d: $54
	ld b, d                                          ; $794e: $42
	add h                                            ; $794f: $84
	ld b, d                                          ; $7950: $42
	ldh a, [$3f]                                     ; $7951: $f0 $3f
	dec sp                                           ; $7953: $3b
	ccf                                              ; $7954: $3f
	xor h                                            ; $7955: $ac
	ld [hl], d                                       ; $7956: $72
	ld c, [hl]                                       ; $7957: $4e
	add h                                            ; $7958: $84
	ld h, d                                          ; $7959: $62
	inc de                                           ; $795a: $13
	pop af                                           ; $795b: $f1

jr_08c_795c:
	ld e, a                                          ; $795c: $5f
	ld e, h                                          ; $795d: $5c
	ldh a, [$9a]                                     ; $795e: $f0 $9a
	ld e, l                                          ; $7960: $5d
	ld d, d                                          ; $7961: $52
	ld d, c                                          ; $7962: $51
	ld c, h                                          ; $7963: $4c
	ld c, b                                          ; $7964: $48
	and b                                            ; $7965: $a0
	cpl                                              ; $7966: $2f
	halt                                             ; $7967: $76

jr_08c_7968:
	inc [hl]                                         ; $7968: $34
	ldh a, [$8e]                                     ; $7969: $f0 $8e
	pop af                                           ; $796b: $f1
	ld c, l                                          ; $796c: $4d
	ld h, l                                          ; $796d: $65
	ld a, [hl-]                                      ; $796e: $3a
	ld b, c                                          ; $796f: $41
	ld b, h                                          ; $7970: $44
	ld b, l                                          ; $7971: $45

jr_08c_7972:
	add hl, bc                                       ; $7972: $09
	adc b                                            ; $7973: $88
	sub c                                            ; $7974: $91
	ld c, d                                          ; $7975: $4a
	ld d, c                                          ; $7976: $51
	inc a                                            ; $7977: $3c
	xor c                                            ; $7978: $a9
	db $ec                                           ; $7979: $ec
	cp c                                             ; $797a: $b9
	xor l                                            ; $797b: $ad
	ld l, a                                          ; $797c: $6f
	ld c, a                                          ; $797d: $4f
	add a                                            ; $797e: $87
	adc e                                            ; $797f: $8b
	ld e, h                                          ; $7980: $5c
	ld a, [hl-]                                      ; $7981: $3a
	ld b, c                                          ; $7982: $41
	ld c, d                                          ; $7983: $4a
	ld d, c                                          ; $7984: $51
	and b                                            ; $7985: $a0

jr_08c_7986:
	ld [$a91e], a                                    ; $7986: $ea $1e $a9
	ld l, a                                          ; $7989: $6f
	ld c, a                                          ; $798a: $4f
	add a                                            ; $798b: $87
	adc e                                            ; $798c: $8b
	ld e, h                                          ; $798d: $5c
	ld a, [hl-]                                      ; $798e: $3a
	ld b, c                                          ; $798f: $41

jr_08c_7990:
	ld c, d                                          ; $7990: $4a
	ld d, c                                          ; $7991: $51
	and b                                            ; $7992: $a0
	ld [$a91e], a                                    ; $7993: $ea $1e $a9
	ret                                              ; $7996: $c9


	inc [hl]                                         ; $7997: $34
	ldh a, [$c0]                                     ; $7998: $f0 $c0
	ldh a, [$f0]                                     ; $799a: $f0 $f0

jr_08c_799c:
	ld c, d                                          ; $799c: $4a
	ld a, $3d                                        ; $799d: $3e $3d
	ld c, b                                          ; $799f: $48
	and b                                            ; $79a0: $a0
	cpl                                              ; $79a1: $2f
	ld d, h                                          ; $79a2: $54
	ld b, c                                          ; $79a3: $41
	ld a, [hl-]                                      ; $79a4: $3a
	ldh a, [$3f]                                     ; $79a5: $f0 $3f
	ld d, e                                          ; $79a7: $53
	jr c, jr_08c_79e2                                ; $79a8: $38 $38

	ld b, d                                          ; $79aa: $42
	and c                                            ; $79ab: $a1
	ld d, h                                          ; $79ac: $54
	add hl, sp                                       ; $79ad: $39
	jr c, @+$3b                                      ; $79ae: $38 $39

	ldh a, [$3f]                                     ; $79b0: $f0 $3f
	ld c, e                                          ; $79b2: $4b
	xor h                                            ; $79b3: $ac
	ldh a, [$64]                                     ; $79b4: $f0 $64
	jr c, jr_08c_79f2                                ; $79b6: $38 $3a

	ld b, c                                          ; $79b8: $41
	ld c, d                                          ; $79b9: $4a
	ld d, c                                          ; $79ba: $51
	inc a                                            ; $79bb: $3c
	and c                                            ; $79bc: $a1
	ld d, h                                          ; $79bd: $54
	add hl, sp                                       ; $79be: $39
	jr c, jr_08c_79fa                                ; $79bf: $38 $39

	ldh a, [$3f]                                     ; $79c1: $f0 $3f
	ld c, e                                          ; $79c3: $4b
	xor h                                            ; $79c4: $ac
	ldh a, [$64]                                     ; $79c5: $f0 $64
	jr c, jr_08c_7a03                                ; $79c7: $38 $3a

	ld b, c                                          ; $79c9: $41
	ld c, d                                          ; $79ca: $4a
	ld d, c                                          ; $79cb: $51
	ld c, h                                          ; $79cc: $4c
	and b                                            ; $79cd: $a0
	ld l, a                                          ; $79ce: $6f
	ld c, e                                          ; $79cf: $4b
	xor h                                            ; $79d0: $ac
	add a                                            ; $79d1: $87
	adc e                                            ; $79d2: $8b
	ld e, h                                          ; $79d3: $5c
	ld c, d                                          ; $79d4: $4a
	ld d, c                                          ; $79d5: $51
	ld e, l                                          ; $79d6: $5d
	ld e, d                                          ; $79d7: $5a
	ld c, b                                          ; $79d8: $48
	and b                                            ; $79d9: $a0
	cpl                                              ; $79da: $2f
	ldh a, [$3e]                                     ; $79db: $f0 $3e
	ldh a, [$0b]                                     ; $79dd: $f0 $0b
	ld b, h                                          ; $79df: $44
	ld b, l                                          ; $79e0: $45
	ld c, h                                          ; $79e1: $4c

jr_08c_79e2:
	add hl, bc                                       ; $79e2: $09
	ld d, h                                          ; $79e3: $54
	ld b, d                                          ; $79e4: $42
	ld hl, sp-$03                                    ; $79e5: $f8 $fd
	ld a, [$3a36]                                    ; $79e7: $fa $36 $3a
	db $ec                                           ; $79ea: $ec
	ld l, [hl]                                       ; $79eb: $6e
	ld d, e                                          ; $79ec: $53
	inc de                                           ; $79ed: $13
	ld c, c                                          ; $79ee: $49
	ccf                                              ; $79ef: $3f
	ld c, a                                          ; $79f0: $4f
	inc de                                           ; $79f1: $13

jr_08c_79f2:
	ld a, a                                          ; $79f2: $7f
	ld b, a                                          ; $79f3: $47
	sub [hl]                                         ; $79f4: $96
	dec sp                                           ; $79f5: $3b
	ccf                                              ; $79f6: $3f
	ld c, [hl]                                       ; $79f7: $4e
	ld b, c                                          ; $79f8: $41
	ld c, d                                          ; $79f9: $4a

jr_08c_79fa:
	ld d, c                                          ; $79fa: $51
	and b                                            ; $79fb: $a0
	ldh a, [$3e]                                     ; $79fc: $f0 $3e
	ldh a, [$0b]                                     ; $79fe: $f0 $0b
	ld a, [hl-]                                      ; $7a00: $3a
	ld b, h                                          ; $7a01: $44
	ld e, l                                          ; $7a02: $5d

jr_08c_7a03:
	ld e, e                                          ; $7a03: $5b
	ld d, [hl]                                       ; $7a04: $56
	xor h                                            ; $7a05: $ac
	ldh a, [rAUD1LOW]                                ; $7a06: $f0 $13
	jr c, jr_08c_7a53                                ; $7a08: $38 $49

	ld [hl], a                                       ; $7a0a: $77
	jr c, @+$54                                      ; $7a0b: $38 $52

	ld d, c                                          ; $7a0d: $51
	ld e, l                                          ; $7a0e: $5d
	ld e, d                                          ; $7a0f: $5a
	ld c, b                                          ; $7a10: $48
	and b                                            ; $7a11: $a0
	ld b, h                                          ; $7a12: $44
	inc a                                            ; $7a13: $3c
	ld d, b                                          ; $7a14: $50
	xor h                                            ; $7a15: $ac
	pop af                                           ; $7a16: $f1
	adc d                                            ; $7a17: $8a
	ldh a, [$fb]                                     ; $7a18: $f0 $fb
	ld a, [hl-]                                      ; $7a1a: $3a
	ld b, c                                          ; $7a1b: $41
	ld c, d                                          ; $7a1c: $4a
	ld d, c                                          ; $7a1d: $51
	ld c, h                                          ; $7a1e: $4c
	and b                                            ; $7a1f: $a0
	ld d, h                                          ; $7a20: $54
	ld c, l                                          ; $7a21: $4d
	xor l                                            ; $7a22: $ad
	db $ec                                           ; $7a23: $ec
	rst AddAOntoHL                                          ; $7a24: $ef
	ld [hl], d                                       ; $7a25: $72
	ld d, d                                          ; $7a26: $52
	ld a, $3d                                        ; $7a27: $3e $3d
	ld b, l                                          ; $7a29: $45
	ld c, h                                          ; $7a2a: $4c
	and c                                            ; $7a2b: $a1
	ld d, h                                          ; $7a2c: $54
	ld c, l                                          ; $7a2d: $4d
	xor l                                            ; $7a2e: $ad
	db $ec                                           ; $7a2f: $ec
	rst AddAOntoHL                                          ; $7a30: $ef
	ld [hl], d                                       ; $7a31: $72
	ld d, d                                          ; $7a32: $52
	ld a, $3d                                        ; $7a33: $3e $3d
	ld e, l                                          ; $7a35: $5d
	ld e, d                                          ; $7a36: $5a
	ld c, b                                          ; $7a37: $48
	and b                                            ; $7a38: $a0
	ld d, h                                          ; $7a39: $54
	ld c, l                                          ; $7a3a: $4d
	xor l                                            ; $7a3b: $ad
	db $ec                                           ; $7a3c: $ec
	rst AddAOntoHL                                          ; $7a3d: $ef
	ld [hl], d                                       ; $7a3e: $72
	ld d, d                                          ; $7a3f: $52
	ld a, $3d                                        ; $7a40: $3e $3d
	ld b, l                                          ; $7a42: $45
	and b                                            ; $7a43: $a0
	ld l, h                                          ; $7a44: $6c
	ld b, c                                          ; $7a45: $41
	ld a, [hl-]                                      ; $7a46: $3a
	pop af                                           ; $7a47: $f1
	ld e, b                                          ; $7a48: $58
	inc a                                            ; $7a49: $3c
	ld b, a                                          ; $7a4a: $47
	inc de                                           ; $7a4b: $13
	ldh a, [$dd]                                     ; $7a4c: $f0 $dd
	ldh a, [$9c]                                     ; $7a4e: $f0 $9c
	ld a, $3f                                        ; $7a50: $3e $3f
	ld d, d                                          ; $7a52: $52

jr_08c_7a53:
	ld d, c                                          ; $7a53: $51
	ld c, h                                          ; $7a54: $4c
	and b                                            ; $7a55: $a0
	cpl                                              ; $7a56: $2f
	add sp, -$66                                     ; $7a57: $e8 $9a
	add hl, bc                                       ; $7a59: $09
	or [hl]                                          ; $7a5a: $b6
	xor b                                            ; $7a5b: $a8
	ld b, b                                          ; $7a5c: $40
	add hl, sp                                       ; $7a5d: $39
	ld a, $52                                        ; $7a5e: $3e $52

jr_08c_7a60:
	ld a, $66                                        ; $7a60: $3e $66
	add hl, sp                                       ; $7a62: $39
	ld c, b                                          ; $7a63: $48
	and b                                            ; $7a64: $a0
	call c, $caa8                                    ; $7a65: $dc $a8 $ca
	xor h                                            ; $7a68: $ac
	ldh a, [$bb]                                     ; $7a69: $f0 $bb
	ld [hl], c                                       ; $7a6b: $71
	ld d, d                                          ; $7a6c: $52
	ld a, $66                                        ; $7a6d: $3e $66
	add hl, sp                                       ; $7a6f: $39
	inc a                                            ; $7a70: $3c
	and c                                            ; $7a71: $a1
	or [hl]                                          ; $7a72: $b6
	xor b                                            ; $7a73: $a8
	ldh a, [$bb]                                     ; $7a74: $f0 $bb
	ld [hl], c                                       ; $7a76: $71
	ld d, d                                          ; $7a77: $52
	ld a, $66                                        ; $7a78: $3e $66
	add hl, sp                                       ; $7a7a: $39
	and b                                            ; $7a7b: $a0
	cpl                                              ; $7a7c: $2f
	add sp, $58                                      ; $7a7d: $e8 $58
	and d                                            ; $7a7f: $a2
	ld b, b                                          ; $7a80: $40
	inc [hl]                                         ; $7a81: $34
	ld b, b                                          ; $7a82: $40
	ld b, c                                          ; $7a83: $41
	ld a, [hl-]                                      ; $7a84: $3a
	add a                                            ; $7a85: $87
	ld e, h                                          ; $7a86: $5c
	ld a, [hl-]                                      ; $7a87: $3a
	pop af                                           ; $7a88: $f1
	dec l                                            ; $7a89: $2d
	xor h                                            ; $7a8a: $ac
	sub h                                            ; $7a8b: $94
	ld a, $61                                        ; $7a8c: $3e $61
	ld d, [hl]                                       ; $7a8e: $56
	xor $05                                          ; $7a8f: $ee $05
	ld c, d                                          ; $7a91: $4a
	ld d, c                                          ; $7a92: $51
	and b                                            ; $7a93: $a0
	db $ec                                           ; $7a94: $ec
	pop af                                           ; $7a95: $f1
	ld b, d                                          ; $7a96: $42
	ldh a, [rAUD3LOW]                                ; $7a97: $f0 $1d
	ldh a, [$ba]                                     ; $7a99: $f0 $ba
	ld e, c                                          ; $7a9b: $59
	ld h, d                                          ; $7a9c: $62
	inc de                                           ; $7a9d: $13
	db $ec                                           ; $7a9e: $ec
	dec b                                            ; $7a9f: $05
	ld b, c                                          ; $7aa0: $41
	ld c, d                                          ; $7aa1: $4a
	ld d, c                                          ; $7aa2: $51
	inc a                                            ; $7aa3: $3c
	and c                                            ; $7aa4: $a1
	ld b, b                                          ; $7aa5: $40
	ld b, c                                          ; $7aa6: $41
	ld a, [hl-]                                      ; $7aa7: $3a
	add a                                            ; $7aa8: $87
	ld e, h                                          ; $7aa9: $5c
	ld a, [hl-]                                      ; $7aaa: $3a
	pop af                                           ; $7aab: $f1
	dec l                                            ; $7aac: $2d
	inc de                                           ; $7aad: $13
	sub h                                            ; $7aae: $94
	ld e, b                                          ; $7aaf: $58
	ld a, [hl-]                                      ; $7ab0: $3a
	jr c, jr_08c_7afd                                ; $7ab1: $38 $4a

	ld d, l                                          ; $7ab3: $55
	ld b, h                                          ; $7ab4: $44
	ld e, b                                          ; $7ab5: $58
	jr c, jr_08c_7a60                                ; $7ab6: $38 $a8

	ld d, h                                          ; $7ab8: $54
	ld d, h                                          ; $7ab9: $54
	ld c, e                                          ; $7aba: $4b
	db $ec                                           ; $7abb: $ec
	pop af                                           ; $7abc: $f1
	ld a, [hl-]                                      ; $7abd: $3a
	ld b, c                                          ; $7abe: $41
	ld c, d                                          ; $7abf: $4a
	ld d, c                                          ; $7ac0: $51
	ld b, l                                          ; $7ac1: $45
	and b                                            ; $7ac2: $a0
	cpl                                              ; $7ac3: $2f
	jp hl                                            ; $7ac4: $e9


	call $ee09                                       ; $7ac5: $cd $09 $ee
	ld b, $44                                        ; $7ac8: $06 $44
	ld c, c                                          ; $7aca: $49
	xor h                                            ; $7acb: $ac
	db $ed                                           ; $7acc: $ed
	and l                                            ; $7acd: $a5
	ld c, d                                          ; $7ace: $4a
	ld e, h                                          ; $7acf: $5c
	ld a, [hl-]                                      ; $7ad0: $3a
	jr c, jr_08c_7b0f                                ; $7ad1: $38 $3c

	ld c, a                                          ; $7ad3: $4f
	inc de                                           ; $7ad4: $13
	ld a, $4d                                        ; $7ad5: $3e $4d
	ld d, d                                          ; $7ad7: $52
	ld a, c                                          ; $7ad8: $79
	ld b, c                                          ; $7ad9: $41
	ld c, h                                          ; $7ada: $4c
	ld c, b                                          ; $7adb: $48
	and b                                            ; $7adc: $a0
	ld c, c                                          ; $7add: $49
	ccf                                              ; $7ade: $3f
	ld c, a                                          ; $7adf: $4f
	db $ed                                           ; $7ae0: $ed
	and l                                            ; $7ae1: $a5
	ld a, $6e                                        ; $7ae2: $3e $6e
	ld d, c                                          ; $7ae4: $51
	jr c, jr_08c_7afa                                ; $7ae5: $38 $13

	db $f4                                           ; $7ae7: $f4
	and $f4                                          ; $7ae8: $e6 $f4
	rst SubAFromBC                                          ; $7aea: $e7
	ld a, [hl-]                                      ; $7aeb: $3a
	ld b, d                                          ; $7aec: $42
	ld c, d                                          ; $7aed: $4a
	xor h                                            ; $7aee: $ac
	ld l, a                                          ; $7aef: $6f
	ld c, e                                          ; $7af0: $4b
	ld c, c                                          ; $7af1: $49
	ccf                                              ; $7af2: $3f
	ld c, a                                          ; $7af3: $4f
	adc e                                            ; $7af4: $8b
	ld e, h                                          ; $7af5: $5c
	ld c, d                                          ; $7af6: $4a
	ld d, c                                          ; $7af7: $51
	and b                                            ; $7af8: $a0
	db $ed                                           ; $7af9: $ed

jr_08c_7afa:
	and l                                            ; $7afa: $a5
	ld d, c                                          ; $7afb: $51
	ld c, [hl]                                       ; $7afc: $4e

jr_08c_7afd:
	ld b, a                                          ; $7afd: $47
	ld c, e                                          ; $7afe: $4b
	inc de                                           ; $7aff: $13
	ld c, c                                          ; $7b00: $49
	ccf                                              ; $7b01: $3f
	ld c, a                                          ; $7b02: $4f
	jr c, @+$3a                                      ; $7b03: $38 $38

	ld c, d                                          ; $7b05: $4a
	ld d, c                                          ; $7b06: $51
	ld c, h                                          ; $7b07: $4c
	and b                                            ; $7b08: $a0
	ld l, e                                          ; $7b09: $6b
	inc a                                            ; $7b0a: $3c
	pop af                                           ; $7b0b: $f1
	adc l                                            ; $7b0c: $8d
	ld a, $f0                                        ; $7b0d: $3e $f0

jr_08c_7b0f:
	inc l                                            ; $7b0f: $2c
	ld b, d                                          ; $7b10: $42
	adc b                                            ; $7b11: $88
	ld c, e                                          ; $7b12: $4b
	inc de                                           ; $7b13: $13
	ld b, [hl]                                       ; $7b14: $46
	ld d, a                                          ; $7b15: $57
	ld d, d                                          ; $7b16: $52
	ld d, c                                          ; $7b17: $51
	inc a                                            ; $7b18: $3c
	and c                                            ; $7b19: $a1
	cpl                                              ; $7b1a: $2f
	add sp, $6d                                      ; $7b1b: $e8 $6d
	add hl, bc                                       ; $7b1d: $09
	ld b, b                                          ; $7b1e: $40
	ld c, l                                          ; $7b1f: $4d
	ld a, [hl-]                                      ; $7b20: $3a
	ld d, b                                          ; $7b21: $50
	xor h                                            ; $7b22: $ac
	ld d, c                                          ; $7b23: $51
	sbc l                                            ; $7b24: $9d
	ld b, a                                          ; $7b25: $47
	ldh a, [rTAC]                                    ; $7b26: $f0 $07
	inc a                                            ; $7b28: $3c
	ld d, a                                          ; $7b29: $57
	ld d, d                                          ; $7b2a: $52
	ld d, c                                          ; $7b2b: $51
	xor b                                            ; $7b2c: $a8
	sbc c                                            ; $7b2d: $99
	dec sp                                           ; $7b2e: $3b
	ccf                                              ; $7b2f: $3f
	ccf                                              ; $7b30: $3f
	ld d, l                                          ; $7b31: $55
	ld b, h                                          ; $7b32: $44
	ld e, b                                          ; $7b33: $58
	jr c, jr_08c_7b82                                ; $7b34: $38 $4c

	and b                                            ; $7b36: $a0
	pop af                                           ; $7b37: $f1
	ld a, [$383e]                                    ; $7b38: $fa $3e $38
	adc b                                            ; $7b3b: $88
	ldh a, [$fa]                                     ; $7b3c: $f0 $fa
	ldh a, [$be]                                     ; $7b3e: $f0 $be
	ld b, c                                          ; $7b40: $41
	ld c, d                                          ; $7b41: $4a
	ld d, c                                          ; $7b42: $51
	ld c, h                                          ; $7b43: $4c
	xor b                                            ; $7b44: $a8
	ld b, b                                          ; $7b45: $40
	ld c, l                                          ; $7b46: $4d
	ld a, [hl-]                                      ; $7b47: $3a
	ld d, b                                          ; $7b48: $50
	inc [hl]                                         ; $7b49: $34
	ld d, c                                          ; $7b4a: $51
	sbc l                                            ; $7b4b: $9d
	ld b, a                                          ; $7b4c: $47
	ldh a, [rHDMA1]                                  ; $7b4d: $f0 $51
	dec sp                                           ; $7b4f: $3b
	ccf                                              ; $7b50: $3f
	inc de                                           ; $7b51: $13
	ld d, h                                          ; $7b52: $54
	ld c, l                                          ; $7b53: $4d
	ld d, d                                          ; $7b54: $52
	ld d, c                                          ; $7b55: $51
	ld b, l                                          ; $7b56: $45
	and b                                            ; $7b57: $a0
	ldh a, [rTAC]                                    ; $7b58: $f0 $07
	inc a                                            ; $7b5a: $3c
	ld d, a                                          ; $7b5b: $57
	ld d, d                                          ; $7b5c: $52
	ld a, $3d                                        ; $7b5d: $3e $3d
	xor b                                            ; $7b5f: $a8
	sbc c                                            ; $7b60: $99
	dec sp                                           ; $7b61: $3b
	ccf                                              ; $7b62: $3f
	ccf                                              ; $7b63: $3f
	ld d, l                                          ; $7b64: $55
	ld b, h                                          ; $7b65: $44
	ld e, b                                          ; $7b66: $58
	jr c, jr_08c_7bb5                                ; $7b67: $38 $4c

	and b                                            ; $7b69: $a0
	cpl                                              ; $7b6a: $2f
	di                                               ; $7b6b: $f3
	jr nz, @-$0e                                     ; $7b6c: $20 $f0

	ld a, d                                          ; $7b6e: $7a
	ld c, e                                          ; $7b6f: $4b

jr_08c_7b70:
	ld b, [hl]                                       ; $7b70: $46
	ld c, [hl]                                       ; $7b71: $4e
	inc a                                            ; $7b72: $3c
	ld a, [hl-]                                      ; $7b73: $3a
	and c                                            ; $7b74: $a1
	ld d, h                                          ; $7b75: $54
	ld d, h                                          ; $7b76: $54
	ld c, e                                          ; $7b77: $4b
	xor h                                            ; $7b78: $ac
	db $ec                                           ; $7b79: $ec
	pop af                                           ; $7b7a: $f1

jr_08c_7b7b:
	ld c, d                                          ; $7b7b: $4a
	ld d, c                                          ; $7b7c: $51
	inc a                                            ; $7b7d: $3c
	ld d, b                                          ; $7b7e: $50
	ld c, b                                          ; $7b7f: $48
	and b                                            ; $7b80: $a0
	ld d, h                                          ; $7b81: $54

jr_08c_7b82:
	ld b, d                                          ; $7b82: $42
	db $ec                                           ; $7b83: $ec
	pop af                                           ; $7b84: $f1
	ld b, a                                          ; $7b85: $47
	ld c, e                                          ; $7b86: $4b
	xor h                                            ; $7b87: $ac
	di                                               ; $7b88: $f3
	jr nz, jr_08c_7b7b                               ; $7b89: $20 $f0

	ld a, d                                          ; $7b8b: $7a

jr_08c_7b8c:
	ld c, e                                          ; $7b8c: $4b
	ld a, [hl-]                                      ; $7b8d: $3a
	jr c, jr_08c_7bd9                                ; $7b8e: $38 $49

	inc de                                           ; $7b90: $13
	ld [hl], a                                       ; $7b91: $77
	jr c, jr_08c_7be6                                ; $7b92: $38 $52

	ld d, c                                          ; $7b94: $51
	ld e, l                                          ; $7b95: $5d
	ld e, d                                          ; $7b96: $5a
	ld c, b                                          ; $7b97: $48
	and b                                            ; $7b98: $a0
	di                                               ; $7b99: $f3
	jr nz, jr_08c_7b8c                               ; $7b9a: $20 $f0

	ld a, d                                          ; $7b9c: $7a
	ld c, e                                          ; $7b9d: $4b
	ld a, [hl-]                                      ; $7b9e: $3a
	jr c, jr_08c_7bea                                ; $7b9f: $38 $49

	inc de                                           ; $7ba1: $13
	ld [hl], a                                       ; $7ba2: $77
	jr c, jr_08c_7bf7                                ; $7ba3: $38 $52

	ld d, c                                          ; $7ba5: $51
	ld b, l                                          ; $7ba6: $45
	ld c, b                                          ; $7ba7: $48
	and b                                            ; $7ba8: $a0
	cpl                                              ; $7ba9: $2f
	jr c, @+$70                                      ; $7baa: $38 $6e

	inc [hl]                                         ; $7bac: $34
	ld c, c                                          ; $7bad: $49
	ld d, l                                          ; $7bae: $55
	ld b, a                                          ; $7baf: $47
	ld a, [hl-]                                      ; $7bb0: $3a
	jr c, jr_08c_7bf8                                ; $7bb1: $38 $45

	add hl, bc                                       ; $7bb3: $09
	pop af                                           ; $7bb4: $f1

jr_08c_7bb5:
	adc l                                            ; $7bb5: $8d
	ld a, $f0                                        ; $7bb6: $3e $f0
	inc l                                            ; $7bb8: $2c
	ld d, e                                          ; $7bb9: $53
	ld b, [hl]                                       ; $7bba: $46
	ld c, [hl]                                       ; $7bbb: $4e
	ld c, c                                          ; $7bbc: $49
	ld e, h                                          ; $7bbd: $5c
	ld c, e                                          ; $7bbe: $4b
	inc de                                           ; $7bbf: $13
	add d                                            ; $7bc0: $82
	dec sp                                           ; $7bc1: $3b
	ccf                                              ; $7bc2: $3f
	ld d, l                                          ; $7bc3: $55
	ld b, h                                          ; $7bc4: $44
	ld e, b                                          ; $7bc5: $58
	jr c, jr_08c_7b70                                ; $7bc6: $38 $a8

	ld d, c                                          ; $7bc8: $51
	sbc l                                            ; $7bc9: $9d
	ld b, a                                          ; $7bca: $47
	ld [hl], d                                       ; $7bcb: $72
	add b                                            ; $7bcc: $80
	ld e, l                                          ; $7bcd: $5d
	ld c, [hl]                                       ; $7bce: $4e
	inc de                                           ; $7bcf: $13
	ldh a, [$67]                                     ; $7bd0: $f0 $67
	ldh a, [$9f]                                     ; $7bd2: $f0 $9f
	ld d, e                                          ; $7bd4: $53
	ld b, [hl]                                       ; $7bd5: $46
	ld d, a                                          ; $7bd6: $57
	ld d, d                                          ; $7bd7: $52
	ld d, c                                          ; $7bd8: $51

jr_08c_7bd9:
	inc a                                            ; $7bd9: $3c
	ld d, b                                          ; $7bda: $50
	ld c, b                                          ; $7bdb: $48
	and b                                            ; $7bdc: $a0
	ld d, h                                          ; $7bdd: $54
	ld b, d                                          ; $7bde: $42
	db $ec                                           ; $7bdf: $ec
	pop af                                           ; $7be0: $f1
	ld b, d                                          ; $7be1: $42
	adc b                                            ; $7be2: $88
	ld a, [hl-]                                      ; $7be3: $3a
	ld d, b                                          ; $7be4: $50
	xor h                                            ; $7be5: $ac

jr_08c_7be6:
	ld d, c                                          ; $7be6: $51
	sbc l                                            ; $7be7: $9d
	ld b, a                                          ; $7be8: $47
	ld [hl], d                                       ; $7be9: $72

jr_08c_7bea:
	add b                                            ; $7bea: $80
	ld e, l                                          ; $7beb: $5d
	ld c, [hl]                                       ; $7bec: $4e
	inc de                                           ; $7bed: $13
	ldh a, [$67]                                     ; $7bee: $f0 $67
	ldh a, [$9f]                                     ; $7bf0: $f0 $9f
	ld d, e                                          ; $7bf2: $53
	ld b, [hl]                                       ; $7bf3: $46
	ld c, [hl]                                       ; $7bf4: $4e
	ld b, c                                          ; $7bf5: $41
	ld c, d                                          ; $7bf6: $4a

jr_08c_7bf7:
	ld d, c                                          ; $7bf7: $51

jr_08c_7bf8:
	ld b, l                                          ; $7bf8: $45
	and b                                            ; $7bf9: $a0
	ld b, b                                          ; $7bfa: $40
	ld c, l                                          ; $7bfb: $4d
	ld a, [hl-]                                      ; $7bfc: $3a
	ld d, b                                          ; $7bfd: $50
	jr c, @+$3a                                      ; $7bfe: $38 $38

	ld c, d                                          ; $7c00: $4a
	ld d, c                                          ; $7c01: $51
	ld e, l                                          ; $7c02: $5d
	ld e, d                                          ; $7c03: $5a
	ld c, b                                          ; $7c04: $48
	and b                                            ; $7c05: $a0
	cpl                                              ; $7c06: $2f
	ld b, e                                          ; $7c07: $43
	db $ec                                           ; $7c08: $ec
	rst SubAFromDE                                          ; $7c09: $df
	xor l                                            ; $7c0a: $ad
	db $ec                                           ; $7c0b: $ec
	rst SubAFromDE                                          ; $7c0c: $df
	ld c, b                                          ; $7c0d: $48
	and b                                            ; $7c0e: $a0
	xor $10                                          ; $7c0f: $ee $10
	and b                                            ; $7c11: $a0
	cpl                                              ; $7c12: $2f
	ld [hl-], a                                      ; $7c13: $32
	ldh a, [$e0]                                     ; $7c14: $f0 $e0
	sbc d                                            ; $7c16: $9a
	ld d, e                                          ; $7c17: $53
	ld a, [hl-]                                      ; $7c18: $3a
	jr c, @-$67                                      ; $7c19: $38 $97

	ld c, b                                          ; $7c1b: $48
	and e                                            ; $7c1c: $a3
	cpl                                              ; $7c1d: $2f
	ld [hl-], a                                      ; $7c1e: $32
	xor $05                                          ; $7c1f: $ee $05
	ld b, h                                          ; $7c21: $44
	xor b                                            ; $7c22: $a8
	adc b                                            ; $7c23: $88
	ld b, a                                          ; $7c24: $47
	pop af                                           ; $7c25: $f1
	push hl                                          ; $7c26: $e5
	ldh a, [rAUD2HIGH]                               ; $7c27: $f0 $19
	ld a, $3f                                        ; $7c29: $3e $3f
	ccf                                              ; $7c2b: $3f
	xor h                                            ; $7c2c: $ac
	pop af                                           ; $7c2d: $f1
	dec l                                            ; $7c2e: $2d
	ld d, e                                          ; $7c2f: $53
	ldh a, [$0c]                                     ; $7c30: $f0 $0c
	ld d, h                                          ; $7c32: $54
	ld e, [hl]                                       ; $7c33: $5e
	ld a, [hl-]                                      ; $7c34: $3a
	jr c, @+$52                                      ; $7c35: $38 $50

	ld a, $38                                        ; $7c37: $3e $38
	and e                                            ; $7c39: $a3
	cpl                                              ; $7c3a: $2f
	ld [hl-], a                                      ; $7c3b: $32
	ld d, h                                          ; $7c3c: $54
	ld b, d                                          ; $7c3d: $42
	ld d, d                                          ; $7c3e: $52
	ld d, d                                          ; $7c3f: $52
	xor h                                            ; $7c40: $ac
	ld b, b                                          ; $7c41: $40
	dec sp                                           ; $7c42: $3b
	ld c, c                                          ; $7c43: $49
	ld a, $3f                                        ; $7c44: $3e $3f
	ld h, h                                          ; $7c46: $64
	ld d, h                                          ; $7c47: $54
	add hl, sp                                       ; $7c48: $39
	and e                                            ; $7c49: $a3
	db $ec                                           ; $7c4a: $ec
	push bc                                          ; $7c4b: $c5
	xor h                                            ; $7c4c: $ac
	or b                                             ; $7c4d: $b0
	inc a                                            ; $7c4e: $3c
	and c                                            ; $7c4f: $a1
	cpl                                              ; $7c50: $2f
	ld b, e                                          ; $7c51: $43
	ld c, a                                          ; $7c52: $4f
	add hl, sp                                       ; $7c53: $39
	inc [hl]                                         ; $7c54: $34
	adc b                                            ; $7c55: $88
	xor $2d                                          ; $7c56: $ee $2d
	jr c, jr_08c_7c9c                                ; $7c58: $38 $42

	and c                                            ; $7c5a: $a1
	xor $2d                                          ; $7c5b: $ee $2d
	xor b                                            ; $7c5d: $a8
	db $ed                                           ; $7c5e: $ed
	ld c, [hl]                                       ; $7c5f: $4e
	inc [hl]                                         ; $7c60: $34
	adc b                                            ; $7c61: $88
	ld h, d                                          ; $7c62: $62
	ldh a, [$fa]                                     ; $7c63: $f0 $fa
	ld b, c                                          ; $7c65: $41
	ld c, d                                          ; $7c66: $4a
	ld c, [hl]                                       ; $7c67: $4e
	ld c, c                                          ; $7c68: $49
	ld e, h                                          ; $7c69: $5c
	inc de                                           ; $7c6a: $13
	ld l, a                                          ; $7c6b: $6f
	ld b, a                                          ; $7c6c: $47
	pop af                                           ; $7c6d: $f1
	dec l                                            ; $7c6e: $2d
	ld h, d                                          ; $7c6f: $62
	inc a                                            ; $7c70: $3c
	ld e, l                                          ; $7c71: $5d
	ld d, d                                          ; $7c72: $52
	ld a, $3d                                        ; $7c73: $3e $3d
	inc a                                            ; $7c75: $3c
	and c                                            ; $7c76: $a1
	cpl                                              ; $7c77: $2f
	ld b, e                                          ; $7c78: $43
	ld d, d                                          ; $7c79: $52
	inc [hl]                                         ; $7c7a: $34
	ld d, d                                          ; $7c7b: $52
	ld b, [hl]                                       ; $7c7c: $46
	ld c, h                                          ; $7c7d: $4c
	xor b                                            ; $7c7e: $a8
	ld c, d                                          ; $7c7f: $4a
	ld c, a                                          ; $7c80: $4f
	inc [hl]                                         ; $7c81: $34
	ldh a, [$34]                                     ; $7c82: $f0 $34
	ld b, a                                          ; $7c84: $47
	add a                                            ; $7c85: $87
	ld a, $3d                                        ; $7c86: $3e $3d
	ldh a, [rAUD2LEN]                                ; $7c88: $f0 $16
	ld e, e                                          ; $7c8a: $5b
	ld d, [hl]                                       ; $7c8b: $56
	inc de                                           ; $7c8c: $13
	ld a, [hl-]                                      ; $7c8d: $3a
	inc a                                            ; $7c8e: $3c
	dec sp                                           ; $7c8f: $3b
	dec a                                            ; $7c90: $3d
	inc a                                            ; $7c91: $3c
	ld d, b                                          ; $7c92: $50
	and b                                            ; $7c93: $a0
	db $eb                                           ; $7c94: $eb
	ccf                                              ; $7c95: $3f
	xor b                                            ; $7c96: $a8
	ld l, a                                          ; $7c97: $6f
	inc [hl]                                         ; $7c98: $34
	adc b                                            ; $7c99: $88
	ld b, a                                          ; $7c9a: $47
	pop af                                           ; $7c9b: $f1

jr_08c_7c9c:
	add sp, -$10                                     ; $7c9c: $e8 $f0
	add hl, de                                       ; $7c9e: $19
	ld b, a                                          ; $7c9f: $47
	ld a, [hl-]                                      ; $7ca0: $3a
	ld c, [hl]                                       ; $7ca1: $4e
	ld c, c                                          ; $7ca2: $49
	ld c, b                                          ; $7ca3: $48
	and b                                            ; $7ca4: $a0
	cpl                                              ; $7ca5: $2f
	ld b, e                                          ; $7ca6: $43
	ld b, b                                          ; $7ca7: $40
	ld b, c                                          ; $7ca8: $41
	ld a, [hl-]                                      ; $7ca9: $3a
	sbc d                                            ; $7caa: $9a
	xor h                                            ; $7cab: $ac
	ld a, a                                          ; $7cac: $7f
	ld b, a                                          ; $7cad: $47
	ld a, $3a                                        ; $7cae: $3e $3a
	ld d, l                                          ; $7cb0: $55
	ccf                                              ; $7cb1: $3f
	jr c, jr_08c_7cec                                ; $7cb2: $38 $38

	inc a                                            ; $7cb4: $3c
	ld d, b                                          ; $7cb5: $50
	xor b                                            ; $7cb6: $a8
	ldh a, [$08]                                     ; $7cb7: $f0 $08
	ld d, b                                          ; $7cb9: $50
	inc [hl]                                         ; $7cba: $34
	ld a, d                                          ; $7cbb: $7a
	ld e, a                                          ; $7cbc: $5f
	add hl, sp                                       ; $7cbd: $39
	ld b, l                                          ; $7cbe: $45
	and b                                            ; $7cbf: $a0
	xor $2d                                          ; $7cc0: $ee $2d
	xor h                                            ; $7cc2: $ac
	jp hl                                            ; $7cc3: $e9


	inc d                                            ; $7cc4: $14
	and b                                            ; $7cc5: $a0
	jp z, $f0ac                                      ; $7cc6: $ca $ac $f0

	add hl, de                                       ; $7cc9: $19
	ld b, a                                          ; $7cca: $47

jr_08c_7ccb:
	sub [hl]                                         ; $7ccb: $96
	ld d, a                                          ; $7ccc: $57
	ld d, d                                          ; $7ccd: $52
	ld d, c                                          ; $7cce: $51
	inc a                                            ; $7ccf: $3c
	and c                                            ; $7cd0: $a1
	cpl                                              ; $7cd1: $2f
	add sp, $29                                      ; $7cd2: $e8 $29
	add hl, bc                                       ; $7cd4: $09
	cpl                                              ; $7cd5: $2f
	add sp, $2a                                      ; $7cd6: $e8 $2a
	add hl, bc                                       ; $7cd8: $09
	ld l, a                                          ; $7cd9: $6f
	inc [hl]                                         ; $7cda: $34
	db $eb                                           ; $7cdb: $eb
	ld a, e                                          ; $7cdc: $7b
	ld b, a                                          ; $7cdd: $47
	inc de                                           ; $7cde: $13
	db $ed                                           ; $7cdf: $ed
	ld e, [hl]                                       ; $7ce0: $5e
	inc [hl]                                         ; $7ce1: $34
	ld a, b                                          ; $7ce2: $78
	ld a, [hl-]                                      ; $7ce3: $3a
	jr c, jr_08c_7d30                                ; $7ce4: $38 $4a

	ld d, c                                          ; $7ce6: $51
	inc a                                            ; $7ce7: $3c
	ld d, b                                          ; $7ce8: $50
	ld c, b                                          ; $7ce9: $48
	and b                                            ; $7cea: $a0
	cpl                                              ; $7ceb: $2f

jr_08c_7cec:
	ldh a, [$5f]                                     ; $7cec: $f0 $5f
	ldh a, [$9b]                                     ; $7cee: $f0 $9b
	ld c, e                                          ; $7cf0: $4b
	inc [hl]                                         ; $7cf1: $34
	pop hl                                           ; $7cf2: $e1
	ld c, a                                          ; $7cf3: $4f
	ld a, b                                          ; $7cf4: $78
	ld c, [hl]                                       ; $7cf5: $4e
	ld b, l                                          ; $7cf6: $45
	add hl, bc                                       ; $7cf7: $09
	ld b, b                                          ; $7cf8: $40
	inc [hl]                                         ; $7cf9: $34
	ld [$a91e], a                                    ; $7cfa: $ea $1e $a9
	ld c, d                                          ; $7cfd: $4a
	ld c, a                                          ; $7cfe: $4f
	inc [hl]                                         ; $7cff: $34
	ld l, a                                          ; $7d00: $6f
	ld c, e                                          ; $7d01: $4b
	inc de                                           ; $7d02: $13
	ret                                              ; $7d03: $c9


	xor $05                                          ; $7d04: $ee $05
	ld c, d                                          ; $7d06: $4a
	ld d, c                                          ; $7d07: $51
	ld c, h                                          ; $7d08: $4c
	ld c, b                                          ; $7d09: $48
	and b                                            ; $7d0a: $a0
	ld [$a91e], a                                    ; $7d0b: $ea $1e $a9
	ld c, d                                          ; $7d0e: $4a
	ld c, a                                          ; $7d0f: $4f
	inc [hl]                                         ; $7d10: $34
	ld l, a                                          ; $7d11: $6f
	ld b, a                                          ; $7d12: $47
	ld c, e                                          ; $7d13: $4b
	inc de                                           ; $7d14: $13
	ret                                              ; $7d15: $c9


	add hl, sp                                       ; $7d16: $39
	ld c, [hl]                                       ; $7d17: $4e
	ld e, b                                          ; $7d18: $58
	ld d, l                                          ; $7d19: $55
	ccf                                              ; $7d1a: $3f
	ld c, b                                          ; $7d1b: $48
	and b                                            ; $7d1c: $a0
	ldh a, [$5f]                                     ; $7d1d: $f0 $5f
	ldh a, [$9b]                                     ; $7d1f: $f0 $9b
	ld c, e                                          ; $7d21: $4b
	xor h                                            ; $7d22: $ac
	ld [$a01e], a                                    ; $7d23: $ea $1e $a0
	cpl                                              ; $7d26: $2f
	add sp, -$0d                                     ; $7d27: $e8 $f3
	add hl, bc                                       ; $7d29: $09
	ld b, b                                          ; $7d2a: $40
	add hl, sp                                       ; $7d2b: $39
	inc a                                            ; $7d2c: $3c
	ld c, a                                          ; $7d2d: $4f
	ld a, $4d                                        ; $7d2e: $3e $4d

jr_08c_7d30:
	ld d, d                                          ; $7d30: $52
	ld a, c                                          ; $7d31: $79
	ld b, c                                          ; $7d32: $41
	ld c, h                                          ; $7d33: $4c
	xor b                                            ; $7d34: $a8
	ld l, a                                          ; $7d35: $6f
	ld c, a                                          ; $7d36: $4f
	ld b, b                                          ; $7d37: $40
	add hl, sp                                       ; $7d38: $39
	ld [hl], a                                       ; $7d39: $77
	jr c, jr_08c_7d8e                                ; $7d3a: $38 $52

	ld d, c                                          ; $7d3c: $51
	and b                                            ; $7d3d: $a0
	ld b, b                                          ; $7d3e: $40
	add hl, sp                                       ; $7d3f: $39
	inc a                                            ; $7d40: $3c
	ld c, a                                          ; $7d41: $4f
	ld a, $4d                                        ; $7d42: $3e $4d
	ld d, d                                          ; $7d44: $52
	ld a, c                                          ; $7d45: $79
	ld b, c                                          ; $7d46: $41
	ld c, h                                          ; $7d47: $4c
	xor b                                            ; $7d48: $a8
	jr c, jr_08c_7ccb                                ; $7d49: $38 $80

	ld c, a                                          ; $7d4b: $4f
	db $ed                                           ; $7d4c: $ed
	ld a, e                                          ; $7d4d: $7b
	ld b, a                                          ; $7d4e: $47
	inc de                                           ; $7d4f: $13
	ldh a, [rLCDC]                                   ; $7d50: $f0 $40
	ld c, l                                          ; $7d52: $4d
	ld d, d                                          ; $7d53: $52
	ld a, c                                          ; $7d54: $79
	ld b, c                                          ; $7d55: $41
	inc a                                            ; $7d56: $3c
	ld d, b                                          ; $7d57: $50
	ld c, b                                          ; $7d58: $48
	and b                                            ; $7d59: $a0
	ld b, b                                          ; $7d5a: $40
	add hl, sp                                       ; $7d5b: $39
	inc a                                            ; $7d5c: $3c
	ld c, a                                          ; $7d5d: $4f
	ld a, $4d                                        ; $7d5e: $3e $4d
	ld d, d                                          ; $7d60: $52
	ld a, c                                          ; $7d61: $79
	ld b, c                                          ; $7d62: $41
	ld c, h                                          ; $7d63: $4c
	and b                                            ; $7d64: $a0
	cpl                                              ; $7d65: $2f
	jp hl                                            ; $7d66: $e9


	ldh [c], a                                       ; $7d67: $e2
	and c                                            ; $7d68: $a1
	ld b, b                                          ; $7d69: $40
	inc [hl]                                         ; $7d6a: $34
	ld b, b                                          ; $7d6b: $40
	ld b, c                                          ; $7d6c: $41
	ld a, [hl-]                                      ; $7d6d: $3a
	ld d, h                                          ; $7d6e: $54
	ld c, c                                          ; $7d6f: $49
	ld c, e                                          ; $7d70: $4b
	xor h                                            ; $7d71: $ac
	ld [hl], a                                       ; $7d72: $77
	dec sp                                           ; $7d73: $3b
	ccf                                              ; $7d74: $3f
	ld a, [hl-]                                      ; $7d75: $3a
	jr c, jr_08c_7dc2                                ; $7d76: $38 $4a

	ld d, c                                          ; $7d78: $51
	ld c, b                                          ; $7d79: $48
	and b                                            ; $7d7a: $a0
	ld b, b                                          ; $7d7b: $40
	ld b, c                                          ; $7d7c: $41
	ld a, [hl-]                                      ; $7d7d: $3a
	ld d, h                                          ; $7d7e: $54
	ld c, c                                          ; $7d7f: $49
	inc de                                           ; $7d80: $13
	ld [hl], a                                       ; $7d81: $77
	dec sp                                           ; $7d82: $3b
	ccf                                              ; $7d83: $3f
	ld d, d                                          ; $7d84: $52
	ld a, c                                          ; $7d85: $79
	ld b, c                                          ; $7d86: $41
	ld e, l                                          ; $7d87: $5d
	ld e, d                                          ; $7d88: $5a
	ld c, b                                          ; $7d89: $48
	and b                                            ; $7d8a: $a0
	ld b, b                                          ; $7d8b: $40
	ld b, c                                          ; $7d8c: $41
	ld a, [hl-]                                      ; $7d8d: $3a

jr_08c_7d8e:
	pop af                                           ; $7d8e: $f1
	ld a, a                                          ; $7d8f: $7f
	ld b, a                                          ; $7d90: $47
	ld [hl], a                                       ; $7d91: $77
	dec sp                                           ; $7d92: $3b
	ccf                                              ; $7d93: $3f
	ld c, [hl]                                       ; $7d94: $4e
	inc de                                           ; $7d95: $13
	add h                                            ; $7d96: $84
	dec sp                                           ; $7d97: $3b
	ccf                                              ; $7d98: $3f
	inc [hl]                                         ; $7d99: $34
	jr c, jr_08c_7dea                                ; $7d9a: $38 $4e

	ld b, c                                          ; $7d9c: $41
	ld c, d                                          ; $7d9d: $4a
	ld d, c                                          ; $7d9e: $51
	inc a                                            ; $7d9f: $3c
	and c                                            ; $7da0: $a1
	ld e, d                                          ; $7da1: $5a
	ld b, c                                          ; $7da2: $41
	ld a, [hl-]                                      ; $7da3: $3a
	ldh a, [$6d]                                     ; $7da4: $f0 $6d
	ld e, c                                          ; $7da6: $59
	ldh a, [$27]                                     ; $7da7: $f0 $27
	ld d, e                                          ; $7da9: $53
	inc de                                           ; $7daa: $13
	ldh a, [rAUD4ENV]                                ; $7dab: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7dad: $f0 $23
	jr c, @+$43                                      ; $7daf: $38 $41

	ld c, d                                          ; $7db1: $4a
	ld d, c                                          ; $7db2: $51
	inc a                                            ; $7db3: $3c
	and c                                            ; $7db4: $a1
	cpl                                              ; $7db5: $2f
	add sp, $34                                      ; $7db6: $e8 $34
	add hl, bc                                       ; $7db8: $09
	ld d, h                                          ; $7db9: $54
	ld c, l                                          ; $7dba: $4d
	ld d, e                                          ; $7dbb: $53
	db $ed                                           ; $7dbc: $ed
	ld [hl], d                                       ; $7dbd: $72
	pop af                                           ; $7dbe: $f1
	dec a                                            ; $7dbf: $3d
	jr c, jr_08c_7e01                                ; $7dc0: $38 $3f

jr_08c_7dc2:
	ld c, [hl]                                       ; $7dc2: $4e
	inc de                                           ; $7dc3: $13
	ld a, a                                          ; $7dc4: $7f
	ld d, e                                          ; $7dc5: $53
	ld a, $52                                        ; $7dc6: $3e $52

jr_08c_7dc8:
	ld d, c                                          ; $7dc8: $51
	ld e, l                                          ; $7dc9: $5d
	ld e, d                                          ; $7dca: $5a
	xor h                                            ; $7dcb: $ac
	sub h                                            ; $7dcc: $94
	ld a, b                                          ; $7dcd: $78
	ld b, b                                          ; $7dce: $40
	add hl, sp                                       ; $7dcf: $39
	ld b, a                                          ; $7dd0: $47
	ld a, [hl-]                                      ; $7dd1: $3a
	jr c, jr_08c_7e1e                                ; $7dd2: $38 $4a

jr_08c_7dd4:
	ld d, c                                          ; $7dd4: $51
	ld c, h                                          ; $7dd5: $4c
	and b                                            ; $7dd6: $a0
	ld b, b                                          ; $7dd7: $40
	ld c, l                                          ; $7dd8: $4d
	ld c, d                                          ; $7dd9: $4a
	ld c, a                                          ; $7dda: $4f
	inc [hl]                                         ; $7ddb: $34
	db $ec                                           ; $7ddc: $ec
	add l                                            ; $7ddd: $85
	ld d, e                                          ; $7dde: $53
	inc de                                           ; $7ddf: $13
	ldh a, [c]                                       ; $7de0: $f2
	ld sp, hl                                        ; $7de1: $f9
	jr c, jr_08c_7dd4                                ; $7de2: $38 $f0

	sbc d                                            ; $7de4: $9a
	ld e, h                                          ; $7de5: $5c
	ld d, d                                          ; $7de6: $52
	ld a, c                                          ; $7de7: $79
	ld b, c                                          ; $7de8: $41
	ld c, h                                          ; $7de9: $4c

jr_08c_7dea:
	and b                                            ; $7dea: $a0
	ld d, h                                          ; $7deb: $54
	ld c, l                                          ; $7dec: $4d
	ld c, d                                          ; $7ded: $4a
	ld c, a                                          ; $7dee: $4f
	xor h                                            ; $7def: $ac
	pop af                                           ; $7df0: $f1
	ld a, [$b63e]                                    ; $7df1: $fa $3e $b6
	and b                                            ; $7df4: $a0
	cpl                                              ; $7df5: $2f
	jp hl                                            ; $7df6: $e9


	ld b, c                                          ; $7df7: $41
	add hl, bc                                       ; $7df8: $09
	ld d, h                                          ; $7df9: $54
	ld c, l                                          ; $7dfa: $4d
	ld c, e                                          ; $7dfb: $4b
	inc [hl]                                         ; $7dfc: $34
	ret                                              ; $7dfd: $c9


	xor h                                            ; $7dfe: $ac
	sub h                                            ; $7dff: $94
	ld a, b                                          ; $7e00: $78

jr_08c_7e01:
	ld c, [hl]                                       ; $7e01: $4e
	ld a, a                                          ; $7e02: $7f
	ld d, e                                          ; $7e03: $53
	ld a, $52                                        ; $7e04: $3e $52
	ld a, c                                          ; $7e06: $79
	ld b, c                                          ; $7e07: $41
	and b                                            ; $7e08: $a0
	ld d, h                                          ; $7e09: $54
	add hl, sp                                       ; $7e0a: $39
	jr c, jr_08c_7e46                                ; $7e0b: $38 $39

	ld b, d                                          ; $7e0d: $42
	ld c, e                                          ; $7e0e: $4b
	xor h                                            ; $7e0f: $ac
	ret                                              ; $7e10: $c9


	ld c, b                                          ; $7e11: $48
	and b                                            ; $7e12: $a0
	ld l, a                                          ; $7e13: $6f
	ld b, a                                          ; $7e14: $47
	ld c, e                                          ; $7e15: $4b
	ldh a, [rAUD1LOW]                                ; $7e16: $f0 $13
	ldh a, [$63]                                     ; $7e18: $f0 $63
	ld b, h                                          ; $7e1a: $44
	ld c, c                                          ; $7e1b: $49
	inc de                                           ; $7e1c: $13
	ld [hl], a                                       ; $7e1d: $77

jr_08c_7e1e:
	jr c, jr_08c_7e72                                ; $7e1e: $38 $52

	ld d, c                                          ; $7e20: $51
	ld c, b                                          ; $7e21: $48
	and b                                            ; $7e22: $a0
	cpl                                              ; $7e23: $2f
	add sp, $55                                      ; $7e24: $e8 $55
	and c                                            ; $7e26: $a1
	pop af                                           ; $7e27: $f1
	ld a, b                                          ; $7e28: $78
	jr c, jr_08c_7dc8                                ; $7e29: $38 $9d

	ld c, [hl]                                       ; $7e2b: $4e
	ld l, h                                          ; $7e2c: $6c
	ld d, e                                          ; $7e2d: $53
	inc de                                           ; $7e2e: $13
	sub [hl]                                         ; $7e2f: $96
	dec sp                                           ; $7e30: $3b
	ccf                                              ; $7e31: $3f
	ld c, [hl]                                       ; $7e32: $4e
	ld b, c                                          ; $7e33: $41
	ld c, d                                          ; $7e34: $4a
	ld d, c                                          ; $7e35: $51
	ld c, h                                          ; $7e36: $4c
	xor b                                            ; $7e37: $a8
	ld c, d                                          ; $7e38: $4a
	ld c, a                                          ; $7e39: $4f
	inc [hl]                                         ; $7e3a: $34
	ldh a, [rAUD1LOW]                                ; $7e3b: $f0 $13
	ldh a, [$63]                                     ; $7e3d: $f0 $63
	or [hl]                                          ; $7e3f: $b6
	ld c, b                                          ; $7e40: $48
	and b                                            ; $7e41: $a0
	pop af                                           ; $7e42: $f1
	inc b                                            ; $7e43: $04
	ld d, a                                          ; $7e44: $57
	dec a                                            ; $7e45: $3d

jr_08c_7e46:
	jr c, jr_08c_7e91                                ; $7e46: $38 $49

	ld c, e                                          ; $7e48: $4b
	ld [hl], a                                       ; $7e49: $77
	jr c, jr_08c_7e9e                                ; $7e4a: $38 $52

	ld d, c                                          ; $7e4c: $51
	inc de                                           ; $7e4d: $13
	ld e, l                                          ; $7e4e: $5d
	ld e, d                                          ; $7e4f: $5a
	inc [hl]                                         ; $7e50: $34
	pop af                                           ; $7e51: $f1
	inc b                                            ; $7e52: $04
	ld c, l                                          ; $7e53: $4d
	ld b, b                                          ; $7e54: $40
	add hl, sp                                       ; $7e55: $39
	ld c, a                                          ; $7e56: $4f
	ld a, [hl-]                                      ; $7e57: $3a
	jr c, jr_08c_7ea4                                ; $7e58: $38 $4a

	ld d, c                                          ; $7e5a: $51
	ld c, h                                          ; $7e5b: $4c
	ld c, b                                          ; $7e5c: $48
	and b                                            ; $7e5d: $a0
	ldh a, [$8a]                                     ; $7e5e: $f0 $8a
	ldh a, [rHDMA2]                                  ; $7e60: $f0 $52
	jr c, jr_08c_7eae                                ; $7e62: $38 $4a

	ld d, c                                          ; $7e64: $51
	ld e, l                                          ; $7e65: $5d
	ld e, d                                          ; $7e66: $5a
	xor l                                            ; $7e67: $ad
	pop af                                           ; $7e68: $f1
	inc b                                            ; $7e69: $04
	ld c, l                                          ; $7e6a: $4d
	ld c, [hl]                                       ; $7e6b: $4e
	ld c, c                                          ; $7e6c: $49
	ld c, e                                          ; $7e6d: $4b
	inc de                                           ; $7e6e: $13
	ld [hl], a                                       ; $7e6f: $77
	ld e, [hl]                                       ; $7e70: $5e
	ld a, [hl-]                                      ; $7e71: $3a

jr_08c_7e72:
	jr c, jr_08c_7ebe                                ; $7e72: $38 $4a

	ld d, c                                          ; $7e74: $51
	ld c, b                                          ; $7e75: $48
	and b                                            ; $7e76: $a0
	ld l, a                                          ; $7e77: $6f
	inc [hl]                                         ; $7e78: $34
	db $ed                                           ; $7e79: $ed
	ret nc                                           ; $7e7a: $d0

	ld c, e                                          ; $7e7b: $4b
	ld b, [hl]                                       ; $7e7c: $46
	ld d, d                                          ; $7e7d: $52
	ld d, a                                          ; $7e7e: $57
	adc e                                            ; $7e7f: $8b
	ld e, h                                          ; $7e80: $5c
	inc de                                           ; $7e81: $13
	db $ec                                           ; $7e82: $ec
	ret c                                            ; $7e83: $d8

	ld b, c                                          ; $7e84: $41
	ld c, d                                          ; $7e85: $4a
	ld d, c                                          ; $7e86: $51
	ld c, b                                          ; $7e87: $48
	and b                                            ; $7e88: $a0
	cpl                                              ; $7e89: $2f
	ld b, b                                          ; $7e8a: $40
	ld c, l                                          ; $7e8b: $4d
	ld e, e                                          ; $7e8c: $5b
	ld d, [hl]                                       ; $7e8d: $56
	inc [hl]                                         ; $7e8e: $34
	ld a, d                                          ; $7e8f: $7a
	dec sp                                           ; $7e90: $3b

jr_08c_7e91:
	dec a                                            ; $7e91: $3d
	ldh a, [$08]                                     ; $7e92: $f0 $08
	add hl, sp                                       ; $7e94: $39
	ld d, e                                          ; $7e95: $53
	jr c, jr_08c_7ed0                                ; $7e96: $38 $38

	ld c, h                                          ; $7e98: $4c
	add hl, bc                                       ; $7e99: $09
	db $eb                                           ; $7e9a: $eb
	ld d, a                                          ; $7e9b: $57
	xor b                                            ; $7e9c: $a8
	ld a, a                                          ; $7e9d: $7f

jr_08c_7e9e:
	ld h, d                                          ; $7e9e: $62
	pop af                                           ; $7e9f: $f1
	sbc l                                            ; $7ea0: $9d
	dec sp                                           ; $7ea1: $3b
	ccf                                              ; $7ea2: $3f
	ld d, l                                          ; $7ea3: $55

jr_08c_7ea4:
	ld c, l                                          ; $7ea4: $4d
	ccf                                              ; $7ea5: $3f
	xor h                                            ; $7ea6: $ac
	ldh a, [$29]                                     ; $7ea7: $f0 $29
	ld a, $38                                        ; $7ea9: $3e $38
	ld c, d                                          ; $7eab: $4a
	ld d, c                                          ; $7eac: $51
	and b                                            ; $7ead: $a0

jr_08c_7eae:
	db $eb                                           ; $7eae: $eb
	ld d, a                                          ; $7eaf: $57
	xor b                                            ; $7eb0: $a8
	ldh a, [$4e]                                     ; $7eb1: $f0 $4e
	ld a, $38                                        ; $7eb3: $3e $38
	ld c, d                                          ; $7eb5: $4a
	ld d, c                                          ; $7eb6: $51
	ld c, h                                          ; $7eb7: $4c
	and b                                            ; $7eb8: $a0
	db $eb                                           ; $7eb9: $eb
	ld d, a                                          ; $7eba: $57
	xor b                                            ; $7ebb: $a8
	db $ec                                           ; $7ebc: $ec
	add hl, bc                                       ; $7ebd: $09

jr_08c_7ebe:
	sub b                                            ; $7ebe: $90
	ld a, $6c                                        ; $7ebf: $3e $6c
	ld b, a                                          ; $7ec1: $47
	inc de                                           ; $7ec2: $13
	ld a, b                                          ; $7ec3: $78
	dec a                                            ; $7ec4: $3d
	ld b, d                                          ; $7ec5: $42
	ld b, a                                          ; $7ec6: $47
	ld c, b                                          ; $7ec7: $48
	and b                                            ; $7ec8: $a0
	cpl                                              ; $7ec9: $2f
	ld h, h                                          ; $7eca: $64
	pop af                                           ; $7ecb: $f1
	add [hl]                                         ; $7ecc: $86
	ld h, d                                          ; $7ecd: $62
	di                                               ; $7ece: $f3
	ld d, l                                          ; $7ecf: $55

jr_08c_7ed0:
	ld e, l                                          ; $7ed0: $5d
	ccf                                              ; $7ed1: $3f
	ld c, [hl]                                       ; $7ed2: $4e
	ld h, e                                          ; $7ed3: $63
	ld e, l                                          ; $7ed4: $5d
	db $ec                                           ; $7ed5: $ec
	ret c                                            ; $7ed6: $d8

	ld b, l                                          ; $7ed7: $45
	add hl, bc                                       ; $7ed8: $09
	ld b, b                                          ; $7ed9: $40
	ld c, l                                          ; $7eda: $4d
	ld c, e                                          ; $7edb: $4b
	ldh a, [rTAC]                                    ; $7edc: $f0 $07
	inc a                                            ; $7ede: $3c
	dec sp                                           ; $7edf: $3b
	ccf                                              ; $7ee0: $3f
	ld d, d                                          ; $7ee1: $52
	ld d, c                                          ; $7ee2: $51
	inc de                                           ; $7ee3: $13
	ld e, l                                          ; $7ee4: $5d
	ld e, d                                          ; $7ee5: $5a
	ld c, b                                          ; $7ee6: $48
	dec [hl]                                         ; $7ee7: $35
	ld l, a                                          ; $7ee8: $6f
	ld c, e                                          ; $7ee9: $4b
	db $eb                                           ; $7eea: $eb
	db $f4                                           ; $7eeb: $f4
	ld c, b                                          ; $7eec: $48
	and b                                            ; $7eed: $a0
	ld b, b                                          ; $7eee: $40
	ld c, l                                          ; $7eef: $4d
	ld c, e                                          ; $7ef0: $4b
	ldh a, [rTAC]                                    ; $7ef1: $f0 $07
	inc a                                            ; $7ef3: $3c
	dec sp                                           ; $7ef4: $3b
	ccf                                              ; $7ef5: $3f
	ld d, d                                          ; $7ef6: $52
	ld d, c                                          ; $7ef7: $51
	ld e, l                                          ; $7ef8: $5d
	ld e, d                                          ; $7ef9: $5a
	xor h                                            ; $7efa: $ac
	db $eb                                           ; $7efb: $eb
	db $f4                                           ; $7efc: $f4
	inc de                                           ; $7efd: $13
	adc e                                            ; $7efe: $8b
	ld e, h                                          ; $7eff: $5c
	ld b, a                                          ; $7f00: $47
	ld a, [hl-]                                      ; $7f01: $3a
	ld c, l                                          ; $7f02: $4d
	ld a, [hl-]                                      ; $7f03: $3a
	jr c, jr_08c_7f47                                ; $7f04: $38 $41

	ld c, d                                          ; $7f06: $4a
	ld d, c                                          ; $7f07: $51
	ld c, b                                          ; $7f08: $48
	and b                                            ; $7f09: $a0
	ld b, b                                          ; $7f0a: $40
	ld c, l                                          ; $7f0b: $4d
	ld c, e                                          ; $7f0c: $4b
	ld b, b                                          ; $7f0d: $40
	add hl, sp                                       ; $7f0e: $39
	ld c, d                                          ; $7f0f: $4a
	ld d, c                                          ; $7f10: $51
	ld e, l                                          ; $7f11: $5d
	ld e, d                                          ; $7f12: $5a
	xor h                                            ; $7f13: $ac
	ld l, a                                          ; $7f14: $6f
	ld c, e                                          ; $7f15: $4b
	ldh a, [$64]                                     ; $7f16: $f0 $64
	ld a, [hl-]                                      ; $7f18: $3a
	ld b, c                                          ; $7f19: $41
	ld c, d                                          ; $7f1a: $4a
	ld d, c                                          ; $7f1b: $51
	and b                                            ; $7f1c: $a0
	cpl                                              ; $7f1d: $2f
	pop hl                                           ; $7f1e: $e1
	ld b, a                                          ; $7f1f: $47
	ld h, e                                          ; $7f20: $63
	ld d, a                                          ; $7f21: $57
	ld c, c                                          ; $7f22: $49
	db $ed                                           ; $7f23: $ed
	ld l, c                                          ; $7f24: $69
	ld b, [hl]                                       ; $7f25: $46
	ld c, [hl]                                       ; $7f26: $4e
	ld b, l                                          ; $7f27: $45
	add hl, bc                                       ; $7f28: $09
	ld [$ad1e], a                                    ; $7f29: $ea $1e $ad
	ld c, d                                          ; $7f2c: $4a
	ld c, a                                          ; $7f2d: $4f
	inc [hl]                                         ; $7f2e: $34
	ld l, a                                          ; $7f2f: $6f
	ld c, e                                          ; $7f30: $4b
	db $ec                                           ; $7f31: $ec
	reti                                             ; $7f32: $d9


	ld c, b                                          ; $7f33: $48
	and b                                            ; $7f34: $a0
	ld [$a91e], a                                    ; $7f35: $ea $1e $a9
	ld c, d                                          ; $7f38: $4a
	ld c, a                                          ; $7f39: $4f
	inc [hl]                                         ; $7f3a: $34
	ld l, a                                          ; $7f3b: $6f
	ld c, e                                          ; $7f3c: $4b
	adc e                                            ; $7f3d: $8b
	ld e, h                                          ; $7f3e: $5c
	ld b, a                                          ; $7f3f: $47
	inc de                                           ; $7f40: $13
	ld a, [hl-]                                      ; $7f41: $3a
	ld c, l                                          ; $7f42: $4d
	ld a, [hl-]                                      ; $7f43: $3a
	jr c, jr_08c_7f88                                ; $7f44: $38 $42

	ld c, d                                          ; $7f46: $4a

jr_08c_7f47:
	ld c, b                                          ; $7f47: $48
	and b                                            ; $7f48: $a0
	ld c, d                                          ; $7f49: $4a
	ld c, a                                          ; $7f4a: $4f
	inc [hl]                                         ; $7f4b: $34
	ld l, a                                          ; $7f4c: $6f
	ld c, e                                          ; $7f4d: $4b
	xor $05                                          ; $7f4e: $ee $05
	ld c, d                                          ; $7f50: $4a
	ld d, c                                          ; $7f51: $51
	ld c, b                                          ; $7f52: $48
	and b                                            ; $7f53: $a0
	add hl, bc                                       ; $7f54: $09
	jp z, $f0ac                                      ; $7f55: $ca $ac $f0

	add hl, de                                       ; $7f58: $19
	ld b, a                                          ; $7f59: $47
	sub [hl]                                         ; $7f5a: $96
	ld d, a                                          ; $7f5b: $57
	ld d, d                                          ; $7f5c: $52
	ld a, $66                                        ; $7f5d: $3e $66
	add hl, sp                                       ; $7f5f: $39
	inc a                                            ; $7f60: $3c
	and c                                            ; $7f61: $a1
	cpl                                              ; $7f62: $2f
	ld b, e                                          ; $7f63: $43
	ld b, b                                          ; $7f64: $40
	add hl, sp                                       ; $7f65: $39
	ld b, h                                          ; $7f66: $44
	ld c, h                                          ; $7f67: $4c
	xor b                                            ; $7f68: $a8
	db $eb                                           ; $7f69: $eb
	ld d, d                                          ; $7f6a: $52
	and b                                            ; $7f6b: $a0
	db $eb                                           ; $7f6c: $eb
	ld h, a                                          ; $7f6d: $67
	inc de                                           ; $7f6e: $13
	pop af                                           ; $7f6f: $f1
	jp nz, $f041                                     ; $7f70: $c2 $41 $f0

	add hl, de                                       ; $7f73: $19
	ld b, a                                          ; $7f74: $47
	ld h, a                                          ; $7f75: $67
	ld d, l                                          ; $7f76: $55
	ld b, c                                          ; $7f77: $41
	ld c, d                                          ; $7f78: $4a
	ld a, $66                                        ; $7f79: $3e $66
	add hl, sp                                       ; $7f7b: $39
	ld c, h                                          ; $7f7c: $4c
	and b                                            ; $7f7d: $a0
	cpl                                              ; $7f7e: $2f
	db $ec                                           ; $7f7f: $ec
	ld h, e                                          ; $7f80: $63
	ld h, d                                          ; $7f81: $62
	ldh a, [hDisp1_WX]                                     ; $7f82: $f0 $96
	ld d, c                                          ; $7f84: $51
	ld c, c                                          ; $7f85: $49
	db $ec                                           ; $7f86: $ec
	ld a, [bc]                                       ; $7f87: $0a

jr_08c_7f88:
	add hl, bc                                       ; $7f88: $09
	xor $1e                                          ; $7f89: $ee $1e
	xor l                                            ; $7f8b: $ad
	ldh a, [$0b]                                     ; $7f8c: $f0 $0b
	ld h, d                                          ; $7f8e: $62
	pop af                                           ; $7f8f: $f1
	inc b                                            ; $7f90: $04
	dec sp                                           ; $7f91: $3b
	ccf                                              ; $7f92: $3f
	xor h                                            ; $7f93: $ac
	db $ec                                           ; $7f94: $ec
	db $ed                                           ; $7f95: $ed
	ld d, l                                          ; $7f96: $55
	ld c, l                                          ; $7f97: $4d
	ld d, d                                          ; $7f98: $52
	ld a, c                                          ; $7f99: $79
	ld b, c                                          ; $7f9a: $41
	inc a                                            ; $7f9b: $3c
	ld c, b                                          ; $7f9c: $48
	and c                                            ; $7f9d: $a1
	cp [hl]                                          ; $7f9e: $be
	xor b                                            ; $7f9f: $a8
	jp z, Jump_08c_5aac                              ; $7fa0: $ca $ac $5a

	add hl, sp                                       ; $7fa3: $39
	ld d, c                                          ; $7fa4: $51
	ld c, l                                          ; $7fa5: $4d
	ld a, e                                          ; $7fa6: $7b
	jr c, jr_08c_7fe1                                ; $7fa7: $38 $38

	ld c, d                                          ; $7fa9: $4a
	ld d, c                                          ; $7faa: $51
	inc a                                            ; $7fab: $3c
	and c                                            ; $7fac: $a1
	jp z, Jump_08c_5aac                              ; $7fad: $ca $ac $5a

	add hl, sp                                       ; $7fb0: $39
	ld d, c                                          ; $7fb1: $51
	ld c, l                                          ; $7fb2: $4d
	ld a, e                                          ; $7fb3: $7b
	inc de                                           ; $7fb4: $13
	jr c, jr_08c_7fef                                ; $7fb5: $38 $38

	ld c, d                                          ; $7fb7: $4a
	ld a, $66                                        ; $7fb8: $3e $66
	add hl, sp                                       ; $7fba: $39
	inc a                                            ; $7fbb: $3c
	and c                                            ; $7fbc: $a1
	cpl                                              ; $7fbd: $2f
	db $ec                                           ; $7fbe: $ec
	rst SubAFromDE                                          ; $7fbf: $df
	ld b, a                                          ; $7fc0: $47
	ld c, e                                          ; $7fc1: $4b
	db $ec                                           ; $7fc2: $ec
	ld l, h                                          ; $7fc3: $6c
	ld b, h                                          ; $7fc4: $44
	ld c, h                                          ; $7fc5: $4c
	add hl, bc                                       ; $7fc6: $09
	ld b, b                                          ; $7fc7: $40
	ld b, c                                          ; $7fc8: $41
	ld a, [hl-]                                      ; $7fc9: $3a
	sbc d                                            ; $7fca: $9a
	add d                                            ; $7fcb: $82
	ld h, e                                          ; $7fcc: $63
	ld a, [hl-]                                      ; $7fcd: $3a
	ld d, l                                          ; $7fce: $55
	ccf                                              ; $7fcf: $3f
	ld c, a                                          ; $7fd0: $4f
	xor h                                            ; $7fd1: $ac
	jr c, @+$3a                                      ; $7fd2: $38 $38

	ld c, c                                          ; $7fd4: $49
	ld [hl], a                                       ; $7fd5: $77
	jr c, @+$54                                      ; $7fd6: $38 $52

	ld d, c                                          ; $7fd8: $51
	ld c, b                                          ; $7fd9: $48
	and b                                            ; $7fda: $a0
	ld b, b                                          ; $7fdb: $40
	ld b, c                                          ; $7fdc: $41
	ld a, [hl-]                                      ; $7fdd: $3a
	pop af                                           ; $7fde: $f1
	ld a, [de]                                       ; $7fdf: $1a
	pop af                                           ; $7fe0: $f1

jr_08c_7fe1:
	ld l, d                                          ; $7fe1: $6a
	pop af                                           ; $7fe2: $f1
	inc bc                                           ; $7fe3: $03
	ld a, [hl-]                                      ; $7fe4: $3a
	ld d, h                                          ; $7fe5: $54
	ld c, c                                          ; $7fe6: $49
	inc de                                           ; $7fe7: $13
	add d                                            ; $7fe8: $82
	ld h, e                                          ; $7fe9: $63
	ld a, [hl-]                                      ; $7fea: $3a
	ld d, l                                          ; $7feb: $55
	ccf                                              ; $7fec: $3f
	ld c, a                                          ; $7fed: $4f
	ld c, b                                          ; $7fee: $48

jr_08c_7fef:
	and b                                            ; $7fef: $a0
	ldh a, [$0c]                                     ; $7ff0: $f0 $0c
	inc a                                            ; $7ff2: $3c
	ld a, [hl-]                                      ; $7ff3: $3a
	ld e, l                                          ; $7ff4: $5d
	ld c, l                                          ; $7ff5: $4d
	ld a, e                                          ; $7ff6: $7b
	inc de                                           ; $7ff7: $13
	ld b, l                                          ; $7ff8: $45
	inc a                                            ; $7ff9: $3c
	dec sp                                           ; $7ffa: $3b
	dec a                                            ; $7ffb: $3d
	ld c, b                                          ; $7ffc: $48
	and b                                            ; $7ffd: $a0
	cpl                                              ; $7ffe: $2f
	db $eb                                           ; $7fff: $eb
