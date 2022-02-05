; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $090", ROMX[$4000], BANK[$90]

	adc e                                            ; $4000: $8b
	ld e, h                                          ; $4001: $5c
	ld c, d                                          ; $4002: $4a
	ld d, c                                          ; $4003: $51
	and b                                            ; $4004: $a0
	ld d, h                                          ; $4005: $54
	add hl, sp                                       ; $4006: $39
	jr c, @+$3b                                      ; $4007: $38 $39

	pop af                                           ; $4009: $f1
	db $28, $f0                                      ; $400a: $28 $f0
	ld b, h                                          ; $400c: $44
	ld c, a                                          ; $400d: $4f
	xor h                                            ; $400e: $ac
	ldh a, [$5c]                                     ; $400f: $f0 $5c
	ld d, l                                          ; $4011: $55
	ld a, [hl-]                                      ; $4012: $3a
	jr c, jr_090_4061                                ; $4013: $38 $4c

	and b                                            ; $4015: $a0
	ld d, h                                          ; $4016: $54
	add hl, sp                                       ; $4017: $39
	jr c, jr_090_4053                                ; $4018: $38 $39

	db $ec                                           ; $401a: $ec
	ld l, c                                          ; $401b: $69
	xor h                                            ; $401c: $ac
	xor $27                                          ; $401d: $ee $27
	xor h                                            ; $401f: $ac
	pop de                                           ; $4020: $d1
	ld a, b                                          ; $4021: $78
	ld a, [hl-]                                      ; $4022: $3a
	jr c, jr_090_406f                                ; $4023: $38 $4a

	ld d, c                                          ; $4025: $51
	and b                                            ; $4026: $a0
	cpl                                              ; $4027: $2f
	ld [hl-], a                                      ; $4028: $32
	ld l, e                                          ; $4029: $6b
	ld h, d                                          ; $402a: $62
	ldh a, [rAUDVOL]                                 ; $402b: $f0 $24
	db $ec                                           ; $402d: $ec
	ld d, $36                                        ; $402e: $16 $36
	inc sp                                           ; $4030: $33
	add hl, bc                                       ; $4031: $09
	cpl                                              ; $4032: $2f
	add sp, $0c                                      ; $4033: $e8 $0c
	add hl, bc                                       ; $4035: $09
	cpl                                              ; $4036: $2f
	add sp, $27                                      ; $4037: $e8 $27
	add hl, bc                                       ; $4039: $09
	cpl                                              ; $403a: $2f
	ld [hl-], a                                      ; $403b: $32
	pop af                                           ; $403c: $f1
	ld a, e                                          ; $403d: $7b
	ldh a, [hDisp1_WY]                                     ; $403e: $f0 $95
	ld c, e                                          ; $4040: $4b
	ldh a, [$6d]                                     ; $4041: $f0 $6d
	ld e, c                                          ; $4043: $59
	ldh a, [$27]                                     ; $4044: $f0 $27
	ld h, d                                          ; $4046: $62
	inc de                                           ; $4047: $13
	ld d, c                                          ; $4048: $51
	ld c, [hl]                                       ; $4049: $4e
	ld d, h                                          ; $404a: $54
	ld c, c                                          ; $404b: $49
	xor b                                            ; $404c: $a8
	xor a                                            ; $404d: $af
	or l                                             ; $404e: $b5
	and e                                            ; $404f: $a3
	cpl                                              ; $4050: $2f
	ld [hl-], a                                      ; $4051: $32
	db $eb                                           ; $4052: $eb

jr_090_4053:
	rst SubAFromHL                                          ; $4053: $d7
	ld b, d                                          ; $4054: $42
	inc de                                           ; $4055: $13
	ldh a, [$99]                                     ; $4056: $f0 $99
	sub b                                            ; $4058: $90
	ld h, d                                          ; $4059: $62
	adc e                                            ; $405a: $8b
	ldh a, [$be]                                     ; $405b: $f0 $be
	xor b                                            ; $405d: $a8
	xor a                                            ; $405e: $af
	or l                                             ; $405f: $b5
	and e                                            ; $4060: $a3

jr_090_4061:
	cpl                                              ; $4061: $2f
	ld [hl-], a                                      ; $4062: $32
	ldh a, [$3d]                                     ; $4063: $f0 $3d
	pop af                                           ; $4065: $f1
	ld [bc], a                                       ; $4066: $02
	ldh a, [$9d]                                     ; $4067: $f0 $9d
	ldh a, [$74]                                     ; $4069: $f0 $74
	ldh a, [$7a]                                     ; $406b: $f0 $7a
	ld d, e                                          ; $406d: $53
	adc e                                            ; $406e: $8b

jr_090_406f:
	ld e, h                                          ; $406f: $5c
	xor b                                            ; $4070: $a8
	xor a                                            ; $4071: $af
	or l                                             ; $4072: $b5
	and e                                            ; $4073: $a3
	cpl                                              ; $4074: $2f
	ld [hl-], a                                      ; $4075: $32
	db $ec                                           ; $4076: $ec
	jr c, @-$0d                                      ; $4077: $38 $f1

	ret c                                            ; $4079: $d8

	ldh a, [$a7]                                     ; $407a: $f0 $a7
	ld b, d                                          ; $407c: $42
	adc b                                            ; $407d: $88
	ld h, d                                          ; $407e: $62
	inc de                                           ; $407f: $13
	db $ed                                           ; $4080: $ed
	ld bc, $4e38                                     ; $4081: $01 $38 $4e
	xor b                                            ; $4084: $a8
	xor a                                            ; $4085: $af
	or l                                             ; $4086: $b5
	and e                                            ; $4087: $a3
	cpl                                              ; $4088: $2f
	ld [hl-], a                                      ; $4089: $32
	ld b, [hl]                                       ; $408a: $46
	ld c, [hl]                                       ; $408b: $4e
	ldh a, [$6d]                                     ; $408c: $f0 $6d
	ld e, c                                          ; $408e: $59
	ldh a, [$27]                                     ; $408f: $f0 $27
	ld b, d                                          ; $4091: $42
	inc de                                           ; $4092: $13
	db $eb                                           ; $4093: $eb
	daa                                              ; $4094: $27
	ld d, e                                          ; $4095: $53
	inc de                                           ; $4096: $13
	ld a, a                                          ; $4097: $7f
	ld b, a                                          ; $4098: $47
	sub [hl]                                         ; $4099: $96
	dec sp                                           ; $409a: $3b
	ccf                                              ; $409b: $3f
	jr c, jr_090_40ec                                ; $409c: $38 $4e

	ld d, b                                          ; $409e: $50
	ld a, $38                                        ; $409f: $3e $38
	xor b                                            ; $40a1: $a8
	xor a                                            ; $40a2: $af
	or l                                             ; $40a3: $b5
	and e                                            ; $40a4: $a3
	cpl                                              ; $40a5: $2f
	ld [hl-], a                                      ; $40a6: $32
	pop af                                           ; $40a7: $f1
	dec hl                                           ; $40a8: $2b
	adc c                                            ; $40a9: $89
	ld b, d                                          ; $40aa: $42
	sbc d                                            ; $40ab: $9a
	ld c, e                                          ; $40ac: $4b
	xor h                                            ; $40ad: $ac
	ld b, [hl]                                       ; $40ae: $46
	ld d, d                                          ; $40af: $52
	ld d, a                                          ; $40b0: $57
	ldh a, [$a4]                                     ; $40b1: $f0 $a4
	ld e, [hl]                                       ; $40b3: $5e
	ccf                                              ; $40b4: $3f
	jr c, jr_090_40f1                                ; $40b5: $38 $3a

	jr c, jr_090_4061                                ; $40b7: $38 $a8

	xor a                                            ; $40b9: $af
	or l                                             ; $40ba: $b5
	and e                                            ; $40bb: $a3
	cpl                                              ; $40bc: $2f

jr_090_40bd:
	ld [hl-], a                                      ; $40bd: $32
	adc e                                            ; $40be: $8b
	ldh a, [$72]                                     ; $40bf: $f0 $72
	ld d, e                                          ; $40c1: $53
	inc [hl]                                         ; $40c2: $34
	pop af                                           ; $40c3: $f1
	ld l, [hl]                                       ; $40c4: $6e
	ld b, c                                          ; $40c5: $41
	ld a, [hl-]                                      ; $40c6: $3a
	inc de                                           ; $40c7: $13
	pop hl                                           ; $40c8: $e1
	ld b, a                                          ; $40c9: $47
	ldh a, [$3d]                                     ; $40ca: $f0 $3d
	ldh a, [rDIV]                                    ; $40cc: $f0 $04
	ld [hl], e                                       ; $40ce: $73
	sub e                                            ; $40cf: $93
	ld a, $3f                                        ; $40d0: $3e $3f
	jr c, jr_090_4122                                ; $40d2: $38 $4e

	xor b                                            ; $40d4: $a8
	xor a                                            ; $40d5: $af
	or l                                             ; $40d6: $b5
	and e                                            ; $40d7: $a3
	cpl                                              ; $40d8: $2f
	ld [hl-], a                                      ; $40d9: $32
	ld [$5329], a                                    ; $40da: $ea $29 $53
	inc de                                           ; $40dd: $13
	add a                                            ; $40de: $87
	adc e                                            ; $40df: $8b
	ld e, h                                          ; $40e0: $5c
	xor b                                            ; $40e1: $a8
	xor a                                            ; $40e2: $af
	or l                                             ; $40e3: $b5
	and e                                            ; $40e4: $a3
	cpl                                              ; $40e5: $2f
	ld [hl-], a                                      ; $40e6: $32
	ldh a, [$b2]                                     ; $40e7: $f0 $b2
	ldh a, [rLY]                                     ; $40e9: $f0 $44
	pop af                                           ; $40eb: $f1

jr_090_40ec:
	sbc b                                            ; $40ec: $98
	db $ec                                           ; $40ed: $ec
	add hl, hl                                       ; $40ee: $29
	xor b                                            ; $40ef: $a8
	xor a                                            ; $40f0: $af

jr_090_40f1:
	or l                                             ; $40f1: $b5
	and e                                            ; $40f2: $a3
	cpl                                              ; $40f3: $2f

jr_090_40f4:
	ld [hl-], a                                      ; $40f4: $32
	add e                                            ; $40f5: $83
	ldh a, [$2f]                                     ; $40f6: $f0 $2f
	ld e, c                                          ; $40f8: $59
	db $ec                                           ; $40f9: $ec
	add hl, hl                                       ; $40fa: $29
	xor b                                            ; $40fb: $a8
	xor a                                            ; $40fc: $af
	or l                                             ; $40fd: $b5
	and e                                            ; $40fe: $a3
	cpl                                              ; $40ff: $2f
	ld [hl-], a                                      ; $4100: $32
	ldh a, [$3f]                                     ; $4101: $f0 $3f
	ld c, e                                          ; $4103: $4b
	ldh a, [$64]                                     ; $4104: $f0 $64
	jr c, jr_090_40f4                                ; $4106: $38 $ec

	ret c                                            ; $4108: $d8

	inc de                                           ; $4109: $13
	ld e, l                                          ; $410a: $5d
	ld e, d                                          ; $410b: $5a
	inc [hl]                                         ; $410c: $34
	db $ed                                           ; $410d: $ed
	ld [bc], a                                       ; $410e: $02
	ld c, e                                          ; $410f: $4b
	add a                                            ; $4110: $87
	ldh a, [$64]                                     ; $4111: $f0 $64
	jr c, jr_090_40bd                                ; $4113: $38 $a8

	xor a                                            ; $4115: $af
	or l                                             ; $4116: $b5
	and e                                            ; $4117: $a3
	cpl                                              ; $4118: $2f
	ld [hl-], a                                      ; $4119: $32
	db $ec                                           ; $411a: $ec
	pop af                                           ; $411b: $f1
	ld c, e                                          ; $411c: $4b
	xor h                                            ; $411d: $ac
	pop af                                           ; $411e: $f1
	ld e, b                                          ; $411f: $58
	inc a                                            ; $4120: $3c
	ld a, [hl-]                                      ; $4121: $3a

jr_090_4122:
	ld b, d                                          ; $4122: $42
	ld c, d                                          ; $4123: $4a
	add a                                            ; $4124: $87
	ldh a, [$64]                                     ; $4125: $f0 $64
	jr c, @-$56                                      ; $4127: $38 $a8

	xor a                                            ; $4129: $af
	or l                                             ; $412a: $b5
	and e                                            ; $412b: $a3
	ld h, e                                          ; $412c: $63
	ld [hl], h                                       ; $412d: $74
	xor b                                            ; $412e: $a8
	ldh a, [c]                                       ; $412f: $f2
	ld d, h                                          ; $4130: $54
	ld c, d                                          ; $4131: $4a
	jr c, jr_090_416f                                ; $4132: $38 $3b

	ldh a, [$36]                                     ; $4134: $f0 $36
	jr c, jr_090_417c                                ; $4136: $38 $44

	ld e, c                                          ; $4138: $59
	and b                                            ; $4139: $a0
	cpl                                              ; $413a: $2f
	ld b, e                                          ; $413b: $43
	jp hl                                            ; $413c: $e9


	inc [hl]                                         ; $413d: $34
	and b                                            ; $413e: $a0
	xor $1f                                          ; $413f: $ee $1f
	xor b                                            ; $4141: $a8
	ld h, a                                          ; $4142: $67
	ld d, h                                          ; $4143: $54
	add hl, sp                                       ; $4144: $39
	inc [hl]                                         ; $4145: $34
	ld h, a                                          ; $4146: $67
	ld d, h                                          ; $4147: $54
	add hl, sp                                       ; $4148: $39
	and b                                            ; $4149: $a0
	ld e, d                                          ; $414a: $5a
	ld d, h                                          ; $414b: $54
	inc a                                            ; $414c: $3c
	ld b, b                                          ; $414d: $40
	ld b, d                                          ; $414e: $42
	push af                                          ; $414f: $f5
	ld b, c                                          ; $4150: $41
	ld d, a                                          ; $4151: $57
	ld h, d                                          ; $4152: $62
	inc de                                           ; $4153: $13
	pop af                                           ; $4154: $f1
	db $ed                                           ; $4155: $ed
	pop af                                           ; $4156: $f1
	ld h, $3e                                        ; $4157: $26 $3e
	ld b, l                                          ; $4159: $45
	add hl, sp                                       ; $415a: $39
	and b                                            ; $415b: $a0
	cpl                                              ; $415c: $2f
	ld b, e                                          ; $415d: $43
	db $ed                                           ; $415e: $ed
	ld d, a                                          ; $415f: $57
	xor h                                            ; $4160: $ac
	ld [$cdca], a                                    ; $4161: $ea $ca $cd
	and b                                            ; $4164: $a0
	xor $1f                                          ; $4165: $ee $1f
	xor b                                            ; $4167: $a8
	call $2fa0                                       ; $4168: $cd $a0 $2f
	ld b, e                                          ; $416b: $43
	db $ed                                           ; $416c: $ed
	ld d, a                                          ; $416d: $57
	xor h                                            ; $416e: $ac

jr_090_416f:
	db $ec                                           ; $416f: $ec
	ld c, [hl]                                       ; $4170: $4e
	call $eea0                                       ; $4171: $cd $a0 $ee
	daa                                              ; $4174: $27
	xor h                                            ; $4175: $ac
	ld d, h                                          ; $4176: $54
	add hl, sp                                       ; $4177: $39
	jr c, @+$3b                                      ; $4178: $38 $39

	pop af                                           ; $417a: $f1
	ld e, b                                          ; $417b: $58

jr_090_417c:
	inc a                                            ; $417c: $3c
	ld a, [hl-]                                      ; $417d: $3a
	ld c, c                                          ; $417e: $49
	ld d, h                                          ; $417f: $54
	ld e, a                                          ; $4180: $5f
	ld c, e                                          ; $4181: $4b
	inc de                                           ; $4182: $13
	db $ed                                           ; $4183: $ed
	ld l, b                                          ; $4184: $68
	ld b, h                                          ; $4185: $44
	ld a, [hl-]                                      ; $4186: $3a
	and b                                            ; $4187: $a0
	cpl                                              ; $4188: $2f
	add sp, $33                                      ; $4189: $e8 $33
	add hl, bc                                       ; $418b: $09
	xor $1f                                          ; $418c: $ee $1f
	xor b                                            ; $418e: $a8
	xor $27                                          ; $418f: $ee $27
	ld c, a                                          ; $4191: $4f
	inc [hl]                                         ; $4192: $34
	ld h, h                                          ; $4193: $64
	ldh a, [c]                                       ; $4194: $f2
	add h                                            ; $4195: $84
	ldh a, [c]                                       ; $4196: $f2
	ld b, h                                          ; $4197: $44
	ldh a, [rAUD1LEN]                                ; $4198: $f0 $11
	ldh a, [c]                                       ; $419a: $f2
	ld b, h                                          ; $419b: $44
	ldh a, [rAUD1LEN]                                ; $419c: $f0 $11
	ld e, c                                          ; $419e: $59
	xor b                                            ; $419f: $a8
	ldh a, [$0a]                                     ; $41a0: $f0 $0a
	ld d, l                                          ; $41a2: $55
	ld l, e                                          ; $41a3: $6b
	inc a                                            ; $41a4: $3c
	ldh a, [$b7]                                     ; $41a5: $f0 $b7
	ldh a, [$8c]                                     ; $41a7: $f0 $8c
	ld b, a                                          ; $41a9: $47
	call $2fa0                                       ; $41aa: $cd $a0 $2f
	add sp, $32                                      ; $41ad: $e8 $32
	add hl, bc                                       ; $41af: $09
	ld b, b                                          ; $41b0: $40
	add hl, sp                                       ; $41b1: $39
	jr c, jr_090_41ed                                ; $41b2: $38 $39

	sbc d                                            ; $41b4: $9a
	add d                                            ; $41b5: $82
	add hl, sp                                       ; $41b6: $39
	db $ec                                           ; $41b7: $ec
	or $ac                                           ; $41b8: $f6 $ac
	ldh a, [$bc]                                     ; $41ba: $f0 $bc
	ldh a, [c]                                       ; $41bc: $f2
	inc bc                                           ; $41bd: $03
	ld d, b                                          ; $41be: $50
	ld a, $55                                        ; $41bf: $3e $55
	ld a, [hl-]                                      ; $41c1: $3a
	jr c, jr_090_420e                                ; $41c2: $38 $4a

	ld d, c                                          ; $41c4: $51
	and b                                            ; $41c5: $a0
	cpl                                              ; $41c6: $2f
	ret nz                                           ; $41c7: $c0

	dec [hl]                                         ; $41c8: $35
	db $ed                                           ; $41c9: $ed
	ld l, b                                          ; $41ca: $68
	ld a, [hl-]                                      ; $41cb: $3a
	ld b, c                                          ; $41cc: $41
	ld b, h                                          ; $41cd: $44
	add hl, bc                                       ; $41ce: $09
	xor $1f                                          ; $41cf: $ee $1f
	xor b                                            ; $41d1: $a8
	xor $27                                          ; $41d2: $ee $27
	inc [hl]                                         ; $41d4: $34
	ret nz                                           ; $41d5: $c0

	and b                                            ; $41d6: $a0
	db $ec                                           ; $41d7: $ec
	inc de                                           ; $41d8: $13
	ldh a, [c]                                       ; $41d9: $f2
	db $10                                           ; $41da: $10
	ld b, h                                          ; $41db: $44
	ld a, [hl-]                                      ; $41dc: $3a
	ld e, c                                          ; $41dd: $59
	xor b                                            ; $41de: $a8
	ld h, h                                          ; $41df: $64
	pop af                                           ; $41e0: $f1
	xor c                                            ; $41e1: $a9
	jr c, @+$3c                                      ; $41e2: $38 $3a

	jr c, jr_090_4228                                ; $41e4: $38 $42

	inc a                                            ; $41e6: $3c
	ld a, [hl-]                                      ; $41e7: $3a
	ld e, c                                          ; $41e8: $59
	and b                                            ; $41e9: $a0
	cpl                                              ; $41ea: $2f
	add sp, $5f                                      ; $41eb: $e8 $5f

jr_090_41ed:
	add hl, bc                                       ; $41ed: $09
	ld e, [hl]                                       ; $41ee: $5e
	ld e, c                                          ; $41ef: $59
	dec sp                                           ; $41f0: $3b
	inc [hl]                                         ; $41f1: $34
	ld e, d                                          ; $41f2: $5a
	ld d, h                                          ; $41f3: $54
	ld e, d                                          ; $41f4: $5a
	ld d, h                                          ; $41f5: $54
	xor b                                            ; $41f6: $a8
	ld e, h                                          ; $41f7: $5c
	ld d, [hl]                                       ; $41f8: $56
	ld e, c                                          ; $41f9: $59
	xor b                                            ; $41fa: $a8
	ldh a, [$08]                                     ; $41fb: $f0 $08
	ld b, c                                          ; $41fd: $41
	ld c, c                                          ; $41fe: $49
	ld b, h                                          ; $41ff: $44
	ld e, c                                          ; $4200: $59
	and b                                            ; $4201: $a0
	cpl                                              ; $4202: $2f
	ret                                              ; $4203: $c9


	inc [hl]                                         ; $4204: $34
	ldh a, [hDisp1_LCDC]                                     ; $4205: $f0 $8f
	ld b, c                                          ; $4207: $41
	ld c, d                                          ; $4208: $4a
	jr c, jr_090_425f                                ; $4209: $38 $54

	add hl, sp                                       ; $420b: $39
	ld b, l                                          ; $420c: $45
	add hl, bc                                       ; $420d: $09

jr_090_420e:
	call nc, $a845                                   ; $420e: $d4 $45 $a8
	xor $27                                          ; $4211: $ee $27
	ldh a, [$f3]                                     ; $4213: $f0 $f3
	ld c, l                                          ; $4215: $4d
	ccf                                              ; $4216: $3f
	ld a, [hl-]                                      ; $4217: $3a
	jr c, jr_090_4269                                ; $4218: $38 $4f

	ld b, c                                          ; $421a: $41
	and b                                            ; $421b: $a0
	cpl                                              ; $421c: $2f
	add sp, -$62                                     ; $421d: $e8 $9e
	add hl, bc                                       ; $421f: $09
	ld b, h                                          ; $4220: $44
	dec sp                                           ; $4221: $3b
	dec a                                            ; $4222: $3d
	ld d, b                                          ; $4223: $50
	jr c, jr_090_425e                                ; $4224: $38 $38

	ld a, [hl-]                                      ; $4226: $3a
	ld e, c                                          ; $4227: $59

jr_090_4228:
	xor b                                            ; $4228: $a8
	xor $27                                          ; $4229: $ee $27
	inc [hl]                                         ; $422b: $34
	ld l, l                                          ; $422c: $6d
	ldh a, [$0d]                                     ; $422d: $f0 $0d
	inc [hl]                                         ; $422f: $34
	di                                               ; $4230: $f3
	inc l                                            ; $4231: $2c
	di                                               ; $4232: $f3
	dec l                                            ; $4233: $2d
	ld e, b                                          ; $4234: $58
	ld b, c                                          ; $4235: $41
	ld b, a                                          ; $4236: $47
	inc de                                           ; $4237: $13
	ldh a, [rHDMA3]                                  ; $4238: $f0 $53
	dec sp                                           ; $423a: $3b
	ccf                                              ; $423b: $3f
	ld l, h                                          ; $423c: $6c
	dec a                                            ; $423d: $3d
	jr c, jr_090_427a                                ; $423e: $38 $3a

	ld e, c                                          ; $4240: $59
	and b                                            ; $4241: $a0
	ld c, a                                          ; $4242: $4f
	add hl, sp                                       ; $4243: $39
	inc [hl]                                         ; $4244: $34
	ldh a, [c]                                       ; $4245: $f2
	adc [hl]                                         ; $4246: $8e
	ldh a, [hLCDCIntHandlerIdx]                                     ; $4247: $f0 $81
	ld b, h                                          ; $4249: $44
	ld a, [hl-]                                      ; $424a: $3a
	ld e, c                                          ; $424b: $59
	xor b                                            ; $424c: $a8
	ldh a, [c]                                       ; $424d: $f2
	ld d, h                                          ; $424e: $54
	dec sp                                           ; $424f: $3b
	ccf                                              ; $4250: $3f
	xor h                                            ; $4251: $ac
	ld d, c                                          ; $4252: $51
	sbc l                                            ; $4253: $9d
	pop af                                           ; $4254: $f1
	db $ed                                           ; $4255: $ed
	dec sp                                           ; $4256: $3b
	ld h, c                                          ; $4257: $61
	ld d, [hl]                                       ; $4258: $56
	xor $1f                                          ; $4259: $ee $1f
	ld b, h                                          ; $425b: $44
	ld b, l                                          ; $425c: $45
	ld c, h                                          ; $425d: $4c

jr_090_425e:
	and b                                            ; $425e: $a0

jr_090_425f:
	cpl                                              ; $425f: $2f
	add sp, $66                                      ; $4260: $e8 $66
	add hl, bc                                       ; $4262: $09
	db $ec                                           ; $4263: $ec
	ld a, [de]                                       ; $4264: $1a
	xor h                                            ; $4265: $ac
	ldh a, [$7b]                                     ; $4266: $f0 $7b
	ld h, l                                          ; $4268: $65

jr_090_4269:
	ldh a, [$2b]                                     ; $4269: $f0 $2b
	ld b, a                                          ; $426b: $47
	ld a, [hl-]                                      ; $426c: $3a
	ld c, [hl]                                       ; $426d: $4e
	ld b, d                                          ; $426e: $42
	ld c, a                                          ; $426f: $4f
	inc de                                           ; $4270: $13
	ldh a, [$5c]                                     ; $4271: $f0 $5c
	ld d, l                                          ; $4273: $55
	ld a, [hl-]                                      ; $4274: $3a
	jr c, jr_090_42c1                                ; $4275: $38 $4a

	ld d, c                                          ; $4277: $51
	ld c, h                                          ; $4278: $4c
	and b                                            ; $4279: $a0

jr_090_427a:
	cpl                                              ; $427a: $2f
	add sp, $67                                      ; $427b: $e8 $67
	add hl, bc                                       ; $427d: $09
	db $ec                                           ; $427e: $ec
	ld a, [de]                                       ; $427f: $1a
	inc [hl]                                         ; $4280: $34
	db $ed                                           ; $4281: $ed
	inc d                                            ; $4282: $14
	ld h, d                                          ; $4283: $62
	inc de                                           ; $4284: $13
	ldh a, [rHDMA1]                                  ; $4285: $f0 $51
	dec sp                                           ; $4287: $3b
	ccf                                              ; $4288: $3f
	ldh a, [$08]                                     ; $4289: $f0 $08
	ld a, $38                                        ; $428b: $3e $38
	ld a, [hl-]                                      ; $428d: $3a
	ld e, c                                          ; $428e: $59
	and b                                            ; $428f: $a0
	cpl                                              ; $4290: $2f
	add sp, -$60                                     ; $4291: $e8 $a0
	add hl, bc                                       ; $4293: $09
	ld b, b                                          ; $4294: $40
	add hl, sp                                       ; $4295: $39
	jr c, jr_090_42d1                                ; $4296: $38 $39

	ldh a, [rBGP]                                    ; $4298: $f0 $47
	ld c, e                                          ; $429a: $4b
	inc [hl]                                         ; $429b: $34
	xor $27                                          ; $429c: $ee $27
	ld d, e                                          ; $429e: $53
	inc de                                           ; $429f: $13
	ld h, h                                          ; $42a0: $64
	db $f4                                           ; $42a1: $f4
	halt                                             ; $42a2: $76
	db $f4                                           ; $42a3: $f4
	inc e                                            ; $42a4: $1c
	ld a, $3f                                        ; $42a5: $3e $3f
	ld b, [hl]                                       ; $42a7: $46
	ldh a, [rSB]                                     ; $42a8: $f0 $01
	ld h, c                                          ; $42aa: $61
	ld d, [hl]                                       ; $42ab: $56
	ld h, h                                          ; $42ac: $64
	add hl, sp                                       ; $42ad: $39
	xor b                                            ; $42ae: $a8
	ld b, [hl]                                       ; $42af: $46
	ld c, e                                          ; $42b0: $4b
	ld c, e                                          ; $42b1: $4b
	ld c, e                                          ; $42b2: $4b
	ld c, e                                          ; $42b3: $4b
	ld c, e                                          ; $42b4: $4b
	and b                                            ; $42b5: $a0
	xor $27                                          ; $42b6: $ee $27
	xor b                                            ; $42b8: $a8
	ld l, d                                          ; $42b9: $6a
	ld l, b                                          ; $42ba: $68
	inc [hl]                                         ; $42bb: $34
	ldh a, [$6e]                                     ; $42bc: $f0 $6e
	ld e, c                                          ; $42be: $59
	ld l, c                                          ; $42bf: $69
	ld b, a                                          ; $42c0: $47

jr_090_42c1:
	inc de                                           ; $42c1: $13
	ldh a, [rLCDC]                                   ; $42c2: $f0 $40
	ld d, a                                          ; $42c4: $57
	dec a                                            ; $42c5: $3d
	jr c, jr_090_4312                                ; $42c6: $38 $4a

	ld d, c                                          ; $42c8: $51
	and b                                            ; $42c9: $a0
	cpl                                              ; $42ca: $2f
	ld b, e                                          ; $42cb: $43
	ldh a, [$6e]                                     ; $42cc: $f0 $6e
	ld e, c                                          ; $42ce: $59
	ld l, c                                          ; $42cf: $69
	xor c                                            ; $42d0: $a9

jr_090_42d1:
	ldh a, [c]                                       ; $42d1: $f2
	ld l, d                                          ; $42d2: $6a
	ld c, l                                          ; $42d3: $4d
	ld c, [hl]                                       ; $42d4: $4e
	ld b, l                                          ; $42d5: $45
	xor b                                            ; $42d6: $a8
	pop af                                           ; $42d7: $f1
	ld [hl], $f7                                     ; $42d8: $36 $f7
	inc de                                           ; $42da: $13
	ld d, c                                          ; $42db: $51
	ld c, [hl]                                       ; $42dc: $4e
	inc a                                            ; $42dd: $3c
	ld c, a                                          ; $42de: $4f
	ld b, l                                          ; $42df: $45
	and b                                            ; $42e0: $a0
	ld c, d                                          ; $42e1: $4a
	ld c, a                                          ; $42e2: $4f
	ld c, b                                          ; $42e3: $48
	xor h                                            ; $42e4: $ac
	ldh a, [rLCDC]                                   ; $42e5: $f0 $40
	ld d, a                                          ; $42e7: $57
	dec a                                            ; $42e8: $3d
	jr c, jr_090_433a                                ; $42e9: $38 $4f

	ld b, c                                          ; $42eb: $41
	and b                                            ; $42ec: $a0
	cpl                                              ; $42ed: $2f
	ld b, e                                          ; $42ee: $43
	jr c, jr_090_4329                                ; $42ef: $38 $38

	ld b, l                                          ; $42f1: $45
	xor b                                            ; $42f2: $a8
	ld e, e                                          ; $42f3: $5b
	ld d, [hl]                                       ; $42f4: $56
	ld b, [hl]                                       ; $42f5: $46
	xor h                                            ; $42f6: $ac
	db $ec                                           ; $42f7: $ec
	ld c, [hl]                                       ; $42f8: $4e
	ld h, a                                          ; $42f9: $67
	ld d, h                                          ; $42fa: $54
	add hl, sp                                       ; $42fb: $39
	and b                                            ; $42fc: $a0
	xor $1f                                          ; $42fd: $ee $1f
	and b                                            ; $42ff: $a0
	ld b, [hl]                                       ; $4300: $46
	dec sp                                           ; $4301: $3b
	inc [hl]                                         ; $4302: $34
	ldh a, [$6e]                                     ; $4303: $f0 $6e
	ld e, c                                          ; $4305: $59
	ld l, c                                          ; $4306: $69
	ld b, h                                          ; $4307: $44
	xor b                                            ; $4308: $a8
	ldh a, [$0a]                                     ; $4309: $f0 $0a
	ld d, l                                          ; $430b: $55
	ldh a, [$0a]                                     ; $430c: $f0 $0a
	ld d, l                                          ; $430e: $55
	and b                                            ; $430f: $a0
	cpl                                              ; $4310: $2f
	ld b, e                                          ; $4311: $43

jr_090_4312:
	ldh a, [$b5]                                     ; $4312: $f0 $b5
	inc [hl]                                         ; $4314: $34
	db $eb                                           ; $4315: $eb
	db $fc                                           ; $4316: $fc
	xor b                                            ; $4317: $a8
	ld b, b                                          ; $4318: $40
	ld b, c                                          ; $4319: $41
	ld a, [hl-]                                      ; $431a: $3a
	ld b, a                                          ; $431b: $47
	pop af                                           ; $431c: $f1
	ld d, $53                                        ; $431d: $16 $53
	ld a, [hl-]                                      ; $431f: $3a
	ld d, l                                          ; $4320: $55
	ccf                                              ; $4321: $3f
	ld c, a                                          ; $4322: $4f
	xor h                                            ; $4323: $ac
	ldh a, [$6e]                                     ; $4324: $f0 $6e
	ld e, c                                          ; $4326: $59
	ld l, c                                          ; $4327: $69
	ld c, e                                          ; $4328: $4b

jr_090_4329:
	ldh a, [$e1]                                     ; $4329: $f0 $e1
	ldh a, [rSB]                                     ; $432b: $f0 $01
	ld a, [hl-]                                      ; $432d: $3a
	jr c, jr_090_4375                                ; $432e: $38 $45

	and b                                            ; $4330: $a0
	cpl                                              ; $4331: $2f
	ld b, e                                          ; $4332: $43
	db $eb                                           ; $4333: $eb
	db $fc                                           ; $4334: $fc
	xor b                                            ; $4335: $a8
	ld d, h                                          ; $4336: $54
	ld c, l                                          ; $4337: $4d
	ld c, d                                          ; $4338: $4a
	ldh a, [c]                                       ; $4339: $f2

jr_090_433a:
	adc [hl]                                         ; $433a: $8e
	pop af                                           ; $433b: $f1
	cp [hl]                                          ; $433c: $be
	ld a, $3d                                        ; $433d: $3e $3d
	and c                                            ; $433f: $a1
	xor $1f                                          ; $4340: $ee $1f
	xor b                                            ; $4342: $a8
	db $ec                                           ; $4343: $ec
	rst SubAFromHL                                          ; $4344: $d7
	ldh a, [$29]                                     ; $4345: $f0 $29
	ld a, $38                                        ; $4347: $3e $38
	ld c, d                                          ; $4349: $4a
	ld d, c                                          ; $434a: $51
	and b                                            ; $434b: $a0
	cpl                                              ; $434c: $2f
	ld b, e                                          ; $434d: $43
	ld b, b                                          ; $434e: $40
	ld c, l                                          ; $434f: $4d
	ld c, e                                          ; $4350: $4b
	inc [hl]                                         ; $4351: $34
	db $ec                                           ; $4352: $ec
	cp c                                             ; $4353: $b9
	and b                                            ; $4354: $a0
	ld b, [hl]                                       ; $4355: $46
	dec sp                                           ; $4356: $3b
	inc [hl]                                         ; $4357: $34
	ldh a, [$08]                                     ; $4358: $f0 $08

jr_090_435a:
	ld d, b                                          ; $435a: $50
	xor b                                            ; $435b: $a8
	ldh a, [$35]                                     ; $435c: $f0 $35
	ld [hl], e                                       ; $435e: $73
	add c                                            ; $435f: $81
	ldh a, [$03]                                     ; $4360: $f0 $03
	ld d, e                                          ; $4362: $53
	xor h                                            ; $4363: $ac
	jr c, @+$3d                                      ; $4364: $38 $3b

	ldh a, [$36]                                     ; $4366: $f0 $36
	jr c, jr_090_435a                                ; $4368: $38 $f0

	ld b, b                                          ; $436a: $40
	dec sp                                           ; $436b: $3b
	ccf                                              ; $436c: $3f
	ld d, d                                          ; $436d: $52
	ld d, c                                          ; $436e: $51
	ld b, l                                          ; $436f: $45
	and b                                            ; $4370: $a0
	cpl                                              ; $4371: $2f
	ld b, e                                          ; $4372: $43
	rst JumpTable                                          ; $4373: $c7
	ld b, h                                          ; $4374: $44

jr_090_4375:
	ld c, h                                          ; $4375: $4c
	and b                                            ; $4376: $a0
	xor $27                                          ; $4377: $ee $27
	ldh a, [rSTAT]                                   ; $4379: $f0 $41
	ld c, a                                          ; $437b: $4f
	xor h                                            ; $437c: $ac
	ld b, b                                          ; $437d: $40
	add hl, sp                                       ; $437e: $39
	ld [hl], d                                       ; $437f: $72
	ld e, [hl]                                       ; $4380: $5e
	ld c, [hl]                                       ; $4381: $4e
	inc a                                            ; $4382: $3c
	ld a, [hl-]                                      ; $4383: $3a
	ld c, b                                          ; $4384: $48
	and b                                            ; $4385: $a0
	cpl                                              ; $4386: $2f
	ld b, e                                          ; $4387: $43
	db $eb                                           ; $4388: $eb
	db $fc                                           ; $4389: $fc
	inc [hl]                                         ; $438a: $34
	ldh a, [$8a]                                     ; $438b: $f0 $8a
	ldh a, [rHDMA2]                                  ; $438d: $f0 $52
	jr c, jr_090_43a4                                ; $438f: $38 $13

	inc a                                            ; $4391: $3c
	ld d, b                                          ; $4392: $50
	inc [hl]                                         ; $4393: $34
	pop af                                           ; $4394: $f1
	or e                                             ; $4395: $b3
	ld hl, sp+$3a                                    ; $4396: $f8 $3a
	ld b, a                                          ; $4398: $47
	ld l, h                                          ; $4399: $6c
	ld e, [hl]                                       ; $439a: $5e
	ld c, [hl]                                       ; $439b: $4e
	inc a                                            ; $439c: $3c
	ld c, a                                          ; $439d: $4f
	ld c, h                                          ; $439e: $4c
	and b                                            ; $439f: $a0
	xor $27                                          ; $43a0: $ee $27
	dec sp                                           ; $43a2: $3b
	ccf                                              ; $43a3: $3f

jr_090_43a4:
	xor h                                            ; $43a4: $ac
	db $ed                                           ; $43a5: $ed
	ld h, a                                          ; $43a6: $67
	dec sp                                           ; $43a7: $3b
	pop af                                           ; $43a8: $f1
	rla                                              ; $43a9: $17
	jr c, jr_090_43f6                                ; $43aa: $38 $4a

	ld d, c                                          ; $43ac: $51
	inc a                                            ; $43ad: $3c
	xor c                                            ; $43ae: $a9
	ld b, b                                          ; $43af: $40
	ld b, c                                          ; $43b0: $41
	ld a, [hl-]                                      ; $43b1: $3a
	ld b, d                                          ; $43b2: $42
	db $ed                                           ; $43b3: $ed
	cp e                                             ; $43b4: $bb
	ld a, [hl-]                                      ; $43b5: $3a
	and b                                            ; $43b6: $a0
	cpl                                              ; $43b7: $2f
	ld b, e                                          ; $43b8: $43
	ldh a, [$08]                                     ; $43b9: $f0 $08
	inc [hl]                                         ; $43bb: $34
	ldh a, [$08]                                     ; $43bc: $f0 $08
	ld d, b                                          ; $43be: $50
	inc [hl]                                         ; $43bf: $34
	db $eb                                           ; $43c0: $eb

jr_090_43c1:
	db $fc                                           ; $43c1: $fc
	xor b                                            ; $43c2: $a8
	adc e                                            ; $43c3: $8b
	ldh a, [$72]                                     ; $43c4: $f0 $72
	ld b, d                                          ; $43c6: $42
	di                                               ; $43c7: $f3
	jp c, $3c44                                      ; $43c8: $da $44 $3c

	ld d, b                                          ; $43cb: $50
	ld e, b                                          ; $43cc: $58
	xor h                                            ; $43cd: $ac
	ld b, b                                          ; $43ce: $40
	add hl, sp                                       ; $43cf: $39
	ld [hl], a                                       ; $43d0: $77
	add hl, sp                                       ; $43d1: $39
	ld c, c                                          ; $43d2: $49
	ld c, h                                          ; $43d3: $4c
	and b                                            ; $43d4: $a0
	ld e, e                                          ; $43d5: $5b
	ld d, [hl]                                       ; $43d6: $56
	ld b, [hl]                                       ; $43d7: $46
	xor h                                            ; $43d8: $ac
	db $ed                                           ; $43d9: $ed
	ld h, a                                          ; $43da: $67
	dec sp                                           ; $43db: $3b
	pop af                                           ; $43dc: $f1
	rla                                              ; $43dd: $17
	jr c, jr_090_43c1                                ; $43de: $38 $e1

	ld c, e                                          ; $43e0: $4b
	inc de                                           ; $43e1: $13
	ldh a, [$64]                                     ; $43e2: $f0 $64
	jr c, jr_090_4430                                ; $43e4: $38 $4a

	ld d, c                                          ; $43e6: $51
	inc a                                            ; $43e7: $3c
	and c                                            ; $43e8: $a1
	cpl                                              ; $43e9: $2f
	ld b, e                                          ; $43ea: $43
	ld b, b                                          ; $43eb: $40
	inc [hl]                                         ; $43ec: $34
	ld b, b                                          ; $43ed: $40
	ld b, c                                          ; $43ee: $41
	ld a, [hl-]                                      ; $43ef: $3a
	ld d, h                                          ; $43f0: $54
	ld c, c                                          ; $43f1: $49
	ld a, [hl-]                                      ; $43f2: $3a
	jr c, @+$47                                      ; $43f3: $38 $45

	and b                                            ; $43f5: $a0

jr_090_43f6:
	cp [hl]                                          ; $43f6: $be
	xor c                                            ; $43f7: $a9
	ld b, b                                          ; $43f8: $40
	ld c, l                                          ; $43f9: $4d
	ld a, [hl-]                                      ; $43fa: $3a
	ld d, b                                          ; $43fb: $50
	inc [hl]                                         ; $43fc: $34
	jr c, jr_090_4437                                ; $43fd: $38 $38

	ld c, d                                          ; $43ff: $4a
	ld d, c                                          ; $4400: $51
	and b                                            ; $4401: $a0
	cpl                                              ; $4402: $2f
	ld [hl-], a                                      ; $4403: $32
	db $eb                                           ; $4404: $eb
	db $fc                                           ; $4405: $fc
	dec sp                                           ; $4406: $3b
	ccf                                              ; $4407: $3f
	xor h                                            ; $4408: $ac
	ldh a, [$32]                                     ; $4409: $f0 $32
	ldh a, [$2f]                                     ; $440b: $f0 $2f
	ld [hl], e                                       ; $440d: $73
	ld c, c                                          ; $440e: $49
	ld d, c                                          ; $440f: $51
	ld c, [hl]                                       ; $4410: $4e
	ld d, h                                          ; $4411: $54
	ld c, c                                          ; $4412: $49
	inc de                                           ; $4413: $13
	add d                                            ; $4414: $82
	add hl, sp                                       ; $4415: $39
	ld b, l                                          ; $4416: $45
	ld a, [hl-]                                      ; $4417: $3a
	ld [hl], h                                       ; $4418: $74
	ld c, b                                          ; $4419: $48
	and e                                            ; $441a: $a3
	ld b, b                                          ; $441b: $40
	ld c, l                                          ; $441c: $4d
	ld e, e                                          ; $441d: $5b
	ld d, [hl]                                       ; $441e: $56
	xor h                                            ; $441f: $ac
	ld e, d                                          ; $4420: $5a
	ld d, h                                          ; $4421: $54
	ld b, a                                          ; $4422: $47
	pop af                                           ; $4423: $f1
	ld c, $38                                        ; $4424: $0e $38
	ldh a, [$2c]                                     ; $4426: $f0 $2c
	ld b, a                                          ; $4428: $47
	db $ec                                           ; $4429: $ec
	rlca                                             ; $442a: $07
	and c                                            ; $442b: $a1
	cpl                                              ; $442c: $2f
	add sp, -$29                                     ; $442d: $e8 $d7
	add hl, bc                                       ; $442f: $09

jr_090_4430:
	ld l, e                                          ; $4430: $6b
	inc a                                            ; $4431: $3c
	ldh a, [rAUD4LEN]                                ; $4432: $f0 $20
	ld e, c                                          ; $4434: $59
	ldh a, [$6d]                                     ; $4435: $f0 $6d

jr_090_4437:
	ld h, l                                          ; $4437: $65
	inc de                                           ; $4438: $13
	ld a, $3f                                        ; $4439: $3e $3f
	jr c, jr_090_448b                                ; $443b: $38 $4e

	inc a                                            ; $443d: $3c
	ld a, [hl-]                                      ; $443e: $3a
	and c                                            ; $443f: $a1
	cpl                                              ; $4440: $2f
	add sp, -$28                                     ; $4441: $e8 $d8
	add hl, bc                                       ; $4443: $09
	xor $1f                                          ; $4444: $ee $1f
	xor b                                            ; $4446: $a8
	ldh a, [$0a]                                     ; $4447: $f0 $0a
	ld d, l                                          ; $4449: $55
	ld h, a                                          ; $444a: $67
	ld d, h                                          ; $444b: $54
	add hl, sp                                       ; $444c: $39
	and b                                            ; $444d: $a0
	cpl                                              ; $444e: $2f
	add sp, -$27                                     ; $444f: $e8 $d9
	add hl, bc                                       ; $4451: $09
	ldh a, [$7e]                                     ; $4452: $f0 $7e
	inc [hl]                                         ; $4454: $34
	db $eb                                           ; $4455: $eb
	add c                                            ; $4456: $81
	ld e, b                                          ; $4457: $58
	ld e, c                                          ; $4458: $59
	ld b, c                                          ; $4459: $41
	xor c                                            ; $445a: $a9
	xor $27                                          ; $445b: $ee $27
	ld b, d                                          ; $445d: $42
	db $ec                                           ; $445e: $ec
	push af                                          ; $445f: $f5
	ld c, a                                          ; $4460: $4f
	ld b, d                                          ; $4461: $42
	ld a, [hl-]                                      ; $4462: $3a
	ld b, c                                          ; $4463: $41
	inc a                                            ; $4464: $3c
	inc de                                           ; $4465: $13
	ld l, e                                          ; $4466: $6b
	ld c, a                                          ; $4467: $4f

jr_090_4468:
	ld a, [hl-]                                      ; $4468: $3a
	jr c, jr_090_44b0                                ; $4469: $38 $45

	ld e, c                                          ; $446b: $59
	and b                                            ; $446c: $a0
	xor $27                                          ; $446d: $ee $27
	inc [hl]                                         ; $446f: $34
	inc h                                            ; $4470: $24
	pop af                                           ; $4471: $f1
	add hl, de                                       ; $4472: $19
	ld e, b                                          ; $4473: $58
	jr c, jr_090_4468                                ; $4474: $38 $f2

	inc b                                            ; $4476: $04
	inc a                                            ; $4477: $3c
	ld d, b                                          ; $4478: $50
	inc de                                           ; $4479: $13
	db $eb                                           ; $447a: $eb
	pop af                                           ; $447b: $f1
	ld b, d                                          ; $447c: $42
	ld h, h                                          ; $447d: $64
	ldh a, [$a3]                                     ; $447e: $f0 $a3
	ld d, e                                          ; $4480: $53
	ld d, a                                          ; $4481: $57
	ld a, e                                          ; $4482: $7b
	inc a                                            ; $4483: $3c
	ld d, a                                          ; $4484: $57
	inc de                                           ; $4485: $13
	ld b, h                                          ; $4486: $44
	dec sp                                           ; $4487: $3b
	dec a                                            ; $4488: $3d
	inc a                                            ; $4489: $3c
	ld d, b                                          ; $448a: $50

jr_090_448b:
	xor h                                            ; $448b: $ac
	ld b, [hl]                                       ; $448c: $46
	ld d, d                                          ; $448d: $52
	ld d, a                                          ; $448e: $57
	pop af                                           ; $448f: $f1
	ld a, d                                          ; $4490: $7a
	ld h, d                                          ; $4491: $62
	pop af                                           ; $4492: $f1
	ld c, $63                                        ; $4493: $0e $63
	ld a, [hl-]                                      ; $4495: $3a
	jr c, jr_090_44d9                                ; $4496: $38 $41

	ld b, h                                          ; $4498: $44
	and b                                            ; $4499: $a0
	cpl                                              ; $449a: $2f
	ld b, b                                          ; $449b: $40
	ld c, l                                          ; $449c: $4d
	ld a, [hl-]                                      ; $449d: $3a
	ld d, b                                          ; $449e: $50
	inc [hl]                                         ; $449f: $34
	jp hl                                            ; $44a0: $e9


	xor a                                            ; $44a1: $af
	ld c, h                                          ; $44a2: $4c
	add hl, bc                                       ; $44a3: $09
	xor $1f                                          ; $44a4: $ee $1f
	inc [hl]                                         ; $44a6: $34
	ld b, [hl]                                       ; $44a7: $46
	ld d, a                                          ; $44a8: $57
	ld d, e                                          ; $44a9: $53
	ld c, c                                          ; $44aa: $49
	add hl, sp                                       ; $44ab: $39
	xor b                                            ; $44ac: $a8
	ld e, b                                          ; $44ad: $58
	ld b, [hl]                                       ; $44ae: $46
	inc [hl]                                         ; $44af: $34

jr_090_44b0:
	ld c, e                                          ; $44b0: $4b
	ld d, a                                          ; $44b1: $57
	ld e, h                                          ; $44b2: $5c
	dec sp                                           ; $44b3: $3b
	ccf                                              ; $44b4: $3f
	ld [hl], d                                       ; $44b5: $72
	ld c, [hl]                                       ; $44b6: $4e
	sub a                                            ; $44b7: $97
	and b                                            ; $44b8: $a0
	cpl                                              ; $44b9: $2f
	sbc $e1                                          ; $44ba: $de $e1
	ld a, [hl-]                                      ; $44bc: $3a
	ld b, d                                          ; $44bd: $42
	and c                                            ; $44be: $a1
	ld e, [hl]                                       ; $44bf: $5e
	ld e, c                                          ; $44c0: $59
	dec sp                                           ; $44c1: $3b
	inc [hl]                                         ; $44c2: $34
	ldh a, [$d8]                                     ; $44c3: $f0 $d8
	dec sp                                           ; $44c5: $3b
	ld e, d                                          ; $44c6: $5a
	jr c, @+$3c                                      ; $44c7: $38 $3a

	ld e, c                                          ; $44c9: $59
	ld b, [hl]                                       ; $44ca: $46
	xor b                                            ; $44cb: $a8
	xor $27                                          ; $44cc: $ee $27
	ldh a, [c]                                       ; $44ce: $f2
	adc c                                            ; $44cf: $89
	jr c, jr_090_4533                                ; $44d0: $38 $61

	ld d, [hl]                                       ; $44d2: $56
	add hl, sp                                       ; $44d3: $39
	ld b, l                                          ; $44d4: $45
	and b                                            ; $44d5: $a0
	cpl                                              ; $44d6: $2f

jr_090_44d7:
	ld b, b                                          ; $44d7: $40
	ld c, l                                          ; $44d8: $4d

jr_090_44d9:
	ld c, e                                          ; $44d9: $4b
	inc a                                            ; $44da: $3c
	ld h, e                                          ; $44db: $63
	jr c, jr_090_451e                                ; $44dc: $38 $40

	add hl, sp                                       ; $44de: $39
	ld b, a                                          ; $44df: $47
	and c                                            ; $44e0: $a1
	add hl, sp                                       ; $44e1: $39
	xor $1f                                          ; $44e2: $ee $1f
	xor b                                            ; $44e4: $a8
	jr c, jr_090_451f                                ; $44e5: $38 $38

	ld b, d                                          ; $44e7: $42
	xor b                                            ; $44e8: $a8
	xor $27                                          ; $44e9: $ee $27
	inc [hl]                                         ; $44eb: $34
	ldh a, [$ab]                                     ; $44ec: $f0 $ab
	ld b, d                                          ; $44ee: $42
	adc h                                            ; $44ef: $8c
	ld b, d                                          ; $44f0: $42
	pop af                                           ; $44f1: $f1
	ld a, d                                          ; $44f2: $7a
	ld c, a                                          ; $44f3: $4f
	inc de                                           ; $44f4: $13
	ldh a, [$80]                                     ; $44f5: $f0 $80
	ldh a, [$c5]                                     ; $44f7: $f0 $c5
	inc [hl]                                         ; $44f9: $34
	adc e                                            ; $44fa: $8b
	ld e, h                                          ; $44fb: $5c
	ld b, h                                          ; $44fc: $44
	dec sp                                           ; $44fd: $3b
	dec a                                            ; $44fe: $3d
	inc a                                            ; $44ff: $3c
	ld d, b                                          ; $4500: $50
	and b                                            ; $4501: $a0
	xor $27                                          ; $4502: $ee $27
	xor h                                            ; $4504: $ac
	pop af                                           ; $4505: $f1
	ld c, $38                                        ; $4506: $0e $38
	ldh a, [$2c]                                     ; $4508: $f0 $2c
	ld a, $51                                        ; $450a: $3e $51
	ldh a, [$cb]                                     ; $450c: $f0 $cb
	ld h, c                                          ; $450e: $61
	ld d, [hl]                                       ; $450f: $56
	dec sp                                           ; $4510: $3b
	dec a                                            ; $4511: $3d
	and b                                            ; $4512: $a0
	cpl                                              ; $4513: $2f
	ldh a, [$08]                                     ; $4514: $f0 $08
	ld d, b                                          ; $4516: $50
	inc [hl]                                         ; $4517: $34
	ld [$0947], a                                    ; $4518: $ea $47 $09
	ld e, [hl]                                       ; $451b: $5e
	ld e, c                                          ; $451c: $59
	dec sp                                           ; $451d: $3b

jr_090_451e:
	inc [hl]                                         ; $451e: $34

jr_090_451f:
	ldh a, [rHDMA1]                                  ; $451f: $f0 $51
	dec sp                                           ; $4521: $3b
	ccf                                              ; $4522: $3f
	ld d, l                                          ; $4523: $55
	ld c, l                                          ; $4524: $4d
	ld c, [hl]                                       ; $4525: $4e
	ld b, d                                          ; $4526: $42
	xor c                                            ; $4527: $a9
	ld e, e                                          ; $4528: $5b
	ld d, [hl]                                       ; $4529: $56
	ld b, [hl]                                       ; $452a: $46
	xor h                                            ; $452b: $ac
	ld d, h                                          ; $452c: $54
	ld c, l                                          ; $452d: $4d
	ld c, c                                          ; $452e: $49
	ld d, h                                          ; $452f: $54
	ld c, l                                          ; $4530: $4d
	ld c, a                                          ; $4531: $4f
	ld h, h                                          ; $4532: $64

jr_090_4533:
	ldh a, [$c8]                                     ; $4533: $f0 $c8
	jr c, jr_090_44d7                                ; $4535: $38 $a0

	cpl                                              ; $4537: $2f
	ld [hl-], a                                      ; $4538: $32
	add hl, sp                                       ; $4539: $39
	ldh a, [$d8]                                     ; $453a: $f0 $d8
	ld e, c                                          ; $453c: $59
	dec sp                                           ; $453d: $3b
	xor b                                            ; $453e: $a8
	ld l, [hl]                                       ; $453f: $6e
	ldh a, [$fe]                                     ; $4540: $f0 $fe
	ldh a, [$5a]                                     ; $4542: $f0 $5a
	ldh a, [rKEY1]                                   ; $4544: $f0 $4d
	ld b, h                                          ; $4546: $44
	ld e, c                                          ; $4547: $59
	inc sp                                           ; $4548: $33
	add hl, bc                                       ; $4549: $09
	cpl                                              ; $454a: $2f
	ldh a, [$9a]                                     ; $454b: $f0 $9a
	ld e, h                                          ; $454d: $5c
	ldh a, [rTMA]                                    ; $454e: $f0 $06
	dec sp                                           ; $4550: $3b
	ccf                                              ; $4551: $3f
	inc [hl]                                         ; $4552: $34
	db $eb                                           ; $4553: $eb
	jr c, jr_090_459b                                ; $4554: $38 $45

	add hl, bc                                       ; $4556: $09
	ld [hl], b                                       ; $4557: $70
	ld [hl], c                                       ; $4558: $71
	ld b, c                                          ; $4559: $41
	ld a, [hl-]                                      ; $455a: $3a
	ld e, b                                          ; $455b: $58
	ld e, c                                          ; $455c: $59
	jr c, @-$56                                      ; $455d: $38 $a8

	xor $27                                          ; $455f: $ee $27
	inc [hl]                                         ; $4561: $34
	db $ed                                           ; $4562: $ed
	or a                                             ; $4563: $b7
	ld a, $52                                        ; $4564: $3e $52
	ld e, c                                          ; $4566: $59
	ld d, c                                          ; $4567: $51
	and b                                            ; $4568: $a0
	cpl                                              ; $4569: $2f
	ld b, l                                          ; $456a: $45
	ld d, l                                          ; $456b: $55
	ld c, a                                          ; $456c: $4f
	ld d, d                                          ; $456d: $52
	ld b, [hl]                                       ; $456e: $46
	ld d, h                                          ; $456f: $54
	ld b, c                                          ; $4570: $41
	ld a, [hl-]                                      ; $4571: $3a
	ld b, a                                          ; $4572: $47
	pop af                                           ; $4573: $f1
	ld c, $3b                                        ; $4574: $0e $3b
	ccf                                              ; $4576: $3f
	ld c, b                                          ; $4577: $48
	add hl, bc                                       ; $4578: $09
	db $ed                                           ; $4579: $ed
	ld b, e                                          ; $457a: $43
	xor h                                            ; $457b: $ac
	db $eb                                           ; $457c: $eb
	ld h, e                                          ; $457d: $63
	ld b, c                                          ; $457e: $41
	ld b, h                                          ; $457f: $44
	ld c, a                                          ; $4580: $4f
	ld b, c                                          ; $4581: $41
	and b                                            ; $4582: $a0
	ld d, h                                          ; $4583: $54
	ld c, l                                          ; $4584: $4d
	ldh a, [$8a]                                     ; $4585: $f0 $8a
	ldh a, [rHDMA2]                                  ; $4587: $f0 $52
	jr c, jr_090_45d7                                ; $4589: $38 $4c

	and c                                            ; $458b: $a1
	cpl                                              ; $458c: $2f
	db $eb                                           ; $458d: $eb
	db $fc                                           ; $458e: $fc
	ld b, a                                          ; $458f: $47
	ld b, l                                          ; $4590: $45
	ld d, l                                          ; $4591: $55
	ldh a, [rPCM12]                                  ; $4592: $f0 $76
	ldh a, [rTMA]                                    ; $4594: $f0 $06
	add hl, sp                                       ; $4596: $39
	ld b, l                                          ; $4597: $45
	add hl, bc                                       ; $4598: $09
	ld b, b                                          ; $4599: $40
	add hl, sp                                       ; $459a: $39

jr_090_459b:
	xor c                                            ; $459b: $a9
	xor $27                                          ; $459c: $ee $27
	ld c, a                                          ; $459e: $4f
	ldh a, [$29]                                     ; $459f: $f0 $29
	ld a, $38                                        ; $45a1: $3e $38
	and b                                            ; $45a3: $a0
	cpl                                              ; $45a4: $2f
	ld [$0953], a                                    ; $45a5: $ea $53 $09
	jr c, jr_090_4605                                ; $45a8: $38 $5b

	ld h, e                                          ; $45aa: $63
	ld c, [hl]                                       ; $45ab: $4e
	xor b                                            ; $45ac: $a8
	ldh a, [hDisp0_WX]                                     ; $45ad: $f0 $89
	pop af                                           ; $45af: $f1
	daa                                              ; $45b0: $27
	ld c, d                                          ; $45b1: $4a
	ld c, a                                          ; $45b2: $4f
	ldh a, [rPCM12]                                  ; $45b3: $f0 $76
	ldh a, [rTMA]                                    ; $45b5: $f0 $06
	add hl, sp                                       ; $45b7: $39
	dec sp                                           ; $45b8: $3b
	ccf                                              ; $45b9: $3f
	xor h                                            ; $45ba: $ac
	add d                                            ; $45bb: $82
	ld e, [hl]                                       ; $45bc: $5e
	ld a, e                                          ; $45bd: $7b
	jr c, jr_090_45f8                                ; $45be: $38 $38

	ld b, d                                          ; $45c0: $42
	ld b, a                                          ; $45c1: $47
	and b                                            ; $45c2: $a0
	cpl                                              ; $45c3: $2f
	add sp, $61                                      ; $45c4: $e8 $61
	add hl, bc                                       ; $45c6: $09
	ld b, [hl]                                       ; $45c7: $46
	dec sp                                           ; $45c8: $3b
	inc [hl]                                         ; $45c9: $34
	ldh a, [$08]                                     ; $45ca: $f0 $08
	ld b, c                                          ; $45cc: $41
	ld c, c                                          ; $45cd: $49
	ld b, h                                          ; $45ce: $44
	xor b                                            ; $45cf: $a8
	xor $27                                          ; $45d0: $ee $27
	pop af                                           ; $45d2: $f1
	or c                                             ; $45d3: $b1
	dec sp                                           ; $45d4: $3b
	ld h, c                                          ; $45d5: $61
	ld d, [hl]                                       ; $45d6: $56

jr_090_45d7:
	add hl, sp                                       ; $45d7: $39
	ld a, [hl-]                                      ; $45d8: $3a
	ld [hl], h                                       ; $45d9: $74
	and b                                            ; $45da: $a0
	jr c, jr_090_463c                                ; $45db: $38 $5f

	jr c, @+$61                                      ; $45dd: $38 $5f

	ld b, [hl]                                       ; $45df: $46
	dec sp                                           ; $45e0: $3b
	ccf                                              ; $45e1: $3f
	inc de                                           ; $45e2: $13
	pop af                                           ; $45e3: $f1
	or c                                             ; $45e4: $b1
	dec sp                                           ; $45e5: $3b
	ld h, c                                          ; $45e6: $61
	ld d, [hl]                                       ; $45e7: $56
	add hl, sp                                       ; $45e8: $39
	ld a, [hl-]                                      ; $45e9: $3a
	xor b                                            ; $45ea: $a8
	ld e, d                                          ; $45eb: $5a
	ld c, l                                          ; $45ec: $4d
	ld d, e                                          ; $45ed: $53
	xor $27                                          ; $45ee: $ee $27
	ld b, a                                          ; $45f0: $47
	ldh a, [rPCM12]                                  ; $45f1: $f0 $76
	ldh a, [rTMA]                                    ; $45f3: $f0 $06
	add hl, sp                                       ; $45f5: $39
	and c                                            ; $45f6: $a1
	cpl                                              ; $45f7: $2f

jr_090_45f8:
	ld d, h                                          ; $45f8: $54
	ld b, d                                          ; $45f9: $42
	pop af                                           ; $45fa: $f1
	add [hl]                                         ; $45fb: $86
	ld b, d                                          ; $45fc: $42
	db $eb                                           ; $45fd: $eb
	and b                                            ; $45fe: $a0
	ld c, e                                          ; $45ff: $4b
	ld e, d                                          ; $4600: $5a
	add hl, sp                                       ; $4601: $39
	and c                                            ; $4602: $a1
	add hl, sp                                       ; $4603: $39
	ld e, c                                          ; $4604: $59

jr_090_4605:
	ld b, c                                          ; $4605: $41
	xor b                                            ; $4606: $a8
	db $ec                                           ; $4607: $ec
	push af                                          ; $4608: $f5
	ld e, l                                          ; $4609: $5d
	ld e, d                                          ; $460a: $5a
	xor h                                            ; $460b: $ac
	xor $27                                          ; $460c: $ee $27
	ld b, d                                          ; $460e: $42
	ld h, h                                          ; $460f: $64
	pop af                                           ; $4610: $f1
	add hl, de                                       ; $4611: $19
	push af                                          ; $4612: $f5
	rst $38                                          ; $4613: $ff
	jr c, jr_090_4671                                ; $4614: $38 $5b

	ld d, [hl]                                       ; $4616: $56
	inc de                                           ; $4617: $13
	pop af                                           ; $4618: $f1
	ld c, $5e                                        ; $4619: $0e $5e
	ld a, [hl-]                                      ; $461b: $3a
	jr c, @+$3c                                      ; $461c: $38 $3a

	ld [hl], h                                       ; $461e: $74
	and b                                            ; $461f: $a0
	cpl                                              ; $4620: $2f
	add sp, $62                                      ; $4621: $e8 $62
	and c                                            ; $4623: $a1
	sbc b                                            ; $4624: $98
	ldh a, [$03]                                     ; $4625: $f0 $03
	ldh a, [rAUD4LEN]                                ; $4627: $f0 $20
	ld e, c                                          ; $4629: $59
	inc a                                            ; $462a: $3c
	ld b, [hl]                                       ; $462b: $46
	xor b                                            ; $462c: $a8
	db $eb                                           ; $462d: $eb
	ret c                                            ; $462e: $d8

	ld c, h                                          ; $462f: $4c
	and b                                            ; $4630: $a0
	cpl                                              ; $4631: $2f
	ld d, h                                          ; $4632: $54
	ld b, d                                          ; $4633: $42
	db $f4                                           ; $4634: $f4
	ld l, a                                          ; $4635: $6f
	ld b, d                                          ; $4636: $42
	db $eb                                           ; $4637: $eb
	and b                                            ; $4638: $a0
	ld c, e                                          ; $4639: $4b
	ld e, d                                          ; $463a: $5a
	add hl, sp                                       ; $463b: $39

jr_090_463c:
	and c                                            ; $463c: $a1
	xor $27                                          ; $463d: $ee $27
	inc [hl]                                         ; $463f: $34
	db $f4                                           ; $4640: $f4
	ld l, a                                          ; $4641: $6f
	ld c, e                                          ; $4642: $4b
	ld l, [hl]                                       ; $4643: $6e
	ld b, h                                          ; $4644: $44
	ld a, [hl-]                                      ; $4645: $3a
	and b                                            ; $4646: $a0
	ld d, h                                          ; $4647: $54
	ld d, h                                          ; $4648: $54
	ld l, [hl]                                       ; $4649: $6e
	ld b, h                                          ; $464a: $44
	ld e, c                                          ; $464b: $59
	and b                                            ; $464c: $a0
	cpl                                              ; $464d: $2f
	add sp, -$4c                                     ; $464e: $e8 $b4
	and c                                            ; $4650: $a1
	ld b, b                                          ; $4651: $40
	add hl, sp                                       ; $4652: $39
	ld a, $45                                        ; $4653: $3e $45
	add hl, sp                                       ; $4655: $39
	xor b                                            ; $4656: $a8
	ldh a, [$0a]                                     ; $4657: $f0 $0a
	ld d, l                                          ; $4659: $55
	inc [hl]                                         ; $465a: $34
	ldh a, [$0a]                                     ; $465b: $f0 $0a
	ld d, l                                          ; $465d: $55
	ldh a, [c]                                       ; $465e: $f2
	ld l, h                                          ; $465f: $6c
	and b                                            ; $4660: $a0
	cpl                                              ; $4661: $2f
	add sp, $17                                      ; $4662: $e8 $17
	add hl, bc                                       ; $4664: $09
	db $ec                                           ; $4665: $ec
	add e                                            ; $4666: $83
	ld e, e                                          ; $4667: $5b
	ld d, [hl]                                       ; $4668: $56
	ld a, [hl-]                                      ; $4669: $3a
	ld d, l                                          ; $466a: $55
	ccf                                              ; $466b: $3f
	ld c, a                                          ; $466c: $4f
	inc de                                           ; $466d: $13
	jr c, jr_090_46a8                                ; $466e: $38 $38

	ld c, a                                          ; $4670: $4f

jr_090_4671:
	ld b, c                                          ; $4671: $41
	xor b                                            ; $4672: $a8
	ldh a, [$0a]                                     ; $4673: $f0 $0a
	ld d, l                                          ; $4675: $55
	ld a, d                                          ; $4676: $7a
	ld d, a                                          ; $4677: $57
	dec a                                            ; $4678: $3d
	jr c, jr_090_46c0                                ; $4679: $38 $45

	ld e, c                                          ; $467b: $59
	and b                                            ; $467c: $a0
	cpl                                              ; $467d: $2f
	add sp, $37                                      ; $467e: $e8 $37
	add hl, bc                                       ; $4680: $09

jr_090_4681:
	ldh a, [$08]                                     ; $4681: $f0 $08
	ld b, c                                          ; $4683: $41
	ld c, c                                          ; $4684: $49
	ld b, a                                          ; $4685: $47
	ld e, c                                          ; $4686: $59
	xor b                                            ; $4687: $a8
	di                                               ; $4688: $f3
	ld b, h                                          ; $4689: $44
	dec sp                                           ; $468a: $3b
	ccf                                              ; $468b: $3f
	ld c, a                                          ; $468c: $4f
	add a                                            ; $468d: $87
	ldh a, [$5b]                                     ; $468e: $f0 $5b
	ldh a, [$5e]                                     ; $4690: $f0 $5e
	ld e, c                                          ; $4692: $59
	and c                                            ; $4693: $a1
	ld d, d                                          ; $4694: $52
	dec a                                            ; $4695: $3d
	ld d, h                                          ; $4696: $54
	ld d, h                                          ; $4697: $54
	ld b, h                                          ; $4698: $44
	ld e, c                                          ; $4699: $59
	and b                                            ; $469a: $a0
	cpl                                              ; $469b: $2f
	add sp, -$6a                                     ; $469c: $e8 $96
	add hl, bc                                       ; $469e: $09
	xor $1f                                          ; $469f: $ee $1f
	inc [hl]                                         ; $46a1: $34
	jr c, jr_090_46dc                                ; $46a2: $38 $38

	ld b, d                                          ; $46a4: $42
	xor b                                            ; $46a5: $a8
	xor $27                                          ; $46a6: $ee $27

jr_090_46a8:
	inc [hl]                                         ; $46a8: $34
	ld d, e                                          ; $46a9: $53
	ld d, d                                          ; $46aa: $52
	ld b, c                                          ; $46ab: $41
	ld a, $3f                                        ; $46ac: $3e $3f

jr_090_46ae:
	inc de                                           ; $46ae: $13
	sbc c                                            ; $46af: $99
	dec sp                                           ; $46b0: $3b
	ccf                                              ; $46b1: $3f
	ld c, [hl]                                       ; $46b2: $4e
	inc a                                            ; $46b3: $3c
	ld d, b                                          ; $46b4: $50
	and b                                            ; $46b5: $a0
	cpl                                              ; $46b6: $2f
	ld c, a                                          ; $46b7: $4f
	dec sp                                           ; $46b8: $3b
	ld c, c                                          ; $46b9: $49
	ld d, c                                          ; $46ba: $51
	ld [hl], b                                       ; $46bb: $70
	jr c, jr_090_46ae                                ; $46bc: $38 $f0

	jr z, jr_090_470f                                ; $46be: $28 $4f

jr_090_46c0:
	ld b, [hl]                                       ; $46c0: $46
	ld c, [hl]                                       ; $46c1: $4e
	ld b, c                                          ; $46c2: $41
	ld b, h                                          ; $46c3: $44
	ld e, l                                          ; $46c4: $5d
	ld e, d                                          ; $46c5: $5a
	add hl, bc                                       ; $46c6: $09
	ld d, h                                          ; $46c7: $54
	ld d, h                                          ; $46c8: $54
	ld b, l                                          ; $46c9: $45
	ld d, a                                          ; $46ca: $57
	ld d, c                                          ; $46cb: $51
	ld [hl], b                                       ; $46cc: $70
	jr c, @-$0e                                      ; $46cd: $38 $f0

	jr z, jr_090_470b                                ; $46cf: $28 $3a

	ld b, c                                          ; $46d1: $41
	ccf                                              ; $46d2: $3f
	xor h                                            ; $46d3: $ac
	xor $27                                          ; $46d4: $ee $27
	inc [hl]                                         ; $46d6: $34
	pop af                                           ; $46d7: $f1
	ld c, h                                          ; $46d8: $4c
	ldh a, [$61]                                     ; $46d9: $f0 $61
	ld c, d                                          ; $46db: $4a

jr_090_46dc:
	ld e, h                                          ; $46dc: $5c
	ld a, [hl-]                                      ; $46dd: $3a
	ld e, c                                          ; $46de: $59
	jr c, jr_090_4681                                ; $46df: $38 $a0

	cpl                                              ; $46e1: $2f
	ld c, a                                          ; $46e2: $4f
	dec sp                                           ; $46e3: $3b
	ld c, c                                          ; $46e4: $49
	db $ed                                           ; $46e5: $ed
	ld h, c                                          ; $46e6: $61
	ld c, a                                          ; $46e7: $4f
	ld a, b                                          ; $46e8: $78
	ld a, [hl-]                                      ; $46e9: $3a
	ld e, h                                          ; $46ea: $5c
	ld d, [hl]                                       ; $46eb: $56
	ld c, b                                          ; $46ec: $48
	add hl, bc                                       ; $46ed: $09

jr_090_46ee:
	xor $27                                          ; $46ee: $ee $27
	inc [hl]                                         ; $46f0: $34
	pop af                                           ; $46f1: $f1
	ld b, $f1                                        ; $46f2: $06 $f1
	ld a, $3e                                        ; $46f4: $3e $3e
	ld c, c                                          ; $46f6: $49
	ld d, l                                          ; $46f7: $55
	ld b, l                                          ; $46f8: $45
	and b                                            ; $46f9: $a0
	or h                                             ; $46fa: $b4
	xor h                                            ; $46fb: $ac
	db $eb                                           ; $46fc: $eb
	ld d, d                                          ; $46fd: $52
	ld b, l                                          ; $46fe: $45
	and b                                            ; $46ff: $a0
	cpl                                              ; $4700: $2f
	ld b, e                                          ; $4701: $43
	ld b, b                                          ; $4702: $40
	add hl, sp                                       ; $4703: $39
	ld b, h                                          ; $4704: $44
	ld c, h                                          ; $4705: $4c
	xor b                                            ; $4706: $a8
	db $eb                                           ; $4707: $eb
	ld d, d                                          ; $4708: $52
	and b                                            ; $4709: $a0
	add hl, sp                                       ; $470a: $39

jr_090_470b:
	ld h, e                                          ; $470b: $63
	ld e, c                                          ; $470c: $59
	dec sp                                           ; $470d: $3b
	xor b                                            ; $470e: $a8

jr_090_470f:
	db $ec                                           ; $470f: $ec
	inc de                                           ; $4710: $13
	ld h, h                                          ; $4711: $64
	pop af                                           ; $4712: $f1
	xor c                                            ; $4713: $a9
	ld d, e                                          ; $4714: $53
	xor h                                            ; $4715: $ac
	adc $38                                          ; $4716: $ce $38
	ld c, [hl]                                       ; $4718: $4e
	ld c, h                                          ; $4719: $4c
	ld e, c                                          ; $471a: $59
	and b                                            ; $471b: $a0
	cpl                                              ; $471c: $2f
	jp hl                                            ; $471d: $e9


	or a                                             ; $471e: $b7
	add hl, bc                                       ; $471f: $09
	ld b, [hl]                                       ; $4720: $46
	ld b, c                                          ; $4721: $41
	ld a, [hl-]                                      ; $4722: $3a
	db $ec                                           ; $4723: $ec
	inc de                                           ; $4724: $13
	ld h, h                                          ; $4725: $64
	pop af                                           ; $4726: $f1
	xor c                                            ; $4727: $a9
	xor h                                            ; $4728: $ac
	xor $27                                          ; $4729: $ee $27
	ld c, a                                          ; $472b: $4f
	di                                               ; $472c: $f3
	or b                                             ; $472d: $b0
	dec sp                                           ; $472e: $3b
	ccf                                              ; $472f: $3f
	ld l, h                                          ; $4730: $6c
	dec a                                            ; $4731: $3d
	jr c, jr_090_476e                                ; $4732: $38 $3a

	ld [hl], h                                       ; $4734: $74
	and b                                            ; $4735: $a0
	cpl                                              ; $4736: $2f
	add sp, -$20                                     ; $4737: $e8 $e0
	add hl, bc                                       ; $4739: $09
	db $ec                                           ; $473a: $ec
	add hl, bc                                       ; $473b: $09
	xor h                                            ; $473c: $ac
	db $ec                                           ; $473d: $ec
	inc de                                           ; $473e: $13
	ld h, h                                          ; $473f: $64
	pop af                                           ; $4740: $f1
	xor c                                            ; $4741: $a9
	ld [hl], d                                       ; $4742: $72
	ccf                                              ; $4743: $3f
	dec a                                            ; $4744: $3d
	ld b, d                                          ; $4745: $42
	ld b, a                                          ; $4746: $47
	ld c, b                                          ; $4747: $48
	and b                                            ; $4748: $a0
	cpl                                              ; $4749: $2f
	jp hl                                            ; $474a: $e9


	ld a, $09                                        ; $474b: $3e $09
	xor $1f                                          ; $474d: $ee $1f
	xor b                                            ; $474f: $a8
	ld b, b                                          ; $4750: $40
	add hl, sp                                       ; $4751: $39
	jr c, @+$3b                                      ; $4752: $38 $39

	ldh a, [$78]                                     ; $4754: $f0 $78
	ld e, e                                          ; $4756: $5b
	ld b, h                                          ; $4757: $44
	ld c, h                                          ; $4758: $4c
	and b                                            ; $4759: $a0
	xor $27                                          ; $475a: $ee $27
	ld c, a                                          ; $475c: $4f
	add h                                            ; $475d: $84
	pop af                                           ; $475e: $f1
	xor c                                            ; $475f: $a9
	di                                               ; $4760: $f3
	rst SubAFromHL                                          ; $4761: $d7
	ld b, a                                          ; $4762: $47
	inc de                                           ; $4763: $13
	ld a, [hl-]                                      ; $4764: $3a
	ld d, a                                          ; $4765: $57
	dec a                                            ; $4766: $3d
	jr c, jr_090_47a3                                ; $4767: $38 $3a

	ld e, c                                          ; $4769: $59
	and b                                            ; $476a: $a0
	cpl                                              ; $476b: $2f
	jr c, jr_090_46ee                                ; $476c: $38 $80

jr_090_476e:
	inc a                                            ; $476e: $3c
	ld e, h                                          ; $476f: $5c
	dec sp                                           ; $4770: $3b
	ld c, c                                          ; $4771: $49
	ld a, [hl-]                                      ; $4772: $3a
	ld c, l                                          ; $4773: $4d
	ld c, [hl]                                       ; $4774: $4e
	ld b, l                                          ; $4775: $45
	add hl, bc                                       ; $4776: $09
	ld b, b                                          ; $4777: $40
	ld b, d                                          ; $4778: $42
	ldh a, [rBGP]                                    ; $4779: $f0 $47
	ld c, e                                          ; $477b: $4b
	xor h                                            ; $477c: $ac
	di                                               ; $477d: $f3
	dec b                                            ; $477e: $05
	adc h                                            ; $477f: $8c
	ldh a, [hDisp0_OBP1]                                     ; $4780: $f0 $87
	ld b, d                                          ; $4782: $42
	ldh a, [c]                                       ; $4783: $f2
	reti                                             ; $4784: $d9


	ld b, a                                          ; $4785: $47
	ld a, [hl-]                                      ; $4786: $3a
	dec sp                                           ; $4787: $3b
	ccf                                              ; $4788: $3f
	ld c, h                                          ; $4789: $4c
	and b                                            ; $478a: $a0
	cpl                                              ; $478b: $2f
	add sp, $14                                      ; $478c: $e8 $14
	and c                                            ; $478e: $a1
	xor $27                                          ; $478f: $ee $27
	xor h                                            ; $4791: $ac
	ld h, h                                          ; $4792: $64
	inc a                                            ; $4793: $3c
	ld a, $55                                        ; $4794: $3e $55
	ld a, [hl-]                                      ; $4796: $3a
	jr c, jr_090_47e8                                ; $4797: $38 $4f

	ld b, c                                          ; $4799: $41
	and b                                            ; $479a: $a0
	cpl                                              ; $479b: $2f
	ld a, [hl-]                                      ; $479c: $3a
	ld c, l                                          ; $479d: $4d
	ld c, [hl]                                       ; $479e: $4e
	ld c, c                                          ; $479f: $49
	jr c, jr_090_47da                                ; $47a0: $38 $38

	ld c, h                                          ; $47a2: $4c

jr_090_47a3:
	add hl, bc                                       ; $47a3: $09
	xor $1f                                          ; $47a4: $ee $1f
	xor b                                            ; $47a6: $a8
	sub d                                            ; $47a7: $92
	adc [hl]                                         ; $47a8: $8e
	ld c, [hl]                                       ; $47a9: $4e
	ld b, c                                          ; $47aa: $41
	ld b, h                                          ; $47ab: $44
	and b                                            ; $47ac: $a0
	ld l, d                                          ; $47ad: $6a
	ld [hl], d                                       ; $47ae: $72
	ccf                                              ; $47af: $3f
	ld e, h                                          ; $47b0: $5c
	dec a                                            ; $47b1: $3d
	inc [hl]                                         ; $47b2: $34
	ld a, l                                          ; $47b3: $7d
	ldh a, [$03]                                     ; $47b4: $f0 $03
	ldh a, [$35]                                     ; $47b6: $f0 $35
	ld b, d                                          ; $47b8: $42
	inc de                                           ; $47b9: $13
	db $ec                                           ; $47ba: $ec
	ldh a, [c]                                       ; $47bb: $f2
	dec [hl]                                         ; $47bc: $35
	cp e                                             ; $47bd: $bb
	ld c, h                                          ; $47be: $4c
	and b                                            ; $47bf: $a0
	cpl                                              ; $47c0: $2f
	add sp, $2f                                      ; $47c1: $e8 $2f
	add hl, bc                                       ; $47c3: $09
	ldh a, [$5a]                                     ; $47c4: $f0 $5a
	add l                                            ; $47c6: $85
	inc [hl]                                         ; $47c7: $34
	db $d3                                           ; $47c8: $d3
	xor b                                            ; $47c9: $a8
	xor $27                                          ; $47ca: $ee $27
	inc [hl]                                         ; $47cc: $34
	ld [$a8b1], a                                    ; $47cd: $ea $b1 $a8
	db $ed                                           ; $47d0: $ed
	or h                                             ; $47d1: $b4
	ld d, a                                          ; $47d2: $57
	ldh a, [c]                                       ; $47d3: $f2
	db $eb                                           ; $47d4: $eb
	and b                                            ; $47d5: $a0
	cpl                                              ; $47d6: $2f
	add sp, -$1a                                     ; $47d7: $e8 $e6
	add hl, bc                                       ; $47d9: $09

jr_090_47da:
	ld e, d                                          ; $47da: $5a
	add hl, sp                                       ; $47db: $39
	ld a, c                                          ; $47dc: $79
	xor $27                                          ; $47dd: $ee $27
	ld c, e                                          ; $47df: $4b
	inc de                                           ; $47e0: $13
	ldh a, [rAUD4LEN]                                ; $47e1: $f0 $20
	ldh a, [$35]                                     ; $47e3: $f0 $35
	ld c, d                                          ; $47e5: $4a
	ld d, c                                          ; $47e6: $51
	ld b, l                                          ; $47e7: $45

jr_090_47e8:
	ld e, c                                          ; $47e8: $59
	ld b, h                                          ; $47e9: $44
	and b                                            ; $47ea: $a0
	cpl                                              ; $47eb: $2f
	ld [hl-], a                                      ; $47ec: $32
	ld b, b                                          ; $47ed: $40
	ld b, c                                          ; $47ee: $41
	ld a, [hl-]                                      ; $47ef: $3a
	add b                                            ; $47f0: $80
	ld c, a                                          ; $47f1: $4f
	ld d, a                                          ; $47f2: $57
	ld e, e                                          ; $47f3: $5b
	ld d, [hl]                                       ; $47f4: $56
	inc de                                           ; $47f5: $13
	ld a, [hl-]                                      ; $47f6: $3a
	jr c, jr_090_483b                                ; $47f7: $38 $42

	ld b, a                                          ; $47f9: $47
	and e                                            ; $47fa: $a3
	cpl                                              ; $47fb: $2f
	add sp, -$6f                                     ; $47fc: $e8 $91
	and c                                            ; $47fe: $a1
	xor $27                                          ; $47ff: $ee $27
	ld c, e                                          ; $4801: $4b
	inc [hl]                                         ; $4802: $34
	ld a, l                                          ; $4803: $7d
	ldh a, [$03]                                     ; $4804: $f0 $03
	ldh a, [$35]                                     ; $4806: $f0 $35
	ld e, b                                          ; $4808: $58
	ld b, c                                          ; $4809: $41
	ld d, e                                          ; $480a: $53
	inc de                                           ; $480b: $13
	inc a                                            ; $480c: $3c
	ld h, e                                          ; $480d: $63
	jr c, @+$3a                                      ; $480e: $38 $38

	inc a                                            ; $4810: $3c
	ld d, b                                          ; $4811: $50
	inc de                                           ; $4812: $13
	ldh a, [c]                                       ; $4813: $f2
	ld a, b                                          ; $4814: $78
	ld a, $61                                        ; $4815: $3e $61
	ld d, [hl]                                       ; $4817: $56
	add hl, sp                                       ; $4818: $39
	and b                                            ; $4819: $a0
	ld c, e                                          ; $481a: $4b
	ld l, [hl]                                       ; $481b: $6e
	ld d, l                                          ; $481c: $55
	inc [hl]                                         ; $481d: $34
	db $ec                                           ; $481e: $ec
	ld b, h                                          ; $481f: $44
	ld e, c                                          ; $4820: $59
	and b                                            ; $4821: $a0
	cpl                                              ; $4822: $2f
	ld b, e                                          ; $4823: $43
	ld b, b                                          ; $4824: $40
	add hl, sp                                       ; $4825: $39
	ld b, h                                          ; $4826: $44
	ld c, h                                          ; $4827: $4c
	xor b                                            ; $4828: $a8
	db $eb                                           ; $4829: $eb
	ld d, d                                          ; $482a: $52
	inc a                                            ; $482b: $3c
	and b                                            ; $482c: $a0
	ldh a, [rOBP0]                                   ; $482d: $f0 $48
	ldh a, [$2c]                                     ; $482f: $f0 $2c
	ldh a, [rLY]                                     ; $4831: $f0 $44
	dec sp                                           ; $4833: $3b
	ccf                                              ; $4834: $3f
	db $ed                                           ; $4835: $ed
	jr z, jr_090_488b                                ; $4836: $28 $53

	inc de                                           ; $4838: $13
	adc $38                                          ; $4839: $ce $38

jr_090_483b:
	ld c, [hl]                                       ; $483b: $4e
	ld b, l                                          ; $483c: $45
	add hl, sp                                       ; $483d: $39
	ld c, d                                          ; $483e: $4a
	inc de                                           ; $483f: $13
	sub b                                            ; $4840: $90
	ld a, $38                                        ; $4841: $3e $38
	ld c, h                                          ; $4843: $4c
	and b                                            ; $4844: $a0
	cpl                                              ; $4845: $2f
	ldh a, [c]                                       ; $4846: $f2
	ld a, [$383e]                                    ; $4847: $fa $3e $38

jr_090_484a:
	ldh a, [rOBP0]                                   ; $484a: $f0 $48
	ldh a, [$2c]                                     ; $484c: $f0 $2c
	ld c, a                                          ; $484e: $4f
	ld [hl], d                                       ; $484f: $72
	ld c, l                                          ; $4850: $4d
	ld c, [hl]                                       ; $4851: $4e
	ld a, $4c                                        ; $4852: $3e $4c
	add hl, bc                                       ; $4854: $09
	xor $1f                                          ; $4855: $ee $1f
	xor b                                            ; $4857: $a8
	xor $27                                          ; $4858: $ee $27
	inc [hl]                                         ; $485a: $34
	ldh a, [c]                                       ; $485b: $f2
	ld a, [$383e]                                    ; $485c: $fa $3e $38
	ldh a, [rOBP0]                                   ; $485f: $f0 $48
	ldh a, [$2c]                                     ; $4861: $f0 $2c
	ld d, e                                          ; $4863: $53
	inc de                                           ; $4864: $13
	db $ec                                           ; $4865: $ec
	ld a, h                                          ; $4866: $7c
	ld e, h                                          ; $4867: $5c
	and b                                            ; $4868: $a0
	cpl                                              ; $4869: $2f
	db $ed                                           ; $486a: $ed

jr_090_486b:
	sub d                                            ; $486b: $92
	ld a, [hl-]                                      ; $486c: $3a
	ld b, c                                          ; $486d: $41
	db $ec                                           ; $486e: $ec
	ret c                                            ; $486f: $d8

	and c                                            ; $4870: $a1
	ld e, d                                          ; $4871: $5a
	add hl, sp                                       ; $4872: $39
	ld a, c                                          ; $4873: $79
	xor $27                                          ; $4874: $ee $27
	ld c, e                                          ; $4876: $4b
	inc de                                           ; $4877: $13
	db $ed                                           ; $4878: $ed
	ld h, a                                          ; $4879: $67
	ld c, d                                          ; $487a: $4a
	ld d, c                                          ; $487b: $51
	ld b, l                                          ; $487c: $45
	ld e, c                                          ; $487d: $59
	ld b, h                                          ; $487e: $44
	and b                                            ; $487f: $a0
	cpl                                              ; $4880: $2f
	ld b, b                                          ; $4881: $40
	add hl, sp                                       ; $4882: $39
	ld b, h                                          ; $4883: $44
	ld c, h                                          ; $4884: $4c
	inc [hl]                                         ; $4885: $34
	sub b                                            ; $4886: $90
	ld a, $38                                        ; $4887: $3e $38
	ld b, l                                          ; $4889: $45
	ld c, h                                          ; $488a: $4c

jr_090_488b:
	add hl, bc                                       ; $488b: $09
	or h                                             ; $488c: $b4
	xor h                                            ; $488d: $ac
	jr c, @+$61                                      ; $488e: $38 $5f

	ld b, c                                          ; $4890: $41
	ld a, [hl-]                                      ; $4891: $3a
	ldh a, [rOBP0]                                   ; $4892: $f0 $48
	ldh a, [$2c]                                     ; $4894: $f0 $2c
	ld [hl], d                                       ; $4896: $72
	ld b, a                                          ; $4897: $47
	ld h, a                                          ; $4898: $67
	ld d, h                                          ; $4899: $54
	add hl, sp                                       ; $489a: $39
	and b                                            ; $489b: $a0
	jr c, jr_090_48fd                                ; $489c: $38 $5f

	jr c, jr_090_48ff                                ; $489e: $38 $5f

	ld [hl], d                                       ; $48a0: $72
	ccf                                              ; $48a1: $3f
	dec a                                            ; $48a2: $3d
	ld d, b                                          ; $48a3: $50
	xor h                                            ; $48a4: $ac
	xor $27                                          ; $48a5: $ee $27
	db $eb                                           ; $48a7: $eb
	jr c, jr_090_484a                                ; $48a8: $38 $a0

	cpl                                              ; $48aa: $2f
	ld b, b                                          ; $48ab: $40
	ld c, l                                          ; $48ac: $4d
	ld e, e                                          ; $48ad: $5b
	ld d, [hl]                                       ; $48ae: $56
	inc [hl]                                         ; $48af: $34
	ret                                              ; $48b0: $c9


	ldh a, [hDisp1_LCDC]                                     ; $48b1: $f0 $8f
	ld c, a                                          ; $48b3: $4f
	add hl, sp                                       ; $48b4: $39
	add hl, bc                                       ; $48b5: $09
	add hl, sp                                       ; $48b6: $39
	xor $1f                                          ; $48b7: $ee $1f
	xor b                                            ; $48b9: $a8
	add a                                            ; $48ba: $87
	ldh a, [$5b]                                     ; $48bb: $f0 $5b
	ldh a, [$5e]                                     ; $48bd: $f0 $5e
	ld b, h                                          ; $48bf: $44
	ld b, l                                          ; $48c0: $45
	xor b                                            ; $48c1: $a8
	xor $27                                          ; $48c2: $ee $27
	ld c, e                                          ; $48c4: $4b
	inc [hl]                                         ; $48c5: $34
	pop af                                           ; $48c6: $f1
	rra                                              ; $48c7: $1f
	ld a, a                                          ; $48c8: $7f
	inc [hl]                                         ; $48c9: $34
	pop af                                           ; $48ca: $f1
	rra                                              ; $48cb: $1f
	ld a, a                                          ; $48cc: $7f
	and b                                            ; $48cd: $a0

jr_090_48ce:
	cpl                                              ; $48ce: $2f
	ld d, d                                          ; $48cf: $52
	ld b, h                                          ; $48d0: $44
	ld d, d                                          ; $48d1: $52
	ld b, h                                          ; $48d2: $44
	inc [hl]                                         ; $48d3: $34
	ldh a, [$f3]                                     ; $48d4: $f0 $f3
	ld c, l                                          ; $48d6: $4d
	ld c, [hl]                                       ; $48d7: $4e
	ld b, d                                          ; $48d8: $42
	ld c, e                                          ; $48d9: $4b
	ldh a, [$0a]                                     ; $48da: $f0 $0a
	jr c, jr_090_486b                                ; $48dc: $38 $8d

	add hl, bc                                       ; $48de: $09
	add hl, sp                                       ; $48df: $39
	ld e, c                                          ; $48e0: $59
	xor b                                            ; $48e1: $a8
	ldh a, [c]                                       ; $48e2: $f2
	ld h, a                                          ; $48e3: $67
	ld d, e                                          ; $48e4: $53
	ld c, l                                          ; $48e5: $4d
	ld b, h                                          ; $48e6: $44
	ld b, l                                          ; $48e7: $45
	ld e, c                                          ; $48e8: $59
	dec sp                                           ; $48e9: $3b
	and b                                            ; $48ea: $a0
	cpl                                              ; $48eb: $2f
	ld c, a                                          ; $48ec: $4f
	add hl, sp                                       ; $48ed: $39
	ldh a, [rHDMA4]                                  ; $48ee: $f0 $54
	ld a, $92                                        ; $48f0: $3e $92
	adc [hl]                                         ; $48f2: $8e
	ld c, l                                          ; $48f3: $4d
	ld c, [hl]                                       ; $48f4: $4e
	inc a                                            ; $48f5: $3c
	ld a, [hl-]                                      ; $48f6: $3a
	and c                                            ; $48f7: $a1
	xor $1f                                          ; $48f8: $ee $1f
	xor b                                            ; $48fa: $a8
	ld d, d                                          ; $48fb: $52
	ld b, h                                          ; $48fc: $44

jr_090_48fd:
	pop af                                           ; $48fd: $f1
	ld l, c                                          ; $48fe: $69

jr_090_48ff:
	ld a, a                                          ; $48ff: $7f
	ld b, h                                          ; $4900: $44
	ld b, l                                          ; $4901: $45
	and b                                            ; $4902: $a0
	ld l, d                                          ; $4903: $6a
	ld [hl], d                                       ; $4904: $72
	ccf                                              ; $4905: $3f
	ld e, h                                          ; $4906: $5c
	dec a                                            ; $4907: $3d
	inc [hl]                                         ; $4908: $34
	db $ec                                           ; $4909: $ec
	ld a, [$49ac]                                    ; $490a: $fa $ac $49
	ld e, c                                          ; $490d: $59
	dec sp                                           ; $490e: $3b
	ccf                                              ; $490f: $3f
	ld c, a                                          ; $4910: $4f
	ldh a, [$8a]                                     ; $4911: $f0 $8a
	ldh a, [rHDMA2]                                  ; $4913: $f0 $52
	inc a                                            ; $4915: $3c
	dec sp                                           ; $4916: $3b
	dec a                                            ; $4917: $3d
	and b                                            ; $4918: $a0
	cpl                                              ; $4919: $2f
	adc b                                            ; $491a: $88
	sub c                                            ; $491b: $91
	inc [hl]                                         ; $491c: $34
	ldh a, [$8a]                                     ; $491d: $f0 $8a
	ldh a, [rHDMA2]                                  ; $491f: $f0 $52
	jr c, @+$47                                      ; $4921: $38 $45

	ld c, h                                          ; $4923: $4c
	add hl, bc                                       ; $4924: $09
	xor $27                                          ; $4925: $ee $27
	xor h                                            ; $4927: $ac
	db $ec                                           ; $4928: $ec
	ld a, [$4158]                                    ; $4929: $fa $58 $41
	ld b, d                                          ; $492c: $42
	pop af                                           ; $492d: $f1
	ld a, b                                          ; $492e: $78
	jr c, jr_090_48ce                                ; $492f: $38 $9d

	ld c, [hl]                                       ; $4931: $4e
	ld l, h                                          ; $4932: $6c
	inc de                                           ; $4933: $13
	pop af                                           ; $4934: $f1
	add hl, hl                                       ; $4935: $29
	ld a, $55                                        ; $4936: $3e $55
	ld a, [hl-]                                      ; $4938: $3a
	dec sp                                           ; $4939: $3b
	ld h, c                                          ; $493a: $61
	ld d, [hl]                                       ; $493b: $56
	dec sp                                           ; $493c: $3b
	dec a                                            ; $493d: $3d
	and b                                            ; $493e: $a0
	cpl                                              ; $493f: $2f
	jp hl                                            ; $4940: $e9


	add hl, sp                                       ; $4941: $39
	add hl, bc                                       ; $4942: $09
	ld b, b                                          ; $4943: $40
	ld b, c                                          ; $4944: $41
	ld a, [hl-]                                      ; $4945: $3a
	ld d, h                                          ; $4946: $54
	ld c, c                                          ; $4947: $49
	ld a, [hl-]                                      ; $4948: $3a
	jr c, jr_090_499a                                ; $4949: $38 $4f

	ld b, c                                          ; $494b: $41
	and b                                            ; $494c: $a0
	cpl                                              ; $494d: $2f
	jp hl                                            ; $494e: $e9


	call z, $ee09                                    ; $494f: $cc $09 $ee
	daa                                              ; $4952: $27
	xor h                                            ; $4953: $ac
	ld b, l                                          ; $4954: $45
	ld d, l                                          ; $4955: $55
	ld h, e                                          ; $4956: $63
	inc a                                            ; $4957: $3c
	ld b, c                                          ; $4958: $41
	ld a, [hl-]                                      ; $4959: $3a
	ld e, c                                          ; $495a: $59
	jr c, jr_090_48fd                                ; $495b: $38 $a0

	ld e, e                                          ; $495d: $5b
	ld d, [hl]                                       ; $495e: $56
	ld b, [hl]                                       ; $495f: $46
	inc [hl]                                         ; $4960: $34
	sub [hl]                                         ; $4961: $96
	ld e, a                                          ; $4962: $5f
	dec sp                                           ; $4963: $3b
	inc a                                            ; $4964: $3c
	and c                                            ; $4965: $a1
	ld h, h                                          ; $4966: $64
	ldh a, [hDisp0_OBP0]                                     ; $4967: $f0 $86
	dec sp                                           ; $4969: $3b
	ccf                                              ; $496a: $3f
	db $ed                                           ; $496b: $ed
	ld c, c                                          ; $496c: $49
	ld b, h                                          ; $496d: $44
	ld e, l                                          ; $496e: $5d
	ld e, d                                          ; $496f: $5a
	inc de                                           ; $4970: $13
	ldh a, [rOBP0]                                   ; $4971: $f0 $48
	inc a                                            ; $4973: $3c
	ld a, [hl-]                                      ; $4974: $3a
	jr c, jr_090_49b3                                ; $4975: $38 $3c

	ld d, b                                          ; $4977: $50
	ld a, [hl-]                                      ; $4978: $3a
	ld [hl], h                                       ; $4979: $74
	and b                                            ; $497a: $a0
	cpl                                              ; $497b: $2f
	ld c, d                                          ; $497c: $4a
	ld c, a                                          ; $497d: $4f
	inc [hl]                                         ; $497e: $34
	ldh a, [hDisp0_OBP0]                                     ; $497f: $f0 $86
	ld h, d                                          ; $4981: $62
	ld [hl], d                                       ; $4982: $72
	ccf                                              ; $4983: $3f
	ld c, [hl]                                       ; $4984: $4e
	ld c, c                                          ; $4985: $49
	ldh a, [rVBK]                                    ; $4986: $f0 $4f
	ld d, e                                          ; $4988: $53
	ldh a, [hDisp1_OBP0]                                     ; $4989: $f0 $93
	ldh a, [$be]                                     ; $498b: $f0 $be
	ld c, h                                          ; $498d: $4c
	add hl, bc                                       ; $498e: $09
	xor $1f                                          ; $498f: $ee $1f
	xor b                                            ; $4991: $a8
	pop af                                           ; $4992: $f1
	add c                                            ; $4993: $81
	ld h, c                                          ; $4994: $61
	ldh a, [$ac]                                     ; $4995: $f0 $ac
	ld d, l                                          ; $4997: $55
	ld c, h                                          ; $4998: $4c
	and b                                            ; $4999: $a0

jr_090_499a:
	cpl                                              ; $499a: $2f
	db $ed                                           ; $499b: $ed
	ld d, $3f                                        ; $499c: $16 $3f
	inc [hl]                                         ; $499e: $34
	ld [$0948], a                                    ; $499f: $ea $48 $09
	xor $27                                          ; $49a2: $ee $27
	xor h                                            ; $49a4: $ac
	ld h, h                                          ; $49a5: $64
	ldh a, [rAUD2LOW]                                ; $49a6: $f0 $18
	ld a, [$f037]                                    ; $49a8: $fa $37 $f0
	ld h, h                                          ; $49ab: $64
	jr c, jr_090_49e8                                ; $49ac: $38 $3a

	ld b, c                                          ; $49ae: $41
	ld b, h                                          ; $49af: $44
	ld e, c                                          ; $49b0: $59
	and b                                            ; $49b1: $a0
	cpl                                              ; $49b2: $2f

jr_090_49b3:
	ld d, h                                          ; $49b3: $54
	ld c, l                                          ; $49b4: $4d
	ld c, e                                          ; $49b5: $4b
	inc [hl]                                         ; $49b6: $34
	jp hl                                            ; $49b7: $e9


	jp hl                                            ; $49b8: $e9


	add hl, bc                                       ; $49b9: $09
	ld c, d                                          ; $49ba: $4a
	ld c, a                                          ; $49bb: $4f
	inc [hl]                                         ; $49bc: $34
	xor $27                                          ; $49bd: $ee $27
	ld b, d                                          ; $49bf: $42
	ldh a, [$38]                                     ; $49c0: $f0 $38
	ld d, e                                          ; $49c2: $53
	inc de                                           ; $49c3: $13
	db $ed                                           ; $49c4: $ed
	ld c, c                                          ; $49c5: $49
	ld c, d                                          ; $49c6: $4a
	ld a, $66                                        ; $49c7: $3e $66
	and c                                            ; $49c9: $a1
	xor $27                                          ; $49ca: $ee $27
	ld b, d                                          ; $49cc: $42
	ld h, h                                          ; $49cd: $64
	adc a                                            ; $49ce: $8f
	pop af                                           ; $49cf: $f1
	ld b, h                                          ; $49d0: $44
	ld b, a                                          ; $49d1: $47
	ld c, a                                          ; $49d2: $4f
	inc de                                           ; $49d3: $13
	ld h, h                                          ; $49d4: $64
	ldh a, [hDisp0_OBP0]                                     ; $49d5: $f0 $86
	ld h, d                                          ; $49d7: $62
	ldh a, [c]                                       ; $49d8: $f2
	ld [$3f3b], sp                                   ; $49d9: $08 $3b $3f
	ld c, [hl]                                       ; $49dc: $4e
	ld b, c                                          ; $49dd: $41
	ld b, h                                          ; $49de: $44
	ld b, l                                          ; $49df: $45
	and b                                            ; $49e0: $a0
	cpl                                              ; $49e1: $2f
	ld [$0980], a                                    ; $49e2: $ea $80 $09
	cpl                                              ; $49e5: $2f
	ld d, h                                          ; $49e6: $54
	ld d, h                                          ; $49e7: $54

jr_090_49e8:
	ld b, d                                          ; $49e8: $42
	ldh a, [hDisp0_OBP0]                                     ; $49e9: $f0 $86
	ld c, a                                          ; $49eb: $4f
	inc [hl]                                         ; $49ec: $34
	ld [$a158], a                                    ; $49ed: $ea $58 $a1

Jump_090_49f0:
	ld b, b                                          ; $49f0: $40
	ld b, c                                          ; $49f1: $41
	ld a, [hl-]                                      ; $49f2: $3a
	ld d, h                                          ; $49f3: $54
	ld c, c                                          ; $49f4: $49
	ld a, $61                                        ; $49f5: $3e $61
	ld d, [hl]                                       ; $49f7: $56
	xor h                                            ; $49f8: $ac
	jr c, jr_090_4a58                                ; $49f9: $38 $5d

	ld a, [hl-]                                      ; $49fb: $3a
	jr c, jr_090_4a3f                                ; $49fc: $38 $41

	ld b, h                                          ; $49fe: $44
	ld e, c                                          ; $49ff: $59
	and b                                            ; $4a00: $a0
	cpl                                              ; $4a01: $2f
	ld c, d                                          ; $4a02: $4a
	ld c, a                                          ; $4a03: $4f
	inc [hl]                                         ; $4a04: $34
	ld [$097f], a                                    ; $4a05: $ea $7f $09
	ld b, h                                          ; $4a08: $44
	jr c, jr_090_4a66                                ; $4a09: $38 $5b

	ld h, [hl]                                       ; $4a0b: $66
	ldh a, [$fe]                                     ; $4a0c: $f0 $fe
	ld b, h                                          ; $4a0e: $44
	ld b, l                                          ; $4a0f: $45
	xor b                                            ; $4a10: $a8
	ld h, h                                          ; $4a11: $64
	ldh a, [rSVBK]                                   ; $4a12: $f0 $70
	ld b, d                                          ; $4a14: $42
	ld h, h                                          ; $4a15: $64
	di                                               ; $4a16: $f3
	ld e, l                                          ; $4a17: $5d
	ld b, a                                          ; $4a18: $47
	inc de                                           ; $4a19: $13
	ldh a, [c]                                       ; $4a1a: $f2
	ld c, l                                          ; $4a1b: $4d
	jr c, @+$41                                      ; $4a1c: $38 $3f

	ld c, [hl]                                       ; $4a1e: $4e
	ldh a, [hDisp0_OBP0]                                     ; $4a1f: $f0 $86
	ld b, h                                          ; $4a21: $44
	ld c, a                                          ; $4a22: $4f
	ld b, c                                          ; $4a23: $41
	and b                                            ; $4a24: $a0
	ld b, b                                          ; $4a25: $40
	ld c, l                                          ; $4a26: $4d
	ld e, e                                          ; $4a27: $5b
	ld d, [hl]                                       ; $4a28: $56
	inc [hl]                                         ; $4a29: $34
	db $eb                                           ; $4a2a: $eb
	ld d, d                                          ; $4a2b: $52
	and c                                            ; $4a2c: $a1
	ld h, e                                          ; $4a2d: $63
	ld b, [hl]                                       ; $4a2e: $46
	ld e, c                                          ; $4a2f: $59
	dec sp                                           ; $4a30: $3b
	inc [hl]                                         ; $4a31: $34
	db $ed                                           ; $4a32: $ed
	ld c, c                                          ; $4a33: $49
	xor b                                            ; $4a34: $a8
	ld b, [hl]                                       ; $4a35: $46
	ld b, b                                          ; $4a36: $40
	ld d, h                                          ; $4a37: $54
	ld b, a                                          ; $4a38: $47
	inc [hl]                                         ; $4a39: $34
	ldh a, [$e7]                                     ; $4a3a: $f0 $e7
	ld e, a                                          ; $4a3c: $5f
	add hl, sp                                       ; $4a3d: $39
	and b                                            ; $4a3e: $a0

jr_090_4a3f:
	ld h, h                                          ; $4a3f: $64
	pop af                                           ; $4a40: $f1
	ld h, l                                          ; $4a41: $65
	ld e, b                                          ; $4a42: $58
	ld d, d                                          ; $4a43: $52
	dec sp                                           ; $4a44: $3b
	ccf                                              ; $4a45: $3f
	xor h                                            ; $4a46: $ac
	db $ed                                           ; $4a47: $ed

jr_090_4a48:
	ld c, c                                          ; $4a48: $49
	ld b, h                                          ; $4a49: $44
	ld c, h                                          ; $4a4a: $4c

jr_090_4a4b:
	and b                                            ; $4a4b: $a0
	cpl                                              ; $4a4c: $2f
	add sp, $30                                      ; $4a4d: $e8 $30
	add hl, bc                                       ; $4a4f: $09
	xor $27                                          ; $4a50: $ee $27

jr_090_4a52:
	ld b, d                                          ; $4a52: $42
	inc [hl]                                         ; $4a53: $34
	ldh a, [$d8]                                     ; $4a54: $f0 $d8
	jr c, jr_090_4a48                                ; $4a56: $38 $f0

jr_090_4a58:
	ret c                                            ; $4a58: $d8

	jr c, jr_090_4a4b                                ; $4a59: $38 $f0

	ret c                                            ; $4a5b: $d8

	jr c, jr_090_4a71                                ; $4a5c: $38 $13

	ldh a, [$d8]                                     ; $4a5e: $f0 $d8
	jr c, jr_090_4a52                                ; $4a60: $38 $f0

	ret c                                            ; $4a62: $d8

	jr c, jr_090_4ac9                                ; $4a63: $38 $64

	ld e, e                                          ; $4a65: $5b

jr_090_4a66:
	jr c, jr_090_4ac0                                ; $4a66: $38 $58

	ld b, c                                          ; $4a68: $41
	ld b, d                                          ; $4a69: $42
	ldh a, [c]                                       ; $4a6a: $f2
	inc b                                            ; $4a6b: $04
	inc a                                            ; $4a6c: $3c
	ld a, [hl-]                                      ; $4a6d: $3a
	ld [hl], h                                       ; $4a6e: $74
	and b                                            ; $4a6f: $a0
	cpl                                              ; $4a70: $2f

jr_090_4a71:
	ld b, e                                          ; $4a71: $43
	ld d, d                                          ; $4a72: $52
	ld b, h                                          ; $4a73: $44
	ld d, d                                          ; $4a74: $52
	ld b, h                                          ; $4a75: $44
	sbc h                                            ; $4a76: $9c
	dec sp                                           ; $4a77: $3b
	ld c, c                                          ; $4a78: $49
	ldh a, [c]                                       ; $4a79: $f2
	ld a, c                                          ; $4a7a: $79
	ld e, b                                          ; $4a7b: $58
	and b                                            ; $4a7c: $a0
	db $ec                                           ; $4a7d: $ec
	ldh a, [$a0]                                     ; $4a7e: $f0 $a0
	cpl                                              ; $4a80: $2f
	add sp, -$1f                                     ; $4a81: $e8 $e1
	add hl, bc                                       ; $4a83: $09
	ld h, h                                          ; $4a84: $64
	ldh a, [$c9]                                     ; $4a85: $f0 $c9
	ld b, d                                          ; $4a87: $42
	push af                                          ; $4a88: $f5
	ld e, b                                          ; $4a89: $58
	inc a                                            ; $4a8a: $3c
	ld d, b                                          ; $4a8b: $50
	inc de                                           ; $4a8c: $13
	ldh a, [c]                                       ; $4a8d: $f2
	ld b, l                                          ; $4a8e: $45
	ld d, e                                          ; $4a8f: $53
	ld c, a                                          ; $4a90: $4f
	ld c, l                                          ; $4a91: $4d
	ccf                                              ; $4a92: $3f
	ld c, [hl]                                       ; $4a93: $4e
	ld b, h                                          ; $4a94: $44
	ld e, l                                          ; $4a95: $5d
	ld c, c                                          ; $4a96: $49
	ld c, e                                          ; $4a97: $4b
	xor h                                            ; $4a98: $ac
	ld [hl], a                                       ; $4a99: $77
	ld e, [hl]                                       ; $4a9a: $5e
	ld a, [hl-]                                      ; $4a9b: $3a
	jr c, jr_090_4afb                                ; $4a9c: $38 $5d

	ld e, d                                          ; $4a9e: $5a
	ld a, [hl-]                                      ; $4a9f: $3a
	ld [hl], h                                       ; $4aa0: $74
	and b                                            ; $4aa1: $a0
	cpl                                              ; $4aa2: $2f
	ld b, b                                          ; $4aa3: $40
	add hl, sp                                       ; $4aa4: $39
	ld b, h                                          ; $4aa5: $44
	ld c, h                                          ; $4aa6: $4c
	inc [hl]                                         ; $4aa7: $34
	ld b, b                                          ; $4aa8: $40
	add hl, sp                                       ; $4aa9: $39
	ld [hl], a                                       ; $4aaa: $77
	add hl, sp                                       ; $4aab: $39
	ld b, l                                          ; $4aac: $45
	add hl, bc                                       ; $4aad: $09
	ld b, b                                          ; $4aae: $40
	add hl, sp                                       ; $4aaf: $39
	ld b, h                                          ; $4ab0: $44
	ld b, l                                          ; $4ab1: $45
	ld c, h                                          ; $4ab2: $4c
	ld e, c                                          ; $4ab3: $59
	and b                                            ; $4ab4: $a0
	ldh a, [$0e]                                     ; $4ab5: $f0 $0e
	di                                               ; $4ab7: $f3
	rst SubAFromHL                                          ; $4ab8: $d7
	pop af                                           ; $4ab9: $f1
	ld h, l                                          ; $4aba: $65
	dec sp                                           ; $4abb: $3b
	ccf                                              ; $4abc: $3f
	ld e, d                                          ; $4abd: $5a
	ld d, h                                          ; $4abe: $54
	and c                                            ; $4abf: $a1

jr_090_4ac0:
	cpl                                              ; $4ac0: $2f
	ld b, b                                          ; $4ac1: $40
	ld c, l                                          ; $4ac2: $4d
	ld c, e                                          ; $4ac3: $4b
	inc [hl]                                         ; $4ac4: $34
	ldh a, [c]                                       ; $4ac5: $f2
	sub a                                            ; $4ac6: $97
	ldh a, [$e7]                                     ; $4ac7: $f0 $e7

jr_090_4ac9:
	ld b, h                                          ; $4ac9: $44
	ld b, l                                          ; $4aca: $45
	add hl, bc                                       ; $4acb: $09
	ldh a, [$5a]                                     ; $4acc: $f0 $5a
	ld e, c                                          ; $4ace: $59
	db $ed                                           ; $4acf: $ed
	or h                                             ; $4ad0: $b4
	ld d, a                                          ; $4ad1: $57
	ld a, [hl-]                                      ; $4ad2: $3a
	ld b, c                                          ; $4ad3: $41
	ld b, h                                          ; $4ad4: $44
	xor b                                            ; $4ad5: $a8
	ld c, d                                          ; $4ad6: $4a
	ld c, a                                          ; $4ad7: $4f
	inc [hl]                                         ; $4ad8: $34
	ldh a, [$08]                                     ; $4ad9: $f0 $08
	ld b, c                                          ; $4adb: $41
	ld c, c                                          ; $4adc: $49
	inc a                                            ; $4add: $3c
	ld a, [hl-]                                      ; $4ade: $3a
	ld [hl], h                                       ; $4adf: $74
	and c                                            ; $4ae0: $a1
	cpl                                              ; $4ae1: $2f
	ld b, b                                          ; $4ae2: $40
	ld c, l                                          ; $4ae3: $4d
	ld c, e                                          ; $4ae4: $4b
	inc [hl]                                         ; $4ae5: $34
	ldh a, [rAUD4GO]                                 ; $4ae6: $f0 $23
	ldh a, [c]                                       ; $4ae8: $f2
	rrca                                             ; $4ae9: $0f
	ldh a, [$e7]                                     ; $4aea: $f0 $e7
	ld b, h                                          ; $4aec: $44
	ld c, c                                          ; $4aed: $49
	ld [hl], a                                       ; $4aee: $77
	add hl, sp                                       ; $4aef: $39
	ld b, l                                          ; $4af0: $45
	add hl, bc                                       ; $4af1: $09
	db $ec                                           ; $4af2: $ec
	reti                                             ; $4af3: $d9


	ldh a, [rAUD4GO]                                 ; $4af4: $f0 $23
	ldh a, [c]                                       ; $4af6: $f2
	rrca                                             ; $4af7: $0f
	ldh a, [$e7]                                     ; $4af8: $f0 $e7
	inc de                                           ; $4afa: $13

jr_090_4afb:
	ld b, h                                          ; $4afb: $44
	dec sp                                           ; $4afc: $3b
	dec a                                            ; $4afd: $3d
	ld b, l                                          ; $4afe: $45
	ld c, h                                          ; $4aff: $4c
	and b                                            ; $4b00: $a0
	cpl                                              ; $4b01: $2f
	ld [hl-], a                                      ; $4b02: $32
	ld b, [hl]                                       ; $4b03: $46
	dec a                                            ; $4b04: $3d
	dec sp                                           ; $4b05: $3b
	ccf                                              ; $4b06: $3f
	ccf                                              ; $4b07: $3f
	ld b, l                                          ; $4b08: $45
	inc a                                            ; $4b09: $3c
	dec sp                                           ; $4b0a: $3b
	dec a                                            ; $4b0b: $3d
	xor b                                            ; $4b0c: $a8
	ld a, [hl-]                                      ; $4b0d: $3a
	ld b, c                                          ; $4b0e: $41
	inc a                                            ; $4b0f: $3c
	ldh a, [$f5]                                     ; $4b10: $f0 $f5
	add hl, sp                                       ; $4b12: $39
	ld a, a                                          ; $4b13: $7f
	ld d, e                                          ; $4b14: $53
	ld d, c                                          ; $4b15: $51
	ld c, [hl]                                       ; $4b16: $4e
	ld d, e                                          ; $4b17: $53
	and e                                            ; $4b18: $a3
	ld [hl-], a                                      ; $4b19: $32
	ldh a, [$f5]                                     ; $4b1a: $f0 $f5
	add hl, sp                                       ; $4b1c: $39
	ld b, l                                          ; $4b1d: $45
	and e                                            ; $4b1e: $a3
	cpl                                              ; $4b1f: $2f
	ld b, b                                          ; $4b20: $40
	ld c, l                                          ; $4b21: $4d
	ld c, e                                          ; $4b22: $4b
	ld c, b                                          ; $4b23: $48
	inc [hl]                                         ; $4b24: $34
	ld e, d                                          ; $4b25: $5a
	ld d, h                                          ; $4b26: $54
	ld b, h                                          ; $4b27: $44
	ld e, a                                          ; $4b28: $5f
	add hl, sp                                       ; $4b29: $39
	and c                                            ; $4b2a: $a1
	ld b, [hl]                                       ; $4b2b: $46
	ld e, c                                          ; $4b2c: $59
	dec sp                                           ; $4b2d: $3b
	xor b                                            ; $4b2e: $a8
	xor $27                                          ; $4b2f: $ee $27
	ld c, c                                          ; $4b31: $49
	ld h, h                                          ; $4b32: $64
	ld b, c                                          ; $4b33: $41
	ld a, [hl-]                                      ; $4b34: $3a
	ld e, e                                          ; $4b35: $5b
	ld c, d                                          ; $4b36: $4a
	inc de                                           ; $4b37: $13
	db $ec                                           ; $4b38: $ec
	dec b                                            ; $4b39: $05
	ld b, c                                          ; $4b3a: $41
	ld b, h                                          ; $4b3b: $44
	ld e, c                                          ; $4b3c: $59
	and b                                            ; $4b3d: $a0
	cpl                                              ; $4b3e: $2f
	add sp, $28                                      ; $4b3f: $e8 $28
	add hl, bc                                       ; $4b41: $09
	ld a, [hl-]                                      ; $4b42: $3a
	ld e, c                                          ; $4b43: $59
	ld b, c                                          ; $4b44: $41
	ld b, h                                          ; $4b45: $44
	xor b                                            ; $4b46: $a8
	db $ec                                           ; $4b47: $ec
	dec b                                            ; $4b48: $05
	ld b, d                                          ; $4b49: $42
	ld e, c                                          ; $4b4a: $59
	and b                                            ; $4b4b: $a0
	or h                                             ; $4b4c: $b4
	xor h                                            ; $4b4d: $ac
	db $eb                                           ; $4b4e: $eb
	ld d, d                                          ; $4b4f: $52
	and c                                            ; $4b50: $a1
	jr c, @+$61                                      ; $4b51: $38 $5f

	ld b, c                                          ; $4b53: $41
	ld a, [hl-]                                      ; $4b54: $3a
	ldh a, [$3f]                                     ; $4b55: $f0 $3f
	ld d, e                                          ; $4b57: $53
	ld b, [hl]                                       ; $4b58: $46
	ld c, [hl]                                       ; $4b59: $4e
	ld a, [hl-]                                      ; $4b5a: $3a
	ld [hl], h                                       ; $4b5b: $74
	and b                                            ; $4b5c: $a0
	cpl                                              ; $4b5d: $2f
	ldh a, [$5d]                                     ; $4b5e: $f0 $5d
	ld a, [hl-]                                      ; $4b60: $3a
	ldh a, [$3f]                                     ; $4b61: $f0 $3f
	ld d, e                                          ; $4b63: $53
	pop af                                           ; $4b64: $f1
	sub d                                            ; $4b65: $92
	jr c, jr_090_4bb4                                ; $4b66: $38 $4c

	add hl, bc                                       ; $4b68: $09
	xor $1f                                          ; $4b69: $ee $1f
	xor b                                            ; $4b6b: $a8
	ld c, d                                          ; $4b6c: $4a
	ld c, a                                          ; $4b6d: $4f
	ld d, h                                          ; $4b6e: $54
	ld b, d                                          ; $4b6f: $42
	pop af                                           ; $4b70: $f1
	sub a                                            ; $4b71: $97
	ld h, l                                          ; $4b72: $65
	ldh a, [$2b]                                     ; $4b73: $f0 $2b
	sub e                                            ; $4b75: $93
	ldh a, [rP1]                                     ; $4b76: $f0 $00
	ld h, l                                          ; $4b78: $65
	ld a, [hl-]                                      ; $4b79: $3a
	ldh a, [$3f]                                     ; $4b7a: $f0 $3f
	xor h                                            ; $4b7c: $ac
	xor $27                                          ; $4b7d: $ee $27
	inc [hl]                                         ; $4b7f: $34
	ld a, a                                          ; $4b80: $7f
	ld b, a                                          ; $4b81: $47
	sub [hl]                                         ; $4b82: $96
	dec sp                                           ; $4b83: $3b
	ld h, c                                          ; $4b84: $61
	ld d, [hl]                                       ; $4b85: $56
	dec sp                                           ; $4b86: $3b
	dec a                                            ; $4b87: $3d
	and b                                            ; $4b88: $a0
	cpl                                              ; $4b89: $2f
	ld d, h                                          ; $4b8a: $54
	ld b, d                                          ; $4b8b: $42
	ldh a, [$3f]                                     ; $4b8c: $f0 $3f
	inc [hl]                                         ; $4b8e: $34
	db $eb                                           ; $4b8f: $eb
	db $fc                                           ; $4b90: $fc
	ld b, a                                          ; $4b91: $47
	ldh a, [rPCM12]                                  ; $4b92: $f0 $76
	ccf                                              ; $4b94: $3f
	ld c, [hl]                                       ; $4b95: $4e
	ld c, h                                          ; $4b96: $4c
	add hl, bc                                       ; $4b97: $09
	ldh a, [$f5]                                     ; $4b98: $f0 $f5
	add hl, sp                                       ; $4b9a: $39
	ld b, l                                          ; $4b9b: $45
	ld e, c                                          ; $4b9c: $59
	xor b                                            ; $4b9d: $a8
	xor $27                                          ; $4b9e: $ee $27
	ld d, h                                          ; $4ba0: $54
	ld b, c                                          ; $4ba1: $41
	ld a, [hl-]                                      ; $4ba2: $3a
	ld h, h                                          ; $4ba3: $64
	ld a, e                                          ; $4ba4: $7b
	ld e, b                                          ; $4ba5: $58
	ld b, c                                          ; $4ba6: $41
	ld e, e                                          ; $4ba7: $5b
	ld d, [hl]                                       ; $4ba8: $56
	inc de                                           ; $4ba9: $13
	ld a, [hl-]                                      ; $4baa: $3a
	jr c, jr_090_4bf2                                ; $4bab: $38 $45

	ld e, c                                          ; $4bad: $59
	ld b, h                                          ; $4bae: $44
	and b                                            ; $4baf: $a0
	cpl                                              ; $4bb0: $2f
	add sp, $38                                      ; $4bb1: $e8 $38
	and c                                            ; $4bb3: $a1

jr_090_4bb4:
	xor $27                                          ; $4bb4: $ee $27
	xor h                                            ; $4bb6: $ac
	ldh a, [rAUD3LOW]                                ; $4bb7: $f0 $1d
	ld h, l                                          ; $4bb9: $65
	ldh a, [$a6]                                     ; $4bba: $f0 $a6
	ld b, d                                          ; $4bbc: $42
	ldh a, [$38]                                     ; $4bbd: $f0 $38
	ld d, e                                          ; $4bbf: $53
	jr c, jr_090_4bfa                                ; $4bc0: $38 $38

	ld a, [hl-]                                      ; $4bc2: $3a
	ld [hl], h                                       ; $4bc3: $74
	and b                                            ; $4bc4: $a0
	ld d, h                                          ; $4bc5: $54
	ld b, d                                          ; $4bc6: $42
	ldh a, [$3f]                                     ; $4bc7: $f0 $3f
	inc [hl]                                         ; $4bc9: $34
	db $ed                                           ; $4bca: $ed
	ld c, c                                          ; $4bcb: $49
	ld b, h                                          ; $4bcc: $44
	ld c, h                                          ; $4bcd: $4c
	xor b                                            ; $4bce: $a8
	ld e, d                                          ; $4bcf: $5a
	add hl, sp                                       ; $4bd0: $39
	ld l, [hl]                                       ; $4bd1: $6e
	dec sp                                           ; $4bd2: $3b
	ccf                                              ; $4bd3: $3f
	ldh a, [$bd]                                     ; $4bd4: $f0 $bd
	ld d, l                                          ; $4bd6: $55
	ld b, c                                          ; $4bd7: $41
	ld b, h                                          ; $4bd8: $44
	ld e, a                                          ; $4bd9: $5f
	add hl, sp                                       ; $4bda: $39
	and b                                            ; $4bdb: $a0
	cpl                                              ; $4bdc: $2f
	add sp, -$68                                     ; $4bdd: $e8 $98
	add hl, bc                                       ; $4bdf: $09
	db $ec                                           ; $4be0: $ec
	reti                                             ; $4be1: $d9


	inc [hl]                                         ; $4be2: $34
	db $ec                                           ; $4be3: $ec
	ld d, $74                                        ; $4be4: $16 $74
	and b                                            ; $4be6: $a0
	cpl                                              ; $4be7: $2f
	add sp, $54                                      ; $4be8: $e8 $54
	and c                                            ; $4bea: $a1
	ld e, [hl]                                       ; $4beb: $5e
	ld e, c                                          ; $4bec: $59
	dec sp                                           ; $4bed: $3b
	xor b                                            ; $4bee: $a8
	xor $27                                          ; $4bef: $ee $27
	ld b, a                                          ; $4bf1: $47

jr_090_4bf2:
	ld c, e                                          ; $4bf2: $4b
	pop af                                           ; $4bf3: $f1
	ld a, [de]                                       ; $4bf4: $1a
	pop af                                           ; $4bf5: $f1
	inc c                                            ; $4bf6: $0c

jr_090_4bf7:
	ld c, d                                          ; $4bf7: $4a
	ld e, h                                          ; $4bf8: $5c
	ld a, [hl-]                                      ; $4bf9: $3a

jr_090_4bfa:
	jr c, jr_090_4c41                                ; $4bfa: $38 $45

	and b                                            ; $4bfc: $a0
	cpl                                              ; $4bfd: $2f
	jp hl                                            ; $4bfe: $e9


	push bc                                          ; $4bff: $c5
	add hl, bc                                       ; $4c00: $09
	xor $27                                          ; $4c01: $ee $27
	inc [hl]                                         ; $4c03: $34
	ldh a, [rAUD3LOW]                                ; $4c04: $f0 $1d
	ld h, l                                          ; $4c06: $65
	ldh a, [$a6]                                     ; $4c07: $f0 $a6
	ld a, [hl-]                                      ; $4c09: $3a
	ld d, b                                          ; $4c0a: $50
	inc de                                           ; $4c0b: $13
	pop af                                           ; $4c0c: $f1
	ld l, e                                          ; $4c0d: $6b
	ldh a, [$c0]                                     ; $4c0e: $f0 $c0
	ld a, [hl-]                                      ; $4c10: $3a
	ld b, c                                          ; $4c11: $41
	ld b, h                                          ; $4c12: $44
	ld e, l                                          ; $4c13: $5d
	ld e, d                                          ; $4c14: $5a
	ld a, [hl-]                                      ; $4c15: $3a
	ld [hl], h                                       ; $4c16: $74
	and b                                            ; $4c17: $a0

jr_090_4c18:
	add hl, sp                                       ; $4c18: $39
	ld h, e                                          ; $4c19: $63
	ld [hl], h                                       ; $4c1a: $74
	dec sp                                           ; $4c1b: $3b
	xor b                                            ; $4c1c: $a8
	ld d, h                                          ; $4c1d: $54
	ld b, d                                          ; $4c1e: $42
	ldh a, [$3f]                                     ; $4c1f: $f0 $3f
	inc [hl]                                         ; $4c21: $34
	ldh a, [$5d]                                     ; $4c22: $f0 $5d

jr_090_4c24:
	and b                                            ; $4c24: $a0
	cpl                                              ; $4c25: $2f
	add sp, $5b                                      ; $4c26: $e8 $5b
	ld c, b                                          ; $4c28: $48
	add hl, bc                                       ; $4c29: $09
	add hl, sp                                       ; $4c2a: $39
	xor $1f                                          ; $4c2b: $ee $1f
	xor b                                            ; $4c2d: $a8
	ld d, h                                          ; $4c2e: $54
	ld b, d                                          ; $4c2f: $42
	sbc l                                            ; $4c30: $9d
	ld d, b                                          ; $4c31: $50
	jr c, jr_090_4c24                                ; $4c32: $38 $f0

	ld e, l                                          ; $4c34: $5d
	ld b, h                                          ; $4c35: $44
	ld c, c                                          ; $4c36: $49
	inc de                                           ; $4c37: $13
	xor $27                                          ; $4c38: $ee $27
	inc [hl]                                         ; $4c3a: $34
	ldh a, [rAUD4ENV]                                ; $4c3b: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4c3d: $f0 $23
	ld d, l                                          ; $4c3f: $55
	ccf                                              ; $4c40: $3f

jr_090_4c41:
	adc e                                            ; $4c41: $8b
	ld e, h                                          ; $4c42: $5c
	ld b, h                                          ; $4c43: $44
	ld b, l                                          ; $4c44: $45
	and b                                            ; $4c45: $a0
	cpl                                              ; $4c46: $2f
	ld [$0961], a                                    ; $4c47: $ea $61 $09
	add hl, sp                                       ; $4c4a: $39
	ld e, c                                          ; $4c4b: $59
	ld b, c                                          ; $4c4c: $41
	xor b                                            ; $4c4d: $a8
	xor $27                                          ; $4c4e: $ee $27
	ld h, e                                          ; $4c50: $63
	inc a                                            ; $4c51: $3c
	ld b, c                                          ; $4c52: $41
	ld a, [hl-]                                      ; $4c53: $3a
	ld e, c                                          ; $4c54: $59
	jr c, jr_090_4bf7                                ; $4c55: $38 $a0

	cpl                                              ; $4c57: $2f
	add sp, $5a                                      ; $4c58: $e8 $5a
	add hl, bc                                       ; $4c5a: $09
	add hl, sp                                       ; $4c5b: $39
	xor $1f                                          ; $4c5c: $ee $1f
	xor b                                            ; $4c5e: $a8
	ldh a, [rAUD4ENV]                                ; $4c5f: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4c61: $f0 $23
	ld d, l                                          ; $4c63: $55
	ccf                                              ; $4c64: $3f
	adc e                                            ; $4c65: $8b
	ld e, h                                          ; $4c66: $5c
	and b                                            ; $4c67: $a0
	ld h, e                                          ; $4c68: $63
	dec sp                                           ; $4c69: $3b
	xor b                                            ; $4c6a: $a8
	ld d, h                                          ; $4c6b: $54
	ld b, d                                          ; $4c6c: $42
	db $f4                                           ; $4c6d: $f4
	ld l, a                                          ; $4c6e: $6f
	ldh a, [$61]                                     ; $4c6f: $f0 $61
	xor h                                            ; $4c71: $ac
	db $ec                                           ; $4c72: $ec
	ld a, b                                          ; $4c73: $78
	ld l, h                                          ; $4c74: $6c
	dec a                                            ; $4c75: $3d
	jr c, jr_090_4c18                                ; $4c76: $38 $a0

	cpl                                              ; $4c78: $2f
	add sp, $5c                                      ; $4c79: $e8 $5c
	add hl, bc                                       ; $4c7b: $09
	ld c, d                                          ; $4c7c: $4a
	ld a, $66                                        ; $4c7d: $3e $66
	xor b                                            ; $4c7f: $a8
	db $ec                                           ; $4c80: $ec
	ld sp, hl                                        ; $4c81: $f9
	db $ed                                           ; $4c82: $ed
	rlca                                             ; $4c83: $07
	ld c, d                                          ; $4c84: $4a
	inc de                                           ; $4c85: $13
	ld [hl], d                                       ; $4c86: $72
	dec a                                            ; $4c87: $3d
	ld b, d                                          ; $4c88: $42
	ld b, b                                          ; $4c89: $40
	dec sp                                           ; $4c8a: $3b
	ld d, l                                          ; $4c8b: $55
	ld d, a                                          ; $4c8c: $57
	and b                                            ; $4c8d: $a0
	cpl                                              ; $4c8e: $2f
	db $ec                                           ; $4c8f: $ec
	reti                                             ; $4c90: $d9


	inc [hl]                                         ; $4c91: $34
	db $ed                                           ; $4c92: $ed
	sub d                                            ; $4c93: $92
	ld b, h                                          ; $4c94: $44
	ld a, [hl-]                                      ; $4c95: $3a
	ld e, c                                          ; $4c96: $59
	add hl, bc                                       ; $4c97: $09
	db $ed                                           ; $4c98: $ed
	sub d                                            ; $4c99: $92
	ld c, d                                          ; $4c9a: $4a
	ldh a, [$5c]                                     ; $4c9b: $f0 $5c
	inc a                                            ; $4c9d: $3c
	dec sp                                           ; $4c9e: $3b
	dec a                                            ; $4c9f: $3d
	inc de                                           ; $4ca0: $13
	ld c, d                                          ; $4ca1: $4a
	ld d, c                                          ; $4ca2: $51
	ld b, l                                          ; $4ca3: $45
	ld e, c                                          ; $4ca4: $59
	ld b, h                                          ; $4ca5: $44
	and b                                            ; $4ca6: $a0
	cpl                                              ; $4ca7: $2f
	add sp, -$67                                     ; $4ca8: $e8 $99
	add hl, bc                                       ; $4caa: $09
	ld b, b                                          ; $4cab: $40
	dec sp                                           ; $4cac: $3b
	ld h, c                                          ; $4cad: $61
	ld c, e                                          ; $4cae: $4b
	xor h                                            ; $4caf: $ac
	ldh a, [$5c]                                     ; $4cb0: $f0 $5c
	ld b, d                                          ; $4cb2: $42
	db $ec                                           ; $4cb3: $ec
	ld a, b                                          ; $4cb4: $78
	ld l, h                                          ; $4cb5: $6c
	dec a                                            ; $4cb6: $3d
	jr c, jr_090_4ccc                                ; $4cb7: $38 $13

	ld b, h                                          ; $4cb9: $44
	inc a                                            ; $4cba: $3c
	ld d, b                                          ; $4cbb: $50
	ld a, [hl-]                                      ; $4cbc: $3a
	ld c, b                                          ; $4cbd: $48
	and b                                            ; $4cbe: $a0
	ld d, h                                          ; $4cbf: $54
	ld c, l                                          ; $4cc0: $4d
	ld d, e                                          ; $4cc1: $53
	pop af                                           ; $4cc2: $f1
	adc d                                            ; $4cc3: $8a
	ldh a, [$fb]                                     ; $4cc4: $f0 $fb
	ld a, [hl-]                                      ; $4cc6: $3a
	add h                                            ; $4cc7: $84
	ld b, d                                          ; $4cc8: $42
	inc de                                           ; $4cc9: $13
	ldh a, [$3f]                                     ; $4cca: $f0 $3f

jr_090_4ccc:
	ld a, [hl-]                                      ; $4ccc: $3a
	ld b, d                                          ; $4ccd: $42
	and c                                            ; $4cce: $a1
	cpl                                              ; $4ccf: $2f
	ldh a, [$3e]                                     ; $4cd0: $f0 $3e
	ldh a, [$0b]                                     ; $4cd2: $f0 $0b
	ld b, h                                          ; $4cd4: $44
	ld b, l                                          ; $4cd5: $45
	ld c, h                                          ; $4cd6: $4c
	add hl, bc                                       ; $4cd7: $09
	xor $1f                                          ; $4cd8: $ee $1f
	xor b                                            ; $4cda: $a8
	pop af                                           ; $4cdb: $f1
	add d                                            ; $4cdc: $82
	inc a                                            ; $4cdd: $3c
	ld b, a                                          ; $4cde: $47
	add hl, sp                                       ; $4cdf: $39
	ld d, d                                          ; $4ce0: $52
	jr c, jr_090_4d1d                                ; $4ce1: $38 $3a

	ld [hl], h                                       ; $4ce3: $74
	xor b                                            ; $4ce4: $a8
	ld c, d                                          ; $4ce5: $4a
	ld c, a                                          ; $4ce6: $4f
	inc [hl]                                         ; $4ce7: $34
	xor $27                                          ; $4ce8: $ee $27
	ld d, h                                          ; $4cea: $54
	ld b, d                                          ; $4ceb: $42
	add h                                            ; $4cec: $84
	inc de                                           ; $4ced: $13
	db $ec                                           ; $4cee: $ec
	dec b                                            ; $4cef: $05
	ld b, l                                          ; $4cf0: $45
	and b                                            ; $4cf1: $a0
	cpl                                              ; $4cf2: $2f
	halt                                             ; $4cf3: $76
	inc [hl]                                         ; $4cf4: $34
	ldh a, [$8e]                                     ; $4cf5: $f0 $8e
	pop af                                           ; $4cf7: $f1
	ld c, l                                          ; $4cf8: $4d
	ld h, l                                          ; $4cf9: $65
	ld a, [hl-]                                      ; $4cfa: $3a
	ld b, c                                          ; $4cfb: $41
	ld b, h                                          ; $4cfc: $44
	ld b, l                                          ; $4cfd: $45
	add hl, bc                                       ; $4cfe: $09
	db $eb                                           ; $4cff: $eb
	push bc                                          ; $4d00: $c5
	xor h                                            ; $4d01: $ac
	db $ed                                           ; $4d02: $ed
	rlca                                             ; $4d03: $07
	ld c, d                                          ; $4d04: $4a
	ld [hl], d                                       ; $4d05: $72
	dec a                                            ; $4d06: $3d
	ld d, h                                          ; $4d07: $54
	ld c, c                                          ; $4d08: $49
	ldh a, [rAUD1LOW]                                ; $4d09: $f0 $13
	jr c, jr_090_4d6a                                ; $4d0b: $38 $5d

	ld e, d                                          ; $4d0d: $5a
	xor h                                            ; $4d0e: $ac
	ld b, b                                          ; $4d0f: $40
	ld b, c                                          ; $4d10: $41
	ld a, [hl-]                                      ; $4d11: $3a
	ld b, a                                          ; $4d12: $47
	pop af                                           ; $4d13: $f1
	adc d                                            ; $4d14: $8a
	ldh a, [$fb]                                     ; $4d15: $f0 $fb
	ld a, [hl-]                                      ; $4d17: $3a
	ld b, c                                          ; $4d18: $41
	ld b, h                                          ; $4d19: $44
	and b                                            ; $4d1a: $a0
	cpl                                              ; $4d1b: $2f
	ld [hl-], a                                      ; $4d1c: $32

jr_090_4d1d:
	ld l, e                                          ; $4d1d: $6b
	inc a                                            ; $4d1e: $3c
	inc [hl]                                         ; $4d1f: $34
	db $ed                                           ; $4d20: $ed
	push de                                          ; $4d21: $d5
	jr c, jr_090_4d37                                ; $4d22: $38 $13

jr_090_4d24:
	ld a, $3f                                        ; $4d24: $3e $3f
	jr c, jr_090_4d76                                ; $4d26: $38 $4e

	ld a, [hl-]                                      ; $4d28: $3a
	and e                                            ; $4d29: $a3
	cpl                                              ; $4d2a: $2f
	db $eb                                           ; $4d2b: $eb
	db $fc                                           ; $4d2c: $fc
	ld c, e                                          ; $4d2d: $4b
	ld a, a                                          ; $4d2e: $7f
	ld b, a                                          ; $4d2f: $47
	sub [hl]                                         ; $4d30: $96
	ld d, b                                          ; $4d31: $50
	ld a, [hl-]                                      ; $4d32: $3a
	inc a                                            ; $4d33: $3c

jr_090_4d34:
	dec sp                                           ; $4d34: $3b
	dec a                                            ; $4d35: $3d
	and c                                            ; $4d36: $a1

jr_090_4d37:
	xor $1f                                          ; $4d37: $ee $1f
	xor b                                            ; $4d39: $a8
	xor $27                                          ; $4d3a: $ee $27
	ld c, e                                          ; $4d3c: $4b
	inc [hl]                                         ; $4d3d: $34
	ldh a, [rAUD3LOW]                                ; $4d3e: $f0 $1d
	ld h, l                                          ; $4d40: $65
	ldh a, [$a6]                                     ; $4d41: $f0 $a6
	ld b, d                                          ; $4d43: $42
	ldh a, [$38]                                     ; $4d44: $f0 $38
	ld d, e                                          ; $4d46: $53
	inc de                                           ; $4d47: $13
	jr c, jr_090_4d82                                ; $4d48: $38 $38

	ld a, [hl-]                                      ; $4d4a: $3a
	ld e, c                                          ; $4d4b: $59
	and b                                            ; $4d4c: $a0
	ld d, h                                          ; $4d4d: $54
	ld c, l                                          ; $4d4e: $4d
	inc [hl]                                         ; $4d4f: $34
	db $ec                                           ; $4d50: $ec
	rst AddAOntoHL                                          ; $4d51: $ef
	ld c, a                                          ; $4d52: $4f
	ld [hl], d                                       ; $4d53: $72
	dec a                                            ; $4d54: $3d
	ld b, l                                          ; $4d55: $45
	and b                                            ; $4d56: $a0
	ld d, h                                          ; $4d57: $54
	ld d, h                                          ; $4d58: $54
	ld d, e                                          ; $4d59: $53
	db $ec                                           ; $4d5a: $ec
	pop af                                           ; $4d5b: $f1
	ld b, h                                          ; $4d5c: $44
	ld c, h                                          ; $4d5d: $4c
	and b                                            ; $4d5e: $a0
	db $ec                                           ; $4d5f: $ec
	pop af                                           ; $4d60: $f1
	ccf                                              ; $4d61: $3f
	inc [hl]                                         ; $4d62: $34
	pop af                                           ; $4d63: $f1
	ld e, b                                          ; $4d64: $58
	inc a                                            ; $4d65: $3c
	ld b, h                                          ; $4d66: $44
	ld c, h                                          ; $4d67: $4c
	and b                                            ; $4d68: $a0
	cpl                                              ; $4d69: $2f

jr_090_4d6a:
	add sp, $58                                      ; $4d6a: $e8 $58
	and d                                            ; $4d6c: $a2
	ldh a, [$08]                                     ; $4d6d: $f0 $08
	ld b, c                                          ; $4d6f: $41
	ld c, c                                          ; $4d70: $49
	ld b, h                                          ; $4d71: $44
	ld e, c                                          ; $4d72: $59
	xor b                                            ; $4d73: $a8
	db $ec                                           ; $4d74: $ec
	pop af                                           ; $4d75: $f1

jr_090_4d76:
	ld b, a                                          ; $4d76: $47
	ld e, h                                          ; $4d77: $5c
	ccf                                              ; $4d78: $3f
	db $ec                                           ; $4d79: $ec
	ld c, e                                          ; $4d7a: $4b
	ld a, [hl-]                                      ; $4d7b: $3a
	ld b, c                                          ; $4d7c: $41
	ccf                                              ; $4d7d: $3f
	inc de                                           ; $4d7e: $13
	ld d, c                                          ; $4d7f: $51
	ld [hl], b                                       ; $4d80: $70
	ld e, c                                          ; $4d81: $59

jr_090_4d82:
	jr c, jr_090_4d24                                ; $4d82: $38 $a0

	db $ec                                           ; $4d84: $ec
	pop af                                           ; $4d85: $f1
	ld c, d                                          ; $4d86: $4a
	ld c, e                                          ; $4d87: $4b
	inc de                                           ; $4d88: $13
	pop af                                           ; $4d89: $f1
	ld e, b                                          ; $4d8a: $58
	inc a                                            ; $4d8b: $3c
	ld b, a                                          ; $4d8c: $47
	ld a, $3f                                        ; $4d8d: $3e $3f
	ld d, l                                          ; $4d8f: $55
	ld b, h                                          ; $4d90: $44
	ld e, b                                          ; $4d91: $58
	jr c, jr_090_4d34                                ; $4d92: $38 $a0

	ccf                                              ; $4d94: $3f
	ldh a, [$5a]                                     ; $4d95: $f0 $5a
	ldh a, [$5a]                                     ; $4d97: $f0 $5a
	xor b                                            ; $4d99: $a8
	ld h, h                                          ; $4d9a: $64
	ld d, h                                          ; $4d9b: $54
	ld d, b                                          ; $4d9c: $50
	ld c, l                                          ; $4d9d: $4d
	ld h, c                                          ; $4d9e: $61
	dec sp                                           ; $4d9f: $3b
	dec a                                            ; $4da0: $3d
	and b                                            ; $4da1: $a0
	cpl                                              ; $4da2: $2f
	halt                                             ; $4da3: $76
	ldh a, [rSTAT]                                   ; $4da4: $f0 $41
	ld c, a                                          ; $4da6: $4f
	pop af                                           ; $4da7: $f1
	ld e, b                                          ; $4da8: $58
	inc a                                            ; $4da9: $3c
	ld b, a                                          ; $4daa: $47
	ld a, $45                                        ; $4dab: $3e $45
	add hl, sp                                       ; $4dad: $39
	add hl, bc                                       ; $4dae: $09
	xor $27                                          ; $4daf: $ee $27
	inc [hl]                                         ; $4db1: $34
	pop af                                           ; $4db2: $f1
	ld e, b                                          ; $4db3: $58
	inc a                                            ; $4db4: $3c
	ld b, a                                          ; $4db5: $47
	ld a, $3f                                        ; $4db6: $3e $3f
	ld c, [hl]                                       ; $4db8: $4e
	ld b, d                                          ; $4db9: $42
	inc de                                           ; $4dba: $13
	db $ed                                           ; $4dbb: $ed
	ld l, b                                          ; $4dbc: $68
	ld b, h                                          ; $4dbd: $44
	ld b, l                                          ; $4dbe: $45
	xor b                                            ; $4dbf: $a8
	add b                                            ; $4dc0: $80
	ld d, b                                          ; $4dc1: $50
	jr c, jr_090_4dfe                                ; $4dc2: $38 $3a

	and b                                            ; $4dc4: $a0
	cpl                                              ; $4dc5: $2f
	jp hl                                            ; $4dc6: $e9


	call $ee09                                       ; $4dc7: $cd $09 $ee
	daa                                              ; $4dca: $27
	xor h                                            ; $4dcb: $ac
	db $ec                                           ; $4dcc: $ec
	xor e                                            ; $4dcd: $ab
	ld b, c                                          ; $4dce: $41
	ld c, d                                          ; $4dcf: $4a
	ld d, l                                          ; $4dd0: $55
	ld c, [hl]                                       ; $4dd1: $4e
	ld c, h                                          ; $4dd2: $4c
	and b                                            ; $4dd3: $a0
	ld e, d                                          ; $4dd4: $5a
	ld b, c                                          ; $4dd5: $41
	ld a, [hl-]                                      ; $4dd6: $3a
	adc b                                            ; $4dd7: $88
	ldh a, [$fa]                                     ; $4dd8: $f0 $fa
	ld l, h                                          ; $4dda: $6c
	ld b, a                                          ; $4ddb: $47
	ld e, h                                          ; $4ddc: $5c
	dec a                                            ; $4ddd: $3d
	ld b, d                                          ; $4dde: $42
	and c                                            ; $4ddf: $a1
	cpl                                              ; $4de0: $2f
	ldh a, [rAUD3LOW]                                ; $4de1: $f0 $1d
	ld h, l                                          ; $4de3: $65
	ldh a, [$a6]                                     ; $4de4: $f0 $a6
	ld c, e                                          ; $4de6: $4b
	ld b, [hl]                                       ; $4de7: $46
	ld c, [hl]                                       ; $4de8: $4e
	inc a                                            ; $4de9: $3c
	ld a, [hl-]                                      ; $4dea: $3a
	and c                                            ; $4deb: $a1
	ld b, h                                          ; $4dec: $44
	dec sp                                           ; $4ded: $3b
	dec a                                            ; $4dee: $3d
	ld d, b                                          ; $4def: $50
	xor h                                            ; $4df0: $ac
	adc b                                            ; $4df1: $88
	pop af                                           ; $4df2: $f1
	ld b, h                                          ; $4df3: $44
	ld e, b                                          ; $4df4: $58
	ld b, c                                          ; $4df5: $41
	ld b, a                                          ; $4df6: $47
	call $2fa0                                       ; $4df7: $cd $a0 $2f
	add sp, $6d                                      ; $4dfa: $e8 $6d
	add hl, bc                                       ; $4dfc: $09
	ld b, b                                          ; $4dfd: $40

jr_090_4dfe:
	ld b, c                                          ; $4dfe: $41
	ld a, [hl-]                                      ; $4dff: $3a
	pop af                                           ; $4e00: $f1
	ld a, [$383e]                                    ; $4e01: $fa $3e $38
	adc b                                            ; $4e04: $88
	ld b, l                                          ; $4e05: $45
	ld d, a                                          ; $4e06: $57
	xor h                                            ; $4e07: $ac
	xor $06                                          ; $4e08: $ee $06
	ld b, a                                          ; $4e0a: $47
	db $ec                                           ; $4e0b: $ec
	xor e                                            ; $4e0c: $ab
	ld c, a                                          ; $4e0d: $4f
	add hl, sp                                       ; $4e0e: $39
	and b                                            ; $4e0f: $a0
	cpl                                              ; $4e10: $2f
	jr c, jr_090_4e81                                ; $4e11: $38 $6e

	inc [hl]                                         ; $4e13: $34
	ld c, c                                          ; $4e14: $49
	ld d, l                                          ; $4e15: $55
	ld b, a                                          ; $4e16: $47
	ld a, [hl-]                                      ; $4e17: $3a
	jr c, jr_090_4e5f                                ; $4e18: $38 $45

	add hl, bc                                       ; $4e1a: $09
	ld e, e                                          ; $4e1b: $5b
	ld d, [hl]                                       ; $4e1c: $56
	ld b, [hl]                                       ; $4e1d: $46
	inc [hl]                                         ; $4e1e: $34
	ldh a, [rAUD3LOW]                                ; $4e1f: $f0 $1d
	ld h, l                                          ; $4e21: $65
	ldh a, [$a6]                                     ; $4e22: $f0 $a6
	pop af                                           ; $4e24: $f1
	adc l                                            ; $4e25: $8d
	db $ec                                           ; $4e26: $ec
	db $f4                                           ; $4e27: $f4
	and b                                            ; $4e28: $a0
	ldh a, [$0a]                                     ; $4e29: $f0 $0a
	ld d, l                                          ; $4e2b: $55
	inc [hl]                                         ; $4e2c: $34
	db $ec                                           ; $4e2d: $ec
	ld b, h                                          ; $4e2e: $44
	ld e, c                                          ; $4e2f: $59
	and b                                            ; $4e30: $a0
	cpl                                              ; $4e31: $2f
	add sp, $29                                      ; $4e32: $e8 $29
	add hl, bc                                       ; $4e34: $09
	cpl                                              ; $4e35: $2f
	add sp, $2a                                      ; $4e36: $e8 $2a
	add hl, bc                                       ; $4e38: $09
	xor $27                                          ; $4e39: $ee $27
	inc [hl]                                         ; $4e3b: $34
	pop hl                                           ; $4e3c: $e1
	ld b, h                                          ; $4e3d: $44
	ld e, l                                          ; $4e3e: $5d
	ld e, d                                          ; $4e3f: $5a
	inc de                                           ; $4e40: $13
	ldh a, [$6d]                                     ; $4e41: $f0 $6d
	ld e, c                                          ; $4e43: $59
	ldh a, [$7b]                                     ; $4e44: $f0 $7b
	ld h, l                                          ; $4e46: $65
	adc e                                            ; $4e47: $8b
	ld e, h                                          ; $4e48: $5c
	ld a, [hl-]                                      ; $4e49: $3a
	ld b, c                                          ; $4e4a: $41
	ld b, h                                          ; $4e4b: $44
	ld [hl], h                                       ; $4e4c: $74
	and b                                            ; $4e4d: $a0
	cpl                                              ; $4e4e: $2f
	ldh a, [$34]                                     ; $4e4f: $f0 $34
	ld b, a                                          ; $4e51: $47
	inc a                                            ; $4e52: $3c
	ld d, d                                          ; $4e53: $52
	ld h, e                                          ; $4e54: $63
	ld a, [hl-]                                      ; $4e55: $3a
	jr c, jr_090_4e9d                                ; $4e56: $38 $45

	add hl, bc                                       ; $4e58: $09
	ld b, b                                          ; $4e59: $40
	add hl, sp                                       ; $4e5a: $39
	add d                                            ; $4e5b: $82
	dec sp                                           ; $4e5c: $3b
	ccf                                              ; $4e5d: $3f
	ld d, l                                          ; $4e5e: $55

jr_090_4e5f:
	ld c, l                                          ; $4e5f: $4d
	ld c, [hl]                                       ; $4e60: $4e
	ld c, c                                          ; $4e61: $49
	xor h                                            ; $4e62: $ac
	xor $27                                          ; $4e63: $ee $27
	add hl, sp                                       ; $4e65: $39
	ld c, l                                          ; $4e66: $4d
	ld a, $38                                        ; $4e67: $3e $38
	ld a, [hl-]                                      ; $4e69: $3a
	ld [hl], h                                       ; $4e6a: $74
	and b                                            ; $4e6b: $a0
	cpl                                              ; $4e6c: $2f
	jp hl                                            ; $4e6d: $e9


	ldh [c], a                                       ; $4e6e: $e2
	and c                                            ; $4e6f: $a1
	ld b, b                                          ; $4e70: $40
	ld b, c                                          ; $4e71: $41
	ld a, [hl-]                                      ; $4e72: $3a
	ld d, h                                          ; $4e73: $54
	ld c, c                                          ; $4e74: $49
	ld a, [hl-]                                      ; $4e75: $3a
	jr c, jr_090_4ec7                                ; $4e76: $38 $4f

Jump_090_4e78:
	ld e, c                                          ; $4e78: $59
	ld b, c                                          ; $4e79: $41
	xor b                                            ; $4e7a: $a8
	xor $27                                          ; $4e7b: $ee $27
	jr c, jr_090_4eb7                                ; $4e7d: $38 $38

	adc h                                            ; $4e7f: $8c
	ld b, h                                          ; $4e80: $44

jr_090_4e81:
	ld c, a                                          ; $4e81: $4f
	ld b, c                                          ; $4e82: $41
	and b                                            ; $4e83: $a0
	cpl                                              ; $4e84: $2f
	ldh a, [$5f]                                     ; $4e85: $f0 $5f
	ldh a, [$9b]                                     ; $4e87: $f0 $9b
	ld c, e                                          ; $4e89: $4b
	inc [hl]                                         ; $4e8a: $34
	pop hl                                           ; $4e8b: $e1
	ld c, a                                          ; $4e8c: $4f
	ld a, b                                          ; $4e8d: $78
	ld c, [hl]                                       ; $4e8e: $4e
	ld b, l                                          ; $4e8f: $45
	add hl, bc                                       ; $4e90: $09
	xor $1f                                          ; $4e91: $ee $1f
	xor b                                            ; $4e93: $a8
	xor $27                                          ; $4e94: $ee $27
	ldh a, [$6d]                                     ; $4e96: $f0 $6d
	ld e, c                                          ; $4e98: $59
	ldh a, [$7b]                                     ; $4e99: $f0 $7b
	ld h, l                                          ; $4e9b: $65
	ld c, d                                          ; $4e9c: $4a

jr_090_4e9d:
	inc de                                           ; $4e9d: $13
	ldh a, [$2d]                                     ; $4e9e: $f0 $2d
	ld d, a                                          ; $4ea0: $57
	ldh a, [rTMA]                                    ; $4ea1: $f0 $06
	dec sp                                           ; $4ea3: $3b
	dec a                                            ; $4ea4: $3d
	ld h, h                                          ; $4ea5: $64
	db $ed                                           ; $4ea6: $ed
	ld h, d                                          ; $4ea7: $62
	ld d, e                                          ; $4ea8: $53
	inc de                                           ; $4ea9: $13
	adc $38                                          ; $4eaa: $ce $38
	ld c, [hl]                                       ; $4eac: $4e
	ld b, l                                          ; $4ead: $45
	and b                                            ; $4eae: $a0
	ld e, d                                          ; $4eaf: $5a
	ld b, d                                          ; $4eb0: $42
	ldh a, [$6d]                                     ; $4eb1: $f0 $6d
	ld e, c                                          ; $4eb3: $59
	ldh a, [$27]                                     ; $4eb4: $f0 $27
	ld h, d                                          ; $4eb6: $62

jr_090_4eb7:
	inc de                                           ; $4eb7: $13
	db $ec                                           ; $4eb8: $ec
	inc c                                            ; $4eb9: $0c
	ld a, [hl-]                                      ; $4eba: $3a
	ld [hl], h                                       ; $4ebb: $74
	and c                                            ; $4ebc: $a1
	cpl                                              ; $4ebd: $2f
	jp hl                                            ; $4ebe: $e9


	ld b, c                                          ; $4ebf: $41
	add hl, bc                                       ; $4ec0: $09
	db $ec                                           ; $4ec1: $ec
	reti                                             ; $4ec2: $d9


	ldh a, [rAUD4LEN]                                ; $4ec3: $f0 $20
	ldh a, [rP1]                                     ; $4ec5: $f0 $00

jr_090_4ec7:
	ldh a, [rAUD4LEN]                                ; $4ec7: $f0 $20
	ldh a, [rP1]                                     ; $4ec9: $f0 $00
	ld b, d                                          ; $4ecb: $42
	inc de                                           ; $4ecc: $13
	ldh a, [c]                                       ; $4ecd: $f2
	add b                                            ; $4ece: $80
	sbc b                                            ; $4ecf: $98
	ldh a, [$a1]                                     ; $4ed0: $f0 $a1
	ld e, c                                          ; $4ed2: $59
	ld b, h                                          ; $4ed3: $44
	ld b, l                                          ; $4ed4: $45
	ld c, h                                          ; $4ed5: $4c
	and b                                            ; $4ed6: $a0
	cpl                                              ; $4ed7: $2f
	add sp, $34                                      ; $4ed8: $e8 $34
	add hl, bc                                       ; $4eda: $09
	xor $27                                          ; $4edb: $ee $27
	ldh a, [rIF]                                     ; $4edd: $f0 $0f
	pop af                                           ; $4edf: $f1
	ld b, l                                          ; $4ee0: $45
	ldh a, [$03]                                     ; $4ee1: $f0 $03
	ld c, c                                          ; $4ee3: $49
	sub e                                            ; $4ee4: $93
	ld a, l                                          ; $4ee5: $7d
	pop af                                           ; $4ee6: $f1
	ld b, l                                          ; $4ee7: $45
	ld c, e                                          ; $4ee8: $4b
	xor h                                            ; $4ee9: $ac
	db $ed                                           ; $4eea: $ed
	ld l, b                                          ; $4eeb: $68
	ld b, h                                          ; $4eec: $44
	inc a                                            ; $4eed: $3c
	ld d, b                                          ; $4eee: $50
	inc de                                           ; $4eef: $13
	ld l, [hl]                                       ; $4ef0: $6e
	ld d, b                                          ; $4ef1: $50
	ld a, [hl-]                                      ; $4ef2: $3a
	jr c, jr_090_4f36                                ; $4ef3: $38 $41

	ld b, h                                          ; $4ef5: $44
	and b                                            ; $4ef6: $a0
	cpl                                              ; $4ef7: $2f
	add sp, $55                                      ; $4ef8: $e8 $55
	and c                                            ; $4efa: $a1
	ld e, e                                          ; $4efb: $5b
	ld d, [hl]                                       ; $4efc: $56
	ld b, [hl]                                       ; $4efd: $46
	ldh a, [$a6]                                     ; $4efe: $f0 $a6
	ld h, l                                          ; $4f00: $65
	ldh a, [rAUD4LEN]                                ; $4f01: $f0 $20
	ld [hl], e                                       ; $4f03: $73
	ccf                                              ; $4f04: $3f
	inc de                                           ; $4f05: $13
	ld l, h                                          ; $4f06: $6c
	ld b, l                                          ; $4f07: $45
	add hl, sp                                       ; $4f08: $39
	inc a                                            ; $4f09: $3c
	ld a, [hl-]                                      ; $4f0a: $3a
	ld [hl], h                                       ; $4f0b: $74
	and b                                            ; $4f0c: $a0
	ldh a, [$9d]                                     ; $4f0d: $f0 $9d
	ldh a, [$f1]                                     ; $4f0f: $f0 $f1
	ldh a, [$03]                                     ; $4f11: $f0 $03
	ldh a, [rAUD1LEN]                                ; $4f13: $f0 $11
	ld e, c                                          ; $4f15: $59
	ldh a, [$ba]                                     ; $4f16: $f0 $ba
	ld e, c                                          ; $4f18: $59
	dec sp                                           ; $4f19: $3b
	ccf                                              ; $4f1a: $3f
	xor h                                            ; $4f1b: $ac
	add a                                            ; $4f1c: $87
	add h                                            ; $4f1d: $84
	ld b, d                                          ; $4f1e: $42
	ldh a, [$78]                                     ; $4f1f: $f0 $78
	ld e, e                                          ; $4f21: $5b
	ld d, e                                          ; $4f22: $53
	ld d, c                                          ; $4f23: $51
	ld c, [hl]                                       ; $4f24: $4e
	ld c, h                                          ; $4f25: $4c
	ld e, c                                          ; $4f26: $59
	and b                                            ; $4f27: $a0
	cpl                                              ; $4f28: $2f
	pop hl                                           ; $4f29: $e1
	ld b, a                                          ; $4f2a: $47
	ld h, e                                          ; $4f2b: $63
	ld d, a                                          ; $4f2c: $57
	ld c, c                                          ; $4f2d: $49
	db $ed                                           ; $4f2e: $ed
	ld l, c                                          ; $4f2f: $69
	ld b, [hl]                                       ; $4f30: $46
	ld c, [hl]                                       ; $4f31: $4e
	ld b, l                                          ; $4f32: $45
	add hl, bc                                       ; $4f33: $09
	xor $27                                          ; $4f34: $ee $27

jr_090_4f36:
	inc [hl]                                         ; $4f36: $34
	jr c, @+$61                                      ; $4f37: $38 $5f

	ld b, c                                          ; $4f39: $41
	ld a, [hl-]                                      ; $4f3a: $3a
	ldh a, [$28]                                     ; $4f3b: $f0 $28
	ld b, d                                          ; $4f3d: $42
	inc de                                           ; $4f3e: $13
	ldh a, [$9d]                                     ; $4f3f: $f0 $9d
	ldh a, [$f1]                                     ; $4f41: $f0 $f1
	ldh a, [$03]                                     ; $4f43: $f0 $03
	ld h, d                                          ; $4f45: $62
	ldh a, [rAUDTERM]                                ; $4f46: $f0 $25
	ld [hl], c                                       ; $4f48: $71
	ccf                                              ; $4f49: $3f
	ld c, [hl]                                       ; $4f4a: $4e
	ld b, c                                          ; $4f4b: $41
	ld b, h                                          ; $4f4c: $44
	ld b, l                                          ; $4f4d: $45
	and b                                            ; $4f4e: $a0
	cpl                                              ; $4f4f: $2f
	ld b, b                                          ; $4f50: $40
	ld c, l                                          ; $4f51: $4d
	ld e, e                                          ; $4f52: $5b
	ld d, [hl]                                       ; $4f53: $56
	inc [hl]                                         ; $4f54: $34
	ld a, d                                          ; $4f55: $7a
	dec sp                                           ; $4f56: $3b
	dec a                                            ; $4f57: $3d
	ldh a, [$08]                                     ; $4f58: $f0 $08
	add hl, sp                                       ; $4f5a: $39
	ld d, e                                          ; $4f5b: $53
	jr c, jr_090_4f96                                ; $4f5c: $38 $38

	ld c, h                                          ; $4f5e: $4c
	add hl, bc                                       ; $4f5f: $09
	xor $27                                          ; $4f60: $ee $27
	ld h, d                                          ; $4f62: $62
	db $ed                                           ; $4f63: $ed
	ld h, a                                          ; $4f64: $67
	ld b, [hl]                                       ; $4f65: $46
	add b                                            ; $4f66: $80
	inc a                                            ; $4f67: $3c
	jr c, jr_090_4f7d                                ; $4f68: $38 $13

	ld a, $3a                                        ; $4f6a: $3e $3a
	jr c, jr_090_4fb8                                ; $4f6c: $38 $4a

	ldh a, [$08]                                     ; $4f6e: $f0 $08
	ld a, $38                                        ; $4f70: $3e $38
	ld a, [hl-]                                      ; $4f72: $3a
	ld [hl], h                                       ; $4f73: $74
	and b                                            ; $4f74: $a0
	cpl                                              ; $4f75: $2f
	ld h, h                                          ; $4f76: $64
	pop af                                           ; $4f77: $f1
	add [hl]                                         ; $4f78: $86
	ld h, d                                          ; $4f79: $62
	di                                               ; $4f7a: $f3
	ld d, l                                          ; $4f7b: $55
	ld e, l                                          ; $4f7c: $5d

jr_090_4f7d:
	ccf                                              ; $4f7d: $3f
	ld c, [hl]                                       ; $4f7e: $4e
	ld h, e                                          ; $4f7f: $63
	ld e, l                                          ; $4f80: $5d
	db $ec                                           ; $4f81: $ec
	ret c                                            ; $4f82: $d8

	ld b, l                                          ; $4f83: $45
	add hl, bc                                       ; $4f84: $09
	ld b, b                                          ; $4f85: $40

jr_090_4f86:
	ld b, c                                          ; $4f86: $41
	ld a, [hl-]                                      ; $4f87: $3a
	ld b, d                                          ; $4f88: $42
	inc de                                           ; $4f89: $13
	sub c                                            ; $4f8a: $91
	dec a                                            ; $4f8b: $3d
	ld d, a                                          ; $4f8c: $57
	sbc [hl]                                         ; $4f8d: $9e
	ld b, h                                          ; $4f8e: $44
	ld b, l                                          ; $4f8f: $45
	ldh a, [c]                                       ; $4f90: $f2
	ld a, l                                          ; $4f91: $7d
	and b                                            ; $4f92: $a0
	pop af                                           ; $4f93: $f1
	db $10                                           ; $4f94: $10
	pop af                                           ; $4f95: $f1

jr_090_4f96:
	or d                                             ; $4f96: $b2
	ldh a, [$6d]                                     ; $4f97: $f0 $6d
	ld e, c                                          ; $4f99: $59
	ldh a, [$27]                                     ; $4f9a: $f0 $27
	ld l, [hl]                                       ; $4f9c: $6e
	ld e, a                                          ; $4f9d: $5f
	add hl, sp                                       ; $4f9e: $39
	ld b, l                                          ; $4f9f: $45
	ld e, c                                          ; $4fa0: $59
	and b                                            ; $4fa1: $a0
	cpl                                              ; $4fa2: $2f
	ldh a, [rBCPD]                                   ; $4fa3: $f0 $69
	ldh a, [rSC]                                     ; $4fa5: $f0 $02
	ld [hl], e                                       ; $4fa7: $73
	sub e                                            ; $4fa8: $93
	ldh a, [$7e]                                     ; $4fa9: $f0 $7e
	ldh a, [$7c]                                     ; $4fab: $f0 $7c
	ld [hl], e                                       ; $4fad: $73
	sub e                                            ; $4fae: $93
	ld c, e                                          ; $4faf: $4b
	and c                                            ; $4fb0: $a1
	xor $1f                                          ; $4fb1: $ee $1f
	xor b                                            ; $4fb3: $a8
	ld b, b                                          ; $4fb4: $40
	dec sp                                           ; $4fb5: $3b
	ld h, c                                          ; $4fb6: $61
	ld b, d                                          ; $4fb7: $42

jr_090_4fb8:
	ldh a, [$38]                                     ; $4fb8: $f0 $38
	ld d, e                                          ; $4fba: $53
	xor h                                            ; $4fbb: $ac
	xor $27                                          ; $4fbc: $ee $27
	pop af                                           ; $4fbe: $f1
	ld l, e                                          ; $4fbf: $6b
	ldh a, [$c0]                                     ; $4fc0: $f0 $c0
	ld a, [hl-]                                      ; $4fc2: $3a
	ld b, c                                          ; $4fc3: $41
	ld b, h                                          ; $4fc4: $44
	and b                                            ; $4fc5: $a0
	cpl                                              ; $4fc6: $2f
	ldh a, [hDisp0_OBP0]                                     ; $4fc7: $f0 $86
	di                                               ; $4fc9: $f3
	pop af                                           ; $4fca: $f1
	ld d, e                                          ; $4fcb: $53
	jr c, jr_090_5006                                ; $4fcc: $38 $38

	ld b, l                                          ; $4fce: $45
	add hl, bc                                       ; $4fcf: $09
	xor $27                                          ; $4fd0: $ee $27
	xor h                                            ; $4fd2: $ac
	ld a, [hl]                                       ; $4fd3: $7e
	ld d, l                                          ; $4fd4: $55
	db $ec                                           ; $4fd5: $ec
	dec b                                            ; $4fd6: $05
	ld b, l                                          ; $4fd7: $45
	and b                                            ; $4fd8: $a0
	cpl                                              ; $4fd9: $2f
	db $ec                                           ; $4fda: $ec
	xor h                                            ; $4fdb: $ac
	ld b, d                                          ; $4fdc: $42
	ldh a, [$38]                                     ; $4fdd: $f0 $38
	ld d, e                                          ; $4fdf: $53
	ld b, l                                          ; $4fe0: $45
	ld d, l                                          ; $4fe1: $55
	ld a, [hl-]                                      ; $4fe2: $3a
	jr c, jr_090_4f86                                ; $4fe3: $38 $a1

	db $ec                                           ; $4fe5: $ec
	xor h                                            ; $4fe6: $ac
	ld c, d                                          ; $4fe7: $4a
	ld c, a                                          ; $4fe8: $4f
	inc de                                           ; $4fe9: $13
	db $ec                                           ; $4fea: $ec
	ld a, [bc]                                       ; $4feb: $0a
	ld [hl], h                                       ; $4fec: $74
	and b                                            ; $4fed: $a0
	add hl, bc                                       ; $4fee: $09
	ld b, b                                          ; $4fef: $40
	ld c, l                                          ; $4ff0: $4d
	ld e, e                                          ; $4ff1: $5b
	ld d, [hl]                                       ; $4ff2: $56
	inc [hl]                                         ; $4ff3: $34
	db $eb                                           ; $4ff4: $eb
	ld d, d                                          ; $4ff5: $52
	and c                                            ; $4ff6: $a1
	cpl                                              ; $4ff7: $2f
	ld b, e                                          ; $4ff8: $43
	ld b, b                                          ; $4ff9: $40
	add hl, sp                                       ; $4ffa: $39
	ld b, h                                          ; $4ffb: $44
	ld c, h                                          ; $4ffc: $4c
	xor b                                            ; $4ffd: $a8
	db $eb                                           ; $4ffe: $eb
	ld d, d                                          ; $4fff: $52

jr_090_5000:
	and b                                            ; $5000: $a0
	db $ed                                           ; $5001: $ed
	inc hl                                           ; $5002: $23
	ld d, e                                          ; $5003: $53
	xor h                                            ; $5004: $ac
	ld h, c                                          ; $5005: $61

jr_090_5006:
	ld d, [hl]                                       ; $5006: $56
	ld b, c                                          ; $5007: $41
	ld c, c                                          ; $5008: $49
	ld d, d                                          ; $5009: $52
	dec sp                                           ; $500a: $3b
	ld d, c                                          ; $500b: $51
	sbc l                                            ; $500c: $9d
	ld b, a                                          ; $500d: $47
	inc de                                           ; $500e: $13
	pop af                                           ; $500f: $f1
	ld [hl], $53                                     ; $5010: $36 $53
	ld d, b                                          ; $5012: $50
	ld a, [hl-]                                      ; $5013: $3a
	jr c, jr_090_505b                                ; $5014: $38 $45

	ld e, c                                          ; $5016: $59
	and b                                            ; $5017: $a0
	cpl                                              ; $5018: $2f
	db $ec                                           ; $5019: $ec
	ld h, e                                          ; $501a: $63
	ld h, d                                          ; $501b: $62
	ldh a, [hDisp1_WX]                                     ; $501c: $f0 $96
	ld d, c                                          ; $501e: $51
	ld c, c                                          ; $501f: $49
	db $ec                                           ; $5020: $ec
	ld a, [bc]                                       ; $5021: $0a
	add hl, bc                                       ; $5022: $09
	xor $27                                          ; $5023: $ee $27
	ld b, l                                          ; $5025: $45
	ld d, l                                          ; $5026: $55
	ld h, e                                          ; $5027: $63
	inc a                                            ; $5028: $3c
	ld b, c                                          ; $5029: $41
	ld a, [hl-]                                      ; $502a: $3a
	jr c, jr_090_5040                                ; $502b: $38 $13

	inc a                                            ; $502d: $3c
	ld d, b                                          ; $502e: $50
	inc [hl]                                         ; $502f: $34
	db $ec                                           ; $5030: $ec
	db $ed                                           ; $5031: $ed
	ld e, c                                          ; $5032: $59
	and b                                            ; $5033: $a0
	cpl                                              ; $5034: $2f
	db $eb                                           ; $5035: $eb
	db $fc                                           ; $5036: $fc
	ld b, a                                          ; $5037: $47
	ld c, e                                          ; $5038: $4b
	db $ec                                           ; $5039: $ec
	ld l, h                                          ; $503a: $6c
	ld b, h                                          ; $503b: $44
	ld c, h                                          ; $503c: $4c
	add hl, bc                                       ; $503d: $09
	ld b, b                                          ; $503e: $40
	ld b, c                                          ; $503f: $41

jr_090_5040:
	ld a, [hl-]                                      ; $5040: $3a
	ld d, h                                          ; $5041: $54
	ld c, c                                          ; $5042: $49
	ld a, [hl-]                                      ; $5043: $3a
	jr c, jr_090_5095                                ; $5044: $38 $4f

	ld b, c                                          ; $5046: $41
	xor b                                            ; $5047: $a8
	xor $27                                          ; $5048: $ee $27
	ld c, d                                          ; $504a: $4a
	ld e, h                                          ; $504b: $5c
	ld c, [hl]                                       ; $504c: $4e
	ld c, a                                          ; $504d: $4f
	ld b, c                                          ; $504e: $41
	and b                                            ; $504f: $a0
	cpl                                              ; $5050: $2f
	db $eb                                           ; $5051: $eb
	ld h, a                                          ; $5052: $67
	db $ec                                           ; $5053: $ec
	ld a, [bc]                                       ; $5054: $0a
	ld c, b                                          ; $5055: $48
	and c                                            ; $5056: $a1
	xor $27                                          ; $5057: $ee $27
	ld h, e                                          ; $5059: $63
	inc a                                            ; $505a: $3c

jr_090_505b:
	ld b, c                                          ; $505b: $41
	ld a, [hl-]                                      ; $505c: $3a
	ld e, c                                          ; $505d: $59
	jr c, jr_090_5000                                ; $505e: $38 $a0

	ld [hl], d                                       ; $5060: $72
	ccf                                              ; $5061: $3f
	ld e, c                                          ; $5062: $59
	xor h                                            ; $5063: $ac
	xor $27                                          ; $5064: $ee $27
	inc [hl]                                         ; $5066: $34
	db $eb                                           ; $5067: $eb
	xor [hl]                                         ; $5068: $ae
	ld d, e                                          ; $5069: $53
	inc de                                           ; $506a: $13
	ld c, d                                          ; $506b: $4a
	dec a                                            ; $506c: $3d
	ld b, l                                          ; $506d: $45
	ld e, c                                          ; $506e: $59
	and b                                            ; $506f: $a0
	cpl                                              ; $5070: $2f
	ld d, d                                          ; $5071: $52
	sbc h                                            ; $5072: $9c
	ld c, e                                          ; $5073: $4b
	pop af                                           ; $5074: $f1
	inc l                                            ; $5075: $2c
	di                                               ; $5076: $f3
	ld [hl], l                                       ; $5077: $75
	ldh a, [rAUD3LEVEL]                              ; $5078: $f0 $1c
	ld b, h                                          ; $507a: $44
	ld a, [hl-]                                      ; $507b: $3a
	add hl, bc                                       ; $507c: $09
	xor $27                                          ; $507d: $ee $27
	inc [hl]                                         ; $507f: $34
	ld d, h                                          ; $5080: $54
	ld c, l                                          ; $5081: $4d
	inc a                                            ; $5082: $3c
	ld d, b                                          ; $5083: $50
	inc de                                           ; $5084: $13
	ldh a, [rAUD4LEN]                                ; $5085: $f0 $20
	ld h, l                                          ; $5087: $65
	ldh a, [rAUD4LEN]                                ; $5088: $f0 $20
	ld h, l                                          ; $508a: $65
	ld b, h                                          ; $508b: $44
	ld d, c                                          ; $508c: $51
	sub a                                            ; $508d: $97
	ld e, c                                          ; $508e: $59
	and b                                            ; $508f: $a0
	cpl                                              ; $5090: $2f
	ldh a, [$e5]                                     ; $5091: $f0 $e5
	add b                                            ; $5093: $80
	pop af                                           ; $5094: $f1

jr_090_5095:
	ld h, c                                          ; $5095: $61
	ld e, l                                          ; $5096: $5d
	ld a, [hl-]                                      ; $5097: $3a
	ld e, h                                          ; $5098: $5c
	ld d, [hl]                                       ; $5099: $56
	db $ed                                           ; $509a: $ed
	add a                                            ; $509b: $87
	ldh a, [rAUD1LOW]                                ; $509c: $f0 $13
	jr c, jr_090_50e5                                ; $509e: $38 $45

	add hl, bc                                       ; $50a0: $09
	ld b, b                                          ; $50a1: $40
	add hl, sp                                       ; $50a2: $39
	jr c, jr_090_50de                                ; $50a3: $38 $39

	db $ed                                           ; $50a5: $ed
	ld e, l                                          ; $50a6: $5d
	ld c, e                                          ; $50a7: $4b
	inc de                                           ; $50a8: $13
	ld e, d                                          ; $50a9: $5a
	add hl, sp                                       ; $50aa: $39
	ld a, [hl-]                                      ; $50ab: $3a

jr_090_50ac:
	ld b, c                                          ; $50ac: $41
	ld c, d                                          ; $50ad: $4a
	ld d, c                                          ; $50ae: $51
	inc a                                            ; $50af: $3c
	and c                                            ; $50b0: $a1
	cpl                                              ; $50b1: $2f
	ld [hl-], a                                      ; $50b2: $32
	add hl, sp                                       ; $50b3: $39
	dec sp                                           ; $50b4: $3b
	inc [hl]                                         ; $50b5: $34
	db $ec                                           ; $50b6: $ec
	push de                                          ; $50b7: $d5
	xor b                                            ; $50b8: $a8
	add d                                            ; $50b9: $82
	jr c, jr_090_50ac                                ; $50ba: $38 $f0

	ldh [$79], a                                     ; $50bc: $e0 $79
	ld a, [hl-]                                      ; $50be: $3a
	jr c, @+$70                                      ; $50bf: $38 $6e

	and e                                            ; $50c1: $a3
	cpl                                              ; $50c2: $2f
	ld l, d                                          ; $50c3: $6a
	ld b, d                                          ; $50c4: $42
	ldh a, [$8e]                                     ; $50c5: $f0 $8e
	pop af                                           ; $50c7: $f1
	ld c, l                                          ; $50c8: $4d
	ld e, c                                          ; $50c9: $59
	ldh a, [$03]                                     ; $50ca: $f0 $03
	ldh a, [rSC]                                     ; $50cc: $f0 $02
	ld a, l                                          ; $50ce: $7d
	ld h, l                                          ; $50cf: $65
	push af                                          ; $50d0: $f5
	ld b, $41                                        ; $50d1: $06 $41
	ld c, d                                          ; $50d3: $4a
	dec a                                            ; $50d4: $3d
	ld b, l                                          ; $50d5: $45
	add hl, bc                                       ; $50d6: $09
	ld e, [hl]                                       ; $50d7: $5e
	dec sp                                           ; $50d8: $3b
	xor c                                            ; $50d9: $a9
	ld l, e                                          ; $50da: $6b
	ld b, b                                          ; $50db: $40
	ld c, l                                          ; $50dc: $4d
	ld e, c                                          ; $50dd: $59

jr_090_50de:
	xor c                                            ; $50de: $a9
	xor $27                                          ; $50df: $ee $27
	inc [hl]                                         ; $50e1: $34
	ldh a, [$2d]                                     ; $50e2: $f0 $2d
	ld d, b                                          ; $50e4: $50

jr_090_50e5:
	ld a, [hl-]                                      ; $50e5: $3a
	ld e, c                                          ; $50e6: $59
	jr c, @-$5e                                      ; $50e7: $38 $a0

	xor $27                                          ; $50e9: $ee $27
	ld b, d                                          ; $50eb: $42
	pop af                                           ; $50ec: $f1
	xor e                                            ; $50ed: $ab
	inc [hl]                                         ; $50ee: $34
	ldh a, [$3e]                                     ; $50ef: $f0 $3e
	ldh a, [$0b]                                     ; $50f1: $f0 $0b
	and c                                            ; $50f3: $a1
	cpl                                              ; $50f4: $2f
	add sp, $56                                      ; $50f5: $e8 $56
	add hl, bc                                       ; $50f7: $09
	ld e, [hl]                                       ; $50f8: $5e
	ldh a, [$5a]                                     ; $50f9: $f0 $5a
	ldh a, [$5a]                                     ; $50fb: $f0 $5a
	xor b                                            ; $50fd: $a8
	xor $27                                          ; $50fe: $ee $27
	inc [hl]                                         ; $5100: $34
	ldh a, [$35]                                     ; $5101: $f0 $35
	ldh a, [rSC]                                     ; $5103: $f0 $02
	ldh a, [$c3]                                     ; $5105: $f0 $c3
	ldh a, [$c2]                                     ; $5107: $f0 $c2
	ld b, a                                          ; $5109: $47
	ld c, e                                          ; $510a: $4b
	inc de                                           ; $510b: $13
	ldh a, [$67]                                     ; $510c: $f0 $67
	ldh a, [$9f]                                     ; $510e: $f0 $9f
	ld b, [hl]                                       ; $5110: $46
	ld c, [hl]                                       ; $5111: $4e
	ld b, c                                          ; $5112: $41
	ld b, h                                          ; $5113: $44
	and b                                            ; $5114: $a0
	cpl                                              ; $5115: $2f
	db $ed                                           ; $5116: $ed
	ld e, [hl]                                       ; $5117: $5e
	inc [hl]                                         ; $5118: $34
	pop af                                           ; $5119: $f1
	and $f3                                          ; $511a: $e6 $f3
	pop de                                           ; $511c: $d1
	inc a                                            ; $511d: $3c
	ld d, b                                          ; $511e: $50
	ld l, [hl]                                       ; $511f: $6e
	ld d, a                                          ; $5120: $57
	ldh a, [hDisp1_WX]                                     ; $5121: $f0 $96
	ld a, c                                          ; $5123: $79
	add hl, bc                                       ; $5124: $09
	ld e, [hl]                                       ; $5125: $5e
	ld e, c                                          ; $5126: $59
	xor c                                            ; $5127: $a9
	xor $27                                          ; $5128: $ee $27
	ld b, b                                          ; $512a: $40
	ld b, c                                          ; $512b: $41
	ld a, [hl-]                                      ; $512c: $3a
	ld b, a                                          ; $512d: $47
	ldh a, [$a3]                                     ; $512e: $f0 $a3
	ldh a, [$0b]                                     ; $5130: $f0 $0b
	inc a                                            ; $5132: $3c
	ld a, [hl-]                                      ; $5133: $3a
	and b                                            ; $5134: $a0
	cpl                                              ; $5135: $2f
	add sp, -$19                                     ; $5136: $e8 $e7
	add hl, bc                                       ; $5138: $09
	xor $27                                          ; $5139: $ee $27
	ld d, h                                          ; $513b: $54
	ld b, d                                          ; $513c: $42
	pop af                                           ; $513d: $f1
	xor e                                            ; $513e: $ab
	xor h                                            ; $513f: $ac
	pop af                                           ; $5140: $f1
	ld l, e                                          ; $5141: $6b
	ldh a, [$c0]                                     ; $5142: $f0 $c0
	ld a, [hl-]                                      ; $5144: $3a
	ld b, d                                          ; $5145: $42
	ld b, a                                          ; $5146: $47
	ld c, b                                          ; $5147: $48
	and b                                            ; $5148: $a0
	ld e, d                                          ; $5149: $5a

Jump_090_514a:
	ld b, c                                          ; $514a: $41
	ld a, [hl-]                                      ; $514b: $3a
	pop af                                           ; $514c: $f1
	xor e                                            ; $514d: $ab
	ld h, d                                          ; $514e: $62
	inc de                                           ; $514f: $13
	pop af                                           ; $5150: $f1
	xor e                                            ; $5151: $ab
	ld h, h                                          ; $5152: $64
	add hl, sp                                       ; $5153: $39
	inc a                                            ; $5154: $3c
	ld a, [hl-]                                      ; $5155: $3a
	ld e, c                                          ; $5156: $59
	and b                                            ; $5157: $a0
	cpl                                              ; $5158: $2f
	pop af                                           ; $5159: $f1
	pop bc                                           ; $515a: $c1
	ldh a, [$59]                                     ; $515b: $f0 $59
	inc [hl]                                         ; $515d: $34
	ldh a, [$3d]                                     ; $515e: $f0 $3d
	pop af                                           ; $5160: $f1
	ld [bc], a                                       ; $5161: $02
	pop af                                           ; $5162: $f1
	daa                                              ; $5163: $27
	ld h, l                                          ; $5164: $65
	ld b, h                                          ; $5165: $44
	ld c, h                                          ; $5166: $4c
	add hl, bc                                       ; $5167: $09
	ld b, b                                          ; $5168: $40
	ld c, l                                          ; $5169: $4d
	ld a, [hl-]                                      ; $516a: $3a
	ld d, b                                          ; $516b: $50
	xor h                                            ; $516c: $ac
	xor $27                                          ; $516d: $ee $27
	ld c, a                                          ; $516f: $4f
	add a                                            ; $5170: $87
	adc e                                            ; $5171: $8b
	ld e, h                                          ; $5172: $5c
	ld a, [hl-]                                      ; $5173: $3a
	ld b, c                                          ; $5174: $41
	ld b, h                                          ; $5175: $44
	and b                                            ; $5176: $a0
	cpl                                              ; $5177: $2f
	db $ec                                           ; $5178: $ec
	reti                                             ; $5179: $d9


	ldh a, [$a8]                                     ; $517a: $f0 $a8
	pop af                                           ; $517c: $f1
	xor e                                            ; $517d: $ab
	ld b, h                                          ; $517e: $44
	ld e, a                                          ; $517f: $5f
	add hl, sp                                       ; $5180: $39
	add hl, bc                                       ; $5181: $09
	xor $27                                          ; $5182: $ee $27
	xor h                                            ; $5184: $ac
	ld sp, hl                                        ; $5185: $f9
	sbc $3b                                          ; $5186: $de $3b
	pop af                                           ; $5188: $f1
	rla                                              ; $5189: $17
	jr c, jr_090_51ce                                ; $518a: $38 $42

	ld c, e                                          ; $518c: $4b
	ldh a, [$f1]                                     ; $518d: $f0 $f1
	ldh a, [$9d]                                     ; $518f: $f0 $9d
	ld a, [hl-]                                      ; $5191: $3a
	ld b, d                                          ; $5192: $42
	ld e, c                                          ; $5193: $59
	and b                                            ; $5194: $a0
	cpl                                              ; $5195: $2f
	ldh a, [$6d]                                     ; $5196: $f0 $6d
	ld e, c                                          ; $5198: $59
	ldh a, [$27]                                     ; $5199: $f0 $27
	di                                               ; $519b: $f3
	add d                                            ; $519c: $82
	pop af                                           ; $519d: $f1
	jp $abf1                                         ; $519e: $c3 $f1 $ab


jr_090_51a1:
	ld c, e                                          ; $51a1: $4b
	ld e, d                                          ; $51a2: $5a
	add hl, sp                                       ; $51a3: $39
	and c                                            ; $51a4: $a1
	ld b, b                                          ; $51a5: $40
	ld b, c                                          ; $51a6: $41
	ld a, [hl-]                                      ; $51a7: $3a
	ld b, d                                          ; $51a8: $42
	inc [hl]                                         ; $51a9: $34
	ld b, [hl]                                       ; $51aa: $46
	ld c, [hl]                                       ; $51ab: $4e
	inc a                                            ; $51ac: $3c
	ld a, [hl-]                                      ; $51ad: $3a
	ld [hl], h                                       ; $51ae: $74
	and c                                            ; $51af: $a1
	ld h, e                                          ; $51b0: $63
	ld e, c                                          ; $51b1: $59
	jr c, jr_090_51e8                                ; $51b2: $38 $34

	ldh a, [$b2]                                     ; $51b4: $f0 $b2
	ldh a, [rLY]                                     ; $51b6: $f0 $44
	pop af                                           ; $51b8: $f1
	sbc b                                            ; $51b9: $98
	ld b, h                                          ; $51ba: $44
	and b                                            ; $51bb: $a0
	cpl                                              ; $51bc: $2f
	ld b, e                                          ; $51bd: $43
	ld e, e                                          ; $51be: $5b
	ld d, [hl]                                       ; $51bf: $56
	ld b, [hl]                                       ; $51c0: $46
	inc [hl]                                         ; $51c1: $34
	db $eb                                           ; $51c2: $eb
	ld d, d                                          ; $51c3: $52
	inc a                                            ; $51c4: $3c
	and b                                            ; $51c5: $a0
	cpl                                              ; $51c6: $2f
	jp hl                                            ; $51c7: $e9


	cp e                                             ; $51c8: $bb
	xor h                                            ; $51c9: $ac
	ld [$6222], a                                    ; $51ca: $ea $22 $62
	inc de                                           ; $51cd: $13

jr_090_51ce:
	db $eb                                           ; $51ce: $eb
	adc a                                            ; $51cf: $8f
	and e                                            ; $51d0: $a3
	cpl                                              ; $51d1: $2f
	db $eb                                           ; $51d2: $eb
	db $fc                                           ; $51d3: $fc
	jp hl                                            ; $51d4: $e9


	cp b                                             ; $51d5: $b8
	add hl, bc                                       ; $51d6: $09
	cpl                                              ; $51d7: $2f
	ld b, e                                          ; $51d8: $43
	db $eb                                           ; $51d9: $eb
	db $fc                                           ; $51da: $fc
	xor h                                            ; $51db: $ac
	ld [$1322], a                                    ; $51dc: $ea $22 $13
	ld [hl], d                                       ; $51df: $72
	ld b, a                                          ; $51e0: $47
	db $eb                                           ; $51e1: $eb
	ld e, h                                          ; $51e2: $5c
	and c                                            ; $51e3: $a1
	ld [$a922], a                                    ; $51e4: $ea $22 $a9
	ld h, a                                          ; $51e7: $67

jr_090_51e8:
	ld d, h                                          ; $51e8: $54
	add hl, sp                                       ; $51e9: $39
	inc [hl]                                         ; $51ea: $34
	ld h, a                                          ; $51eb: $67
	ld d, h                                          ; $51ec: $54
	add hl, sp                                       ; $51ed: $39
	and b                                            ; $51ee: $a0
	cpl                                              ; $51ef: $2f
	add sp, $51                                      ; $51f0: $e8 $51
	add hl, bc                                       ; $51f2: $09
	cpl                                              ; $51f3: $2f
	ld b, e                                          ; $51f4: $43
	db $eb                                           ; $51f5: $eb
	db $fc                                           ; $51f6: $fc
	xor h                                            ; $51f7: $ac
	ld l, e                                          ; $51f8: $6b
	ld b, a                                          ; $51f9: $47
	ldh a, [rLCDC]                                   ; $51fa: $f0 $40
	ld d, a                                          ; $51fc: $57
	dec a                                            ; $51fd: $3d
	jr c, jr_090_51a1                                ; $51fe: $38 $a1

	ld e, d                                          ; $5200: $5a
	ld c, l                                          ; $5201: $4d
	ld b, a                                          ; $5202: $47
	db $ec                                           ; $5203: $ec
	inc c                                            ; $5204: $0c
	ld a, [hl-]                                      ; $5205: $3a
	ld e, c                                          ; $5206: $59
	and b                                            ; $5207: $a0
	cpl                                              ; $5208: $2f
	add sp, $0d                                      ; $5209: $e8 $0d
	add hl, bc                                       ; $520b: $09
	cpl                                              ; $520c: $2f
	add sp, $2b                                      ; $520d: $e8 $2b
	add hl, bc                                       ; $520f: $09
	cpl                                              ; $5210: $2f
	add sp, $52                                      ; $5211: $e8 $52
	add hl, bc                                       ; $5213: $09
	cpl                                              ; $5214: $2f
	add sp, -$76                                     ; $5215: $e8 $8a
	add hl, bc                                       ; $5217: $09
	cpl                                              ; $5218: $2f
	jp hl                                            ; $5219: $e9


	cp c                                             ; $521a: $b9
	add hl, bc                                       ; $521b: $09
	xor $27                                          ; $521c: $ee $27
	xor h                                            ; $521e: $ac
	ld d, h                                          ; $521f: $54
	ld c, l                                          ; $5220: $4d
	db $ec                                           ; $5221: $ec
	ld a, h                                          ; $5222: $7c
	ld e, h                                          ; $5223: $5c
	ld a, [hl-]                                      ; $5224: $3a
	ld b, c                                          ; $5225: $41
	ld b, h                                          ; $5226: $44
	and b                                            ; $5227: $a0
	cpl                                              ; $5228: $2f
	ld b, e                                          ; $5229: $43
	ld e, e                                          ; $522a: $5b
	ld d, [hl]                                       ; $522b: $56
	ld b, [hl]                                       ; $522c: $46
	db $ec                                           ; $522d: $ec
	dec a                                            ; $522e: $3d
	and b                                            ; $522f: $a0
	add e                                            ; $5230: $83
	ldh a, [rP1]                                     ; $5231: $f0 $00
	ldh a, [$03]                                     ; $5233: $f0 $03
	ld d, e                                          ; $5235: $53
	ld b, [hl]                                       ; $5236: $46
	dec sp                                           ; $5237: $3b
	dec a                                            ; $5238: $3d
	ld c, h                                          ; $5239: $4c
	ld e, c                                          ; $523a: $59
	and b                                            ; $523b: $a0
	cpl                                              ; $523c: $2f
	halt                                             ; $523d: $76
	ld c, e                                          ; $523e: $4b
	inc [hl]                                         ; $523f: $34
	ret                                              ; $5240: $c9


	ldh a, [$71]                                     ; $5241: $f0 $71
	inc a                                            ; $5243: $3c
	dec sp                                           ; $5244: $3b
	dec a                                            ; $5245: $3d
	ld b, l                                          ; $5246: $45
	add hl, bc                                       ; $5247: $09
	ldh a, [$71]                                     ; $5248: $f0 $71
	jr c, @+$4b                                      ; $524a: $38 $49

	ld e, h                                          ; $524c: $5c
	ld c, e                                          ; $524d: $4b
	inc de                                           ; $524e: $13
	xor $27                                          ; $524f: $ee $27
	ld b, a                                          ; $5251: $47
	pop af                                           ; $5252: $f1
	dec h                                            ; $5253: $25
	ld a, c                                          ; $5254: $79
	ccf                                              ; $5255: $3f
	ld c, h                                          ; $5256: $4c
	and b                                            ; $5257: $a0
	cpl                                              ; $5258: $2f
	add sp, $35                                      ; $5259: $e8 $35
	add hl, bc                                       ; $525b: $09
	add hl, sp                                       ; $525c: $39
	ld e, c                                          ; $525d: $59
	xor b                                            ; $525e: $a8
	xor $27                                          ; $525f: $ee $27
	inc [hl]                                         ; $5261: $34
	ld h, h                                          ; $5262: $64
	inc a                                            ; $5263: $3c
	ld a, $55                                        ; $5264: $3e $55
	ld a, [hl-]                                      ; $5266: $3a
	jr c, @+$51                                      ; $5267: $38 $4f

	ld b, c                                          ; $5269: $41
	and b                                            ; $526a: $a0
	cpl                                              ; $526b: $2f
	pop af                                           ; $526c: $f1
	add d                                            ; $526d: $82
	inc a                                            ; $526e: $3c
	ld b, a                                          ; $526f: $47
	ld [$09b3], a                                    ; $5270: $ea $b3 $09
	ld c, d                                          ; $5273: $4a
	ld c, a                                          ; $5274: $4f
	ld d, h                                          ; $5275: $54
	ld b, d                                          ; $5276: $42
	add e                                            ; $5277: $83
	ldh a, [rP1]                                     ; $5278: $f0 $00
	ldh a, [$03]                                     ; $527a: $f0 $03
	ld d, e                                          ; $527c: $53
	xor h                                            ; $527d: $ac
	xor $27                                          ; $527e: $ee $27
	ld b, a                                          ; $5280: $47
	ld c, e                                          ; $5281: $4b
	inc de                                           ; $5282: $13
	dec a                                            ; $5283: $3d
	ld d, d                                          ; $5284: $52
	ld d, b                                          ; $5285: $50
	ld a, [hl-]                                      ; $5286: $3a
	jr c, jr_090_52ca                                ; $5287: $38 $41

	ld b, h                                          ; $5289: $44
	and b                                            ; $528a: $a0
	db $ed                                           ; $528b: $ed
	add hl, de                                       ; $528c: $19
	dec sp                                           ; $528d: $3b
	ccf                                              ; $528e: $3f
	ld c, a                                          ; $528f: $4f
	xor h                                            ; $5290: $ac
	ldh a, [$35]                                     ; $5291: $f0 $35
	ld a, l                                          ; $5293: $7d
	ldh a, [$35]                                     ; $5294: $f0 $35
	ld e, c                                          ; $5296: $59
	ld h, l                                          ; $5297: $65
	and b                                            ; $5298: $a0
	cpl                                              ; $5299: $2f
	ld c, d                                          ; $529a: $4a
	ld c, a                                          ; $529b: $4f
	inc [hl]                                         ; $529c: $34
	ldh a, [c]                                       ; $529d: $f2
	ld a, [hl]                                       ; $529e: $7e
	ld e, h                                          ; $529f: $5c
	ccf                                              ; $52a0: $3f
	ld e, h                                          ; $52a1: $5c
	dec a                                            ; $52a2: $3d
	ld c, d                                          ; $52a3: $4a
	ld a, $66                                        ; $52a4: $3e $66
	add hl, sp                                       ; $52a6: $39
	and c                                            ; $52a7: $a1

Call_090_52a8:
	xor $1f                                          ; $52a8: $ee $1f
	xor b                                            ; $52aa: $a8
	pop af                                           ; $52ab: $f1
	add d                                            ; $52ac: $82
	inc a                                            ; $52ad: $3c
	ld b, a                                          ; $52ae: $47
	pop af                                           ; $52af: $f1
	ld l, a                                          ; $52b0: $6f
	ld b, d                                          ; $52b1: $42
	ld c, a                                          ; $52b2: $4f
	ldh a, [rLCDC]                                   ; $52b3: $f0 $40
	ld d, a                                          ; $52b5: $57
	dec a                                            ; $52b6: $3d
	jr c, @+$3c                                      ; $52b7: $38 $3a

	and b                                            ; $52b9: $a0
	cpl                                              ; $52ba: $2f
	db $dd                                           ; $52bb: $dd
	ldh a, [c]                                       ; $52bc: $f2
	ld a, [hl]                                       ; $52bd: $7e
	ld e, h                                          ; $52be: $5c
	ld c, [hl]                                       ; $52bf: $4e
	ld d, d                                          ; $52c0: $52
	ld c, d                                          ; $52c1: $4a
	ldh a, [rLCDC]                                   ; $52c2: $f0 $40
	ld c, [hl]                                       ; $52c4: $4e
	adc l                                            ; $52c5: $8d
	add hl, bc                                       ; $52c6: $09
	add hl, sp                                       ; $52c7: $39
	ld e, c                                          ; $52c8: $59
	ld b, c                                          ; $52c9: $41

jr_090_52ca:
	xor b                                            ; $52ca: $a8
	ld c, d                                          ; $52cb: $4a
	ld c, a                                          ; $52cc: $4f
	ld e, c                                          ; $52cd: $59
	xor h                                            ; $52ce: $ac
	pop af                                           ; $52cf: $f1
	ld l, a                                          ; $52d0: $6f
	ld b, d                                          ; $52d1: $42
	ld c, a                                          ; $52d2: $4f
	ldh a, [rLCDC]                                   ; $52d3: $f0 $40
	ld d, a                                          ; $52d5: $57
	dec a                                            ; $52d6: $3d
	jr c, jr_090_5313                                ; $52d7: $38 $3a

	and b                                            ; $52d9: $a0
	cpl                                              ; $52da: $2f
	sbc $34                                          ; $52db: $de $34
	adc e                                            ; $52dd: $8b
	ld e, h                                          ; $52de: $5c
	db $ec                                           ; $52df: $ec
	ld [hl+], a                                      ; $52e0: $22
	add hl, bc                                       ; $52e1: $09
	ld b, b                                          ; $52e2: $40
	add hl, sp                                       ; $52e3: $39
	ld b, h                                          ; $52e4: $44
	ld b, l                                          ; $52e5: $45
	xor b                                            ; $52e6: $a8
	ld c, d                                          ; $52e7: $4a
	ld c, a                                          ; $52e8: $4f
	inc [hl]                                         ; $52e9: $34
	pop af                                           ; $52ea: $f1
	ld l, a                                          ; $52eb: $6f
	ld c, a                                          ; $52ec: $4f
	adc e                                            ; $52ed: $8b
	ld e, h                                          ; $52ee: $5c
	ld b, h                                          ; $52ef: $44
	ld b, l                                          ; $52f0: $45
	and b                                            ; $52f1: $a0
	xor $27                                          ; $52f2: $ee $27
	xor h                                            ; $52f4: $ac
	ldh a, [$c3]                                     ; $52f5: $f0 $c3
	ldh a, [rAUD4LEN]                                ; $52f7: $f0 $20
	ldh a, [$c2]                                     ; $52f9: $f0 $c2
	dec sp                                           ; $52fb: $3b
	ccf                                              ; $52fc: $3f
	pop af                                           ; $52fd: $f1
	ld l, c                                          ; $52fe: $69
	ld a, a                                          ; $52ff: $7f
	ld b, h                                          ; $5300: $44
	ld b, l                                          ; $5301: $45
	and b                                            ; $5302: $a0
	cpl                                              ; $5303: $2f
	ld b, e                                          ; $5304: $43
	ld b, b                                          ; $5305: $40
	add hl, sp                                       ; $5306: $39
	xor b                                            ; $5307: $a8
	ld b, b                                          ; $5308: $40
	ld c, l                                          ; $5309: $4d
	ld e, e                                          ; $530a: $5b
	ld d, [hl]                                       ; $530b: $56
	inc [hl]                                         ; $530c: $34
	sub [hl]                                         ; $530d: $96
	ld e, a                                          ; $530e: $5f
	add hl, sp                                       ; $530f: $39
	inc a                                            ; $5310: $3c
	and b                                            ; $5311: $a0
	ld [hl], a                                       ; $5312: $77

jr_090_5313:
	dec sp                                           ; $5313: $3b
	dec a                                            ; $5314: $3d
	ld b, l                                          ; $5315: $45
	ld d, a                                          ; $5316: $57
	inc de                                           ; $5317: $13
	ld d, c                                          ; $5318: $51
	ld [hl], b                                       ; $5319: $70
	inc a                                            ; $531a: $3c
	dec sp                                           ; $531b: $3b
	dec a                                            ; $531c: $3d
	ld a, [hl-]                                      ; $531d: $3a
	ld [hl], h                                       ; $531e: $74
	and b                                            ; $531f: $a0
	cpl                                              ; $5320: $2f
	add sp, $15                                      ; $5321: $e8 $15
	add hl, bc                                       ; $5323: $09
	xor $1f                                          ; $5324: $ee $1f
	xor b                                            ; $5326: $a8
	xor $27                                          ; $5327: $ee $27
	inc [hl]                                         ; $5329: $34
	ldh a, [$71]                                     ; $532a: $f0 $71
	ld d, l                                          ; $532c: $55
	ld a, [hl-]                                      ; $532d: $3a
	inc a                                            ; $532e: $3c
	dec sp                                           ; $532f: $3b
	dec a                                            ; $5330: $3d
	ld b, l                                          ; $5331: $45
	and b                                            ; $5332: $a0
	cpl                                              ; $5333: $2f
	add sp, $35                                      ; $5334: $e8 $35
	and c                                            ; $5336: $a1
	xor $27                                          ; $5337: $ee $27
	ld h, h                                          ; $5339: $64
	inc a                                            ; $533a: $3c
	ld a, $55                                        ; $533b: $3e $55
	ld a, [hl-]                                      ; $533d: $3a
	jr c, jr_090_538f                                ; $533e: $38 $4f

	ld b, c                                          ; $5340: $41
	and b                                            ; $5341: $a0
	cpl                                              ; $5342: $2f
	db $eb                                           ; $5343: $eb
	db $fc                                           ; $5344: $fc
	ccf                                              ; $5345: $3f
	inc [hl]                                         ; $5346: $34
	di                                               ; $5347: $f3
	ld [bc], a                                       ; $5348: $02
	pop af                                           ; $5349: $f1
	ld [$22ec], a                                    ; $534a: $ea $ec $22
	add hl, bc                                       ; $534d: $09
	ld c, c                                          ; $534e: $49
	ld e, h                                          ; $534f: $5c
	ld e, d                                          ; $5350: $5a
	ld e, h                                          ; $5351: $5c
	ld c, h                                          ; $5352: $4c
	and b                                            ; $5353: $a0
	pop af                                           ; $5354: $f1
	ld c, c                                          ; $5355: $49
	ld e, c                                          ; $5356: $59
	add e                                            ; $5357: $83
	ld l, c                                          ; $5358: $69
	ldh a, [rAUD3ENA]                                ; $5359: $f0 $1a
	ldh a, [hDisp0_WX]                                     ; $535b: $f0 $89
	add e                                            ; $535d: $83
	dec sp                                           ; $535e: $3b
	ccf                                              ; $535f: $3f
	inc de                                           ; $5360: $13
	di                                               ; $5361: $f3
	reti                                             ; $5362: $d9


	jr c, jr_090_53b1                                ; $5363: $38 $4c

	dec [hl]                                         ; $5365: $35
	ld a, [hl]                                       ; $5366: $7e
	ld d, l                                          ; $5367: $55
	ld [hl], d                                       ; $5368: $72
	ld e, [hl]                                       ; $5369: $5e
	ld a, [hl-]                                      ; $536a: $3a
	inc a                                            ; $536b: $3c
	dec sp                                           ; $536c: $3b
	dec a                                            ; $536d: $3d
	ld e, c                                          ; $536e: $59
	and b                                            ; $536f: $a0
	cpl                                              ; $5370: $2f
	halt                                             ; $5371: $76
	ld c, a                                          ; $5372: $4f
	inc [hl]                                         ; $5373: $34
	halt                                             ; $5374: $76
	ld c, a                                          ; $5375: $4f
	add hl, bc                                       ; $5376: $09
	ld c, d                                          ; $5377: $4a
	ld a, $66                                        ; $5378: $3e $66
	add hl, sp                                       ; $537a: $39
	xor b                                            ; $537b: $a8
	db $ec                                           ; $537c: $ec
	reti                                             ; $537d: $d9


	ld c, h                                          ; $537e: $4c
	ld e, c                                          ; $537f: $59
	and b                                            ; $5380: $a0
	cpl                                              ; $5381: $2f
	ld c, a                                          ; $5382: $4f
	dec sp                                           ; $5383: $3b
	dec a                                            ; $5384: $3d
	jr c, jr_090_53c1                                ; $5385: $38 $3a

	jr c, jr_090_53c3                                ; $5387: $38 $3a

	ld e, c                                          ; $5389: $59
	add hl, bc                                       ; $538a: $09
	db $eb                                           ; $538b: $eb
	inc [hl]                                         ; $538c: $34
	db $ec                                           ; $538d: $ec
	ret c                                            ; $538e: $d8

jr_090_538f:
	xor b                                            ; $538f: $a8
	ld [hl], d                                       ; $5390: $72
	ld e, [hl]                                       ; $5391: $5e
	ld a, [hl-]                                      ; $5392: $3a
	inc a                                            ; $5393: $3c
	dec sp                                           ; $5394: $3b
	dec a                                            ; $5395: $3d
	ld b, c                                          ; $5396: $41
	ld b, h                                          ; $5397: $44
	ld c, a                                          ; $5398: $4f
	ld b, c                                          ; $5399: $41
	and b                                            ; $539a: $a0
	cpl                                              ; $539b: $2f
	db $ec                                           ; $539c: $ec
	inc sp                                           ; $539d: $33
	ld d, e                                          ; $539e: $53
	db $ed                                           ; $539f: $ed
	ld c, c                                          ; $53a0: $49
	ld b, h                                          ; $53a1: $44
	dec sp                                           ; $53a2: $3b
	dec a                                            ; $53a3: $3d
	ld b, d                                          ; $53a4: $42
	ld b, a                                          ; $53a5: $47
	ld c, b                                          ; $53a6: $48
	add hl, bc                                       ; $53a7: $09
	ld e, [hl]                                       ; $53a8: $5e
	ld e, c                                          ; $53a9: $59
	dec sp                                           ; $53aa: $3b
	inc [hl]                                         ; $53ab: $34
	add hl, sp                                       ; $53ac: $39
	ld b, b                                          ; $53ad: $40
	ld e, c                                          ; $53ae: $59
	dec sp                                           ; $53af: $3b
	xor b                                            ; $53b0: $a8

jr_090_53b1:
	ld [hl], d                                       ; $53b1: $72

jr_090_53b2:
	ccf                                              ; $53b2: $3f
	ld a, [hl-]                                      ; $53b3: $3a
	inc a                                            ; $53b4: $3c
	dec sp                                           ; $53b5: $3b
	dec a                                            ; $53b6: $3d
	ld b, l                                          ; $53b7: $45
	and b                                            ; $53b8: $a0
	ld h, e                                          ; $53b9: $63
	ld e, c                                          ; $53ba: $59
	dec sp                                           ; $53bb: $3b
	xor h                                            ; $53bc: $ac
	ldh a, [rAUD1ENV]                                ; $53bd: $f0 $12
	jr c, jr_090_540a                                ; $53bf: $38 $49

jr_090_53c1:
	ld d, h                                          ; $53c1: $54
	add a                                            ; $53c2: $87

jr_090_53c3:
	adc e                                            ; $53c3: $8b
	ld e, h                                          ; $53c4: $5c
	xor b                                            ; $53c5: $a8
	ld e, b                                          ; $53c6: $58
	ld b, [hl]                                       ; $53c7: $46
	inc [hl]                                         ; $53c8: $34
	ldh a, [rLCDC]                                   ; $53c9: $f0 $40
	ld e, a                                          ; $53cb: $5f
	add hl, sp                                       ; $53cc: $39
	inc [hl]                                         ; $53cd: $34
	ldh a, [rLCDC]                                   ; $53ce: $f0 $40
	ld e, a                                          ; $53d0: $5f
	add hl, sp                                       ; $53d1: $39
	and b                                            ; $53d2: $a0
	cpl                                              ; $53d3: $2f
	ld b, e                                          ; $53d4: $43
	xor $2d                                          ; $53d5: $ee $2d
	inc [hl]                                         ; $53d7: $34
	xor $2d                                          ; $53d8: $ee $2d
	and b                                            ; $53da: $a0
	pop af                                           ; $53db: $f1
	push bc                                          ; $53dc: $c5
	di                                               ; $53dd: $f3
	ld e, d                                          ; $53de: $5a
	ldh a, [c]                                       ; $53df: $f2
	ret nc                                           ; $53e0: $d0

	ld b, d                                          ; $53e1: $42
	pop af                                           ; $53e2: $f1
	db $eb                                           ; $53e3: $eb
	ld [hl], c                                       ; $53e4: $71
	dec sp                                           ; $53e5: $3b
	ccf                                              ; $53e6: $3f
	inc de                                           ; $53e7: $13
	ld b, l                                          ; $53e8: $45
	inc a                                            ; $53e9: $3c
	dec sp                                           ; $53ea: $3b
	dec a                                            ; $53eb: $3d
	ld c, h                                          ; $53ec: $4c
	ld e, c                                          ; $53ed: $59
	and b                                            ; $53ee: $a0
	cpl                                              ; $53ef: $2f
	db $eb                                           ; $53f0: $eb
	db $fc                                           ; $53f1: $fc
	ld h, d                                          ; $53f2: $62
	ld [hl], d                                       ; $53f3: $72
	ccf                                              ; $53f4: $3f
	dec a                                            ; $53f5: $3d
	inc a                                            ; $53f6: $3c
	ld d, b                                          ; $53f7: $50
	ld c, b                                          ; $53f8: $48
	add hl, bc                                       ; $53f9: $09
	ld e, [hl]                                       ; $53fa: $5e
	ldh a, [$5a]                                     ; $53fb: $f0 $5a
	ldh a, [$5a]                                     ; $53fd: $f0 $5a
	xor b                                            ; $53ff: $a8
	ldh a, [$29]                                     ; $5400: $f0 $29
	ld a, $38                                        ; $5402: $3e $38
	ld a, [hl-]                                      ; $5404: $3a
	and b                                            ; $5405: $a0
	cpl                                              ; $5406: $2f
	jp hl                                            ; $5407: $e9


	ret nz                                           ; $5408: $c0

	add hl, bc                                       ; $5409: $09

jr_090_540a:
	xor $27                                          ; $540a: $ee $27
	inc [hl]                                         ; $540c: $34
	db $db                                           ; $540d: $db
	ld a, [hl-]                                      ; $540e: $3a
	ld e, c                                          ; $540f: $59
	jr c, jr_090_53b2                                ; $5410: $38 $a0

	cpl                                              ; $5412: $2f
	add sp, -$6c                                     ; $5413: $e8 $94
	add hl, bc                                       ; $5415: $09
	db $eb                                           ; $5416: $eb
	ld d, c                                          ; $5417: $51
	xor h                                            ; $5418: $ac
	ldh a, [$c2]                                     ; $5419: $f0 $c2
	ld e, c                                          ; $541b: $59
	ldh a, [$2f]                                     ; $541c: $f0 $2f
	pop af                                           ; $541e: $f1
	ld b, h                                          ; $541f: $44
	ld e, b                                          ; $5420: $58
	ld b, c                                          ; $5421: $41
	ld d, e                                          ; $5422: $53
	ld [hl], d                                       ; $5423: $72
	ld e, [hl]                                       ; $5424: $5e
	dec a                                            ; $5425: $3d
	ld b, l                                          ; $5426: $45
	and b                                            ; $5427: $a0
	ld [$ace8], a                                    ; $5428: $ea $e8 $ac
	ldh a, [c]                                       ; $542b: $f2
	ld l, d                                          ; $542c: $6a
	ld c, l                                          ; $542d: $4d
	dec a                                            ; $542e: $3d
	ld b, d                                          ; $542f: $42
	ld d, e                                          ; $5430: $53
	xor h                                            ; $5431: $ac
	ldh a, [$71]                                     ; $5432: $f0 $71
	ld d, l                                          ; $5434: $55
	ld a, [hl-]                                      ; $5435: $3a
	inc a                                            ; $5436: $3c
	dec sp                                           ; $5437: $3b
	dec a                                            ; $5438: $3d
	and c                                            ; $5439: $a1
	cpl                                              ; $543a: $2f
	db $eb                                           ; $543b: $eb
	db $fc                                           ; $543c: $fc
	ld c, c                                          ; $543d: $49
	xor $06                                          ; $543e: $ee $06
	ld b, h                                          ; $5440: $44
	inc a                                            ; $5441: $3c
	ld d, b                                          ; $5442: $50
	ld c, b                                          ; $5443: $48
	add hl, bc                                       ; $5444: $09
	ld [hl], b                                       ; $5445: $70
	ld [hl], c                                       ; $5446: $71
	ld b, c                                          ; $5447: $41
	ld c, h                                          ; $5448: $4c
	xor b                                            ; $5449: $a8
	ldh a, [c]                                       ; $544a: $f2
	ld l, d                                          ; $544b: $6a
	ld d, b                                          ; $544c: $50
	ld a, $3d                                        ; $544d: $3e $3d
	ld b, d                                          ; $544f: $42
	inc [hl]                                         ; $5450: $34
	ldh a, [$31]                                     ; $5451: $f0 $31
	ld c, e                                          ; $5453: $4b
	xor $27                                          ; $5454: $ee $27
	ld a, [hl-]                                      ; $5456: $3a
	ld b, c                                          ; $5457: $41

jr_090_5458:
	ld b, h                                          ; $5458: $44
	xor b                                            ; $5459: $a8
	pop af                                           ; $545a: $f1
	ld b, b                                          ; $545b: $40
	pop af                                           ; $545c: $f1
	sub a                                            ; $545d: $97
	pop af                                           ; $545e: $f1
	sub a                                            ; $545f: $97
	and b                                            ; $5460: $a0
	cpl                                              ; $5461: $2f
	db $ed                                           ; $5462: $ed
	ld [hl], d                                       ; $5463: $72
	ldh a, [$71]                                     ; $5464: $f0 $71
	jr c, jr_090_5458                                ; $5466: $38 $f0

	ld b, b                                          ; $5468: $40
	ld d, a                                          ; $5469: $57
	ldh a, [$2c]                                     ; $546a: $f0 $2c
	inc a                                            ; $546c: $3c
	ld c, a                                          ; $546d: $4f
	ld c, h                                          ; $546e: $4c
	add hl, bc                                       ; $546f: $09
	ld b, b                                          ; $5470: $40
	ld b, c                                          ; $5471: $41
	ld a, [hl-]                                      ; $5472: $3a
	ld d, h                                          ; $5473: $54
	ld c, c                                          ; $5474: $49
	ld a, [hl-]                                      ; $5475: $3a
	jr c, jr_090_54bd                                ; $5476: $38 $45

	ld e, c                                          ; $5478: $59
	xor b                                            ; $5479: $a8
	ldh a, [$50]                                     ; $547a: $f0 $50
	ldh a, [$03]                                     ; $547c: $f0 $03
	ldh a, [$50]                                     ; $547e: $f0 $50
	ldh a, [$03]                                     ; $5480: $f0 $03
	ld b, l                                          ; $5482: $45
	ld d, a                                          ; $5483: $57
	ld d, c                                          ; $5484: $51
	ld [hl], b                                       ; $5485: $70
	jr c, jr_090_54ca                                ; $5486: $38 $42

	inc de                                           ; $5488: $13
	jr c, jr_090_54c6                                ; $5489: $38 $3b

	ldh a, [$36]                                     ; $548b: $f0 $36
	jr c, jr_090_54d5                                ; $548d: $38 $46

	ld c, [hl]                                       ; $548f: $4e
	ld b, l                                          ; $5490: $45
	ld e, c                                          ; $5491: $59
	and b                                            ; $5492: $a0
	cpl                                              ; $5493: $2f
	ld [hl-], a                                      ; $5494: $32
	ldh a, [$50]                                     ; $5495: $f0 $50
	ldh a, [$03]                                     ; $5497: $f0 $03
	ldh a, [$50]                                     ; $5499: $f0 $50
	ldh a, [$03]                                     ; $549b: $f0 $03
	dec sp                                           ; $549d: $3b
	ccf                                              ; $549e: $3f
	xor h                                            ; $549f: $ac
	pop af                                           ; $54a0: $f1
	push bc                                          ; $54a1: $c5
	di                                               ; $54a2: $f3
	ld e, d                                          ; $54a3: $5a
	ldh a, [c]                                       ; $54a4: $f2
	ret nc                                           ; $54a5: $d0

	ld b, d                                          ; $54a6: $42
	ld d, h                                          ; $54a7: $54
	ld c, c                                          ; $54a8: $49
	inc a                                            ; $54a9: $3c
	ld c, b                                          ; $54aa: $48
	and e                                            ; $54ab: $a3
	cpl                                              ; $54ac: $2f
	db $ed                                           ; $54ad: $ed
	ld e, [hl]                                       ; $54ae: $5e
	ld a, a                                          ; $54af: $7f
	ldh a, [$9a]                                     ; $54b0: $f0 $9a

jr_090_54b2:
	inc a                                            ; $54b2: $3c
	ld a, [hl-]                                      ; $54b3: $3a
	inc a                                            ; $54b4: $3c
	dec sp                                           ; $54b5: $3b
	dec a                                            ; $54b6: $3d
	ld b, l                                          ; $54b7: $45
	add hl, bc                                       ; $54b8: $09
	ld b, b                                          ; $54b9: $40
	ld c, l                                          ; $54ba: $4d
	ld a, [hl-]                                      ; $54bb: $3a
	ld d, b                                          ; $54bc: $50

jr_090_54bd:
	jr c, jr_090_54f7                                ; $54bd: $38 $38

	ld b, c                                          ; $54bf: $41
	ld b, h                                          ; $54c0: $44
	ld e, l                                          ; $54c1: $5d
	ld e, d                                          ; $54c2: $5a
	and b                                            ; $54c3: $a0
	ld d, h                                          ; $54c4: $54
	ld c, l                                          ; $54c5: $4d

jr_090_54c6:
	ldh a, [rLCDC]                                   ; $54c6: $f0 $40
	ld d, a                                          ; $54c8: $57
	dec a                                            ; $54c9: $3d

jr_090_54ca:
	inc a                                            ; $54ca: $3c
	dec sp                                           ; $54cb: $3b
	dec a                                            ; $54cc: $3d
	ld b, c                                          ; $54cd: $41
	ld b, h                                          ; $54ce: $44
	xor b                                            ; $54cf: $a8
	db $ed                                           ; $54d0: $ed
	ld d, l                                          ; $54d1: $55
	ld e, c                                          ; $54d2: $59
	dec sp                                           ; $54d3: $3b
	and b                                            ; $54d4: $a0

jr_090_54d5:
	cpl                                              ; $54d5: $2f
	ld b, e                                          ; $54d6: $43
	ld e, b                                          ; $54d7: $58
	ld b, [hl]                                       ; $54d8: $46
	inc [hl]                                         ; $54d9: $34
	ldh a, [rLCDC]                                   ; $54da: $f0 $40
	ld e, a                                          ; $54dc: $5f
	add hl, sp                                       ; $54dd: $39
	inc a                                            ; $54de: $3c
	and b                                            ; $54df: $a0
	ldh a, [$de]                                     ; $54e0: $f0 $de
	ldh a, [$de]                                     ; $54e2: $f0 $de
	ld e, c                                          ; $54e4: $59
	ldh a, [$03]                                     ; $54e5: $f0 $03
	dec sp                                           ; $54e7: $3b
	ccf                                              ; $54e8: $3f
	ld d, c                                          ; $54e9: $51
	ld [hl], b                                       ; $54ea: $70
	jr c, jr_090_5539                                ; $54eb: $38 $4c

	ld e, c                                          ; $54ed: $59
	and b                                            ; $54ee: $a0
	cpl                                              ; $54ef: $2f
	ldh a, [$de]                                     ; $54f0: $f0 $de
	ldh a, [$de]                                     ; $54f2: $f0 $de
	ld e, c                                          ; $54f4: $59
	ldh a, [$03]                                     ; $54f5: $f0 $03

jr_090_54f7:
	ld c, d                                          ; $54f7: $4a
	ldh a, [rKEY1]                                   ; $54f8: $f0 $4d
	ldh a, [rKEY1]                                   ; $54fa: $f0 $4d
	dec sp                                           ; $54fc: $3b
	ld h, c                                          ; $54fd: $61
	ld d, [hl]                                       ; $54fe: $56
	dec sp                                           ; $54ff: $3b
	dec a                                            ; $5500: $3d
	ld b, l                                          ; $5501: $45
	add hl, bc                                       ; $5502: $09
	ldh a, [$3d]                                     ; $5503: $f0 $3d
	ldh a, [rAUD3ENA]                                ; $5505: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $5507: $f0 $1a
	ld [hl], e                                       ; $5509: $73
	inc [hl]                                         ; $550a: $34
	ldh a, [rAUD4ENV]                                ; $550b: $f0 $21
	ldh a, [rAUD4GO]                                 ; $550d: $f0 $23
	ld e, c                                          ; $550f: $59
	jr c, jr_090_54b2                                ; $5510: $38 $a0

	ld b, b                                          ; $5512: $40
	ld b, d                                          ; $5513: $42
	ldh a, [$09]                                     ; $5514: $f0 $09
	ldh a, [rDIV]                                    ; $5516: $f0 $04
	inc [hl]                                         ; $5518: $34
	ldh a, [hDisp0_SCX]                                     ; $5519: $f0 $84
	ldh a, [$d3]                                     ; $551b: $f0 $d3
	ldh a, [rAUD3LEVEL]                              ; $551d: $f0 $1c
	ld b, h                                          ; $551f: $44
	ld b, l                                          ; $5520: $45
	and b                                            ; $5521: $a0
	ld d, d                                          ; $5522: $52
	dec a                                            ; $5523: $3d
	ldh a, [$cd]                                     ; $5524: $f0 $cd
	ld e, e                                          ; $5526: $5b
	sbc d                                            ; $5527: $9a
	xor h                                            ; $5528: $ac
	add d                                            ; $5529: $82
	dec sp                                           ; $552a: $3b
	ccf                                              ; $552b: $3f
	ld c, [hl]                                       ; $552c: $4e
	ld b, d                                          ; $552d: $42
	and c                                            ; $552e: $a1
	ld b, b                                          ; $552f: $40
	ld b, c                                          ; $5530: $41
	ld a, [hl-]                                      ; $5531: $3a
	ld d, h                                          ; $5532: $54
	ld c, c                                          ; $5533: $49
	ld a, [hl-]                                      ; $5534: $3a
	jr c, @+$4b                                      ; $5535: $38 $49

	ld [hl], a                                       ; $5537: $77
	add hl, sp                                       ; $5538: $39

jr_090_5539:
	ld a, [hl-]                                      ; $5539: $3a
	and b                                            ; $553a: $a0
	xor $1f                                          ; $553b: $ee $1f
	xor b                                            ; $553d: $a8
	xor $27                                          ; $553e: $ee $27
	ld c, e                                          ; $5540: $4b
	inc [hl]                                         ; $5541: $34
	ldh a, [$e5]                                     ; $5542: $f0 $e5
	adc b                                            ; $5544: $88
	ld b, d                                          ; $5545: $42
	ldh a, [$db]                                     ; $5546: $f0 $db
	ld b, a                                          ; $5548: $47
	inc de                                           ; $5549: $13
	sub [hl]                                         ; $554a: $96
	ld c, [hl]                                       ; $554b: $4e
	ld c, c                                          ; $554c: $49
	ld [hl], a                                       ; $554d: $77
	add hl, sp                                       ; $554e: $39
	ld b, l                                          ; $554f: $45
	and b                                            ; $5550: $a0
	ldh a, [$de]                                     ; $5551: $f0 $de
	ldh a, [$de]                                     ; $5553: $f0 $de
	ld e, c                                          ; $5555: $59
	ldh a, [$03]                                     ; $5556: $f0 $03
	ld b, d                                          ; $5558: $42
	inc de                                           ; $5559: $13
	db $ed                                           ; $555a: $ed
	ld l, c                                          ; $555b: $69
	ld d, c                                          ; $555c: $51
	ld [hl], b                                       ; $555d: $70
	jr c, jr_090_559a                                ; $555e: $38 $3a

	ld [hl], h                                       ; $5560: $74
	and b                                            ; $5561: $a0
	cpl                                              ; $5562: $2f
	db $eb                                           ; $5563: $eb
	db $fc                                           ; $5564: $fc
	ld b, d                                          ; $5565: $42
	db $ed                                           ; $5566: $ed
	ld l, c                                          ; $5567: $69
	ld c, a                                          ; $5568: $4f
	ld d, c                                          ; $5569: $51
	ld [hl], b                                       ; $556a: $70
	jr c, jr_090_55b2                                ; $556b: $38 $45

	add hl, bc                                       ; $556d: $09
	pop af                                           ; $556e: $f1
	ld b, b                                          ; $556f: $40
	pop af                                           ; $5570: $f1
	sub a                                            ; $5571: $97
	pop af                                           ; $5572: $f1
	sub a                                            ; $5573: $97
	xor b                                            ; $5574: $a8
	ld h, h                                          ; $5575: $64
	db $ed                                           ; $5576: $ed
	sbc d                                            ; $5577: $9a
	ld c, d                                          ; $5578: $4a
	ld c, a                                          ; $5579: $4f
	inc de                                           ; $557a: $13
	xor $27                                          ; $557b: $ee $27
	add hl, sp                                       ; $557d: $39
	ld c, l                                          ; $557e: $4d
	ld a, $38                                        ; $557f: $3e $38
	ld a, [hl-]                                      ; $5581: $3a
	and b                                            ; $5582: $a0
	cpl                                              ; $5583: $2f
	db $ed                                           ; $5584: $ed
	db $dd                                           ; $5585: $dd
	sbc c                                            ; $5586: $99
	add b                                            ; $5587: $80
	ld b, d                                          ; $5588: $42
	ld d, e                                          ; $5589: $53
	di                                               ; $558a: $f3
	inc e                                            ; $558b: $1c
	jr c, jr_090_55c8                                ; $558c: $38 $3a

	add hl, bc                                       ; $558e: $09
	xor $27                                          ; $558f: $ee $27
	inc [hl]                                         ; $5591: $34
	sub b                                            ; $5592: $90
	ld a, $5d                                        ; $5593: $3e $5d
	ld c, l                                          ; $5595: $4d
	ld a, e                                          ; $5596: $7b
	xor h                                            ; $5597: $ac
	sbc c                                            ; $5598: $99
	add b                                            ; $5599: $80

jr_090_559a:
	ld d, h                                          ; $559a: $54
	ld c, c                                          ; $559b: $49
	sbc l                                            ; $559c: $9d
	ld d, b                                          ; $559d: $50
	jr c, jr_090_55b3                                ; $559e: $38 $13

	ldh a, [$f2]                                     ; $55a0: $f0 $f2
	ldh a, [rSC]                                     ; $55a2: $f0 $02
	ld d, l                                          ; $55a4: $55
	ld a, [hl-]                                      ; $55a5: $3a
	jr c, jr_090_55f7                                ; $55a6: $38 $4f

	ld b, c                                          ; $55a8: $41
	and b                                            ; $55a9: $a0
	cpl                                              ; $55aa: $2f
	db $ed                                           ; $55ab: $ed
	ld [hl], d                                       ; $55ac: $72
	db $ed                                           ; $55ad: $ed
	ld l, c                                          ; $55ae: $69
	ld b, d                                          ; $55af: $42
	ldh a, [rLCDC]                                   ; $55b0: $f0 $40

jr_090_55b2:
	ld d, a                                          ; $55b2: $57

jr_090_55b3:
	ldh a, [$2c]                                     ; $55b3: $f0 $2c
	inc a                                            ; $55b5: $3c
	ld c, a                                          ; $55b6: $4f
	ld c, h                                          ; $55b7: $4c
	add hl, bc                                       ; $55b8: $09
	xor $27                                          ; $55b9: $ee $27
	ld c, a                                          ; $55bb: $4f
	ld b, b                                          ; $55bc: $40
	add hl, sp                                       ; $55bd: $39
	ld [hl], a                                       ; $55be: $77
	add hl, sp                                       ; $55bf: $39
	ld b, l                                          ; $55c0: $45
	and b                                            ; $55c1: $a0
	jp hl                                            ; $55c2: $e9


	db $fd                                           ; $55c3: $fd
	xor h                                            ; $55c4: $ac
	jp hl                                            ; $55c5: $e9


	db $fd                                           ; $55c6: $fd
	xor h                                            ; $55c7: $ac

jr_090_55c8:
	pop af                                           ; $55c8: $f1
	ld c, c                                          ; $55c9: $49
	ld e, c                                          ; $55ca: $59
	inc [hl]                                         ; $55cb: $34
	pop af                                           ; $55cc: $f1
	ld c, c                                          ; $55cd: $49
	ld e, c                                          ; $55ce: $59
	and b                                            ; $55cf: $a0
	cpl                                              ; $55d0: $2f
	ld b, e                                          ; $55d1: $43
	xor $10                                          ; $55d2: $ee $10
	and b                                            ; $55d4: $a0
	sbc $ac                                          ; $55d5: $de $ac
	db $ec                                           ; $55d7: $ec
	ld h, c                                          ; $55d8: $61
	ld a, $3f                                        ; $55d9: $3e $3f
	ld c, [hl]                                       ; $55db: $4e
	ld l, h                                          ; $55dc: $6c
	dec a                                            ; $55dd: $3d
	jr c, jr_090_5624                                ; $55de: $38 $44

	ld c, h                                          ; $55e0: $4c
	and b                                            ; $55e1: $a0
	cpl                                              ; $55e2: $2f
	ld a, l                                          ; $55e3: $7d
	ld h, l                                          ; $55e4: $65
	ldh a, [c]                                       ; $55e5: $f2
	adc l                                            ; $55e6: $8d
	ld d, e                                          ; $55e7: $53
	ld a, b                                          ; $55e8: $78
	dec a                                            ; $55e9: $3d
	ldh a, [rBGP]                                    ; $55ea: $f0 $47
	inc [hl]                                         ; $55ec: $34
	ldh a, [rKEY1]                                   ; $55ed: $f0 $4d
	ldh a, [rKEY1]                                   ; $55ef: $f0 $4d
	dec sp                                           ; $55f1: $3b
	ld h, c                                          ; $55f2: $61
	ld d, [hl]                                       ; $55f3: $56
	dec sp                                           ; $55f4: $3b
	dec a                                            ; $55f5: $3d
	add hl, bc                                       ; $55f6: $09

jr_090_55f7:
	xor $27                                          ; $55f7: $ee $27
	ld c, a                                          ; $55f9: $4f
	inc [hl]                                         ; $55fa: $34
	ldh a, [$de]                                     ; $55fb: $f0 $de
	ld [hl], e                                       ; $55fd: $73
	sub e                                            ; $55fe: $93
	ldh a, [rP1]                                     ; $55ff: $f0 $00
	xor b                                            ; $5601: $a8
	ld h, h                                          ; $5602: $64
	ldh a, [rAUD3LEVEL]                              ; $5603: $f0 $1c
	ld [hl], c                                       ; $5605: $71
	inc [hl]                                         ; $5606: $34
	sub e                                            ; $5607: $93
	ldh a, [rP1]                                     ; $5608: $f0 $00
	sub e                                            ; $560a: $93
	ldh a, [rP1]                                     ; $560b: $f0 $00
	ld b, h                                          ; $560d: $44
	dec sp                                           ; $560e: $3b
	dec a                                            ; $560f: $3d
	and b                                            ; $5610: $a0
	cpl                                              ; $5611: $2f
	add sp, -$10                                     ; $5612: $e8 $f0
	add hl, bc                                       ; $5614: $09
	ld e, d                                          ; $5615: $5a
	ld e, c                                          ; $5616: $59
	ld a, c                                          ; $5617: $79
	xor h                                            ; $5618: $ac
	xor $27                                          ; $5619: $ee $27
	ld c, e                                          ; $561b: $4b
	ld d, d                                          ; $561c: $52
	ld b, h                                          ; $561d: $44
	ld d, d                                          ; $561e: $52
	ld b, h                                          ; $561f: $44
	inc de                                           ; $5620: $13
	db $ed                                           ; $5621: $ed
	ld h, a                                          ; $5622: $67
	ld c, d                                          ; $5623: $4a

jr_090_5624:
	ld d, c                                          ; $5624: $51
	ld b, l                                          ; $5625: $45
	ld e, c                                          ; $5626: $59
	ld b, h                                          ; $5627: $44
	and b                                            ; $5628: $a0
	cpl                                              ; $5629: $2f
	ld [$09b3], a                                    ; $562a: $ea $b3 $09
	ld e, b                                          ; $562d: $58
	ld d, c                                          ; $562e: $51
	ld d, e                                          ; $562f: $53
	inc de                                           ; $5630: $13
	jp hl                                            ; $5631: $e9


	db $fd                                           ; $5632: $fd
	ld b, h                                          ; $5633: $44
	ld c, h                                          ; $5634: $4c
	and b                                            ; $5635: $a0
	pop af                                           ; $5636: $f1
	ld [hl], h                                       ; $5637: $74
	ldh a, [$7e]                                     ; $5638: $f0 $7e
	ldh a, [rDIV]                                    ; $563a: $f0 $04
	ld a, l                                          ; $563c: $7d
	ldh a, [$c2]                                     ; $563d: $f0 $c2
	ld h, l                                          ; $563f: $65
	ccf                                              ; $5640: $3f
	inc de                                           ; $5641: $13
	add a                                            ; $5642: $87
	ldh a, [$5d]                                     ; $5643: $f0 $5d
	ld b, h                                          ; $5645: $44
	ld c, h                                          ; $5646: $4c
	and b                                            ; $5647: $a0
	cpl                                              ; $5648: $2f
	ldh a, [$a5]                                     ; $5649: $f0 $a5
	ld c, [hl]                                       ; $564b: $4e
	ldh a, [$08]                                     ; $564c: $f0 $08
	add hl, sp                                       ; $564e: $39
	ld c, e                                          ; $564f: $4b
	add a                                            ; $5650: $87
	ldh a, [$5d]                                     ; $5651: $f0 $5d
	ld b, h                                          ; $5653: $44
	ld c, h                                          ; $5654: $4c
	add hl, bc                                       ; $5655: $09
	xor $27                                          ; $5656: $ee $27
	ld b, d                                          ; $5658: $42
	ld h, h                                          ; $5659: $64
	add b                                            ; $565a: $80
	ldh a, [$be]                                     ; $565b: $f0 $be
	ld e, e                                          ; $565d: $5b
	ld d, [hl]                                       ; $565e: $56
	inc de                                           ; $565f: $13
	pop af                                           ; $5660: $f1
	ld c, h                                          ; $5661: $4c
	ldh a, [$61]                                     ; $5662: $f0 $61
	add b                                            ; $5664: $80
	inc a                                            ; $5665: $3c
	ld a, [hl-]                                      ; $5666: $3a
	jr c, jr_090_56c6                                ; $5667: $38 $5d

	ld e, d                                          ; $5669: $5a
	inc de                                           ; $566a: $13
	ld d, c                                          ; $566b: $51
	ld [hl], b                                       ; $566c: $70
	jr c, jr_090_56a9                                ; $566d: $38 $3a

	ld e, c                                          ; $566f: $59
	and b                                            ; $5670: $a0
	cpl                                              ; $5671: $2f
	ld b, b                                          ; $5672: $40
	add hl, sp                                       ; $5673: $39
	ld c, e                                          ; $5674: $4b
	ld [hl], a                                       ; $5675: $77
	ld h, e                                          ; $5676: $63
	ld a, [hl-]                                      ; $5677: $3a
	jr c, jr_090_56bf                                ; $5678: $38 $45

	add hl, bc                                       ; $567a: $09
	ld e, [hl]                                       ; $567b: $5e
	ld e, c                                          ; $567c: $59
	dec sp                                           ; $567d: $3b
	xor h                                            ; $567e: $ac
	ld b, b                                          ; $567f: $40
	ld b, c                                          ; $5680: $41
	ld a, [hl-]                                      ; $5681: $3a
	ld d, h                                          ; $5682: $54
	ld c, c                                          ; $5683: $49
	ld a, [hl-]                                      ; $5684: $3a
	jr c, jr_090_56cc                                ; $5685: $38 $45

	ld e, c                                          ; $5687: $59
	xor b                                            ; $5688: $a8
	db $ec                                           ; $5689: $ec
	ld d, b                                          ; $568a: $50
	add a                                            ; $568b: $87
	ldh a, [$5d]                                     ; $568c: $f0 $5d
	ld b, h                                          ; $568e: $44
	ld b, l                                          ; $568f: $45
	ld e, c                                          ; $5690: $59
	and b                                            ; $5691: $a0
	cpl                                              ; $5692: $2f
	ld b, b                                          ; $5693: $40
	add hl, sp                                       ; $5694: $39
	ld [hl], a                                       ; $5695: $77
	add hl, sp                                       ; $5696: $39
	ld b, l                                          ; $5697: $45
	add hl, bc                                       ; $5698: $09
	db $f4                                           ; $5699: $f4
	ld a, a                                          ; $569a: $7f
	pop af                                           ; $569b: $f1
	ld c, h                                          ; $569c: $4c
	pop af                                           ; $569d: $f1
	and [hl]                                         ; $569e: $a6
	ldh a, [$31]                                     ; $569f: $f0 $31
	ld c, c                                          ; $56a1: $49
	ld c, a                                          ; $56a2: $4f
	add d                                            ; $56a3: $82
	xor $1f                                          ; $56a4: $ee $1f
	inc de                                           ; $56a6: $13
	ld b, h                                          ; $56a7: $44
	ld b, l                                          ; $56a8: $45

jr_090_56a9:
	ld c, h                                          ; $56a9: $4c
	dec [hl]                                         ; $56aa: $35
	db $ed                                           ; $56ab: $ed
	add a                                            ; $56ac: $87
	inc [hl]                                         ; $56ad: $34
	pop af                                           ; $56ae: $f1

jr_090_56af:
	dec sp                                           ; $56af: $3b
	ld b, c                                          ; $56b0: $41
	ld a, [hl-]                                      ; $56b1: $3a
	jr c, @+$5f                                      ; $56b2: $38 $5d

	ld e, d                                          ; $56b4: $5a
	and b                                            ; $56b5: $a0
	ld [$3b22], a                                    ; $56b6: $ea $22 $3b
	ccf                                              ; $56b9: $3f
	inc de                                           ; $56ba: $13
	db $f4                                           ; $56bb: $f4
	and d                                            ; $56bc: $a2
	ld e, [hl]                                       ; $56bd: $5e
	ld c, [hl]                                       ; $56be: $4e

jr_090_56bf:
	ld c, h                                          ; $56bf: $4c
	ld e, c                                          ; $56c0: $59
	and b                                            ; $56c1: $a0
	cpl                                              ; $56c2: $2f
	ld c, a                                          ; $56c3: $4f
	add hl, sp                                       ; $56c4: $39
	dec [hl]                                         ; $56c5: $35

jr_090_56c6:
	db $ed                                           ; $56c6: $ed
	ld h, b                                          ; $56c7: $60
	ld b, a                                          ; $56c8: $47
	db $f4                                           ; $56c9: $f4
	and d                                            ; $56ca: $a2
	ld e, [hl]                                       ; $56cb: $5e

jr_090_56cc:
	ld c, [hl]                                       ; $56cc: $4e
	adc l                                            ; $56cd: $8d
	add hl, bc                                       ; $56ce: $09
	xor $27                                          ; $56cf: $ee $27
	ld c, c                                          ; $56d1: $49
	inc [hl]                                         ; $56d2: $34
	ldh a, [$cd]                                     ; $56d3: $f0 $cd
	ld e, e                                          ; $56d5: $5b
	ld b, h                                          ; $56d6: $44
	and b                                            ; $56d7: $a0
	cpl                                              ; $56d8: $2f
	add h                                            ; $56d9: $84
	ld b, d                                          ; $56da: $42
	ldh a, [rAUD3LEVEL]                              ; $56db: $f0 $1c
	ld d, e                                          ; $56dd: $53
	ld a, a                                          ; $56de: $7f
	ld b, a                                          ; $56df: $47
	ld a, [hl-]                                      ; $56e0: $3a
	ld d, b                                          ; $56e1: $50
	ld a, [hl-]                                      ; $56e2: $3a
	jr c, jr_090_5721                                ; $56e3: $38 $3c

	add hl, bc                                       ; $56e5: $09
	xor $27                                          ; $56e6: $ee $27
	inc [hl]                                         ; $56e8: $34
	sub b                                            ; $56e9: $90
	ld a, $5d                                        ; $56ea: $3e $5d
	ld c, l                                          ; $56ec: $4d
	ld a, e                                          ; $56ed: $7b
	inc de                                           ; $56ee: $13
	ld b, b                                          ; $56ef: $40
	ld c, l                                          ; $56f0: $4d
	ld c, d                                          ; $56f1: $4a
	jr c, jr_090_572c                                ; $56f2: $38 $38

	ld b, d                                          ; $56f4: $42
	and b                                            ; $56f5: $a0
	cpl                                              ; $56f6: $2f
	db $ec                                           ; $56f7: $ec
	dec [hl]                                         ; $56f8: $35
	ld d, e                                          ; $56f9: $53
	dec sp                                           ; $56fa: $3b
	ld h, c                                          ; $56fb: $61
	ld d, [hl]                                       ; $56fc: $56
	jr c, jr_090_575c                                ; $56fd: $38 $5d

	ld a, [hl-]                                      ; $56ff: $3a
	jr c, jr_090_5747                                ; $5700: $38 $45

	ld c, h                                          ; $5702: $4c
	add hl, bc                                       ; $5703: $09
	ld b, b                                          ; $5704: $40
	add hl, sp                                       ; $5705: $39
	ld b, h                                          ; $5706: $44
	ld b, l                                          ; $5707: $45
	xor b                                            ; $5708: $a8
	ld b, b                                          ; $5709: $40
	add hl, sp                                       ; $570a: $39
	ld b, h                                          ; $570b: $44
	ld b, l                                          ; $570c: $45
	and b                                            ; $570d: $a0
	pop af                                           ; $570e: $f1
	ld a, b                                          ; $570f: $78
	jr c, jr_090_56af                                ; $5710: $38 $9d

	ld c, [hl]                                       ; $5712: $4e
	ld l, h                                          ; $5713: $6c
	db $eb                                           ; $5714: $eb
	and l                                            ; $5715: $a5
	xor h                                            ; $5716: $ac
	add a                                            ; $5717: $87
	ldh a, [$5d]                                     ; $5718: $f0 $5d
	ld b, b                                          ; $571a: $40
	add hl, sp                                       ; $571b: $39
	ld b, h                                          ; $571c: $44
	ld a, [hl-]                                      ; $571d: $3a
	ld e, c                                          ; $571e: $59
	and b                                            ; $571f: $a0
	cpl                                              ; $5720: $2f

jr_090_5721:
	add sp, -$65                                     ; $5721: $e8 $9b
	add hl, bc                                       ; $5723: $09
	ld e, [hl]                                       ; $5724: $5e
	ld e, c                                          ; $5725: $59
	dec sp                                           ; $5726: $3b
	xor b                                            ; $5727: $a8
	ld l, d                                          ; $5728: $6a
	inc [hl]                                         ; $5729: $34
	ld [hl], d                                       ; $572a: $72
	ccf                                              ; $572b: $3f

jr_090_572c:
	ld c, [hl]                                       ; $572c: $4e
	ld b, d                                          ; $572d: $42
	ld c, e                                          ; $572e: $4b
	inc de                                           ; $572f: $13
	db $ed                                           ; $5730: $ed
	rla                                              ; $5731: $17
	ld c, c                                          ; $5732: $49
	ldh a, [$f5]                                     ; $5733: $f0 $f5
	add hl, sp                                       ; $5735: $39
	ld b, d                                          ; $5736: $42
	and c                                            ; $5737: $a1
	cpl                                              ; $5738: $2f
	add sp, -$17                                     ; $5739: $e8 $e9
	ld c, b                                          ; $573b: $48
	add hl, bc                                       ; $573c: $09
	ldh a, [$ac]                                     ; $573d: $f0 $ac
	dec a                                            ; $573f: $3d
	ld d, h                                          ; $5740: $54
	ld c, c                                          ; $5741: $49
	ldh a, [rAUD1LOW]                                ; $5742: $f0 $13
	ld d, l                                          ; $5744: $55
	dec a                                            ; $5745: $3d
	dec sp                                           ; $5746: $3b

jr_090_5747:
	ccf                                              ; $5747: $3f
	xor h                                            ; $5748: $ac
	xor $27                                          ; $5749: $ee $27
	inc [hl]                                         ; $574b: $34
	ldh a, [$2d]                                     ; $574c: $f0 $2d
	dec sp                                           ; $574e: $3b
	ccf                                              ; $574f: $3f
	ld c, [hl]                                       ; $5750: $4e
	ld b, l                                          ; $5751: $45
	and b                                            ; $5752: $a0
	cpl                                              ; $5753: $2f
	add sp, $11                                      ; $5754: $e8 $11
	add hl, bc                                       ; $5756: $09
	xor $27                                          ; $5757: $ee $27
	xor h                                            ; $5759: $ac
	jr c, @+$3d                                      ; $575a: $38 $3b

jr_090_575c:
	di                                               ; $575c: $f3
	ld e, a                                          ; $575d: $5f
	ld b, c                                          ; $575e: $41
	ldh a, [$ac]                                     ; $575f: $f0 $ac
	ccf                                              ; $5761: $3f
	ld l, h                                          ; $5762: $6c
	dec a                                            ; $5763: $3d
	jr c, jr_090_57a7                                ; $5764: $38 $41

	inc de                                           ; $5766: $13
	ld b, h                                          ; $5767: $44
	ld e, l                                          ; $5768: $5d
	ld e, d                                          ; $5769: $5a
	ld a, [hl-]                                      ; $576a: $3a
	ld e, c                                          ; $576b: $59
	and b                                            ; $576c: $a0
	ldh a, [$a0]                                     ; $576d: $f0 $a0
	ld e, c                                          ; $576f: $59
	ld a, l                                          ; $5770: $7d
	inc [hl]                                         ; $5771: $34
	ldh a, [$b2]                                     ; $5772: $f0 $b2
	ldh a, [rLY]                                     ; $5774: $f0 $44
	pop af                                           ; $5776: $f1
	sbc b                                            ; $5777: $98
	ld b, h                                          ; $5778: $44
	xor b                                            ; $5779: $a8
	db $ed                                           ; $577a: $ed
	ld d, a                                          ; $577b: $57
	inc [hl]                                         ; $577c: $34
	pop af                                           ; $577d: $f1
	xor d                                            ; $577e: $aa
	ld a, a                                          ; $577f: $7f
	ld d, e                                          ; $5780: $53
	jr c, jr_090_57bb                                ; $5781: $38 $38

	inc a                                            ; $5783: $3c
	ld d, b                                          ; $5784: $50
	xor h                                            ; $5785: $ac
	add hl, sp                                       ; $5786: $39
	ld e, h                                          ; $5787: $5c
	add hl, sp                                       ; $5788: $39
	ld e, h                                          ; $5789: $5c
	ld a, $52                                        ; $578a: $3e $52
	ld d, c                                          ; $578c: $51
	ld c, h                                          ; $578d: $4c
	and b                                            ; $578e: $a0
	cpl                                              ; $578f: $2f
	ld b, e                                          ; $5790: $43
	ld b, b                                          ; $5791: $40
	add hl, sp                                       ; $5792: $39
	ld b, h                                          ; $5793: $44
	ld c, h                                          ; $5794: $4c
	and b                                            ; $5795: $a0
	ldh a, [$08]                                     ; $5796: $f0 $08
	ld d, b                                          ; $5798: $50
	inc [hl]                                         ; $5799: $34
	ldh a, [$0a]                                     ; $579a: $f0 $0a
	ld d, l                                          ; $579c: $55
	call $2fa0                                       ; $579d: $cd $a0 $2f
	ld b, e                                          ; $57a0: $43
	db $eb                                           ; $57a1: $eb
	db $fc                                           ; $57a2: $fc
	inc [hl]                                         ; $57a3: $34
	ld b, b                                          ; $57a4: $40
	ld b, c                                          ; $57a5: $41
	ld a, [hl-]                                      ; $57a6: $3a

jr_090_57a7:
	ld b, a                                          ; $57a7: $47
	inc de                                           ; $57a8: $13
	pop af                                           ; $57a9: $f1
	ld d, $38                                        ; $57aa: $16 $38
	ld b, h                                          ; $57ac: $44
	ld d, b                                          ; $57ad: $50
	inc [hl]                                         ; $57ae: $34
	pop af                                           ; $57af: $f1
	adc $3a                                          ; $57b0: $ce $3a
	jr c, jr_090_57f9                                ; $57b2: $38 $45

	xor b                                            ; $57b4: $a8
	ld b, [hl]                                       ; $57b5: $46
	dec sp                                           ; $57b6: $3b
	and b                                            ; $57b7: $a0
	cpl                                              ; $57b8: $2f
	ld b, e                                          ; $57b9: $43
	ld b, [hl]                                       ; $57ba: $46

jr_090_57bb:
	and d                                            ; $57bb: $a2
	xor $10                                          ; $57bc: $ee $10
	and b                                            ; $57be: $a0
	cpl                                              ; $57bf: $2f
	ld b, e                                          ; $57c0: $43
	db $eb                                           ; $57c1: $eb
	db $fc                                           ; $57c2: $fc
	xor b                                            ; $57c3: $a8
	add a                                            ; $57c4: $87
	ldh a, [$5b]                                     ; $57c5: $f0 $5b
	ldh a, [$5e]                                     ; $57c7: $f0 $5e
	and c                                            ; $57c9: $a1
	pop af                                           ; $57ca: $f1
	ld b, b                                          ; $57cb: $40
	ld e, c                                          ; $57cc: $59
	ld h, l                                          ; $57cd: $65
	xor b                                            ; $57ce: $a8
	pop af                                           ; $57cf: $f1
	ld a, [hl-]                                      ; $57d0: $3a
	jr c, jr_090_5818                                ; $57d1: $38 $45

	ldh a, [c]                                       ; $57d3: $f2
	ld a, l                                          ; $57d4: $7d
	and b                                            ; $57d5: $a0
	cpl                                              ; $57d6: $2f
	ld b, e                                          ; $57d7: $43
	db $eb                                           ; $57d8: $eb
	db $fc                                           ; $57d9: $fc
	xor b                                            ; $57da: $a8
	ldh a, [$08]                                     ; $57db: $f0 $08
	ld d, b                                          ; $57dd: $50
	inc [hl]                                         ; $57de: $34
	ldh a, [c]                                       ; $57df: $f2
	adc c                                            ; $57e0: $89
	inc a                                            ; $57e1: $3c
	ld a, [hl-]                                      ; $57e2: $3a
	jr c, jr_090_5827                                ; $57e3: $38 $42

	xor b                                            ; $57e5: $a8
	ld l, h                                          ; $57e6: $6c
	ld b, c                                          ; $57e7: $41
	ld a, [hl-]                                      ; $57e8: $3a
	ld d, e                                          ; $57e9: $53
	ld [hl], d                                       ; $57ea: $72
	ccf                                              ; $57eb: $3f
	ld c, [hl]                                       ; $57ec: $4e
	ld b, l                                          ; $57ed: $45
	and b                                            ; $57ee: $a0
	pop af                                           ; $57ef: $f1
	ld b, b                                          ; $57f0: $40
	ld e, c                                          ; $57f1: $59
	ld h, l                                          ; $57f2: $65
	xor b                                            ; $57f3: $a8
	ld c, a                                          ; $57f4: $4f
	add hl, sp                                       ; $57f5: $39
	pop af                                           ; $57f6: $f1
	ld h, $5d                                        ; $57f7: $26 $5d

jr_090_57f9:
	ld a, [hl-]                                      ; $57f9: $3a
	jr c, @+$47                                      ; $57fa: $38 $45

	ldh a, [c]                                       ; $57fc: $f2
	ld a, l                                          ; $57fd: $7d
	xor b                                            ; $57fe: $a8
	ldh a, [c]                                       ; $57ff: $f2
	ld a, d                                          ; $5800: $7a
	ld b, c                                          ; $5801: $41
	ld e, e                                          ; $5802: $5b
	ld d, [hl]                                       ; $5803: $56
	add hl, sp                                       ; $5804: $39
	ld b, l                                          ; $5805: $45
	ldh a, [c]                                       ; $5806: $f2
	ld a, l                                          ; $5807: $7d
	and b                                            ; $5808: $a0
	cpl                                              ; $5809: $2f
	ld b, e                                          ; $580a: $43
	ld d, d                                          ; $580b: $52
	jr c, @+$3d                                      ; $580c: $38 $3b

	dec a                                            ; $580e: $3d
	ld a, [hl-]                                      ; $580f: $3a
	xor b                                            ; $5810: $a8
	db $eb                                           ; $5811: $eb
	ld e, c                                          ; $5812: $59
	ld c, b                                          ; $5813: $48
	and b                                            ; $5814: $a0
	pop af                                           ; $5815: $f1
	ld b, b                                          ; $5816: $40
	ld e, c                                          ; $5817: $59

jr_090_5818:
	ld h, l                                          ; $5818: $65
	xor b                                            ; $5819: $a8
	ld h, h                                          ; $581a: $64
	ld b, c                                          ; $581b: $41
	ldh a, [$fe]                                     ; $581c: $f0 $fe
	ld a, $3f                                        ; $581e: $3e $3f
	ld d, l                                          ; $5820: $55
	ld c, l                                          ; $5821: $4d
	ld a, [hl-]                                      ; $5822: $3a
	ld e, h                                          ; $5823: $5c
	ld d, [hl]                                       ; $5824: $56
	xor h                                            ; $5825: $ac
	ldh a, [c]                                       ; $5826: $f2

jr_090_5827:
	ld a, d                                          ; $5827: $7a
	ld b, c                                          ; $5828: $41
	ld e, e                                          ; $5829: $5b
	ld d, [hl]                                       ; $582a: $56
	add hl, sp                                       ; $582b: $39
	ld e, c                                          ; $582c: $59
	and b                                            ; $582d: $a0
	cpl                                              ; $582e: $2f
	ld b, e                                          ; $582f: $43
	db $eb                                           ; $5830: $eb
	inc [hl]                                         ; $5831: $34
	ld a, [hl-]                                      ; $5832: $3a
	xor b                                            ; $5833: $a8
	ld h, h                                          ; $5834: $64
	ld b, c                                          ; $5835: $41
	ldh a, [$fe]                                     ; $5836: $f0 $fe
	ld a, $3f                                        ; $5838: $3e $3f
	rst SubAFromDE                                          ; $583a: $df
	inc a                                            ; $583b: $3c
	ld d, b                                          ; $583c: $50
	xor h                                            ; $583d: $ac
	ld e, b                                          ; $583e: $58
	ld b, [hl]                                       ; $583f: $46
	ldh a, [$d9]                                     ; $5840: $f0 $d9
	dec sp                                           ; $5842: $3b
	ccf                                              ; $5843: $3f
	and b                                            ; $5844: $a0
	db $ed                                           ; $5845: $ed
	ld b, c                                          ; $5846: $41
	xor c                                            ; $5847: $a9
	ldh a, [$a0]                                     ; $5848: $f0 $a0
	ld e, c                                          ; $584a: $59
	ld a, l                                          ; $584b: $7d
	inc [hl]                                         ; $584c: $34
	ld h, h                                          ; $584d: $64
	ld b, c                                          ; $584e: $41
	ldh a, [$fe]                                     ; $584f: $f0 $fe
	ld b, h                                          ; $5851: $44
	xor b                                            ; $5852: $a8
	ldh a, [$29]                                     ; $5853: $f0 $29
	ld a, $38                                        ; $5855: $3e $38
	ld a, [hl-]                                      ; $5857: $3a
	and b                                            ; $5858: $a0
	cpl                                              ; $5859: $2f
	ld b, e                                          ; $585a: $43
	xor $10                                          ; $585b: $ee $10
	xor b                                            ; $585d: $a8
	ld [hl-], a                                      ; $585e: $32
	pop af                                           ; $585f: $f1
	sub $eb                                          ; $5860: $d6 $eb
	xor h                                            ; $5862: $ac
	ld e, h                                          ; $5863: $5c
	dec a                                            ; $5864: $3d
	and e                                            ; $5865: $a3
	ld b, [hl]                                       ; $5866: $46
	ld c, l                                          ; $5867: $4d
	xor c                                            ; $5868: $a9
	add h                                            ; $5869: $84
	ld d, e                                          ; $586a: $53
	jr c, jr_090_58a8                                ; $586b: $38 $3b

	ldh a, [$36]                                     ; $586d: $f0 $36
	jr c, jr_090_58a9                                ; $586f: $38 $38

	ld c, [hl]                                       ; $5871: $4e
	ld e, l                                          ; $5872: $5d
	ld e, d                                          ; $5873: $5a
	xor h                                            ; $5874: $ac
	ld l, e                                          ; $5875: $6b
	ld b, h                                          ; $5876: $44
	ld e, a                                          ; $5877: $5f
	add hl, sp                                       ; $5878: $39
	ld a, [hl-]                                      ; $5879: $3a
	ld [hl], h                                       ; $587a: $74
	and c                                            ; $587b: $a1
	cpl                                              ; $587c: $2f
	ld [$acc9], a                                    ; $587d: $ea $c9 $ac
	db $ed                                           ; $5880: $ed
	ld d, a                                          ; $5881: $57
	db $ec                                           ; $5882: $ec
	dec e                                            ; $5883: $1d
	ld h, d                                          ; $5884: $62
	inc de                                           ; $5885: $13
	ld [$a33f], a                                    ; $5886: $ea $3f $a3
	cpl                                              ; $5889: $2f
	jp hl                                            ; $588a: $e9


	ld sp, $6309                                     ; $588b: $31 $09 $63
	ld b, [hl]                                       ; $588e: $46
	ld e, c                                          ; $588f: $59
	dec sp                                           ; $5890: $3b
	inc [hl]                                         ; $5891: $34
	db $ed                                           ; $5892: $ed
	ld c, c                                          ; $5893: $49
	xor b                                            ; $5894: $a8
	xor $27                                          ; $5895: $ee $27
	ld c, a                                          ; $5897: $4f
	xor $06                                          ; $5898: $ee $06
	ld b, a                                          ; $589a: $47
	inc de                                           ; $589b: $13
	ld h, a                                          ; $589c: $67
	pop af                                           ; $589d: $f1
	dec hl                                           ; $589e: $2b
	db $ec                                           ; $589f: $ec
	inc c                                            ; $58a0: $0c
	ld a, [hl-]                                      ; $58a1: $3a
	ld [hl], h                                       ; $58a2: $74
	and b                                            ; $58a3: $a0

jr_090_58a4:
	db $ed                                           ; $58a4: $ed
	ld h, c                                          ; $58a5: $61
	ld [hl], d                                       ; $58a6: $72
	ccf                                              ; $58a7: $3f

jr_090_58a8:
	ld c, a                                          ; $58a8: $4f

jr_090_58a9:
	xor h                                            ; $58a9: $ac
	ld e, h                                          ; $58aa: $5c
	ld c, l                                          ; $58ab: $4d
	ld e, c                                          ; $58ac: $59
	ld b, h                                          ; $58ad: $44
	ld a, [hl-]                                      ; $58ae: $3a
	ld e, c                                          ; $58af: $59
	and b                                            ; $58b0: $a0
	cpl                                              ; $58b1: $2f
	ld b, e                                          ; $58b2: $43
	ldh a, [$66]                                     ; $58b3: $f0 $66
	ld b, c                                          ; $58b5: $41
	ld c, d                                          ; $58b6: $4a
	ld c, a                                          ; $58b7: $4f
	ld d, b                                          ; $58b8: $50
	ld e, [hl]                                       ; $58b9: $5e
	dec a                                            ; $58ba: $3d
	ld l, h                                          ; $58bb: $6c
	dec a                                            ; $58bc: $3d
	jr c, jr_090_5909                                ; $58bd: $38 $4a

	inc de                                           ; $58bf: $13
	db $eb                                           ; $58c0: $eb
	ld e, a                                          ; $58c1: $5f
	and b                                            ; $58c2: $a0
	cpl                                              ; $58c3: $2f
	add sp, -$26                                     ; $58c4: $e8 $da
	add hl, bc                                       ; $58c6: $09
	ldh a, [$0a]                                     ; $58c7: $f0 $0a
	ld d, l                                          ; $58c9: $55
	inc [hl]                                         ; $58ca: $34
	ld [hl], d                                       ; $58cb: $72
	ld b, l                                          ; $58cc: $45
	add hl, sp                                       ; $58cd: $39
	ld b, l                                          ; $58ce: $45
	ld e, c                                          ; $58cf: $59
	and b                                            ; $58d0: $a0
	cpl                                              ; $58d1: $2f
	ld b, e                                          ; $58d2: $43
	ld b, b                                          ; $58d3: $40
	add hl, sp                                       ; $58d4: $39
	ld b, h                                          ; $58d5: $44
	ld c, h                                          ; $58d6: $4c
	xor b                                            ; $58d7: $a8
	db $eb                                           ; $58d8: $eb
	ld d, d                                          ; $58d9: $52
	inc a                                            ; $58da: $3c
	and c                                            ; $58db: $a1
	db $ec                                           ; $58dc: $ec
	jr c, jr_090_5923                                ; $58dd: $38 $44

	ld e, c                                          ; $58df: $59
	xor b                                            ; $58e0: $a8
	ldh a, [hDisp0_WX]                                     ; $58e1: $f0 $89
	ldh a, [c]                                       ; $58e3: $f2
	daa                                              ; $58e4: $27
	ld e, c                                          ; $58e5: $59
	ldh a, [hDisp0_WX]                                     ; $58e6: $f0 $89
	ldh a, [c]                                       ; $58e8: $f2
	daa                                              ; $58e9: $27
	ld e, c                                          ; $58ea: $59
	and b                                            ; $58eb: $a0
	cpl                                              ; $58ec: $2f
	ld b, e                                          ; $58ed: $43
	db $ec                                           ; $58ee: $ec
	push bc                                          ; $58ef: $c5
	sub [hl]                                         ; $58f0: $96
	ld c, [hl]                                       ; $58f1: $4e
	ld b, l                                          ; $58f2: $45
	xor b                                            ; $58f3: $a8
	db $eb                                           ; $58f4: $eb
	db $fc                                           ; $58f5: $fc
	and b                                            ; $58f6: $a0
	ldh a, [rAUD2LOW]                                ; $58f7: $f0 $18
	ldh a, [$dc]                                     ; $58f9: $f0 $dc
	dec sp                                           ; $58fb: $3b
	ccf                                              ; $58fc: $3f
	ldh a, [rAUD4ENV]                                ; $58fd: $f0 $21
	ldh a, [rAUD4GO]                                 ; $58ff: $f0 $23
	jr c, jr_090_58a4                                ; $5901: $38 $a1

	cpl                                              ; $5903: $2f
	halt                                             ; $5904: $76
	ld c, e                                          ; $5905: $4b
	ld h, e                                          ; $5906: $63
	ld d, a                                          ; $5907: $57
	ld c, c                                          ; $5908: $49

jr_090_5909:
	adc e                                            ; $5909: $8b
	ld e, h                                          ; $590a: $5c
	ld b, h                                          ; $590b: $44
	ld a, [hl-]                                      ; $590c: $3a
	ld c, b                                          ; $590d: $48
	add hl, bc                                       ; $590e: $09
	xor $1f                                          ; $590f: $ee $1f
	xor b                                            ; $5911: $a8
	xor $27                                          ; $5912: $ee $27
	ld c, a                                          ; $5914: $4f
	db $ec                                           ; $5915: $ec
	ld a, h                                          ; $5916: $7c
	ld e, h                                          ; $5917: $5c
	and b                                            ; $5918: $a0
	cpl                                              ; $5919: $2f
	db $ec                                           ; $591a: $ec
	ld e, d                                          ; $591b: $5a
	ld d, l                                          ; $591c: $55
	ld a, [hl-]                                      ; $591d: $3a
	jr c, jr_090_5929                                ; $591e: $38 $09

	pop af                                           ; $5920: $f1
	ld b, b                                          ; $5921: $40
	ld e, c                                          ; $5922: $59

jr_090_5923:
	ld [hl], e                                       ; $5923: $73
	xor h                                            ; $5924: $ac
	ld b, b                                          ; $5925: $40
	ld b, c                                          ; $5926: $41
	ld a, [hl-]                                      ; $5927: $3a
	ld d, h                                          ; $5928: $54

jr_090_5929:
	ld c, c                                          ; $5929: $49
	ld a, [hl-]                                      ; $592a: $3a
	jr c, @+$47                                      ; $592b: $38 $45

	ld e, c                                          ; $592d: $59
	and b                                            ; $592e: $a0
	cpl                                              ; $592f: $2f
	db $eb                                           ; $5930: $eb
	db $fc                                           ; $5931: $fc
	ld c, e                                          ; $5932: $4b
	ld e, d                                          ; $5933: $5a
	add hl, sp                                       ; $5934: $39
	ld a, [hl-]                                      ; $5935: $3a
	ld b, d                                          ; $5936: $42
	and c                                            ; $5937: $a1
	xor $27                                          ; $5938: $ee $27
	ld c, e                                          ; $593a: $4b
	adc e                                            ; $593b: $8b
	ld e, h                                          ; $593c: $5c
	ld b, h                                          ; $593d: $44
	ld b, l                                          ; $593e: $45
	and b                                            ; $593f: $a0
	xor $27                                          ; $5940: $ee $27
	xor h                                            ; $5942: $ac
	ld a, [hl]                                       ; $5943: $7e
	ld d, l                                          ; $5944: $55
	ldh a, [$03]                                     ; $5945: $f0 $03
	ld e, c                                          ; $5947: $59
	ldh a, [$03]                                     ; $5948: $f0 $03
	db $ec                                           ; $594a: $ec
	dec b                                            ; $594b: $05
	ld b, c                                          ; $594c: $41
	ld b, h                                          ; $594d: $44
	xor b                                            ; $594e: $a8
	db $ec                                           ; $594f: $ec
	db $ed                                           ; $5950: $ed
	ld d, l                                          ; $5951: $55
	ld c, l                                          ; $5952: $4d
	ld c, [hl]                                       ; $5953: $4e
	and c                                            ; $5954: $a1
	cpl                                              ; $5955: $2f
	halt                                             ; $5956: $76
	ld c, a                                          ; $5957: $4f
	ld b, l                                          ; $5958: $45
	ld d, l                                          ; $5959: $55
	ld c, e                                          ; $595a: $4b
	db $ec                                           ; $595b: $ec
	dec b                                            ; $595c: $05
	ld b, l                                          ; $595d: $45
	add hl, bc                                       ; $595e: $09
	db $ec                                           ; $595f: $ec
	rla                                              ; $5960: $17
	xor b                                            ; $5961: $a8
	ld e, e                                          ; $5962: $5b
	ld d, [hl]                                       ; $5963: $56
	ld b, [hl]                                       ; $5964: $46
	xor h                                            ; $5965: $ac
	xor $06                                          ; $5966: $ee $06
	ld b, a                                          ; $5968: $47
	ld h, h                                          ; $5969: $64
	pop af                                           ; $596a: $f1
	halt                                             ; $596b: $76
	ld e, [hl]                                       ; $596c: $5e
	ld b, l                                          ; $596d: $45
	add hl, sp                                       ; $596e: $39
	and b                                            ; $596f: $a0
	cpl                                              ; $5970: $2f
	ld [$094e], a                                    ; $5971: $ea $4e $09
	add hl, sp                                       ; $5974: $39
	ld e, c                                          ; $5975: $59
	dec sp                                           ; $5976: $3b
	inc [hl]                                         ; $5977: $34
	ld e, l                                          ; $5978: $5d
	ld h, c                                          ; $5979: $61
	ldh a, [c]                                       ; $597a: $f2
	db $eb                                           ; $597b: $eb
	and b                                            ; $597c: $a0
	cpl                                              ; $597d: $2f
	add sp, -$59                                     ; $597e: $e8 $a7
	add hl, bc                                       ; $5980: $09
	ld b, b                                          ; $5981: $40
	add hl, sp                                       ; $5982: $39
	inc a                                            ; $5983: $3c
	ld e, c                                          ; $5984: $59
	xor b                                            ; $5985: $a8
	pop af                                           ; $5986: $f1
	daa                                              ; $5987: $27
	ldh a, [$8e]                                     ; $5988: $f0 $8e
	ld l, c                                          ; $598a: $69
	db $ed                                           ; $598b: $ed
	inc hl                                           ; $598c: $23
	ld c, c                                          ; $598d: $49
	inc de                                           ; $598e: $13
	ld b, [hl]                                       ; $598f: $46
	ld d, d                                          ; $5990: $52
	ld d, a                                          ; $5991: $57
	ldh a, [$5d]                                     ; $5992: $f0 $5d
	ld h, e                                          ; $5994: $63
	ld b, c                                          ; $5995: $41
	ld a, [hl-]                                      ; $5996: $3a
	jr c, jr_090_59da                                ; $5997: $38 $41

	ld b, h                                          ; $5999: $44
	and b                                            ; $599a: $a0
	ld [$f4d8], a                                    ; $599b: $ea $d8 $f4
	and d                                            ; $599e: $a2
	ld e, [hl]                                       ; $599f: $5e
	ld c, [hl]                                       ; $59a0: $4e
	ld c, h                                          ; $59a1: $4c
	ld e, c                                          ; $59a2: $59
	and b                                            ; $59a3: $a0
	cpl                                              ; $59a4: $2f
	ldh a, [$9d]                                     ; $59a5: $f0 $9d
	ldh a, [rSC]                                     ; $59a7: $f0 $02
	ldh a, [$9d]                                     ; $59a9: $f0 $9d
	ldh a, [rSC]                                     ; $59ab: $f0 $02
	ld d, l                                          ; $59ad: $55
	ld c, [hl]                                       ; $59ae: $4e
	adc l                                            ; $59af: $8d
	add hl, bc                                       ; $59b0: $09
	ld l, d                                          ; $59b1: $6a
	ldh a, [$0d]                                     ; $59b2: $f0 $0d
	inc [hl]                                         ; $59b4: $34
	xor $27                                          ; $59b5: $ee $27
	ld c, c                                          ; $59b7: $49
	inc de                                           ; $59b8: $13
	db $ec                                           ; $59b9: $ec
	jr c, jr_090_5a2c                                ; $59ba: $38 $70

	dec sp                                           ; $59bc: $3b
	ld d, h                                          ; $59bd: $54
	ld l, [hl]                                       ; $59be: $6e
	ld e, a                                          ; $59bf: $5f
	add hl, sp                                       ; $59c0: $39
	and b                                            ; $59c1: $a0
	cpl                                              ; $59c2: $2f
	add sp, -$5e                                     ; $59c3: $e8 $a2
	add hl, bc                                       ; $59c5: $09
	ld b, b                                          ; $59c6: $40
	ld b, c                                          ; $59c7: $41
	ld a, [hl-]                                      ; $59c8: $3a
	ldh a, [rAUD1LEN]                                ; $59c9: $f0 $11
	ld l, c                                          ; $59cb: $69
	add d                                            ; $59cc: $82
	add hl, sp                                       ; $59cd: $39
	ld c, c                                          ; $59ce: $49
	xor h                                            ; $59cf: $ac
	xor $27                                          ; $59d0: $ee $27
	ld b, d                                          ; $59d2: $42
	ld hl, sp+$4d                                    ; $59d3: $f8 $4d
	ld d, a                                          ; $59d5: $57
	pop af                                           ; $59d6: $f1
	xor d                                            ; $59d7: $aa
	ldh a, [c]                                       ; $59d8: $f2
	ld [hl], d                                       ; $59d9: $72

jr_090_59da:
	xor h                                            ; $59da: $ac
	ldh a, [$ec]                                     ; $59db: $f0 $ec
	ld [hl], c                                       ; $59dd: $71
	ld h, c                                          ; $59de: $61
	ld d, [hl]                                       ; $59df: $56
	add hl, sp                                       ; $59e0: $39
	sub a                                            ; $59e1: $97
	dec sp                                           ; $59e2: $3b
	and b                                            ; $59e3: $a0
	cpl                                              ; $59e4: $2f
	ld c, d                                          ; $59e5: $4a
	ld c, a                                          ; $59e6: $4f
	inc [hl]                                         ; $59e7: $34
	pop af                                           ; $59e8: $f1
	ld a, [hl-]                                      ; $59e9: $3a
	ld b, b                                          ; $59ea: $40
	add hl, sp                                       ; $59eb: $39
	ld b, h                                          ; $59ec: $44
	ld b, l                                          ; $59ed: $45
	add hl, bc                                       ; $59ee: $09
	pop af                                           ; $59ef: $f1

jr_090_59f0:
	cp e                                             ; $59f0: $bb
	ld e, [hl]                                       ; $59f1: $5e
	ccf                                              ; $59f2: $3f
	ld b, [hl]                                       ; $59f3: $46
	ld c, [hl]                                       ; $59f4: $4e
	inc a                                            ; $59f5: $3c
	ld d, b                                          ; $59f6: $50
	xor h                                            ; $59f7: $ac
	pop af                                           ; $59f8: $f1
	ld l, c                                          ; $59f9: $69
	ld a, a                                          ; $59fa: $7f

jr_090_59fb:
	inc [hl]                                         ; $59fb: $34
	pop af                                           ; $59fc: $f1
	ld l, c                                          ; $59fd: $69
	ld a, a                                          ; $59fe: $7f
	and b                                            ; $59ff: $a0
	ld [$13d8], a                                    ; $5a00: $ea $d8 $13
	db $ed                                           ; $5a03: $ed
	xor h                                            ; $5a04: $ac
	ld b, h                                          ; $5a05: $44
	ld c, c                                          ; $5a06: $49
	ld [hl], a                                       ; $5a07: $77
	add hl, sp                                       ; $5a08: $39

jr_090_5a09:
	and c                                            ; $5a09: $a1
	cpl                                              ; $5a0a: $2f
	ldh a, [$d4]                                     ; $5a0b: $f0 $d4
	push af                                          ; $5a0d: $f5
	sbc [hl]                                         ; $5a0e: $9e
	ld a, [hl-]                                      ; $5a0f: $3a
	db $ec                                           ; $5a10: $ec
	ld c, b                                          ; $5a11: $48
	ld b, h                                          ; $5a12: $44
	ld b, l                                          ; $5a13: $45
	add hl, bc                                       ; $5a14: $09
	xor $27                                          ; $5a15: $ee $27
	inc [hl]                                         ; $5a17: $34
	ld [$13d8], a                                    ; $5a18: $ea $d8 $13
	db $ed                                           ; $5a1b: $ed
	ld h, b                                          ; $5a1c: $60
	ld b, a                                          ; $5a1d: $47
	adc e                                            ; $5a1e: $8b
	ld e, h                                          ; $5a1f: $5c
	ld a, [hl-]                                      ; $5a20: $3a
	ld b, c                                          ; $5a21: $41
	ld b, h                                          ; $5a22: $44
	and b                                            ; $5a23: $a0
	cpl                                              ; $5a24: $2f
	db $ed                                           ; $5a25: $ed
	xor h                                            ; $5a26: $ac
	ld b, h                                          ; $5a27: $44
	ld b, l                                          ; $5a28: $45
	add hl, bc                                       ; $5a29: $09
	xor $27                                          ; $5a2a: $ee $27

jr_090_5a2c:
	xor h                                            ; $5a2c: $ac
	ld b, b                                          ; $5a2d: $40
	add hl, sp                                       ; $5a2e: $39
	ld c, e                                          ; $5a2f: $4b
	ld [hl], a                                       ; $5a30: $77
	ld h, e                                          ; $5a31: $63
	ld a, [hl-]                                      ; $5a32: $3a
	jr c, @+$3c                                      ; $5a33: $38 $3a

	ld e, c                                          ; $5a35: $59
	and b                                            ; $5a36: $a0
	cpl                                              ; $5a37: $2f
	ld b, b                                          ; $5a38: $40
	add hl, sp                                       ; $5a39: $39
	ld [hl], a                                       ; $5a3a: $77
	add hl, sp                                       ; $5a3b: $39
	ld e, l                                          ; $5a3c: $5d
	ld e, d                                          ; $5a3d: $5a
	inc [hl]                                         ; $5a3e: $34
	adc e                                            ; $5a3f: $8b
	ld e, h                                          ; $5a40: $5c
	ld b, h                                          ; $5a41: $44
	ld b, l                                          ; $5a42: $45
	add hl, bc                                       ; $5a43: $09
	ld b, b                                          ; $5a44: $40
	ld b, d                                          ; $5a45: $42
	add hl, sp                                       ; $5a46: $39
	ld h, c                                          ; $5a47: $61
	xor h                                            ; $5a48: $ac
	pop af                                           ; $5a49: $f1
	sbc e                                            ; $5a4a: $9b
	ld c, l                                          ; $5a4b: $4d
	ld h, c                                          ; $5a4c: $61
	ld d, [hl]                                       ; $5a4d: $56
	add hl, sp                                       ; $5a4e: $39
	ld b, l                                          ; $5a4f: $45
	and b                                            ; $5a50: $a0
	ldh a, [$a0]                                     ; $5a51: $f0 $a0
	ld e, c                                          ; $5a53: $59
	ld [hl], e                                       ; $5a54: $73
	xor h                                            ; $5a55: $ac
	ld l, [hl]                                       ; $5a56: $6e
	dec sp                                           ; $5a57: $3b
	ccf                                              ; $5a58: $3f
	ld c, [hl]                                       ; $5a59: $4e
	and b                                            ; $5a5a: $a0
	cpl                                              ; $5a5b: $2f
	ld b, e                                          ; $5a5c: $43
	db $eb                                           ; $5a5d: $eb
	db $fc                                           ; $5a5e: $fc
	dec sp                                           ; $5a5f: $3b
	ccf                                              ; $5a60: $3f
	xor h                                            ; $5a61: $ac
	db $ec                                           ; $5a62: $ec
	jr c, jr_090_59f0                                ; $5a63: $38 $8b

	ld e, h                                          ; $5a65: $5c
	db $ec                                           ; $5a66: $ec
	ld [hl+], a                                      ; $5a67: $22
	and b                                            ; $5a68: $a0
	xor $1f                                          ; $5a69: $ee $1f
	inc [hl]                                         ; $5a6b: $34
	ld b, h                                          ; $5a6c: $44
	ld e, c                                          ; $5a6d: $59
	jr c, jr_090_59fb                                ; $5a6e: $38 $8b

	ld e, h                                          ; $5a70: $5c
	xor b                                            ; $5a71: $a8
	db $eb                                           ; $5a72: $eb
	pop af                                           ; $5a73: $f1
	ld c, c                                          ; $5a74: $49
	inc de                                           ; $5a75: $13
	ld b, l                                          ; $5a76: $45
	ld d, l                                          ; $5a77: $55
	ld [hl], d                                       ; $5a78: $72
	ld c, [hl]                                       ; $5a79: $4e
	ld b, c                                          ; $5a7a: $41
	ld b, h                                          ; $5a7b: $44
	ld b, l                                          ; $5a7c: $45
	and b                                            ; $5a7d: $a0
	cpl                                              ; $5a7e: $2f
	ld b, e                                          ; $5a7f: $43
	adc e                                            ; $5a80: $8b
	ldh a, [$72]                                     ; $5a81: $f0 $72
	ld c, c                                          ; $5a83: $49
	ld c, h                                          ; $5a84: $4c
	xor l                                            ; $5a85: $ad
	ld b, [hl]                                       ; $5a86: $46
	jr c, jr_090_5a09                                ; $5a87: $38 $80

	ld c, a                                          ; $5a89: $4f
	xor h                                            ; $5a8a: $ac
	adc e                                            ; $5a8b: $8b
	ld e, h                                          ; $5a8c: $5c
	ld a, [hl-]                                      ; $5a8d: $3a
	ld b, d                                          ; $5a8e: $42
	inc a                                            ; $5a8f: $3c
	ld a, [hl-]                                      ; $5a90: $3a
	ld c, b                                          ; $5a91: $48
	and b                                            ; $5a92: $a0
	ld b, [hl]                                       ; $5a93: $46
	dec sp                                           ; $5a94: $3b
	inc [hl]                                         ; $5a95: $34
	adc b                                            ; $5a96: $88
	ld l, b                                          ; $5a97: $68
	ld b, d                                          ; $5a98: $42
	inc de                                           ; $5a99: $13
	ldh a, [$9d]                                     ; $5a9a: $f0 $9d
	ld a, l                                          ; $5a9c: $7d
	ld h, l                                          ; $5a9d: $65
	ld a, l                                          ; $5a9e: $7d
	pop af                                           ; $5a9f: $f1
	dec e                                            ; $5aa0: $1d
	ld h, l                                          ; $5aa1: $65
	ld l, c                                          ; $5aa2: $69
	ld b, h                                          ; $5aa3: $44
	xor b                                            ; $5aa4: $a8
	ld d, h                                          ; $5aa5: $54
	ld b, d                                          ; $5aa6: $42
	pop af                                           ; $5aa7: $f1
	add hl, sp                                       ; $5aa8: $39
	ldh a, [rTMA]                                    ; $5aa9: $f0 $06
	ld [hl], d                                       ; $5aab: $72
	dec a                                            ; $5aac: $3d
	inc a                                            ; $5aad: $3c
	dec sp                                           ; $5aae: $3b
	dec a                                            ; $5aaf: $3d
	ld b, c                                          ; $5ab0: $41
	ld b, h                                          ; $5ab1: $44
	and b                                            ; $5ab2: $a0
	cpl                                              ; $5ab3: $2f
	ld b, e                                          ; $5ab4: $43
	rst JumpTable                                          ; $5ab5: $c7
	xor b                                            ; $5ab6: $a8
	db $ec                                           ; $5ab7: $ec
	cp c                                             ; $5ab8: $b9
	ld c, h                                          ; $5ab9: $4c
	and b                                            ; $5aba: $a0
	ld b, b                                          ; $5abb: $40
	ld d, h                                          ; $5abc: $54
	ld b, h                                          ; $5abd: $44
	xor b                                            ; $5abe: $a8
	ld h, a                                          ; $5abf: $67
	ld e, l                                          ; $5ac0: $5d
	add l                                            ; $5ac1: $85
	and b                                            ; $5ac2: $a0
	cpl                                              ; $5ac3: $2f
	ld b, e                                          ; $5ac4: $43
	db $ec                                           ; $5ac5: $ec
	rra                                              ; $5ac6: $1f
	ld c, b                                          ; $5ac7: $48
	and b                                            ; $5ac8: $a0
	ld c, d                                          ; $5ac9: $4a
	dec a                                            ; $5aca: $3d
	ld [hl], h                                       ; $5acb: $74
	xor b                                            ; $5acc: $a8
	ldh a, [c]                                       ; $5acd: $f2
	ld d, l                                          ; $5ace: $55
	ldh a, [c]                                       ; $5acf: $f2
	ld d, l                                          ; $5ad0: $55
	ldh a, [c]                                       ; $5ad1: $f2
	add hl, sp                                       ; $5ad2: $39
	and b                                            ; $5ad3: $a0
	cpl                                              ; $5ad4: $2f
	ld b, e                                          ; $5ad5: $43
	xor $1e                                          ; $5ad6: $ee $1e
	inc [hl]                                         ; $5ad8: $34
	db $eb                                           ; $5ad9: $eb
	db $fc                                           ; $5ada: $fc
	xor c                                            ; $5adb: $a9
	sbc [hl]                                         ; $5adc: $9e
	ld b, d                                          ; $5add: $42
	ldh a, [c]                                       ; $5ade: $f2
	ld h, h                                          ; $5adf: $64
	ld b, d                                          ; $5ae0: $42
	add h                                            ; $5ae1: $84
	ld b, a                                          ; $5ae2: $47
	inc de                                           ; $5ae3: $13
	db $ed                                           ; $5ae4: $ed
	dec l                                            ; $5ae5: $2d
	ld [hl], d                                       ; $5ae6: $72
	ld d, b                                          ; $5ae7: $50
	ld c, l                                          ; $5ae8: $4d
	ld h, c                                          ; $5ae9: $61
	ld d, [hl]                                       ; $5aea: $56
	add hl, sp                                       ; $5aeb: $39
	ld b, l                                          ; $5aec: $45
	and b                                            ; $5aed: $a0
	ld b, b                                          ; $5aee: $40
	ld d, h                                          ; $5aef: $54
	ld c, d                                          ; $5af0: $4a
	inc [hl]                                         ; $5af1: $34
	ldh a, [$8e]                                     ; $5af2: $f0 $8e
	ldh a, [c]                                       ; $5af4: $f2
	daa                                              ; $5af5: $27
	ld e, c                                          ; $5af6: $59
	ldh a, [$03]                                     ; $5af7: $f0 $03
	ld b, h                                          ; $5af9: $44
	xor b                                            ; $5afa: $a8
	ld b, [hl]                                       ; $5afb: $46
	ld e, c                                          ; $5afc: $59
	ld b, [hl]                                       ; $5afd: $46
	inc [hl]                                         ; $5afe: $34
	ldh a, [$e0]                                     ; $5aff: $f0 $e0
	ld e, b                                          ; $5b01: $58
	ld c, l                                          ; $5b02: $4d
	ld h, c                                          ; $5b03: $61
	ld d, [hl]                                       ; $5b04: $56
	dec sp                                           ; $5b05: $3b
	dec a                                            ; $5b06: $3d
	and b                                            ; $5b07: $a0
	cpl                                              ; $5b08: $2f
	ld [hl-], a                                      ; $5b09: $32
	xor $05                                          ; $5b0a: $ee $05
	ld b, h                                          ; $5b0c: $44
	xor b                                            ; $5b0d: $a8
	db $ed                                           ; $5b0e: $ed
	ld e, [hl]                                       ; $5b0f: $5e
	ldh a, [$0c]                                     ; $5b10: $f0 $0c
	ld d, h                                          ; $5b12: $54
	ld e, [hl]                                       ; $5b13: $5e
	ccf                                              ; $5b14: $3f
	ld a, [hl-]                                      ; $5b15: $3a
	jr c, jr_090_5b5d                                ; $5b16: $38 $45

	xor b                                            ; $5b18: $a8
	ldh a, [$08]                                     ; $5b19: $f0 $08
	dec sp                                           ; $5b1b: $3b
	ld c, c                                          ; $5b1c: $49
	ld d, l                                          ; $5b1d: $55
	ld a, $3c                                        ; $5b1e: $3e $3c
	ld a, [hl-]                                      ; $5b20: $3a
	jr c, jr_090_5b5d                                ; $5b21: $38 $3a

	ld c, b                                          ; $5b23: $48
	and e                                            ; $5b24: $a3
	cpl                                              ; $5b25: $2f
	ld [hl-], a                                      ; $5b26: $32
	db $ec                                           ; $5b27: $ec
	ld hl, sp+$34                                    ; $5b28: $f8 $34
	ld a, a                                          ; $5b2a: $7f
	ldh a, [$9a]                                     ; $5b2b: $f0 $9a
	jr c, jr_090_5b6e                                ; $5b2d: $38 $3f

	inc de                                           ; $5b2f: $13
	ld d, l                                          ; $5b30: $55
	ld c, l                                          ; $5b31: $4d
	dec a                                            ; $5b32: $3d
	inc a                                            ; $5b33: $3c
	ld a, [hl-]                                      ; $5b34: $3a
	ld [hl], $33                                     ; $5b35: $36 $33
	add hl, bc                                       ; $5b37: $09
	ld c, h                                          ; $5b38: $4c
	xor h                                            ; $5b39: $ac
	ld l, d                                          ; $5b3a: $6a
	ld b, d                                          ; $5b3b: $42
	pop af                                           ; $5b3c: $f1
	ld [$3f72], sp                                   ; $5b3d: $08 $72 $3f
	ld d, d                                          ; $5b40: $52
	ld a, $3d                                        ; $5b41: $3e $3d
	and c                                            ; $5b43: $a1
	cpl                                              ; $5b44: $2f
	ld b, e                                          ; $5b45: $43
	ldh a, [$5a]                                     ; $5b46: $f0 $5a
	dec sp                                           ; $5b48: $3b
	xor c                                            ; $5b49: $a9
	ld [hl], d                                       ; $5b4a: $72
	ccf                                              ; $5b4b: $3f
	dec a                                            ; $5b4c: $3d
	ld e, l                                          ; $5b4d: $5d
	ld e, d                                          ; $5b4e: $5a
	and b                                            ; $5b4f: $a0
	ld b, [hl]                                       ; $5b50: $46
	ld c, l                                          ; $5b51: $4d
	inc [hl]                                         ; $5b52: $34
	db $ec                                           ; $5b53: $ec
	rst AddAOntoHL                                          ; $5b54: $ef
	inc de                                           ; $5b55: $13
	db $eb                                           ; $5b56: $eb
	pop af                                           ; $5b57: $f1
	ld b, a                                          ; $5b58: $47
	inc a                                            ; $5b59: $3c
	ld e, l                                          ; $5b5a: $5d
	dec a                                            ; $5b5b: $3d
	ld d, b                                          ; $5b5c: $50

jr_090_5b5d:
	ld c, h                                          ; $5b5d: $4c
	xor h                                            ; $5b5e: $ac
	db $ec                                           ; $5b5f: $ec
	db $eb                                           ; $5b60: $eb
	ldh a, [rOBP0]                                   ; $5b61: $f0 $48
	ld e, l                                          ; $5b63: $5d
	ld a, [hl-]                                      ; $5b64: $3a
	ld d, l                                          ; $5b65: $55
	inc de                                           ; $5b66: $13
	ld a, [hl-]                                      ; $5b67: $3a
	dec sp                                           ; $5b68: $3b
	ld h, c                                          ; $5b69: $61
	ld d, [hl]                                       ; $5b6a: $56
	dec sp                                           ; $5b6b: $3b
	dec a                                            ; $5b6c: $3d
	ld b, c                                          ; $5b6d: $41

jr_090_5b6e:
	ld b, h                                          ; $5b6e: $44
	ld b, l                                          ; $5b6f: $45
	and b                                            ; $5b70: $a0
	cpl                                              ; $5b71: $2f
	ld b, e                                          ; $5b72: $43
	rst JumpTable                                          ; $5b73: $c7
	xor b                                            ; $5b74: $a8
	ld [hl-], a                                      ; $5b75: $32
	adc e                                            ; $5b76: $8b
	ldh a, [$72]                                     ; $5b77: $f0 $72
	ld b, d                                          ; $5b79: $42
	ldh a, [$f8]                                     ; $5b7a: $f0 $f8
	inc [hl]                                         ; $5b7c: $34
	ldh a, [$80]                                     ; $5b7d: $f0 $80
	ldh a, [$c5]                                     ; $5b7f: $f0 $c5
	db $ed                                           ; $5b81: $ed
	rrca                                             ; $5b82: $0f
	ld a, [hl-]                                      ; $5b83: $3a
	inc de                                           ; $5b84: $13
	ldh a, [rSVBK]                                   ; $5b85: $f0 $70
	di                                               ; $5b87: $f3
	ld e, l                                          ; $5b88: $5d
	ld c, d                                          ; $5b89: $4a
	pop af                                           ; $5b8a: $f1
	xor a                                            ; $5b8b: $af
	dec sp                                           ; $5b8c: $3b

jr_090_5b8d:
	ccf                                              ; $5b8d: $3f
	ld c, [hl]                                       ; $5b8e: $4e
	ld b, c                                          ; $5b8f: $41
	ld b, h                                          ; $5b90: $44
	ld a, [hl-]                                      ; $5b91: $3a
	and e                                            ; $5b92: $a3
	ld b, [hl]                                       ; $5b93: $46
	ld c, c                                          ; $5b94: $49
	ld c, h                                          ; $5b95: $4c
	add l                                            ; $5b96: $85
	xor b                                            ; $5b97: $a8
	ldh a, [$5f]                                     ; $5b98: $f0 $5f
	ldh a, [$9b]                                     ; $5b9a: $f0 $9b
	ld c, e                                          ; $5b9c: $4b
	inc [hl]                                         ; $5b9d: $34
	db $eb                                           ; $5b9e: $eb
	pop af                                           ; $5b9f: $f1
	ld c, d                                          ; $5ba0: $4a
	xor h                                            ; $5ba1: $ac
	pop af                                           ; $5ba2: $f1
	ld e, h                                          ; $5ba3: $5c
	ld a, $38                                        ; $5ba4: $3e $38
	pop af                                           ; $5ba6: $f1
	ld [$f062], sp                                   ; $5ba7: $08 $62 $f0
	add c                                            ; $5baa: $81
	pop af                                           ; $5bab: $f1
	xor l                                            ; $5bac: $ad
	ldh a, [rAUD2HIGH]                               ; $5bad: $f0 $19
	ld a, [hl-]                                      ; $5baf: $3a
	ld b, d                                          ; $5bb0: $42
	dec [hl]                                         ; $5bb1: $35
	inc hl                                           ; $5bb2: $23
	inc de                                           ; $5bb3: $13
	sub h                                            ; $5bb4: $94
	ld a, b                                          ; $5bb5: $78
	dec a                                            ; $5bb6: $3d
	ld d, b                                          ; $5bb7: $50
	ld [hl], d                                       ; $5bb8: $72
	ld a, c                                          ; $5bb9: $79
	ccf                                              ; $5bba: $3f
	rst SubAFromDE                                          ; $5bbb: $df
	ld c, h                                          ; $5bbc: $4c
	and b                                            ; $5bbd: $a0
	cpl                                              ; $5bbe: $2f
	ld b, e                                          ; $5bbf: $43
	ld b, [hl]                                       ; $5bc0: $46
	inc [hl]                                         ; $5bc1: $34
	ld b, [hl]                                       ; $5bc2: $46
	ld d, a                                          ; $5bc3: $57
	ld d, e                                          ; $5bc4: $53
	ld c, c                                          ; $5bc5: $49
	add hl, sp                                       ; $5bc6: $39
	dec [hl]                                         ; $5bc7: $35
	rla                                              ; $5bc8: $17
	ld [hl-], a                                      ; $5bc9: $32
	adc e                                            ; $5bca: $8b
	ldh a, [$72]                                     ; $5bcb: $f0 $72
	ld b, d                                          ; $5bcd: $42
	ld l, [hl]                                       ; $5bce: $6e
	add b                                            ; $5bcf: $80
	ld d, e                                          ; $5bd0: $53
	xor h                                            ; $5bd1: $ac
	ldh a, [rSCY]                                    ; $5bd2: $f0 $42
	ldh a, [rKEY1]                                   ; $5bd4: $f0 $4d
	ld b, c                                          ; $5bd6: $41
	ld b, a                                          ; $5bd7: $47
	ld [hl], a                                       ; $5bd8: $77
	ld e, [hl]                                       ; $5bd9: $5e
	ccf                                              ; $5bda: $3f
	ld e, h                                          ; $5bdb: $5c
	dec a                                            ; $5bdc: $3d
	and e                                            ; $5bdd: $a3
	ld b, [hl]                                       ; $5bde: $46
	dec sp                                           ; $5bdf: $3b
	inc [hl]                                         ; $5be0: $34
	ld d, c                                          ; $5be1: $51
	ld [hl], b                                       ; $5be2: $70
	jr c, jr_090_5b8d                                ; $5be3: $38 $a8

	ldh a, [rIF]                                     ; $5be5: $f0 $0f
	ldh a, [$a0]                                     ; $5be7: $f0 $a0
	ld e, c                                          ; $5be9: $59
	ldh a, [$6e]                                     ; $5bea: $f0 $6e
	ldh a, [$27]                                     ; $5bec: $f0 $27
	ld d, e                                          ; $5bee: $53
	ldh a, [$ec]                                     ; $5bef: $f0 $ec
	ld d, d                                          ; $5bf1: $52
	dec sp                                           ; $5bf2: $3b
	dec a                                            ; $5bf3: $3d
	and b                                            ; $5bf4: $a0
	cpl                                              ; $5bf5: $2f
	ld [hl-], a                                      ; $5bf6: $32
	xor $05                                          ; $5bf7: $ee $05
	ld b, h                                          ; $5bf9: $44
	xor b                                            ; $5bfa: $a8
	ld d, d                                          ; $5bfb: $52
	dec a                                            ; $5bfc: $3d
	pop af                                           ; $5bfd: $f1
	push hl                                          ; $5bfe: $e5
	ldh a, [rAUD2HIGH]                               ; $5bff: $f0 $19
	ld a, $3f                                        ; $5c01: $3e $3f
	db $ec                                           ; $5c03: $ec
	push de                                          ; $5c04: $d5
	and e                                            ; $5c05: $a3
	ld c, a                                          ; $5c06: $4f
	add hl, sp                                       ; $5c07: $39
	db $ec                                           ; $5c08: $ec
	ld a, $44                                        ; $5c09: $3e $44
	ld b, l                                          ; $5c0b: $45
	xor b                                            ; $5c0c: $a8
	ldh a, [$0a]                                     ; $5c0d: $f0 $0a
	ld d, l                                          ; $5c0f: $55
	db $eb                                           ; $5c10: $eb
	ld d, d                                          ; $5c11: $52
	and b                                            ; $5c12: $a0
	cpl                                              ; $5c13: $2f
	ld b, e                                          ; $5c14: $43
	ld b, b                                          ; $5c15: $40
	add hl, sp                                       ; $5c16: $39
	ld b, h                                          ; $5c17: $44
	ld c, h                                          ; $5c18: $4c
	xor b                                            ; $5c19: $a8
	ldh a, [$0a]                                     ; $5c1a: $f0 $0a
	ld d, l                                          ; $5c1c: $55
	sub [hl]                                         ; $5c1d: $96
	ld e, a                                          ; $5c1e: $5f
	add hl, sp                                       ; $5c1f: $39
	and b                                            ; $5c20: $a0
	ld b, [hl]                                       ; $5c21: $46
	ld b, b                                          ; $5c22: $40
	ld d, h                                          ; $5c23: $54
	ld d, e                                          ; $5c24: $53
	ldh a, [$c9]                                     ; $5c25: $f0 $c9
	jr c, jr_090_5c68                                ; $5c27: $38 $3f

	ld c, [hl]                                       ; $5c29: $4e
	ld b, l                                          ; $5c2a: $45
	and b                                            ; $5c2b: $a0
	cpl                                              ; $5c2c: $2f
	add sp, -$75                                     ; $5c2d: $e8 $8b
	and c                                            ; $5c2f: $a1
	xor $1f                                          ; $5c30: $ee $1f
	xor h                                            ; $5c32: $ac
	xor $27                                          ; $5c33: $ee $27
	inc [hl]                                         ; $5c35: $34
	db $eb                                           ; $5c36: $eb
	ld h, e                                          ; $5c37: $63
	ld b, l                                          ; $5c38: $45
	and b                                            ; $5c39: $a0
	cpl                                              ; $5c3a: $2f
	add sp, $2c                                      ; $5c3b: $e8 $2c
	and c                                            ; $5c3d: $a1
	ld b, b                                          ; $5c3e: $40
	ld e, c                                          ; $5c3f: $59
	ld h, h                                          ; $5c40: $64
	xor b                                            ; $5c41: $a8
	xor $27                                          ; $5c42: $ee $27
	ld c, e                                          ; $5c44: $4b
	db $eb                                           ; $5c45: $eb
	ld h, e                                          ; $5c46: $63
	ld e, l                                          ; $5c47: $5d
	ld e, d                                          ; $5c48: $5a
	and b                                            ; $5c49: $a0
	cpl                                              ; $5c4a: $2f
	add sp, $2d                                      ; $5c4b: $e8 $2d
	and c                                            ; $5c4d: $a1
	add hl, sp                                       ; $5c4e: $39
	ld e, c                                          ; $5c4f: $59
	ld b, c                                          ; $5c50: $41
	xor b                                            ; $5c51: $a8
	xor $27                                          ; $5c52: $ee $27
	ld c, e                                          ; $5c54: $4b
	db $eb                                           ; $5c55: $eb
	ld h, e                                          ; $5c56: $63
	ld e, l                                          ; $5c57: $5d
	ld e, d                                          ; $5c58: $5a
	and b                                            ; $5c59: $a0
	xor $27                                          ; $5c5a: $ee $27
	ld c, e                                          ; $5c5c: $4b
	inc [hl]                                         ; $5c5d: $34
	db $ec                                           ; $5c5e: $ec
	reti                                             ; $5c5f: $d9


	inc de                                           ; $5c60: $13
	ldh a, [$3d]                                     ; $5c61: $f0 $3d
	pop af                                           ; $5c63: $f1
	ld [bc], a                                       ; $5c64: $02
	ldh a, [$9d]                                     ; $5c65: $f0 $9d
	ld c, c                                          ; $5c67: $49

jr_090_5c68:
	inc a                                            ; $5c68: $3c
	ld d, e                                          ; $5c69: $53
	jr c, jr_090_5ca4                                ; $5c6a: $38 $38

	ld a, [hl-]                                      ; $5c6c: $3a
	ld [hl], h                                       ; $5c6d: $74
	and b                                            ; $5c6e: $a0
	xor $27                                          ; $5c6f: $ee $27
	ld b, d                                          ; $5c71: $42
	pop af                                           ; $5c72: $f1
	ld a, e                                          ; $5c73: $7b
	ldh a, [hDisp1_WY]                                     ; $5c74: $f0 $95
	ld e, e                                          ; $5c76: $5b
	ld d, [hl]                                       ; $5c77: $56
	inc de                                           ; $5c78: $13
	ld a, [hl-]                                      ; $5c79: $3a
	jr c, jr_090_5cb6                                ; $5c7a: $38 $3a

	ld e, c                                          ; $5c7c: $59
	and b                                            ; $5c7d: $a0
	xor $27                                          ; $5c7e: $ee $27
	ld b, a                                          ; $5c80: $47
	ld c, e                                          ; $5c81: $4b
	xor h                                            ; $5c82: $ac
	ld b, l                                          ; $5c83: $45
	ld d, l                                          ; $5c84: $55
	ld h, e                                          ; $5c85: $63
	inc a                                            ; $5c86: $3c
	ld b, c                                          ; $5c87: $41
	ld a, [hl-]                                      ; $5c88: $3a
	inc a                                            ; $5c89: $3c
	dec sp                                           ; $5c8a: $3b

Jump_090_5c8b:
	dec a                                            ; $5c8b: $3d
	ld b, l                                          ; $5c8c: $45
	ldh a, [c]                                       ; $5c8d: $f2
	ld a, l                                          ; $5c8e: $7d
	and b                                            ; $5c8f: $a0
	xor $27                                          ; $5c90: $ee $27
	ld c, e                                          ; $5c92: $4b
	xor h                                            ; $5c93: $ac
	db $ec                                           ; $5c94: $ec
	sub $44                                          ; $5c95: $d6 $44
	ld a, [hl-]                                      ; $5c97: $3a
	ld [hl], h                                       ; $5c98: $74
	and b                                            ; $5c99: $a0
	xor $27                                          ; $5c9a: $ee $27
	ld c, e                                          ; $5c9c: $4b
	xor h                                            ; $5c9d: $ac
	ld b, b                                          ; $5c9e: $40
	ld b, c                                          ; $5c9f: $41
	ld a, [hl-]                                      ; $5ca0: $3a
	ld b, a                                          ; $5ca1: $47
	ldh a, [$5c]                                     ; $5ca2: $f0 $5c

jr_090_5ca4:
	jr c, jr_090_5cef                                ; $5ca4: $38 $49

	ld c, e                                          ; $5ca6: $4b
	inc de                                           ; $5ca7: $13
	ld [hl], a                                       ; $5ca8: $77
	ld h, e                                          ; $5ca9: $63
	ld a, [hl-]                                      ; $5caa: $3a
	inc a                                            ; $5cab: $3c
	dec sp                                           ; $5cac: $3b
	dec a                                            ; $5cad: $3d
	ld e, l                                          ; $5cae: $5d
	ld e, d                                          ; $5caf: $5a
	and b                                            ; $5cb0: $a0
	ld b, [hl]                                       ; $5cb1: $46
	dec sp                                           ; $5cb2: $3b
	inc [hl]                                         ; $5cb3: $34
	ld c, a                                          ; $5cb4: $4f
	add hl, sp                                       ; $5cb5: $39

jr_090_5cb6:
	ldh a, [rBGP]                                    ; $5cb6: $f0 $47
	ldh a, [$2a]                                     ; $5cb8: $f0 $2a
	ld b, h                                          ; $5cba: $44
	xor b                                            ; $5cbb: $a8
	ldh a, [$0a]                                     ; $5cbc: $f0 $0a
	ld d, l                                          ; $5cbe: $55
	inc [hl]                                         ; $5cbf: $34
	ldh a, [$0a]                                     ; $5cc0: $f0 $0a
	ld d, l                                          ; $5cc2: $55
	ldh a, [c]                                       ; $5cc3: $f2
	ld l, h                                          ; $5cc4: $6c
	and b                                            ; $5cc5: $a0
	xor $27                                          ; $5cc6: $ee $27
	ldh a, [rSTAT]                                   ; $5cc8: $f0 $41
	ld b, d                                          ; $5cca: $42
	ldh a, [$e7]                                     ; $5ccb: $f0 $e7
	ldh a, [c]                                       ; $5ccd: $f2
	ld h, h                                          ; $5cce: $64
	ld c, e                                          ; $5ccf: $4b
	ld c, b                                          ; $5cd0: $48
	xor h                                            ; $5cd1: $ac
	ld e, [hl]                                       ; $5cd2: $5e
	ld e, c                                          ; $5cd3: $59
	ld c, c                                          ; $5cd4: $49
	and b                                            ; $5cd5: $a0
	cpl                                              ; $5cd6: $2f
	ld b, e                                          ; $5cd7: $43
	ldh a, [$08]                                     ; $5cd8: $f0 $08
	ld d, b                                          ; $5cda: $50
	xor h                                            ; $5cdb: $ac
	db $eb                                           ; $5cdc: $eb
	db $fc                                           ; $5cdd: $fc
	inc [hl]                                         ; $5cde: $34
	db $ec                                           ; $5cdf: $ec
	xor $ec                                          ; $5ce0: $ee $ec
	xor $a0                                          ; $5ce2: $ee $a0
	cpl                                              ; $5ce4: $2f
	add sp, -$74                                     ; $5ce5: $e8 $8c
	and c                                            ; $5ce7: $a1
	xor $1f                                          ; $5ce8: $ee $1f
	xor b                                            ; $5cea: $a8
	xor $27                                          ; $5ceb: $ee $27
	ldh a, [rAUD4POLY]                               ; $5ced: $f0 $22

jr_090_5cef:
	ld a, l                                          ; $5cef: $7d
	ldh a, [rAUD1LEN]                                ; $5cf0: $f0 $11
	ld e, c                                          ; $5cf2: $59
	and b                                            ; $5cf3: $a0
	cpl                                              ; $5cf4: $2f
	add sp, $0e                                      ; $5cf5: $e8 $0e
	and c                                            ; $5cf7: $a1
	xor $27                                          ; $5cf8: $ee $27
	ld c, e                                          ; $5cfa: $4b
	xor h                                            ; $5cfb: $ac
	pop af                                           ; $5cfc: $f1
	inc hl                                           ; $5cfd: $23
	ldh a, [rP1]                                     ; $5cfe: $f0 $00
	pop af                                           ; $5d00: $f1
	inc hl                                           ; $5d01: $23
	ldh a, [rP1]                                     ; $5d02: $f0 $00
	ld b, h                                          ; $5d04: $44
	dec sp                                           ; $5d05: $3b
	dec a                                            ; $5d06: $3d
	ld e, l                                          ; $5d07: $5d
	ld e, d                                          ; $5d08: $5a
	ld a, [hl-]                                      ; $5d09: $3a
	ld [hl], h                                       ; $5d0a: $74
	and b                                            ; $5d0b: $a0
	cpl                                              ; $5d0c: $2f
	add sp, $0f                                      ; $5d0d: $e8 $0f
	and c                                            ; $5d0f: $a1
	xor $27                                          ; $5d10: $ee $27
	ld c, e                                          ; $5d12: $4b
	xor h                                            ; $5d13: $ac
	ld a, a                                          ; $5d14: $7f
	ld b, a                                          ; $5d15: $47
	sub [hl]                                         ; $5d16: $96
	dec sp                                           ; $5d17: $3b
	dec a                                            ; $5d18: $3d
	ld e, l                                          ; $5d19: $5d
	ld e, d                                          ; $5d1a: $5a
	ld a, [hl-]                                      ; $5d1b: $3a
	and b                                            ; $5d1c: $a0
	ld e, [hl]                                       ; $5d1d: $5e
	ld e, c                                          ; $5d1e: $59
	dec sp                                           ; $5d1f: $3b
	xor b                                            ; $5d20: $a8
	xor $27                                          ; $5d21: $ee $27
	db $db                                           ; $5d23: $db
	ld a, [hl-]                                      ; $5d24: $3a
	inc a                                            ; $5d25: $3c
	dec sp                                           ; $5d26: $3b
	dec a                                            ; $5d27: $3d
	ld b, l                                          ; $5d28: $45
	and b                                            ; $5d29: $a0
	xor $1f                                          ; $5d2a: $ee $1f
	xor b                                            ; $5d2c: $a8
	xor $27                                          ; $5d2d: $ee $27
	ld c, a                                          ; $5d2f: $4f
	ldh a, [rAUD4POLY]                               ; $5d30: $f0 $22
	ld h, l                                          ; $5d32: $65
	ldh a, [$7b]                                     ; $5d33: $f0 $7b
	ld e, c                                          ; $5d35: $59
	and b                                            ; $5d36: $a0
	xor $27                                          ; $5d37: $ee $27
	ld c, e                                          ; $5d39: $4b
	ldh a, [c]                                       ; $5d3a: $f2
	cp h                                             ; $5d3b: $bc
	ld a, [$44f1]                                    ; $5d3c: $fa $f1 $44
	dec sp                                           ; $5d3f: $3b
	dec a                                            ; $5d40: $3d
	ld a, [hl-]                                      ; $5d41: $3a
	and b                                            ; $5d42: $a0
	xor $27                                          ; $5d43: $ee $27
	inc [hl]                                         ; $5d45: $34
	ret                                              ; $5d46: $c9


	inc de                                           ; $5d47: $13
	db $ec                                           ; $5d48: $ec
	ld l, [hl]                                       ; $5d49: $6e
	db $f4                                           ; $5d4a: $f4
	rst FarCall                                          ; $5d4b: $f7
	inc a                                            ; $5d4c: $3c
	dec sp                                           ; $5d4d: $3b
	dec a                                            ; $5d4e: $3d
	ld a, [hl-]                                      ; $5d4f: $3a
	ld [hl], h                                       ; $5d50: $74
	and b                                            ; $5d51: $a0
	xor $27                                          ; $5d52: $ee $27
	ld c, e                                          ; $5d54: $4b
	inc [hl]                                         ; $5d55: $34
	ld b, b                                          ; $5d56: $40
	ld b, c                                          ; $5d57: $41
	ld a, [hl-]                                      ; $5d58: $3a
	ld b, a                                          ; $5d59: $47
	inc de                                           ; $5d5a: $13
	ldh a, [$5c]                                     ; $5d5b: $f0 $5c
	jr c, jr_090_5da8                                ; $5d5d: $38 $49

	ld c, e                                          ; $5d5f: $4b
	ld [hl], a                                       ; $5d60: $77
	ld h, e                                          ; $5d61: $63
	ld a, [hl-]                                      ; $5d62: $3a
	inc a                                            ; $5d63: $3c
	dec sp                                           ; $5d64: $3b
	dec a                                            ; $5d65: $3d
	ld e, l                                          ; $5d66: $5d
	ld e, d                                          ; $5d67: $5a
	and b                                            ; $5d68: $a0
	xor $27                                          ; $5d69: $ee $27
	ld c, a                                          ; $5d6b: $4f
	ldh a, [$cd]                                     ; $5d6c: $f0 $cd
	ldh a, [$78]                                     ; $5d6e: $f0 $78
	and b                                            ; $5d70: $a0
	db $ec                                           ; $5d71: $ec
	db $fc                                           ; $5d72: $fc
	ld b, h                                          ; $5d73: $44
	inc [hl]                                         ; $5d74: $34
	db $ec                                           ; $5d75: $ec
	db $fc                                           ; $5d76: $fc
	ld b, h                                          ; $5d77: $44
	xor b                                            ; $5d78: $a8
	ldh a, [$a0]                                     ; $5d79: $f0 $a0
	ld e, c                                          ; $5d7b: $59
	ld a, l                                          ; $5d7c: $7d
	inc [hl]                                         ; $5d7d: $34
	ldh a, [$a0]                                     ; $5d7e: $f0 $a0
	ld e, c                                          ; $5d80: $59
	ld a, l                                          ; $5d81: $7d
	and b                                            ; $5d82: $a0
	cpl                                              ; $5d83: $2f
	ld b, e                                          ; $5d84: $43
	ld e, e                                          ; $5d85: $5b
	ld d, [hl]                                       ; $5d86: $56
	ld b, [hl]                                       ; $5d87: $46
	inc [hl]                                         ; $5d88: $34
	db $eb                                           ; $5d89: $eb
	ld d, d                                          ; $5d8a: $52
	inc a                                            ; $5d8b: $3c
	and c                                            ; $5d8c: $a1
	cpl                                              ; $5d8d: $2f
	add sp, -$1e                                     ; $5d8e: $e8 $e2
	add hl, bc                                       ; $5d90: $09
	pop af                                           ; $5d91: $f1
	ld b, b                                          ; $5d92: $40
	pop af                                           ; $5d93: $f1
	sub a                                            ; $5d94: $97
	pop af                                           ; $5d95: $f1
	sub a                                            ; $5d96: $97
	xor b                                            ; $5d97: $a8
	ret                                              ; $5d98: $c9


	db $eb                                           ; $5d99: $eb
	ld c, a                                          ; $5d9a: $4f
	ld e, l                                          ; $5d9b: $5d
	ld e, d                                          ; $5d9c: $5a
	inc de                                           ; $5d9d: $13
	ldh a, [$29]                                     ; $5d9e: $f0 $29
	ld a, $38                                        ; $5da0: $3e $38
	ld a, [hl-]                                      ; $5da2: $3a
	and b                                            ; $5da3: $a0
	cpl                                              ; $5da4: $2f
	jp hl                                            ; $5da5: $e9


	cp d                                             ; $5da6: $ba
	add hl, bc                                       ; $5da7: $09

jr_090_5da8:
	xor $27                                          ; $5da8: $ee $27
	ld h, d                                          ; $5daa: $62
	inc de                                           ; $5dab: $13
	db $ed                                           ; $5dac: $ed
	ld h, a                                          ; $5dad: $67
	db $f4                                           ; $5dae: $f4
	push hl                                          ; $5daf: $e5
	jr c, jr_090_5df0                                ; $5db0: $38 $3e

	ld a, [hl-]                                      ; $5db2: $3a
	jr c, jr_090_5dff                                ; $5db3: $38 $4a

	inc de                                           ; $5db5: $13
	db $ec                                           ; $5db6: $ec
	push af                                          ; $5db7: $f5
	ld a, [hl-]                                      ; $5db8: $3a
	and b                                            ; $5db9: $a0
	cpl                                              ; $5dba: $2f
	jp hl                                            ; $5dbb: $e9


	dec sp                                           ; $5dbc: $3b
	add hl, bc                                       ; $5dbd: $09
	db $ec                                           ; $5dbe: $ec
	reti                                             ; $5dbf: $d9


	xor c                                            ; $5dc0: $a9
	xor $27                                          ; $5dc1: $ee $27
	ld b, a                                          ; $5dc3: $47
	ld c, e                                          ; $5dc4: $4b
	ret                                              ; $5dc5: $c9


	inc de                                           ; $5dc6: $13
	db $ed                                           ; $5dc7: $ed
	ld h, a                                          ; $5dc8: $67
	dec sp                                           ; $5dc9: $3b

jr_090_5dca:
	pop af                                           ; $5dca: $f1
	rla                                              ; $5dcb: $17
	inc a                                            ; $5dcc: $3c
	dec sp                                           ; $5dcd: $3b
	dec a                                            ; $5dce: $3d
	ld c, h                                          ; $5dcf: $4c
	and b                                            ; $5dd0: $a0
	xor $27                                          ; $5dd1: $ee $27
	xor h                                            ; $5dd3: $ac
	ldh a, [hDisp1_SCY]                                     ; $5dd4: $f0 $90
	ldh a, [$cb]                                     ; $5dd6: $f0 $cb
	ld c, e                                          ; $5dd8: $4b
	ldh a, [$3e]                                     ; $5dd9: $f0 $3e
	ldh a, [$0b]                                     ; $5ddb: $f0 $0b
	ld a, [hl-]                                      ; $5ddd: $3a
	ld b, c                                          ; $5dde: $41
	ld b, h                                          ; $5ddf: $44
	and b                                            ; $5de0: $a0
	cpl                                              ; $5de1: $2f
	halt                                             ; $5de2: $76
	ld b, a                                          ; $5de3: $47
	db $ec                                           ; $5de4: $ec
	db $ed                                           ; $5de5: $ed
	ld d, l                                          ; $5de6: $55
	ld c, l                                          ; $5de7: $4d
	ld b, l                                          ; $5de8: $45
	and c                                            ; $5de9: $a1
	xor $1f                                          ; $5dea: $ee $1f
	xor b                                            ; $5dec: $a8
	jr c, jr_090_5e27                                ; $5ded: $38 $38

	ld b, l                                          ; $5def: $45

jr_090_5df0:
	xor b                                            ; $5df0: $a8
	xor $27                                          ; $5df1: $ee $27
	ldh a, [$a6]                                     ; $5df3: $f0 $a6
	ld h, l                                          ; $5df5: $65
	ldh a, [rAUD4LEN]                                ; $5df6: $f0 $20
	ld [hl], e                                       ; $5df8: $73
	ld h, c                                          ; $5df9: $61
	ld d, [hl]                                       ; $5dfa: $56
	add hl, sp                                       ; $5dfb: $39
	and b                                            ; $5dfc: $a0
	cpl                                              ; $5dfd: $2f
	halt                                             ; $5dfe: $76

jr_090_5dff:
	ld c, a                                          ; $5dff: $4f
	ld a, [hl-]                                      ; $5e00: $3a
	ld b, c                                          ; $5e01: $41
	ld b, h                                          ; $5e02: $44
	add hl, bc                                       ; $5e03: $09
	db $db                                           ; $5e04: $db
	ld a, [hl-]                                      ; $5e05: $3a
	jr c, @+$3c                                      ; $5e06: $38 $3a

	ld e, c                                          ; $5e08: $59
	dec [hl]                                         ; $5e09: $35
	ld [hl+], a                                      ; $5e0a: $22
	inc de                                           ; $5e0b: $13
	db $ec                                           ; $5e0c: $ec
	add hl, bc                                       ; $5e0d: $09
	xor $27                                          ; $5e0e: $ee $27
	ld d, e                                          ; $5e10: $53
	inc de                                           ; $5e11: $13
	db $ec                                           ; $5e12: $ec
	db $ed                                           ; $5e13: $ed
	ld b, [hl]                                       ; $5e14: $46
	ldh a, [rSB]                                     ; $5e15: $f0 $01
	ld b, l                                          ; $5e17: $45
	add hl, sp                                       ; $5e18: $39
	ld c, c                                          ; $5e19: $49
	inc de                                           ; $5e1a: $13

jr_090_5e1b:
	ld [hl], a                                       ; $5e1b: $77
	dec sp                                           ; $5e1c: $3b
	dec a                                            ; $5e1d: $3d
	ld b, d                                          ; $5e1e: $42
	ld b, a                                          ; $5e1f: $47
	ld e, c                                          ; $5e20: $59
	and b                                            ; $5e21: $a0
	cpl                                              ; $5e22: $2f
	ld e, e                                          ; $5e23: $5b
	ld d, [hl]                                       ; $5e24: $56
	ld b, [hl]                                       ; $5e25: $46
	db $ed                                           ; $5e26: $ed

jr_090_5e27:
	or c                                             ; $5e27: $b1
	ld b, h                                          ; $5e28: $44
	add hl, bc                                       ; $5e29: $09
	xor $27                                          ; $5e2a: $ee $27
	inc [hl]                                         ; $5e2c: $34
	ldh a, [$e4]                                     ; $5e2d: $f0 $e4
	ld e, l                                          ; $5e2f: $5d
	ld a, [hl-]                                      ; $5e30: $3a
	jr c, jr_090_5dca                                ; $5e31: $38 $97

	and b                                            ; $5e33: $a0
	pop af                                           ; $5e34: $f1

jr_090_5e35:
	db $e3                                           ; $5e35: $e3
	ld [hl], e                                       ; $5e36: $73
	ldh a, [rOCPD]                                   ; $5e37: $f0 $6b
	ld e, c                                          ; $5e39: $59
	inc [hl]                                         ; $5e3a: $34
	pop af                                           ; $5e3b: $f1
	cpl                                              ; $5e3c: $2f
	ld b, h                                          ; $5e3d: $44
	ld b, l                                          ; $5e3e: $45
	ld e, c                                          ; $5e3f: $59
	and b                                            ; $5e40: $a0
	ldh a, [$0a]                                     ; $5e41: $f0 $0a
	ld d, l                                          ; $5e43: $55
	di                                               ; $5e44: $f3
	xor b                                            ; $5e45: $a8
	ld b, a                                          ; $5e46: $47
	call $a059                                       ; $5e47: $cd $59 $a0
	cpl                                              ; $5e4a: $2f
	ld b, l                                          ; $5e4b: $45
	ld e, c                                          ; $5e4c: $59
	ld a, $34                                        ; $5e4d: $3e $34
	ld h, a                                          ; $5e4f: $67
	ld d, l                                          ; $5e50: $55
	inc a                                            ; $5e51: $3c
	ld e, c                                          ; $5e52: $59
	add hl, bc                                       ; $5e53: $09
	ld e, e                                          ; $5e54: $5b
	ld d, [hl]                                       ; $5e55: $56
	ld b, [hl]                                       ; $5e56: $46
	xor h                                            ; $5e57: $ac
	xor $27                                          ; $5e58: $ee $27
	ld c, c                                          ; $5e5a: $49
	db $ed                                           ; $5e5b: $ed
	or c                                             ; $5e5c: $b1
	ld b, h                                          ; $5e5d: $44
	ld b, l                                          ; $5e5e: $45
	and b                                            ; $5e5f: $a0
	cpl                                              ; $5e60: $2f
	db $ec                                           ; $5e61: $ec
	ld a, [de]                                       ; $5e62: $1a
	inc [hl]                                         ; $5e63: $34
	pop af                                           ; $5e64: $f1
	ld de, $65f0                                     ; $5e65: $11 $f0 $65
	ld h, d                                          ; $5e68: $62
	pop af                                           ; $5e69: $f1
	cp h                                             ; $5e6a: $bc
	ld d, h                                          ; $5e6b: $54
	add hl, sp                                       ; $5e6c: $39
	ld b, l                                          ; $5e6d: $45
	add hl, bc                                       ; $5e6e: $09
	ld b, b                                          ; $5e6f: $40
	ld b, c                                          ; $5e70: $41
	ld a, [hl-]                                      ; $5e71: $3a
	ld b, d                                          ; $5e72: $42
	xor $27                                          ; $5e73: $ee $27
	xor h                                            ; $5e75: $ac
	db $db                                           ; $5e76: $db
	ld a, [hl-]                                      ; $5e77: $3a
	ld e, c                                          ; $5e78: $59
	jr c, jr_090_5e1b                                ; $5e79: $38 $a0

	cpl                                              ; $5e7b: $2f
	ldh a, [$bc]                                     ; $5e7c: $f0 $bc
	ld b, a                                          ; $5e7e: $47
	ld h, a                                          ; $5e7f: $67
	dec sp                                           ; $5e80: $3b
	ccf                                              ; $5e81: $3f
	ccf                                              ; $5e82: $3f
	ld d, l                                          ; $5e83: $55
	ld c, l                                          ; $5e84: $4d
	ld c, [hl]                                       ; $5e85: $4e
	inc a                                            ; $5e86: $3c
	ld a, [hl-]                                      ; $5e87: $3a
	and c                                            ; $5e88: $a1
	ld c, e                                          ; $5e89: $4b
	ld e, c                                          ; $5e8a: $59
	jr c, jr_090_5e35                                ; $5e8b: $38 $a8

	xor $27                                          ; $5e8d: $ee $27
	sbc c                                            ; $5e8f: $99
	dec sp                                           ; $5e90: $3b
	ccf                                              ; $5e91: $3f
	ld c, [hl]                                       ; $5e92: $4e
	inc a                                            ; $5e93: $3c
	ld d, b                                          ; $5e94: $50
	inc de                                           ; $5e95: $13
	ld c, e                                          ; $5e96: $4b
	ld l, [hl]                                       ; $5e97: $6e
	ld d, l                                          ; $5e98: $55
	ld a, b                                          ; $5e99: $78
	ccf                                              ; $5e9a: $3f
	ld c, h                                          ; $5e9b: $4c
	and b                                            ; $5e9c: $a0
	xor $27                                          ; $5e9d: $ee $27
	ld b, d                                          ; $5e9f: $42
	ldh a, [hDisp1_SCY]                                     ; $5ea0: $f0 $90
	ldh a, [$cb]                                     ; $5ea2: $f0 $cb
	inc de                                           ; $5ea4: $13
	ldh a, [$35]                                     ; $5ea5: $f0 $35
	ld [hl], e                                       ; $5ea7: $73
	ldh a, [rAUD1LEN]                                ; $5ea8: $f0 $11
	db $ec                                           ; $5eaa: $ec
	cp c                                             ; $5eab: $b9
	ld c, d                                          ; $5eac: $4a
	ld a, $66                                        ; $5ead: $3e $66
	add hl, sp                                       ; $5eaf: $39
	and c                                            ; $5eb0: $a1
	cpl                                              ; $5eb1: $2f
	xor $1f                                          ; $5eb2: $ee $1f
	dec [hl]                                         ; $5eb4: $35
	add h                                            ; $5eb5: $84
	pop af                                           ; $5eb6: $f1
	xor c                                            ; $5eb7: $a9
	di                                               ; $5eb8: $f3
	rst SubAFromHL                                          ; $5eb9: $d7
	ld l, h                                          ; $5eba: $6c
	dec a                                            ; $5ebb: $3d
	jr c, jr_090_5ec7                                ; $5ebc: $38 $09

	pop af                                           ; $5ebe: $f1
	ld b, b                                          ; $5ebf: $40
	ld e, c                                          ; $5ec0: $59
	ld [hl], e                                       ; $5ec1: $73
	inc [hl]                                         ; $5ec2: $34
	ldh a, [$08]                                     ; $5ec3: $f0 $08
	ld b, c                                          ; $5ec5: $41
	ld c, c                                          ; $5ec6: $49

jr_090_5ec7:
	ld e, c                                          ; $5ec7: $59
	xor b                                            ; $5ec8: $a8
	xor $27                                          ; $5ec9: $ee $27
	add hl, sp                                       ; $5ecb: $39
	ld c, l                                          ; $5ecc: $4d
	ld a, $38                                        ; $5ecd: $3e $38
	ld a, [hl-]                                      ; $5ecf: $3a
	and b                                            ; $5ed0: $a0
	cpl                                              ; $5ed1: $2f
	xor $1f                                          ; $5ed2: $ee $1f
	dec [hl]                                         ; $5ed4: $35
	ldh a, [c]                                       ; $5ed5: $f2
	ld b, h                                          ; $5ed6: $44
	ld h, l                                          ; $5ed7: $65
	pop af                                           ; $5ed8: $f1
	ld [hl], h                                       ; $5ed9: $74
	ld h, l                                          ; $5eda: $65
	ld l, h                                          ; $5edb: $6c
	dec a                                            ; $5edc: $3d
	jr c, jr_090_5ee8                                ; $5edd: $38 $09

	db $ed                                           ; $5edf: $ed
	ret z                                            ; $5ee0: $c8

	ld [hl], e                                       ; $5ee1: $73
	xor b                                            ; $5ee2: $a8
	xor $27                                          ; $5ee3: $ee $27
	ld b, b                                          ; $5ee5: $40
	ld b, c                                          ; $5ee6: $41
	ld a, [hl-]                                      ; $5ee7: $3a

jr_090_5ee8:
	ld b, a                                          ; $5ee8: $47
	inc de                                           ; $5ee9: $13
	ld hl, sp-$48                                    ; $5eea: $f8 $b8
	dec sp                                           ; $5eec: $3b
	ccf                                              ; $5eed: $3f
	ld a, [hl-]                                      ; $5eee: $3a
	jr c, jr_090_5f40                                ; $5eef: $38 $4f

	ld b, c                                          ; $5ef1: $41
	and b                                            ; $5ef2: $a0
	cpl                                              ; $5ef3: $2f
	xor $1f                                          ; $5ef4: $ee $1f
	dec [hl]                                         ; $5ef6: $35
	ld h, h                                          ; $5ef7: $64
	pop af                                           ; $5ef8: $f1
	xor c                                            ; $5ef9: $a9
	ld l, h                                          ; $5efa: $6c
	dec a                                            ; $5efb: $3d
	jr c, jr_090_5f07                                ; $5efc: $38 $09

	xor $27                                          ; $5efe: $ee $27
	inc [hl]                                         ; $5f00: $34
	ldh a, [hDisp0_BGP]                                     ; $5f01: $f0 $85
	ld c, l                                          ; $5f03: $4d
	ld c, [hl]                                       ; $5f04: $4e
	ld b, l                                          ; $5f05: $45
	add hl, sp                                       ; $5f06: $39

jr_090_5f07:
	ld b, a                                          ; $5f07: $47
	inc de                                           ; $5f08: $13
	ldh a, [hDisp1_SCY]                                     ; $5f09: $f0 $90
	jr c, jr_090_5f57                                ; $5f0b: $38 $4a

	jr c, jr_090_5f5d                                ; $5f0d: $38 $4e

	ld c, d                                          ; $5f0f: $4a
	ld a, $66                                        ; $5f10: $3e $66
	add hl, sp                                       ; $5f12: $39
	and b                                            ; $5f13: $a0
	ld h, e                                          ; $5f14: $63
	ld e, c                                          ; $5f15: $59
	dec sp                                           ; $5f16: $3b
	xor b                                            ; $5f17: $a8

jr_090_5f18:
	di                                               ; $5f18: $f3
	ld c, [hl]                                       ; $5f19: $4e
	ld l, [hl]                                       ; $5f1a: $6e
	inc a                                            ; $5f1b: $3c
	ld b, h                                          ; $5f1c: $44
	ld a, [hl-]                                      ; $5f1d: $3a
	ld e, c                                          ; $5f1e: $59
	and b                                            ; $5f1f: $a0
	cpl                                              ; $5f20: $2f
	ld b, e                                          ; $5f21: $43
	or h                                             ; $5f22: $b4
	xor h                                            ; $5f23: $ac
	ldh a, [c]                                       ; $5f24: $f2
	inc [hl]                                         ; $5f25: $34
	ldh a, [c]                                       ; $5f26: $f2
	ld h, d                                          ; $5f27: $62
	ldh a, [rSB]                                     ; $5f28: $f0 $01
	ld c, d                                          ; $5f2a: $4a
	ld c, a                                          ; $5f2b: $4f
	db $ec                                           ; $5f2c: $ec
	inc c                                            ; $5f2d: $0c
	and c                                            ; $5f2e: $a1
	ldh a, [c]                                       ; $5f2f: $f2
	inc [hl]                                         ; $5f30: $34
	ldh a, [c]                                       ; $5f31: $f2
	ld h, d                                          ; $5f32: $62
	ldh a, [rSB]                                     ; $5f33: $f0 $01
	inc [hl]                                         ; $5f35: $34
	ldh a, [c]                                       ; $5f36: $f2
	inc [hl]                                         ; $5f37: $34
	ldh a, [c]                                       ; $5f38: $f2
	ld h, d                                          ; $5f39: $62
	ldh a, [rSB]                                     ; $5f3a: $f0 $01
	xor h                                            ; $5f3c: $ac
	ldh a, [$a6]                                     ; $5f3d: $f0 $a6
	ld h, l                                          ; $5f3f: $65

jr_090_5f40:
	ldh a, [rAUD4LEN]                                ; $5f40: $f0 $20
	inc [hl]                                         ; $5f42: $34
	ldh a, [$a6]                                     ; $5f43: $f0 $a6
	ld h, l                                          ; $5f45: $65
	ldh a, [rAUD4LEN]                                ; $5f46: $f0 $20
	and b                                            ; $5f48: $a0
	cpl                                              ; $5f49: $2f
	ld b, e                                          ; $5f4a: $43
	pop af                                           ; $5f4b: $f1
	inc b                                            ; $5f4c: $04
	ld c, l                                          ; $5f4d: $4d
	dec a                                            ; $5f4e: $3d
	ld d, b                                          ; $5f4f: $50
	xor h                                            ; $5f50: $ac
	db $eb                                           ; $5f51: $eb
	db $fc                                           ; $5f52: $fc
	ld b, a                                          ; $5f53: $47
	rst SubAFromDE                                          ; $5f54: $df
	ld c, h                                          ; $5f55: $4c
	and b                                            ; $5f56: $a0

jr_090_5f57:
	xor $1f                                          ; $5f57: $ee $1f
	xor b                                            ; $5f59: $a8
	ld b, [hl]                                       ; $5f5a: $46
	ld d, a                                          ; $5f5b: $57
	ld d, e                                          ; $5f5c: $53

jr_090_5f5d:
	ld c, c                                          ; $5f5d: $49
	add hl, sp                                       ; $5f5e: $39
	and b                                            ; $5f5f: $a0
	cpl                                              ; $5f60: $2f
	ld b, e                                          ; $5f61: $43
	xor $2d                                          ; $5f62: $ee $2d
	inc [hl]                                         ; $5f64: $34
	db $eb                                           ; $5f65: $eb
	db $fc                                           ; $5f66: $fc
	and b                                            ; $5f67: $a0
	ld h, e                                          ; $5f68: $63
	ld e, c                                          ; $5f69: $59
	jr c, jr_090_5fa0                                ; $5f6a: $38 $34

	ld h, e                                          ; $5f6c: $63
	ld e, c                                          ; $5f6d: $59
	jr c, jr_090_5f18                                ; $5f6e: $38 $a8

	ld b, [hl]                                       ; $5f70: $46
	ld d, a                                          ; $5f71: $57
	ld d, e                                          ; $5f72: $53
	ld c, c                                          ; $5f73: $49
	add hl, sp                                       ; $5f74: $39
	and b                                            ; $5f75: $a0
	cpl                                              ; $5f76: $2f
	ld b, e                                          ; $5f77: $43
	ld [hl], b                                       ; $5f78: $70
	ld [hl], c                                       ; $5f79: $71
	ld b, c                                          ; $5f7a: $41
	ld c, b                                          ; $5f7b: $48
	inc [hl]                                         ; $5f7c: $34
	db $eb                                           ; $5f7d: $eb
	db $fc                                           ; $5f7e: $fc
	xor b                                            ; $5f7f: $a8
	ld l, e                                          ; $5f80: $6b
	ld c, a                                          ; $5f81: $4f
	pop af                                           ; $5f82: $f1
	inc b                                            ; $5f83: $04
	ld c, l                                          ; $5f84: $4d

jr_090_5f85:
	ld a, [hl-]                                      ; $5f85: $3a
	inc a                                            ; $5f86: $3c
	dec sp                                           ; $5f87: $3b
	dec a                                            ; $5f88: $3d
	ld b, l                                          ; $5f89: $45
	and b                                            ; $5f8a: $a0
	ld b, [hl]                                       ; $5f8b: $46
	ld c, e                                          ; $5f8c: $4b
	ld c, e                                          ; $5f8d: $4b
	inc [hl]                                         ; $5f8e: $34
	ldh a, [$5a]                                     ; $5f8f: $f0 $5a
	dec a                                            ; $5f91: $3d
	ld d, l                                          ; $5f92: $55
	ld b, b                                          ; $5f93: $40
	ld e, c                                          ; $5f94: $59
	xor b                                            ; $5f95: $a8
	ldh a, [$d6]                                     ; $5f96: $f0 $d6
	ld c, e                                          ; $5f98: $4b
	xor $27                                          ; $5f99: $ee $27
	ld d, e                                          ; $5f9b: $53
	ld l, [hl]                                       ; $5f9c: $6e
	ld c, [hl]                                       ; $5f9d: $4e
	ld c, h                                          ; $5f9e: $4c
	and b                                            ; $5f9f: $a0

jr_090_5fa0:
	cpl                                              ; $5fa0: $2f
	ld b, e                                          ; $5fa1: $43
	ld l, d                                          ; $5fa2: $6a
	ldh a, [rAUD1HIGH]                               ; $5fa3: $f0 $14
	ld c, e                                          ; $5fa5: $4b
	xor h                                            ; $5fa6: $ac
	jp hl                                            ; $5fa7: $e9


	dec [hl]                                         ; $5fa8: $35
	xor b                                            ; $5fa9: $a8
	ld [$a038], a                                    ; $5faa: $ea $38 $a0
	xor $1f                                          ; $5fad: $ee $1f
	inc [hl]                                         ; $5faf: $34
	ld h, a                                          ; $5fb0: $67
	ld d, h                                          ; $5fb1: $54
	add hl, sp                                       ; $5fb2: $39
	xor b                                            ; $5fb3: $a8
	db $ed                                           ; $5fb4: $ed
	ld a, [hl-]                                      ; $5fb5: $3a
	inc [hl]                                         ; $5fb6: $34
	db $ed                                           ; $5fb7: $ed
	ld a, [hl-]                                      ; $5fb8: $3a
	xor b                                            ; $5fb9: $a8
	db $ed                                           ; $5fba: $ed
	dec sp                                           ; $5fbb: $3b
	inc [hl]                                         ; $5fbc: $34
	db $ed                                           ; $5fbd: $ed
	dec sp                                           ; $5fbe: $3b
	and b                                            ; $5fbf: $a0
	ldh a, [rDIV]                                    ; $5fc0: $f0 $04
	ld e, c                                          ; $5fc2: $59
	ldh a, [rAUD3LOW]                                ; $5fc3: $f0 $1d
	pop af                                           ; $5fc5: $f1
	db $e3                                           ; $5fc6: $e3
	ld e, c                                          ; $5fc7: $59
	xor b                                            ; $5fc8: $a8
	db $ec                                           ; $5fc9: $ec
	inc de                                           ; $5fca: $13
	db $ed                                           ; $5fcb: $ed
	adc l                                            ; $5fcc: $8d
	ld b, h                                          ; $5fcd: $44
	dec sp                                           ; $5fce: $3b
	dec a                                            ; $5fcf: $3d
	ld c, h                                          ; $5fd0: $4c
	add l                                            ; $5fd1: $85
	and b                                            ; $5fd2: $a0
	cpl                                              ; $5fd3: $2f
	add sp, $2e                                      ; $5fd4: $e8 $2e
	add hl, bc                                       ; $5fd6: $09
	ld d, c                                          ; $5fd7: $51
	dec sp                                           ; $5fd8: $3b
	ld [hl], b                                       ; $5fd9: $70
	ld e, c                                          ; $5fda: $59
	jr c, jr_090_5f85                                ; $5fdb: $38 $a8

	ld a, [hl]                                       ; $5fdd: $7e
	ld d, l                                          ; $5fde: $55
	ld b, b                                          ; $5fdf: $40
	ld b, c                                          ; $5fe0: $41
	ld a, [hl-]                                      ; $5fe1: $3a
	db $ed                                           ; $5fe2: $ed
	ld [hl], c                                       ; $5fe3: $71
	add d                                            ; $5fe4: $82
	ld e, [hl]                                       ; $5fe5: $5e
	ld c, [hl]                                       ; $5fe6: $4e
	ld c, h                                          ; $5fe7: $4c
	xor b                                            ; $5fe8: $a8
	xor $27                                          ; $5fe9: $ee $27
	inc [hl]                                         ; $5feb: $34
	ld sp, hl                                        ; $5fec: $f9
	dec b                                            ; $5fed: $05
	ld d, e                                          ; $5fee: $53
	ldh a, [$d3]                                     ; $5fef: $f0 $d3
	ld d, b                                          ; $5ff1: $50
	ld a, [hl-]                                      ; $5ff2: $3a
	jr c, jr_090_603a                                ; $5ff3: $38 $45

	ld e, c                                          ; $5ff5: $59
	and b                                            ; $5ff6: $a0
	cpl                                              ; $5ff7: $2f
	add sp, -$25                                     ; $5ff8: $e8 $db
	add hl, bc                                       ; $5ffa: $09
	xor $27                                          ; $5ffb: $ee $27
	ld c, e                                          ; $5ffd: $4b
	db $ec                                           ; $5ffe: $ec
	reti                                             ; $5fff: $d9


	xor h                                            ; $6000: $ac
	di                                               ; $6001: $f3
	ld sp, hl                                        ; $6002: $f9
	ldh a, [$c9]                                     ; $6003: $f0 $c9
	ld b, a                                          ; $6005: $47
	ld c, d                                          ; $6006: $4a
	dec sp                                           ; $6007: $3b
	inc a                                            ; $6008: $3c
	ld d, l                                          ; $6009: $55
	ld a, [hl-]                                      ; $600a: $3a
	ld c, [hl]                                       ; $600b: $4e
	ld l, [hl]                                       ; $600c: $6e
	add b                                            ; $600d: $80
	ld d, e                                          ; $600e: $53
	inc de                                           ; $600f: $13
	jr c, jr_090_604a                                ; $6010: $38 $38

	ld a, [hl-]                                      ; $6012: $3a
	ld e, c                                          ; $6013: $59
	and b                                            ; $6014: $a0
	cpl                                              ; $6015: $2f
	adc b                                            ; $6016: $88
	sub c                                            ; $6017: $91
	inc [hl]                                         ; $6018: $34
	db $ed                                           ; $6019: $ed
	ld c, c                                          ; $601a: $49
	ld b, h                                          ; $601b: $44
	dec sp                                           ; $601c: $3b
	dec a                                            ; $601d: $3d
	ld c, h                                          ; $601e: $4c
	add hl, bc                                       ; $601f: $09
	xor $27                                          ; $6020: $ee $27
	ld c, a                                          ; $6022: $4f
	inc [hl]                                         ; $6023: $34
	db $ed                                           ; $6024: $ed
	adc l                                            ; $6025: $8d
	ld h, d                                          ; $6026: $62
	inc de                                           ; $6027: $13
	di                                               ; $6028: $f3
	ld l, d                                          ; $6029: $6a
	ld h, c                                          ; $602a: $61
	ldh a, [$3e]                                     ; $602b: $f0 $3e
	ldh a, [rSB]                                     ; $602d: $f0 $01
	ccf                                              ; $602f: $3f
	ld l, h                                          ; $6030: $6c
	dec a                                            ; $6031: $3d
	jr c, jr_090_606e                                ; $6032: $38 $3a

	ld e, c                                          ; $6034: $59
	and b                                            ; $6035: $a0
	add e                                            ; $6036: $83
	ldh a, [$c2]                                     ; $6037: $f0 $c2
	ld e, c                                          ; $6039: $59

jr_090_603a:
	ld l, c                                          ; $603a: $69
	inc [hl]                                         ; $603b: $34
	add e                                            ; $603c: $83
	ldh a, [$c2]                                     ; $603d: $f0 $c2
	ld e, c                                          ; $603f: $59
	ld l, c                                          ; $6040: $69
	inc de                                           ; $6041: $13
	sub b                                            ; $6042: $90
	ld a, $38                                        ; $6043: $3e $38
	ld a, [hl-]                                      ; $6045: $3a
	ld e, c                                          ; $6046: $59
	and b                                            ; $6047: $a0
	xor $27                                          ; $6048: $ee $27

jr_090_604a:
	ld c, e                                          ; $604a: $4b
	xor h                                            ; $604b: $ac
	ldh a, [c]                                       ; $604c: $f2
	ld d, e                                          ; $604d: $53
	ld b, d                                          ; $604e: $42
	ldh a, [$3e]                                     ; $604f: $f0 $3e
	ld c, d                                          ; $6051: $4a
	ld c, e                                          ; $6052: $4b
	ldh a, [rAUD1LOW]                                ; $6053: $f0 $13
	ldh a, [$ae]                                     ; $6055: $f0 $ae
	ld b, h                                          ; $6057: $44
	ld b, l                                          ; $6058: $45
	ld e, c                                          ; $6059: $59
	and b                                            ; $605a: $a0
	cpl                                              ; $605b: $2f
	ldh a, [c]                                       ; $605c: $f2
	ld d, e                                          ; $605d: $53
	ld b, d                                          ; $605e: $42
	ldh a, [$3e]                                     ; $605f: $f0 $3e
	ld a, [hl-]                                      ; $6061: $3a
	ld b, c                                          ; $6062: $41
	ccf                                              ; $6063: $3f
	inc [hl]                                         ; $6064: $34
	ldh a, [$d8]                                     ; $6065: $f0 $d8
	ld e, h                                          ; $6067: $5c
	ld h, [hl]                                       ; $6068: $66
	add hl, sp                                       ; $6069: $39
	ld b, h                                          ; $606a: $44
	ld b, l                                          ; $606b: $45
	ld c, h                                          ; $606c: $4c
	add hl, bc                                       ; $606d: $09

jr_090_606e:
	pop af                                           ; $606e: $f1
	sub a                                            ; $606f: $97
	pop af                                           ; $6070: $f1
	sub a                                            ; $6071: $97
	ld e, c                                          ; $6072: $59
	ld h, l                                          ; $6073: $65
	xor b                                            ; $6074: $a8
	ldh a, [c]                                       ; $6075: $f2
	ld d, e                                          ; $6076: $53
	ld b, d                                          ; $6077: $42
	ldh a, [$3e]                                     ; $6078: $f0 $3e
	ld c, d                                          ; $607a: $4a
	ld c, e                                          ; $607b: $4b
	ld d, h                                          ; $607c: $54
	ld b, d                                          ; $607d: $42
	xor $27                                          ; $607e: $ee $27
	ldh a, [hDisp0_OBP1]                                     ; $6080: $f0 $87
	ld b, a                                          ; $6082: $47
	ld c, e                                          ; $6083: $4b
	inc de                                           ; $6084: $13
	inc a                                            ; $6085: $3c
	ld a, [hl-]                                      ; $6086: $3a
	ld h, e                                          ; $6087: $63
	ld a, [hl-]                                      ; $6088: $3a
	jr c, jr_090_60d5                                ; $6089: $38 $4a

	ld a, $66                                        ; $608b: $3e $66
	and b                                            ; $608d: $a0
	cpl                                              ; $608e: $2f
	halt                                             ; $608f: $76
	ld b, d                                          ; $6090: $42
	ldh a, [$38]                                     ; $6091: $f0 $38
	ld d, e                                          ; $6093: $53
	ldh a, [rAUD1LOW]                                ; $6094: $f0 $13
	ldh a, [$ae]                                     ; $6096: $f0 $ae
	ld b, h                                          ; $6098: $44
	adc l                                            ; $6099: $8d
	add hl, bc                                       ; $609a: $09
	pop af                                           ; $609b: $f1
	ld a, [de]                                       ; $609c: $1a
	pop af                                           ; $609d: $f1
	inc c                                            ; $609e: $0c
	xor h                                            ; $609f: $ac
	xor $27                                          ; $60a0: $ee $27
	ld b, d                                          ; $60a2: $42
	ldh a, [$38]                                     ; $60a3: $f0 $38
	ld d, e                                          ; $60a5: $53
	ldh a, [rAUD1LOW]                                ; $60a6: $f0 $13
	ldh a, [$ae]                                     ; $60a8: $f0 $ae
	ld b, h                                          ; $60aa: $44
	ld c, a                                          ; $60ab: $4f
	ld b, c                                          ; $60ac: $41
	and b                                            ; $60ad: $a0
	cpl                                              ; $60ae: $2f
	halt                                             ; $60af: $76
	ld b, a                                          ; $60b0: $47
	db $ec                                           ; $60b1: $ec
	db $ed                                           ; $60b2: $ed
	ld d, l                                          ; $60b3: $55
	ld c, l                                          ; $60b4: $4d
	ld b, l                                          ; $60b5: $45
	add hl, bc                                       ; $60b6: $09
	xor $27                                          ; $60b7: $ee $27
	ld b, d                                          ; $60b9: $42
	di                                               ; $60ba: $f3
	inc hl                                           ; $60bb: $23
	ldh a, [hDisp0_LCDC]                                     ; $60bc: $f0 $82
	pop af                                           ; $60be: $f1
	sub l                                            ; $60bf: $95
	ld c, e                                          ; $60c0: $4b
	xor h                                            ; $60c1: $ac
	ret                                              ; $60c2: $c9


	ldh a, [rAUD1ENV]                                ; $60c3: $f0 $12
	jr c, jr_090_6111                                ; $60c5: $38 $4a

	ld d, c                                          ; $60c7: $51
	ld b, l                                          ; $60c8: $45
	and b                                            ; $60c9: $a0
	ld b, [hl]                                       ; $60ca: $46
	ld e, c                                          ; $60cb: $59
	dec sp                                           ; $60cc: $3b
	inc [hl]                                         ; $60cd: $34
	ld d, h                                          ; $60ce: $54
	ld d, h                                          ; $60cf: $54
	ldh a, [c]                                       ; $60d0: $f2
	ld d, e                                          ; $60d1: $53
	ld d, e                                          ; $60d2: $53
	inc de                                           ; $60d3: $13
	ldh a, [c]                                       ; $60d4: $f2

jr_090_60d5:
	xor c                                            ; $60d5: $a9
	ld e, l                                          ; $60d6: $5d
	ccf                                              ; $60d7: $3f
	ld c, [hl]                                       ; $60d8: $4e
	dec [hl]                                         ; $60d9: $35
	pop af                                           ; $60da: $f1
	ld [hl], $41                                     ; $60db: $36 $41
	ld b, h                                          ; $60dd: $44
	ld d, b                                          ; $60de: $50
	add a                                            ; $60df: $87
	ldh a, [$5d]                                     ; $60e0: $f0 $5d
	ld b, h                                          ; $60e2: $44
	ld c, h                                          ; $60e3: $4c
	ld e, c                                          ; $60e4: $59
	and b                                            ; $60e5: $a0
	cpl                                              ; $60e6: $2f
	add sp, -$4a                                     ; $60e7: $e8 $b6
	add hl, bc                                       ; $60e9: $09
	xor $27                                          ; $60ea: $ee $27
	inc [hl]                                         ; $60ec: $34
	add hl, sp                                       ; $60ed: $39
	ld c, l                                          ; $60ee: $4d
	ld a, $38                                        ; $60ef: $3e $38
	ld e, c                                          ; $60f1: $59
	and b                                            ; $60f2: $a0
	cpl                                              ; $60f3: $2f
	pop af                                           ; $60f4: $f1
	ld [hl], $41                                     ; $60f5: $36 $41
	ld e, e                                          ; $60f7: $5b
	ld d, [hl]                                       ; $60f8: $56
	add hl, sp                                       ; $60f9: $39
	dec [hl]                                         ; $60fa: $35
	ld e, h                                          ; $60fb: $5c
	dec sp                                           ; $60fc: $3b
	ld c, c                                          ; $60fd: $49
	add hl, bc                                       ; $60fe: $09
	xor $27                                          ; $60ff: $ee $27
	inc [hl]                                         ; $6101: $34
	pop af                                           ; $6102: $f1
	ld [hl], $7b                                     ; $6103: $36 $7b
	ld a, [hl-]                                      ; $6105: $3a
	jr c, jr_090_6157                                ; $6106: $38 $4f

	ld b, c                                          ; $6108: $41
	and b                                            ; $6109: $a0
	cpl                                              ; $610a: $2f
	db $ed                                           ; $610b: $ed
	and b                                            ; $610c: $a0
	ld e, [hl]                                       ; $610d: $5e
	ldh a, [rHDMA1]                                  ; $610e: $f0 $51
	dec sp                                           ; $6110: $3b

jr_090_6111:
	ccf                                              ; $6111: $3f
	ld e, h                                          ; $6112: $5c
	ccf                                              ; $6113: $3f
	ld a, [hl-]                                      ; $6114: $3a
	jr c, jr_090_615c                                ; $6115: $38 $45

	add hl, bc                                       ; $6117: $09
	xor $27                                          ; $6118: $ee $27
	ld c, e                                          ; $611a: $4b
	pop af                                           ; $611b: $f1
	ld l, c                                          ; $611c: $69
	ld a, a                                          ; $611d: $7f
	ld b, h                                          ; $611e: $44
	ld b, l                                          ; $611f: $45
	and b                                            ; $6120: $a0
	add e                                            ; $6121: $83
	ldh a, [$2f]                                     ; $6122: $f0 $2f
	ld e, c                                          ; $6124: $59
	ld b, h                                          ; $6125: $44
	inc [hl]                                         ; $6126: $34
	add e                                            ; $6127: $83
	ldh a, [$2f]                                     ; $6128: $f0 $2f
	ld e, c                                          ; $612a: $59
	ld b, h                                          ; $612b: $44
	xor b                                            ; $612c: $a8
	ldh a, [$0a]                                     ; $612d: $f0 $0a
	ld d, l                                          ; $612f: $55
	ld d, c                                          ; $6130: $51
	ldh a, [$8c]                                     ; $6131: $f0 $8c
	ld d, a                                          ; $6133: $57
	ld d, d                                          ; $6134: $52
	ld a, $66                                        ; $6135: $3e $66
	add hl, sp                                       ; $6137: $39
	and b                                            ; $6138: $a0
	cpl                                              ; $6139: $2f
	ld b, e                                          ; $613a: $43
	ld b, b                                          ; $613b: $40
	add hl, sp                                       ; $613c: $39
	ld a, $45                                        ; $613d: $3e $45
	add hl, sp                                       ; $613f: $39
	and b                                            ; $6140: $a0
	add e                                            ; $6141: $83
	ldh a, [$2f]                                     ; $6142: $f0 $2f
	ld e, c                                          ; $6144: $59
	ld b, h                                          ; $6145: $44
	inc [hl]                                         ; $6146: $34
	add e                                            ; $6147: $83
	ldh a, [$2f]                                     ; $6148: $f0 $2f
	ld e, c                                          ; $614a: $59
	ld b, h                                          ; $614b: $44
	xor b                                            ; $614c: $a8
	ldh a, [$0a]                                     ; $614d: $f0 $0a
	ld d, l                                          ; $614f: $55
	ld d, c                                          ; $6150: $51
	ldh a, [$8c]                                     ; $6151: $f0 $8c
	ld e, a                                          ; $6153: $5f
	ld e, c                                          ; $6154: $59
	and b                                            ; $6155: $a0
	add e                                            ; $6156: $83

jr_090_6157:
	ldh a, [$2f]                                     ; $6157: $f0 $2f
	ld e, c                                          ; $6159: $59
	ld c, e                                          ; $615a: $4b
	ld e, d                                          ; $615b: $5a

jr_090_615c:
	ld b, d                                          ; $615c: $42
	sbc l                                            ; $615d: $9d
	ld d, b                                          ; $615e: $50
	jr c, jr_090_6174                                ; $615f: $38 $13

	pop af                                           ; $6161: $f1
	ld e, e                                          ; $6162: $5b
	ld c, l                                          ; $6163: $4d
	ld c, [hl]                                       ; $6164: $4e
	ld b, d                                          ; $6165: $42
	inc a                                            ; $6166: $3c
	ld a, [hl-]                                      ; $6167: $3a
	ld e, c                                          ; $6168: $59
	and c                                            ; $6169: $a1
	cpl                                              ; $616a: $2f
	add sp, $64                                      ; $616b: $e8 $64
	add hl, bc                                       ; $616d: $09
	ld b, l                                          ; $616e: $45
	ld e, c                                          ; $616f: $59
	ld a, $ac                                        ; $6170: $3e $ac
	ld b, h                                          ; $6172: $44
	dec sp                                           ; $6173: $3b

jr_090_6174:
	dec a                                            ; $6174: $3d
	ld d, b                                          ; $6175: $50
	xor $27                                          ; $6176: $ee $27
	ld c, c                                          ; $6178: $49
	xor $06                                          ; $6179: $ee $06
	ld b, a                                          ; $617b: $47
	inc de                                           ; $617c: $13
	ld [$44ef], a                                    ; $617d: $ea $ef $44
	ld c, h                                          ; $6180: $4c
	and b                                            ; $6181: $a0
	cpl                                              ; $6182: $2f
	db $eb                                           ; $6183: $eb
	sub e                                            ; $6184: $93
	xor h                                            ; $6185: $ac
	add sp, -$6e                                     ; $6186: $e8 $92
	xor b                                            ; $6188: $a8
	db $eb                                           ; $6189: $eb
	sub h                                            ; $618a: $94
	pop af                                           ; $618b: $f1
	ld e, e                                          ; $618c: $5b
	ld c, l                                          ; $618d: $4d
	ld a, [hl-]                                      ; $618e: $3a
	jr c, jr_090_61d2                                ; $618f: $38 $41

	ld b, h                                          ; $6191: $44
	and e                                            ; $6192: $a3
	cpl                                              ; $6193: $2f
	pop af                                           ; $6194: $f1
	daa                                              ; $6195: $27
	ldh a, [rP1]                                     ; $6196: $f0 $00
	ld a, [hl-]                                      ; $6198: $3a
	ld d, b                                          ; $6199: $50
	ldh a, [$67]                                     ; $619a: $f0 $67
	ldh a, [$9f]                                     ; $619c: $f0 $9f
	ld b, [hl]                                       ; $619e: $46
	ld c, [hl]                                       ; $619f: $4e
	ld b, c                                          ; $61a0: $41
	ld b, h                                          ; $61a1: $44
	ld e, l                                          ; $61a2: $5d
	ld e, d                                          ; $61a3: $5a
	ld a, [hl-]                                      ; $61a4: $3a
	add hl, bc                                       ; $61a5: $09
	pop af                                           ; $61a6: $f1
	ld b, b                                          ; $61a7: $40
	ld e, c                                          ; $61a8: $59
	ld [hl], e                                       ; $61a9: $73
	xor h                                            ; $61aa: $ac
	db $eb                                           ; $61ab: $eb
	inc [hl]                                         ; $61ac: $34
	ld a, [hl-]                                      ; $61ad: $3a
	ld e, c                                          ; $61ae: $59
	xor b                                            ; $61af: $a8
	ld e, e                                          ; $61b0: $5b
	ld d, [hl]                                       ; $61b1: $56
	ld b, [hl]                                       ; $61b2: $46
	xor h                                            ; $61b3: $ac
	ld [$47f0], a                                    ; $61b4: $ea $f0 $47
	ld h, a                                          ; $61b7: $67
	ld d, h                                          ; $61b8: $54
	add hl, sp                                       ; $61b9: $39
	and b                                            ; $61ba: $a0
	cpl                                              ; $61bb: $2f
	ld c, c                                          ; $61bc: $49
	ld d, a                                          ; $61bd: $57
	ld b, [hl]                                       ; $61be: $46
	ld e, [hl]                                       ; $61bf: $5e
	sbc h                                            ; $61c0: $9c
	pop af                                           ; $61c1: $f1
	ld e, e                                          ; $61c2: $5b
	ld c, l                                          ; $61c3: $4d
	ld c, [hl]                                       ; $61c4: $4e
	ld b, l                                          ; $61c5: $45
	add hl, bc                                       ; $61c6: $09
	or h                                             ; $61c7: $b4
	xor h                                            ; $61c8: $ac
	ld [$47f1], a                                    ; $61c9: $ea $f1 $47
	call $eea0                                       ; $61cc: $cd $a0 $ee
	daa                                              ; $61cf: $27
	ld b, d                                          ; $61d0: $42
	ld d, h                                          ; $61d1: $54

jr_090_61d2:
	ld b, d                                          ; $61d2: $42
	ld [$13e2], a                                    ; $61d3: $ea $e2 $13
	db $eb                                           ; $61d6: $eb
	ret c                                            ; $61d7: $d8

	ld c, d                                          ; $61d8: $4a
	ld a, $66                                        ; $61d9: $3e $66
	add hl, sp                                       ; $61db: $39
	and b                                            ; $61dc: $a0
	cpl                                              ; $61dd: $2f
	jp hl                                            ; $61de: $e9


	inc bc                                           ; $61df: $03
	add hl, bc                                       ; $61e0: $09
	pop af                                           ; $61e1: $f1
	ld b, b                                          ; $61e2: $40
	pop af                                           ; $61e3: $f1
	sub a                                            ; $61e4: $97
	pop af                                           ; $61e5: $f1
	sub a                                            ; $61e6: $97
	xor b                                            ; $61e7: $a8
	xor $27                                          ; $61e8: $ee $27
	inc [hl]                                         ; $61ea: $34
	ccf                                              ; $61eb: $3f
	ld c, l                                          ; $61ec: $4d
	ld h, c                                          ; $61ed: $61
	ld d, [hl]                                       ; $61ee: $56
	add hl, sp                                       ; $61ef: $39
	and b                                            ; $61f0: $a0
	cpl                                              ; $61f1: $2f
	ld [$0964], a                                    ; $61f2: $ea $64 $09
	pop af                                           ; $61f5: $f1
	ld b, b                                          ; $61f6: $40
	ld e, c                                          ; $61f7: $59
	ld h, l                                          ; $61f8: $65
	xor b                                            ; $61f9: $a8
	ldh a, [$d8]                                     ; $61fa: $f0 $d8
	ld e, d                                          ; $61fc: $5a
	jr c, jr_090_6244                                ; $61fd: $38 $45

	ld e, c                                          ; $61ff: $59
	and b                                            ; $6200: $a0
	cpl                                              ; $6201: $2f
	add sp, -$49                                     ; $6202: $e8 $b7
	add hl, bc                                       ; $6204: $09
	add hl, sp                                       ; $6205: $39
	ld e, c                                          ; $6206: $59
	ld b, c                                          ; $6207: $41
	xor h                                            ; $6208: $ac
	add a                                            ; $6209: $87
	add h                                            ; $620a: $84
	dec sp                                           ; $620b: $3b
	pop af                                           ; $620c: $f1
	rla                                              ; $620d: $17
	ld d, l                                          ; $620e: $55
	inc de                                           ; $620f: $13
	ld a, [hl-]                                      ; $6210: $3a
	inc a                                            ; $6211: $3c
	dec sp                                           ; $6212: $3b
	dec a                                            ; $6213: $3d
	inc a                                            ; $6214: $3c
	ld a, [hl-]                                      ; $6215: $3a
	ld [hl], h                                       ; $6216: $74
	and b                                            ; $6217: $a0
	cpl                                              ; $6218: $2f
	ld b, e                                          ; $6219: $43
	db $ed                                           ; $621a: $ed
	ld d, a                                          ; $621b: $57
	xor h                                            ; $621c: $ac
	ret                                              ; $621d: $c9


	pop af                                           ; $621e: $f1
	ld a, a                                          ; $621f: $7f
	ld d, e                                          ; $6220: $53
	ldh a, [$9c]                                     ; $6221: $f0 $9c
	jr c, jr_090_6271                                ; $6223: $38 $4c

	xor b                                            ; $6225: $a8
	add a                                            ; $6226: $87
	ldh a, [$5b]                                     ; $6227: $f0 $5b
	ldh a, [$5e]                                     ; $6229: $f0 $5e
	inc a                                            ; $622b: $3c
	ld a, [hl-]                                      ; $622c: $3a
	and c                                            ; $622d: $a1
	ld b, b                                          ; $622e: $40
	ld b, c                                          ; $622f: $41
	ld a, [hl-]                                      ; $6230: $3a
	ld b, d                                          ; $6231: $42
	pop af                                           ; $6232: $f1
	ld l, c                                          ; $6233: $69
	ld a, a                                          ; $6234: $7f
	ld c, d                                          ; $6235: $4a
	ld d, c                                          ; $6236: $51
	ld b, l                                          ; $6237: $45
	xor b                                            ; $6238: $a8
	ldh a, [$0a]                                     ; $6239: $f0 $0a
	ld d, l                                          ; $623b: $55
	inc [hl]                                         ; $623c: $34
	ld [$45a9], a                                    ; $623d: $ea $a9 $45
	and b                                            ; $6240: $a0
	cpl                                              ; $6241: $2f
	ld b, e                                          ; $6242: $43
	add hl, sp                                       ; $6243: $39

jr_090_6244:
	inc [hl]                                         ; $6244: $34
	xor $1f                                          ; $6245: $ee $1f
	dec [hl]                                         ; $6247: $35
	rla                                              ; $6248: $17
	ld [hl-], a                                      ; $6249: $32
	db $ed                                           ; $624a: $ed
	dec c                                            ; $624b: $0d
	ld c, c                                          ; $624c: $49
	inc a                                            ; $624d: $3c
	inc de                                           ; $624e: $13
	pop af                                           ; $624f: $f1
	jr nc, @+$54                                     ; $6250: $30 $52

	ld d, b                                          ; $6252: $50
	ld a, [hl-]                                      ; $6253: $3a
	ld e, h                                          ; $6254: $5c
	ld d, [hl]                                       ; $6255: $56
	db $ec                                           ; $6256: $ec
	ld [$a348], sp                                   ; $6257: $08 $48 $a3
	ldh a, [$08]                                     ; $625a: $f0 $08
	ld d, b                                          ; $625c: $50
	inc [hl]                                         ; $625d: $34
	ldh a, [$0a]                                     ; $625e: $f0 $0a
	ld d, l                                          ; $6260: $55
	ld a, $3a                                        ; $6261: $3e $3a
	jr c, jr_090_62ae                                ; $6263: $38 $49

	xor b                                            ; $6265: $a8
	di                                               ; $6266: $f3
	db $e3                                           ; $6267: $e3
	jr c, jr_090_62a9                                ; $6268: $38 $3f

	jr c, jr_090_62a7                                ; $626a: $38 $3b

	ld h, c                                          ; $626c: $61
	ld d, [hl]                                       ; $626d: $56
	jr c, jr_090_62c2                                ; $626e: $38 $52

	ld d, c                                          ; $6270: $51

jr_090_6271:
	ld b, l                                          ; $6271: $45
	and b                                            ; $6272: $a0
	cpl                                              ; $6273: $2f
	ld b, e                                          ; $6274: $43
	jp hl                                            ; $6275: $e9


	pop bc                                           ; $6276: $c1
	xor b                                            ; $6277: $a8
	db $eb                                           ; $6278: $eb
	db $fc                                           ; $6279: $fc
	and b                                            ; $627a: $a0
	cpl                                              ; $627b: $2f
	ld b, e                                          ; $627c: $43
	ld b, [hl]                                       ; $627d: $46
	dec sp                                           ; $627e: $3b
	inc [hl]                                         ; $627f: $34
	db $ed                                           ; $6280: $ed
	dec c                                            ; $6281: $0d
	ld d, e                                          ; $6282: $53
	inc de                                           ; $6283: $13
	pop af                                           ; $6284: $f1
	jr nc, jr_090_62d9                               ; $6285: $30 $52

	dec sp                                           ; $6287: $3b
	dec a                                            ; $6288: $3d
	and b                                            ; $6289: $a0
	db $ed                                           ; $628a: $ed
	dec c                                            ; $628b: $0d
	ld d, e                                          ; $628c: $53
	inc de                                           ; $628d: $13
	pop af                                           ; $628e: $f1
	jr nc, jr_090_62e3                               ; $628f: $30 $52

	dec sp                                           ; $6291: $3b
	ld h, c                                          ; $6292: $61
	ld d, [hl]                                       ; $6293: $56
	dec sp                                           ; $6294: $3b
	dec a                                            ; $6295: $3d
	ld c, b                                          ; $6296: $48
	and b                                            ; $6297: $a0
	cpl                                              ; $6298: $2f
	ld b, e                                          ; $6299: $43
	ldh a, [$b5]                                     ; $629a: $f0 $b5
	inc [hl]                                         ; $629c: $34
	db $eb                                           ; $629d: $eb
	db $fc                                           ; $629e: $fc
	xor b                                            ; $629f: $a8
	add a                                            ; $62a0: $87
	ldh a, [$5b]                                     ; $62a1: $f0 $5b
	ldh a, [$5e]                                     ; $62a3: $f0 $5e
	ld b, h                                          ; $62a5: $44
	inc a                                            ; $62a6: $3c

jr_090_62a7:
	ld d, b                                          ; $62a7: $50
	ld c, h                                          ; $62a8: $4c

jr_090_62a9:
	and b                                            ; $62a9: $a0
	ldh a, [$8e]                                     ; $62aa: $f0 $8e
	pop af                                           ; $62ac: $f1
	inc sp                                           ; $62ad: $33

jr_090_62ae:
	ld e, c                                          ; $62ae: $59
	ld h, l                                          ; $62af: $65
	xor b                                            ; $62b0: $a8
	xor $27                                          ; $62b1: $ee $27
	dec a                                            ; $62b3: $3d
	ld h, c                                          ; $62b4: $61
	xor h                                            ; $62b5: $ac
	ldh a, [c]                                       ; $62b6: $f2
	ld a, d                                          ; $62b7: $7a
	ld b, c                                          ; $62b8: $41
	ld e, e                                          ; $62b9: $5b
	ld d, [hl]                                       ; $62ba: $56
	add hl, sp                                       ; $62bb: $39
	ld b, d                                          ; $62bc: $42
	inc a                                            ; $62bd: $3c
	ld a, [hl-]                                      ; $62be: $3a
	and c                                            ; $62bf: $a1
	cpl                                              ; $62c0: $2f
	ld b, e                                          ; $62c1: $43

jr_090_62c2:
	ld b, b                                          ; $62c2: $40
	ld b, c                                          ; $62c3: $41
	ld a, [hl-]                                      ; $62c4: $3a
	inc [hl]                                         ; $62c5: $34
	ld h, h                                          ; $62c6: $64
	ld h, h                                          ; $62c7: $64
	ldh a, [rSB]                                     ; $62c8: $f0 $01
	ld e, b                                          ; $62ca: $58
	ld a, [hl-]                                      ; $62cb: $3a
	dec [hl]                                         ; $62cc: $35
	rla                                              ; $62cd: $17
	add a                                            ; $62ce: $87
	ldh a, [$5b]                                     ; $62cf: $f0 $5b
	ldh a, [$5e]                                     ; $62d1: $f0 $5e
	ld b, h                                          ; $62d3: $44
	ld b, l                                          ; $62d4: $45
	xor b                                            ; $62d5: $a8
	ldh a, [c]                                       ; $62d6: $f2
	adc c                                            ; $62d7: $89
	inc a                                            ; $62d8: $3c

jr_090_62d9:
	ld a, [hl-]                                      ; $62d9: $3a
	jr c, jr_090_6326                                ; $62da: $38 $4a

	and b                                            ; $62dc: $a0
	ld c, a                                          ; $62dd: $4f
	add hl, sp                                       ; $62de: $39
	inc [hl]                                         ; $62df: $34
	xor $05                                          ; $62e0: $ee $05
	ld b, h                                          ; $62e2: $44

jr_090_62e3:
	xor b                                            ; $62e3: $a8
	ld e, h                                          ; $62e4: $5c
	dec sp                                           ; $62e5: $3b
	ld c, c                                          ; $62e6: $49
	ldh a, [c]                                       ; $62e7: $f2
	ld a, d                                          ; $62e8: $7a
	ld b, c                                          ; $62e9: $41
	ld e, e                                          ; $62ea: $5b
	ld d, [hl]                                       ; $62eb: $56
	xor $1f                                          ; $62ec: $ee $1f
	ld b, h                                          ; $62ee: $44
	xor b                                            ; $62ef: $a8
	pop af                                           ; $62f0: $f1
	ld b, b                                          ; $62f1: $40
	ld e, c                                          ; $62f2: $59
	ld h, l                                          ; $62f3: $65
	inc [hl]                                         ; $62f4: $34
	pop af                                           ; $62f5: $f1
	ld b, b                                          ; $62f6: $40
	ld e, c                                          ; $62f7: $59
	ld h, l                                          ; $62f8: $65
	and b                                            ; $62f9: $a0
	cpl                                              ; $62fa: $2f
	ld b, e                                          ; $62fb: $43
	xor $10                                          ; $62fc: $ee $10
	dec [hl]                                         ; $62fe: $35
	rla                                              ; $62ff: $17
	ld [hl-], a                                      ; $6300: $32
	ldh a, [rOBP0]                                   ; $6301: $f0 $48
	ld e, h                                          ; $6303: $5c
	ld b, h                                          ; $6304: $44
	ld d, c                                          ; $6305: $51
	ld d, d                                          ; $6306: $52
	ld c, d                                          ; $6307: $4a

jr_090_6308:
	xor h                                            ; $6308: $ac
	ldh a, [$08]                                     ; $6309: $f0 $08
	dec sp                                           ; $630b: $3b
	ld c, c                                          ; $630c: $49
	ld d, l                                          ; $630d: $55
	ld a, $3c                                        ; $630e: $3e $3c
	ld a, [hl-]                                      ; $6310: $3a
	jr c, jr_090_634d                                ; $6311: $38 $3a

	ld c, b                                          ; $6313: $48
	and e                                            ; $6314: $a3
	ldh a, [c]                                       ; $6315: $f2
	ld a, d                                          ; $6316: $7a
	pop af                                           ; $6317: $f1
	ld a, b                                          ; $6318: $78
	sbc [hl]                                         ; $6319: $9e
	ld b, a                                          ; $631a: $47
	inc [hl]                                         ; $631b: $34
	ld l, l                                          ; $631c: $6d
	add b                                            ; $631d: $80
	inc de                                           ; $631e: $13
	ld h, h                                          ; $631f: $64
	ldh a, [$c8]                                     ; $6320: $f0 $c8
	jr c, jr_090_6377                                ; $6322: $38 $53

	ld b, [hl]                                       ; $6324: $46
	ld c, [hl]                                       ; $6325: $4e

jr_090_6326:
	ld b, c                                          ; $6326: $41
	ld c, d                                          ; $6327: $4a
	ld d, c                                          ; $6328: $51
	ld e, l                                          ; $6329: $5d
	ld e, d                                          ; $632a: $5a
	ld c, b                                          ; $632b: $48
	and b                                            ; $632c: $a0
	cpl                                              ; $632d: $2f

jr_090_632e:
	ld b, e                                          ; $632e: $43
	ld l, e                                          ; $632f: $6b
	xor c                                            ; $6330: $a9
	add d                                            ; $6331: $82
	dec sp                                           ; $6332: $3b
	ccf                                              ; $6333: $3f
	ld [hl], b                                       ; $6334: $70
	ld d, b                                          ; $6335: $50
	ld b, c                                          ; $6336: $41
	xor b                                            ; $6337: $a8
	ld [hl-], a                                      ; $6338: $32
	db $ec                                           ; $6339: $ec
	jr nz, jr_090_632e                               ; $633a: $20 $f2

	ld a, d                                          ; $633c: $7a
	ld a, [hl-]                                      ; $633d: $3a
	ld a, [hl-]                                      ; $633e: $3a
	jr c, jr_090_637c                                ; $633f: $38 $3b

	ccf                                              ; $6341: $3f
	ld c, b                                          ; $6342: $48
	and e                                            ; $6343: $a3
	xor $27                                          ; $6344: $ee $27
	ld b, d                                          ; $6346: $42
	sbc d                                            ; $6347: $9a
	ld h, d                                          ; $6348: $62
	add a                                            ; $6349: $87
	adc e                                            ; $634a: $8b
	ld e, h                                          ; $634b: $5c
	ld c, b                                          ; $634c: $48

jr_090_634d:
	and b                                            ; $634d: $a0
	cpl                                              ; $634e: $2f
	ld h, $f0                                        ; $634f: $26 $f0
	and [hl]                                         ; $6351: $a6
	ldh a, [rDIV]                                    ; $6352: $f0 $04
	ld h, l                                          ; $6354: $65
	dec h                                            ; $6355: $25
	add hl, bc                                       ; $6356: $09
	ld b, [hl]                                       ; $6357: $46
	dec sp                                           ; $6358: $3b
	inc [hl]                                         ; $6359: $34
	ldh a, [rOBP0]                                   ; $635a: $f0 $48
	jr c, @+$3f                                      ; $635c: $38 $3d

	xor b                                            ; $635e: $a8
	pop af                                           ; $635f: $f1
	jp hl                                            ; $6360: $e9


	inc a                                            ; $6361: $3c
	dec sp                                           ; $6362: $3b
	dec a                                            ; $6363: $3d
	ld l, h                                          ; $6364: $6c
	dec a                                            ; $6365: $3d
	jr c, jr_090_6308                                ; $6366: $38 $a0

	cpl                                              ; $6368: $2f
	ld b, e                                          ; $6369: $43
	ldh a, [$08]                                     ; $636a: $f0 $08
	ld d, b                                          ; $636c: $50
	inc [hl]                                         ; $636d: $34
	ld b, h                                          ; $636e: $44
	inc a                                            ; $636f: $3c
	ld d, b                                          ; $6370: $50
	add a                                            ; $6371: $87
	ldh a, [$5b]                                     ; $6372: $f0 $5b
	ldh a, [$5e]                                     ; $6374: $f0 $5e
	dec sp                                           ; $6376: $3b

jr_090_6377:
	ccf                                              ; $6377: $3f
	inc de                                           ; $6378: $13
	add d                                            ; $6379: $82
	dec sp                                           ; $637a: $3b
	dec a                                            ; $637b: $3d

jr_090_637c:
	ld b, h                                          ; $637c: $44
	ld e, a                                          ; $637d: $5f
	add hl, sp                                       ; $637e: $39
	xor b                                            ; $637f: $a8
	ld d, h                                          ; $6380: $54
	ld b, c                                          ; $6381: $41
	ld a, [hl-]                                      ; $6382: $3a
	sbc d                                            ; $6383: $9a
	inc [hl]                                         ; $6384: $34
	ld a, [hl]                                       ; $6385: $7e
	ld d, l                                          ; $6386: $55
	ld b, [hl]                                       ; $6387: $46
	ld c, [hl]                                       ; $6388: $4e
	ld b, c                                          ; $6389: $41
	ld b, h                                          ; $638a: $44
	ld b, l                                          ; $638b: $45
	and b                                            ; $638c: $a0
	xor $1f                                          ; $638d: $ee $1f
	xor b                                            ; $638f: $a8
	db $eb                                           ; $6390: $eb
	ccf                                              ; $6391: $3f
	xor b                                            ; $6392: $a8
	pop af                                           ; $6393: $f1
	or c                                             ; $6394: $b1
	ldh a, [c]                                       ; $6395: $f2
	ld [hl], l                                       ; $6396: $75
	inc a                                            ; $6397: $3c
	ld e, l                                          ; $6398: $5d
	ld d, d                                          ; $6399: $52
	ld a, $3d                                        ; $639a: $3e $3d
	and b                                            ; $639c: $a0
	cpl                                              ; $639d: $2f
	ld b, e                                          ; $639e: $43
	ldh a, [$34]                                     ; $639f: $f0 $34
	ld b, a                                          ; $63a1: $47
	inc [hl]                                         ; $63a2: $34
	jr c, jr_090_63dd                                ; $63a3: $38 $38

	ld b, l                                          ; $63a5: $45
	xor b                                            ; $63a6: $a8
	ld c, c                                          ; $63a7: $49
	ld d, h                                          ; $63a8: $54
	ld e, a                                          ; $63a9: $5f
	ld c, d                                          ; $63aa: $4a
	inc [hl]                                         ; $63ab: $34
	ld h, h                                          ; $63ac: $64
	ldh a, [$c8]                                     ; $63ad: $f0 $c8
	jr c, jr_090_63ec                                ; $63af: $38 $3b

	ccf                                              ; $63b1: $3f
	inc de                                           ; $63b2: $13
	ld l, l                                          ; $63b3: $6d
	ldh a, [$65]                                     ; $63b4: $f0 $65
	ld l, e                                          ; $63b6: $6b
	ld b, h                                          ; $63b7: $44
	dec sp                                           ; $63b8: $3b
	dec a                                            ; $63b9: $3d
	ld b, d                                          ; $63ba: $42
	and c                                            ; $63bb: $a1
	db $ed                                           ; $63bc: $ed
	ld d, a                                          ; $63bd: $57
	inc [hl]                                         ; $63be: $34
	ld c, a                                          ; $63bf: $4f
	add hl, sp                                       ; $63c0: $39
	jr c, jr_090_63fb                                ; $63c1: $38 $38

	ld b, d                                          ; $63c3: $42
	xor b                                            ; $63c4: $a8
	ld d, d                                          ; $63c5: $52
	dec a                                            ; $63c6: $3d
	inc [hl]                                         ; $63c7: $34
	ld l, d                                          ; $63c8: $6a
	ldh a, [$0d]                                     ; $63c9: $f0 $0d
	ld b, d                                          ; $63cb: $42
	inc de                                           ; $63cc: $13
	ldh a, [$c6]                                     ; $63cd: $f0 $c6
	ldh a, [rHDMA3]                                  ; $63cf: $f0 $53
	ld b, a                                          ; $63d1: $47
	ld a, $52                                        ; $63d2: $3e $52
	ld d, c                                          ; $63d4: $51
	and b                                            ; $63d5: $a0
	cpl                                              ; $63d6: $2f
	ld b, e                                          ; $63d7: $43
	ld b, b                                          ; $63d8: $40
	add hl, sp                                       ; $63d9: $39
	xor b                                            ; $63da: $a8
	ld b, b                                          ; $63db: $40
	ld c, l                                          ; $63dc: $4d

jr_090_63dd:
	ld a, [hl-]                                      ; $63dd: $3a
	ld d, b                                          ; $63de: $50
	inc [hl]                                         ; $63df: $34
	db $ec                                           ; $63e0: $ec
	ld [$5ba8], sp                                   ; $63e1: $08 $a8 $5b
	ld d, [hl]                                       ; $63e4: $56
	ld b, [hl]                                       ; $63e5: $46
	inc [hl]                                         ; $63e6: $34
	pop af                                           ; $63e7: $f1
	ld e, e                                          ; $63e8: $5b
	ld e, a                                          ; $63e9: $5f
	add hl, sp                                       ; $63ea: $39
	and b                                            ; $63eb: $a0

jr_090_63ec:
	xor $1f                                          ; $63ec: $ee $1f
	and b                                            ; $63ee: $a0
	add hl, bc                                       ; $63ef: $09
	db $ed                                           ; $63f0: $ed
	ld d, a                                          ; $63f1: $57
	inc de                                           ; $63f2: $13
	add sp, -$80                                     ; $63f3: $e8 $80
	xor b                                            ; $63f5: $a8
	ld b, b                                          ; $63f6: $40
	ld c, l                                          ; $63f7: $4d
	ld e, e                                          ; $63f8: $5b
	ld d, [hl]                                       ; $63f9: $56
	inc [hl]                                         ; $63fa: $34

jr_090_63fb:
	ld a, d                                          ; $63fb: $7a
	ld d, a                                          ; $63fc: $57
	ld d, d                                          ; $63fd: $52
	ld a, $66                                        ; $63fe: $3e $66
	and b                                            ; $6400: $a0
	cpl                                              ; $6401: $2f
	ld b, e                                          ; $6402: $43
	ld l, d                                          ; $6403: $6a
	ldh a, [$0d]                                     ; $6404: $f0 $0d
	ld c, e                                          ; $6406: $4b
	inc [hl]                                         ; $6407: $34
	halt                                             ; $6408: $76
	inc a                                            ; $6409: $3c
	ld d, b                                          ; $640a: $50
	inc de                                           ; $640b: $13
	ldh a, [$3b]                                     ; $640c: $f0 $3b
	dec sp                                           ; $640e: $3b
	ccf                                              ; $640f: $3f
	db $ec                                           ; $6410: $ec
	ld a, [bc]                                       ; $6411: $0a
	and c                                            ; $6412: $a1
	adc b                                            ; $6413: $88
	sub c                                            ; $6414: $91
	xor c                                            ; $6415: $a9
	xor $27                                          ; $6416: $ee $27
	inc [hl]                                         ; $6418: $34
	sbc c                                            ; $6419: $99
	dec sp                                           ; $641a: $3b
	ccf                                              ; $641b: $3f
	ld d, d                                          ; $641c: $52
	ld d, c                                          ; $641d: $51
	and b                                            ; $641e: $a0
	xor $1f                                          ; $641f: $ee $1f
	inc [hl]                                         ; $6421: $34
	jr c, jr_090_645c                                ; $6422: $38 $38

	ld b, l                                          ; $6424: $45
	xor b                                            ; $6425: $a8
	ld d, d                                          ; $6426: $52
	dec a                                            ; $6427: $3d
	ld l, d                                          ; $6428: $6a
	ldh a, [$0d]                                     ; $6429: $f0 $0d
	ld c, h                                          ; $642b: $4c
	and b                                            ; $642c: $a0
	cpl                                              ; $642d: $2f
	ld b, e                                          ; $642e: $43
	ld e, e                                          ; $642f: $5b
	ld d, [hl]                                       ; $6430: $56
	ld b, [hl]                                       ; $6431: $46
	inc [hl]                                         ; $6432: $34
	ld b, b                                          ; $6433: $40
	add hl, sp                                       ; $6434: $39
	ld d, c                                          ; $6435: $51
	ld c, [hl]                                       ; $6436: $4e
	ld b, l                                          ; $6437: $45
	and b                                            ; $6438: $a0
	pop af                                           ; $6439: $f1
	add d                                            ; $643a: $82
	inc a                                            ; $643b: $3c
	inc [hl]                                         ; $643c: $34
	db $ec                                           ; $643d: $ec
	rst AddAOntoHL                                          ; $643e: $ef
	ld c, a                                          ; $643f: $4f
	xor h                                            ; $6440: $ac
	ld d, h                                          ; $6441: $54
	ld d, h                                          ; $6442: $54
	ld b, h                                          ; $6443: $44
	dec sp                                           ; $6444: $3b
	dec a                                            ; $6445: $3d
	ld b, l                                          ; $6446: $45
	xor b                                            ; $6447: $a8
	db $db                                           ; $6448: $db
	ld a, [hl-]                                      ; $6449: $3a
	jr c, jr_090_6486                                ; $644a: $38 $3a

	ld [hl], h                                       ; $644c: $74
	and b                                            ; $644d: $a0
	cpl                                              ; $644e: $2f
	ld b, e                                          ; $644f: $43
	ld [$36af], a                                    ; $6450: $ea $af $36
	rla                                              ; $6453: $17
	add sp, $50                                      ; $6454: $e8 $50
	inc de                                           ; $6456: $13
	add sp, -$7a                                     ; $6457: $e8 $86
	and e                                            ; $6459: $a3
	db $ec                                           ; $645a: $ec
	rst SubAFromHL                                          ; $645b: $d7

jr_090_645c:
	xor h                                            ; $645c: $ac
	ld [$a827], a                                    ; $645d: $ea $27 $a8
	ld d, d                                          ; $6460: $52
	dec a                                            ; $6461: $3d
	inc [hl]                                         ; $6462: $34
	ldh a, [$3b]                                     ; $6463: $f0 $3b
	dec sp                                           ; $6465: $3b
	ccf                                              ; $6466: $3f
	ld d, l                                          ; $6467: $55
	ld b, h                                          ; $6468: $44
	ld e, b                                          ; $6469: $58
	jr c, jr_090_64b8                                ; $646a: $38 $4c

	and b                                            ; $646c: $a0
	cpl                                              ; $646d: $2f
	ld b, e                                          ; $646e: $43
	or h                                             ; $646f: $b4
	xor h                                            ; $6470: $ac
	ld l, d                                          ; $6471: $6a
	ldh a, [$0d]                                     ; $6472: $f0 $0d
	inc [hl]                                         ; $6474: $34
	db $ec                                           ; $6475: $ec
	inc l                                            ; $6476: $2c
	ld b, l                                          ; $6477: $45
	and b                                            ; $6478: $a0
	db $ed                                           ; $6479: $ed
	ld d, a                                          ; $647a: $57
	xor h                                            ; $647b: $ac
	ld [$a827], a                                    ; $647c: $ea $27 $a8
	ld d, d                                          ; $647f: $52
	dec a                                            ; $6480: $3d
	inc [hl]                                         ; $6481: $34
	ldh a, [$3b]                                     ; $6482: $f0 $3b
	dec sp                                           ; $6484: $3b
	ccf                                              ; $6485: $3f

jr_090_6486:
	ld d, l                                          ; $6486: $55
	ld b, h                                          ; $6487: $44
	ld e, b                                          ; $6488: $58
	jr c, @+$4e                                      ; $6489: $38 $4c

	and b                                            ; $648b: $a0
	add hl, sp                                       ; $648c: $39
	ld e, c                                          ; $648d: $59
	ld b, c                                          ; $648e: $41
	xor b                                            ; $648f: $a8
	db $ed                                           ; $6490: $ed
	ld d, a                                          ; $6491: $57

jr_090_6492:
	inc [hl]                                         ; $6492: $34
	db $eb                                           ; $6493: $eb
	ld h, e                                          ; $6494: $63
	inc a                                            ; $6495: $3c
	ld a, [hl-]                                      ; $6496: $3a
	xor b                                            ; $6497: $a8
	ld d, d                                          ; $6498: $52
	dec a                                            ; $6499: $3d
	ldh a, [$3b]                                     ; $649a: $f0 $3b
	dec sp                                           ; $649c: $3b
	ccf                                              ; $649d: $3f
	ld d, l                                          ; $649e: $55
	ld b, h                                          ; $649f: $44
	ld e, b                                          ; $64a0: $58
	jr c, jr_090_64ef                                ; $64a1: $38 $4c

	and b                                            ; $64a3: $a0
	db $ec                                           ; $64a4: $ec
	rst SubAFromHL                                          ; $64a5: $d7
	inc [hl]                                         ; $64a6: $34
	db $eb                                           ; $64a7: $eb
	ld h, e                                          ; $64a8: $63
	ld b, l                                          ; $64a9: $45
	xor b                                            ; $64aa: $a8
	ld d, d                                          ; $64ab: $52
	dec a                                            ; $64ac: $3d
	ldh a, [$3b]                                     ; $64ad: $f0 $3b
	dec sp                                           ; $64af: $3b
	ccf                                              ; $64b0: $3f
	ld c, h                                          ; $64b1: $4c
	and b                                            ; $64b2: $a0
	db $ed                                           ; $64b3: $ed
	ld d, a                                          ; $64b4: $57
	inc [hl]                                         ; $64b5: $34
	db $eb                                           ; $64b6: $eb
	ld h, e                                          ; $64b7: $63

jr_090_64b8:
	ld b, l                                          ; $64b8: $45
	xor b                                            ; $64b9: $a8
	ld d, d                                          ; $64ba: $52
	dec a                                            ; $64bb: $3d
	inc [hl]                                         ; $64bc: $34
	ldh a, [$3b]                                     ; $64bd: $f0 $3b
	dec sp                                           ; $64bf: $3b
	ccf                                              ; $64c0: $3f
	ld c, h                                          ; $64c1: $4c
	and b                                            ; $64c2: $a0
	ret                                              ; $64c3: $c9


	xor h                                            ; $64c4: $ac
	db $db                                           ; $64c5: $db
	ld a, [hl-]                                      ; $64c6: $3a
	inc a                                            ; $64c7: $3c
	dec sp                                           ; $64c8: $3b
	dec a                                            ; $64c9: $3d
	inc a                                            ; $64ca: $3c
	ld a, [hl-]                                      ; $64cb: $3a
	and b                                            ; $64cc: $a0
	cpl                                              ; $64cd: $2f
	ld b, e                                          ; $64ce: $43
	rst JumpTable                                          ; $64cf: $c7
	ld c, b                                          ; $64d0: $48
	and b                                            ; $64d1: $a0
	db $ec                                           ; $64d2: $ec
	rst SubAFromHL                                          ; $64d3: $d7
	xor h                                            ; $64d4: $ac
	ld [$a827], a                                    ; $64d5: $ea $27 $a8
	ld d, d                                          ; $64d8: $52
	dec a                                            ; $64d9: $3d
	inc [hl]                                         ; $64da: $34
	ldh a, [$3b]                                     ; $64db: $f0 $3b
	dec sp                                           ; $64dd: $3b
	ccf                                              ; $64de: $3f
	ld c, h                                          ; $64df: $4c
	and b                                            ; $64e0: $a0
	ld [$a027], a                                    ; $64e1: $ea $27 $a0
	cpl                                              ; $64e4: $2f
	ld b, e                                          ; $64e5: $43
	ld b, b                                          ; $64e6: $40
	add hl, sp                                       ; $64e7: $39
	inc [hl]                                         ; $64e8: $34
	db $ec                                           ; $64e9: $ec
	cp c                                             ; $64ea: $b9
	and b                                            ; $64eb: $a0
	db $ed                                           ; $64ec: $ed
	ld d, a                                          ; $64ed: $57
	inc [hl]                                         ; $64ee: $34

jr_090_64ef:
	db $eb                                           ; $64ef: $eb
	jr c, jr_090_6492                                ; $64f0: $38 $a0

	ldh a, [rSVBK]                                   ; $64f2: $f0 $70
	ld b, a                                          ; $64f4: $47
	jr c, jr_090_6544                                ; $64f5: $38 $4d

	ld a, e                                          ; $64f7: $7b
	xor h                                            ; $64f8: $ac
	db $eb                                           ; $64f9: $eb
	adc [hl]                                         ; $64fa: $8e
	and b                                            ; $64fb: $a0
	cpl                                              ; $64fc: $2f
	ld b, e                                          ; $64fd: $43
	xor $10                                          ; $64fe: $ee $10
	xor b                                            ; $6500: $a8
	add sp, -$72                                     ; $6501: $e8 $8e
	and e                                            ; $6503: $a3
	ld b, [hl]                                       ; $6504: $46
	dec sp                                           ; $6505: $3b
	inc [hl]                                         ; $6506: $34
	ld b, b                                          ; $6507: $40
	add hl, sp                                       ; $6508: $39
	ld b, h                                          ; $6509: $44
	and b                                            ; $650a: $a0
	cpl                                              ; $650b: $2f
	ld b, e                                          ; $650c: $43
	db $eb                                           ; $650d: $eb
	rst FarCall                                          ; $650e: $f7
	and c                                            ; $650f: $a1
	cpl                                              ; $6510: $2f
	ld b, e                                          ; $6511: $43
	ld b, [hl]                                       ; $6512: $46
	ld d, a                                          ; $6513: $57
	ld d, e                                          ; $6514: $53
	ld c, c                                          ; $6515: $49
	add hl, sp                                       ; $6516: $39
	xor b                                            ; $6517: $a8
	ldh a, [$29]                                     ; $6518: $f0 $29
	ld a, $38                                        ; $651a: $3e $38
	ld b, l                                          ; $651c: $45
	xor b                                            ; $651d: $a8
	ld [hl-], a                                      ; $651e: $32
	db $eb                                           ; $651f: $eb
	db $fc                                           ; $6520: $fc
	ld b, a                                          ; $6521: $47
	db $eb                                           ; $6522: $eb
	dec a                                            ; $6523: $3d
	inc de                                           ; $6524: $13
	ld c, a                                          ; $6525: $4f
	ld d, b                                          ; $6526: $50
	ld e, [hl]                                       ; $6527: $5e
	ld c, [hl]                                       ; $6528: $4e
	ld a, [hl-]                                      ; $6529: $3a
	ld b, c                                          ; $652a: $41
	ccf                                              ; $652b: $3f
	xor h                                            ; $652c: $ac
	halt                                             ; $652d: $76
	ld c, e                                          ; $652e: $4b
	pop af                                           ; $652f: $f1
	and d                                            ; $6530: $a2
	ld a, c                                          ; $6531: $79
	pop af                                           ; $6532: $f1
	ld b, d                                          ; $6533: $42
	ld b, h                                          ; $6534: $44
	ld e, c                                          ; $6535: $59
	scf                                              ; $6536: $37
	inc sp                                           ; $6537: $33
	add hl, bc                                       ; $6538: $09
	cpl                                              ; $6539: $2f
	ld b, e                                          ; $653a: $43
	ld b, [hl]                                       ; $653b: $46
	dec sp                                           ; $653c: $3b
	inc [hl]                                         ; $653d: $34
	db $eb                                           ; $653e: $eb
	db $fc                                           ; $653f: $fc
	xor b                                            ; $6540: $a8
	jp hl                                            ; $6541: $e9


	ld d, c                                          ; $6542: $51
	and b                                            ; $6543: $a0

jr_090_6544:
	cpl                                              ; $6544: $2f
	ld [hl-], a                                      ; $6545: $32
	db $eb                                           ; $6546: $eb
	dec a                                            ; $6547: $3d
	inc de                                           ; $6548: $13
	ldh a, [rAUD2LEN]                                ; $6549: $f0 $16
	ldh a, [$c0]                                     ; $654b: $f0 $c0
	ld a, $3f                                        ; $654d: $3e $3f
	ld h, h                                          ; $654f: $64
	db $ec                                           ; $6550: $ec
	ld l, $a3                                        ; $6551: $2e $a3
	ld d, $a8                                        ; $6553: $16 $a8
	xor $06                                          ; $6555: $ee $06
	ld b, a                                          ; $6557: $47
	inc [hl]                                         ; $6558: $34
	ld a, d                                          ; $6559: $7a
	ld d, a                                          ; $655a: $57
	ld d, d                                          ; $655b: $52
	ld a, $66                                        ; $655c: $3e $66
	and b                                            ; $655e: $a0
	cpl                                              ; $655f: $2f
	ld b, e                                          ; $6560: $43
	ld a, d                                          ; $6561: $7a
	ld e, a                                          ; $6562: $5f
	add hl, sp                                       ; $6563: $39
	and b                                            ; $6564: $a0
	ld d, $a8                                        ; $6565: $16 $a8
	ld a, d                                          ; $6567: $7a
	ld d, a                                          ; $6568: $57
	ld d, d                                          ; $6569: $52
	ld a, $66                                        ; $656a: $3e $66
	and b                                            ; $656c: $a0
	ld b, b                                          ; $656d: $40
	ld c, l                                          ; $656e: $4d
	ld e, e                                          ; $656f: $5b
	ld d, [hl]                                       ; $6570: $56
	inc [hl]                                         ; $6571: $34
	ld c, a                                          ; $6572: $4f
	add hl, sp                                       ; $6573: $39
	ld a, d                                          ; $6574: $7a
	ld c, [hl]                                       ; $6575: $4e
	and b                                            ; $6576: $a0
	add hl, bc                                       ; $6577: $09
	xor $10                                          ; $6578: $ee $10
	and b                                            ; $657a: $a0
	cpl                                              ; $657b: $2f
	ld b, e                                          ; $657c: $43
	ld h, h                                          ; $657d: $64
	ld e, c                                          ; $657e: $59
	jr c, jr_090_65b5                                ; $657f: $38 $34

	xor $09                                          ; $6581: $ee $09
	ld e, b                                          ; $6583: $58
	ld e, c                                          ; $6584: $59
	ld b, c                                          ; $6585: $41
	xor b                                            ; $6586: $a8
	sbc c                                            ; $6587: $99
	dec sp                                           ; $6588: $3b
	ccf                                              ; $6589: $3f
	ld d, l                                          ; $658a: $55
	ld c, l                                          ; $658b: $4d
	ld e, c                                          ; $658c: $59
	and b                                            ; $658d: $a0
	cpl                                              ; $658e: $2f
	ld b, e                                          ; $658f: $43
	db $ec                                           ; $6590: $ec
	reti                                             ; $6591: $d9


	xor h                                            ; $6592: $ac
	ld d, h                                          ; $6593: $54
	ld b, d                                          ; $6594: $42
	pop af                                           ; $6595: $f1
	ld de, $573a                                     ; $6596: $11 $3a $57
	ld e, e                                          ; $6599: $5b
	ld d, [hl]                                       ; $659a: $56
	xor h                                            ; $659b: $ac
	ldh a, [$e1]                                     ; $659c: $f0 $e1
	ldh a, [rSB]                                     ; $659e: $f0 $01
	ld d, b                                          ; $65a0: $50
	ld c, l                                          ; $65a1: $4d
	ld c, [hl]                                       ; $65a2: $4e
	ld b, l                                          ; $65a3: $45
	ld a, [hl-]                                      ; $65a4: $3a
	ld [hl], h                                       ; $65a5: $74
	and b                                            ; $65a6: $a0
	cpl                                              ; $65a7: $2f
	ld b, e                                          ; $65a8: $43
	db $eb                                           ; $65a9: $eb
	inc [hl]                                         ; $65aa: $34
	xor h                                            ; $65ab: $ac
	ldh a, [rSVBK]                                   ; $65ac: $f0 $70
	ld b, a                                          ; $65ae: $47
	db $ed                                           ; $65af: $ed
	ld e, b                                          ; $65b0: $58
	and b                                            ; $65b1: $a0
	cpl                                              ; $65b2: $2f
	ld b, e                                          ; $65b3: $43
	db $ec                                           ; $65b4: $ec

jr_090_65b5:
	and $4b                                          ; $65b5: $e6 $4b
	xor h                                            ; $65b7: $ac
	ld c, c                                          ; $65b8: $49
	add hl, sp                                       ; $65b9: $39
	ld c, c                                          ; $65ba: $49
	add hl, sp                                       ; $65bb: $39
	ld a, b                                          ; $65bc: $78
	ld a, [hl-]                                      ; $65bd: $3a
	inc a                                            ; $65be: $3c
	dec sp                                           ; $65bf: $3b
	dec a                                            ; $65c0: $3d
	ld a, [hl-]                                      ; $65c1: $3a
	and b                                            ; $65c2: $a0
	cpl                                              ; $65c3: $2f
	ld b, e                                          ; $65c4: $43
	ld e, d                                          ; $65c5: $5a
	add hl, sp                                       ; $65c6: $39
	ld a, $3d                                        ; $65c7: $3e $3d
	ld b, c                                          ; $65c9: $41
	ld b, h                                          ; $65ca: $44
	ld e, a                                          ; $65cb: $5f
	add hl, sp                                       ; $65cc: $39
	xor c                                            ; $65cd: $a9
	db $eb                                           ; $65ce: $eb
	inc [hl]                                         ; $65cf: $34
	xor h                                            ; $65d0: $ac
	ldh a, [rSVBK]                                   ; $65d1: $f0 $70
	ld b, a                                          ; $65d3: $47
	db $ed                                           ; $65d4: $ed
	ld e, b                                          ; $65d5: $58
	and b                                            ; $65d6: $a0
	cpl                                              ; $65d7: $2f
	ld b, e                                          ; $65d8: $43
	db $ec                                           ; $65d9: $ec
	and $34                                          ; $65da: $e6 $34
	ld [hl], b                                       ; $65dc: $70
	ld [hl], c                                       ; $65dd: $71
	ld b, c                                          ; $65de: $41
	ld c, h                                          ; $65df: $4c
	xor b                                            ; $65e0: $a8
	add sp, -$21                                     ; $65e1: $e8 $df
	xor h                                            ; $65e3: $ac
	jp hl                                            ; $65e4: $e9


	xor [hl]                                         ; $65e5: $ae
	and b                                            ; $65e6: $a0
	ld b, [hl]                                       ; $65e7: $46
	dec sp                                           ; $65e8: $3b
	xor h                                            ; $65e9: $ac
	ld l, a                                          ; $65ea: $6f
	ld c, a                                          ; $65eb: $4f
	inc [hl]                                         ; $65ec: $34
	ld l, d                                          ; $65ed: $6a
	ld a, b                                          ; $65ee: $78
	dec a                                            ; $65ef: $3d
	ld c, c                                          ; $65f0: $49
	ld d, h                                          ; $65f1: $54
	ld e, a                                          ; $65f2: $5f
	ld b, h                                          ; $65f3: $44
	inc a                                            ; $65f4: $3c
	ld d, b                                          ; $65f5: $50
	ld c, b                                          ; $65f6: $48
	and b                                            ; $65f7: $a0
	cpl                                              ; $65f8: $2f
	ld b, e                                          ; $65f9: $43
	sbc $34                                          ; $65fa: $de $34
	ld [hl], b                                       ; $65fc: $70
	ld [hl], c                                       ; $65fd: $71
	ld b, c                                          ; $65fe: $41
	ld c, h                                          ; $65ff: $4c
	dec [hl]                                         ; $6600: $35
	rla                                              ; $6601: $17
	jp hl                                            ; $6602: $e9


	pop de                                           ; $6603: $d1
	inc de                                           ; $6604: $13
	jp hl                                            ; $6605: $e9


	jp nc, $a397                                     ; $6606: $d2 $97 $a3

	ld l, a                                          ; $6609: $6f
	ld c, a                                          ; $660a: $4f
	inc [hl]                                         ; $660b: $34
	ld l, d                                          ; $660c: $6a
	ld a, b                                          ; $660d: $78
	dec a                                            ; $660e: $3d
	ld c, c                                          ; $660f: $49
	ld d, h                                          ; $6610: $54
	ld e, a                                          ; $6611: $5f
	inc de                                           ; $6612: $13
	ld b, h                                          ; $6613: $44
	inc a                                            ; $6614: $3c
	ld d, b                                          ; $6615: $50
	dec [hl]                                         ; $6616: $35
	ld a, a                                          ; $6617: $7f
	ld b, a                                          ; $6618: $47
	ld a, $3a                                        ; $6619: $3e $3a
	jr c, jr_090_6667                                ; $661b: $38 $4a

	and b                                            ; $661d: $a0
	ld b, b                                          ; $661e: $40
	ld b, c                                          ; $661f: $41
	ld a, [hl-]                                      ; $6620: $3a
	ld b, a                                          ; $6621: $47
	ld a, a                                          ; $6622: $7f
	ld b, a                                          ; $6623: $47
	ld a, $3a                                        ; $6624: $3e $3a
	ld d, l                                          ; $6626: $55
	ccf                                              ; $6627: $3f
	inc de                                           ; $6628: $13
	jr c, jr_090_6663                                ; $6629: $38 $38

	ld b, l                                          ; $662b: $45
	and b                                            ; $662c: $a0
	cpl                                              ; $662d: $2f
	ld b, e                                          ; $662e: $43
	ld [hl], b                                       ; $662f: $70
	ld [hl], c                                       ; $6630: $71
	ld b, c                                          ; $6631: $41
	ld b, l                                          ; $6632: $45
	xor b                                            ; $6633: $a8
	ld c, a                                          ; $6634: $4f
	add hl, sp                                       ; $6635: $39
	ldh a, [hDisp0_SCX]                                     ; $6636: $f0 $84
	ldh a, [$0d]                                     ; $6638: $f0 $0d
	ld c, c                                          ; $663a: $49
	ld a, $3a                                        ; $663b: $3e $3a
	jr c, @+$3e                                      ; $663d: $38 $3c

	ld d, b                                          ; $663f: $50
	and b                                            ; $6640: $a0
	cpl                                              ; $6641: $2f
	ld b, e                                          ; $6642: $43
	sbc c                                            ; $6643: $99
	dec sp                                           ; $6644: $3b
	dec a                                            ; $6645: $3d
	and c                                            ; $6646: $a1
	add hl, sp                                       ; $6647: $39
	xor $1f                                          ; $6648: $ee $1f
	xor b                                            ; $664a: $a8
	ld l, a                                          ; $664b: $6f
	ld c, a                                          ; $664c: $4f
	inc [hl]                                         ; $664d: $34
	ld l, d                                          ; $664e: $6a
	ld a, b                                          ; $664f: $78
	dec a                                            ; $6650: $3d
	ld c, c                                          ; $6651: $49
	ld d, h                                          ; $6652: $54
	ld e, a                                          ; $6653: $5f
	and b                                            ; $6654: $a0
	cpl                                              ; $6655: $2f
	ld b, e                                          ; $6656: $43
	jp hl                                            ; $6657: $e9


	dec h                                            ; $6658: $25
	ld b, l                                          ; $6659: $45
	and b                                            ; $665a: $a0
	ld l, a                                          ; $665b: $6f
	ld c, a                                          ; $665c: $4f
	inc [hl]                                         ; $665d: $34
	ld l, d                                          ; $665e: $6a
	ld a, b                                          ; $665f: $78
	dec a                                            ; $6660: $3d
	ld c, c                                          ; $6661: $49
	ld d, h                                          ; $6662: $54

jr_090_6663:
	ld e, a                                          ; $6663: $5f
	and b                                            ; $6664: $a0
	cpl                                              ; $6665: $2f
	ld b, e                                          ; $6666: $43

jr_090_6667:
	jp hl                                            ; $6667: $e9


	dec h                                            ; $6668: $25
	and b                                            ; $6669: $a0
	db $ec                                           ; $666a: $ec
	db $10                                           ; $666b: $10
	xor h                                            ; $666c: $ac
	ld l, d                                          ; $666d: $6a
	ld a, b                                          ; $666e: $78
	dec a                                            ; $666f: $3d
	ld c, c                                          ; $6670: $49
	ld d, h                                          ; $6671: $54
	ld e, a                                          ; $6672: $5f
	ld b, l                                          ; $6673: $45
	and b                                            ; $6674: $a0
	cpl                                              ; $6675: $2f
	ld b, e                                          ; $6676: $43
	db $ec                                           ; $6677: $ec
	and $34                                          ; $6678: $e6 $34
	ldh a, [$c7]                                     ; $667a: $f0 $c7
	jr c, jr_090_66b8                                ; $667c: $38 $3a

	xor b                                            ; $667e: $a8
	db $eb                                           ; $667f: $eb
	rst FarCall                                          ; $6680: $f7
	inc a                                            ; $6681: $3c
	ld a, [hl-]                                      ; $6682: $3a
	ld c, b                                          ; $6683: $48
	and c                                            ; $6684: $a1
	ld c, a                                          ; $6685: $4f
	add hl, sp                                       ; $6686: $39
	inc [hl]                                         ; $6687: $34
	ld d, c                                          ; $6688: $51
	dec sp                                           ; $6689: $3b
	inc a                                            ; $668a: $3c
	ld d, a                                          ; $668b: $57
	pop af                                           ; $668c: $f1
	sbc d                                            ; $668d: $9a
	ld b, h                                          ; $668e: $44
	ld c, h                                          ; $668f: $4c
	and b                                            ; $6690: $a0
	cpl                                              ; $6691: $2f
	ld b, e                                          ; $6692: $43
	pop af                                           ; $6693: $f1
	cp d                                             ; $6694: $ba
	ld d, l                                          ; $6695: $55
	ccf                                              ; $6696: $3f
	ld a, $3c                                        ; $6697: $3e $3c
	dec a                                            ; $6699: $3d
	ld a, [hl-]                                      ; $669a: $3a
	jr c, jr_090_66e2                                ; $669b: $38 $45

	and b                                            ; $669d: $a0
	ldh a, [rWY]                                     ; $669e: $f0 $4a
	ld e, c                                          ; $66a0: $59
	ld l, c                                          ; $66a1: $69
	ldh a, [rAUD2HIGH]                               ; $66a2: $f0 $19
	ld c, e                                          ; $66a4: $4b
	inc de                                           ; $66a5: $13
	ldh a, [c]                                       ; $66a6: $f2
	ld l, c                                          ; $66a7: $69
	ld h, c                                          ; $66a8: $61
	ld d, [hl]                                       ; $66a9: $56
	ld b, h                                          ; $66aa: $44
	ld [hl], c                                       ; $66ab: $71
	ld b, h                                          ; $66ac: $44
	ld b, l                                          ; $66ad: $45
	and b                                            ; $66ae: $a0
	ld [$acab], a                                    ; $66af: $ea $ab $ac
	db $ed                                           ; $66b2: $ed
	ld d, a                                          ; $66b3: $57
	db $ed                                           ; $66b4: $ed
	ld l, h                                          ; $66b5: $6c
	ld c, h                                          ; $66b6: $4c
	and b                                            ; $66b7: $a0

jr_090_66b8:
	cpl                                              ; $66b8: $2f
	ld b, e                                          ; $66b9: $43
	adc b                                            ; $66ba: $88
	sub c                                            ; $66bb: $91
	inc [hl]                                         ; $66bc: $34
	db $ed                                           ; $66bd: $ed
	ld l, h                                          ; $66be: $6c
	ld c, h                                          ; $66bf: $4c
	and b                                            ; $66c0: $a0
	ld c, a                                          ; $66c1: $4f
	add hl, sp                                       ; $66c2: $39
	inc [hl]                                         ; $66c3: $34
	ld d, c                                          ; $66c4: $51
	dec sp                                           ; $66c5: $3b
	inc a                                            ; $66c6: $3c
	ld d, a                                          ; $66c7: $57
	di                                               ; $66c8: $f3
	ld b, a                                          ; $66c9: $47
	ld b, h                                          ; $66ca: $44
	ld c, h                                          ; $66cb: $4c
	and b                                            ; $66cc: $a0
	cpl                                              ; $66cd: $2f
	ld b, e                                          ; $66ce: $43
	db $ec                                           ; $66cf: $ec
	ld c, b                                          ; $66d0: $48
	ld b, d                                          ; $66d1: $42
	di                                               ; $66d2: $f3
	ld b, a                                          ; $66d3: $47
	ld b, h                                          ; $66d4: $44
	ld c, h                                          ; $66d5: $4c
	and b                                            ; $66d6: $a0
	ld b, [hl]                                       ; $66d7: $46
	inc [hl]                                         ; $66d8: $34
	ld b, b                                          ; $66d9: $40
	add hl, sp                                       ; $66da: $39
	ld b, h                                          ; $66db: $44
	xor h                                            ; $66dc: $ac
	db $ec                                           ; $66dd: $ec
	ld c, l                                          ; $66de: $4d
	ld [$acbd], a                                    ; $66df: $ea $bd $ac

jr_090_66e2:
	ld d, c                                          ; $66e2: $51
	ld [hl], b                                       ; $66e3: $70
	ld d, l                                          ; $66e4: $55
	db $eb                                           ; $66e5: $eb
	ld e, a                                          ; $66e6: $5f
	and b                                            ; $66e7: $a0
	ld b, [hl]                                       ; $66e8: $46
	inc [hl]                                         ; $66e9: $34
	ld b, b                                          ; $66ea: $40
	add hl, sp                                       ; $66eb: $39
	ld b, h                                          ; $66ec: $44
	xor h                                            ; $66ed: $ac
	db $ec                                           ; $66ee: $ec
	ld c, l                                          ; $66ef: $4d
	ld [$acbd], a                                    ; $66f0: $ea $bd $ac
	db $eb                                           ; $66f3: $eb
	ld e, a                                          ; $66f4: $5f
	and b                                            ; $66f5: $a0
	ld b, [hl]                                       ; $66f6: $46
	inc [hl]                                         ; $66f7: $34
	ld b, b                                          ; $66f8: $40
	add hl, sp                                       ; $66f9: $39
	ld b, h                                          ; $66fa: $44
	xor h                                            ; $66fb: $ac
	db $ec                                           ; $66fc: $ec
	ld c, l                                          ; $66fd: $4d
	ld [$acbd], a                                    ; $66fe: $ea $bd $ac
	pop de                                           ; $6701: $d1
	db $eb                                           ; $6702: $eb
	ld e, a                                          ; $6703: $5f
	and b                                            ; $6704: $a0
	cpl                                              ; $6705: $2f
	ld b, e                                          ; $6706: $43
	jp hl                                            ; $6707: $e9


	xor l                                            ; $6708: $ad
	xor b                                            ; $6709: $a8
	ld b, [hl]                                       ; $670a: $46
	ld d, a                                          ; $670b: $57
	ld d, e                                          ; $670c: $53
	ld c, c                                          ; $670d: $49
	add hl, sp                                       ; $670e: $39
	and b                                            ; $670f: $a0
	db $eb                                           ; $6710: $eb
	ld d, c                                          ; $6711: $51
	xor h                                            ; $6712: $ac
	db $ec                                           ; $6713: $ec
	ld c, l                                          ; $6714: $4d
	ld [$acb8], a                                    ; $6715: $ea $b8 $ac
	ld d, c                                          ; $6718: $51
	ld [hl], b                                       ; $6719: $70
	ld d, l                                          ; $671a: $55
	cp e                                             ; $671b: $bb
	ld b, l                                          ; $671c: $45
	and b                                            ; $671d: $a0
	db $eb                                           ; $671e: $eb
	ld d, c                                          ; $671f: $51
	xor h                                            ; $6720: $ac
	db $ec                                           ; $6721: $ec
	ld c, l                                          ; $6722: $4d
	ld [$acb8], a                                    ; $6723: $ea $b8 $ac
	pop de                                           ; $6726: $d1
	cp e                                             ; $6727: $bb
	ld b, l                                          ; $6728: $45
	and b                                            ; $6729: $a0
	ld [$acab], a                                    ; $672a: $ea $ab $ac
	db $ed                                           ; $672d: $ed
	ld d, a                                          ; $672e: $57
	pop af                                           ; $672f: $f1
	or $38                                           ; $6730: $f6 $38
	ld c, h                                          ; $6732: $4c
	and b                                            ; $6733: $a0
	cpl                                              ; $6734: $2f
	ld b, e                                          ; $6735: $43
	db $ec                                           ; $6736: $ec
	push bc                                          ; $6737: $c5
	ldh a, [c]                                       ; $6738: $f2
	ld b, e                                          ; $6739: $43
	ld d, e                                          ; $673a: $53
	inc de                                           ; $673b: $13
	ldh a, [c]                                       ; $673c: $f2
	ld c, a                                          ; $673d: $4f
	ld d, a                                          ; $673e: $57
	ld b, b                                          ; $673f: $40
	add hl, sp                                       ; $6740: $39
	ld b, h                                          ; $6741: $44
	ld c, h                                          ; $6742: $4c
	and b                                            ; $6743: $a0
	ld [hl], b                                       ; $6744: $70
	ld [hl], c                                       ; $6745: $71
	ld b, c                                          ; $6746: $41
	ld c, h                                          ; $6747: $4c
	dec [hl]                                         ; $6748: $35
	ret                                              ; $6749: $c9


	xor h                                            ; $674a: $ac
	pop af                                           ; $674b: $f1
	ld a, c                                          ; $674c: $79
	pop af                                           ; $674d: $f1
	ld h, d                                          ; $674e: $62
	ld b, a                                          ; $674f: $47
	ldh a, [$0b]                                     ; $6750: $f0 $0b
	ldh a, [$2a]                                     ; $6752: $f0 $2a
	pop af                                           ; $6754: $f1
	inc b                                            ; $6755: $04
	dec sp                                           ; $6756: $3b
	ccf                                              ; $6757: $3f
	ld c, b                                          ; $6758: $48
	and b                                            ; $6759: $a0
	ld [hl], b                                       ; $675a: $70
	ld [hl], c                                       ; $675b: $71
	ld b, c                                          ; $675c: $41
	dec [hl]                                         ; $675d: $35
	ret                                              ; $675e: $c9


	xor h                                            ; $675f: $ac
	pop af                                           ; $6760: $f1
	ld a, c                                          ; $6761: $79
	pop af                                           ; $6762: $f1
	ld h, d                                          ; $6763: $62
	ld b, a                                          ; $6764: $47
	ldh a, [rBGP]                                    ; $6765: $f0 $47
	ldh a, [$2a]                                     ; $6767: $f0 $2a
	ld d, e                                          ; $6769: $53
	ld c, b                                          ; $676a: $48
	and b                                            ; $676b: $a0
	ld [hl], b                                       ; $676c: $70
	ld [hl], c                                       ; $676d: $71
	ld b, c                                          ; $676e: $41
	xor b                                            ; $676f: $a8
	ldh a, [$c7]                                     ; $6770: $f0 $c7
	ld c, l                                          ; $6772: $4d
	ld h, c                                          ; $6773: $61
	ld d, [hl]                                       ; $6774: $56
	dec sp                                           ; $6775: $3b
	dec a                                            ; $6776: $3d
	ld c, b                                          ; $6777: $48
	and b                                            ; $6778: $a0
	cpl                                              ; $6779: $2f
	ld b, e                                          ; $677a: $43
	jr c, jr_090_67eb                                ; $677b: $38 $6e

	xor h                                            ; $677d: $ac
	jp hl                                            ; $677e: $e9


	cp h                                             ; $677f: $bc
	xor h                                            ; $6780: $ac
	jp hl                                            ; $6781: $e9


	dec l                                            ; $6782: $2d
	and b                                            ; $6783: $a0
	ld l, [hl]                                       ; $6784: $6e
	ld [hl], h                                       ; $6785: $74
	and b                                            ; $6786: $a0
	cpl                                              ; $6787: $2f
	ld b, e                                          ; $6788: $43
	ldh a, [rSB]                                     ; $6789: $f0 $01
	dec sp                                           ; $678b: $3b
	inc [hl]                                         ; $678c: $34
	db $ec                                           ; $678d: $ec
	di                                               ; $678e: $f3
	scf                                              ; $678f: $37
	inc de                                           ; $6790: $13
	ld l, e                                          ; $6791: $6b
	ld a, $47                                        ; $6792: $3e $47
	ld a, b                                          ; $6794: $78
	dec a                                            ; $6795: $3d
	and b                                            ; $6796: $a0
	ld b, [hl]                                       ; $6797: $46
	jr c, jr_090_67e1                                ; $6798: $38 $47

	ld d, l                                          ; $679a: $55
	xor h                                            ; $679b: $ac
	ldh a, [rRP]                                     ; $679c: $f0 $56
	ld b, a                                          ; $679e: $47
	ldh a, [rAUD2LEN]                                ; $679f: $f0 $16
	ld c, e                                          ; $67a1: $4b
	ldh a, [rAUD1LOW]                                ; $67a2: $f0 $13
	jr c, @+$44                                      ; $67a4: $38 $42

	ld b, h                                          ; $67a6: $44
	ld b, l                                          ; $67a7: $45
	and b                                            ; $67a8: $a0
	cpl                                              ; $67a9: $2f
	ld b, e                                          ; $67aa: $43
	ld d, d                                          ; $67ab: $52
	dec a                                            ; $67ac: $3d
	inc a                                            ; $67ad: $3c
	inc [hl]                                         ; $67ae: $34
	db $ec                                           ; $67af: $ec
	di                                               ; $67b0: $f3
	xor b                                            ; $67b1: $a8
	ld l, e                                          ; $67b2: $6b
	ld a, $47                                        ; $67b3: $3e $47
	ld a, b                                          ; $67b5: $78
	dec a                                            ; $67b6: $3d
	and b                                            ; $67b7: $a0
	ldh a, [rRP]                                     ; $67b8: $f0 $56
	ld b, a                                          ; $67ba: $47
	ldh a, [rAUD2LEN]                                ; $67bb: $f0 $16
	ld c, e                                          ; $67bd: $4b
	ldh a, [rAUD1LOW]                                ; $67be: $f0 $13
	jr c, jr_090_680b                                ; $67c0: $38 $49

	inc de                                           ; $67c2: $13
	add d                                            ; $67c3: $82
	dec sp                                           ; $67c4: $3b
	ccf                                              ; $67c5: $3f
	ld c, [hl]                                       ; $67c6: $4e
	ld b, h                                          ; $67c7: $44
	ld e, a                                          ; $67c8: $5f
	add hl, sp                                       ; $67c9: $39
	and b                                            ; $67ca: $a0
	cpl                                              ; $67cb: $2f
	ld b, e                                          ; $67cc: $43
	ld d, d                                          ; $67cd: $52
	dec a                                            ; $67ce: $3d
	inc a                                            ; $67cf: $3c
	xor e                                            ; $67d0: $ab
	jr c, jr_090_680b                                ; $67d1: $38 $38

	inc a                                            ; $67d3: $3c
	ldh a, [rSB]                                     ; $67d4: $f0 $01
	ld b, c                                          ; $67d6: $41
	ld b, a                                          ; $67d7: $47
	ld a, $3f                                        ; $67d8: $3e $3f
	ld d, l                                          ; $67da: $55
	ld c, l                                          ; $67db: $4d
	ld b, l                                          ; $67dc: $45
	and b                                            ; $67dd: $a0
	ld d, d                                          ; $67de: $52
	ld b, [hl]                                       ; $67df: $46
	xor h                                            ; $67e0: $ac

jr_090_67e1:
	ld b, b                                          ; $67e1: $40
	add hl, sp                                       ; $67e2: $39
	pop af                                           ; $67e3: $f1
	ld [hl-], a                                      ; $67e4: $32
	ld d, b                                          ; $67e5: $50
	ld a, [hl-]                                      ; $67e6: $3a
	jr c, jr_090_6833                                ; $67e7: $38 $4a

	ld d, l                                          ; $67e9: $55
	ld c, l                                          ; $67ea: $4d

jr_090_67eb:
	dec a                                            ; $67eb: $3d
	ld d, d                                          ; $67ec: $52
	ld e, [hl]                                       ; $67ed: $5e
	and b                                            ; $67ee: $a0
	dec a                                            ; $67ef: $3d
	inc [hl]                                         ; $67f0: $34
	ldh a, [c]                                       ; $67f1: $f2
	ld l, b                                          ; $67f2: $68
	ldh a, [$62]                                     ; $67f3: $f0 $62
	and d                                            ; $67f5: $a2
	dec a                                            ; $67f6: $3d
	ld d, d                                          ; $67f7: $52
	dec a                                            ; $67f8: $3d
	ld d, d                                          ; $67f9: $52
	inc de                                           ; $67fa: $13
	ldh a, [rOCPS]                                   ; $67fb: $f0 $6a
	ld d, a                                          ; $67fd: $57
	inc a                                            ; $67fe: $3c
	inc a                                            ; $67ff: $3c
	dec sp                                           ; $6800: $3b
	dec a                                            ; $6801: $3d
	ld c, a                                          ; $6802: $4f
	ld b, c                                          ; $6803: $41
	ld c, d                                          ; $6804: $4a
	ld c, h                                          ; $6805: $4c
	xor b                                            ; $6806: $a8
	xor $0a                                          ; $6807: $ee $0a
	ldh a, [rRP]                                     ; $6809: $f0 $56

jr_090_680b:
	inc [hl]                                         ; $680b: $34

jr_090_680c:
	db $f4                                           ; $680c: $f4
	adc e                                            ; $680d: $8b
	ld b, d                                          ; $680e: $42
	ldh a, [$75]                                     ; $680f: $f0 $75
	db $f4                                           ; $6811: $f4
	cp $42                                           ; $6812: $fe $42
	di                                               ; $6814: $f3
	ld [hl], h                                       ; $6815: $74
	push af                                          ; $6816: $f5
	ld d, $4b                                        ; $6817: $16 $4b
	and c                                            ; $6819: $a1
	cpl                                              ; $681a: $2f
	ld b, e                                          ; $681b: $43
	ldh a, [c]                                       ; $681c: $f2
	ld l, b                                          ; $681d: $68
	ldh a, [$62]                                     ; $681e: $f0 $62
	ld c, b                                          ; $6820: $48
	ldh a, [$75]                                     ; $6821: $f0 $75
	db $f4                                           ; $6823: $f4
	cp $42                                           ; $6824: $fe $42
	di                                               ; $6826: $f3
	ld [hl], h                                       ; $6827: $74
	push af                                          ; $6828: $f5
	ld d, $ab                                        ; $6829: $16 $ab
	ld l, e                                          ; $682b: $6b
	ld b, d                                          ; $682c: $42
	ld d, h                                          ; $682d: $54
	ld c, c                                          ; $682e: $49
	ld b, h                                          ; $682f: $44
	and b                                            ; $6830: $a0
	cpl                                              ; $6831: $2f
	ld b, e                                          ; $6832: $43

jr_090_6833:
	ld d, d                                          ; $6833: $52
	dec a                                            ; $6834: $3d
	inc a                                            ; $6835: $3c
	xor l                                            ; $6836: $ad
	dec a                                            ; $6837: $3d
	ld d, d                                          ; $6838: $52
	dec a                                            ; $6839: $3d
	ld d, d                                          ; $683a: $52
	ldh a, [rOCPS]                                   ; $683b: $f0 $6a
	ld d, a                                          ; $683d: $57
	inc a                                            ; $683e: $3c
	inc a                                            ; $683f: $3c
	ld c, [hl]                                       ; $6840: $4e
	ld a, [hl-]                                      ; $6841: $3a
	ld b, l                                          ; $6842: $45
	and b                                            ; $6843: $a0
	ld l, e                                          ; $6844: $6b
	inc a                                            ; $6845: $3c
	add d                                            ; $6846: $82
	dec sp                                           ; $6847: $3b
	dec a                                            ; $6848: $3d
	inc a                                            ; $6849: $3c
	ld c, h                                          ; $684a: $4c
	and b                                            ; $684b: $a0
	ldh a, [c]                                       ; $684c: $f2
	ld l, b                                          ; $684d: $68
	ld c, b                                          ; $684e: $48
	inc [hl]                                         ; $684f: $34
	db $ec                                           ; $6850: $ec
	ld d, [hl]                                       ; $6851: $56
	xor b                                            ; $6852: $a8
	ret                                              ; $6853: $c9


	inc [hl]                                         ; $6854: $34
	db $ec                                           ; $6855: $ec
	xor $f0                                          ; $6856: $ee $f0
	ld e, d                                          ; $6858: $5a
	ld c, b                                          ; $6859: $48
	and b                                            ; $685a: $a0
	ld h, h                                          ; $685b: $64
	jr c, jr_090_68c2                                ; $685c: $38 $64

	jr c, jr_090_680c                                ; $685e: $38 $ac

	pop af                                           ; $6860: $f1
	ld e, a                                          ; $6861: $5f
	dec sp                                           ; $6862: $3b
	adc [hl]                                         ; $6863: $8e
	ld d, b                                          ; $6864: $50
	ld a, [hl-]                                      ; $6865: $3a
	jr c, jr_090_68b2                                ; $6866: $38 $4a

	ld d, l                                          ; $6868: $55
	ld c, l                                          ; $6869: $4d
	dec a                                            ; $686a: $3d
	ld d, d                                          ; $686b: $52
	ld e, [hl]                                       ; $686c: $5e
	and b                                            ; $686d: $a0
	ld [hl-], a                                      ; $686e: $32
	pop af                                           ; $686f: $f1
	ld [hl+], a                                      ; $6870: $22
	pop af                                           ; $6871: $f1
	daa                                              ; $6872: $27
	pop af                                           ; $6873: $f1
	ld [hl+], a                                      ; $6874: $22
	pop af                                           ; $6875: $f1
	daa                                              ; $6876: $27
	inc sp                                           ; $6877: $33
	inc de                                           ; $6878: $13
	sbc a                                            ; $6879: $9f
	pop af                                           ; $687a: $f1
	ld [hl], a                                       ; $687b: $77
	ld b, a                                          ; $687c: $47
	ldh a, [c]                                       ; $687d: $f2
	dec hl                                           ; $687e: $2b
	push af                                          ; $687f: $f5
	dec de                                           ; $6880: $1b
	ld a, $3f                                        ; $6881: $3e $3f
	jr c, jr_090_68d3                                ; $6883: $38 $4e

	ld b, d                                          ; $6885: $42
	ld c, e                                          ; $6886: $4b
	inc de                                           ; $6887: $13
	pop af                                           ; $6888: $f1
	add d                                            ; $6889: $82
	inc a                                            ; $688a: $3c
	ld a, [hl-]                                      ; $688b: $3a
	ld b, l                                          ; $688c: $45
	add hl, sp                                       ; $688d: $39
	ld c, d                                          ; $688e: $4a
	ld d, c                                          ; $688f: $51
	and b                                            ; $6890: $a0
	ld [hl-], a                                      ; $6891: $32
	pop af                                           ; $6892: $f1
	ld [hl+], a                                      ; $6893: $22
	pop af                                           ; $6894: $f1
	daa                                              ; $6895: $27
	pop af                                           ; $6896: $f1
	ld [hl+], a                                      ; $6897: $22
	pop af                                           ; $6898: $f1
	daa                                              ; $6899: $27
	inc sp                                           ; $689a: $33
	inc de                                           ; $689b: $13
	ld [hl], a                                       ; $689c: $77
	dec sp                                           ; $689d: $3b
	dec a                                            ; $689e: $3d
	pop af                                           ; $689f: $f1
	ld c, e                                          ; $68a0: $4b
	ldh a, [$3e]                                     ; $68a1: $f0 $3e
	ld b, a                                          ; $68a3: $47
	ldh a, [$a6]                                     ; $68a4: $f0 $a6
	ld e, c                                          ; $68a6: $59
	ldh a, [$32]                                     ; $68a7: $f0 $32
	ld d, e                                          ; $68a9: $53
	db $f4                                           ; $68aa: $f4
	db $e3                                           ; $68ab: $e3
	ld d, l                                          ; $68ac: $55
	inc de                                           ; $68ad: $13
	pop af                                           ; $68ae: $f1
	ld a, [$79fa]                                    ; $68af: $fa $fa $79

jr_090_68b2:
	ld a, $3f                                        ; $68b2: $3e $3f
	ld h, h                                          ; $68b4: $64
	ld d, a                                          ; $68b5: $57
	ld d, d                                          ; $68b6: $52
	ld d, c                                          ; $68b7: $51
	and b                                            ; $68b8: $a0
	ld [hl-], a                                      ; $68b9: $32
	pop af                                           ; $68ba: $f1
	ld [hl+], a                                      ; $68bb: $22
	pop af                                           ; $68bc: $f1
	daa                                              ; $68bd: $27
	pop af                                           ; $68be: $f1
	ld [hl+], a                                      ; $68bf: $22
	pop af                                           ; $68c0: $f1
	daa                                              ; $68c1: $27

jr_090_68c2:
	inc sp                                           ; $68c2: $33
	inc de                                           ; $68c3: $13
	ldh a, [$aa]                                     ; $68c4: $f0 $aa
	adc c                                            ; $68c6: $89
	adc a                                            ; $68c7: $8f
	ld b, a                                          ; $68c8: $47
	ldh a, [c]                                       ; $68c9: $f2
	dec hl                                           ; $68ca: $2b
	sub [hl]                                         ; $68cb: $96
	ld h, d                                          ; $68cc: $62
	pop af                                           ; $68cd: $f1
	add hl, sp                                       ; $68ce: $39
	ld l, h                                          ; $68cf: $6c
	dec a                                            ; $68d0: $3d
	jr c, jr_090_691c                                ; $68d1: $38 $49

jr_090_68d3:
	ld c, b                                          ; $68d3: $48
	and b                                            ; $68d4: $a0
	ld [hl-], a                                      ; $68d5: $32
	pop af                                           ; $68d6: $f1
	ld [hl+], a                                      ; $68d7: $22
	pop af                                           ; $68d8: $f1
	daa                                              ; $68d9: $27
	pop af                                           ; $68da: $f1
	ld [hl+], a                                      ; $68db: $22
	pop af                                           ; $68dc: $f1
	daa                                              ; $68dd: $27
	inc sp                                           ; $68de: $33
	inc de                                           ; $68df: $13
	ldh a, [$f8]                                     ; $68e0: $f0 $f8
	ld c, e                                          ; $68e2: $4b
	ld [hl], l                                       ; $68e3: $75
	ld e, c                                          ; $68e4: $59
	ldh a, [c]                                       ; $68e5: $f2
	jr jr_090_6941                                   ; $68e6: $18 $59

	or $ea                                           ; $68e8: $f6 $ea
	ld h, d                                          ; $68ea: $62
	inc de                                           ; $68eb: $13
	ldh a, [hLCDCIntHandlerIdx]                                     ; $68ec: $f0 $81
	pop af                                           ; $68ee: $f1
	xor l                                            ; $68ef: $ad
	ld a, $3f                                        ; $68f0: $3e $3f
	jr c, jr_090_6942                                ; $68f2: $38 $4e

	ld b, l                                          ; $68f4: $45
	add hl, sp                                       ; $68f5: $39
	ld c, d                                          ; $68f6: $4a
	ld d, c                                          ; $68f7: $51
	and b                                            ; $68f8: $a0
	ld [hl-], a                                      ; $68f9: $32
	pop af                                           ; $68fa: $f1
	ld [hl+], a                                      ; $68fb: $22
	pop af                                           ; $68fc: $f1
	daa                                              ; $68fd: $27
	pop af                                           ; $68fe: $f1
	ld [hl+], a                                      ; $68ff: $22
	pop af                                           ; $6900: $f1
	daa                                              ; $6901: $27
	inc sp                                           ; $6902: $33
	inc de                                           ; $6903: $13
	ldh a, [$9b]                                     ; $6904: $f0 $9b
	jr c, jr_090_6941                                ; $6906: $38 $39

	ld h, c                                          ; $6908: $61
	ld b, a                                          ; $6909: $47
	ld h, a                                          ; $690a: $67
	ldh a, [rOBP0]                                   ; $690b: $f0 $48
	ld h, d                                          ; $690d: $62
	ldh a, [c]                                       ; $690e: $f2
	rlca                                             ; $690f: $07
	ld d, h                                          ; $6910: $54
	ld d, c                                          ; $6911: $51
	ld c, c                                          ; $6912: $49
	inc de                                           ; $6913: $13
	ld [hl], a                                       ; $6914: $77
	ld h, e                                          ; $6915: $63
	ld c, l                                          ; $6916: $4d
	ld d, d                                          ; $6917: $52
	ld d, c                                          ; $6918: $51
	and b                                            ; $6919: $a0
	ld [hl-], a                                      ; $691a: $32
	pop af                                           ; $691b: $f1

jr_090_691c:
	ld [hl+], a                                      ; $691c: $22
	pop af                                           ; $691d: $f1
	daa                                              ; $691e: $27
	pop af                                           ; $691f: $f1
	ld [hl+], a                                      ; $6920: $22
	pop af                                           ; $6921: $f1
	daa                                              ; $6922: $27
	inc sp                                           ; $6923: $33
	ldh a, [$8e]                                     ; $6924: $f0 $8e
	ldh a, [$27]                                     ; $6926: $f0 $27
	ld c, b                                          ; $6928: $48
	xor h                                            ; $6929: $ac
	ld c, d                                          ; $692a: $4a
	ld c, e                                          ; $692b: $4b
	inc [hl]                                         ; $692c: $34
	pop af                                           ; $692d: $f1
	ld e, a                                          ; $692e: $5f
	ld e, h                                          ; $692f: $5c
	pop af                                           ; $6930: $f1
	ld h, c                                          ; $6931: $61
	ld e, h                                          ; $6932: $5c
	ldh a, [$75]                                     ; $6933: $f0 $75
	db $f4                                           ; $6935: $f4
	cp $62                                           ; $6936: $fe $62
	ldh a, [c]                                       ; $6938: $f2
	ld e, l                                          ; $6939: $5d
	ldh a, [$be]                                     ; $693a: $f0 $be
	ld b, l                                          ; $693c: $45
	and b                                            ; $693d: $a0
	inc a                                            ; $693e: $3c
	ld a, $54                                        ; $693f: $3e $54

jr_090_6941:
	ld d, d                                          ; $6941: $52

jr_090_6942:
	ld d, a                                          ; $6942: $57
	ld d, d                                          ; $6943: $52
	ld a, $3d                                        ; $6944: $3e $3d
	xor b                                            ; $6946: $a8
	ld c, d                                          ; $6947: $4a
	ld c, e                                          ; $6948: $4b
	and b                                            ; $6949: $a0
	ld [hl], b                                       ; $694a: $70
	inc [hl]                                         ; $694b: $34
	ld [hl], b                                       ; $694c: $70
	ld [hl], c                                       ; $694d: $71
	ld b, c                                          ; $694e: $41
	ld c, h                                          ; $694f: $4c
	and b                                            ; $6950: $a0
	cpl                                              ; $6951: $2f
	ld b, e                                          ; $6952: $43
	xor $10                                          ; $6953: $ee $10
	and b                                            ; $6955: $a0
	pop af                                           ; $6956: $f1
	ld [hl-], a                                      ; $6957: $32
	dec sp                                           ; $6958: $3b
	ccf                                              ; $6959: $3f
	ld c, [hl]                                       ; $695a: $4e
	ld b, d                                          ; $695b: $42
	and c                                            ; $695c: $a1
	cpl                                              ; $695d: $2f
	ld b, e                                          ; $695e: $43
	ld c, b                                          ; $695f: $48
	ld [hl+], a                                      ; $6960: $22
	ldh a, [$f8]                                     ; $6961: $f0 $f8
	ld c, e                                          ; $6963: $4b
	db $ed                                           ; $6964: $ed
	sbc a                                            ; $6965: $9f
	xor e                                            ; $6966: $ab
	inc hl                                           ; $6967: $23
	ldh a, [c]                                       ; $6968: $f2
	ld h, l                                          ; $6969: $65
	pop af                                           ; $696a: $f1
	ld a, d                                          ; $696b: $7a
	ld a, [hl-]                                      ; $696c: $3a
	ld b, c                                          ; $696d: $41
	ld b, h                                          ; $696e: $44
	ld c, b                                          ; $696f: $48
	and b                                            ; $6970: $a0
	ld e, [hl]                                       ; $6971: $5e
	ld [hl], $f0                                     ; $6972: $36 $f0
	dec a                                            ; $6974: $3d
	ldh a, [rAUD3ENA]                                ; $6975: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $6977: $f0 $1a
	xor l                                            ; $6979: $ad
	ld e, b                                          ; $697a: $58
	inc [hl]                                         ; $697b: $34
	ldh a, [rWY]                                     ; $697c: $f0 $4a
	ld e, c                                          ; $697e: $59
	ld l, c                                          ; $697f: $69
	ld b, d                                          ; $6980: $42
	di                                               ; $6981: $f3
	ld [$81f0], sp                                   ; $6982: $08 $f0 $81
	ld b, l                                          ; $6985: $45
	and b                                            ; $6986: $a0
	cpl                                              ; $6987: $2f
	ld b, e                                          ; $6988: $43
	ld b, [hl]                                       ; $6989: $46
	inc [hl]                                         ; $698a: $34
	ld b, [hl]                                       ; $698b: $46
	ld [hl], h                                       ; $698c: $74
	and b                                            ; $698d: $a0
	ld b, [hl]                                       ; $698e: $46
	dec sp                                           ; $698f: $3b
	and d                                            ; $6990: $a2
	cpl                                              ; $6991: $2f
	ld b, e                                          ; $6992: $43
	db $eb                                           ; $6993: $eb
	rst FarCall                                          ; $6994: $f7
	and c                                            ; $6995: $a1
	ld b, [hl]                                       ; $6996: $46
	ld b, b                                          ; $6997: $40
	ld d, h                                          ; $6998: $54
	scf                                              ; $6999: $37
	inc de                                           ; $699a: $13
	ldh a, [$5c]                                     ; $699b: $f0 $5c
	ld b, b                                          ; $699d: $40
	add hl, sp                                       ; $699e: $39
	ld a, [hl-]                                      ; $699f: $3a
	add h                                            ; $69a0: $84
	ld d, e                                          ; $69a1: $53
	ld c, b                                          ; $69a2: $48
	add hl, bc                                       ; $69a3: $09
	cpl                                              ; $69a4: $2f
	ld b, e                                          ; $69a5: $43
	ld b, [hl]                                       ; $69a6: $46
	inc [hl]                                         ; $69a7: $34
	ldh a, [$98]                                     ; $69a8: $f0 $98
	inc a                                            ; $69aa: $3c
	inc a                                            ; $69ab: $3c
	ld d, b                                          ; $69ac: $50
	ld d, d                                          ; $69ad: $52
	ld c, l                                          ; $69ae: $4d
	ccf                                              ; $69af: $3f
	ld c, [hl]                                       ; $69b0: $4e
	sub a                                            ; $69b1: $97
	and b                                            ; $69b2: $a0
	pop af                                           ; $69b3: $f1
	jp hl                                            ; $69b4: $e9


	ld e, l                                          ; $69b5: $5d
	ld b, a                                          ; $69b6: $47
	ld [$a2a9], a                                    ; $69b7: $ea $a9 $a2
	cpl                                              ; $69ba: $2f
	sub c                                            ; $69bb: $91

jr_090_69bc:
	ldh a, [$59]                                     ; $69bc: $f0 $59
	ld b, h                                          ; $69be: $44
	and d                                            ; $69bf: $a2
	cpl                                              ; $69c0: $2f
	ld b, e                                          ; $69c1: $43
	ld h, h                                          ; $69c2: $64
	jr c, jr_090_69fc                                ; $69c3: $38 $37

	ld l, e                                          ; $69c5: $6b
	ld l, [hl]                                       ; $69c6: $6e
	dec sp                                           ; $69c7: $3b
	ccf                                              ; $69c8: $3f
	ld c, [hl]                                       ; $69c9: $4e
	scf                                              ; $69ca: $37
	inc de                                           ; $69cb: $13
	pop af                                           ; $69cc: $f1
	jr nc, @+$73                                     ; $69cd: $30 $71

	ld a, [hl-]                                      ; $69cf: $3a
	jr c, jr_090_6a0e                                ; $69d0: $38 $3c

	and d                                            ; $69d2: $a2
	ld l, e                                          ; $69d3: $6b
	ld b, h                                          ; $69d4: $44
	pop af                                           ; $69d5: $f1
	or e                                             ; $69d6: $b3
	ld h, c                                          ; $69d7: $61
	ld d, [hl]                                       ; $69d8: $56
	ld b, c                                          ; $69d9: $41
	scf                                              ; $69da: $37
	rla                                              ; $69db: $17
	ldh a, [$f7]                                     ; $69dc: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $69de: $f0 $17
	ld b, d                                          ; $69e0: $42
	sbc [hl]                                         ; $69e1: $9e
	ld c, d                                          ; $69e2: $4a
	inc de                                           ; $69e3: $13
	pop af                                           ; $69e4: $f1
	inc h                                            ; $69e5: $24
	adc e                                            ; $69e6: $8b
	add b                                            ; $69e7: $80
	ld e, l                                          ; $69e8: $5d
	ccf                                              ; $69e9: $3f
	ld b, c                                          ; $69ea: $41
	db $ec                                           ; $69eb: $ec
	ret c                                            ; $69ec: $d8

	sub a                                            ; $69ed: $97
	and b                                            ; $69ee: $a0
	halt                                             ; $69ef: $76
	ldh a, [rSTAT]                                   ; $69f0: $f0 $41
	ld b, a                                          ; $69f2: $47
	ld a, [$fbc4]                                    ; $69f3: $fa $c4 $fb
	call nc, $eef4                                   ; $69f6: $d4 $f4 $ee
	ld e, a                                          ; $69f9: $5f
	add hl, sp                                       ; $69fa: $39
	dec sp                                           ; $69fb: $3b

jr_090_69fc:
	ccf                                              ; $69fc: $3f
	inc de                                           ; $69fd: $13
	ld b, d                                          ; $69fe: $42
	inc a                                            ; $69ff: $3c
	ld [hl], $f0                                     ; $6a00: $36 $f0
	ld hl, $23f0                                     ; $6a02: $21 $f0 $23
	jr c, jr_090_6a62                                ; $6a05: $38 $5b

	ld d, [hl]                                       ; $6a07: $56
	ld c, h                                          ; $6a08: $4c
	add l                                            ; $6a09: $85
	inc a                                            ; $6a0a: $3c
	and b                                            ; $6a0b: $a0
	ret                                              ; $6a0c: $c9


	inc de                                           ; $6a0d: $13

jr_090_6a0e:
	ld b, b                                          ; $6a0e: $40
	ld d, h                                          ; $6a0f: $54
	ld b, d                                          ; $6a10: $42
	pop af                                           ; $6a11: $f1
	jr z, @-$0e                                      ; $6a12: $28 $f0

	ld b, h                                          ; $6a14: $44
	ld d, d                                          ; $6a15: $52
	ld c, d                                          ; $6a16: $4a
	ld a, b                                          ; $6a17: $78
	jr c, jr_090_69bc                                ; $6a18: $38 $a2

	cpl                                              ; $6a1a: $2f
	ldh a, [$71]                                     ; $6a1b: $f0 $71
	jr c, @+$3e                                      ; $6a1d: $38 $3c

	ld d, b                                          ; $6a1f: $50
	inc [hl]                                         ; $6a20: $34
	jr c, jr_090_6a91                                ; $6a21: $38 $6e

	ld b, h                                          ; $6a23: $44
	ld c, b                                          ; $6a24: $48
	add hl, bc                                       ; $6a25: $09
	ld l, e                                          ; $6a26: $6b
	add d                                            ; $6a27: $82
	dec sp                                           ; $6a28: $3b
	ccf                                              ; $6a29: $3f
	ld c, [hl]                                       ; $6a2a: $4e
	ld b, d                                          ; $6a2b: $42
	scf                                              ; $6a2c: $37
	inc de                                           ; $6a2d: $13
	pop af                                           ; $6a2e: $f1
	sbc $3b                                          ; $6a2f: $de $3b
	ccf                                              ; $6a31: $3f
	jr c, jr_090_6a82                                ; $6a32: $38 $4e

	add h                                            ; $6a34: $84
	ld h, d                                          ; $6a35: $62
	inc de                                           ; $6a36: $13
	ld [hl], d                                       ; $6a37: $72
	di                                               ; $6a38: $f3
	ld b, d                                          ; $6a39: $42
	ccf                                              ; $6a3a: $3f
	ccf                                              ; $6a3b: $3f
	ld h, h                                          ; $6a3c: $64
	ld e, l                                          ; $6a3d: $5d
	ld a, [hl-]                                      ; $6a3e: $3a
	jr c, jr_090_6aa4                                ; $6a3f: $38 $63

	scf                                              ; $6a41: $37
	inc de                                           ; $6a42: $13
	ld h, a                                          ; $6a43: $67
	ld d, l                                          ; $6a44: $55
	ld h, e                                          ; $6a45: $63
	ld b, l                                          ; $6a46: $45
	and d                                            ; $6a47: $a2
	cpl                                              ; $6a48: $2f
	ld b, e                                          ; $6a49: $43
	ld b, [hl]                                       ; $6a4a: $46
	inc [hl]                                         ; $6a4b: $34
	ret                                              ; $6a4c: $c9


	ld c, b                                          ; $6a4d: $48
	and b                                            ; $6a4e: $a0
	ld b, [hl]                                       ; $6a4f: $46
	ld a, [hl-]                                      ; $6a50: $3a
	dec a                                            ; $6a51: $3d
	ldh a, [rSTAT]                                   ; $6a52: $f0 $41
	scf                                              ; $6a54: $37
	rla                                              ; $6a55: $17
	add a                                            ; $6a56: $87
	db $f4                                           ; $6a57: $f4
	inc hl                                           ; $6a58: $23
	ld c, d                                          ; $6a59: $4a
	xor $08                                          ; $6a5a: $ee $08
	ld b, d                                          ; $6a5c: $42
	add h                                            ; $6a5d: $84
	ld h, d                                          ; $6a5e: $62
	ldh a, [c]                                       ; $6a5f: $f2
	ret nz                                           ; $6a60: $c0

	add hl, sp                                       ; $6a61: $39

jr_090_6a62:
	ld a, [hl-]                                      ; $6a62: $3a
	ld b, c                                          ; $6a63: $41
	ccf                                              ; $6a64: $3f
	inc de                                           ; $6a65: $13
	di                                               ; $6a66: $f3
	rst GetHLinHL                                          ; $6a67: $cf
	di                                               ; $6a68: $f3
	ret nc                                           ; $6a69: $d0

	ld b, l                                          ; $6a6a: $45
	and d                                            ; $6a6b: $a2
	ld l, e                                          ; $6a6c: $6b
	ld b, h                                          ; $6a6d: $44
	ld c, b                                          ; $6a6e: $48
	db $fc                                           ; $6a6f: $fc

jr_090_6a70:
	ld [hl], $f4                                     ; $6a70: $36 $f4
	inc hl                                           ; $6a72: $23
	ld b, d                                          ; $6a73: $42
	ld a, [hl]                                       ; $6a74: $7e
	jr c, jr_090_6a8a                                ; $6a75: $38 $13

	ld a, [$610a]                                    ; $6a77: $fa $0a $61
	ld d, [hl]                                       ; $6a7a: $56
	ld b, c                                          ; $6a7b: $41
	ld b, h                                          ; $6a7c: $44
	ld a, [hl-]                                      ; $6a7d: $3a
	dec [hl]                                         ; $6a7e: $35
	pop af                                           ; $6a7f: $f1
	dec a                                            ; $6a80: $3d
	ld d, h                                          ; $6a81: $54

jr_090_6a82:
	add hl, sp                                       ; $6a82: $39
	ld h, a                                          ; $6a83: $67
	ld e, h                                          ; $6a84: $5c
	ld a, [hl-]                                      ; $6a85: $3a
	and d                                            ; $6a86: $a2
	ld d, $ac                                        ; $6a87: $16 $ac
	ld l, e                                          ; $6a89: $6b

jr_090_6a8a:
	inc a                                            ; $6a8a: $3c
	add d                                            ; $6a8b: $82
	dec sp                                           ; $6a8c: $3b
	ccf                                              ; $6a8d: $3f
	ld l, [hl]                                       ; $6a8e: $6e
	dec sp                                           ; $6a8f: $3b
	ccf                                              ; $6a90: $3f

jr_090_6a91:
	ld b, l                                          ; $6a91: $45
	and d                                            ; $6a92: $a2
	cpl                                              ; $6a93: $2f
	ld b, e                                          ; $6a94: $43
	ld e, h                                          ; $6a95: $5c
	inc [hl]                                         ; $6a96: $34
	ldh a, [rRP]                                     ; $6a97: $f0 $56
	dec a                                            ; $6a99: $3d
	ld h, c                                          ; $6a9a: $61
	xor l                                            ; $6a9b: $ad
	ldh a, [c]                                       ; $6a9c: $f2
	ld e, c                                          ; $6a9d: $59
	jr c, jr_090_6a91                                ; $6a9e: $38 $f1

	ld b, d                                          ; $6aa0: $42
	jr c, jr_090_6afe                                ; $6aa1: $38 $5b

	ld [hl], c                                       ; $6aa3: $71

jr_090_6aa4:
	ld c, e                                          ; $6aa4: $4b
	ld c, b                                          ; $6aa5: $48
	and b                                            ; $6aa6: $a0
	ld l, e                                          ; $6aa7: $6b
	ld b, h                                          ; $6aa8: $44
	scf                                              ; $6aa9: $37
	inc de                                           ; $6aaa: $13
	ldh a, [$0c]                                     ; $6aab: $f0 $0c
	ld d, h                                          ; $6aad: $54
	ld e, [hl]                                       ; $6aae: $5e
	ld c, h                                          ; $6aaf: $4c
	add l                                            ; $6ab0: $85
	sub a                                            ; $6ab1: $97
	and d                                            ; $6ab2: $a2
	ccf                                              ; $6ab3: $3f
	ld [hl], c                                       ; $6ab4: $71
	ld e, [hl]                                       ; $6ab5: $5e
	ld b, d                                          ; $6ab6: $42
	ldh a, [rAUD4ENV]                                ; $6ab7: $f0 $21
	inc [hl]                                         ; $6ab9: $34
	ldh a, [$be]                                     ; $6aba: $f0 $be
	inc a                                            ; $6abc: $3c
	add b                                            ; $6abd: $80
	ld d, l                                          ; $6abe: $55
	adc l                                            ; $6abf: $8d
	inc de                                           ; $6ac0: $13
	ret                                              ; $6ac1: $c9


	ld b, b                                          ; $6ac2: $40
	ld d, h                                          ; $6ac3: $54
	ld b, d                                          ; $6ac4: $42
	pop af                                           ; $6ac5: $f1
	jr z, @-$0e                                      ; $6ac6: $28 $f0

	ld b, h                                          ; $6ac8: $44
	ld d, d                                          ; $6ac9: $52
	ld c, d                                          ; $6aca: $4a
	ld a, b                                          ; $6acb: $78
	jr c, jr_090_6a70                                ; $6acc: $38 $a2

	add hl, bc                                       ; $6ace: $09
	db $eb                                           ; $6acf: $eb
	rst FarCall                                          ; $6ad0: $f7
	xor c                                            ; $6ad1: $a9
	ld d, h                                          ; $6ad2: $54
	ld b, c                                          ; $6ad3: $41
	ld a, [hl-]                                      ; $6ad4: $3a
	ldh a, [$28]                                     ; $6ad5: $f0 $28
	ld b, a                                          ; $6ad7: $47
	pop af                                           ; $6ad8: $f1
	ld bc, $4df0                                     ; $6ad9: $01 $f0 $4d
	sub h                                            ; $6adc: $94
	ld a, $3f                                        ; $6add: $3e $3f
	and b                                            ; $6adf: $a0
	cpl                                              ; $6ae0: $2f
	ld [hl-], a                                      ; $6ae1: $32
	ld l, e                                          ; $6ae2: $6b
	ld h, d                                          ; $6ae3: $62
	ldh a, [rAUDVOL]                                 ; $6ae4: $f0 $24
	db $ec                                           ; $6ae6: $ec
	ld d, $36                                        ; $6ae7: $16 $36
	inc sp                                           ; $6ae9: $33
	add hl, bc                                       ; $6aea: $09
	cpl                                              ; $6aeb: $2f
	add sp, $0c                                      ; $6aec: $e8 $0c
	add hl, bc                                       ; $6aee: $09
	cpl                                              ; $6aef: $2f
	add sp, $27                                      ; $6af0: $e8 $27
	add hl, bc                                       ; $6af2: $09
	cpl                                              ; $6af3: $2f
	ld [hl-], a                                      ; $6af4: $32
	ldh a, [rSVBK]                                   ; $6af5: $f0 $70
	ld c, d                                          ; $6af7: $4a
	ldh a, [c]                                       ; $6af8: $f2
	rrca                                             ; $6af9: $0f
	ld h, d                                          ; $6afa: $62
	di                                               ; $6afb: $f3
	or b                                             ; $6afc: $b0
	dec sp                                           ; $6afd: $3b

jr_090_6afe:
	ccf                                              ; $6afe: $3f
	jr c, jr_090_6b4f                                ; $6aff: $38 $4e

	xor b                                            ; $6b01: $a8
	xor a                                            ; $6b02: $af
	or l                                             ; $6b03: $b5
	and e                                            ; $6b04: $a3
	cpl                                              ; $6b05: $2f
	ld [hl-], a                                      ; $6b06: $32
	db $ed                                           ; $6b07: $ed
	dec de                                           ; $6b08: $1b
	ld c, c                                          ; $6b09: $49
	inc de                                           ; $6b0a: $13
	jp hl                                            ; $6b0b: $e9


	ld [hl], h                                       ; $6b0c: $74
	ld c, e                                          ; $6b0d: $4b
	inc de                                           ; $6b0e: $13
	adc e                                            ; $6b0f: $8b
	ld e, h                                          ; $6b10: $5c
	db $ec                                           ; $6b11: $ec
	ret c                                            ; $6b12: $d8

	xor b                                            ; $6b13: $a8
	xor a                                            ; $6b14: $af
	or l                                             ; $6b15: $b5
	and e                                            ; $6b16: $a3
	cpl                                              ; $6b17: $2f
	ld [hl-], a                                      ; $6b18: $32
	db $eb                                           ; $6b19: $eb
	add e                                            ; $6b1a: $83
	ldh a, [$2c]                                     ; $6b1b: $f0 $2c
	ld b, d                                          ; $6b1d: $42
	inc de                                           ; $6b1e: $13
	ldh a, [$74]                                     ; $6b1f: $f0 $74
	ldh a, [$7a]                                     ; $6b21: $f0 $7a
	ld d, e                                          ; $6b23: $53
	adc e                                            ; $6b24: $8b
	ld l, h                                          ; $6b25: $6c
	xor b                                            ; $6b26: $a8
	xor a                                            ; $6b27: $af
	or l                                             ; $6b28: $b5
	and e                                            ; $6b29: $a3
	cpl                                              ; $6b2a: $2f
	ld [hl-], a                                      ; $6b2b: $32
	ldh a, [c]                                       ; $6b2c: $f2
	ld c, h                                          ; $6b2d: $4c
	or $36                                           ; $6b2e: $f6 $36
	ld l, c                                          ; $6b30: $69
	ldh a, [rSC]                                     ; $6b31: $f0 $02
	ld h, l                                          ; $6b33: $65
	sbc b                                            ; $6b34: $98
	ld e, c                                          ; $6b35: $59
	ldh a, [rAUD4LEN]                                ; $6b36: $f0 $20
	ld e, c                                          ; $6b38: $59
	ld h, d                                          ; $6b39: $62
	inc de                                           ; $6b3a: $13
	db $ed                                           ; $6b3b: $ed
	ld bc, $4e38                                     ; $6b3c: $01 $38 $4e
	xor b                                            ; $6b3f: $a8
	xor a                                            ; $6b40: $af
	or l                                             ; $6b41: $b5
	xor b                                            ; $6b42: $a8
	ld l, e                                          ; $6b43: $6b
	ld b, a                                          ; $6b44: $47
	pop af                                           ; $6b45: $f1
	sbc l                                            ; $6b46: $9d
	xor $1f                                          ; $6b47: $ee $1f
	ld b, h                                          ; $6b49: $44
	ld [hl], $33                                     ; $6b4a: $36 $33
	add hl, bc                                       ; $6b4c: $09
	cpl                                              ; $6b4d: $2f
	ld [hl-], a                                      ; $6b4e: $32

jr_090_6b4f:
	db $ed                                           ; $6b4f: $ed
	ld c, b                                          ; $6b50: $48
	ld [hl], l                                       ; $6b51: $75
	ld e, c                                          ; $6b52: $59
	ldh a, [$f1]                                     ; $6b53: $f0 $f1
	ld e, c                                          ; $6b55: $59
	ld h, d                                          ; $6b56: $62
	inc de                                           ; $6b57: $13
	db $ed                                           ; $6b58: $ed
	ld bc, $4e38                                     ; $6b59: $01 $38 $4e
	xor b                                            ; $6b5c: $a8
	xor a                                            ; $6b5d: $af
	or l                                             ; $6b5e: $b5
	xor b                                            ; $6b5f: $a8
	ld l, e                                          ; $6b60: $6b
	ld b, a                                          ; $6b61: $47
	pop af                                           ; $6b62: $f1
	sbc l                                            ; $6b63: $9d
	xor $1f                                          ; $6b64: $ee $1f
	ld b, h                                          ; $6b66: $44
	ld [hl], $33                                     ; $6b67: $36 $33
	add hl, bc                                       ; $6b69: $09
	cpl                                              ; $6b6a: $2f
	ld [hl-], a                                      ; $6b6b: $32
	add h                                            ; $6b6c: $84
	pop af                                           ; $6b6d: $f1
	rst AddAOntoHL                                          ; $6b6e: $ef
	ei                                               ; $6b6f: $fb
	ld l, $f1                                        ; $6b70: $2e $f1
	jp hl                                            ; $6b72: $e9


	ld b, d                                          ; $6b73: $42
	ldh a, [$f2]                                     ; $6b74: $f0 $f2
	ld e, c                                          ; $6b76: $59
	ldh a, [$03]                                     ; $6b77: $f0 $03
	ld h, d                                          ; $6b79: $62
	inc de                                           ; $6b7a: $13
	db $ed                                           ; $6b7b: $ed
	ld bc, $4e38                                     ; $6b7c: $01 $38 $4e
	xor b                                            ; $6b7f: $a8
	xor a                                            ; $6b80: $af
	or l                                             ; $6b81: $b5
	xor b                                            ; $6b82: $a8
	ldh a, [$5d]                                     ; $6b83: $f0 $5d
	ld h, e                                          ; $6b85: $63
	dec sp                                           ; $6b86: $3b
	dec a                                            ; $6b87: $3d
	pop af                                           ; $6b88: $f1
	ld b, [hl]                                       ; $6b89: $46
	ld b, h                                          ; $6b8a: $44
	ld a, [hl-]                                      ; $6b8b: $3a
	ld [hl], h                                       ; $6b8c: $74
	and e                                            ; $6b8d: $a3
	cpl                                              ; $6b8e: $2f
	ld [hl-], a                                      ; $6b8f: $32
	ldh a, [c]                                       ; $6b90: $f2
	jp nc, $adf2                                     ; $6b91: $d2 $f2 $ad

	adc c                                            ; $6b94: $89
	sbc a                                            ; $6b95: $9f
	inc a                                            ; $6b96: $3c
	xor h                                            ; $6b97: $ac
	di                                               ; $6b98: $f3
	db $e4                                           ; $6b99: $e4
	di                                               ; $6b9a: $f3
	ld e, [hl]                                       ; $6b9b: $5e
	add a                                            ; $6b9c: $87
	adc c                                            ; $6b9d: $89
	ld b, a                                          ; $6b9e: $47
	pop af                                           ; $6b9f: $f1
	dec hl                                           ; $6ba0: $2b
	ld c, a                                          ; $6ba1: $4f
	add hl, sp                                       ; $6ba2: $39
	ld c, c                                          ; $6ba3: $49
	inc de                                           ; $6ba4: $13
	ldh a, [$a4]                                     ; $6ba5: $f0 $a4
	ld e, [hl]                                       ; $6ba7: $5e
	ccf                                              ; $6ba8: $3f
	jr c, jr_090_6bf9                                ; $6ba9: $38 $4e

	xor b                                            ; $6bab: $a8
	xor a                                            ; $6bac: $af
	or l                                             ; $6bad: $b5
	and e                                            ; $6bae: $a3
	cpl                                              ; $6baf: $2f
	ld [hl-], a                                      ; $6bb0: $32
	db $ed                                           ; $6bb1: $ed
	ld h, a                                          ; $6bb2: $67
	ld d, e                                          ; $6bb3: $53
	adc e                                            ; $6bb4: $8b
	ld e, h                                          ; $6bb5: $5c
	ld a, [hl-]                                      ; $6bb6: $3a
	ld b, d                                          ; $6bb7: $42
	ld c, d                                          ; $6bb8: $4a
	xor h                                            ; $6bb9: $ac
	ldh a, [c]                                       ; $6bba: $f2
	rst $38                                          ; $6bbb: $ff
	di                                               ; $6bbc: $f3
	ld [hl+], a                                      ; $6bbd: $22
	ld e, b                                          ; $6bbe: $58
	ld b, c                                          ; $6bbf: $41
	ld b, a                                          ; $6bc0: $47
	ld a, [hl-]                                      ; $6bc1: $3a
	ld c, [hl]                                       ; $6bc2: $4e
	ld d, h                                          ; $6bc3: $54
	ld c, c                                          ; $6bc4: $49
	ld c, a                                          ; $6bc5: $4f
	inc de                                           ; $6bc6: $13
	ldh a, [$a4]                                     ; $6bc7: $f0 $a4
	ld e, [hl]                                       ; $6bc9: $5e
	ccf                                              ; $6bca: $3f
	jr c, jr_090_6c1b                                ; $6bcb: $38 $4e

	xor b                                            ; $6bcd: $a8
	xor a                                            ; $6bce: $af
	or l                                             ; $6bcf: $b5
	and e                                            ; $6bd0: $a3
	cpl                                              ; $6bd1: $2f
	ld [hl-], a                                      ; $6bd2: $32
	xor $09                                          ; $6bd3: $ee $09
	ldh a, [rSVBK]                                   ; $6bd5: $f0 $70
	ld c, e                                          ; $6bd7: $4b
	xor h                                            ; $6bd8: $ac
	pop af                                           ; $6bd9: $f1
	call $cff0                                       ; $6bda: $cd $f0 $cf
	db $ec                                           ; $6bdd: $ec
	ld e, [hl]                                       ; $6bde: $5e

jr_090_6bdf:
	ld c, c                                          ; $6bdf: $49
	inc de                                           ; $6be0: $13
	db $f4                                           ; $6be1: $f4
	ld d, [hl]                                       ; $6be2: $56
	jr c, jr_090_6bdf                                ; $6be3: $38 $fa

	reti                                             ; $6be5: $d9


	ld d, e                                          ; $6be6: $53
	ld d, a                                          ; $6be7: $57
	ld d, e                                          ; $6be8: $53
	ld b, [hl]                                       ; $6be9: $46
	ld c, [hl]                                       ; $6bea: $4e
	xor b                                            ; $6beb: $a8
	xor a                                            ; $6bec: $af
	or l                                             ; $6bed: $b5
	and e                                            ; $6bee: $a3
	cpl                                              ; $6bef: $2f
	ld [hl-], a                                      ; $6bf0: $32

Jump_090_6bf1:
	ldh a, [rOBP0]                                   ; $6bf1: $f0 $48
	ldh a, [$2c]                                     ; $6bf3: $f0 $2c
	ldh a, [rLY]                                     ; $6bf5: $f0 $44
	db $ec                                           ; $6bf7: $ec
	add hl, hl                                       ; $6bf8: $29

jr_090_6bf9:
	xor b                                            ; $6bf9: $a8
	xor a                                            ; $6bfa: $af
	or l                                             ; $6bfb: $b5
	and e                                            ; $6bfc: $a3
	cpl                                              ; $6bfd: $2f
	ld [hl-], a                                      ; $6bfe: $32
	pop af                                           ; $6bff: $f1
	ld h, l                                          ; $6c00: $65

jr_090_6c01:
	ld h, d                                          ; $6c01: $62
	ld [hl], d                                       ; $6c02: $72
	ld c, [hl]                                       ; $6c03: $4e
	ld b, d                                          ; $6c04: $42
	ld d, e                                          ; $6c05: $53
	adc e                                            ; $6c06: $8b
	ld e, h                                          ; $6c07: $5c
	xor b                                            ; $6c08: $a8
	xor a                                            ; $6c09: $af
	or l                                             ; $6c0a: $b5
	and e                                            ; $6c0b: $a3
	cpl                                              ; $6c0c: $2f
	ld [hl-], a                                      ; $6c0d: $32
	pop af                                           ; $6c0e: $f1
	jr z, jr_090_6c01                                ; $6c0f: $28 $f0

	ld b, h                                          ; $6c11: $44
	ld c, d                                          ; $6c12: $4a
	ld b, d                                          ; $6c13: $42
	ld b, c                                          ; $6c14: $41
	ldh a, [rKEY1]                                   ; $6c15: $f0 $4d
	ld d, a                                          ; $6c17: $57
	ld d, c                                          ; $6c18: $51
	ld c, [hl]                                       ; $6c19: $4e
	inc de                                           ; $6c1a: $13

jr_090_6c1b:
	sbc d                                            ; $6c1b: $9a
	ld d, e                                          ; $6c1c: $53
	adc e                                            ; $6c1d: $8b
	ld e, h                                          ; $6c1e: $5c
	xor b                                            ; $6c1f: $a8
	xor a                                            ; $6c20: $af
	or l                                             ; $6c21: $b5
	and e                                            ; $6c22: $a3
	cpl                                              ; $6c23: $2f
	ld [hl-], a                                      ; $6c24: $32
	db $ed                                           ; $6c25: $ed
	ld [bc], a                                       ; $6c26: $02
	ld c, e                                          ; $6c27: $4b
	xor h                                            ; $6c28: $ac
	ld b, [hl]                                       ; $6c29: $46
	ld d, d                                          ; $6c2a: $52
	ld d, a                                          ; $6c2b: $57
	adc e                                            ; $6c2c: $8b
	ld e, h                                          ; $6c2d: $5c
	db $ec                                           ; $6c2e: $ec
	ret c                                            ; $6c2f: $d8

	xor b                                            ; $6c30: $a8
	xor a                                            ; $6c31: $af
	or l                                             ; $6c32: $b5
	and e                                            ; $6c33: $a3
	ld b, [hl]                                       ; $6c34: $46
	dec sp                                           ; $6c35: $3b
	xor h                                            ; $6c36: $ac
	ld c, a                                          ; $6c37: $4f
	add hl, sp                                       ; $6c38: $39
	ldh a, [c]                                       ; $6c39: $f2
	ld d, h                                          ; $6c3a: $54
	ld d, e                                          ; $6c3b: $53
	ldh a, [c]                                       ; $6c3c: $f2
	adc [hl]                                         ; $6c3d: $8e
	ldh a, [hLCDCIntHandlerIdx]                                     ; $6c3e: $f0 $81
	ld b, h                                          ; $6c40: $44
	ld c, h                                          ; $6c41: $4c
	and b                                            ; $6c42: $a0
	cpl                                              ; $6c43: $2f
	ld b, e                                          ; $6c44: $43
	db $dd                                           ; $6c45: $dd
	db $ed                                           ; $6c46: $ed
	ld d, a                                          ; $6c47: $57
	ldh a, [hDisp0_OBP0]                                     ; $6c48: $f0 $86
	ld [hl], d                                       ; $6c4a: $72
	ld b, h                                          ; $6c4b: $44
	and b                                            ; $6c4c: $a0
	xor $1f                                          ; $6c4d: $ee $1f

jr_090_6c4f:
	xor b                                            ; $6c4f: $a8
	ld h, a                                          ; $6c50: $67
	ld d, h                                          ; $6c51: $54
	ld h, a                                          ; $6c52: $67
	ld d, h                                          ; $6c53: $54
	and b                                            ; $6c54: $a0
	ld d, h                                          ; $6c55: $54
	add hl, sp                                       ; $6c56: $39
	jr c, jr_090_6c92                                ; $6c57: $38 $39

	ldh a, [c]                                       ; $6c59: $f2
	cp l                                             ; $6c5a: $bd
	jr c, @-$0d                                      ; $6c5b: $38 $f1

	jr z, jr_090_6c4f                                ; $6c5d: $28 $f0

	ld b, h                                          ; $6c5f: $44
	ld h, d                                          ; $6c60: $62
	inc de                                           ; $6c61: $13
	pop af                                           ; $6c62: $f1
	db $ed                                           ; $6c63: $ed
	pop af                                           ; $6c64: $f1
	ld h, $51                                        ; $6c65: $26 $51
	ld c, [hl]                                       ; $6c67: $4e
	ld b, d                                          ; $6c68: $42
	inc [hl]                                         ; $6c69: $34
	adc e                                            ; $6c6a: $8b
	ld e, h                                          ; $6c6b: $5c
	ld a, [hl-]                                      ; $6c6c: $3a
	ld b, d                                          ; $6c6d: $42
	ld b, l                                          ; $6c6e: $45
	and b                                            ; $6c6f: $a0
	cpl                                              ; $6c70: $2f
	ld b, e                                          ; $6c71: $43
	db $ed                                           ; $6c72: $ed
	ld d, a                                          ; $6c73: $57
	xor h                                            ; $6c74: $ac
	db $ec                                           ; $6c75: $ec
	ld c, [hl]                                       ; $6c76: $4e
	call $eea0                                       ; $6c77: $cd $a0 $ee
	rra                                              ; $6c7a: $1f
	and b                                            ; $6c7b: $a0
	cpl                                              ; $6c7c: $2f
	ld b, e                                          ; $6c7d: $43
	db $ed                                           ; $6c7e: $ed
	ld d, a                                          ; $6c7f: $57
	xor h                                            ; $6c80: $ac
	ld [$cdca], a                                    ; $6c81: $ea $ca $cd
	and b                                            ; $6c84: $a0
	ld e, e                                          ; $6c85: $5b
	ld d, [hl]                                       ; $6c86: $56
	inc [hl]                                         ; $6c87: $34
	db $ec                                           ; $6c88: $ec
	rlca                                             ; $6c89: $07
	and b                                            ; $6c8a: $a0
	ldh a, [rSCY]                                    ; $6c8b: $f0 $42
	add hl, sp                                       ; $6c8d: $39
	inc [hl]                                         ; $6c8e: $34
	db $ed                                           ; $6c8f: $ed
	ld d, a                                          ; $6c90: $57
	db $ed                                           ; $6c91: $ed

jr_090_6c92:
	ld l, h                                          ; $6c92: $6c
	ld c, h                                          ; $6c93: $4c
	and b                                            ; $6c94: $a0
	cpl                                              ; $6c95: $2f
	ld b, e                                          ; $6c96: $43
	db $ec                                           ; $6c97: $ec
	ld d, c                                          ; $6c98: $51
	pop af                                           ; $6c99: $f1
	ld c, $3b                                        ; $6c9a: $0e $3b
	ccf                                              ; $6c9c: $3f
	ld d, l                                          ; $6c9d: $55
	ld c, [hl]                                       ; $6c9e: $4e
	ld b, l                                          ; $6c9f: $45
	xor b                                            ; $6ca0: $a8
	ld b, b                                          ; $6ca1: $40
	ld d, h                                          ; $6ca2: $54
	ld b, d                                          ; $6ca3: $42
	db $ed                                           ; $6ca4: $ed
	ld a, [bc]                                       ; $6ca5: $0a
	ld c, d                                          ; $6ca6: $4a
	sbc c                                            ; $6ca7: $99
	dec sp                                           ; $6ca8: $3b
	ccf                                              ; $6ca9: $3f
	ccf                                              ; $6caa: $3f
	and b                                            ; $6cab: $a0
	cpl                                              ; $6cac: $2f
	ld b, e                                          ; $6cad: $43
	ld b, [hl]                                       ; $6cae: $46
	ld c, l                                          ; $6caf: $4d
	xor c                                            ; $6cb0: $a9
	ld e, d                                          ; $6cb1: $5a
	ld b, d                                          ; $6cb2: $42
	db $ed                                           ; $6cb3: $ed
	ld a, [bc]                                       ; $6cb4: $0a
	ld b, h                                          ; $6cb5: $44
	dec sp                                           ; $6cb6: $3b
	ld e, l                                          ; $6cb7: $5d
	xor l                                            ; $6cb8: $ad
	ld b, [hl]                                       ; $6cb9: $46
	inc [hl]                                         ; $6cba: $34
	jr c, @+$3f                                      ; $6cbb: $38 $3d

	ld c, b                                          ; $6cbd: $48
	add hl, bc                                       ; $6cbe: $09
	cpl                                              ; $6cbf: $2f
	ld b, e                                          ; $6cc0: $43
	xor $20                                          ; $6cc1: $ee $20
	and b                                            ; $6cc3: $a0
	cpl                                              ; $6cc4: $2f
	ld b, e                                          ; $6cc5: $43
	ldh a, [$5a]                                     ; $6cc6: $f0 $5a
	add l                                            ; $6cc8: $85
	ld c, b                                          ; $6cc9: $48
	inc [hl]                                         ; $6cca: $34
	jr c, jr_090_6d05                                ; $6ccb: $38 $38

	ld c, a                                          ; $6ccd: $4f
	ld b, c                                          ; $6cce: $41
	ld b, h                                          ; $6ccf: $44
	ld a, [hl-]                                      ; $6cd0: $3a
	xor l                                            ; $6cd1: $ad
	ld d, h                                          ; $6cd2: $54
	add hl, sp                                       ; $6cd3: $39
	ld l, [hl]                                       ; $6cd4: $6e
	dec sp                                           ; $6cd5: $3b
	ccf                                              ; $6cd6: $3f
	ldh a, [$f7]                                     ; $6cd7: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $6cd9: $f0 $17
	ld h, d                                          ; $6cdb: $62
	ld [hl], d                                       ; $6cdc: $72
	ld c, [hl]                                       ; $6cdd: $4e
	ld b, d                                          ; $6cde: $42
	ld c, a                                          ; $6cdf: $4f
	ld c, b                                          ; $6ce0: $48
	and b                                            ; $6ce1: $a0
	cpl                                              ; $6ce2: $2f
	ld b, e                                          ; $6ce3: $43
	xor $20                                          ; $6ce4: $ee $20
	inc [hl]                                         ; $6ce6: $34
	ld [hl], b                                       ; $6ce7: $70
	ld [hl], c                                       ; $6ce8: $71
	ld b, c                                          ; $6ce9: $41
	xor b                                            ; $6cea: $a8
	ldh a, [$e1]                                     ; $6ceb: $f0 $e1
	ldh a, [rSB]                                     ; $6ced: $f0 $01
	ld h, c                                          ; $6cef: $61
	ld d, [hl]                                       ; $6cf0: $56
	dec sp                                           ; $6cf1: $3b
	dec a                                            ; $6cf2: $3d
	ld c, h                                          ; $6cf3: $4c
	and b                                            ; $6cf4: $a0
	jr c, @+$3a                                      ; $6cf5: $38 $38

	ld b, d                                          ; $6cf7: $42
	inc [hl]                                         ; $6cf8: $34
	jr c, jr_090_6d33                                ; $6cf9: $38 $38

	ld b, d                                          ; $6cfb: $42
	and b                                            ; $6cfc: $a0
	cpl                                              ; $6cfd: $2f
	ld b, e                                          ; $6cfe: $43
	ldh a, [c]                                       ; $6cff: $f2
	rrca                                             ; $6d00: $0f
	ld c, b                                          ; $6d01: $48
	adc e                                            ; $6d02: $8b
	ld e, h                                          ; $6d03: $5c
	db $ec                                           ; $6d04: $ec

jr_090_6d05:
	ld [hl+], a                                      ; $6d05: $22
	and b                                            ; $6d06: $a0
	xor $1f                                          ; $6d07: $ee $1f
	dec [hl]                                         ; $6d09: $35
	rla                                              ; $6d0a: $17
	ldh a, [$d0]                                     ; $6d0b: $f0 $d0
	ld [hl], a                                       ; $6d0d: $77
	ldh a, [c]                                       ; $6d0e: $f2
	or b                                             ; $6d0f: $b0
	ld c, c                                          ; $6d10: $49
	ldh a, [c]                                       ; $6d11: $f2
	rrca                                             ; $6d12: $0f
	ld d, e                                          ; $6d13: $53
	ldh a, [c]                                       ; $6d14: $f2
	add $3b                                          ; $6d15: $c6 $3b
	ccf                                              ; $6d17: $3f
	ld d, l                                          ; $6d18: $55
	ld c, [hl]                                       ; $6d19: $4e
	ld b, d                                          ; $6d1a: $42
	ld c, b                                          ; $6d1b: $48
	and b                                            ; $6d1c: $a0
	cpl                                              ; $6d1d: $2f
	ld b, e                                          ; $6d1e: $43
	db $ec                                           ; $6d1f: $ec
	db $ec                                           ; $6d20: $ec
	ld a, [hl-]                                      ; $6d21: $3a
	ld d, l                                          ; $6d22: $55
	inc de                                           ; $6d23: $13
	ldh a, [rTAC]                                    ; $6d24: $f0 $07
	inc a                                            ; $6d26: $3c
	ld c, [hl]                                       ; $6d27: $4e
	ld a, a                                          ; $6d28: $7f
	ld d, e                                          ; $6d29: $53
	ld d, c                                          ; $6d2a: $51
	ld c, [hl]                                       ; $6d2b: $4e
	ld b, l                                          ; $6d2c: $45
	and b                                            ; $6d2d: $a0
	jr c, jr_090_6d68                                ; $6d2e: $38 $38

	ld h, e                                          ; $6d30: $63
	ld c, h                                          ; $6d31: $4c
	inc [hl]                                         ; $6d32: $34

jr_090_6d33:
	ld d, h                                          ; $6d33: $54
	add hl, sp                                       ; $6d34: $39
	jr c, @+$3b                                      ; $6d35: $38 $39

	ldh a, [$ee]                                     ; $6d37: $f0 $ee
	and b                                            ; $6d39: $a0
	cpl                                              ; $6d3a: $2f
	add sp, $33                                      ; $6d3b: $e8 $33
	add hl, bc                                       ; $6d3d: $09
	ldh a, [$7d]                                     ; $6d3e: $f0 $7d
	ldh a, [$bf]                                     ; $6d40: $f0 $bf
	di                                               ; $6d42: $f3
	xor l                                            ; $6d43: $ad
	ldh a, [$b7]                                     ; $6d44: $f0 $b7
	ldh a, [$8c]                                     ; $6d46: $f0 $8c
	ccf                                              ; $6d48: $3f
	ld e, h                                          ; $6d49: $5c
	dec a                                            ; $6d4a: $3d
	ld b, d                                          ; $6d4b: $42
	xor c                                            ; $6d4c: $a9
	ld h, c                                          ; $6d4d: $61
	ld d, [hl]                                       ; $6d4e: $56
	ld b, c                                          ; $6d4f: $41
	ld c, c                                          ; $6d50: $49
	ldh a, [$b7]                                     ; $6d51: $f0 $b7
	ldh a, [$8c]                                     ; $6d53: $f0 $8c
	ld a, [hl-]                                      ; $6d55: $3a
	jr c, @+$4b                                      ; $6d56: $38 $49

	ldh a, [$f1]                                     ; $6d58: $f0 $f1
	ldh a, [$9d]                                     ; $6d5a: $f0 $9d
	ld b, h                                          ; $6d5c: $44
	ld b, l                                          ; $6d5d: $45
	and b                                            ; $6d5e: $a0
	cpl                                              ; $6d5f: $2f
	add sp, $32                                      ; $6d60: $e8 $32
	add hl, bc                                       ; $6d62: $09
	ld b, b                                          ; $6d63: $40
	ld b, c                                          ; $6d64: $41
	ld a, [hl-]                                      ; $6d65: $3a
	pop af                                           ; $6d66: $f1
	ld [hl], b                                       ; $6d67: $70

jr_090_6d68:
	ldh a, [rHDMA2]                                  ; $6d68: $f0 $52
	ld a, $3d                                        ; $6d6a: $3e $3d
	ld d, h                                          ; $6d6c: $54
	ld c, c                                          ; $6d6d: $49
	ld a, [hl-]                                      ; $6d6e: $3a
	jr c, @+$15                                      ; $6d6f: $38 $13

	inc a                                            ; $6d71: $3c
	ld d, b                                          ; $6d72: $50
	inc [hl]                                         ; $6d73: $34
	db $ed                                           ; $6d74: $ed
	rst JumpTable                                          ; $6d75: $c7
	ld c, c                                          ; $6d76: $49
	ld d, h                                          ; $6d77: $54
	ld a, [hl-]                                      ; $6d78: $3a
	jr c, jr_090_6db5                                ; $6d79: $38 $3a

	and b                                            ; $6d7b: $a0
	cpl                                              ; $6d7c: $2f
	jp hl                                            ; $6d7d: $e9


	ld c, [hl]                                       ; $6d7e: $4e
	add hl, bc                                       ; $6d7f: $09
	ld b, b                                          ; $6d80: $40
	add hl, sp                                       ; $6d81: $39
	ld c, d                                          ; $6d82: $4a
	ld a, $66                                        ; $6d83: $3e $66
	and c                                            ; $6d85: $a1
	ld d, h                                          ; $6d86: $54
	ld b, d                                          ; $6d87: $42
	ldh a, [c]                                       ; $6d88: $f2
	db $10                                           ; $6d89: $10
	adc e                                            ; $6d8a: $8b
	ld e, h                                          ; $6d8b: $5c
	ld a, [hl-]                                      ; $6d8c: $3a
	ld b, c                                          ; $6d8d: $41
	ld b, h                                          ; $6d8e: $44
	xor b                                            ; $6d8f: $a8
	inc a                                            ; $6d90: $3c
	ld h, e                                          ; $6d91: $63
	jr c, jr_090_6dcc                                ; $6d92: $38 $38

	push af                                          ; $6d94: $f5
	ld c, h                                          ; $6d95: $4c
	ld d, e                                          ; $6d96: $53
	inc de                                           ; $6d97: $13
	adc $38                                          ; $6d98: $ce $38
	ld c, [hl]                                       ; $6d9a: $4e
	inc a                                            ; $6d9b: $3c
	ld d, b                                          ; $6d9c: $50
	ld c, h                                          ; $6d9d: $4c
	and b                                            ; $6d9e: $a0
	cpl                                              ; $6d9f: $2f
	ldh a, [$35]                                     ; $6da0: $f0 $35
	ldh a, [$03]                                     ; $6da2: $f0 $03
	ldh a, [$a6]                                     ; $6da4: $f0 $a6
	pop af                                           ; $6da6: $f1
	dec b                                            ; $6da7: $05
	ldh a, [c]                                       ; $6da8: $f2
	ld h, c                                          ; $6da9: $61
	adc h                                            ; $6daa: $8c
	db $ec                                           ; $6dab: $ec
	daa                                              ; $6dac: $27
	add hl, bc                                       ; $6dad: $09
	ld b, [hl]                                       ; $6dae: $46
	inc [hl]                                         ; $6daf: $34
	db $ed                                           ; $6db0: $ed
	ld b, c                                          ; $6db1: $41
	ld b, h                                          ; $6db2: $44
	xor b                                            ; $6db3: $a8
	inc a                                            ; $6db4: $3c

jr_090_6db5:
	ld h, e                                          ; $6db5: $63
	jr c, jr_090_6df0                                ; $6db6: $38 $38

	and b                                            ; $6db8: $a0
	cpl                                              ; $6db9: $2f
	db $ed                                           ; $6dba: $ed
	ld b, c                                          ; $6dbb: $41
	inc [hl]                                         ; $6dbc: $34
	ld h, h                                          ; $6dbd: $64
	jr c, jr_090_6dfe                                ; $6dbe: $38 $3e

	ld b, b                                          ; $6dc0: $40
	add hl, sp                                       ; $6dc1: $39
	ld b, h                                          ; $6dc2: $44
	ld c, h                                          ; $6dc3: $4c
	add hl, bc                                       ; $6dc4: $09
	ld l, e                                          ; $6dc5: $6b
	ccf                                              ; $6dc6: $3f
	ld d, h                                          ; $6dc7: $54
	ld c, c                                          ; $6dc8: $49
	add d                                            ; $6dc9: $82
	add hl, sp                                       ; $6dca: $39
	ld b, d                                          ; $6dcb: $42

jr_090_6dcc:
	ld b, l                                          ; $6dcc: $45
	and d                                            ; $6dcd: $a2
	cpl                                              ; $6dce: $2f
	inc a                                            ; $6dcf: $3c
	ld h, e                                          ; $6dd0: $63
	jr c, jr_090_6e0b                                ; $6dd1: $38 $38

	ld b, l                                          ; $6dd3: $45
	ld c, h                                          ; $6dd4: $4c
	add hl, bc                                       ; $6dd5: $09
	ld b, [hl]                                       ; $6dd6: $46
	ld a, [hl-]                                      ; $6dd7: $3a
	dec a                                            ; $6dd8: $3d
	ld c, a                                          ; $6dd9: $4f
	ld b, b                                          ; $6dda: $40
	add hl, sp                                       ; $6ddb: $39
	ld [hl], a                                       ; $6ddc: $77
	add hl, sp                                       ; $6ddd: $39
	xor c                                            ; $6dde: $a9
	inc a                                            ; $6ddf: $3c
	ld h, e                                          ; $6de0: $63
	jr c, jr_090_6e1b                                ; $6de1: $38 $38

	ld b, l                                          ; $6de3: $45
	ld c, h                                          ; $6de4: $4c
	add l                                            ; $6de5: $85
	and b                                            ; $6de6: $a0
	db $ed                                           ; $6de7: $ed
	ld c, c                                          ; $6de8: $49
	ld b, h                                          ; $6de9: $44
	ld e, l                                          ; $6dea: $5d
	ld e, d                                          ; $6deb: $5a
	xor h                                            ; $6dec: $ac
	ld d, c                                          ; $6ded: $51
	sbc l                                            ; $6dee: $9d
	pop af                                           ; $6def: $f1

Jump_090_6df0:
jr_090_6df0:
	db $ed                                           ; $6df0: $ed
	dec sp                                           ; $6df1: $3b
	ccf                                              ; $6df2: $3f
	ld a, $52                                        ; $6df3: $3e $52
	add hl, sp                                       ; $6df5: $39
	ld b, d                                          ; $6df6: $42
	ld d, e                                          ; $6df7: $53
	inc de                                           ; $6df8: $13
	ldh a, [c]                                       ; $6df9: $f2
	rst SubAFromHL                                          ; $6dfa: $d7
	ld a, $38                                        ; $6dfb: $3e $38
	ld b, l                                          ; $6dfd: $45

jr_090_6dfe:
	ld c, h                                          ; $6dfe: $4c
	and b                                            ; $6dff: $a0
	cpl                                              ; $6e00: $2f
	ld b, b                                          ; $6e01: $40
	ld c, l                                          ; $6e02: $4d
	ld d, e                                          ; $6e03: $53
	ldh a, [$67]                                     ; $6e04: $f0 $67
	ldh a, [$59]                                     ; $6e06: $f0 $59
	ld b, d                                          ; $6e08: $42
	ld sp, hl                                        ; $6e09: $f9
	inc d                                            ; $6e0a: $14

jr_090_6e0b:
	ldh a, [$63]                                     ; $6e0b: $f0 $63
	ld b, h                                          ; $6e0d: $44
	ld b, l                                          ; $6e0e: $45
	add hl, bc                                       ; $6e0f: $09
	call c, Call_090_52a8                            ; $6e10: $dc $a8 $52
	dec a                                            ; $6e13: $3d
	inc [hl]                                         ; $6e14: $34
	ld a, b                                          ; $6e15: $78
	ldh a, [rAUD1HIGH]                               ; $6e16: $f0 $14
	ld [hl], d                                       ; $6e18: $72
	ld c, l                                          ; $6e19: $4d
	ld c, [hl]                                       ; $6e1a: $4e

jr_090_6e1b:
	inc a                                            ; $6e1b: $3c
	ld c, b                                          ; $6e1c: $48
	and b                                            ; $6e1d: $a0
	cpl                                              ; $6e1e: $2f
	add sp, -$60                                     ; $6e1f: $e8 $a0
	add hl, bc                                       ; $6e21: $09
	dec a                                            ; $6e22: $3d
	inc [hl]                                         ; $6e23: $34
	pop af                                           ; $6e24: $f1
	add d                                            ; $6e25: $82
	inc a                                            ; $6e26: $3c
	ld b, a                                          ; $6e27: $47
	inc de                                           ; $6e28: $13
	ld [$4c30], a                                    ; $6e29: $ea $30 $4c
	ld c, b                                          ; $6e2c: $48
	and b                                            ; $6e2d: $a0
	cpl                                              ; $6e2e: $2f
	pop af                                           ; $6e2f: $f1
	db $ed                                           ; $6e30: $ed
	ld d, a                                          ; $6e31: $57
	ldh a, [c]                                       ; $6e32: $f2
	or [hl]                                          ; $6e33: $b6
	ld d, e                                          ; $6e34: $53
	adc d                                            ; $6e35: $8a
	ld a, $38                                        ; $6e36: $3e $38
	ld b, c                                          ; $6e38: $41
	ld b, h                                          ; $6e39: $44
	ld b, l                                          ; $6e3a: $45
	add hl, bc                                       ; $6e3b: $09
	pop af                                           ; $6e3c: $f1
	add d                                            ; $6e3d: $82
	inc a                                            ; $6e3e: $3c
	ld b, a                                          ; $6e3f: $47
	ld [$4c30], a                                    ; $6e40: $ea $30 $4c
	and b                                            ; $6e43: $a0
	ld e, d                                          ; $6e44: $5a
	ld d, h                                          ; $6e45: $54
	ld b, a                                          ; $6e46: $47
	pop af                                           ; $6e47: $f1
	ld c, $38                                        ; $6e48: $0e $38
	ldh a, [$2c]                                     ; $6e4a: $f0 $2c
	ld h, a                                          ; $6e4c: $67
	ld d, l                                          ; $6e4d: $55
	ld b, d                                          ; $6e4e: $42
	and c                                            ; $6e4f: $a1
	cpl                                              ; $6e50: $2f
	add sp, -$29                                     ; $6e51: $e8 $d7
	add hl, bc                                       ; $6e53: $09
	cpl                                              ; $6e54: $2f

jr_090_6e55:
	add sp, -$28                                     ; $6e55: $e8 $d8
	add hl, bc                                       ; $6e57: $09
	cpl                                              ; $6e58: $2f
	add sp, -$27                                     ; $6e59: $e8 $d9
	add hl, bc                                       ; $6e5b: $09
	db $eb                                           ; $6e5c: $eb
	ld a, e                                          ; $6e5d: $7b
	xor h                                            ; $6e5e: $ac
	jp nc, Jump_090_4e78                             ; $6e5f: $d2 $78 $4e

	ldh a, [$15]                                     ; $6e62: $f0 $15
	pop af                                           ; $6e64: $f1
	sbc e                                            ; $6e65: $9b
	ld d, e                                          ; $6e66: $53
	ldh a, [rAUD1LOW]                                ; $6e67: $f0 $13
	jr c, jr_090_6ea7                                ; $6e69: $38 $3c

	ld d, b                                          ; $6e6b: $50
	xor h                                            ; $6e6c: $ac
	ld l, e                                          ; $6e6d: $6b
	ld d, e                                          ; $6e6e: $53
	jr c, jr_090_6ea9                                ; $6e6f: $38 $38

	ld b, d                                          ; $6e71: $42
	inc a                                            ; $6e72: $3c
	db $ed                                           ; $6e73: $ed
	rst JumpTable                                          ; $6e74: $c7
	ld c, c                                          ; $6e75: $49
	ld d, h                                          ; $6e76: $54
	ld a, [hl-]                                      ; $6e77: $3a
	jr c, jr_090_6eb4                                ; $6e78: $38 $3a

	ld [hl], h                                       ; $6e7a: $74
	and b                                            ; $6e7b: $a0
	cpl                                              ; $6e7c: $2f
	halt                                             ; $6e7d: $76
	ld d, e                                          ; $6e7e: $53
	pop af                                           ; $6e7f: $f1
	jr c, jr_090_6ec3                                ; $6e80: $38 $41

	ld c, d                                          ; $6e82: $4a
	rst SubAFromDE                                          ; $6e83: $df
	ld b, l                                          ; $6e84: $45
	add hl, bc                                       ; $6e85: $09
	ldh a, [rOCPD]                                   ; $6e86: $f0 $6b
	inc [hl]                                         ; $6e88: $34
	db $ed                                           ; $6e89: $ed
	ld b, c                                          ; $6e8a: $41
	xor c                                            ; $6e8b: $a9
	ld a, [hl-]                                      ; $6e8c: $3a
	inc [hl]                                         ; $6e8d: $34
	ld a, [hl-]                                      ; $6e8e: $3a
	ld b, c                                          ; $6e8f: $41
	inc a                                            ; $6e90: $3c
	pop af                                           ; $6e91: $f1
	sbc c                                            ; $6e92: $99
	ld c, l                                          ; $6e93: $4d
	ld h, c                                          ; $6e94: $61
	ld d, [hl]                                       ; $6e95: $56
	add hl, sp                                       ; $6e96: $39
	ld c, h                                          ; $6e97: $4c
	and b                                            ; $6e98: $a0
	cpl                                              ; $6e99: $2f
	ld b, b                                          ; $6e9a: $40
	ld c, l                                          ; $6e9b: $4d
	ld c, d                                          ; $6e9c: $4a
	ld c, a                                          ; $6e9d: $4f
	ldh a, [rAUD2ENV]                                ; $6e9e: $f0 $17
	inc a                                            ; $6ea0: $3c
	and c                                            ; $6ea1: $a1
	xor $10                                          ; $6ea2: $ee $10
	dec [hl]                                         ; $6ea4: $35
	ld [hl+], a                                      ; $6ea5: $22
	inc de                                           ; $6ea6: $13

jr_090_6ea7:
	ld b, l                                          ; $6ea7: $45
	ld d, l                                          ; $6ea8: $55

jr_090_6ea9:
	add d                                            ; $6ea9: $82
	ld h, e                                          ; $6eaa: $63
	ld c, l                                          ; $6eab: $4d
	ld c, [hl]                                       ; $6eac: $4e
	ld h, e                                          ; $6ead: $63
	ld c, b                                          ; $6eae: $48
	and b                                            ; $6eaf: $a0
	cpl                                              ; $6eb0: $2f
	halt                                             ; $6eb1: $76
	ld a, [hl-]                                      ; $6eb2: $3a
	ld b, c                                          ; $6eb3: $41

jr_090_6eb4:
	inc a                                            ; $6eb4: $3c
	db $ed                                           ; $6eb5: $ed
	ld e, [hl]                                       ; $6eb6: $5e
	ldh a, [rTAC]                                    ; $6eb7: $f0 $07
	inc a                                            ; $6eb9: $3c
	ld d, b                                          ; $6eba: $50
	ld a, [hl-]                                      ; $6ebb: $3a
	jr c, jr_090_6e55                                ; $6ebc: $38 $97

	add hl, bc                                       ; $6ebe: $09
	ldh a, [$ab]                                     ; $6ebf: $f0 $ab
	ld d, e                                          ; $6ec1: $53
	ld h, h                                          ; $6ec2: $64

jr_090_6ec3:
	ld a, $56                                        ; $6ec3: $3e $56
	ld c, l                                          ; $6ec5: $4d
	ld b, a                                          ; $6ec6: $47
	add hl, sp                                       ; $6ec7: $39
	ld c, [hl]                                       ; $6ec8: $4e
	ld e, b                                          ; $6ec9: $58
	jr c, jr_090_6edf                                ; $6eca: $38 $13

	ld b, d                                          ; $6ecc: $42
	ld c, e                                          ; $6ecd: $4b
	inc [hl]                                         ; $6ece: $34
	adc e                                            ; $6ecf: $8b
	ld e, h                                          ; $6ed0: $5c
	db $ec                                           ; $6ed1: $ec
	ret c                                            ; $6ed2: $d8

	ld b, l                                          ; $6ed3: $45
	and b                                            ; $6ed4: $a0
	ld e, [hl]                                       ; $6ed5: $5e
	ld e, c                                          ; $6ed6: $59
	dec sp                                           ; $6ed7: $3b
	xor h                                            ; $6ed8: $ac
	ld l, e                                          ; $6ed9: $6b
	ld c, d                                          ; $6eda: $4a
	ld d, h                                          ; $6edb: $54
	ld b, d                                          ; $6edc: $42
	pop af                                           ; $6edd: $f1
	ld a, d                                          ; $6ede: $7a

jr_090_6edf:
	ld d, h                                          ; $6edf: $54
	ld b, c                                          ; $6ee0: $41
	ld a, [hl-]                                      ; $6ee1: $3a
	ld b, a                                          ; $6ee2: $47
	ldh a, [rAUD1ENV]                                ; $6ee3: $f0 $12
	jr c, jr_090_6f29                                ; $6ee5: $38 $42

	and c                                            ; $6ee7: $a1
	cpl                                              ; $6ee8: $2f
	pop af                                           ; $6ee9: $f1
	ld c, $3b                                        ; $6eea: $0e $3b
	ccf                                              ; $6eec: $3f
	ld b, [hl]                                       ; $6eed: $46
	ldh a, [rSB]                                     ; $6eee: $f0 $01
	dec a                                            ; $6ef0: $3d
	jr c, jr_090_6f50                                ; $6ef1: $38 $5d

	ld e, d                                          ; $6ef3: $5a
	inc [hl]                                         ; $6ef4: $34
	ldh a, [rAUD1ENV]                                ; $6ef5: $f0 $12
	jr c, jr_090_6f3e                                ; $6ef7: $38 $45

	ld c, h                                          ; $6ef9: $4c
	add hl, bc                                       ; $6efa: $09
	ld e, [hl]                                       ; $6efb: $5e
	ld [hl], $70                                     ; $6efc: $36 $70
	inc [hl]                                         ; $6efe: $34
	ld [hl], b                                       ; $6eff: $70
	ld [hl], c                                       ; $6f00: $71

jr_090_6f01:
	ld b, c                                          ; $6f01: $41
	xor b                                            ; $6f02: $a8
	ld b, b                                          ; $6f03: $40
	ld b, c                                          ; $6f04: $41
	ld a, [hl-]                                      ; $6f05: $3a
	add b                                            ; $6f06: $80
	ld c, a                                          ; $6f07: $4f
	ld d, a                                          ; $6f08: $57
	ld c, d                                          ; $6f09: $4a
	inc de                                           ; $6f0a: $13
	add d                                            ; $6f0b: $82
	dec sp                                           ; $6f0c: $3b
	dec a                                            ; $6f0d: $3d
	ld b, c                                          ; $6f0e: $41
	db $ec                                           ; $6f0f: $ec
	ret c                                            ; $6f10: $d8

	ld b, d                                          ; $6f11: $42
	and b                                            ; $6f12: $a0
	cpl                                              ; $6f13: $2f
	db $ec                                           ; $6f14: $ec
	cp [hl]                                          ; $6f15: $be
	ld b, h                                          ; $6f16: $44
	inc a                                            ; $6f17: $3c
	ld d, b                                          ; $6f18: $50
	ld c, h                                          ; $6f19: $4c
	add hl, bc                                       ; $6f1a: $09
	db $ec                                           ; $6f1b: $ec
	cp [hl]                                          ; $6f1c: $be
	ld c, b                                          ; $6f1d: $48
	ld c, h                                          ; $6f1e: $4c
	xor b                                            ; $6f1f: $a8
	db $ed                                           ; $6f20: $ed
	ld e, l                                          ; $6f21: $5d
	ld d, e                                          ; $6f22: $53
	db $ec                                           ; $6f23: $ec
	cp [hl]                                          ; $6f24: $be
	ldh a, [c]                                       ; $6f25: $f2
	rst SubAFromDE                                          ; $6f26: $df
	pop af                                           ; $6f27: $f1
	dec a                                            ; $6f28: $3d

jr_090_6f29:
	ld e, e                                          ; $6f29: $5b
	ld d, [hl]                                       ; $6f2a: $56
	ld a, [hl-]                                      ; $6f2b: $3a
	ld d, l                                          ; $6f2c: $55
	ccf                                              ; $6f2d: $3f
	inc de                                           ; $6f2e: $13
	ld b, l                                          ; $6f2f: $45
	inc a                                            ; $6f30: $3c
	dec sp                                           ; $6f31: $3b
	dec a                                            ; $6f32: $3d
	ld h, e                                          ; $6f33: $63
	and b                                            ; $6f34: $a0
	cpl                                              ; $6f35: $2f
	pop af                                           ; $6f36: $f1
	cp c                                             ; $6f37: $b9
	ld d, l                                          ; $6f38: $55
	ccf                                              ; $6f39: $3f
	ld a, [hl]                                       ; $6f3a: $7e
	jr c, @+$44                                      ; $6f3b: $38 $42

	ld h, d                                          ; $6f3d: $62

jr_090_6f3e:
	pop af                                           ; $6f3e: $f1
	adc l                                            ; $6f3f: $8d
	ld b, b                                          ; $6f40: $40
	add hl, sp                                       ; $6f41: $39
	adc l                                            ; $6f42: $8d
	add hl, bc                                       ; $6f43: $09
	db $ec                                           ; $6f44: $ec
	inc e                                            ; $6f45: $1c
	xor b                                            ; $6f46: $a8
	jr c, jr_090_6f9e                                ; $6f47: $38 $55

	ld d, b                                          ; $6f49: $50
	ld c, d                                          ; $6f4a: $4a
	ld c, a                                          ; $6f4b: $4f
	ld b, [hl]                                       ; $6f4c: $46
	ld c, [hl]                                       ; $6f4d: $4e
	ld c, e                                          ; $6f4e: $4b
	sbc h                                            ; $6f4f: $9c

jr_090_6f50:
	ld b, l                                          ; $6f50: $45
	ld c, h                                          ; $6f51: $4c
	and b                                            ; $6f52: $a0
	ld d, h                                          ; $6f53: $54
	ld c, l                                          ; $6f54: $4d
	inc [hl]                                         ; $6f55: $34
	pop de                                           ; $6f56: $d1
	jr c, @+$3a                                      ; $6f57: $38 $38

	ld c, c                                          ; $6f59: $49
	inc de                                           ; $6f5a: $13
	ld [hl], a                                       ; $6f5b: $77
	ld h, e                                          ; $6f5c: $63
	ld a, [hl-]                                      ; $6f5d: $3a
	jr c, jr_090_6f01                                ; $6f5e: $38 $a1

	cpl                                              ; $6f60: $2f
	db $ec                                           ; $6f61: $ec
	and $47                                          ; $6f62: $e6 $47
	ldh a, [rPCM12]                                  ; $6f64: $f0 $76
	ldh a, [rTMA]                                    ; $6f66: $f0 $06
	jr c, jr_090_6faa                                ; $6f68: $38 $40

	add hl, sp                                       ; $6f6a: $39
	ld b, h                                          ; $6f6b: $44
	ld c, h                                          ; $6f6c: $4c
	add hl, bc                                       ; $6f6d: $09
	db $ec                                           ; $6f6e: $ec
	reti                                             ; $6f6f: $d9


	xor c                                            ; $6f70: $a9
	ldh a, [$5a]                                     ; $6f71: $f0 $5a
	ldh a, [$5a]                                     ; $6f73: $f0 $5a
	dec sp                                           ; $6f75: $3b
	and b                                            ; $6f76: $a0
	cpl                                              ; $6f77: $2f
	ld b, b                                          ; $6f78: $40
	add hl, sp                                       ; $6f79: $39
	ld [hl], $ed                                     ; $6f7a: $36 $ed
	ld e, [hl]                                       ; $6f7c: $5e
	add hl, bc                                       ; $6f7d: $09
	ld [$48af], a                                    ; $6f7e: $ea $af $48
	and b                                            ; $6f81: $a0
	cpl                                              ; $6f82: $2f
	ld d, h                                          ; $6f83: $54
	ld c, l                                          ; $6f84: $4d
	ld a, [hl-]                                      ; $6f85: $3a
	ld b, c                                          ; $6f86: $41
	inc a                                            ; $6f87: $3c
	ld e, d                                          ; $6f88: $5a
	add hl, sp                                       ; $6f89: $39
	and c                                            ; $6f8a: $a1
	add hl, sp                                       ; $6f8b: $39
	ld e, c                                          ; $6f8c: $59
	ld b, c                                          ; $6f8d: $41
	inc [hl]                                         ; $6f8e: $34
	db $ec                                           ; $6f8f: $ec
	sub $3c                                          ; $6f90: $d6 $3c
	ld a, [hl-]                                      ; $6f92: $3a
	and b                                            ; $6f93: $a0
	ld d, h                                          ; $6f94: $54
	add hl, sp                                       ; $6f95: $39
	jr c, jr_090_6fd1                                ; $6f96: $38 $39

	di                                               ; $6f98: $f3
	cp l                                             ; $6f99: $bd
	ld b, a                                          ; $6f9a: $47
	ld c, e                                          ; $6f9b: $4b
	inc de                                           ; $6f9c: $13
	ld a, [hl]                                       ; $6f9d: $7e

jr_090_6f9e:
	ld d, l                                          ; $6f9e: $55
	ld a, b                                          ; $6f9f: $78
	ld c, [hl]                                       ; $6fa0: $4e
	ld b, d                                          ; $6fa1: $42
	and c                                            ; $6fa2: $a1
	cpl                                              ; $6fa3: $2f
	db $eb                                           ; $6fa4: $eb
	inc de                                           ; $6fa5: $13
	ld c, c                                          ; $6fa6: $49
	add d                                            ; $6fa7: $82
	ld e, [hl]                                       ; $6fa8: $5e
	ld a, e                                          ; $6fa9: $7b

jr_090_6faa:
	ld d, h                                          ; $6faa: $54
	ld d, h                                          ; $6fab: $54
	ld b, h                                          ; $6fac: $44
	ld b, l                                          ; $6fad: $45
	add hl, bc                                       ; $6fae: $09
	ld b, b                                          ; $6faf: $40
	dec sp                                           ; $6fb0: $3b
	inc a                                            ; $6fb1: $3c
	xor l                                            ; $6fb2: $ad
	ldh a, [$ab]                                     ; $6fb3: $f0 $ab
	ld b, d                                          ; $6fb5: $42
	adc h                                            ; $6fb6: $8c
	ld c, d                                          ; $6fb7: $4a
	ld c, a                                          ; $6fb8: $4f
	ld a, b                                          ; $6fb9: $78
	ld c, [hl]                                       ; $6fba: $4e
	ld b, c                                          ; $6fbb: $41
	ld b, h                                          ; $6fbc: $44
	xor b                                            ; $6fbd: $a8
	ld l, a                                          ; $6fbe: $6f
	inc [hl]                                         ; $6fbf: $34
	ldh a, [$5d]                                     ; $6fc0: $f0 $5d
	ld h, e                                          ; $6fc2: $63
	dec sp                                           ; $6fc3: $3b
	ccf                                              ; $6fc4: $3f
	ld c, [hl]                                       ; $6fc5: $4e
	ld b, d                                          ; $6fc6: $42
	inc a                                            ; $6fc7: $3c
	ld a, [hl-]                                      ; $6fc8: $3a
	ld c, b                                          ; $6fc9: $48
	and b                                            ; $6fca: $a0
	cpl                                              ; $6fcb: $2f
	ldh a, [$08]                                     ; $6fcc: $f0 $08
	ld c, c                                          ; $6fce: $49
	ld b, c                                          ; $6fcf: $41
	ld e, d                                          ; $6fd0: $5a

jr_090_6fd1:
	ld a, b                                          ; $6fd1: $78
	ld a, [hl-]                                      ; $6fd2: $3a
	jr c, jr_090_700f                                ; $6fd3: $38 $3a

	add hl, bc                                       ; $6fd5: $09
	ldh a, [$ab]                                     ; $6fd6: $f0 $ab
	ld b, d                                          ; $6fd8: $42
	adc h                                            ; $6fd9: $8c
	ld d, e                                          ; $6fda: $53
	ld d, h                                          ; $6fdb: $54
	ld b, c                                          ; $6fdc: $41
	ld a, [hl-]                                      ; $6fdd: $3a
	ldh a, [$28]                                     ; $6fde: $f0 $28
	xor h                                            ; $6fe0: $ac
	ldh a, [hDisp0_WX]                                     ; $6fe1: $f0 $89
	ldh a, [$1f]                                     ; $6fe3: $f0 $1f
	ldh a, [hDisp0_WX]                                     ; $6fe5: $f0 $89
	ldh a, [$1f]                                     ; $6fe7: $f0 $1f
	ld a, $3f                                        ; $6fe9: $3e $3f
	ld c, [hl]                                       ; $6feb: $4e
	ld b, d                                          ; $6fec: $42
	inc de                                           ; $6fed: $13
	ld l, a                                          ; $6fee: $6f
	ld c, e                                          ; $6fef: $4b
	adc e                                            ; $6ff0: $8b
	ld e, h                                          ; $6ff1: $5c
	db $ec                                           ; $6ff2: $ec
	ret c                                            ; $6ff3: $d8

	ld h, e                                          ; $6ff4: $63
	and b                                            ; $6ff5: $a0
	cpl                                              ; $6ff6: $2f
	dec a                                            ; $6ff7: $3d
	ld d, d                                          ; $6ff8: $52
	ld b, a                                          ; $6ff9: $47
	ld c, h                                          ; $6ffa: $4c
	add hl, bc                                       ; $6ffb: $09
	db $ec                                           ; $6ffc: $ec
	ldh a, [$a0]                                     ; $6ffd: $f0 $a0
	ldh a, [rAUD4ENV]                                ; $6fff: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7001: $f0 $23
	ld b, b                                          ; $7003: $40
	add hl, sp                                       ; $7004: $39
	ld a, [hl-]                                      ; $7005: $3a
	ldh a, [$28]                                     ; $7006: $f0 $28
	ld c, h                                          ; $7008: $4c
	xor b                                            ; $7009: $a8
	ret                                              ; $700a: $c9


	db $ec                                           ; $700b: $ec
	cp $f0                                           ; $700c: $fe $f0
	ld [hl], c                                       ; $700e: $71

jr_090_700f:
	jr c, jr_090_706e                                ; $700f: $38 $5d

	ld e, d                                          ; $7011: $5a

jr_090_7012:
	and b                                            ; $7012: $a0
	cpl                                              ; $7013: $2f
	db $ec                                           ; $7014: $ec
	add e                                            ; $7015: $83
	ld a, [hl-]                                      ; $7016: $3a
	ldh a, [$78]                                     ; $7017: $f0 $78
	ldh a, [$f4]                                     ; $7019: $f0 $f4
	ld b, h                                          ; $701b: $44
	ld b, l                                          ; $701c: $45
	ld c, h                                          ; $701d: $4c
	add hl, bc                                       ; $701e: $09
	db $eb                                           ; $701f: $eb
	ld a, e                                          ; $7020: $7b
	xor h                                            ; $7021: $ac
	ldh a, [$64]                                     ; $7022: $f0 $64
	jr c, jr_090_7012                                ; $7024: $38 $ec

	ret c                                            ; $7026: $d8

	ld b, l                                          ; $7027: $45
	and b                                            ; $7028: $a0
	cpl                                              ; $7029: $2f
	db $ec                                           ; $702a: $ec
	ld e, d                                          ; $702b: $5a
	ld d, l                                          ; $702c: $55
	ld c, h                                          ; $702d: $4c
	ld e, [hl]                                       ; $702e: $5e
	ld b, l                                          ; $702f: $45
	add hl, bc                                       ; $7030: $09
	ld d, e                                          ; $7031: $53
	ld e, c                                          ; $7032: $59
	ld b, c                                          ; $7033: $41
	inc [hl]                                         ; $7034: $34
	ld l, e                                          ; $7035: $6b
	ccf                                              ; $7036: $3f
	ld d, h                                          ; $7037: $54
	ld c, c                                          ; $7038: $49
	ld h, d                                          ; $7039: $62
	ld c, b                                          ; $703a: $48
	xor h                                            ; $703b: $ac
	ld e, e                                          ; $703c: $5b
	ld d, [hl]                                       ; $703d: $56
	ld b, [hl]                                       ; $703e: $46
	ld l, e                                          ; $703f: $6b
	ld c, d                                          ; $7040: $4a
	ld a, b                                          ; $7041: $78
	dec a                                            ; $7042: $3d
	ld b, d                                          ; $7043: $42
	and c                                            ; $7044: $a1
	cpl                                              ; $7045: $2f
	ld a, a                                          ; $7046: $7f
	ld b, a                                          ; $7047: $47
	sub [hl]                                         ; $7048: $96
	dec sp                                           ; $7049: $3b
	dec a                                            ; $704a: $3d
	and c                                            ; $704b: $a1
	db $ec                                           ; $704c: $ec
	sub $4c                                          ; $704d: $d6 $4c
	and b                                            ; $704f: $a0
	ld c, h                                          ; $7050: $4c
	ld e, [hl]                                       ; $7051: $5e
	inc [hl]                                         ; $7052: $34
	ld d, h                                          ; $7053: $54
	ld b, d                                          ; $7054: $42
	ldh a, [rIF]                                     ; $7055: $f0 $0f
	ld e, c                                          ; $7057: $59
	ldh a, [$f2]                                     ; $7058: $f0 $f2
	ld c, e                                          ; $705a: $4b
	inc de                                           ; $705b: $13
	ld e, d                                          ; $705c: $5a
	ld d, h                                          ; $705d: $54
	ld c, d                                          ; $705e: $4a
	db $f4                                           ; $705f: $f4
	xor $3b                                          ; $7060: $ee $3b
	ccf                                              ; $7062: $3f
	ld c, [hl]                                       ; $7063: $4e
	ld b, d                                          ; $7064: $42
	and c                                            ; $7065: $a1
	cpl                                              ; $7066: $2f
	ld b, e                                          ; $7067: $43
	di                                               ; $7068: $f3
	ld c, c                                          ; $7069: $49
	ld b, a                                          ; $706a: $47
	di                                               ; $706b: $f3
	ret                                              ; $706c: $c9


	ld e, [hl]                                       ; $706d: $5e

jr_090_706e:
	ccf                                              ; $706e: $3f
	ld e, h                                          ; $706f: $5c
	dec a                                            ; $7070: $3d
	ld b, d                                          ; $7071: $42
	xor c                                            ; $7072: $a9
	ld e, d                                          ; $7073: $5a
	ld c, l                                          ; $7074: $4d
	ld e, d                                          ; $7075: $5a
	ld c, l                                          ; $7076: $4d
	inc [hl]                                         ; $7077: $34
	ld [hl], d                                       ; $7078: $72
	ld a, c                                          ; $7079: $79
	ccf                                              ; $707a: $3f
	and b                                            ; $707b: $a0
	cpl                                              ; $707c: $2f
	ld [hl-], a                                      ; $707d: $32
	pop af                                           ; $707e: $f1
	ld a, [$513e]                                    ; $707f: $fa $3e $51
	ldh a, [$cb]                                     ; $7082: $f0 $cb
	ccf                                              ; $7084: $3f
	ld [$33de], a                                    ; $7085: $ea $de $33
	add hl, bc                                       ; $7088: $09
	cpl                                              ; $7089: $2f
	ld b, e                                          ; $708a: $43
	ld a, [hl-]                                      ; $708b: $3a
	ld b, c                                          ; $708c: $41
	ld b, h                                          ; $708d: $44
	ld d, h                                          ; $708e: $54
	ld c, l                                          ; $708f: $4d
	xor c                                            ; $7090: $a9
	ld l, l                                          ; $7091: $6d
	ldh a, [$65]                                     ; $7092: $f0 $65
	ld l, e                                          ; $7094: $6b
	ld b, d                                          ; $7095: $42
	ldh a, [rIF]                                     ; $7096: $f0 $0f
	ld e, c                                          ; $7098: $59
	ldh a, [$f2]                                     ; $7099: $f0 $f2
	ld b, h                                          ; $709b: $44
	ld c, b                                          ; $709c: $48
	and b                                            ; $709d: $a0
	ld e, [hl]                                       ; $709e: $5e
	dec sp                                           ; $709f: $3b
	ld c, b                                          ; $70a0: $48
	inc h                                            ; $70a1: $24
	db $ed                                           ; $70a2: $ed
	ld [hl], c                                       ; $70a3: $71
	ld c, c                                          ; $70a4: $49
	inc de                                           ; $70a5: $13
	di                                               ; $70a6: $f3
	ld h, $f2                                        ; $70a7: $26 $f2
	ld a, [bc]                                       ; $70a9: $0a
	ldh a, [rDMA]                                    ; $70aa: $f0 $46
	ldh a, [c]                                       ; $70ac: $f2
	ld [hl], h                                       ; $70ad: $74
	inc [hl]                                         ; $70ae: $34
	ldh a, [$2a]                                     ; $70af: $f0 $2a
	ldh a, [$f5]                                     ; $70b1: $f0 $f5
	ld e, [hl]                                       ; $70b3: $5e
	dec a                                            ; $70b4: $3d
	inc a                                            ; $70b5: $3c
	ld a, [hl-]                                      ; $70b6: $3a
	ld c, b                                          ; $70b7: $48
	and b                                            ; $70b8: $a0
	cpl                                              ; $70b9: $2f
	pop af                                           ; $70ba: $f1
	dec h                                            ; $70bb: $25
	ld a, c                                          ; $70bc: $79
	ld e, a                                          ; $70bd: $5f
	inc [hl]                                         ; $70be: $34
	halt                                             ; $70bf: $76
	ld b, a                                          ; $70c0: $47
	add b                                            ; $70c1: $80
	jr c, jr_090_7103                                ; $70c2: $38 $3f

	ld d, h                                          ; $70c4: $54
	jr c, @+$0b                                      ; $70c5: $38 $09

	ld h, h                                          ; $70c7: $64
	ld h, h                                          ; $70c8: $64
	inc [hl]                                         ; $70c9: $34
	ld l, d                                          ; $70ca: $6a
	ldh a, [$0d]                                     ; $70cb: $f0 $0d
	inc a                                            ; $70cd: $3c
	ld d, b                                          ; $70ce: $50
	ldh a, [$7e]                                     ; $70cf: $f0 $7e
	ldh a, [$7c]                                     ; $70d1: $f0 $7c
	ld h, l                                          ; $70d3: $65
	sub e                                            ; $70d4: $93
	inc de                                           ; $70d5: $13
	ld b, d                                          ; $70d6: $42
	db $f4                                           ; $70d7: $f4
	sub [hl]                                         ; $70d8: $96
	di                                               ; $70d9: $f3
	dec b                                            ; $70da: $05
	ld c, c                                          ; $70db: $49
	pop af                                           ; $70dc: $f1
	ld bc, $4a41                                     ; $70dd: $01 $41 $4a
	rst SubAFromDE                                          ; $70e0: $df
	ld c, h                                          ; $70e1: $4c
	and b                                            ; $70e2: $a0
	cpl                                              ; $70e3: $2f
	ld h, h                                          ; $70e4: $64
	push af                                          ; $70e5: $f5
	rst SubAFromBC                                          ; $70e6: $e7
	ld d, a                                          ; $70e7: $57
	ld e, b                                          ; $70e8: $58
	ld b, c                                          ; $70e9: $41
	ld b, a                                          ; $70ea: $47
	ldh a, [$0c]                                     ; $70eb: $f0 $0c
	jr c, @+$41                                      ; $70ed: $38 $3f

	ld l, h                                          ; $70ef: $6c
	ld b, l                                          ; $70f0: $45
	add hl, sp                                       ; $70f1: $39
	add hl, bc                                       ; $70f2: $09
	ldh a, [hDisp0_SCX]                                     ; $70f3: $f0 $84
	add h                                            ; $70f5: $84
	ld c, d                                          ; $70f6: $4a
	pop af                                           ; $70f7: $f1
	adc l                                            ; $70f8: $8d
	db $ec                                           ; $70f9: $ec
	db $f4                                           ; $70fa: $f4
	xor b                                            ; $70fb: $a8
	ldh a, [rBGP]                                    ; $70fc: $f0 $47
	ldh a, [$2a]                                     ; $70fe: $f0 $2a
	ld c, e                                          ; $7100: $4b
	ld b, [hl]                                       ; $7101: $46
	ld c, [hl]                                       ; $7102: $4e

jr_090_7103:
	ld b, c                                          ; $7103: $41
	ld b, h                                          ; $7104: $44
	ld a, $a0                                        ; $7105: $3e $a0
	ld e, b                                          ; $7107: $58
	ld b, [hl]                                       ; $7108: $46
	inc [hl]                                         ; $7109: $34
	ldh a, [$0a]                                     ; $710a: $f0 $0a
	ld d, l                                          ; $710c: $55
	sub [hl]                                         ; $710d: $96
	ld e, a                                          ; $710e: $5f
	and b                                            ; $710f: $a0
	cpl                                              ; $7110: $2f
	ld b, e                                          ; $7111: $43
	ld b, b                                          ; $7112: $40
	add hl, sp                                       ; $7113: $39
	ld b, h                                          ; $7114: $44
	ld c, h                                          ; $7115: $4c
	xor b                                            ; $7116: $a8
	ld b, b                                          ; $7117: $40
	add hl, sp                                       ; $7118: $39
	db $ec                                           ; $7119: $ec
	inc c                                            ; $711a: $0c
	and b                                            ; $711b: $a0
	pop af                                           ; $711c: $f1
	xor c                                            ; $711d: $a9
	dec sp                                           ; $711e: $3b
	ccf                                              ; $711f: $3f
	xor h                                            ; $7120: $ac
	ld [hl], d                                       ; $7121: $72
	ccf                                              ; $7122: $3f
	ccf                                              ; $7123: $3f
	ldh a, [c]                                       ; $7124: $f2
	ld a, [hl]                                       ; $7125: $7e
	ld e, h                                          ; $7126: $5c
	ld a, [hl-]                                      ; $7127: $3a
	jr c, jr_090_7176                                ; $7128: $38 $4c

	and b                                            ; $712a: $a0
	cpl                                              ; $712b: $2f
	jp hl                                            ; $712c: $e9


	ld a, $09                                        ; $712d: $3e $09
	db $ed                                           ; $712f: $ed
	ld c, c                                          ; $7130: $49
	db $ec                                           ; $7131: $ec
	ret c                                            ; $7132: $d8

	ld b, d                                          ; $7133: $42
	ld c, a                                          ; $7134: $4f
	inc de                                           ; $7135: $13
	ldh a, [$8a]                                     ; $7136: $f0 $8a
	ldh a, [rHDMA2]                                  ; $7138: $f0 $52
	jr c, jr_090_719f                                ; $713a: $38 $63

	ld b, l                                          ; $713c: $45
	and b                                            ; $713d: $a0
	cpl                                              ; $713e: $2f
	add sp, -$20                                     ; $713f: $e8 $e0
	add hl, bc                                       ; $7141: $09
	ld c, a                                          ; $7142: $4f
	add hl, sp                                       ; $7143: $39
	xor b                                            ; $7144: $a8
	ldh a, [rWY]                                     ; $7145: $f0 $4a
	ldh a, [rP1]                                     ; $7147: $f0 $00
	ldh a, [$35]                                     ; $7149: $f0 $35
	sbc b                                            ; $714b: $98
	ld e, c                                          ; $714c: $59
	ld a, [hl-]                                      ; $714d: $3a
	jr c, jr_090_718a                                ; $714e: $38 $3a

	ld [hl], h                                       ; $7150: $74
	and b                                            ; $7151: $a0
	cpl                                              ; $7152: $2f
	ld d, c                                          ; $7153: $51
	sbc l                                            ; $7154: $9d
	ldh a, [c]                                       ; $7155: $f2
	ld a, [hl]                                       ; $7156: $7e
	ld e, h                                          ; $7157: $5c
	ld c, [hl]                                       ; $7158: $4e
	ld b, l                                          ; $7159: $45
	add hl, bc                                       ; $715a: $09
	db $ec                                           ; $715b: $ec
	ld d, $74                                        ; $715c: $16 $74
	and b                                            ; $715e: $a0
	ld e, d                                          ; $715f: $5a
	ld b, c                                          ; $7160: $41
	ld a, [hl-]                                      ; $7161: $3a
	pop af                                           ; $7162: $f1
	xor c                                            ; $7163: $a9
	ld d, e                                          ; $7164: $53
	adc e                                            ; $7165: $8b
	ld e, h                                          ; $7166: $5c
	ld a, [hl-]                                      ; $7167: $3a
	ld b, d                                          ; $7168: $42
	and c                                            ; $7169: $a1
	cpl                                              ; $716a: $2f
	db $ec                                           ; $716b: $ec
	reti                                             ; $716c: $d9


	di                                               ; $716d: $f3
	ld b, [hl]                                       ; $716e: $46
	ld b, h                                          ; $716f: $44
	ld a, [hl-]                                      ; $7170: $3a
	add hl, bc                                       ; $7171: $09
	ldh a, [$ab]                                     ; $7172: $f0 $ab
	ld b, d                                          ; $7174: $42
	adc h                                            ; $7175: $8c

jr_090_7176:
	ld c, e                                          ; $7176: $4b
	xor h                                            ; $7177: $ac
	ld b, b                                          ; $7178: $40
	add hl, sp                                       ; $7179: $39
	jr c, jr_090_71b5                                ; $717a: $38 $39

	ld b, d                                          ; $717c: $42
	ld d, e                                          ; $717d: $53
	adc e                                            ; $717e: $8b
	ld e, h                                          ; $717f: $5c
	ld a, [hl-]                                      ; $7180: $3a
	ld b, d                                          ; $7181: $42
	ld c, h                                          ; $7182: $4c
	and b                                            ; $7183: $a0
	cpl                                              ; $7184: $2f
	ldh a, [$8e]                                     ; $7185: $f0 $8e
	ldh a, [$50]                                     ; $7187: $f0 $50
	ld a, [hl-]                                      ; $7189: $3a

jr_090_718a:
	ld b, c                                          ; $718a: $41
	ccf                                              ; $718b: $3f
	ldh a, [$80]                                     ; $718c: $f0 $80
	ldh a, [$c5]                                     ; $718e: $f0 $c5
	adc e                                            ; $7190: $8b
	ld e, h                                          ; $7191: $5c
	ld b, h                                          ; $7192: $44
	ld a, [hl-]                                      ; $7193: $3a
	add hl, bc                                       ; $7194: $09
	ldh a, [$8e]                                     ; $7195: $f0 $8e
	ldh a, [$50]                                     ; $7197: $f0 $50
	ld b, a                                          ; $7199: $47
	ld c, e                                          ; $719a: $4b
	ldh a, [rHDMA5]                                  ; $719b: $f0 $55
	ldh a, [rBCPS]                                   ; $719d: $f0 $68

jr_090_719f:
	ld b, h                                          ; $719f: $44
	ld e, l                                          ; $71a0: $5d
	ld e, d                                          ; $71a1: $5a
	xor h                                            ; $71a2: $ac
	pop af                                           ; $71a3: $f1
	ld [hl-], a                                      ; $71a4: $32
	ld c, [hl]                                       ; $71a5: $4e
	ld c, c                                          ; $71a6: $49
	inc a                                            ; $71a7: $3c
	ld h, e                                          ; $71a8: $63
	ret nc                                           ; $71a9: $d0

	ld c, h                                          ; $71aa: $4c
	and b                                            ; $71ab: $a0
	cpl                                              ; $71ac: $2f
	db $ec                                           ; $71ad: $ec
	reti                                             ; $71ae: $d9


	ld a, l                                          ; $71af: $7d
	ldh a, [$03]                                     ; $71b0: $f0 $03
	ldh a, [$35]                                     ; $71b2: $f0 $35
	ld b, h                                          ; $71b4: $44

jr_090_71b5:
	ld b, l                                          ; $71b5: $45
	add hl, bc                                       ; $71b6: $09
	ld a, l                                          ; $71b7: $7d
	ldh a, [$03]                                     ; $71b8: $f0 $03
	ldh a, [$35]                                     ; $71ba: $f0 $35
	ld c, e                                          ; $71bc: $4b
	xor h                                            ; $71bd: $ac
	ldh a, [$08]                                     ; $71be: $f0 $08
	di                                               ; $71c0: $f3
	ld hl, $04f3                                     ; $71c1: $21 $f3 $04
	ld c, d                                          ; $71c4: $4a
	ld a, $66                                        ; $71c5: $3e $66
	and d                                            ; $71c7: $a2
	ld a, l                                          ; $71c8: $7d
	ldh a, [$03]                                     ; $71c9: $f0 $03
	ldh a, [$35]                                     ; $71cb: $f0 $35
	ld b, d                                          ; $71cd: $42
	db $ec                                           ; $71ce: $ec
	ldh a, [c]                                       ; $71cf: $f2
	xor h                                            ; $71d0: $ac
	cp e                                             ; $71d1: $bb
	ld c, h                                          ; $71d2: $4c
	and b                                            ; $71d3: $a0
	cpl                                              ; $71d4: $2f
	ld a, l                                          ; $71d5: $7d
	ldh a, [$03]                                     ; $71d6: $f0 $03
	ldh a, [$35]                                     ; $71d8: $f0 $35
	dec sp                                           ; $71da: $3b
	ccf                                              ; $71db: $3f
	pop af                                           ; $71dc: $f1
	sub $7e                                          ; $71dd: $d6 $7e
	jr c, jr_090_7226                                ; $71df: $38 $45

	ld c, h                                          ; $71e1: $4c
	add l                                            ; $71e2: $85
	add hl, bc                                       ; $71e3: $09
	ld l, a                                          ; $71e4: $6f
	ld b, l                                          ; $71e5: $45
	ld d, a                                          ; $71e6: $57
	pop af                                           ; $71e7: $f1
	sub $38                                          ; $71e8: $d6 $38
	jr c, jr_090_7228                                ; $71ea: $38 $3c

	ld c, a                                          ; $71ec: $4f
	ld c, h                                          ; $71ed: $4c
	and b                                            ; $71ee: $a0
	cpl                                              ; $71ef: $2f
	add sp, $2f                                      ; $71f0: $e8 $2f
	add hl, bc                                       ; $71f2: $09
	db $ec                                           ; $71f3: $ec
	rst AddAOntoHL                                          ; $71f4: $ef
	ld b, d                                          ; $71f5: $42
	ldh a, [rWY]                                     ; $71f6: $f0 $4a
	ld e, c                                          ; $71f8: $59
	ld l, c                                          ; $71f9: $69
	ld c, d                                          ; $71fa: $4a
	xor h                                            ; $71fb: $ac
	ld l, a                                          ; $71fc: $6f
	ld d, e                                          ; $71fd: $53
	db $ec                                           ; $71fe: $ec
	db $ed                                           ; $71ff: $ed
	ld b, [hl]                                       ; $7200: $46
	ldh a, [rSB]                                     ; $7201: $f0 $01
	dec a                                            ; $7203: $3d
	ld b, c                                          ; $7204: $41
	ld c, d                                          ; $7205: $4a
	ld a, $66                                        ; $7206: $3e $66
	and b                                            ; $7208: $a0
	ld b, b                                          ; $7209: $40
	ld b, c                                          ; $720a: $41
	ld a, [hl-]                                      ; $720b: $3a
	ld b, d                                          ; $720c: $42
	pop af                                           ; $720d: $f1
	add hl, de                                       ; $720e: $19
	adc c                                            ; $720f: $89
	ldh a, [rTIMA]                                   ; $7210: $f0 $05
	ld c, d                                          ; $7212: $4a
	ld c, a                                          ; $7213: $4f
	inc de                                           ; $7214: $13
	ldh a, [$2d]                                     ; $7215: $f0 $2d
	dec sp                                           ; $7217: $3b
	ccf                                              ; $7218: $3f
	ld c, [hl]                                       ; $7219: $4e
	ld h, e                                          ; $721a: $63
	ld b, l                                          ; $721b: $45
	and b                                            ; $721c: $a0
	cpl                                              ; $721d: $2f
	add sp, -$6f                                     ; $721e: $e8 $91
	and c                                            ; $7220: $a1
	di                                               ; $7221: $f3
	ld b, [hl]                                       ; $7222: $46
	ld b, d                                          ; $7223: $42
	ldh a, [c]                                       ; $7224: $f2
	add a                                            ; $7225: $87

jr_090_7226:
	ld b, l                                          ; $7226: $45
	ld d, a                                          ; $7227: $57

jr_090_7228:
	xor h                                            ; $7228: $ac
	ldh a, [rAUD3LOW]                                ; $7229: $f0 $1d
	sbc b                                            ; $722b: $98
	ld b, h                                          ; $722c: $44
	ld c, c                                          ; $722d: $49
	ld [hl], a                                       ; $722e: $77
	add hl, sp                                       ; $722f: $39
	ld b, l                                          ; $7230: $45
	and b                                            ; $7231: $a0
	ldh a, [$0a]                                     ; $7232: $f0 $0a
	ld d, l                                          ; $7234: $55
	ldh a, [rAUD2HIGH]                               ; $7235: $f0 $19
	ld b, a                                          ; $7237: $47
	sub [hl]                                         ; $7238: $96
	ld e, a                                          ; $7239: $5f
	and b                                            ; $723a: $a0
	cpl                                              ; $723b: $2f
	ld b, e                                          ; $723c: $43
	ld b, [hl]                                       ; $723d: $46
	xor h                                            ; $723e: $ac
	pop af                                           ; $723f: $f1
	ld e, a                                          ; $7240: $5f
	dec sp                                           ; $7241: $3b
	adc [hl]                                         ; $7242: $8e
	ld d, b                                          ; $7243: $50
	ld a, [hl-]                                      ; $7244: $3a
	ld d, l                                          ; $7245: $55
	ccf                                              ; $7246: $3f
	ld c, a                                          ; $7247: $4f
	ld c, b                                          ; $7248: $48
	and b                                            ; $7249: $a0
	db $ed                                           ; $724a: $ed
	ld h, a                                          ; $724b: $67
	ld l, h                                          ; $724c: $6c
	dec a                                            ; $724d: $3d
	jr c, jr_090_7294                                ; $724e: $38 $44

	ld e, l                                          ; $7250: $5d
	ld e, d                                          ; $7251: $5a
	xor h                                            ; $7252: $ac
	ldh a, [rOBP0]                                   ; $7253: $f0 $48
	ldh a, [$2c]                                     ; $7255: $f0 $2c
	ldh a, [rLY]                                     ; $7257: $f0 $44
	inc [hl]                                         ; $7259: $34
	ldh a, [$80]                                     ; $725a: $f0 $80
	ldh a, [$c5]                                     ; $725c: $f0 $c5
	adc e                                            ; $725e: $8b
	ld e, h                                          ; $725f: $5c
	ld a, [hl-]                                      ; $7260: $3a
	ld b, d                                          ; $7261: $42
	and b                                            ; $7262: $a0
	cpl                                              ; $7263: $2f
	halt                                             ; $7264: $76
	ld c, a                                          ; $7265: $4f
	inc [hl]                                         ; $7266: $34
	adc e                                            ; $7267: $8b
	ld e, h                                          ; $7268: $5c
	ld b, h                                          ; $7269: $44
	ld b, l                                          ; $726a: $45
	add hl, bc                                       ; $726b: $09
	ld b, l                                          ; $726c: $45
	inc a                                            ; $726d: $3c
	dec sp                                           ; $726e: $3b
	dec a                                            ; $726f: $3d
	xor b                                            ; $7270: $a8
	ld e, b                                          ; $7271: $58
	ld b, [hl]                                       ; $7272: $46
	inc [hl]                                         ; $7273: $34
	ld [hl], d                                       ; $7274: $72
	ld b, a                                          ; $7275: $47
	ld h, a                                          ; $7276: $67
	ld d, h                                          ; $7277: $54
	and b                                            ; $7278: $a0
	cpl                                              ; $7279: $2f
	db $ed                                           ; $727a: $ed
	ld b, c                                          ; $727b: $41
	inc [hl]                                         ; $727c: $34
	db $ed                                           ; $727d: $ed
	sub d                                            ; $727e: $92
	ld b, h                                          ; $727f: $44
	ld a, [hl-]                                      ; $7280: $3a
	add hl, bc                                       ; $7281: $09
	ld e, d                                          ; $7282: $5a
	add hl, sp                                       ; $7283: $39
	ld a, c                                          ; $7284: $79
	ld c, b                                          ; $7285: $48
	and b                                            ; $7286: $a0
	cpl                                              ; $7287: $2f
	ldh a, [rOBP0]                                   ; $7288: $f0 $48
	ldh a, [$2c]                                     ; $728a: $f0 $2c
	adc e                                            ; $728c: $8b
	ld e, h                                          ; $728d: $5c
	db $ec                                           ; $728e: $ec
	ld [hl+], a                                      ; $728f: $22
	add hl, bc                                       ; $7290: $09
	ldh a, [rSVBK]                                   ; $7291: $f0 $70
	ld c, d                                          ; $7293: $4a

jr_090_7294:
	ld c, a                                          ; $7294: $4f
	ldh a, [c]                                       ; $7295: $f2
	rrca                                             ; $7296: $0f
	di                                               ; $7297: $f3
	or b                                             ; $7298: $b0
	dec sp                                           ; $7299: $3b
	ccf                                              ; $729a: $3f
	ld c, [hl]                                       ; $729b: $4e
	ld b, d                                          ; $729c: $42
	and b                                            ; $729d: $a0
	ld e, d                                          ; $729e: $5a
	ld b, c                                          ; $729f: $41
	ld a, [hl-]                                      ; $72a0: $3a
	ldh a, [rOBP0]                                   ; $72a1: $f0 $48
	ldh a, [$2c]                                     ; $72a3: $f0 $2c
	ld d, e                                          ; $72a5: $53
	adc e                                            ; $72a6: $8b
	ld e, h                                          ; $72a7: $5c
	ld a, [hl-]                                      ; $72a8: $3a
	ld b, d                                          ; $72a9: $42
	and c                                            ; $72aa: $a1
	cpl                                              ; $72ab: $2f
	ld a, [$eda6]                                    ; $72ac: $fa $a6 $ed
	ld b, e                                          ; $72af: $43
	inc [hl]                                         ; $72b0: $34
	db $ec                                           ; $72b1: $ec
	reti                                             ; $72b2: $d9


	add hl, bc                                       ; $72b3: $09
	ld h, h                                          ; $72b4: $64
	ldh a, [c]                                       ; $72b5: $f2
	ld a, l                                          ; $72b6: $7d
	inc [hl]                                         ; $72b7: $34
	ldh a, [$ab]                                     ; $72b8: $f0 $ab
	ld d, b                                          ; $72ba: $50
	ld a, $38                                        ; $72bb: $3e $38
	db $ec                                           ; $72bd: $ec
	ret c                                            ; $72be: $d8

	xor b                                            ; $72bf: $a8
	ld b, [hl]                                       ; $72c0: $46
	ld c, e                                          ; $72c1: $4b
	ld c, e                                          ; $72c2: $4b
	and b                                            ; $72c3: $a0
	cpl                                              ; $72c4: $2f
	db $ec                                           ; $72c5: $ec
	ld a, [$3a3c]                                    ; $72c6: $fa $3c $3a
	add hl, bc                                       ; $72c9: $09
	ld l, a                                          ; $72ca: $6f
	ld b, d                                          ; $72cb: $42
	ldh a, [$2d]                                     ; $72cc: $f0 $2d
	dec sp                                           ; $72ce: $3b
	ccf                                              ; $72cf: $3f
	ld c, [hl]                                       ; $72d0: $4e
	db $ec                                           ; $72d1: $ec
	ld a, [$134b]                                    ; $72d2: $fa $4b $13
	ldh a, [rAUD3LEVEL]                              ; $72d5: $f0 $1c
	ld d, e                                          ; $72d7: $53
	ldh a, [$71]                                     ; $72d8: $f0 $71
	jr c, jr_090_733f                                ; $72da: $38 $63

	ld b, l                                          ; $72dc: $45
	and b                                            ; $72dd: $a0
	cpl                                              ; $72de: $2f
	db $ec                                           ; $72df: $ec
	and $44                                          ; $72e0: $e6 $44
	ld b, l                                          ; $72e2: $45
	add hl, bc                                       ; $72e3: $09
	ld a, $48                                        ; $72e4: $3e $48
	xor h                                            ; $72e6: $ac
	pop af                                           ; $72e7: $f1
	jp nz, $1ff3                                     ; $72e8: $c2 $f3 $1f

	ld a, [hl-]                                      ; $72eb: $3a
	ldh a, [$d2]                                     ; $72ec: $f0 $d2
	ld c, d                                          ; $72ee: $4a
	add d                                            ; $72ef: $82
	ld h, e                                          ; $72f0: $63
	ld a, [hl-]                                      ; $72f1: $3a
	jr c, jr_090_733e                                ; $72f2: $38 $4a

	ld b, l                                          ; $72f4: $45
	xor b                                            ; $72f5: $a8
	db $eb                                           ; $72f6: $eb
	ld c, a                                          ; $72f7: $4f
	db $ec                                           ; $72f8: $ec
	ret c                                            ; $72f9: $d8

	and b                                            ; $72fa: $a0
	db $ec                                           ; $72fb: $ec
	ld a, [$3f3b]                                    ; $72fc: $fa $3b $3f
	inc de                                           ; $72ff: $13
	pop af                                           ; $7300: $f1
	ld a, [de]                                       ; $7301: $1a
	di                                               ; $7302: $f3
	add c                                            ; $7303: $81
	ld a, $40                                        ; $7304: $3e $40
	add hl, sp                                       ; $7306: $39
	ld b, a                                          ; $7307: $47
	ld a, [hl-]                                      ; $7308: $3a
	dec sp                                           ; $7309: $3b
	dec a                                            ; $730a: $3d
	ld b, c                                          ; $730b: $41
	ld c, d                                          ; $730c: $4a
	ld a, $66                                        ; $730d: $3e $66
	and c                                            ; $730f: $a1
	cpl                                              ; $7310: $2f
	db $d3                                           ; $7311: $d3
	and c                                            ; $7312: $a1
	ld h, c                                          ; $7313: $61
	inc [hl]                                         ; $7314: $34
	ldh a, [$f5]                                     ; $7315: $f0 $f5
	dec sp                                           ; $7317: $3b
	dec a                                            ; $7318: $3d
	dec sp                                           ; $7319: $3b
	ld e, l                                          ; $731a: $5d
	and c                                            ; $731b: $a1
	cpl                                              ; $731c: $2f
	ldh a, [c]                                       ; $731d: $f2
	dec c                                            ; $731e: $0d
	dec sp                                           ; $731f: $3b
	ccf                                              ; $7320: $3f
	ld b, [hl]                                       ; $7321: $46
	ldh a, [rSB]                                     ; $7322: $f0 $01
	ld a, [hl-]                                      ; $7324: $3a
	jr c, jr_090_7370                                ; $7325: $38 $49

	ld c, h                                          ; $7327: $4c
	add hl, bc                                       ; $7328: $09
	call c, $eca8                                    ; $7329: $dc $a8 $ec
	ld a, [$5d44]                                    ; $732c: $fa $44 $5d
	db $ec                                           ; $732f: $ec
	ret c                                            ; $7330: $d8

	ld e, l                                          ; $7331: $5d
	ld e, d                                          ; $7332: $5a
	ld c, h                                          ; $7333: $4c
	and b                                            ; $7334: $a0
	cpl                                              ; $7335: $2f
	di                                               ; $7336: $f3
	add c                                            ; $7337: $81
	ldh a, [rKEY1]                                   ; $7338: $f0 $4d
	ccf                                              ; $733a: $3f
	sub c                                            ; $733b: $91
	ldh a, [$59]                                     ; $733c: $f0 $59

jr_090_733e:
	add hl, bc                                       ; $733e: $09

jr_090_733f:
	ld b, [hl]                                       ; $733f: $46
	ld a, [hl-]                                      ; $7340: $3a
	dec a                                            ; $7341: $3d
	ld l, h                                          ; $7342: $6c
	dec a                                            ; $7343: $3d
	jr c, jr_090_7380                                ; $7344: $38 $3a

	add h                                            ; $7346: $84
	inc de                                           ; $7347: $13
	ld a, e                                          ; $7348: $7b
	dec sp                                           ; $7349: $3b
	inc a                                            ; $734a: $3c
	ld d, a                                          ; $734b: $57
	ld b, h                                          ; $734c: $44
	ld c, c                                          ; $734d: $49
	inc de                                           ; $734e: $13
	add h                                            ; $734f: $84
	ldh a, [$2a]                                     ; $7350: $f0 $2a
	ld c, a                                          ; $7352: $4f
	ldh a, [$0a]                                     ; $7353: $f0 $0a
	jr c, @+$3b                                      ; $7355: $38 $39

	ld h, c                                          ; $7357: $61
	ld b, a                                          ; $7358: $47
	di                                               ; $7359: $f3
	add c                                            ; $735a: $81
	ldh a, [rKEY1]                                   ; $735b: $f0 $4d
	call c, $2fa0                                    ; $735d: $dc $a0 $2f
	ld b, e                                          ; $7360: $43
	ld b, b                                          ; $7361: $40
	ld c, l                                          ; $7362: $4d
	ld e, e                                          ; $7363: $5b
	ld d, [hl]                                       ; $7364: $56
	xor h                                            ; $7365: $ac
	db $eb                                           ; $7366: $eb
	ld d, d                                          ; $7367: $52
	inc a                                            ; $7368: $3c
	and b                                            ; $7369: $a0
	ld c, h                                          ; $736a: $4c
	add l                                            ; $736b: $85
	ld c, b                                          ; $736c: $48
	inc [hl]                                         ; $736d: $34
	ldh a, [hDisp0_OBP0]                                     ; $736e: $f0 $86

jr_090_7370:
	ld c, e                                          ; $7370: $4b
	adc e                                            ; $7371: $8b
	ld e, h                                          ; $7372: $5c
	and c                                            ; $7373: $a1
	cpl                                              ; $7374: $2f
	db $ec                                           ; $7375: $ec
	dec l                                            ; $7376: $2d
	adc e                                            ; $7377: $8b
	ld e, h                                          ; $7378: $5c
	ld b, h                                          ; $7379: $44
	ld b, l                                          ; $737a: $45
	add hl, bc                                       ; $737b: $09
	ld l, a                                          ; $737c: $6f
	ld c, a                                          ; $737d: $4f
	ld c, b                                          ; $737e: $48
	xor h                                            ; $737f: $ac

jr_090_7380:
	ld a, [hl-]                                      ; $7380: $3a
	ld b, c                                          ; $7381: $41
	inc a                                            ; $7382: $3c
	pop af                                           ; $7383: $f1
	add c                                            ; $7384: $81
	ld h, c                                          ; $7385: $61
	ldh a, [$ac]                                     ; $7386: $f0 $ac
	ld d, l                                          ; $7388: $55
	ld h, e                                          ; $7389: $63
	ld b, l                                          ; $738a: $45
	ld c, h                                          ; $738b: $4c
	and b                                            ; $738c: $a0
	cpl                                              ; $738d: $2f
	jp nc, Jump_090_5c8b                             ; $738e: $d2 $8b $5c

	db $ec                                           ; $7391: $ec
	ret c                                            ; $7392: $d8

	add hl, bc                                       ; $7393: $09
	db $d3                                           ; $7394: $d3
	ld c, b                                          ; $7395: $48
	and b                                            ; $7396: $a0
	cpl                                              ; $7397: $2f
	ldh a, [hDisp0_OBP0]                                     ; $7398: $f0 $86
	ld b, l                                          ; $739a: $45
	ld d, a                                          ; $739b: $57
	pop af                                           ; $739c: $f1
	ld h, a                                          ; $739d: $67
	adc h                                            ; $739e: $8c

jr_090_739f:
	inc a                                            ; $739f: $3c
	ld a, [hl-]                                      ; $73a0: $3a
	add hl, bc                                       ; $73a1: $09
	ld h, h                                          ; $73a2: $64
	ldh a, [c]                                       ; $73a3: $f2
	add h                                            ; $73a4: $84
	ldh a, [$c9]                                     ; $73a5: $f0 $c9
	jr c, jr_090_73e6                                ; $73a7: $38 $3d

	ld b, d                                          ; $73a9: $42
	and c                                            ; $73aa: $a1
	ld e, d                                          ; $73ab: $5a
	ld b, c                                          ; $73ac: $41
	ld a, [hl-]                                      ; $73ad: $3a
	pop af                                           ; $73ae: $f1
	jp c, $2cf0                                      ; $73af: $da $f0 $2c

	ld d, e                                          ; $73b2: $53
	adc e                                            ; $73b3: $8b
	ld e, h                                          ; $73b4: $5c
	ld a, [hl-]                                      ; $73b5: $3a
	ld b, d                                          ; $73b6: $42
	and c                                            ; $73b7: $a1
	cpl                                              ; $73b8: $2f
	ldh a, [$31]                                     ; $73b9: $f0 $31
	ld d, e                                          ; $73bb: $53
	ldh a, [$b7]                                     ; $73bc: $f0 $b7
	ldh a, [$8c]                                     ; $73be: $f0 $8c
	ld c, l                                          ; $73c0: $4d
	ld c, [hl]                                       ; $73c1: $4e
	ld l, [hl]                                       ; $73c2: $6e
	add b                                            ; $73c3: $80
	add hl, bc                                       ; $73c4: $09
	ld l, e                                          ; $73c5: $6b
	inc [hl]                                         ; $73c6: $34
	ld b, b                                          ; $73c7: $40
	ld c, l                                          ; $73c8: $4d
	and c                                            ; $73c9: $a1
	cpl                                              ; $73ca: $2f
	ldh a, [hDisp0_OBP0]                                     ; $73cb: $f0 $86
	ld d, e                                          ; $73cd: $53
	db $ec                                           ; $73ce: $ec
	inc de                                           ; $73cf: $13
	ld d, b                                          ; $73d0: $50
	ld l, e                                          ; $73d1: $6b
	ld c, d                                          ; $73d2: $4a
	ld c, a                                          ; $73d3: $4f
	adc e                                            ; $73d4: $8b
	ld e, h                                          ; $73d5: $5c
	add hl, bc                                       ; $73d6: $09
	db $ed                                           ; $73d7: $ed
	ld c, c                                          ; $73d8: $49
	ld c, d                                          ; $73d9: $4a
	ld c, a                                          ; $73da: $4f
	inc de                                           ; $73db: $13
	push af                                          ; $73dc: $f5
	add hl, de                                       ; $73dd: $19
	ld b, d                                          ; $73de: $42
	ld b, [hl]                                       ; $73df: $46
	ld c, [hl]                                       ; $73e0: $4e
	ldh a, [hDisp0_OBP0]                                     ; $73e1: $f0 $86
	ld c, c                                          ; $73e3: $49
	inc a                                            ; $73e4: $3c
	ld b, [hl]                                       ; $73e5: $46

jr_090_73e6:
	ld c, [hl]                                       ; $73e6: $4e
	ld h, e                                          ; $73e7: $63
	ld b, l                                          ; $73e8: $45
	and b                                            ; $73e9: $a0
	cpl                                              ; $73ea: $2f
	ldh a, [$b7]                                     ; $73eb: $f0 $b7
	di                                               ; $73ed: $f3
	ld a, h                                          ; $73ee: $7c
	pop af                                           ; $73ef: $f1
	jp c, $2cf0                                      ; $73f0: $da $f0 $2c

	ld a, [hl-]                                      ; $73f3: $3a
	ld b, c                                          ; $73f4: $41
	inc a                                            ; $73f5: $3c
	adc e                                            ; $73f6: $8b
	ld e, h                                          ; $73f7: $5c
	ld b, h                                          ; $73f8: $44
	ld a, [hl-]                                      ; $73f9: $3a
	add hl, bc                                       ; $73fa: $09
	ld b, [hl]                                       ; $73fb: $46
	ld c, e                                          ; $73fc: $4b
	ld c, e                                          ; $73fd: $4b
	xor h                                            ; $73fe: $ac
	ldh a, [rAUD4ENV]                                ; $73ff: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7401: $f0 $23

jr_090_7403:
	jr c, jr_090_739f                                ; $7403: $38 $9a

	add d                                            ; $7405: $82
	add hl, sp                                       ; $7406: $39
	ld h, e                                          ; $7407: $63
	ld c, h                                          ; $7408: $4c
	and b                                            ; $7409: $a0
	ld b, [hl]                                       ; $740a: $46
	ld b, b                                          ; $740b: $40
	ld d, h                                          ; $740c: $54
	ld d, e                                          ; $740d: $53
	inc de                                           ; $740e: $13
	ld a, [hl]                                       ; $740f: $7e
	jr c, jr_090_7403                                ; $7410: $38 $f1

	ld [de], a                                       ; $7412: $12
	ldh a, [$7e]                                     ; $7413: $f0 $7e
	sbc b                                            ; $7415: $98
	ldh a, [rWX]                                     ; $7416: $f0 $4b
	ld h, l                                          ; $7418: $65
	ld b, l                                          ; $7419: $45
	xor b                                            ; $741a: $a8
	ldh a, [$08]                                     ; $741b: $f0 $08
	ld d, b                                          ; $741d: $50
	inc [hl]                                         ; $741e: $34
	db $ec                                           ; $741f: $ec
	xor $ec                                          ; $7420: $ee $ec
	xor $a0                                          ; $7422: $ee $a0
	cpl                                              ; $7424: $2f
	ld b, e                                          ; $7425: $43
	ld b, b                                          ; $7426: $40
	inc [hl]                                         ; $7427: $34
	ld b, b                                          ; $7428: $40
	ld b, c                                          ; $7429: $41
	ld a, [hl-]                                      ; $742a: $3a
	ld b, a                                          ; $742b: $47
	inc de                                           ; $742c: $13
	pop af                                           ; $742d: $f1
	ld e, a                                          ; $742e: $5f
	dec sp                                           ; $742f: $3b
	adc [hl]                                         ; $7430: $8e
	ld d, b                                          ; $7431: $50
	ld a, [hl-]                                      ; $7432: $3a
	ld d, l                                          ; $7433: $55
	ccf                                              ; $7434: $3f
	ld c, a                                          ; $7435: $4f
	ld c, b                                          ; $7436: $48
	and b                                            ; $7437: $a0
	pop af                                           ; $7438: $f1
	ld h, l                                          ; $7439: $65
	dec sp                                           ; $743a: $3b
	ccf                                              ; $743b: $3f
	xor h                                            ; $743c: $ac
	ld [hl], d                                       ; $743d: $72
	ccf                                              ; $743e: $3f
	ccf                                              ; $743f: $3f
	inc [hl]                                         ; $7440: $34
	ldh a, [c]                                       ; $7441: $f2
	ld a, [hl]                                       ; $7442: $7e
	ld e, h                                          ; $7443: $5c
	ld a, [hl-]                                      ; $7444: $3a
	jr c, jr_090_74aa                                ; $7445: $38 $63

	ld b, l                                          ; $7447: $45
	ld c, h                                          ; $7448: $4c
	and b                                            ; $7449: $a0
	cpl                                              ; $744a: $2f
	halt                                             ; $744b: $76
	ld c, a                                          ; $744c: $4f
	ld b, b                                          ; $744d: $40
	add hl, sp                                       ; $744e: $39
	ld [hl], a                                       ; $744f: $77
	add hl, sp                                       ; $7450: $39
	ld b, l                                          ; $7451: $45
	add hl, bc                                       ; $7452: $09
	ld l, d                                          ; $7453: $6a
	ldh a, [$0d]                                     ; $7454: $f0 $0d
	ld c, e                                          ; $7456: $4b
	inc [hl]                                         ; $7457: $34
	adc b                                            ; $7458: $88
	ldh a, [$2c]                                     ; $7459: $f0 $2c
	ld b, d                                          ; $745b: $42
	inc de                                           ; $745c: $13
	pop af                                           ; $745d: $f1
	ld h, l                                          ; $745e: $65
	ldh a, [$c9]                                     ; $745f: $f0 $c9
	ld h, d                                          ; $7461: $62
	ld [hl], d                                       ; $7462: $72
	ld b, a                                          ; $7463: $47
	ld h, a                                          ; $7464: $67
	ld e, h                                          ; $7465: $5c
	dec a                                            ; $7466: $3d
	jr c, jr_090_74b5                                ; $7467: $38 $4c

	and b                                            ; $7469: $a0
	cpl                                              ; $746a: $2f
	db $eb                                           ; $746b: $eb
	ld d, e                                          ; $746c: $53
	ld b, l                                          ; $746d: $45
	add hl, bc                                       ; $746e: $09
	rst JumpTable                                          ; $746f: $c7
	xor c                                            ; $7470: $a9
	db $ec                                           ; $7471: $ec
	ld d, $74                                        ; $7472: $16 $74
	ld c, b                                          ; $7474: $48
	and b                                            ; $7475: $a0
	cpl                                              ; $7476: $2f
	adc b                                            ; $7477: $88
	ldh a, [$2c]                                     ; $7478: $f0 $2c
	ld b, d                                          ; $747a: $42
	pop af                                           ; $747b: $f1
	ld h, l                                          ; $747c: $65
	ldh a, [$c9]                                     ; $747d: $f0 $c9
	ld a, [hl-]                                      ; $747f: $3a
	ld d, b                                          ; $7480: $50
	ld c, h                                          ; $7481: $4c
	add hl, bc                                       ; $7482: $09
	ld b, b                                          ; $7483: $40
	add hl, sp                                       ; $7484: $39
	ld b, h                                          ; $7485: $44
	ld c, h                                          ; $7486: $4c
	xor b                                            ; $7487: $a8
	ld c, d                                          ; $7488: $4a
	ld c, a                                          ; $7489: $4f
	inc [hl]                                         ; $748a: $34
	ld d, h                                          ; $748b: $54
	ld c, l                                          ; $748c: $4d
	ld c, a                                          ; $748d: $4f
	ldh a, [$57]                                     ; $748e: $f0 $57
	ldh a, [$ae]                                     ; $7490: $f0 $ae
	ld b, h                                          ; $7492: $44
	ld b, l                                          ; $7493: $45
	and b                                            ; $7494: $a0
	ldh a, [c]                                       ; $7495: $f2
	ld h, e                                          ; $7496: $63
	pop af                                           ; $7497: $f1
	jp Jump_090_514a                                 ; $7498: $c3 $4a $51


	xor b                                            ; $749b: $a8
	xor $1e                                          ; $749c: $ee $1e
	pop af                                           ; $749e: $f1
	ld h, l                                          ; $749f: $65
	ldh a, [$e7]                                     ; $74a0: $f0 $e7
	ld c, e                                          ; $74a2: $4b
	ld l, e                                          ; $74a3: $6b
	ld c, d                                          ; $74a4: $4a
	ld a, $66                                        ; $74a5: $3e $66
	add hl, sp                                       ; $74a7: $39
	and c                                            ; $74a8: $a1
	cpl                                              ; $74a9: $2f

jr_090_74aa:
	jp hl                                            ; $74aa: $e9


	call nz, $f209                                   ; $74ab: $c4 $09 $f2
	ld [hl], e                                       ; $74ae: $73
	pop af                                           ; $74af: $f1
	dec sp                                           ; $74b0: $3b
	xor b                                            ; $74b1: $a8
	ldh a, [$2d]                                     ; $74b2: $f0 $2d
	dec sp                                           ; $74b4: $3b

jr_090_74b5:
	ccf                                              ; $74b5: $3f
	dec a                                            ; $74b6: $3d
	inc a                                            ; $74b7: $3c
	and b                                            ; $74b8: $a0
	cpl                                              ; $74b9: $2f
	ld b, [hl]                                       ; $74ba: $46
	ld c, l                                          ; $74bb: $4d
	ld c, e                                          ; $74bc: $4b
	inc [hl]                                         ; $74bd: $34
	ldh a, [rAUD4GO]                                 ; $74be: $f0 $23
	ldh a, [c]                                       ; $74c0: $f2
	rrca                                             ; $74c1: $0f
	ldh a, [$e7]                                     ; $74c2: $f0 $e7
	ld b, h                                          ; $74c4: $44
	ld b, l                                          ; $74c5: $45
	add hl, bc                                       ; $74c6: $09
	ldh a, [rAUD4GO]                                 ; $74c7: $f0 $23
	ldh a, [c]                                       ; $74c9: $f2
	rrca                                             ; $74ca: $0f
	ldh a, [$e7]                                     ; $74cb: $f0 $e7
	ld c, e                                          ; $74cd: $4b
	inc de                                           ; $74ce: $13
	ld b, [hl]                                       ; $74cf: $46
	ld b, c                                          ; $74d0: $41
	ld a, [hl-]                                      ; $74d1: $3a
	ldh a, [c]                                       ; $74d2: $f2
	ret z                                            ; $74d3: $c8

	db $ec                                           ; $74d4: $ec
	ret c                                            ; $74d5: $d8

	ld b, l                                          ; $74d6: $45
	and b                                            ; $74d7: $a0
	cpl                                              ; $74d8: $2f
	ldh a, [rAUD3LEVEL]                              ; $74d9: $f0 $1c
	ld d, e                                          ; $74db: $53
	ldh a, [$5c]                                     ; $74dc: $f0 $5c
	ld d, l                                          ; $74de: $55
	ccf                                              ; $74df: $3f
	ld b, l                                          ; $74e0: $45
	ld d, l                                          ; $74e1: $55
	ld [hl], d                                       ; $74e2: $72
	ld e, [hl]                                       ; $74e3: $5e
	ld a, [hl-]                                      ; $74e4: $3a
	jr c, jr_090_7521                                ; $74e5: $38 $3a

	add hl, bc                                       ; $74e7: $09
	pop af                                           ; $74e8: $f1
	ld d, $47                                        ; $74e9: $16 $47
	ldh a, [$5c]                                     ; $74eb: $f0 $5c
	ld d, l                                          ; $74ed: $55
	ld a, [hl-]                                      ; $74ee: $3a
	dec sp                                           ; $74ef: $3b
	dec a                                            ; $74f0: $3d
	ld b, d                                          ; $74f1: $42
	xor c                                            ; $74f2: $a9
	ld h, h                                          ; $74f3: $64
	ldh a, [rAUD3HIGH]                               ; $74f4: $f0 $1e
	ld c, c                                          ; $74f6: $49
	ldh a, [rAUD3HIGH]                               ; $74f7: $f0 $1e
	pop af                                           ; $74f9: $f1
	halt                                             ; $74fa: $76
	ldh a, [rAUD3HIGH]                               ; $74fb: $f0 $1e
	ld e, l                                          ; $74fd: $5d
	and b                                            ; $74fe: $a0
	cpl                                              ; $74ff: $2f
	jp hl                                            ; $7500: $e9


	ld a, [hl-]                                      ; $7501: $3a
	and c                                            ; $7502: $a1
	db $ec                                           ; $7503: $ec
	dec b                                            ; $7504: $05
	ld b, d                                          ; $7505: $42
	pop af                                           ; $7506: $f1
	dec [hl]                                         ; $7507: $35
	xor c                                            ; $7508: $a9
	ld l, l                                          ; $7509: $6d
	push af                                          ; $750a: $f5
	inc bc                                           ; $750b: $03
	ldh a, [c]                                       ; $750c: $f2
	add hl, hl                                       ; $750d: $29
	ldh a, [c]                                       ; $750e: $f2
	xor [hl]                                         ; $750f: $ae
	ld b, l                                          ; $7510: $45
	and b                                            ; $7511: $a0
	cpl                                              ; $7512: $2f
	ld b, e                                          ; $7513: $43
	ld e, b                                          ; $7514: $58
	ld b, [hl]                                       ; $7515: $46
	inc [hl]                                         ; $7516: $34
	sub [hl]                                         ; $7517: $96
	ld e, a                                          ; $7518: $5f
	add hl, sp                                       ; $7519: $39
	inc a                                            ; $751a: $3c
	and b                                            ; $751b: $a0
	ld e, [hl]                                       ; $751c: $5e
	inc [hl]                                         ; $751d: $34
	ld e, [hl]                                       ; $751e: $5e
	add l                                            ; $751f: $85
	ld c, b                                          ; $7520: $48

jr_090_7521:
	and b                                            ; $7521: $a0
	db $ed                                           ; $7522: $ed
	ld [bc], a                                       ; $7523: $02
	ccf                                              ; $7524: $3f
	xor h                                            ; $7525: $ac
	ld l, e                                          ; $7526: $6b
	inc a                                            ; $7527: $3c
	pop af                                           ; $7528: $f1
	add c                                            ; $7529: $81
	ld h, c                                          ; $752a: $61
	ldh a, [$ac]                                     ; $752b: $f0 $ac
	inc a                                            ; $752d: $3c
	ld a, [hl-]                                      ; $752e: $3a
	jr c, @+$3c                                      ; $752f: $38 $3a

	ld c, b                                          ; $7531: $48
	and b                                            ; $7532: $a0
	cpl                                              ; $7533: $2f
	ld [hl], b                                       ; $7534: $70
	ld [hl], c                                       ; $7535: $71
	ld b, c                                          ; $7536: $41
	inc [hl]                                         ; $7537: $34
	ld [hl], d                                       ; $7538: $72
	dec a                                            ; $7539: $3d
	jr c, @-$0e                                      ; $753a: $38 $f0

	ccf                                              ; $753c: $3f
	ld d, e                                          ; $753d: $53
	ld b, [hl]                                       ; $753e: $46
	dec sp                                           ; $753f: $3b
	ccf                                              ; $7540: $3f
	ld c, b                                          ; $7541: $48
	add hl, bc                                       ; $7542: $09
	ld b, [hl]                                       ; $7543: $46
	inc [hl]                                         ; $7544: $34
	jr c, jr_090_757f                                ; $7545: $38 $38

	ld b, d                                          ; $7547: $42
	xor b                                            ; $7548: $a8
	ld [hl], b                                       ; $7549: $70
	ld [hl], c                                       ; $754a: $71
	ld b, c                                          ; $754b: $41
	ld c, h                                          ; $754c: $4c
	inc [hl]                                         ; $754d: $34
	ldh a, [$5d]                                     ; $754e: $f0 $5d
	ld a, [hl-]                                      ; $7550: $3a
	ld d, h                                          ; $7551: $54
	ld c, c                                          ; $7552: $49
	add d                                            ; $7553: $82
	dec sp                                           ; $7554: $3b
	ccf                                              ; $7555: $3f
	ld c, b                                          ; $7556: $48
	and b                                            ; $7557: $a0
	cpl                                              ; $7558: $2f
	ld b, b                                          ; $7559: $40
	ld h, e                                          ; $755a: $63
	ld b, b                                          ; $755b: $40
	ld h, e                                          ; $755c: $63
	ld d, c                                          ; $755d: $51
	ld c, [hl]                                       ; $755e: $4e
	ld a, [hl-]                                      ; $755f: $3a
	ld b, l                                          ; $7560: $45
	add hl, bc                                       ; $7561: $09
	ld [hl], b                                       ; $7562: $70
	inc [hl]                                         ; $7563: $34
	ld [hl], b                                       ; $7564: $70
	ld [hl], c                                       ; $7565: $71
	ld b, c                                          ; $7566: $41
	ld c, b                                          ; $7567: $48
	and b                                            ; $7568: $a0
	cpl                                              ; $7569: $2f
	add sp, $38                                      ; $756a: $e8 $38
	and c                                            ; $756c: $a1
	add h                                            ; $756d: $84
	ld b, d                                          ; $756e: $42
	ldh a, [rAUDVOL]                                 ; $756f: $f0 $24
	inc [hl]                                         ; $7571: $34
	ldh a, [$0c]                                     ; $7572: $f0 $0c
	jr c, jr_090_75b5                                ; $7574: $38 $3f

	ld c, [hl]                                       ; $7576: $4e
	and c                                            ; $7577: $a1
	ld d, h                                          ; $7578: $54
	add hl, sp                                       ; $7579: $39
	jr c, jr_090_75b5                                ; $757a: $38 $39

	ldh a, [$3f]                                     ; $757c: $f0 $3f
	xor b                                            ; $757e: $a8

jr_090_757f:
	ld l, a                                          ; $757f: $6f
	ld a, [hl-]                                      ; $7580: $3a
	ld b, c                                          ; $7581: $41
	inc a                                            ; $7582: $3c
	ld l, l                                          ; $7583: $6d
	ldh a, [rTIMA]                                   ; $7584: $f0 $05
	ldh a, [$bd]                                     ; $7586: $f0 $bd
	ld e, l                                          ; $7588: $5d
	ld b, b                                          ; $7589: $40
	add hl, sp                                       ; $758a: $39
	ld c, a                                          ; $758b: $4f
	ld a, [hl-]                                      ; $758c: $3a
	jr c, jr_090_75c9                                ; $758d: $38 $3a

	and b                                            ; $758f: $a0
	cpl                                              ; $7590: $2f
	sub d                                            ; $7591: $92
	adc [hl]                                         ; $7592: $8e
	ld c, l                                          ; $7593: $4d
	ld a, e                                          ; $7594: $7b
	ldh a, [$bd]                                     ; $7595: $f0 $bd
	ld e, l                                          ; $7597: $5d
	ld c, [hl]                                       ; $7598: $4e
	ld b, l                                          ; $7599: $45
	add hl, sp                                       ; $759a: $39
	ld b, a                                          ; $759b: $47
	ld a, [hl-]                                      ; $759c: $3a
	ld c, [hl]                                       ; $759d: $4e
	ld b, l                                          ; $759e: $45
	add hl, bc                                       ; $759f: $09
	db $ec                                           ; $75a0: $ec
	ld d, $a8                                        ; $75a1: $16 $a8
	ld b, b                                          ; $75a3: $40
	ld b, d                                          ; $75a4: $42
	add hl, sp                                       ; $75a5: $39
	ld h, c                                          ; $75a6: $61
	ld l, e                                          ; $75a7: $6b
	inc a                                            ; $75a8: $3c
	ldh a, [$bd]                                     ; $75a9: $f0 $bd
	jr c, jr_090_75ec                                ; $75ab: $38 $3f

	ld l, h                                          ; $75ad: $6c
	ld b, l                                          ; $75ae: $45
	add hl, sp                                       ; $75af: $39
	inc a                                            ; $75b0: $3c
	ld a, [hl-]                                      ; $75b1: $3a
	and b                                            ; $75b2: $a0
	cpl                                              ; $75b3: $2f
	ld a, a                                          ; $75b4: $7f

jr_090_75b5:
	ld b, a                                          ; $75b5: $47
	ld a, $3a                                        ; $75b6: $3e $3a
	jr c, @+$36                                      ; $75b8: $38 $34

	ld a, a                                          ; $75ba: $7f
	ld b, a                                          ; $75bb: $47
	ld a, $3a                                        ; $75bc: $3e $3a
	jr c, jr_090_75c9                                ; $75be: $38 $09

	ld a, a                                          ; $75c0: $7f
	ld b, a                                          ; $75c1: $47
	ld c, e                                          ; $75c2: $4b
	ld a, $3f                                        ; $75c3: $3e $3f
	ld a, [hl-]                                      ; $75c5: $3a
	jr c, jr_090_7625                                ; $75c6: $38 $5d

	ld e, d                                          ; $75c8: $5a

jr_090_75c9:
	ld c, h                                          ; $75c9: $4c
	and b                                            ; $75ca: $a0
	cpl                                              ; $75cb: $2f
	ld b, b                                          ; $75cc: $40
	ld d, a                                          ; $75cd: $57
	ld d, [hl]                                       ; $75ce: $56
	ld b, b                                          ; $75cf: $40
	add hl, sp                                       ; $75d0: $39
	ld b, h                                          ; $75d1: $44
	add hl, bc                                       ; $75d2: $09
	ld b, b                                          ; $75d3: $40
	ld b, c                                          ; $75d4: $41
	ld a, [hl-]                                      ; $75d5: $3a
	ld b, a                                          ; $75d6: $47
	ld e, h                                          ; $75d7: $5c
	dec sp                                           ; $75d8: $3b
	ldh a, [$36]                                     ; $75d9: $f0 $36
	ld d, a                                          ; $75db: $57
	inc de                                           ; $75dc: $13
	add d                                            ; $75dd: $82
	ld h, e                                          ; $75de: $63
	ld a, [hl-]                                      ; $75df: $3a
	ld d, l                                          ; $75e0: $55
	ccf                                              ; $75e1: $3f
	ld c, a                                          ; $75e2: $4f
	jr c, jr_090_761d                                ; $75e3: $38 $38

	db $ec                                           ; $75e5: $ec
	ret c                                            ; $75e6: $d8

	and b                                            ; $75e7: $a0
	ldh a, [$5c]                                     ; $75e8: $f0 $5c
	ld b, d                                          ; $75ea: $42
	di                                               ; $75eb: $f3

jr_090_75ec:
	ld h, d                                          ; $75ec: $62
	ldh a, [$0e]                                     ; $75ed: $f0 $0e
	ld b, d                                          ; $75ef: $42
	ldh a, [$6e]                                     ; $75f0: $f0 $6e
	add e                                            ; $75f2: $83
	inc de                                           ; $75f3: $13
	dec sp                                           ; $75f4: $3b
	ccf                                              ; $75f5: $3f
	ldh a, [$78]                                     ; $75f6: $f0 $78
	ld e, e                                          ; $75f8: $5b
	ld b, d                                          ; $75f9: $42
	ldh a, [$3f]                                     ; $75fa: $f0 $3f
	ld b, h                                          ; $75fc: $44
	ld c, h                                          ; $75fd: $4c
	and b                                            ; $75fe: $a0
	cpl                                              ; $75ff: $2f
	db $eb                                           ; $7600: $eb
	ld d, c                                          ; $7601: $51
	inc [hl]                                         ; $7602: $34
	ld b, b                                          ; $7603: $40
	ld b, c                                          ; $7604: $41
	ld a, [hl-]                                      ; $7605: $3a
	ldh a, [$78]                                     ; $7606: $f0 $78
	ld e, e                                          ; $7608: $5b
	inc a                                            ; $7609: $3c
	ld a, [hl-]                                      ; $760a: $3a
	add hl, bc                                       ; $760b: $09
	ld b, b                                          ; $760c: $40
	add hl, sp                                       ; $760d: $39
	ld c, d                                          ; $760e: $4a
	ld a, $66                                        ; $760f: $3e $66
	add hl, sp                                       ; $7611: $39
	xor b                                            ; $7612: $a8
	ld e, h                                          ; $7613: $5c
	dec sp                                           ; $7614: $3b
	ld c, c                                          ; $7615: $49
	ldh a, [$f8]                                     ; $7616: $f0 $f8
	ld c, a                                          ; $7618: $4f
	ld d, h                                          ; $7619: $54
	ld b, c                                          ; $761a: $41
	ld a, [hl-]                                      ; $761b: $3a
	ld c, b                                          ; $761c: $48

jr_090_761d:
	and b                                            ; $761d: $a0
	cpl                                              ; $761e: $2f
	ld b, e                                          ; $761f: $43
	ldh a, [$f8]                                     ; $7620: $f0 $f8
	and c                                            ; $7622: $a1
	ld e, [hl]                                       ; $7623: $5e
	dec sp                                           ; $7624: $3b

jr_090_7625:
	ld [hl], $37                                     ; $7625: $36 $37
	ld a, [hl-]                                      ; $7627: $3a
	inc [hl]                                         ; $7628: $34
	ld a, [hl-]                                      ; $7629: $3a
	ld b, c                                          ; $762a: $41
	inc a                                            ; $762b: $3c
	add d                                            ; $762c: $82
	dec sp                                           ; $762d: $3b
	dec a                                            ; $762e: $3d
	inc de                                           ; $762f: $13
	inc a                                            ; $7630: $3c
	ld a, [hl-]                                      ; $7631: $3a
	ld [hl], $46                                     ; $7632: $36 $46
	ld c, e                                          ; $7634: $4b
	ld c, e                                          ; $7635: $4b
	and b                                            ; $7636: $a0
	cpl                                              ; $7637: $2f
	ldh a, [rAUD4ENV]                                ; $7638: $f0 $21
	ldh a, [rAUD4GO]                                 ; $763a: $f0 $23
	jr c, jr_090_7692                                ; $763c: $38 $54

	ld c, c                                          ; $763e: $49
	add d                                            ; $763f: $82
	add hl, sp                                       ; $7640: $39
	ld c, h                                          ; $7641: $4c
	add hl, bc                                       ; $7642: $09
	ld [hl], b                                       ; $7643: $70
	inc [hl]                                         ; $7644: $34
	ld [hl], b                                       ; $7645: $70
	ld [hl], c                                       ; $7646: $71
	ld b, c                                          ; $7647: $41
	ld c, h                                          ; $7648: $4c
	xor b                                            ; $7649: $a8
	ldh a, [c]                                       ; $764a: $f2
	ld a, [bc]                                       ; $764b: $0a
	ld d, e                                          ; $764c: $53
	ldh a, [rAUD1LOW]                                ; $764d: $f0 $13
	inc a                                            ; $764f: $3c
	dec sp                                           ; $7650: $3b
	ldh [$a0], a                                     ; $7651: $e0 $a0
	cpl                                              ; $7653: $2f
	ld l, e                                          ; $7654: $6b
	pop af                                           ; $7655: $f1
	or d                                             ; $7656: $b2
	pop af                                           ; $7657: $f1
	ld c, b                                          ; $7658: $48
	ld a, [hl-]                                      ; $7659: $3a
	ld d, h                                          ; $765a: $54
	ld c, c                                          ; $765b: $49
	add d                                            ; $765c: $82
	dec sp                                           ; $765d: $3b
	ccf                                              ; $765e: $3f
	ld c, [hl]                                       ; $765f: $4e
	ld b, d                                          ; $7660: $42
	add hl, bc                                       ; $7661: $09
	db $eb                                           ; $7662: $eb
	ccf                                              ; $7663: $3f
	xor b                                            ; $7664: $a8
	ld l, a                                          ; $7665: $6f
	ld d, e                                          ; $7666: $53
	ldh a, [$5c]                                     ; $7667: $f0 $5c
	inc a                                            ; $7669: $3c
	dec sp                                           ; $766a: $3b
	dec a                                            ; $766b: $3d
	ld c, d                                          ; $766c: $4a
	ld d, c                                          ; $766d: $51
	and b                                            ; $766e: $a0
	ld e, d                                          ; $766f: $5a
	ld d, h                                          ; $7670: $54
	ld h, d                                          ; $7671: $62
	ld [hl], d                                       ; $7672: $72
	ccf                                              ; $7673: $3f
	inc de                                           ; $7674: $13
	sub b                                            ; $7675: $90
	ld a, $f0                                        ; $7676: $3e $f0
	cp [hl]                                          ; $7678: $be
	ld b, d                                          ; $7679: $42
	inc a                                            ; $767a: $3c
	ld a, [hl-]                                      ; $767b: $3a
	and c                                            ; $767c: $a1
	cpl                                              ; $767d: $2f
	ld d, h                                          ; $767e: $54
	ld b, d                                          ; $767f: $42
	di                                               ; $7680: $f3
	cp $f5                                           ; $7681: $fe $f5
	dec b                                            ; $7683: $05
	adc d                                            ; $7684: $8a
	ld b, h                                          ; $7685: $44
	ld b, l                                          ; $7686: $45
	add hl, bc                                       ; $7687: $09
	ret                                              ; $7688: $c9


	inc de                                           ; $7689: $13
	db $eb                                           ; $768a: $eb
	ld c, a                                          ; $768b: $4f
	ld h, e                                          ; $768c: $63
	ld b, l                                          ; $768d: $45
	ld c, h                                          ; $768e: $4c
	and b                                            ; $768f: $a0
	cpl                                              ; $7690: $2f
	halt                                             ; $7691: $76

jr_090_7692:
	ld b, a                                          ; $7692: $47
	ld c, a                                          ; $7693: $4f
	ld b, l                                          ; $7694: $45
	ld d, l                                          ; $7695: $55
	ldh a, [rTAC]                                    ; $7696: $f0 $07
	inc a                                            ; $7698: $3c
	ld d, b                                          ; $7699: $50
	ld a, [hl-]                                      ; $769a: $3a
	jr c, jr_090_76a6                                ; $769b: $38 $09

	ld l, e                                          ; $769d: $6b
	ld c, d                                          ; $769e: $4a
	ld d, h                                          ; $769f: $54
	ld d, h                                          ; $76a0: $54
	ld b, a                                          ; $76a1: $47
	inc de                                           ; $76a2: $13
	ld a, b                                          ; $76a3: $78
	dec a                                            ; $76a4: $3d
	ld b, d                                          ; $76a5: $42

jr_090_76a6:
	inc a                                            ; $76a6: $3c
	ld a, [hl-]                                      ; $76a7: $3a
	ld c, b                                          ; $76a8: $48
	and b                                            ; $76a9: $a0
	cpl                                              ; $76aa: $2f
	ldh a, [$d2]                                     ; $76ab: $f0 $d2
	ld b, d                                          ; $76ad: $42
	pop af                                           ; $76ae: $f1
	and l                                            ; $76af: $a5
	pop af                                           ; $76b0: $f1
	ldh [c], a                                       ; $76b1: $e2
	inc a                                            ; $76b2: $3c
	ld a, [hl-]                                      ; $76b3: $3a
	ld c, b                                          ; $76b4: $48
	add hl, bc                                       ; $76b5: $09
	ldh a, [$d2]                                     ; $76b6: $f0 $d2
	ld d, e                                          ; $76b8: $53
	ldh a, [rAUD1LOW]                                ; $76b9: $f0 $13
	jr c, jr_090_76ff                                ; $76bb: $38 $42

	ld c, a                                          ; $76bd: $4f
	ld b, [hl]                                       ; $76be: $46
	ld c, [hl]                                       ; $76bf: $4e
	ld h, e                                          ; $76c0: $63
	ld b, l                                          ; $76c1: $45
	and c                                            ; $76c2: $a1
	ld d, h                                          ; $76c3: $54
	ld b, d                                          ; $76c4: $42
	add h                                            ; $76c5: $84
	ld b, d                                          ; $76c6: $42
	ldh a, [$3f]                                     ; $76c7: $f0 $3f
	xor h                                            ; $76c9: $ac
	ldh a, [$2d]                                     ; $76ca: $f0 $2d
	dec sp                                           ; $76cc: $3b
	ccf                                              ; $76cd: $3f
	ld c, [hl]                                       ; $76ce: $4e
	ld b, l                                          ; $76cf: $45
	and b                                            ; $76d0: $a0
	cpl                                              ; $76d1: $2f
	db $ec                                           ; $76d2: $ec
	and $4a                                          ; $76d3: $e6 $4a
	ld c, a                                          ; $76d5: $4f
	ldh a, [$2d]                                     ; $76d6: $f0 $2d
	dec sp                                           ; $76d8: $3b
	ccf                                              ; $76d9: $3f
	ld c, [hl]                                       ; $76da: $4e
	ld b, d                                          ; $76db: $42
	and c                                            ; $76dc: $a1
	ldh a, [$5a]                                     ; $76dd: $f0 $5a
	ldh a, [$5a]                                     ; $76df: $f0 $5a
	ld e, c                                          ; $76e1: $59
	inc [hl]                                         ; $76e2: $34
	ldh a, [$2d]                                     ; $76e3: $f0 $2d
	dec sp                                           ; $76e5: $3b
	db $ec                                           ; $76e6: $ec
	add hl, de                                       ; $76e7: $19
	ld a, [hl-]                                      ; $76e8: $3a
	xor b                                            ; $76e9: $a8
	ld d, h                                          ; $76ea: $54
	ld c, l                                          ; $76eb: $4d
	ld d, e                                          ; $76ec: $53
	and b                                            ; $76ed: $a0
	cpl                                              ; $76ee: $2f
	adc e                                            ; $76ef: $8b
	ld e, h                                          ; $76f0: $5c
	ld a, [hl-]                                      ; $76f1: $3a
	ld b, d                                          ; $76f2: $42
	and c                                            ; $76f3: $a1
	ldh a, [$80]                                     ; $76f4: $f0 $80
	ldh a, [$c5]                                     ; $76f6: $f0 $c5
	adc e                                            ; $76f8: $8b
	ld e, h                                          ; $76f9: $5c
	inc a                                            ; $76fa: $3c
	ld a, [hl-]                                      ; $76fb: $3a
	xor b                                            ; $76fc: $a8
	ld l, a                                          ; $76fd: $6f
	ld b, a                                          ; $76fe: $47

jr_090_76ff:
	ld a, $3f                                        ; $76ff: $3e $3f
	ld c, e                                          ; $7701: $4b
	ldh a, [c]                                       ; $7702: $f2
	ld a, [$553e]                                    ; $7703: $fa $3e $55
	and b                                            ; $7706: $a0
	cpl                                              ; $7707: $2f
	pop af                                           ; $7708: $f1
	adc d                                            ; $7709: $8a
	ldh a, [$fb]                                     ; $770a: $f0 $fb
	ld a, [hl-]                                      ; $770c: $3a
	add h                                            ; $770d: $84
	ld b, d                                          ; $770e: $42
	ldh a, [$3f]                                     ; $770f: $f0 $3f
	ld b, h                                          ; $7711: $44
	inc a                                            ; $7712: $3c
	ld d, b                                          ; $7713: $50
	ld c, h                                          ; $7714: $4c
	add hl, bc                                       ; $7715: $09
	ld d, d                                          ; $7716: $52
	ld [hl], h                                       ; $7717: $74
	inc [hl]                                         ; $7718: $34
	ld b, b                                          ; $7719: $40
	add hl, sp                                       ; $771a: $39
	ld b, h                                          ; $771b: $44
	ld e, l                                          ; $771c: $5d
	ld e, d                                          ; $771d: $5a

jr_090_771e:
	ld c, h                                          ; $771e: $4c
	and b                                            ; $771f: $a0
	ld d, h                                          ; $7720: $54
	ld c, l                                          ; $7721: $4d
	inc [hl]                                         ; $7722: $34
	sbc [hl]                                         ; $7723: $9e
	ld b, a                                          ; $7724: $47
	ld c, a                                          ; $7725: $4f
	inc de                                           ; $7726: $13
	ld a, b                                          ; $7727: $78
	dec a                                            ; $7728: $3d
	ld b, c                                          ; $7729: $41
	ld b, h                                          ; $772a: $44
	ld e, l                                          ; $772b: $5d
	ld e, d                                          ; $772c: $5a
	ld c, b                                          ; $772d: $48
	and b                                            ; $772e: $a0
	ld [hl-], a                                      ; $772f: $32
	ldh a, [$d8]                                     ; $7730: $f0 $d8
	ld b, b                                          ; $7732: $40
	ldh a, [$d8]                                     ; $7733: $f0 $d8
	ld b, b                                          ; $7735: $40
	inc sp                                           ; $7736: $33
	pop af                                           ; $7737: $f1
	ld e, b                                          ; $7738: $58
	inc a                                            ; $7739: $3c
	ld c, h                                          ; $773a: $4c
	and b                                            ; $773b: $a0
	cpl                                              ; $773c: $2f
	add sp, -$66                                     ; $773d: $e8 $9a
	add hl, bc                                       ; $773f: $09
	db $ec                                           ; $7740: $ec
	ld a, [de]                                       ; $7741: $1a
	inc [hl]                                         ; $7742: $34
	ld d, h                                          ; $7743: $54
	add hl, sp                                       ; $7744: $39
	jr c, @+$3b                                      ; $7745: $38 $39

	inc de                                           ; $7747: $13
	ldh a, [rWY]                                     ; $7748: $f0 $4a
	ld e, c                                          ; $774a: $59
	ld l, c                                          ; $774b: $69
	ld c, a                                          ; $774c: $4f
	inc [hl]                                         ; $774d: $34
	ldh a, [$5c]                                     ; $774e: $f0 $5c
	ld d, l                                          ; $7750: $55
	ld c, e                                          ; $7751: $4b
	db $ec                                           ; $7752: $ec
	dec bc                                           ; $7753: $0b
	and b                                            ; $7754: $a0
	cpl                                              ; $7755: $2f
	add sp, $58                                      ; $7756: $e8 $58
	and d                                            ; $7758: $a2
	ld b, b                                          ; $7759: $40
	ld b, c                                          ; $775a: $41
	ld a, [hl-]                                      ; $775b: $3a
	add a                                            ; $775c: $87
	ld e, h                                          ; $775d: $5c
	ld a, [hl-]                                      ; $775e: $3a
	pop af                                           ; $775f: $f1
	dec l                                            ; $7760: $2d
	xor h                                            ; $7761: $ac
	sub h                                            ; $7762: $94
	ld e, b                                          ; $7763: $58
	ld a, [hl-]                                      ; $7764: $3a
	jr c, jr_090_77b1                                ; $7765: $38 $4a

	ld b, l                                          ; $7767: $45
	scf                                              ; $7768: $37
	inc de                                           ; $7769: $13
	db $eb                                           ; $776a: $eb
	ld c, a                                          ; $776b: $4f
	ld c, d                                          ; $776c: $4a
	ld a, $66                                        ; $776d: $3e $66
	and d                                            ; $776f: $a2
	cpl                                              ; $7770: $2f
	ld b, e                                          ; $7771: $43
	db $ec                                           ; $7772: $ec
	and $4f                                          ; $7773: $e6 $4f
	ld c, h                                          ; $7775: $4c
	ld c, b                                          ; $7776: $48
	and b                                            ; $7777: $a0
	cpl                                              ; $7778: $2f
	jp hl                                            ; $7779: $e9


	call $c909                                       ; $777a: $cd $09 $c9
	ldh a, [$71]                                     ; $777d: $f0 $71
	jr c, jr_090_771e                                ; $777f: $38 $9d

	ld d, b                                          ; $7781: $50
	jr c, jr_090_77d0                                ; $7782: $38 $4c

	and b                                            ; $7784: $a0
	ld l, e                                          ; $7785: $6b
	ld b, d                                          ; $7786: $42
	adc b                                            ; $7787: $88
	ld h, d                                          ; $7788: $62
	ldh a, [$fa]                                     ; $7789: $f0 $fa
	ld b, c                                          ; $778b: $41
	ld c, d                                          ; $778c: $4a
	ld c, [hl]                                       ; $778d: $4e
	ld b, d                                          ; $778e: $42
	and c                                            ; $778f: $a1
	cpl                                              ; $7790: $2f
	or $1c                                           ; $7791: $f6 $1c
	di                                               ; $7793: $f3
	jp nc, Jump_090_49f0                             ; $7794: $d2 $f0 $49

	pop af                                           ; $7797: $f1
	ld l, $09                                        ; $7798: $2e $09
	ldh a, [$be]                                     ; $779a: $f0 $be
	inc [hl]                                         ; $779c: $34
	pop af                                           ; $779d: $f1
	ld a, [$383e]                                    ; $779e: $fa $3e $38
	adc b                                            ; $77a1: $88
	xor h                                            ; $77a2: $ac
	ldh a, [$fa]                                     ; $77a3: $f0 $fa
	ldh a, [$be]                                     ; $77a5: $f0 $be
	ld b, d                                          ; $77a7: $42
	ld c, h                                          ; $77a8: $4c
	ld c, b                                          ; $77a9: $48
	and b                                            ; $77aa: $a0
	cpl                                              ; $77ab: $2f
	ldh a, [c]                                       ; $77ac: $f2
	rrca                                             ; $77ad: $0f
	ld b, d                                          ; $77ae: $42
	di                                               ; $77af: $f3
	or b                                             ; $77b0: $b0

jr_090_77b1:
	pop af                                           ; $77b1: $f1
	xor a                                            ; $77b2: $af
	pop af                                           ; $77b3: $f1
	inc hl                                           ; $77b4: $23
	ldh a, [hDisp0_WX]                                     ; $77b5: $f0 $89
	ldh a, [rAUD3ENA]                                ; $77b7: $f0 $1a
	ldh a, [hDisp0_WX]                                     ; $77b9: $f0 $89
	ldh a, [rAUDTERM]                                ; $77bb: $f0 $25
	add hl, bc                                       ; $77bd: $09
	ld a, [hl-]                                      ; $77be: $3a
	ld e, c                                          ; $77bf: $59
	ld b, a                                          ; $77c0: $47
	ld [hl], $f2                                     ; $77c1: $36 $f2
	rrca                                             ; $77c3: $0f
	di                                               ; $77c4: $f3
	or b                                             ; $77c5: $b0
	add hl, sp                                       ; $77c6: $39
	ld b, d                                          ; $77c7: $42
	xor c                                            ; $77c8: $a9
	ld b, b                                          ; $77c9: $40
	ld e, c                                          ; $77ca: $59
	jr c, jr_090_7806                                ; $77cb: $38 $39

	ld d, h                                          ; $77cd: $54
	ld c, c                                          ; $77ce: $49
	ld c, e                                          ; $77cf: $4b

jr_090_77d0:
	inc de                                           ; $77d0: $13
	ld l, a                                          ; $77d1: $6f
	ld b, a                                          ; $77d2: $47
	pop af                                           ; $77d3: $f1
	dec h                                            ; $77d4: $25
	ld a, c                                          ; $77d5: $79
	ccf                                              ; $77d6: $3f
	ld b, l                                          ; $77d7: $45
	and b                                            ; $77d8: $a0
	cpl                                              ; $77d9: $2f
	pop af                                           ; $77da: $f1
	ld hl, sp-$7c                                    ; $77db: $f8 $84
	add a                                            ; $77dd: $87
	di                                               ; $77de: $f3
	ld c, h                                          ; $77df: $4c
	ldh a, [$aa]                                     ; $77e0: $f0 $aa
	add hl, bc                                       ; $77e2: $09
	ld e, d                                          ; $77e3: $5a
	inc [hl]                                         ; $77e4: $34
	ld e, d                                          ; $77e5: $5a
	ld d, h                                          ; $77e6: $54
	inc a                                            ; $77e7: $3c
	ld d, b                                          ; $77e8: $50
	ld [hl], d                                       ; $77e9: $72
	add b                                            ; $77ea: $80
	ld e, l                                          ; $77eb: $5d
	ccf                                              ; $77ec: $3f
	inc de                                           ; $77ed: $13
	ld e, h                                          ; $77ee: $5c
	dec a                                            ; $77ef: $3d
	ld b, d                                          ; $77f0: $42
	ld b, l                                          ; $77f1: $45
	xor b                                            ; $77f2: $a8
	ld l, a                                          ; $77f3: $6f
	ld b, a                                          ; $77f4: $47
	ld c, a                                          ; $77f5: $4f
	ld [hl], d                                       ; $77f6: $72
	ld a, c                                          ; $77f7: $79
	ccf                                              ; $77f8: $3f
	and b                                            ; $77f9: $a0
	ld e, e                                          ; $77fa: $5b
	ld d, [hl]                                       ; $77fb: $56
	ld b, [hl]                                       ; $77fc: $46
	inc [hl]                                         ; $77fd: $34
	db $eb                                           ; $77fe: $eb
	ld d, d                                          ; $77ff: $52
	ld b, l                                          ; $7800: $45
	and b                                            ; $7801: $a0
	cpl                                              ; $7802: $2f
	ld b, e                                          ; $7803: $43
	ld b, b                                          ; $7804: $40
	add hl, sp                                       ; $7805: $39

jr_090_7806:
	ld b, h                                          ; $7806: $44
	ld c, h                                          ; $7807: $4c
	and b                                            ; $7808: $a0
	cpl                                              ; $7809: $2f
	add sp, $29                                      ; $780a: $e8 $29
	add hl, bc                                       ; $780c: $09
	cpl                                              ; $780d: $2f
	add sp, $2a                                      ; $780e: $e8 $2a
	add hl, bc                                       ; $7810: $09
	ld l, a                                          ; $7811: $6f
	inc [hl]                                         ; $7812: $34
	jp nc, Jump_090_6df0                             ; $7813: $d2 $f0 $6d

	ld e, c                                          ; $7816: $59
	ldh a, [$27]                                     ; $7817: $f0 $27
	ld c, c                                          ; $7819: $49
	inc a                                            ; $781a: $3c
	inc de                                           ; $781b: $13
	ld a, $3a                                        ; $781c: $3e $3a
	jr c, jr_090_7861                                ; $781e: $38 $41

	ld b, h                                          ; $7820: $44
	and b                                            ; $7821: $a0
	cpl                                              ; $7822: $2f
	ldh a, [$4e]                                     ; $7823: $f0 $4e
	db $f4                                           ; $7825: $f4
	ld h, $f0                                        ; $7826: $26 $f0

jr_090_7828:
	dec b                                            ; $7828: $05
	ld b, h                                          ; $7829: $44
	ld c, h                                          ; $782a: $4c
	add hl, bc                                       ; $782b: $09
	ld l, e                                          ; $782c: $6b
	inc a                                            ; $782d: $3c
	ld l, c                                          ; $782e: $69
	ldh a, [$6d]                                     ; $782f: $f0 $6d
	ld b, d                                          ; $7831: $42
	ld b, [hl]                                       ; $7832: $46
	ld c, [hl]                                       ; $7833: $4e
	inc de                                           ; $7834: $13
	add d                                            ; $7835: $82
	jr c, jr_090_7828                                ; $7836: $38 $f0

	jr c, jr_090_7886                                ; $7838: $38 $4c

	and b                                            ; $783a: $a0
	cpl                                              ; $783b: $2f
	db $ec                                           ; $783c: $ec
	ld a, [de]                                       ; $783d: $1a
	jr c, jr_090_7878                                ; $783e: $38 $38

	ld b, c                                          ; $7840: $41
	db $ec                                           ; $7841: $ec
	ret c                                            ; $7842: $d8

	add hl, bc                                       ; $7843: $09
	db $ec                                           ; $7844: $ec
	ld d, $a9                                        ; $7845: $16 $a9
	db $ec                                           ; $7847: $ec
	inc e                                            ; $7848: $1c
	and b                                            ; $7849: $a0
	cpl                                              ; $784a: $2f
	ld e, e                                          ; $784b: $5b
	ld d, [hl]                                       ; $784c: $56
	inc [hl]                                         ; $784d: $34
	db $ec                                           ; $784e: $ec
	rrca                                             ; $784f: $0f
	and c                                            ; $7850: $a1
	ld b, [hl]                                       ; $7851: $46
	inc [hl]                                         ; $7852: $34
	ld b, b                                          ; $7853: $40
	ld b, c                                          ; $7854: $41
	ld a, [hl-]                                      ; $7855: $3a
	add b                                            ; $7856: $80
	ld c, a                                          ; $7857: $4f
	ld d, a                                          ; $7858: $57
	ld c, d                                          ; $7859: $4a
	inc de                                           ; $785a: $13
	add d                                            ; $785b: $82
	dec sp                                           ; $785c: $3b
	dec a                                            ; $785d: $3d
	ld b, c                                          ; $785e: $41
	db $ec                                           ; $785f: $ec
	ret c                                            ; $7860: $d8

jr_090_7861:
	ld b, d                                          ; $7861: $42
	ld b, l                                          ; $7862: $45
	xor b                                            ; $7863: $a8
	ld [hl], b                                       ; $7864: $70
	ld [hl], c                                       ; $7865: $71
	ld b, c                                          ; $7866: $41
	ld c, h                                          ; $7867: $4c
	ld c, b                                          ; $7868: $48
	and b                                            ; $7869: $a0
	ld l, a                                          ; $786a: $6f
	ld b, a                                          ; $786b: $47
	ld c, e                                          ; $786c: $4b
	xor h                                            ; $786d: $ac
	ld e, d                                          ; $786e: $5a
	ld b, c                                          ; $786f: $41
	ld a, [hl-]                                      ; $7870: $3a
	ldh a, [$6d]                                     ; $7871: $f0 $6d
	ld e, c                                          ; $7873: $59
	ldh a, [$27]                                     ; $7874: $f0 $27
	ld d, e                                          ; $7876: $53
	pop af                                           ; $7877: $f1

jr_090_7878:
	dec a                                            ; $7878: $3d
	jr c, jr_090_78ba                                ; $7879: $38 $3f

	ld c, [hl]                                       ; $787b: $4e
	inc a                                            ; $787c: $3c
	ld a, [hl-]                                      ; $787d: $3a
	and c                                            ; $787e: $a1
	cpl                                              ; $787f: $2f
	ld [$3c71], a                                    ; $7880: $ea $71 $3c
	ld a, [hl-]                                      ; $7883: $3a
	ld [hl], h                                       ; $7884: $74

jr_090_7885:
	add hl, bc                                       ; $7885: $09

jr_090_7886:
	ld b, d                                          ; $7886: $42
	ld b, c                                          ; $7887: $41
	ldh a, [rKEY1]                                   ; $7888: $f0 $4d
	ld d, a                                          ; $788a: $57
	ld a, $51                                        ; $788b: $3e $51
	ldh a, [$cb]                                     ; $788d: $f0 $cb
	ccf                                              ; $788f: $3f
	inc de                                           ; $7890: $13
	jr c, jr_090_78e1                                ; $7891: $38 $4e

	ld h, e                                          ; $7893: $63
	ld c, h                                          ; $7894: $4c
	and b                                            ; $7895: $a0
	cpl                                              ; $7896: $2f
	db $eb                                           ; $7897: $eb
	jp nc, $3a3c                                     ; $7898: $d2 $3c $3a

	ld [hl], h                                       ; $789b: $74
	add hl, bc                                       ; $789c: $09
	ld d, h                                          ; $789d: $54
	ld c, l                                          ; $789e: $4d
	ld c, e                                          ; $789f: $4b
	ldh a, [rAUD1LOW]                                ; $78a0: $f0 $13
	ldh a, [$63]                                     ; $78a2: $f0 $63
	ld b, l                                          ; $78a4: $45
	xor b                                            ; $78a5: $a8
	pop af                                           ; $78a6: $f1
	sub $f1                                          ; $78a7: $d6 $f1
	sbc l                                            ; $78a9: $9d
	add hl, sp                                       ; $78aa: $39
	ld c, a                                          ; $78ab: $4f
	ld b, c                                          ; $78ac: $41
	and b                                            ; $78ad: $a0
	cpl                                              ; $78ae: $2f
	pop af                                           ; $78af: $f1
	inc h                                            ; $78b0: $24
	ldh a, [c]                                       ; $78b1: $f2
	nop                                              ; $78b2: $00
	ldh a, [c]                                       ; $78b3: $f2
	ld e, $3c                                        ; $78b4: $1e $3c
	ld a, [hl-]                                      ; $78b6: $3a
	ld [hl], h                                       ; $78b7: $74
	add hl, bc                                       ; $78b8: $09
	ld d, h                                          ; $78b9: $54

jr_090_78ba:
	ld b, d                                          ; $78ba: $42
	pop af                                           ; $78bb: $f1
	ld [$6aab], sp                                   ; $78bc: $08 $ab $6a
	ldh a, [$0d]                                     ; $78bf: $f0 $0d
	pop af                                           ; $78c1: $f1
	add hl, sp                                       ; $78c2: $39
	ld a, $3f                                        ; $78c3: $3e $3f
	ld l, h                                          ; $78c5: $6c
	ld c, [hl]                                       ; $78c6: $4e
	ld h, e                                          ; $78c7: $63
	and b                                            ; $78c8: $a0
	cpl                                              ; $78c9: $2f
	ld b, e                                          ; $78ca: $43
	ld e, [hl]                                       ; $78cb: $5e
	ld [hl], $6b                                     ; $78cc: $36 $6b
	ld h, d                                          ; $78ce: $62
	pop af                                           ; $78cf: $f1
	add hl, sp                                       ; $78d0: $39
	ld d, c                                          ; $78d1: $51
	dec sp                                           ; $78d2: $3b
	ccf                                              ; $78d3: $3f
	and c                                            ; $78d4: $a1
	ld e, [hl]                                       ; $78d5: $5e
	dec sp                                           ; $78d6: $3b
	ld [hl], $37                                     ; $78d7: $36 $37
	inc de                                           ; $78d9: $13
	jr c, jr_090_794a                                ; $78da: $38 $6e

	inc [hl]                                         ; $78dc: $34
	ld l, e                                          ; $78dd: $6b
	ld c, d                                          ; $78de: $4a
	ld c, a                                          ; $78df: $4f
	ld a, [hl-]                                      ; $78e0: $3a

jr_090_78e1:
	jr c, jr_090_7925                                ; $78e1: $38 $42

	ld b, l                                          ; $78e3: $45
	xor b                                            ; $78e4: $a8
	ld b, [hl]                                       ; $78e5: $46
	ld c, e                                          ; $78e6: $4b
	ld c, e                                          ; $78e7: $4b
	and b                                            ; $78e8: $a0
	ldh a, [$35]                                     ; $78e9: $f0 $35
	ldh a, [$7e]                                     ; $78eb: $f0 $7e
	pop af                                           ; $78ed: $f1
	inc hl                                           ; $78ee: $23
	ld b, d                                          ; $78ef: $42
	ldh a, [hDisp0_OBP1]                                     ; $78f0: $f0 $87
	ld a, [hl-]                                      ; $78f2: $3a
	inc de                                           ; $78f3: $13
	db $ec                                           ; $78f4: $ec
	cp $4c                                           ; $78f5: $fe $4c
	and b                                            ; $78f7: $a0
	cpl                                              ; $78f8: $2f
	jp nc, $3e4b                                     ; $78f9: $d2 $4b $3e

	ld d, [hl]                                       ; $78fc: $56
	sbc l                                            ; $78fd: $9d
	ld a, [hl-]                                      ; $78fe: $3a
	ld b, l                                          ; $78ff: $45
	add hl, bc                                       ; $7900: $09
	ld l, a                                          ; $7901: $6f
	ld d, e                                          ; $7902: $53
	jr c, jr_090_7885                                ; $7903: $38 $80

	inc de                                           ; $7905: $13
	ld c, e                                          ; $7906: $4b
	ld a, $56                                        ; $7907: $3e $56
	jr c, jr_090_794f                                ; $7909: $38 $44

	ld b, d                                          ; $790b: $42
	ld b, l                                          ; $790c: $45
	ld c, b                                          ; $790d: $48
	and b                                            ; $790e: $a0
	cpl                                              ; $790f: $2f
	pop de                                           ; $7910: $d1
	jr c, jr_090_794b                                ; $7911: $38 $38

	ld c, d                                          ; $7913: $4a
	ld a, $66                                        ; $7914: $3e $66
	and c                                            ; $7916: $a1
	xor $1f                                          ; $7917: $ee $1f
	xor b                                            ; $7919: $a8
	pop hl                                           ; $791a: $e1
	ld c, a                                          ; $791b: $4f
	pop af                                           ; $791c: $f1
	sub d                                            ; $791d: $92
	jr c, jr_090_795e                                ; $791e: $38 $3e

	ld c, h                                          ; $7920: $4c
	and b                                            ; $7921: $a0
	cpl                                              ; $7922: $2f
	ldh a, [$35]                                     ; $7923: $f0 $35

jr_090_7925:
	ld [hl], e                                       ; $7925: $73
	add c                                            ; $7926: $81
	ldh a, [$03]                                     ; $7927: $f0 $03
	ld a, e                                          ; $7929: $7b
	inc a                                            ; $792a: $3c
	ld d, a                                          ; $792b: $57
	ld b, h                                          ; $792c: $44
	ld c, h                                          ; $792d: $4c
	add hl, bc                                       ; $792e: $09
	ld e, [hl]                                       ; $792f: $5e
	dec sp                                           ; $7930: $3b
	xor c                                            ; $7931: $a9
	rst JumpTable                                          ; $7932: $c7
	ld c, h                                          ; $7933: $4c
	xor e                                            ; $7934: $ab
	ld l, a                                          ; $7935: $6f
	ldh a, [rSTAT]                                   ; $7936: $f0 $41
	ld c, a                                          ; $7938: $4f
	inc [hl]                                         ; $7939: $34
	ld b, b                                          ; $793a: $40
	add hl, sp                                       ; $793b: $39
	ld [hl], d                                       ; $793c: $72
	ld e, [hl]                                       ; $793d: $5e
	ld c, [hl]                                       ; $793e: $4e
	inc a                                            ; $793f: $3c
	ld a, [hl-]                                      ; $7940: $3a
	and c                                            ; $7941: $a1
	ld c, h                                          ; $7942: $4c
	ld e, [hl]                                       ; $7943: $5e
	ld c, h                                          ; $7944: $4c
	ld e, [hl]                                       ; $7945: $5e
	xor c                                            ; $7946: $a9
	ldh a, [rAUD1LEN]                                ; $7947: $f0 $11

jr_090_7949:
	ld a, l                                          ; $7949: $7d

jr_090_794a:
	ld h, l                                          ; $794a: $65

jr_090_794b:
	ld d, e                                          ; $794b: $53
	pop af                                           ; $794c: $f1
	ld b, c                                          ; $794d: $41
	ld e, h                                          ; $794e: $5c

jr_090_794f:
	sub h                                            ; $794f: $94
	ld a, $3f                                        ; $7950: $3e $3f
	inc de                                           ; $7952: $13
	ld e, h                                          ; $7953: $5c
	dec a                                            ; $7954: $3d
	ld b, c                                          ; $7955: $41
	ld b, h                                          ; $7956: $44
	ld e, l                                          ; $7957: $5d
	ld e, d                                          ; $7958: $5a
	ld c, b                                          ; $7959: $48
	and b                                            ; $795a: $a0
	cpl                                              ; $795b: $2f
	ld b, e                                          ; $795c: $43
	add hl, sp                                       ; $795d: $39

jr_090_795e:
	ld h, h                                          ; $795e: $64
	dec sp                                           ; $795f: $3b
	ld [hl], $37                                     ; $7960: $36 $37
	inc de                                           ; $7962: $13
	add a                                            ; $7963: $87
	sub c                                            ; $7964: $91
	dec a                                            ; $7965: $3d
	ld d, a                                          ; $7966: $57
	db $ec                                           ; $7967: $ec
	ret c                                            ; $7968: $d8

	inc a                                            ; $7969: $3c
	and c                                            ; $796a: $a1

jr_090_796b:
	db $fd                                           ; $796b: $fd
	ld h, d                                          ; $796c: $62
	ldh a, [c]                                       ; $796d: $f2
	ld [hl], c                                       ; $796e: $71
	pop af                                           ; $796f: $f1
	sbc [hl]                                         ; $7970: $9e
	pop af                                           ; $7971: $f1
	sbc [hl]                                         ; $7972: $9e
	dec sp                                           ; $7973: $3b
	ccf                                              ; $7974: $3f
	ldh a, [$28]                                     ; $7975: $f0 $28
	ld b, a                                          ; $7977: $47
	inc de                                           ; $7978: $13
	db $ed                                           ; $7979: $ed
	adc b                                            ; $797a: $88
	di                                               ; $797b: $f3
	ld d, l                                          ; $797c: $55
	ld e, l                                          ; $797d: $5d
	dec a                                            ; $797e: $3d
	ld d, b                                          ; $797f: $50
	ld c, b                                          ; $7980: $48
	and b                                            ; $7981: $a0
	cpl                                              ; $7982: $2f
	halt                                             ; $7983: $76
	ld b, a                                          ; $7984: $47
	ld c, a                                          ; $7985: $4f
	ldh a, [rTAC]                                    ; $7986: $f0 $07
	ld e, l                                          ; $7988: $5d
	ccf                                              ; $7989: $3f
	ld d, l                                          ; $798a: $55
	ld c, l                                          ; $798b: $4d
	and d                                            ; $798c: $a2
	ld e, d                                          ; $798d: $5a
	ld b, c                                          ; $798e: $41
	ld e, d                                          ; $798f: $5a
	ld b, c                                          ; $7990: $41
	ldh a, [rHDMA1]                                  ; $7991: $f0 $51
	dec sp                                           ; $7993: $3b
	ccf                                              ; $7994: $3f
	dec sp                                           ; $7995: $3b
	ccf                                              ; $7996: $3f
	xor b                                            ; $7997: $a8
	ldh a, [$8d]                                     ; $7998: $f0 $8d
	ld d, a                                          ; $799a: $57
	ld c, e                                          ; $799b: $4b
	ld d, d                                          ; $799c: $52
	dec a                                            ; $799d: $3d
	db $ed                                           ; $799e: $ed
	adc b                                            ; $799f: $88
	di                                               ; $79a0: $f3
	ld d, l                                          ; $79a1: $55
	ld e, l                                          ; $79a2: $5d
	ld c, [hl]                                       ; $79a3: $4e
	inc a                                            ; $79a4: $3c
	ld d, b                                          ; $79a5: $50
	and b                                            ; $79a6: $a0
	cpl                                              ; $79a7: $2f
	ld e, b                                          ; $79a8: $58
	ccf                                              ; $79a9: $3f
	ld c, e                                          ; $79aa: $4b
	pop af                                           ; $79ab: $f1
	ld [hl], h                                       ; $79ac: $74

jr_090_79ad:
	ldh a, [$7c]                                     ; $79ad: $f0 $7c
	ld h, l                                          ; $79af: $65
	ldh a, [rBCPD]                                   ; $79b0: $f0 $69
	ldh a, [rSC]                                     ; $79b2: $f0 $02
	ld e, c                                          ; $79b4: $59

jr_090_79b5:
	ld b, h                                          ; $79b5: $44
	ld a, [hl-]                                      ; $79b6: $3a
	add hl, bc                                       ; $79b7: $09
	ld b, b                                          ; $79b8: $40
	ld b, d                                          ; $79b9: $42
	add d                                            ; $79ba: $82
	jr c, jr_090_79ad                                ; $79bb: $38 $f0

	jr c, jr_090_796b                                ; $79bd: $38 $ac

	ld l, a                                          ; $79bf: $6f
	ld d, e                                          ; $79c0: $53
	ldh a, [$5c]                                     ; $79c1: $f0 $5c
	jr c, jr_090_7949                                ; $79c3: $38 $84

	ld l, h                                          ; $79c5: $6c
	dec a                                            ; $79c6: $3d
	jr c, jr_090_79b5                                ; $79c7: $38 $ec

	ret c                                            ; $79c9: $d8

	and b                                            ; $79ca: $a0
	cpl                                              ; $79cb: $2f
	xor $10                                          ; $79cc: $ee $10
	db $ed                                           ; $79ce: $ed
	adc b                                            ; $79cf: $88
	di                                               ; $79d0: $f3
	ld d, l                                          ; $79d1: $55
	ld e, l                                          ; $79d2: $5d
	ld c, [hl]                                       ; $79d3: $4e
	ld a, [hl-]                                      ; $79d4: $3a
	ld b, l                                          ; $79d5: $45
	add hl, bc                                       ; $79d6: $09
	db $ed                                           ; $79d7: $ed
	ld b, e                                          ; $79d8: $43
	inc [hl]                                         ; $79d9: $34
	pop af                                           ; $79da: $f1
	ld a, [de]                                       ; $79db: $1a
	pop af                                           ; $79dc: $f1
	inc c                                            ; $79dd: $0c
	ld d, h                                          ; $79de: $54
	ld d, h                                          ; $79df: $54
	db $ed                                           ; $79e0: $ed
	ld b, e                                          ; $79e1: $43
	inc de                                           ; $79e2: $13
	ld [hl], a                                       ; $79e3: $77
	dec sp                                           ; $79e4: $3b
	dec a                                            ; $79e5: $3d
	inc a                                            ; $79e6: $3c
	ld d, b                                          ; $79e7: $50
	ld c, b                                          ; $79e8: $48
	and b                                            ; $79e9: $a0
	add hl, bc                                       ; $79ea: $09
	ld b, b                                          ; $79eb: $40
	ld c, l                                          ; $79ec: $4d
	ld e, e                                          ; $79ed: $5b
	ld d, [hl]                                       ; $79ee: $56
	inc [hl]                                         ; $79ef: $34
	ldh a, [rAUD2HIGH]                               ; $79f0: $f0 $19
	ld b, a                                          ; $79f2: $47
	sub [hl]                                         ; $79f3: $96
	ld e, a                                          ; $79f4: $5f
	and b                                            ; $79f5: $a0
	cpl                                              ; $79f6: $2f
	ld b, e                                          ; $79f7: $43
	ld b, b                                          ; $79f8: $40
	add hl, sp                                       ; $79f9: $39
	ld b, h                                          ; $79fa: $44
	ld c, h                                          ; $79fb: $4c
	and b                                            ; $79fc: $a0
	db $eb                                           ; $79fd: $eb
	ld [hl], l                                       ; $79fe: $75
	inc de                                           ; $79ff: $13
	jp nc, Jump_090_6bf1                             ; $7a00: $d2 $f1 $6b

	ldh a, [$c0]                                     ; $7a03: $f0 $c0
	db $ec                                           ; $7a05: $ec
	ret c                                            ; $7a06: $d8

	ld b, c                                          ; $7a07: $41
	ld b, h                                          ; $7a08: $44
	and b                                            ; $7a09: $a0
	cpl                                              ; $7a0a: $2f
	halt                                             ; $7a0b: $76
	ld d, e                                          ; $7a0c: $53
	db $ec                                           ; $7a0d: $ec
	db $ed                                           ; $7a0e: $ed
	ld l, [hl]                                       ; $7a0f: $6e
	ld c, [hl]                                       ; $7a10: $4e
	ld b, l                                          ; $7a11: $45
	add hl, bc                                       ; $7a12: $09
	db $ed                                           ; $7a13: $ed
	ld b, c                                          ; $7a14: $41
	xor c                                            ; $7a15: $a9
	ld b, [hl]                                       ; $7a16: $46
	ld d, a                                          ; $7a17: $57
	ld d, e                                          ; $7a18: $53
	ld c, c                                          ; $7a19: $49
	add hl, sp                                       ; $7a1a: $39
	and b                                            ; $7a1b: $a0
	cpl                                              ; $7a1c: $2f
	ld e, e                                          ; $7a1d: $5b
	ld d, [hl]                                       ; $7a1e: $56
	inc [hl]                                         ; $7a1f: $34
	xor $19                                          ; $7a20: $ee $19
	ld a, $5f                                        ; $7a22: $3e $5f
	ld b, l                                          ; $7a24: $45
	add hl, bc                                       ; $7a25: $09
	db $ec                                           ; $7a26: $ec
	db $ed                                           ; $7a27: $ed
	ld d, l                                          ; $7a28: $55
	ld c, l                                          ; $7a29: $4d
	dec a                                            ; $7a2a: $3d
	dec sp                                           ; $7a2b: $3b
	ccf                                              ; $7a2c: $3f
	inc de                                           ; $7a2d: $13
	jr c, jr_090_7a68                                ; $7a2e: $38 $38

	db $ec                                           ; $7a30: $ec
	ret c                                            ; $7a31: $d8

	and b                                            ; $7a32: $a0
	cpl                                              ; $7a33: $2f
	sub b                                            ; $7a34: $90
	ld a, $5d                                        ; $7a35: $3e $5d
	ld d, a                                          ; $7a37: $57
	ld d, [hl]                                       ; $7a38: $56
	jr c, jr_090_7a73                                ; $7a39: $38 $38

	ld b, c                                          ; $7a3b: $41
	ld b, h                                          ; $7a3c: $44
	ld b, l                                          ; $7a3d: $45
	add hl, bc                                       ; $7a3e: $09
	ld c, d                                          ; $7a3f: $4a
	ld c, a                                          ; $7a40: $4f
	ld c, b                                          ; $7a41: $48
	inc [hl]                                         ; $7a42: $34
	ld d, h                                          ; $7a43: $54
	ld b, c                                          ; $7a44: $41
	ld a, [hl-]                                      ; $7a45: $3a
	add e                                            ; $7a46: $83
	ldh a, [rAUD1LEN]                                ; $7a47: $f0 $11
	ldh a, [$3d]                                     ; $7a49: $f0 $3d
	ld e, e                                          ; $7a4b: $5b
	ld d, [hl]                                       ; $7a4c: $56
	inc de                                           ; $7a4d: $13
	sub b                                            ; $7a4e: $90
	ld a, $55                                        ; $7a4f: $3e $55
	ld a, [hl-]                                      ; $7a51: $3a
	jr c, @-$51                                      ; $7a52: $38 $ad

	db $ec                                           ; $7a54: $ec
	reti                                             ; $7a55: $d9


	add hl, sp                                       ; $7a56: $39
	ld d, d                                          ; $7a57: $52
	ld d, l                                          ; $7a58: $55
	ld a, [hl-]                                      ; $7a59: $3a
	ld d, a                                          ; $7a5a: $57
	dec a                                            ; $7a5b: $3d
	jr c, jr_090_7aa6                                ; $7a5c: $38 $48

	and b                                            ; $7a5e: $a0
	db $eb                                           ; $7a5f: $eb
	xor [hl]                                         ; $7a60: $ae
	ld d, e                                          ; $7a61: $53
	ldh a, [$ec]                                     ; $7a62: $f0 $ec
	ld d, d                                          ; $7a64: $52
	ld c, [hl]                                       ; $7a65: $4e
	ld c, c                                          ; $7a66: $49
	inc de                                           ; $7a67: $13

jr_090_7a68:
	db $ed                                           ; $7a68: $ed
	ld l, a                                          ; $7a69: $6f
	ld h, c                                          ; $7a6a: $61
	jr c, jr_090_7aa5                                ; $7a6b: $38 $38

	ld c, h                                          ; $7a6d: $4c
	and b                                            ; $7a6e: $a0
	cpl                                              ; $7a6f: $2f
	ldh a, [$ec]                                     ; $7a70: $f0 $ec
	ld d, d                                          ; $7a72: $52

jr_090_7a73:
	dec sp                                           ; $7a73: $3b
	dec a                                            ; $7a74: $3d
	ld c, c                                          ; $7a75: $49
	ld e, h                                          ; $7a76: $5c
	ld b, d                                          ; $7a77: $42
	ldh a, [$99]                                     ; $7a78: $f0 $99
	ld d, e                                          ; $7a7a: $53
	jr c, @+$3a                                      ; $7a7b: $38 $38

	ld c, h                                          ; $7a7d: $4c
	add hl, bc                                       ; $7a7e: $09
	db $ec                                           ; $7a7f: $ec
	inc e                                            ; $7a80: $1c
	xor b                                            ; $7a81: $a8
	ld l, a                                          ; $7a82: $6f
	ld c, a                                          ; $7a83: $4f
	ld b, b                                          ; $7a84: $40
	add hl, sp                                       ; $7a85: $39
	ld [hl], a                                       ; $7a86: $77
	add hl, sp                                       ; $7a87: $39
	ld h, e                                          ; $7a88: $63
	and b                                            ; $7a89: $a0
	cpl                                              ; $7a8a: $2f
	jr c, jr_090_7ac5                                ; $7a8b: $38 $38

	ld a, a                                          ; $7a8d: $7f
	ld b, a                                          ; $7a8e: $47
	ld a, [hl-]                                      ; $7a8f: $3a
	ld d, a                                          ; $7a90: $57
	ld l, [hl]                                       ; $7a91: $6e
	ld d, e                                          ; $7a92: $53
	dec sp                                           ; $7a93: $3b
	ccf                                              ; $7a94: $3f
	add hl, bc                                       ; $7a95: $09
	jr c, jr_090_7ad0                                ; $7a96: $38 $38

	db $ec                                           ; $7a98: $ec
	ret c                                            ; $7a99: $d8

	xor b                                            ; $7a9a: $a8
	di                                               ; $7a9b: $f3
	add c                                            ; $7a9c: $81
	pop af                                           ; $7a9d: $f1
	sub d                                            ; $7a9e: $92
	ld b, a                                          ; $7a9f: $47
	sub h                                            ; $7aa0: $94
	ld a, c                                          ; $7aa1: $79
	ld a, [hl-]                                      ; $7aa2: $3a
	jr c, jr_090_7ae6                                ; $7aa3: $38 $41

jr_090_7aa5:
	ld b, h                                          ; $7aa5: $44

jr_090_7aa6:
	inc a                                            ; $7aa6: $3c
	ld d, b                                          ; $7aa7: $50
	and b                                            ; $7aa8: $a0
	cpl                                              ; $7aa9: $2f
	add e                                            ; $7aaa: $83
	ldh a, [c]                                       ; $7aab: $f2
	ld b, h                                          ; $7aac: $44
	ldh a, [$3d]                                     ; $7aad: $f0 $3d
	ld b, d                                          ; $7aaf: $42
	ldh a, [$38]                                     ; $7ab0: $f0 $38
	ld d, e                                          ; $7ab2: $53
	pop af                                           ; $7ab3: $f1
	ld a, [$383e]                                    ; $7ab4: $fa $3e $38
	ld b, l                                          ; $7ab7: $45
	add hl, bc                                       ; $7ab8: $09
	db $d3                                           ; $7ab9: $d3
	xor c                                            ; $7aba: $a9
	ld c, d                                          ; $7abb: $4a
	ld c, a                                          ; $7abc: $4f
	inc [hl]                                         ; $7abd: $34
	pop af                                           ; $7abe: $f1
	add d                                            ; $7abf: $82
	inc a                                            ; $7ac0: $3c
	ld b, a                                          ; $7ac1: $47
	ld b, b                                          ; $7ac2: $40
	ld b, c                                          ; $7ac3: $41
	ld a, [hl-]                                      ; $7ac4: $3a

jr_090_7ac5:
	ld a, a                                          ; $7ac5: $7f
	ld d, e                                          ; $7ac6: $53
	ld d, c                                          ; $7ac7: $51
	ld c, [hl]                                       ; $7ac8: $4e
	ld h, e                                          ; $7ac9: $63
	and b                                            ; $7aca: $a0
	ld b, b                                          ; $7acb: $40
	ld c, l                                          ; $7acc: $4d
	ld e, e                                          ; $7acd: $5b
	ld d, [hl]                                       ; $7ace: $56
	xor h                                            ; $7acf: $ac

jr_090_7ad0:
	ldh a, [rAUD2HIGH]                               ; $7ad0: $f0 $19
	ld b, a                                          ; $7ad2: $47
	sub [hl]                                         ; $7ad3: $96
	ld d, a                                          ; $7ad4: $57
	ld d, d                                          ; $7ad5: $52
	ld a, $66                                        ; $7ad6: $3e $66
	add hl, sp                                       ; $7ad8: $39
	and b                                            ; $7ad9: $a0
	cpl                                              ; $7ada: $2f
	ld b, e                                          ; $7adb: $43
	ld b, b                                          ; $7adc: $40
	add hl, sp                                       ; $7add: $39
	ld b, h                                          ; $7ade: $44
	ld c, h                                          ; $7adf: $4c
	xor b                                            ; $7ae0: $a8
	db $eb                                           ; $7ae1: $eb
	ld d, d                                          ; $7ae2: $52
	and b                                            ; $7ae3: $a0
	ld l, a                                          ; $7ae4: $6f
	inc [hl]                                         ; $7ae5: $34

jr_090_7ae6:
	pop af                                           ; $7ae6: $f1
	xor e                                            ; $7ae7: $ab
	ldh a, [$a3]                                     ; $7ae8: $f0 $a3
	ldh a, [$0b]                                     ; $7aea: $f0 $0b
	ld b, h                                          ; $7aec: $44
	inc a                                            ; $7aed: $3c
	ld d, b                                          ; $7aee: $50
	xor h                                            ; $7aef: $ac
	ret                                              ; $7af0: $c9


	db $eb                                           ; $7af1: $eb
	ld c, a                                          ; $7af2: $4f
	ld a, [hl-]                                      ; $7af3: $3a
	and b                                            ; $7af4: $a0
	cpl                                              ; $7af5: $2f
	ld e, [hl]                                       ; $7af6: $5e
	ld [hl], $f0                                     ; $7af7: $36 $f0
	ld a, $f0                                        ; $7af9: $3e $f0
	dec bc                                           ; $7afb: $0b
	inc a                                            ; $7afc: $3c
	dec sp                                           ; $7afd: $3b
	dec a                                            ; $7afe: $3d
	ld b, l                                          ; $7aff: $45
	add hl, bc                                       ; $7b00: $09
	db $ed                                           ; $7b01: $ed
	ld b, c                                          ; $7b02: $41
	xor c                                            ; $7b03: $a9
	ldh a, [hDisp0_WX]                                     ; $7b04: $f0 $89
	pop af                                           ; $7b06: $f1
	daa                                              ; $7b07: $27
	ld c, d                                          ; $7b08: $4a
	ld c, a                                          ; $7b09: $4f
	ldh a, [$29]                                     ; $7b0a: $f0 $29
	ld a, $38                                        ; $7b0c: $3e $38
	ld c, b                                          ; $7b0e: $48
	and b                                            ; $7b0f: $a0
	cpl                                              ; $7b10: $2f
	pop af                                           ; $7b11: $f1
	add d                                            ; $7b12: $82
	inc a                                            ; $7b13: $3c
	ld b, a                                          ; $7b14: $47
	ldh a, [$a3]                                     ; $7b15: $f0 $a3
	ldh a, [$0b]                                     ; $7b17: $f0 $0b
	ld b, h                                          ; $7b19: $44
	ld c, h                                          ; $7b1a: $4c
	add hl, bc                                       ; $7b1b: $09
	db $ec                                           ; $7b1c: $ec
	reti                                             ; $7b1d: $d9


	ld c, b                                          ; $7b1e: $48
	xor h                                            ; $7b1f: $ac
	ldh a, [$7b]                                     ; $7b20: $f0 $7b
	ld h, l                                          ; $7b22: $65
	add e                                            ; $7b23: $83
	ldh a, [rAUD1LOW]                                ; $7b24: $f0 $13
	jr c, jr_090_7b6a                                ; $7b26: $38 $42

	inc a                                            ; $7b28: $3c
	ld a, [hl-]                                      ; $7b29: $3a
	ld c, b                                          ; $7b2a: $48
	and b                                            ; $7b2b: $a0
	cpl                                              ; $7b2c: $2f
	db $ec                                           ; $7b2d: $ec
	sub $44                                          ; $7b2e: $d6 $44
	dec sp                                           ; $7b30: $3b
	dec a                                            ; $7b31: $3d
	ld b, l                                          ; $7b32: $45
	add hl, bc                                       ; $7b33: $09
	ld b, b                                          ; $7b34: $40
	add hl, sp                                       ; $7b35: $39
	xor c                                            ; $7b36: $a9
	db $ec                                           ; $7b37: $ec
	cp c                                             ; $7b38: $b9
	ld c, b                                          ; $7b39: $48
	and b                                            ; $7b3a: $a0
	ld e, d                                          ; $7b3b: $5a
	add hl, sp                                       ; $7b3c: $39
	jr c, jr_090_7b78                                ; $7b3d: $38 $39

	pop af                                           ; $7b3f: $f1
	xor e                                            ; $7b40: $ab
	ld d, e                                          ; $7b41: $53
	adc e                                            ; $7b42: $8b
	ld e, h                                          ; $7b43: $5c
	ld a, [hl-]                                      ; $7b44: $3a
	ld b, d                                          ; $7b45: $42
	and c                                            ; $7b46: $a1
	cpl                                              ; $7b47: $2f
	ld l, [hl]                                       ; $7b48: $6e
	dec sp                                           ; $7b49: $3b
	ldh a, [$36]                                     ; $7b4a: $f0 $36
	ldh a, [$3d]                                     ; $7b4c: $f0 $3d
	pop af                                           ; $7b4e: $f1
	ld [bc], a                                       ; $7b4f: $02
	pop af                                           ; $7b50: $f1
	daa                                              ; $7b51: $27
	ld h, l                                          ; $7b52: $65
	ld c, d                                          ; $7b53: $4a
	ld a, $66                                        ; $7b54: $3e $66
	add hl, bc                                       ; $7b56: $09
	ld b, b                                          ; $7b57: $40
	ld c, l                                          ; $7b58: $4d
	ld a, [hl-]                                      ; $7b59: $3a

jr_090_7b5a:
	ld d, b                                          ; $7b5a: $50
	inc de                                           ; $7b5b: $13
	ld l, e                                          ; $7b5c: $6b
	ld c, d                                          ; $7b5d: $4a
	ld c, a                                          ; $7b5e: $4f
	ld a, b                                          ; $7b5f: $78
	jr c, jr_090_7ba7                                ; $7b60: $38 $45

	pop af                                           ; $7b62: $f1
	dec [hl]                                         ; $7b63: $35
	and b                                            ; $7b64: $a0
	cpl                                              ; $7b65: $2f
	db $f4                                           ; $7b66: $f4
	adc b                                            ; $7b67: $88
	jr c, jr_090_7b5a                                ; $7b68: $38 $f0

jr_090_7b6a:
	xor b                                            ; $7b6a: $a8
	pop af                                           ; $7b6b: $f1
	xor e                                            ; $7b6c: $ab
	ld b, h                                          ; $7b6d: $44
	ld c, h                                          ; $7b6e: $4c
	add hl, bc                                       ; $7b6f: $09
	ldh a, [$5a]                                     ; $7b70: $f0 $5a
	add l                                            ; $7b72: $85
	xor h                                            ; $7b73: $ac
	add h                                            ; $7b74: $84
	ld c, e                                          ; $7b75: $4b
	ld [hl], d                                       ; $7b76: $72
	inc a                                            ; $7b77: $3c

jr_090_7b78:
	ld e, l                                          ; $7b78: $5d
	ld b, a                                          ; $7b79: $47
	ld b, l                                          ; $7b7a: $45
	ld d, b                                          ; $7b7b: $50
	ld a, [hl-]                                      ; $7b7c: $3a

jr_090_7b7d:
	jr c, jr_090_7bc1                                ; $7b7d: $38 $42

	ld c, h                                          ; $7b7f: $4c
	and b                                            ; $7b80: $a0
	cpl                                              ; $7b81: $2f
	ld [hl-], a                                      ; $7b82: $32
	ldh a, [rSB]                                     ; $7b83: $f0 $01
	dec sp                                           ; $7b85: $3b
	xor h                                            ; $7b86: $ac
	adc b                                            ; $7b87: $88
	ld a, a                                          ; $7b88: $7f
	ld b, a                                          ; $7b89: $47
	ld e, b                                          ; $7b8a: $58
	ld c, l                                          ; $7b8b: $4d
	dec a                                            ; $7b8c: $3d
	inc a                                            ; $7b8d: $3c
	ld a, [hl-]                                      ; $7b8e: $3a
	ld [hl], $33                                     ; $7b8f: $36 $33
	add hl, bc                                       ; $7b91: $09
	cpl                                              ; $7b92: $2f
	jp hl                                            ; $7b93: $e9


	ld [hl], h                                       ; $7b94: $74
	inc a                                            ; $7b95: $3c
	ld a, [hl-]                                      ; $7b96: $3a
	add hl, bc                                       ; $7b97: $09
	ld l, a                                          ; $7b98: $6f
	ld c, e                                          ; $7b99: $4b
	ld b, [hl]                                       ; $7b9a: $46
	ld d, d                                          ; $7b9b: $52
	ld d, a                                          ; $7b9c: $57
	inc de                                           ; $7b9d: $13
	adc e                                            ; $7b9e: $8b
	ld e, h                                          ; $7b9f: $5c
	db $ec                                           ; $7ba0: $ec
	ret c                                            ; $7ba1: $d8

	ld a, [hl-]                                      ; $7ba2: $3a
	ld c, b                                          ; $7ba3: $48
	and b                                            ; $7ba4: $a0
	cpl                                              ; $7ba5: $2f
	jp hl                                            ; $7ba6: $e9


jr_090_7ba7:
	cp e                                             ; $7ba7: $bb
	xor h                                            ; $7ba8: $ac
	ld [$6222], a                                    ; $7ba9: $ea $22 $62
	inc de                                           ; $7bac: $13
	db $eb                                           ; $7bad: $eb
	adc a                                            ; $7bae: $8f
	and e                                            ; $7baf: $a3
	cpl                                              ; $7bb0: $2f
	db $ec                                           ; $7bb1: $ec
	and $e9                                          ; $7bb2: $e6 $e9
	cp b                                             ; $7bb4: $b8
	add hl, bc                                       ; $7bb5: $09
	cpl                                              ; $7bb6: $2f
	ld b, e                                          ; $7bb7: $43
	db $ec                                           ; $7bb8: $ec
	and $ac                                          ; $7bb9: $e6 $ac
	ld [$1322], a                                    ; $7bbb: $ea $22 $13
	ld [hl], d                                       ; $7bbe: $72
	ld b, a                                          ; $7bbf: $47
	db $eb                                           ; $7bc0: $eb

jr_090_7bc1:
	ld e, h                                          ; $7bc1: $5c
	and c                                            ; $7bc2: $a1
	ld e, [hl]                                       ; $7bc3: $5e
	dec sp                                           ; $7bc4: $3b
	xor h                                            ; $7bc5: $ac
	pop af                                           ; $7bc6: $f1
	ld [hl+], a                                      ; $7bc7: $22
	inc [hl]                                         ; $7bc8: $34
	ld [$4822], a                                    ; $7bc9: $ea $22 $48
	and b                                            ; $7bcc: $a0
	cpl                                              ; $7bcd: $2f
	ld b, e                                          ; $7bce: $43
	db $eb                                           ; $7bcf: $eb
	rst FarCall                                          ; $7bd0: $f7
	and c                                            ; $7bd1: $a1
	ldh a, [$34]                                     ; $7bd2: $f0 $34
	ld b, d                                          ; $7bd4: $42
	ld c, c                                          ; $7bd5: $49
	ld d, h                                          ; $7bd6: $54
	ld b, a                                          ; $7bd7: $47
	ld a, $3a                                        ; $7bd8: $3e $3a
	jr c, jr_090_7b7d                                ; $7bda: $38 $a1

	cpl                                              ; $7bdc: $2f
	ld b, e                                          ; $7bdd: $43
	ld b, b                                          ; $7bde: $40
	add hl, sp                                       ; $7bdf: $39
	ld [hl], $52                                     ; $7be0: $36 $52
	ld b, [hl]                                       ; $7be2: $46
	inc [hl]                                         ; $7be3: $34
	db $ec                                           ; $7be4: $ec
	ld [$a048], sp                                   ; $7be5: $08 $48 $a0
	ld [hl], b                                       ; $7be8: $70
	ld [hl], c                                       ; $7be9: $71
	ld b, c                                          ; $7bea: $41
	ld c, h                                          ; $7beb: $4c
	and b                                            ; $7bec: $a0
	cpl                                              ; $7bed: $2f
	add sp, $51                                      ; $7bee: $e8 $51
	add hl, bc                                       ; $7bf0: $09
	ld b, b                                          ; $7bf1: $40
	ld c, l                                          ; $7bf2: $4d
	ld e, e                                          ; $7bf3: $5b
	ld d, [hl]                                       ; $7bf4: $56
	xor h                                            ; $7bf5: $ac
	ld e, d                                          ; $7bf6: $5a
	ld d, h                                          ; $7bf7: $54
	ld b, a                                          ; $7bf8: $47
	db $ec                                           ; $7bf9: $ec
	rlca                                             ; $7bfa: $07
	and c                                            ; $7bfb: $a1
	cpl                                              ; $7bfc: $2f
	add sp, $0d                                      ; $7bfd: $e8 $0d
	add hl, bc                                       ; $7bff: $09
	cpl                                              ; $7c00: $2f
	add sp, $2b                                      ; $7c01: $e8 $2b
	add hl, bc                                       ; $7c03: $09
	cpl                                              ; $7c04: $2f
	add sp, $52                                      ; $7c05: $e8 $52
	add hl, bc                                       ; $7c07: $09
	cpl                                              ; $7c08: $2f
	add sp, -$76                                     ; $7c09: $e8 $8a
	add hl, bc                                       ; $7c0b: $09
	cpl                                              ; $7c0c: $2f
	jp hl                                            ; $7c0d: $e9


	cp c                                             ; $7c0e: $b9
	add hl, bc                                       ; $7c0f: $09
	ld e, e                                          ; $7c10: $5b
	ld d, [hl]                                       ; $7c11: $56
	ldh a, [rLCDC]                                   ; $7c12: $f0 $40
	ld e, a                                          ; $7c14: $5f
	add hl, sp                                       ; $7c15: $39
	inc a                                            ; $7c16: $3c
	and b                                            ; $7c17: $a0
	cpl                                              ; $7c18: $2f
	ld b, e                                          ; $7c19: $43
	db $dd                                           ; $7c1a: $dd
	ldh a, [rLCDC]                                   ; $7c1b: $f0 $40
	ld e, a                                          ; $7c1d: $5f
	add hl, sp                                       ; $7c1e: $39
	and b                                            ; $7c1f: $a0
	db $ed                                           ; $7c20: $ed
	ld e, [hl]                                       ; $7c21: $5e
	inc [hl]                                         ; $7c22: $34
	ldh a, [$71]                                     ; $7c23: $f0 $71
	ld d, l                                          ; $7c25: $55
	ld a, [hl-]                                      ; $7c26: $3a
	inc a                                            ; $7c27: $3c
	dec sp                                           ; $7c28: $3b
	dec a                                            ; $7c29: $3d
	ld c, h                                          ; $7c2a: $4c

jr_090_7c2b:
	and b                                            ; $7c2b: $a0
	cpl                                              ; $7c2c: $2f
	ld b, b                                          ; $7c2d: $40
	add hl, sp                                       ; $7c2e: $39
	ld b, h                                          ; $7c2f: $44
	ld c, h                                          ; $7c30: $4c
	add hl, bc                                       ; $7c31: $09
	ld b, b                                          ; $7c32: $40
	add hl, sp                                       ; $7c33: $39
	ld c, d                                          ; $7c34: $4a
	ld a, $66                                        ; $7c35: $3e $66
	add hl, sp                                       ; $7c37: $39
	xor b                                            ; $7c38: $a8
	ld c, d                                          ; $7c39: $4a
	ld c, a                                          ; $7c3a: $4f
	sub b                                            ; $7c3b: $90
	ld a, $38                                        ; $7c3c: $3e $38
	ld b, l                                          ; $7c3e: $45
	ld c, h                                          ; $7c3f: $4c
	and b                                            ; $7c40: $a0
	cpl                                              ; $7c41: $2f
	ld d, c                                          ; $7c42: $51
	ld [hl], b                                       ; $7c43: $70
	ld d, l                                          ; $7c44: $55
	inc [hl]                                         ; $7c45: $34
	ldh a, [$71]                                     ; $7c46: $f0 $71
	inc a                                            ; $7c48: $3c
	dec sp                                           ; $7c49: $3b
	dec a                                            ; $7c4a: $3d
	ld b, l                                          ; $7c4b: $45
	add hl, bc                                       ; $7c4c: $09
	pop af                                           ; $7c4d: $f1
	cp e                                             ; $7c4e: $bb
	ld e, [hl]                                       ; $7c4f: $5e
	ldh a, [$38]                                     ; $7c50: $f0 $38
	ld d, e                                          ; $7c52: $53
	pop af                                           ; $7c53: $f1
	cp [hl]                                          ; $7c54: $be
	ld d, a                                          ; $7c55: $57
	ld a, [hl-]                                      ; $7c56: $3a
	jr c, jr_090_7cbc                                ; $7c57: $38 $63

	ld b, l                                          ; $7c59: $45
	and b                                            ; $7c5a: $a0
	cpl                                              ; $7c5b: $2f
	ld l, e                                          ; $7c5c: $6b
	ld c, d                                          ; $7c5d: $4a
	pop af                                           ; $7c5e: $f1
	ld l, c                                          ; $7c5f: $69
	ld a, a                                          ; $7c60: $7f
	ld a, [hl-]                                      ; $7c61: $3a
	ld b, d                                          ; $7c62: $42
	add hl, bc                                       ; $7c63: $09
	ld d, h                                          ; $7c64: $54
	ld b, c                                          ; $7c65: $41
	ld a, [hl-]                                      ; $7c66: $3a
	ld b, d                                          ; $7c67: $42
	pop af                                           ; $7c68: $f1
	sbc e                                            ; $7c69: $9b
	ld c, l                                          ; $7c6a: $4d
	ccf                                              ; $7c6b: $3f
	ld c, [hl]                                       ; $7c6c: $4e
	ld c, a                                          ; $7c6d: $4f
	ld b, c                                          ; $7c6e: $41
	and b                                            ; $7c6f: $a0
	cpl                                              ; $7c70: $2f
	ld b, e                                          ; $7c71: $43
	pop af                                           ; $7c72: $f1
	sbc e                                            ; $7c73: $9b
	ld c, l                                          ; $7c74: $4d
	ccf                                              ; $7c75: $3f
	ld c, [hl]                                       ; $7c76: $4e
	and c                                            ; $7c77: $a1
	jr c, jr_090_7cae                                ; $7c78: $38 $34

	jr c, jr_090_7cea                                ; $7c7a: $38 $6e

	inc [hl]                                         ; $7c7c: $34
	ld l, e                                          ; $7c7d: $6b
	ld c, d                                          ; $7c7e: $4a
	ld c, a                                          ; $7c7f: $4f
	ld a, [hl-]                                      ; $7c80: $3a
	jr c, jr_090_7c2b                                ; $7c81: $38 $a8

	di                                               ; $7c83: $f3
	rst SubAFromBC                                          ; $7c84: $e7
	ld d, a                                          ; $7c85: $57
	add d                                            ; $7c86: $82
	ld b, h                                          ; $7c87: $44
	ld b, l                                          ; $7c88: $45
	and b                                            ; $7c89: $a0
	ld c, a                                          ; $7c8a: $4f
	dec sp                                           ; $7c8b: $3b
	ld c, c                                          ; $7c8c: $49
	inc de                                           ; $7c8d: $13
	pop af                                           ; $7c8e: $f1
	jr @+$5f                                         ; $7c8f: $18 $5d

	ld d, a                                          ; $7c91: $57
	ld d, [hl]                                       ; $7c92: $56
	jr c, jr_090_7ccd                                ; $7c93: $38 $38

	ld b, d                                          ; $7c95: $42
	ld b, a                                          ; $7c96: $47
	ld c, h                                          ; $7c97: $4c
	and b                                            ; $7c98: $a0
	cpl                                              ; $7c99: $2f
	ret                                              ; $7c9a: $c9


	ldh a, [$2c]                                     ; $7c9b: $f0 $2c
	pop af                                           ; $7c9d: $f1
	cp [hl]                                          ; $7c9e: $be
	ld d, a                                          ; $7c9f: $57
	ld a, [hl-]                                      ; $7ca0: $3a

jr_090_7ca1:
	jr c, jr_090_7ce8                                ; $7ca1: $38 $45

	ld c, h                                          ; $7ca3: $4c
	add hl, bc                                       ; $7ca4: $09
	ld b, b                                          ; $7ca5: $40
	add hl, sp                                       ; $7ca6: $39
	ld [hl], a                                       ; $7ca7: $77
	add hl, sp                                       ; $7ca8: $39
	ld c, d                                          ; $7ca9: $4a
	ld a, $66                                        ; $7caa: $3e $66
	xor b                                            ; $7cac: $a8
	ld b, [hl]                                       ; $7cad: $46

jr_090_7cae:
	ld c, c                                          ; $7cae: $49
	push af                                          ; $7caf: $f5
	dec [hl]                                         ; $7cb0: $35
	sbc l                                            ; $7cb1: $9d
	ld d, b                                          ; $7cb2: $50
	jr c, jr_090_7ca1                                ; $7cb3: $38 $ec

	sub d                                            ; $7cb5: $92
	ld d, e                                          ; $7cb6: $53
	inc de                                           ; $7cb7: $13
	pop af                                           ; $7cb8: $f1
	add hl, hl                                       ; $7cb9: $29
	ld a, $3c                                        ; $7cba: $3e $3c

jr_090_7cbc:
	dec sp                                           ; $7cbc: $3b
	dec a                                            ; $7cbd: $3d
	ld a, [hl-]                                      ; $7cbe: $3a
	and b                                            ; $7cbf: $a0
	cpl                                              ; $7cc0: $2f
	db $ed                                           ; $7cc1: $ed
	ld [hl], e                                       ; $7cc2: $73
	ld b, h                                          ; $7cc3: $44
	ld b, l                                          ; $7cc4: $45
	add hl, bc                                       ; $7cc5: $09
	ld e, [hl]                                       ; $7cc6: $5e
	dec sp                                           ; $7cc7: $3b
	ld [hl], $46                                     ; $7cc8: $36 $46
	ld c, l                                          ; $7cca: $4d
	ld c, d                                          ; $7ccb: $4a
	and c                                            ; $7ccc: $a1

jr_090_7ccd:
	cpl                                              ; $7ccd: $2f
	db $ec                                           ; $7cce: $ec
	sub d                                            ; $7ccf: $92
	db $f4                                           ; $7cd0: $f4
	ld b, [hl]                                       ; $7cd1: $46
	ld b, h                                          ; $7cd2: $44
	ld c, h                                          ; $7cd3: $4c
	add hl, bc                                       ; $7cd4: $09
	rst JumpTable                                          ; $7cd5: $c7
	ld a, [hl-]                                      ; $7cd6: $3a
	ld b, d                                          ; $7cd7: $42
	inc a                                            ; $7cd8: $3c
	ld a, [hl-]                                      ; $7cd9: $3a
	ld c, b                                          ; $7cda: $48
	and b                                            ; $7cdb: $a0
	ld c, b                                          ; $7cdc: $48
	inc hl                                           ; $7cdd: $23
	ld c, b                                          ; $7cde: $48
	inc hl                                           ; $7cdf: $23
	and b                                            ; $7ce0: $a0
	cpl                                              ; $7ce1: $2f
	ld b, e                                          ; $7ce2: $43
	db $dd                                           ; $7ce3: $dd
	sub [hl]                                         ; $7ce4: $96
	ld c, [hl]                                       ; $7ce5: $4e
	adc l                                            ; $7ce6: $8d
	and b                                            ; $7ce7: $a0

jr_090_7ce8:
	sub [hl]                                         ; $7ce8: $96
	ld c, [hl]                                       ; $7ce9: $4e

jr_090_7cea:
	ld b, d                                          ; $7cea: $42
	ld c, h                                          ; $7ceb: $4c
	xor l                                            ; $7cec: $ad
	ldh a, [rTAC]                                    ; $7ced: $f0 $07
	inc a                                            ; $7cef: $3c
	dec sp                                           ; $7cf0: $3b
	dec a                                            ; $7cf1: $3d
	ld h, e                                          ; $7cf2: $63
	and b                                            ; $7cf3: $a0
	ldh a, [$71]                                     ; $7cf4: $f0 $71
	inc a                                            ; $7cf6: $3c
	dec sp                                           ; $7cf7: $3b
	dec a                                            ; $7cf8: $3d
	and c                                            ; $7cf9: $a1
	cpl                                              ; $7cfa: $2f
	jr c, jr_090_7d6b                                ; $7cfb: $38 $6e

	inc [hl]                                         ; $7cfd: $34
	db $ed                                           ; $7cfe: $ed
	ld e, [hl]                                       ; $7cff: $5e
	add hl, bc                                       ; $7d00: $09
	db $ec                                           ; $7d01: $ec
	inc e                                            ; $7d02: $1c
	xor b                                            ; $7d03: $a8
	xor $1e                                          ; $7d04: $ee $1e
	pop af                                           ; $7d06: $f1
	rst SubAFromHL                                          ; $7d07: $d7
	ldh a, [$0d]                                     ; $7d08: $f0 $0d
	ld e, e                                          ; $7d0a: $5b
	ld d, [hl]                                       ; $7d0b: $56
	ld c, h                                          ; $7d0c: $4c
	and b                                            ; $7d0d: $a0
	cpl                                              ; $7d0e: $2f
	ldh a, [rAUD3LOW]                                ; $7d0f: $f0 $1d
	ldh a, [$7e]                                     ; $7d11: $f0 $7e
	ld b, a                                          ; $7d13: $47
	ldh a, [rKEY1]                                   ; $7d14: $f0 $4d
	ldh a, [rKEY1]                                   ; $7d16: $f0 $4d
	dec sp                                           ; $7d18: $3b
	dec a                                            ; $7d19: $3d
	ld b, l                                          ; $7d1a: $45
	add hl, bc                                       ; $7d1b: $09
	rst JumpTable                                          ; $7d1c: $c7
	ld a, [hl-]                                      ; $7d1d: $3a
	ld b, d                                          ; $7d1e: $42
	xor c                                            ; $7d1f: $a9
	ld l, a                                          ; $7d20: $6f
	dec sp                                           ; $7d21: $3b
	ccf                                              ; $7d22: $3f
	ld b, a                                          ; $7d23: $47
	ldh a, [$fe]                                     ; $7d24: $f0 $fe
	jr c, @+$44                                      ; $7d26: $38 $42

	inc a                                            ; $7d28: $3c
	ld a, [hl-]                                      ; $7d29: $3a
	ld c, b                                          ; $7d2a: $48
	and b                                            ; $7d2b: $a0
	cpl                                              ; $7d2c: $2f
	db $ec                                           ; $7d2d: $ec
	and $49                                          ; $7d2e: $e6 $49
	ld b, h                                          ; $7d30: $44
	inc a                                            ; $7d31: $3c
	ld d, b                                          ; $7d32: $50
	ldh a, [$71]                                     ; $7d33: $f0 $71
	ld d, l                                          ; $7d35: $55
	ld a, [hl-]                                      ; $7d36: $3a
	jr c, jr_090_7d7e                                ; $7d37: $38 $45

	add hl, bc                                       ; $7d39: $09
	ld e, [hl]                                       ; $7d3a: $5e
	dec sp                                           ; $7d3b: $3b
	ld c, b                                          ; $7d3c: $48
	and b                                            ; $7d3d: $a0
	cpl                                              ; $7d3e: $2f
	ld b, e                                          ; $7d3f: $43
	db $ec                                           ; $7d40: $ec
	and $ac                                          ; $7d41: $e6 $ac
	db $ed                                           ; $7d43: $ed
	xor l                                            ; $7d44: $ad
	ld c, d                                          ; $7d45: $4a
	ldh a, [c]                                       ; $7d46: $f2
	adc d                                            ; $7d47: $8a
	ld e, [hl]                                       ; $7d48: $5e
	ld h, c                                          ; $7d49: $61
	ld d, [hl]                                       ; $7d4a: $56
	add hl, sp                                       ; $7d4b: $39
	inc a                                            ; $7d4c: $3c
	ld d, b                                          ; $7d4d: $50
	inc de                                           ; $7d4e: $13
	ldh a, [$de]                                     ; $7d4f: $f0 $de
	ld [hl], e                                       ; $7d51: $73
	sub e                                            ; $7d52: $93
	ldh a, [rP1]                                     ; $7d53: $f0 $00
	ld a, $3d                                        ; $7d55: $3e $3d
	ld b, l                                          ; $7d57: $45
	and b                                            ; $7d58: $a0
	ld e, [hl]                                       ; $7d59: $5e
	dec sp                                           ; $7d5a: $3b
	ld [hl], $5e                                     ; $7d5b: $36 $5e
	add l                                            ; $7d5d: $85
	ld c, b                                          ; $7d5e: $48
	and b                                            ; $7d5f: $a0
	ld h, h                                          ; $7d60: $64
	jr c, jr_090_7d9a                                ; $7d61: $38 $37

	add a                                            ; $7d63: $87
	ldh a, [$5d]                                     ; $7d64: $f0 $5d
	ld b, h                                          ; $7d66: $44
	scf                                              ; $7d67: $37
	inc de                                           ; $7d68: $13
	ldh a, [rAUD2HIGH]                               ; $7d69: $f0 $19

jr_090_7d6b:
	ld c, d                                          ; $7d6b: $4a
	di                                               ; $7d6c: $f3
	inc l                                            ; $7d6d: $2c
	di                                               ; $7d6e: $f3
	dec l                                            ; $7d6f: $2d
	ld d, e                                          ; $7d70: $53
	ldh a, [c]                                       ; $7d71: $f2
	ld [de], a                                       ; $7d72: $12
	ld c, l                                          ; $7d73: $4d
	ccf                                              ; $7d74: $3f
	ld c, [hl]                                       ; $7d75: $4e
	ld d, b                                          ; $7d76: $50
	ld a, $38                                        ; $7d77: $3e $38
	sub a                                            ; $7d79: $97
	and d                                            ; $7d7a: $a2
	cpl                                              ; $7d7b: $2f
	ld b, e                                          ; $7d7c: $43
	ld b, c                                          ; $7d7d: $41

jr_090_7d7e:
	xor c                                            ; $7d7e: $a9
	pop af                                           ; $7d7f: $f1
	ld c, c                                          ; $7d80: $49
	ld e, c                                          ; $7d81: $59
	add e                                            ; $7d82: $83
	ld l, c                                          ; $7d83: $69
	ldh a, [rAUD3ENA]                                ; $7d84: $f0 $1a
	ldh a, [hDisp0_WX]                                     ; $7d86: $f0 $89
	add e                                            ; $7d88: $83
	ld d, e                                          ; $7d89: $53
	di                                               ; $7d8a: $f3
	ld d, $53                                        ; $7d8b: $16 $53
	ld a, $38                                        ; $7d8d: $3e $38
	ld a, [hl-]                                      ; $7d8f: $3a
	and b                                            ; $7d90: $a0
	ld c, b                                          ; $7d91: $48
	db $ed                                           ; $7d92: $ed
	ld h, a                                          ; $7d93: $67
	ld h, d                                          ; $7d94: $62
	ldh a, [c]                                       ; $7d95: $f2
	adc c                                            ; $7d96: $89
	inc a                                            ; $7d97: $3c
	ld a, c                                          ; $7d98: $79
	ld c, [hl]                                       ; $7d99: $4e

jr_090_7d9a:
	inc de                                           ; $7d9a: $13
	ld b, l                                          ; $7d9b: $45
	add hl, sp                                       ; $7d9c: $39
	ld a, [hl-]                                      ; $7d9d: $3a
	ldh a, [$f8]                                     ; $7d9e: $f0 $f8
	ld c, e                                          ; $7da0: $4b
	ld l, a                                          ; $7da1: $6f
	ld d, e                                          ; $7da2: $53
	ldh a, [c]                                       ; $7da3: $f2
	ld a, b                                          ; $7da4: $78
	ld e, b                                          ; $7da5: $58
	ld a, [hl-]                                      ; $7da6: $3a
	jr c, jr_090_7e0c                                ; $7da7: $38 $63

	ld c, b                                          ; $7da9: $48
	and b                                            ; $7daa: $a0
	cpl                                              ; $7dab: $2f
	ld b, e                                          ; $7dac: $43
	ld e, [hl]                                       ; $7dad: $5e
	ld [hl], $6b                                     ; $7dae: $36 $6b
	inc a                                            ; $7db0: $3c
	add d                                            ; $7db1: $82
	dec sp                                           ; $7db2: $3b
	dec a                                            ; $7db3: $3d
	and c                                            ; $7db4: $a1
	ld e, [hl]                                       ; $7db5: $5e
	dec sp                                           ; $7db6: $3b
	ld [hl], $38                                     ; $7db7: $36 $38
	inc [hl]                                         ; $7db9: $34
	jr c, jr_090_7e2a                                ; $7dba: $38 $6e

	ld c, h                                          ; $7dbc: $4c
	add l                                            ; $7dbd: $85
	xor h                                            ; $7dbe: $ac
	ld l, e                                          ; $7dbf: $6b
	ld c, a                                          ; $7dc0: $4f
	add d                                            ; $7dc1: $82
	dec sp                                           ; $7dc2: $3b
	ccf                                              ; $7dc3: $3f
	ld a, [hl-]                                      ; $7dc4: $3a
	jr c, jr_090_7e2a                                ; $7dc5: $38 $63

	ld b, l                                          ; $7dc7: $45
	and b                                            ; $7dc8: $a0
	cpl                                              ; $7dc9: $2f
	ld [hl-], a                                      ; $7dca: $32
	db $ed                                           ; $7dcb: $ed
	ld h, a                                          ; $7dcc: $67
	ld d, e                                          ; $7dcd: $53
	ld l, e                                          ; $7dce: $6b
	ld c, c                                          ; $7dcf: $49
	inc a                                            ; $7dd0: $3c
	dec sp                                           ; $7dd1: $3b
	ccf                                              ; $7dd2: $3f
	inc de                                           ; $7dd3: $13
	add d                                            ; $7dd4: $82
	dec sp                                           ; $7dd5: $3b
	ccf                                              ; $7dd6: $3f
	dec a                                            ; $7dd7: $3d
	ld b, l                                          ; $7dd8: $45
	add hl, sp                                       ; $7dd9: $39
	ld a, [hl-]                                      ; $7dda: $3a
	ld c, b                                          ; $7ddb: $48
	inc sp                                           ; $7ddc: $33
	add hl, bc                                       ; $7ddd: $09
	ld e, b                                          ; $7dde: $58
	inc [hl]                                         ; $7ddf: $34
	ldh a, [$d6]                                     ; $7de0: $f0 $d6
	inc [hl]                                         ; $7de2: $34
	ld h, a                                          ; $7de3: $67
	ld e, h                                          ; $7de4: $5c
	ld d, d                                          ; $7de5: $52
	ld a, $66                                        ; $7de6: $3e $66
	and b                                            ; $7de8: $a0
	jp hl                                            ; $7de9: $e9


	ld b, h                                          ; $7dea: $44
	and b                                            ; $7deb: $a0
	jr c, jr_090_7e26                                ; $7dec: $38 $38

	di                                               ; $7dee: $f3
	ld h, l                                          ; $7def: $65
	pop af                                           ; $7df0: $f1
	ld l, [hl]                                       ; $7df1: $6e
	ld b, h                                          ; $7df2: $44
	dec sp                                           ; $7df3: $3b
	dec a                                            ; $7df4: $3d
	ld c, h                                          ; $7df5: $4c
	and b                                            ; $7df6: $a0
	cpl                                              ; $7df7: $2f
	db $ec                                           ; $7df8: $ec
	and $42                                          ; $7df9: $e6 $42
	ldh a, [$d2]                                     ; $7dfb: $f0 $d2
	ld h, d                                          ; $7dfd: $62
	ld [hl], d                                       ; $7dfe: $72
	ccf                                              ; $7dff: $3f
	dec a                                            ; $7e00: $3d
	inc a                                            ; $7e01: $3c
	ld d, b                                          ; $7e02: $50
	ld c, b                                          ; $7e03: $48
	add hl, bc                                       ; $7e04: $09
	ld e, [hl]                                       ; $7e05: $5e
	dec sp                                           ; $7e06: $3b
	inc [hl]                                         ; $7e07: $34
	ret                                              ; $7e08: $c9


	ld c, b                                          ; $7e09: $48
	inc hl                                           ; $7e0a: $23
	inc de                                           ; $7e0b: $13

jr_090_7e0c:
	db $eb                                           ; $7e0c: $eb
	ld c, a                                          ; $7e0d: $4f
	db $ec                                           ; $7e0e: $ec
	ret c                                            ; $7e0f: $d8

	ld c, b                                          ; $7e10: $48
	and b                                            ; $7e11: $a0
	cpl                                              ; $7e12: $2f
	jp hl                                            ; $7e13: $e9


	ret nz                                           ; $7e14: $c0

	add hl, bc                                       ; $7e15: $09
	add b                                            ; $7e16: $80
	ld d, d                                          ; $7e17: $52
	ld d, b                                          ; $7e18: $50
	ld a, [hl-]                                      ; $7e19: $3a
	inc a                                            ; $7e1a: $3c
	dec sp                                           ; $7e1b: $3b
	dec a                                            ; $7e1c: $3d
	and c                                            ; $7e1d: $a1
	cpl                                              ; $7e1e: $2f
	xor $1f                                          ; $7e1f: $ee $1f
	inc [hl]                                         ; $7e21: $34
	jr c, jr_090_7e5c                                ; $7e22: $38 $38

	di                                               ; $7e24: $f3
	ld h, l                                          ; $7e25: $65

jr_090_7e26:
	pop af                                           ; $7e26: $f1
	ld l, [hl]                                       ; $7e27: $6e
	ld b, h                                          ; $7e28: $44
	dec sp                                           ; $7e29: $3b

jr_090_7e2a:
	dec a                                            ; $7e2a: $3d
	ld c, h                                          ; $7e2b: $4c
	add hl, bc                                       ; $7e2c: $09
	ld c, a                                          ; $7e2d: $4f
	add hl, sp                                       ; $7e2e: $39
	ret                                              ; $7e2f: $c9


	ldh a, [$62]                                     ; $7e30: $f0 $62
	ld d, l                                          ; $7e32: $55
	inc de                                           ; $7e33: $13
	ldh a, [rLCDC]                                   ; $7e34: $f0 $40
	dec sp                                           ; $7e36: $3b
	ccf                                              ; $7e37: $3f
	jr c, jr_090_7e77                                ; $7e38: $38 $3d

	inc a                                            ; $7e3a: $3c
	dec sp                                           ; $7e3b: $3b
	dec a                                            ; $7e3c: $3d
	ld c, h                                          ; $7e3d: $4c
	and b                                            ; $7e3e: $a0
	db $ed                                           ; $7e3f: $ed
	xor l                                            ; $7e40: $ad
	ld c, d                                          ; $7e41: $4a
	ld d, c                                          ; $7e42: $51
	ld [hl], b                                       ; $7e43: $70
	ld d, l                                          ; $7e44: $55
	ldh a, [c]                                       ; $7e45: $f2
	ld l, d                                          ; $7e46: $6a
	ld c, l                                          ; $7e47: $4d
	ccf                                              ; $7e48: $3f
	inc de                                           ; $7e49: $13
	ldh a, [c]                                       ; $7e4a: $f2
	sub d                                            ; $7e4b: $92
	jr c, jr_090_7e8b                                ; $7e4c: $38 $3d

	ld c, h                                          ; $7e4e: $4c
	and b                                            ; $7e4f: $a0
	cpl                                              ; $7e50: $2f
	pop af                                           ; $7e51: $f1
	jr nc, jr_090_7ec5                               ; $7e52: $30 $71

	ccf                                              ; $7e54: $3f
	ld d, l                                          ; $7e55: $55
	ld c, l                                          ; $7e56: $4d
	ld c, l                                          ; $7e57: $4d
	ld a, e                                          ; $7e58: $7b
	ld b, l                                          ; $7e59: $45
	inc a                                            ; $7e5a: $3c
	dec sp                                           ; $7e5b: $3b

jr_090_7e5c:
	dec a                                            ; $7e5c: $3d
	ld b, d                                          ; $7e5d: $42
	ld b, a                                          ; $7e5e: $47
	add hl, bc                                       ; $7e5f: $09
	ld e, [hl]                                       ; $7e60: $5e
	ld [hl], $6b                                     ; $7e61: $36 $6b
	ld c, d                                          ; $7e63: $4a
	and b                                            ; $7e64: $a0
	cpl                                              ; $7e65: $2f
	ld b, e                                          ; $7e66: $43
	ld b, b                                          ; $7e67: $40
	ld a, $3d                                        ; $7e68: $3e $3d
	ld d, b                                          ; $7e6a: $50
	inc [hl]                                         ; $7e6b: $34
	ldh a, [hDisp0_SCX]                                     ; $7e6c: $f0 $84
	add h                                            ; $7e6e: $84
	ld c, d                                          ; $7e6f: $4a
	jr c, jr_090_7ec0                                ; $7e70: $38 $4e

	inc de                                           ; $7e72: $13
	ldh a, [rBGP]                                    ; $7e73: $f0 $47
	ldh a, [$2a]                                     ; $7e75: $f0 $2a

jr_090_7e77:
	ld d, e                                          ; $7e77: $53
	ldh a, [$62]                                     ; $7e78: $f0 $62
	ld d, l                                          ; $7e7a: $55
	ld a, [hl-]                                      ; $7e7b: $3a
	ld c, [hl]                                       ; $7e7c: $4e
	ld c, d                                          ; $7e7d: $4a
	ld a, $66                                        ; $7e7e: $3e $66
	and b                                            ; $7e80: $a0
	ld a, [hl-]                                      ; $7e81: $3a
	inc [hl]                                         ; $7e82: $34
	ld l, e                                          ; $7e83: $6b
	add d                                            ; $7e84: $82
	dec sp                                           ; $7e85: $3b

jr_090_7e86:
	ccf                                              ; $7e86: $3f
	ld c, [hl]                                       ; $7e87: $4e
	ld b, d                                          ; $7e88: $42
	ld b, l                                          ; $7e89: $45
	ld c, b                                          ; $7e8a: $48

jr_090_7e8b:
	dec [hl]                                         ; $7e8b: $35
	ld [hl+], a                                      ; $7e8c: $22
	inc de                                           ; $7e8d: $13
	db $ed                                           ; $7e8e: $ed
	ld b, c                                          ; $7e8f: $41
	ld b, a                                          ; $7e90: $47
	ld b, b                                          ; $7e91: $40
	add hl, sp                                       ; $7e92: $39
	ld [hl], a                                       ; $7e93: $77
	dec sp                                           ; $7e94: $3b
	ccf                                              ; $7e95: $3f
	ld c, [hl]                                       ; $7e96: $4e
	ld c, b                                          ; $7e97: $48
	and c                                            ; $7e98: $a1
	cpl                                              ; $7e99: $2f
	pop af                                           ; $7e9a: $f1
	push bc                                          ; $7e9b: $c5
	di                                               ; $7e9c: $f3
	ld e, d                                          ; $7e9d: $5a
	ldh a, [c]                                       ; $7e9e: $f2
	ret nc                                           ; $7e9f: $d0

	ld c, e                                          ; $7ea0: $4b
	ldh a, [c]                                       ; $7ea1: $f2

jr_090_7ea2:
	ld l, d                                          ; $7ea2: $6a
	ld c, l                                          ; $7ea3: $4d
	ld c, [hl]                                       ; $7ea4: $4e
	ld c, a                                          ; $7ea5: $4f
	ld b, c                                          ; $7ea6: $41
	ld b, h                                          ; $7ea7: $44
	ld b, l                                          ; $7ea8: $45
	add hl, bc                                       ; $7ea9: $09
	rst JumpTable                                          ; $7eaa: $c7
	ld a, [hl-]                                      ; $7eab: $3a
	ld b, d                                          ; $7eac: $42
	xor c                                            ; $7ead: $a9
	ldh a, [$71]                                     ; $7eae: $f0 $71
	jr c, jr_090_7ea2                                ; $7eb0: $38 $f0

	ld b, b                                          ; $7eb2: $40
	ld d, a                                          ; $7eb3: $57
	ldh a, [$2c]                                     ; $7eb4: $f0 $2c
	ld c, h                                          ; $7eb6: $4c
	and b                                            ; $7eb7: $a0
	cpl                                              ; $7eb8: $2f
	db $ed                                           ; $7eb9: $ed
	ld e, [hl]                                       ; $7eba: $5e
	ld a, a                                          ; $7ebb: $7f
	ldh a, [c]                                       ; $7ebc: $f2
	ld h, a                                          ; $7ebd: $67
	inc a                                            ; $7ebe: $3c
	ld a, [hl-]                                      ; $7ebf: $3a

jr_090_7ec0:
	inc a                                            ; $7ec0: $3c
	dec sp                                           ; $7ec1: $3b
	dec a                                            ; $7ec2: $3d
	ld e, l                                          ; $7ec3: $5d
	ld e, d                                          ; $7ec4: $5a

jr_090_7ec5:
	add hl, bc                                       ; $7ec5: $09
	rst JumpTable                                          ; $7ec6: $c7
	xor l                                            ; $7ec7: $ad
	ld l, e                                          ; $7ec8: $6b
	ldh a, [$a4]                                     ; $7ec9: $f0 $a4
	ld e, [hl]                                       ; $7ecb: $5e
	ccf                                              ; $7ecc: $3f
	dec a                                            ; $7ecd: $3d
	ld b, d                                          ; $7ece: $42
	inc a                                            ; $7ecf: $3c
	ld a, $50                                        ; $7ed0: $3e $50
	ld c, b                                          ; $7ed2: $48
	and b                                            ; $7ed3: $a0
	cp e                                             ; $7ed4: $bb
	ld c, h                                          ; $7ed5: $4c
	ld e, c                                          ; $7ed6: $59
	and b                                            ; $7ed7: $a0
	cpl                                              ; $7ed8: $2f
	adc b                                            ; $7ed9: $88
	sub c                                            ; $7eda: $91
	inc [hl]                                         ; $7edb: $34
	cp e                                             ; $7edc: $bb
	ld b, l                                          ; $7edd: $45
	add hl, bc                                       ; $7ede: $09
	ld b, l                                          ; $7edf: $45
	ld a, $37                                        ; $7ee0: $3e $37
	ld c, a                                          ; $7ee2: $4f
	add hl, sp                                       ; $7ee3: $39
	db $ed                                           ; $7ee4: $ed
	ld e, $5f                                        ; $7ee5: $1e $5f
	add hl, sp                                       ; $7ee7: $39
	and b                                            ; $7ee8: $a0
	pop af                                           ; $7ee9: $f1
	cp e                                             ; $7eea: $bb
	ld e, [hl]                                       ; $7eeb: $5e
	ldh a, [$38]                                     ; $7eec: $f0 $38
	ld d, e                                          ; $7eee: $53
	pop af                                           ; $7eef: $f1
	cp [hl]                                          ; $7ef0: $be
	ld d, a                                          ; $7ef1: $57
	ld a, [hl-]                                      ; $7ef2: $3a
	jr c, jr_090_7f2f                                ; $7ef3: $38 $3a

	ld [hl], h                                       ; $7ef5: $74
	and b                                            ; $7ef6: $a0
	cpl                                              ; $7ef7: $2f
	ld l, e                                          ; $7ef8: $6b
	ld c, d                                          ; $7ef9: $4a
	pop af                                           ; $7efa: $f1
	ld l, c                                          ; $7efb: $69
	ld a, a                                          ; $7efc: $7f
	ld a, [hl-]                                      ; $7efd: $3a
	ld b, d                                          ; $7efe: $42
	and c                                            ; $7eff: $a1
	ld d, h                                          ; $7f00: $54
	ld b, c                                          ; $7f01: $41
	ld a, [hl-]                                      ; $7f02: $3a
	ld b, d                                          ; $7f03: $42
	jr c, jr_090_7e86                                ; $7f04: $38 $80

	ld c, a                                          ; $7f06: $4f
	inc de                                           ; $7f07: $13
	di                                               ; $7f08: $f3
	ld c, b                                          ; $7f09: $48
	ldh a, [rAUD3LEN]                                ; $7f0a: $f0 $1b
	ld c, d                                          ; $7f0c: $4a
	ld c, b                                          ; $7f0d: $48
	and b                                            ; $7f0e: $a0
	cpl                                              ; $7f0f: $2f
	ld b, e                                          ; $7f10: $43
	di                                               ; $7f11: $f3
	ld c, b                                          ; $7f12: $48
	ldh a, [rAUD3LEN]                                ; $7f13: $f0 $1b
	and c                                            ; $7f15: $a1
	jr c, jr_090_7f4c                                ; $7f16: $38 $34

	jr c, jr_090_7f88                                ; $7f18: $38 $6e

	inc [hl]                                         ; $7f1a: $34
	ld l, e                                          ; $7f1b: $6b
	ld c, d                                          ; $7f1c: $4a
	ld c, a                                          ; $7f1d: $4f
	ld a, [hl-]                                      ; $7f1e: $3a
	jr c, jr_090_7f84                                ; $7f1f: $38 $63

	xor b                                            ; $7f21: $a8
	ld b, [hl]                                       ; $7f22: $46
	ld c, e                                          ; $7f23: $4b
	ld c, e                                          ; $7f24: $4b
	and b                                            ; $7f25: $a0
	cpl                                              ; $7f26: $2f
	ld b, e                                          ; $7f27: $43
	ld [hl], $36                                     ; $7f28: $36 $36
	and c                                            ; $7f2a: $a1
	ld e, b                                          ; $7f2b: $58
	ld [hl], h                                       ; $7f2c: $74
	xor h                                            ; $7f2d: $ac
	ld c, a                                          ; $7f2e: $4f

jr_090_7f2f:
	add hl, sp                                       ; $7f2f: $39
	ld l, l                                          ; $7f30: $6d
	ldh a, [$d3]                                     ; $7f31: $f0 $d3
	ldh a, [rLCDC]                                   ; $7f33: $f0 $40
	ld c, [hl]                                       ; $7f35: $4e
	ld h, e                                          ; $7f36: $63
	ld b, l                                          ; $7f37: $45
	and b                                            ; $7f38: $a0
	cpl                                              ; $7f39: $2f
	ld c, a                                          ; $7f3a: $4f
	add hl, sp                                       ; $7f3b: $39
	ldh a, [c]                                       ; $7f3c: $f2
	or l                                             ; $7f3d: $b5
	pop af                                           ; $7f3e: $f1
	inc a                                            ; $7f3f: $3c
	ld a, $3f                                        ; $7f40: $3e $3f
	add hl, bc                                       ; $7f42: $09
	ldh a, [$8e]                                     ; $7f43: $f0 $8e
	ldh a, [rP1]                                     ; $7f45: $f0 $00
	ld e, c                                          ; $7f47: $59
	ldh a, [rIF]                                     ; $7f48: $f0 $0f
	add e                                            ; $7f4a: $83
	ld a, [hl-]                                      ; $7f4b: $3a

jr_090_7f4c:
	ld b, d                                          ; $7f4c: $42
	ld b, l                                          ; $7f4d: $45
	xor b                                            ; $7f4e: $a8
	ldh a, [rLCDC]                                   ; $7f4f: $f0 $40
	ld d, b                                          ; $7f51: $50
	ld a, [hl-]                                      ; $7f52: $3a
	jr c, jr_090_7f9e                                ; $7f53: $38 $49

	pop af                                           ; $7f55: $f1
	daa                                              ; $7f56: $27
	ld h, l                                          ; $7f57: $65
	db $ec                                           ; $7f58: $ec
	ret c                                            ; $7f59: $d8

	and b                                            ; $7f5a: $a0
	cpl                                              ; $7f5b: $2f
	db $dd                                           ; $7f5c: $dd
	ld h, a                                          ; $7f5d: $67
	ld d, l                                          ; $7f5e: $55
	sub a                                            ; $7f5f: $97
	add hl, bc                                       ; $7f60: $09
	db $ed                                           ; $7f61: $ed
	ld d, a                                          ; $7f62: $57
	ld d, h                                          ; $7f63: $54
	ld c, l                                          ; $7f64: $4d
	ld b, h                                          ; $7f65: $44
	ld e, l                                          ; $7f66: $5d
	ld c, d                                          ; $7f67: $4a
	inc de                                           ; $7f68: $13
	db $ed                                           ; $7f69: $ed
	ld l, l                                          ; $7f6a: $6d
	ld b, l                                          ; $7f6b: $45
	and b                                            ; $7f6c: $a0
	cpl                                              ; $7f6d: $2f
	ldh a, [rDIV]                                    ; $7f6e: $f0 $04
	ldh a, [$8e]                                     ; $7f70: $f0 $8e
	ld b, h                                          ; $7f72: $44
	ld c, h                                          ; $7f73: $4c
	ld c, b                                          ; $7f74: $48
	add hl, bc                                       ; $7f75: $09
	ldh a, [$65]                                     ; $7f76: $f0 $65
	ldh a, [$7f]                                     ; $7f78: $f0 $7f
	ld c, c                                          ; $7f7a: $49
	pop af                                           ; $7f7b: $f1
	sub e                                            ; $7f7c: $93
	pop af                                           ; $7f7d: $f1
	ld a, [bc]                                       ; $7f7e: $0a
	ld b, h                                          ; $7f7f: $44
	ld e, l                                          ; $7f80: $5d
	ld d, e                                          ; $7f81: $53
	inc de                                           ; $7f82: $13
	ld l, a                                          ; $7f83: $6f

jr_090_7f84:
	ld b, d                                          ; $7f84: $42
	pop af                                           ; $7f85: $f1
	inc b                                            ; $7f86: $04
	ld d, a                                          ; $7f87: $57

jr_090_7f88:
	rst FarCall                                          ; $7f88: $f7
	dec bc                                           ; $7f89: $0b
	ld b, l                                          ; $7f8a: $45
	xor b                                            ; $7f8b: $a8
	inc a                                            ; $7f8c: $3c
	ld h, e                                          ; $7f8d: $63
	jr c, jr_090_7fe5                                ; $7f8e: $38 $55

	ld a, [hl-]                                      ; $7f90: $3a
	jr c, jr_090_7ff0                                ; $7f91: $38 $5d

	ld e, d                                          ; $7f93: $5a
	ld c, h                                          ; $7f94: $4c
	and b                                            ; $7f95: $a0
	ldh a, [rAUD4ENV]                                ; $7f96: $f0 $21
	ldh a, [rAUD4GO]                                 ; $7f98: $f0 $23
	call c, $dea0                                    ; $7f9a: $dc $a0 $de
	inc [hl]                                         ; $7f9d: $34

jr_090_7f9e:
	db $ec                                           ; $7f9e: $ec
	ld h, c                                          ; $7f9f: $61
	inc de                                           ; $7fa0: $13
	ld a, $3f                                        ; $7fa1: $3e $3f
	ld c, [hl]                                       ; $7fa3: $4e
	ld a, a                                          ; $7fa4: $7f
	ldh a, [rTAC]                                    ; $7fa5: $f0 $07
	ld b, h                                          ; $7fa7: $44
	dec sp                                           ; $7fa8: $3b
	dec a                                            ; $7fa9: $3d
	ld c, h                                          ; $7faa: $4c
	and b                                            ; $7fab: $a0
	cpl                                              ; $7fac: $2f
	ld a, l                                          ; $7fad: $7d
	ld h, l                                          ; $7fae: $65
	ldh a, [c]                                       ; $7faf: $f2
	adc l                                            ; $7fb0: $8d
	ld c, d                                          ; $7fb1: $4a
	ldh a, [rKEY1]                                   ; $7fb2: $f0 $4d
	ldh a, [rKEY1]                                   ; $7fb4: $f0 $4d
	dec sp                                           ; $7fb6: $3b
	ld h, c                                          ; $7fb7: $61
	ld d, [hl]                                       ; $7fb8: $56
	dec sp                                           ; $7fb9: $3b
	dec a                                            ; $7fba: $3d
	ld b, l                                          ; $7fbb: $45
	add hl, bc                                       ; $7fbc: $09
	ld l, a                                          ; $7fbd: $6f
	ld c, a                                          ; $7fbe: $4f
	inc [hl]                                         ; $7fbf: $34
	db $ec                                           ; $7fc0: $ec
	ld de, $3d3e                                     ; $7fc1: $11 $3e $3d
	ld h, e                                          ; $7fc4: $63
	and b                                            ; $7fc5: $a0
	cpl                                              ; $7fc6: $2f
	add sp, -$10                                     ; $7fc7: $e8 $f0
	add hl, bc                                       ; $7fc9: $09
	ld c, d                                          ; $7fca: $4a
	ld c, a                                          ; $7fcb: $4f
	db $ed                                           ; $7fcc: $ed
	ld h, a                                          ; $7fcd: $67
	ld d, e                                          ; $7fce: $53
	ldh a, [$66]                                     ; $7fcf: $f0 $66
	ld b, c                                          ; $7fd1: $41
	ld c, d                                          ; $7fd2: $4a
	inc de                                           ; $7fd3: $13
	ld d, l                                          ; $7fd4: $55
	ld c, l                                          ; $7fd5: $4d
	dec a                                            ; $7fd6: $3d
	ld d, b                                          ; $7fd7: $50
	jr c, @+$3a                                      ; $7fd8: $38 $38

	ld b, c                                          ; $7fda: $41
	db $ec                                           ; $7fdb: $ec
	ret c                                            ; $7fdc: $d8

	and c                                            ; $7fdd: $a1
	cpl                                              ; $7fde: $2f
	ld [$09b3], a                                    ; $7fdf: $ea $b3 $09
	ld b, b                                          ; $7fe2: $40
	ld c, l                                          ; $7fe3: $4d
	ld b, h                                          ; $7fe4: $44

jr_090_7fe5:
	ld e, l                                          ; $7fe5: $5d
	and c                                            ; $7fe6: $a1
	ret                                              ; $7fe7: $c9


	inc de                                           ; $7fe8: $13
	ldh a, [rAUD3LEVEL]                              ; $7fe9: $f0 $1c
	ld d, e                                          ; $7feb: $53
	ldh a, [$d3]                                     ; $7fec: $f0 $d3
	dec sp                                           ; $7fee: $3b
	dec a                                            ; $7fef: $3d

jr_090_7ff0:
	inc a                                            ; $7ff0: $3c
	ld a, [hl-]                                      ; $7ff1: $3a
	ld c, b                                          ; $7ff2: $48
	and b                                            ; $7ff3: $a0
	cpl                                              ; $7ff4: $2f
	add a                                            ; $7ff5: $87
	ldh a, [$5b]                                     ; $7ff6: $f0 $5b
	ldh a, [$5e]                                     ; $7ff8: $f0 $5e
	ld [hl], $f0                                     ; $7ffa: $36 $f0
	adc a                                            ; $7ffc: $8f
	ld b, c                                          ; $7ffd: $41
	ld c, d                                          ; $7ffe: $4a
	db $38                                           ; $7fff: $38
