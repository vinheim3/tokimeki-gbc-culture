; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08e", ROMX[$4000], BANK[$8e]

	ldh a, [rAUD4GO]                                 ; $4000: $f0 $23
	ld d, l                                          ; $4002: $55
	ld a, [hl-]                                      ; $4003: $3a
	jr c, jr_08e_404b                                ; $4004: $38 $45

	add hl, bc                                       ; $4006: $09
	ld l, e                                          ; $4007: $6b
	ld b, d                                          ; $4008: $42
	dec a                                            ; $4009: $3d
	ld [hl], c                                       ; $400a: $71
	ld b, a                                          ; $400b: $47
	inc de                                           ; $400c: $13
	ld h, e                                          ; $400d: $63
	ldh a, [rAUD1SWEEP]                              ; $400e: $f0 $10
	ld h, e                                          ; $4010: $63
	ldh a, [rAUD1SWEEP]                              ; $4011: $f0 $10
	ld a, b                                          ; $4013: $78
	dec a                                            ; $4014: $3d
	ld b, d                                          ; $4015: $42
	inc a                                            ; $4016: $3c
	inc de                                           ; $4017: $13
	ldh a, [rTAC]                                    ; $4018: $f0 $07
	inc a                                            ; $401a: $3c
	ld d, b                                          ; $401b: $50
	ld a, [hl-]                                      ; $401c: $3a
	jr c, jr_08e_4082                                ; $401d: $38 $63

	and b                                            ; $401f: $a0
	ld b, h                                          ; $4020: $44
	dec sp                                           ; $4021: $3b
	dec a                                            ; $4022: $3d
	ld d, b                                          ; $4023: $50
	xor h                                            ; $4024: $ac
	ld l, e                                          ; $4025: $6b
	ld b, d                                          ; $4026: $42
	dec a                                            ; $4027: $3d
	ld [hl], c                                       ; $4028: $71
	ld b, a                                          ; $4029: $47
	ld a, b                                          ; $402a: $78
	dec a                                            ; $402b: $3d
	ld b, d                                          ; $402c: $42
	inc a                                            ; $402d: $3c
	inc de                                           ; $402e: $13
	db $ec                                           ; $402f: $ec
	db $ed                                           ; $4030: $ed
	db $ec                                           ; $4031: $ec
	push af                                          ; $4032: $f5
	ld h, e                                          ; $4033: $63
	and b                                            ; $4034: $a0
	ld b, h                                          ; $4035: $44
	dec sp                                           ; $4036: $3b
	dec a                                            ; $4037: $3d
	ld d, b                                          ; $4038: $50
	xor h                                            ; $4039: $ac
	ld l, e                                          ; $403a: $6b
	ld a, $47                                        ; $403b: $3e $47
	ld a, b                                          ; $403d: $78
	dec a                                            ; $403e: $3d
	ld b, d                                          ; $403f: $42
	and c                                            ; $4040: $a1
	cpl                                              ; $4041: $2f
	ld b, l                                          ; $4042: $45
	ld d, l                                          ; $4043: $55
	ldh a, [rTAC]                                    ; $4044: $f0 $07
	inc a                                            ; $4046: $3c
	ld d, b                                          ; $4047: $50
	ld a, [hl-]                                      ; $4048: $3a
	jr c, jr_08e_40a8                                ; $4049: $38 $5d

jr_08e_404b:
	ld e, d                                          ; $404b: $5a
	inc [hl]                                         ; $404c: $34
	ldh a, [rAUD4ENV]                                ; $404d: $f0 $21
	ldh a, [rAUD4GO]                                 ; $404f: $f0 $23
	jr c, jr_08e_4098                                ; $4051: $38 $45

	add hl, bc                                       ; $4053: $09
	ld b, b                                          ; $4054: $40
	add hl, sp                                       ; $4055: $39
	xor b                                            ; $4056: $a8
	ld b, l                                          ; $4057: $45
	ld d, l                                          ; $4058: $55
	ldh a, [rTAC]                                    ; $4059: $f0 $07
	inc a                                            ; $405b: $3c
	ld d, b                                          ; $405c: $50
	ld a, [hl-]                                      ; $405d: $3a
	jr c, jr_08e_40a2                                ; $405e: $38 $42

	ld c, h                                          ; $4060: $4c
	xor b                                            ; $4061: $a8
	ld d, d                                          ; $4062: $52
	inc [hl]                                         ; $4063: $34
	ld b, b                                          ; $4064: $40
	ld c, l                                          ; $4065: $4d
	ld c, d                                          ; $4066: $4a
	ld c, a                                          ; $4067: $4f
	jr c, jr_08e_40a2                                ; $4068: $38 $38

	ld h, e                                          ; $406a: $63
	and b                                            ; $406b: $a0
	ld b, l                                          ; $406c: $45
	ld d, l                                          ; $406d: $55
	ldh a, [rTAC]                                    ; $406e: $f0 $07
	inc a                                            ; $4070: $3c
	ld d, b                                          ; $4071: $50
	ld a, [hl-]                                      ; $4072: $3a
	jr c, jr_08e_40b6                                ; $4073: $38 $41

	ld e, e                                          ; $4075: $5b
	ld d, [hl]                                       ; $4076: $56
	xor h                                            ; $4077: $ac
	sbc $f0                                          ; $4078: $de $f0
	ld hl, $23f0                                     ; $407a: $21 $f0 $23
	jr c, jr_08e_40c8                                ; $407d: $38 $49

	ld c, e                                          ; $407f: $4b
	inc de                                           ; $4080: $13
	add d                                            ; $4081: $82

jr_08e_4082:
	ld e, [hl]                                       ; $4082: $5e
	db $ec                                           ; $4083: $ec
	dec bc                                           ; $4084: $0b
	and b                                            ; $4085: $a0
	ld b, b                                          ; $4086: $40
	ld c, l                                          ; $4087: $4d
	ld e, e                                          ; $4088: $5b
	ld d, [hl]                                       ; $4089: $56
	xor h                                            ; $408a: $ac
	ldh a, [rAUD4ENV]                                ; $408b: $f0 $21
	ldh a, [rAUD4GO]                                 ; $408d: $f0 $23
	jr c, @+$3e                                      ; $408f: $38 $3c

	ld e, d                                          ; $4091: $5a
	add hl, sp                                       ; $4092: $39
	inc a                                            ; $4093: $3c
	inc de                                           ; $4094: $13
	ldh a, [rTAC]                                    ; $4095: $f0 $07
	inc a                                            ; $4097: $3c

jr_08e_4098:
	ld d, b                                          ; $4098: $50
	db $ec                                           ; $4099: $ec
	dec bc                                           ; $409a: $0b
	and b                                            ; $409b: $a0
	ld e, d                                          ; $409c: $5a
	add hl, sp                                       ; $409d: $39
	ld a, [hl-]                                      ; $409e: $3a
	dec sp                                           ; $409f: $3b

Call_08e_40a0:
	dec a                                            ; $40a0: $3d
	ld d, b                                          ; $40a1: $50

jr_08e_40a2:
	xor h                                            ; $40a2: $ac
	db $ed                                           ; $40a3: $ed
	rst SubAFromHL                                          ; $40a4: $d7
	ld d, e                                          ; $40a5: $53
	add b                                            ; $40a6: $80
	ld d, l                                          ; $40a7: $55

Call_08e_40a8:
jr_08e_40a8:
	ld b, d                                          ; $40a8: $42
	and c                                            ; $40a9: $a1
	cpl                                              ; $40aa: $2f
	add sp, -$59                                     ; $40ab: $e8 $a7
	add hl, bc                                       ; $40ad: $09
	ld b, b                                          ; $40ae: $40
	add hl, sp                                       ; $40af: $39
	xor b                                            ; $40b0: $a8
	db $ec                                           ; $40b1: $ec
	reti                                             ; $40b2: $d9


	db $eb                                           ; $40b3: $eb
	ld d, e                                          ; $40b4: $53
	ld h, e                                          ; $40b5: $63

jr_08e_40b6:
	and b                                            ; $40b6: $a0
	cpl                                              ; $40b7: $2f
	ld [$096e], a                                    ; $40b8: $ea $6e $09
	ld b, h                                          ; $40bb: $44
	dec sp                                           ; $40bc: $3b
	dec a                                            ; $40bd: $3d
	ld d, b                                          ; $40be: $50
	xor h                                            ; $40bf: $ac
	ld l, e                                          ; $40c0: $6b
	ld h, d                                          ; $40c1: $62
	ld a, $47                                        ; $40c2: $3e $47
	ld a, b                                          ; $40c4: $78
	dec a                                            ; $40c5: $3d
	ld b, d                                          ; $40c6: $42
	and c                                            ; $40c7: $a1

jr_08e_40c8:
	cpl                                              ; $40c8: $2f
	ld [$094e], a                                    ; $40c9: $ea $4e $09
	call nc, Call_08e_4563                           ; $40cc: $d4 $63 $45
	xor b                                            ; $40cf: $a8
	ldh a, [$a4]                                     ; $40d0: $f0 $a4
	ld e, [hl]                                       ; $40d2: $5e
	ccf                                              ; $40d3: $3f
	ld l, h                                          ; $40d4: $6c
	ld c, l                                          ; $40d5: $4d
	ld a, e                                          ; $40d6: $7b
	xor h                                            ; $40d7: $ac
	ld b, [hl]                                       ; $40d8: $46
	ld a, [hl-]                                      ; $40d9: $3a
	dec a                                            ; $40da: $3d
	ld b, a                                          ; $40db: $47
	ldh a, [$0c]                                     ; $40dc: $f0 $0c
	ld d, l                                          ; $40de: $55
	ldh a, [$38]                                     ; $40df: $f0 $38
	ld d, e                                          ; $40e1: $53
	ldh a, [$97]                                     ; $40e2: $f0 $97
	ld c, h                                          ; $40e4: $4c
	and b                                            ; $40e5: $a0
	ld d, d                                          ; $40e6: $52
	inc [hl]                                         ; $40e7: $34
	ldh a, [rAUD2LOW]                                ; $40e8: $f0 $18
	ldh a, [$dc]                                     ; $40ea: $f0 $dc
	ld b, l                                          ; $40ec: $45
	ld d, a                                          ; $40ed: $57
	ld c, e                                          ; $40ee: $4b
	ldh a, [rAUD4ENV]                                ; $40ef: $f0 $21
	ldh a, [rAUD4GO]                                 ; $40f1: $f0 $23
	jr c, jr_08e_4108                                ; $40f3: $38 $13

	ld e, l                                          ; $40f5: $5d
	ld e, d                                          ; $40f6: $5a
	inc [hl]                                         ; $40f7: $34
	db $ec                                           ; $40f8: $ec
	reti                                             ; $40f9: $d9


	db $eb                                           ; $40fa: $eb
	ld d, e                                          ; $40fb: $53
	ld h, e                                          ; $40fc: $63
	ld c, h                                          ; $40fd: $4c
	and b                                            ; $40fe: $a0
	cpl                                              ; $40ff: $2f
	ld e, d                                          ; $4100: $5a
	ld b, d                                          ; $4101: $42
	push af                                          ; $4102: $f5
	ld b, c                                          ; $4103: $41
	ld d, e                                          ; $4104: $53
	db $eb                                           ; $4105: $eb
	ld d, e                                          ; $4106: $53
	ld b, d                                          ; $4107: $42

jr_08e_4108:
	and c                                            ; $4108: $a1
	call c, Call_08e_49a8                            ; $4109: $dc $a8 $49
	ld d, a                                          ; $410c: $57
	ld b, [hl]                                       ; $410d: $46
	ld e, [hl]                                       ; $410e: $5e
	sbc h                                            ; $410f: $9c
	xor h                                            ; $4110: $ac
	db $ec                                           ; $4111: $ec
	ldh a, [c]                                       ; $4112: $f2
	pop af                                           ; $4113: $f1
	inc bc                                           ; $4114: $03
	ld a, [hl-]                                      ; $4115: $3a
	adc a                                            ; $4116: $8f
	ldh a, [rTAC]                                    ; $4117: $f0 $07
	ld d, e                                          ; $4119: $53
	ldh a, [$64]                                     ; $411a: $f0 $64
	jr c, jr_08e_416a                                ; $411c: $38 $4c

	and b                                            ; $411e: $a0
	adc b                                            ; $411f: $88
	sub c                                            ; $4120: $91
	ld b, d                                          ; $4121: $42
	pop af                                           ; $4122: $f1
	rst AddAOntoHL                                          ; $4123: $ef
	ld b, d                                          ; $4124: $42
	ld l, [hl]                                       ; $4125: $6e
	ld d, a                                          ; $4126: $57
	pop af                                           ; $4127: $f1
	inc b                                            ; $4128: $04
	ld d, a                                          ; $4129: $57
	inc de                                           ; $412a: $13
	ld c, e                                          ; $412b: $4b
	inc [hl]                                         ; $412c: $34
	ld d, h                                          ; $412d: $54
	ld b, c                                          ; $412e: $41
	ld a, [hl-]                                      ; $412f: $3a
	ld b, d                                          ; $4130: $42
	db $ec                                           ; $4131: $ec
	ret c                                            ; $4132: $d8

	ld h, e                                          ; $4133: $63
	and b                                            ; $4134: $a0
	db $ec                                           ; $4135: $ec
	ldh a, [c]                                       ; $4136: $f2
	pop af                                           ; $4137: $f1
	inc bc                                           ; $4138: $03
	di                                               ; $4139: $f3
	sub $f0                                          ; $413a: $d6 $f0
	ld d, a                                          ; $413c: $57
	ld d, e                                          ; $413d: $53
	inc de                                           ; $413e: $13

jr_08e_413f:
	ldh a, [$9c]                                     ; $413f: $f0 $9c
	ld d, l                                          ; $4141: $55
	ccf                                              ; $4142: $3f
	inc [hl]                                         ; $4143: $34
	db $eb                                           ; $4144: $eb
	ld d, e                                          ; $4145: $53
	ld h, e                                          ; $4146: $63
	and b                                            ; $4147: $a0
	cpl                                              ; $4148: $2f
	halt                                             ; $4149: $76
	ld c, a                                          ; $414a: $4f

jr_08e_414b:
	inc [hl]                                         ; $414b: $34
	db $ec                                           ; $414c: $ec
	jr c, jr_08e_413f                                ; $414d: $38 $f0

	ld h, h                                          ; $414f: $64
	jr c, jr_08e_418c                                ; $4150: $38 $3a

	ld b, c                                          ; $4152: $41
	ld b, h                                          ; $4153: $44
	add hl, bc                                       ; $4154: $09
	cpl                                              ; $4155: $2f
	ld d, c                                          ; $4156: $51
	ld [hl], b                                       ; $4157: $70
	ld d, l                                          ; $4158: $55
	ldh a, [rAUD4ENV]                                ; $4159: $f0 $21
	ldh a, [rAUD4GO]                                 ; $415b: $f0 $23
	jr c, jr_08e_414b                                ; $415d: $38 $ec

	ret c                                            ; $415f: $d8

	inc a                                            ; $4160: $3c
	add hl, bc                                       ; $4161: $09
	ld d, d                                          ; $4162: $52
	inc [hl]                                         ; $4163: $34
	add h                                            ; $4164: $84
	ld b, b                                          ; $4165: $40
	ld c, l                                          ; $4166: $4d
	sub a                                            ; $4167: $97
	ld c, l                                          ; $4168: $4d
	ld b, d                                          ; $4169: $42

jr_08e_416a:
	inc de                                           ; $416a: $13
	adc e                                            ; $416b: $8b
	ld l, h                                          ; $416c: $6c
	ld b, h                                          ; $416d: $44
	ld e, l                                          ; $416e: $5d
	ld e, d                                          ; $416f: $5a
	ld c, h                                          ; $4170: $4c
	and b                                            ; $4171: $a0
	ldh a, [$34]                                     ; $4172: $f0 $34
	ld b, a                                          ; $4174: $47
	inc [hl]                                         ; $4175: $34
	ld b, b                                          ; $4176: $40
	add hl, sp                                       ; $4177: $39
	ld [hl], a                                       ; $4178: $77
	add hl, sp                                       ; $4179: $39
	ld a, [hl-]                                      ; $417a: $3a
	ld d, b                                          ; $417b: $50
	xor h                                            ; $417c: $ac
	ld b, b                                          ; $417d: $40
	ld c, l                                          ; $417e: $4d
	ld c, d                                          ; $417f: $4a
	ld c, a                                          ; $4180: $4f
	jr c, @+$3a                                      ; $4181: $38 $38

	ld h, e                                          ; $4183: $63
	and b                                            ; $4184: $a0
	ld b, b                                          ; $4185: $40
	add hl, sp                                       ; $4186: $39
	ld [hl], a                                       ; $4187: $77
	add hl, sp                                       ; $4188: $39
	ld b, d                                          ; $4189: $42
	ld c, e                                          ; $418a: $4b

jr_08e_418b:
	xor h                                            ; $418b: $ac

jr_08e_418c:
	ldh a, [$6f]                                     ; $418c: $f0 $6f
	ldh a, [$0b]                                     ; $418e: $f0 $0b
	ld b, l                                          ; $4190: $45
	and b                                            ; $4191: $a0
	ld [$3bfb], a                                    ; $4192: $ea $fb $3b
	ccf                                              ; $4195: $3f
	xor h                                            ; $4196: $ac
	ld a, [hl]                                       ; $4197: $7e
	jr c, jr_08e_418b                                ; $4198: $38 $f1

	ld de, $65f0                                     ; $419a: $11 $f0 $65
	ld a, $3f                                        ; $419d: $3e $3f
	ld c, [hl]                                       ; $419f: $4e
	ld h, e                                          ; $41a0: $63
	ld c, h                                          ; $41a1: $4c
	and b                                            ; $41a2: $a0
	cpl                                              ; $41a3: $2f
	db $eb                                           ; $41a4: $eb
	rst FarCall                                          ; $41a5: $f7
	inc [hl]                                         ; $41a6: $34
	db $ed                                           ; $41a7: $ed
	ld hl, sp+$09                                    ; $41a8: $f8 $09
	ld b, [hl]                                       ; $41aa: $46
	ld c, l                                          ; $41ab: $4d
	ld a, [hl-]                                      ; $41ac: $3a
	ld d, b                                          ; $41ad: $50
	xor h                                            ; $41ae: $ac
	ldh a, [c]                                       ; $41af: $f2
	xor b                                            ; $41b0: $a8
	di                                               ; $41b1: $f3
	ld a, [de]                                       ; $41b2: $1a
	ld b, a                                          ; $41b3: $47
	ld c, a                                          ; $41b4: $4f
	db $f4                                           ; $41b5: $f4
	ld [$505e], sp                                   ; $41b6: $08 $5e $50
	ld c, l                                          ; $41b9: $4d
	call c, $2fa0                                    ; $41ba: $dc $a0 $2f
	db $ed                                           ; $41bd: $ed
	ld b, h                                          ; $41be: $44
	ld b, h                                          ; $41bf: $44
	ld c, h                                          ; $41c0: $4c
	add hl, bc                                       ; $41c1: $09
	ld l, e                                          ; $41c2: $6b
	inc [hl]                                         ; $41c3: $34
	pop af                                           ; $41c4: $f1
	or d                                             ; $41c5: $b2
	pop af                                           ; $41c6: $f1
	ld c, b                                          ; $41c7: $48
	ld a, [hl-]                                      ; $41c8: $3a
	ld d, h                                          ; $41c9: $54
	ld c, c                                          ; $41ca: $49
	inc de                                           ; $41cb: $13
	add d                                            ; $41cc: $82
	dec sp                                           ; $41cd: $3b
	ccf                                              ; $41ce: $3f
	ld c, [hl]                                       ; $41cf: $4e
	ld b, d                                          ; $41d0: $42
	and c                                            ; $41d1: $a1
	cpl                                              ; $41d2: $2f
	di                                               ; $41d3: $f3
	cp $f5                                           ; $41d4: $fe $f5
	dec b                                            ; $41d6: $05
	pop af                                           ; $41d7: $f1
	call z, $ed53                                    ; $41d8: $cc $53 $ed
	jr nc, jr_08e_4217                               ; $41db: $30 $3a

	ld b, d                                          ; $41dd: $42
	and c                                            ; $41de: $a1
	ld b, b                                          ; $41df: $40
	ld b, c                                          ; $41e0: $41
	ld a, [hl-]                                      ; $41e1: $3a
	ld d, h                                          ; $41e2: $54
	ld c, c                                          ; $41e3: $49
	xor h                                            ; $41e4: $ac
	ldh a, [$a4]                                     ; $41e5: $f0 $a4
	ld e, [hl]                                       ; $41e7: $5e
	dec a                                            ; $41e8: $3d
	ld d, h                                          ; $41e9: $54
	ld c, c                                          ; $41ea: $49
	ld c, a                                          ; $41eb: $4f
	ld a, [hl-]                                      ; $41ec: $3a
	jr c, jr_08e_4252                                ; $41ed: $38 $63

	and b                                            ; $41ef: $a0
	ld c, a                                          ; $41f0: $4f
	add hl, sp                                       ; $41f1: $39
	inc [hl]                                         ; $41f2: $34
	db $ec                                           ; $41f3: $ec
	ld a, $4c                                        ; $41f4: $3e $4c
	and b                                            ; $41f6: $a0
	cpl                                              ; $41f7: $2f
	ld b, e                                          ; $41f8: $43
	ld e, e                                          ; $41f9: $5b
	ld d, [hl]                                       ; $41fa: $56
	ld b, [hl]                                       ; $41fb: $46
	xor h                                            ; $41fc: $ac
	ldh a, [$0a]                                     ; $41fd: $f0 $0a
	ld d, l                                          ; $41ff: $55
	sub [hl]                                         ; $4200: $96
	ld e, a                                          ; $4201: $5f
	add hl, sp                                       ; $4202: $39
	and b                                            ; $4203: $a0
	cpl                                              ; $4204: $2f
	ld b, e                                          ; $4205: $43
	ld b, [hl]                                       ; $4206: $46
	ld b, b                                          ; $4207: $40
	ld d, h                                          ; $4208: $54
	ld d, e                                          ; $4209: $53
	ldh a, [$c9]                                     ; $420a: $f0 $c9
	jr c, jr_08e_424d                                ; $420c: $38 $3f

	ld c, [hl]                                       ; $420e: $4e
	ld b, l                                          ; $420f: $45
	xor b                                            ; $4210: $a8
	ldh a, [$e7]                                     ; $4211: $f0 $e7
	ld e, a                                          ; $4213: $5f
	add hl, sp                                       ; $4214: $39
	and b                                            ; $4215: $a0
	cpl                                              ; $4216: $2f

jr_08e_4217:
	add sp, -$75                                     ; $4217: $e8 $8b
	and c                                            ; $4219: $a1
	call c, Call_08e_63a8                            ; $421a: $dc $a8 $63
	ld d, a                                          ; $421d: $57
	ld c, c                                          ; $421e: $49
	ld b, l                                          ; $421f: $45
	inc a                                            ; $4220: $3c
	dec sp                                           ; $4221: $3b
	ldh [$a0], a                                     ; $4222: $e0 $a0
	call c, $eca8                                    ; $4224: $dc $a8 $ec
	sub $4c                                          ; $4227: $d6 $4c
	and b                                            ; $4229: $a0
	ld d, d                                          ; $422a: $52
	ld b, [hl]                                       ; $422b: $46
	inc [hl]                                         ; $422c: $34
	ld [hl], d                                       ; $422d: $72
	ld c, l                                          ; $422e: $4d
	ld c, [hl]                                       ; $422f: $4e
	ld h, e                                          ; $4230: $63
	ld c, h                                          ; $4231: $4c
	and b                                            ; $4232: $a0
	cpl                                              ; $4233: $2f
	add sp, $2c                                      ; $4234: $e8 $2c
	and c                                            ; $4236: $a1
	ld d, d                                          ; $4237: $52
	inc [hl]                                         ; $4238: $34
	ld b, [hl]                                       ; $4239: $46
	ld a, [hl-]                                      ; $423a: $3a
	dec a                                            ; $423b: $3d
	ld b, a                                          ; $423c: $47
	inc de                                           ; $423d: $13
	ld d, h                                          ; $423e: $54
	ld b, d                                          ; $423f: $42
	ldh a, [rAUD4ENV]                                ; $4240: $f0 $21
	ldh a, [rAUD4GO]                                 ; $4242: $f0 $23
	ld e, b                                          ; $4244: $58
	ld d, e                                          ; $4245: $53
	inc [hl]                                         ; $4246: $34
	ldh a, [rTAC]                                    ; $4247: $f0 $07
	inc a                                            ; $4249: $3c
	ld c, [hl]                                       ; $424a: $4e
	ld c, c                                          ; $424b: $49
	ld c, e                                          ; $424c: $4b

jr_08e_424d:
	inc de                                           ; $424d: $13
	ld [hl], a                                       ; $424e: $77
	dec sp                                           ; $424f: $3b
	ccf                                              ; $4250: $3f
	ld a, [hl-]                                      ; $4251: $3a

jr_08e_4252:
	inc a                                            ; $4252: $3c
	dec sp                                           ; $4253: $3b
	dec a                                            ; $4254: $3d
	ld e, l                                          ; $4255: $5d
	ld e, d                                          ; $4256: $5a
	and b                                            ; $4257: $a0
	ld d, d                                          ; $4258: $52
	inc [hl]                                         ; $4259: $34
	ld b, [hl]                                       ; $425a: $46
	ld a, [hl-]                                      ; $425b: $3a
	dec a                                            ; $425c: $3d
	ld b, a                                          ; $425d: $47
	ld c, e                                          ; $425e: $4b
	inc de                                           ; $425f: $13
	ld d, h                                          ; $4260: $54
	add hl, sp                                       ; $4261: $39
	jr c, jr_08e_429d                                ; $4262: $38 $39

	ldh a, [$74]                                     ; $4264: $f0 $74
	ldh a, [$7a]                                     ; $4266: $f0 $7a
	ld b, d                                          ; $4268: $42
	sub b                                            ; $4269: $90
	ld a, $58                                        ; $426a: $3e $58
	ld d, e                                          ; $426c: $53
	inc de                                           ; $426d: $13
	ldh a, [rTAC]                                    ; $426e: $f0 $07
	inc a                                            ; $4270: $3c
	ld d, b                                          ; $4271: $50
	db $ec                                           ; $4272: $ec
	dec bc                                           ; $4273: $0b
	and b                                            ; $4274: $a0
	call c, $1735                                    ; $4275: $dc $35 $17
	ld b, [hl]                                       ; $4278: $46
	ld a, [hl-]                                      ; $4279: $3a
	dec a                                            ; $427a: $3d
	ld b, a                                          ; $427b: $47
	ld c, e                                          ; $427c: $4b
	inc de                                           ; $427d: $13
	ld [$63de], a                                    ; $427e: $ea $de $63
	ld c, h                                          ; $4281: $4c
	and b                                            ; $4282: $a0
	cpl                                              ; $4283: $2f
	add sp, $2d                                      ; $4284: $e8 $2d
	and c                                            ; $4286: $a1
	ld l, a                                          ; $4287: $6f
	ld c, e                                          ; $4288: $4b
	xor h                                            ; $4289: $ac
	ld h, e                                          ; $428a: $63
	ld d, a                                          ; $428b: $57
	ld c, c                                          ; $428c: $49
	db $ec                                           ; $428d: $ec
	cp c                                             ; $428e: $b9
	ld h, e                                          ; $428f: $63
	and b                                            ; $4290: $a0
	ld h, e                                          ; $4291: $63
	ld d, a                                          ; $4292: $57
	ld c, c                                          ; $4293: $49
	inc de                                           ; $4294: $13
	jr c, jr_08e_42cf                                ; $4295: $38 $38

	ld b, c                                          ; $4297: $41
	db $ec                                           ; $4298: $ec
	ret c                                            ; $4299: $d8

	ld b, d                                          ; $429a: $42
	and b                                            ; $429b: $a0
	db $ec                                           ; $429c: $ec

jr_08e_429d:
	sub $34                                          ; $429d: $d6 $34
	db $ec                                           ; $429f: $ec
	cp c                                             ; $42a0: $b9
	ld h, e                                          ; $42a1: $63
	and b                                            ; $42a2: $a0
	ld b, b                                          ; $42a3: $40
	add hl, sp                                       ; $42a4: $39
	xor c                                            ; $42a5: $a9
	db $ed                                           ; $42a6: $ed
	ld e, [hl]                                       ; $42a7: $5e
	inc [hl]                                         ; $42a8: $34
	ldh a, [rAUD4ENV]                                ; $42a9: $f0 $21
	ldh a, [rAUD4GO]                                 ; $42ab: $f0 $23
	ld d, l                                          ; $42ad: $55
	ld a, [hl-]                                      ; $42ae: $3a
	inc a                                            ; $42af: $3c
	dec sp                                           ; $42b0: $3b
	dec a                                            ; $42b1: $3d
	ld h, e                                          ; $42b2: $63
	and b                                            ; $42b3: $a0
	ldh a, [rAUD4ENV]                                ; $42b4: $f0 $21
	ldh a, [rAUD4GO]                                 ; $42b6: $f0 $23
	ld d, l                                          ; $42b8: $55
	ld a, [hl-]                                      ; $42b9: $3a
	inc a                                            ; $42ba: $3c
	dec sp                                           ; $42bb: $3b
	dec a                                            ; $42bc: $3d
	ld h, e                                          ; $42bd: $63
	dec [hl]                                         ; $42be: $35
	rla                                              ; $42bf: $17
	ld c, a                                          ; $42c0: $4f
	dec sp                                           ; $42c1: $3b
	ld c, c                                          ; $42c2: $49
	xor h                                            ; $42c3: $ac
	db $ed                                           ; $42c4: $ed
	sbc b                                            ; $42c5: $98
	pop af                                           ; $42c6: $f1
	inc bc                                           ; $42c7: $03
	ld a, [hl-]                                      ; $42c8: $3a
	ld b, d                                          ; $42c9: $42
	ld d, e                                          ; $42ca: $53
	jr c, @+$3a                                      ; $42cb: $38 $38

	ld h, e                                          ; $42cd: $63
	and b                                            ; $42ce: $a0

jr_08e_42cf:
	db $ed                                           ; $42cf: $ed
	ld e, [hl]                                       ; $42d0: $5e
	add b                                            ; $42d1: $80
	ld d, d                                          ; $42d2: $52
	ld d, b                                          ; $42d3: $50
	ld a, [hl-]                                      ; $42d4: $3a
	inc a                                            ; $42d5: $3c
	dec sp                                           ; $42d6: $3b
	dec a                                            ; $42d7: $3d
	ld h, e                                          ; $42d8: $63
	dec [hl]                                         ; $42d9: $35
	rla                                              ; $42da: $17
	db $ed                                           ; $42db: $ed
	sbc b                                            ; $42dc: $98
	pop af                                           ; $42dd: $f1
	inc bc                                           ; $42de: $03
	ld a, [hl-]                                      ; $42df: $3a
	ldh a, [$74]                                     ; $42e0: $f0 $74
	ldh a, [$7a]                                     ; $42e2: $f0 $7a
	ld d, e                                          ; $42e4: $53
	xor h                                            ; $42e5: $ac
	jr c, jr_08e_4320                                ; $42e6: $38 $38

	ld h, e                                          ; $42e8: $63
	ld c, h                                          ; $42e9: $4c
	and b                                            ; $42ea: $a0
	call c, $dea8                                    ; $42eb: $dc $a8 $de
	add b                                            ; $42ee: $80
	ld d, d                                          ; $42ef: $52
	ld d, b                                          ; $42f0: $50
	ld a, [hl-]                                      ; $42f1: $3a
	inc a                                            ; $42f2: $3c
	dec sp                                           ; $42f3: $3b
	dec a                                            ; $42f4: $3d
	ld h, e                                          ; $42f5: $63
	and b                                            ; $42f6: $a0
	call c, $1735                                    ; $42f7: $dc $35 $17
	ld c, a                                          ; $42fa: $4f
	dec sp                                           ; $42fb: $3b
	ld c, c                                          ; $42fc: $49
	db $ed                                           ; $42fd: $ed
	sbc b                                            ; $42fe: $98
	pop af                                           ; $42ff: $f1
	inc bc                                           ; $4300: $03
	ld a, [hl-]                                      ; $4301: $3a
	ldh a, [$74]                                     ; $4302: $f0 $74
	ldh a, [$7a]                                     ; $4304: $f0 $7a
	ld d, e                                          ; $4306: $53
	inc de                                           ; $4307: $13
	db $ec                                           ; $4308: $ec
	cp c                                             ; $4309: $b9
	ld h, e                                          ; $430a: $63
	ld c, h                                          ; $430b: $4c
	and b                                            ; $430c: $a0
	call c, $eda8                                    ; $430d: $dc $a8 $ed
	sbc b                                            ; $4310: $98
	pop af                                           ; $4311: $f1
	inc bc                                           ; $4312: $03
	ld a, [hl-]                                      ; $4313: $3a
	ldh a, [$74]                                     ; $4314: $f0 $74
	ldh a, [$7a]                                     ; $4316: $f0 $7a
	ld d, e                                          ; $4318: $53
	ld a, [hl]                                       ; $4319: $7e
	jr c, jr_08e_437f                                ; $431a: $38 $63

	and b                                            ; $431c: $a0
	db $ed                                           ; $431d: $ed
	inc e                                            ; $431e: $1c
	ld c, d                                          ; $431f: $4a

jr_08e_4320:
	ld c, a                                          ; $4320: $4f
	db $ec                                           ; $4321: $ec
	dec bc                                           ; $4322: $0b
	and b                                            ; $4323: $a0
	ld c, a                                          ; $4324: $4f
	dec sp                                           ; $4325: $3b
	ld c, c                                          ; $4326: $49
	db $ed                                           ; $4327: $ed
	sbc b                                            ; $4328: $98
	pop af                                           ; $4329: $f1
	inc bc                                           ; $432a: $03
	ld a, [hl-]                                      ; $432b: $3a
	ldh a, [$74]                                     ; $432c: $f0 $74
	ldh a, [$7a]                                     ; $432e: $f0 $7a
	ld d, e                                          ; $4330: $53
	inc de                                           ; $4331: $13
	jr c, jr_08e_436c                                ; $4332: $38 $38

	ld h, e                                          ; $4334: $63
	and b                                            ; $4335: $a0
	ld c, a                                          ; $4336: $4f
	add hl, sp                                       ; $4337: $39
	ldh a, [rHDMA4]                                  ; $4338: $f0 $54
	ld a, $ac                                        ; $433a: $3e $ac
	db $ed                                           ; $433c: $ed
	sbc b                                            ; $433d: $98
	pop af                                           ; $433e: $f1
	inc bc                                           ; $433f: $03
	ld b, h                                          ; $4340: $44
	dec sp                                           ; $4341: $3b
	dec a                                            ; $4342: $3d
	ld d, b                                          ; $4343: $50
	inc de                                           ; $4344: $13
	db $ec                                           ; $4345: $ec
	cp c                                             ; $4346: $b9
	ld h, e                                          ; $4347: $63
	ld c, h                                          ; $4348: $4c
	and b                                            ; $4349: $a0
	db $ed                                           ; $434a: $ed
	inc e                                            ; $434b: $1c
	xor h                                            ; $434c: $ac
	ldh a, [$5c]                                     ; $434d: $f0 $5c
	ld d, l                                          ; $434f: $55
	ld c, a                                          ; $4350: $4f
	ld a, [hl-]                                      ; $4351: $3a
	inc a                                            ; $4352: $3c
	dec sp                                           ; $4353: $3b
	dec a                                            ; $4354: $3d
	ld h, e                                          ; $4355: $63
	and b                                            ; $4356: $a0
	db $ed                                           ; $4357: $ed
	inc e                                            ; $4358: $1c
	ldh a, [$5c]                                     ; $4359: $f0 $5c
	ld d, l                                          ; $435b: $55
	ld c, e                                          ; $435c: $4b
	ld a, [hl-]                                      ; $435d: $3a
	jr c, jr_08e_43c3                                ; $435e: $38 $63

	dec [hl]                                         ; $4360: $35
	rla                                              ; $4361: $17
	ld c, a                                          ; $4362: $4f
	dec sp                                           ; $4363: $3b
	ld c, c                                          ; $4364: $49
	db $ed                                           ; $4365: $ed
	sbc b                                            ; $4366: $98
	pop af                                           ; $4367: $f1
	inc bc                                           ; $4368: $03
	ld a, [hl-]                                      ; $4369: $3a
	ld b, d                                          ; $436a: $42
	ld d, e                                          ; $436b: $53

jr_08e_436c:
	inc de                                           ; $436c: $13
	db $ec                                           ; $436d: $ec
	ld [$a04c], sp                                   ; $436e: $08 $4c $a0
	db $ed                                           ; $4371: $ed
	inc e                                            ; $4372: $1c
	ldh a, [$5c]                                     ; $4373: $f0 $5c
	ld d, l                                          ; $4375: $55
	ld c, e                                          ; $4376: $4b
	ld a, [hl-]                                      ; $4377: $3a
	jr c, jr_08e_43dd                                ; $4378: $38 $63

	ld b, l                                          ; $437a: $45
	and b                                            ; $437b: $a0
	ld b, b                                          ; $437c: $40
	ld b, d                                          ; $437d: $42
	db $ed                                           ; $437e: $ed

jr_08e_437f:
	adc e                                            ; $437f: $8b
	ld d, e                                          ; $4380: $53
	ld hl, sp-$43                                    ; $4381: $f8 $bd
	sub c                                            ; $4383: $91
	ld c, h                                          ; $4384: $4c
	and b                                            ; $4385: $a0
	ld d, d                                          ; $4386: $52
	inc [hl]                                         ; $4387: $34
	ld b, b                                          ; $4388: $40
	ld b, c                                          ; $4389: $41
	ld a, [hl-]                                      ; $438a: $3a
	ld c, a                                          ; $438b: $4f
	ld b, c                                          ; $438c: $41
	ld c, h                                          ; $438d: $4c
	and b                                            ; $438e: $a0
	ld b, b                                          ; $438f: $40
	ld b, d                                          ; $4390: $42
	pop af                                           ; $4391: $f1
	rst SubAFromHL                                          ; $4392: $d7
	ldh a, [$0d]                                     ; $4393: $f0 $0d
	ld c, h                                          ; $4395: $4c
	and b                                            ; $4396: $a0
	ld c, a                                          ; $4397: $4f
	add hl, sp                                       ; $4398: $39
	inc [hl]                                         ; $4399: $34
	db $ec                                           ; $439a: $ec
	ccf                                              ; $439b: $3f
	ld b, l                                          ; $439c: $45
	and b                                            ; $439d: $a0
	cpl                                              ; $439e: $2f
	ld b, e                                          ; $439f: $43
	ld e, b                                          ; $43a0: $58
	ld b, [hl]                                       ; $43a1: $46
	inc [hl]                                         ; $43a2: $34
	ldh a, [$0a]                                     ; $43a3: $f0 $0a
	ld d, l                                          ; $43a5: $55
	sub [hl]                                         ; $43a6: $96
	ld e, a                                          ; $43a7: $5f
	add hl, sp                                       ; $43a8: $39
	and b                                            ; $43a9: $a0
	cpl                                              ; $43aa: $2f
	ld b, e                                          ; $43ab: $43
	ldh a, [$08]                                     ; $43ac: $f0 $08
	ld d, b                                          ; $43ae: $50
	inc [hl]                                         ; $43af: $34
	db $ec                                           ; $43b0: $ec
	ldh [rAUD1LOW], a                                ; $43b1: $e0 $13
	db $ec                                           ; $43b3: $ec
	xor $ec                                          ; $43b4: $ee $ec
	xor $a0                                          ; $43b6: $ee $a0
	cpl                                              ; $43b8: $2f

jr_08e_43b9:
	add sp, -$74                                     ; $43b9: $e8 $8c
	and c                                            ; $43bb: $a1
	pop de                                           ; $43bc: $d1
	xor h                                            ; $43bd: $ac
	jr c, jr_08e_43f8                                ; $43be: $38 $38

	xor $2b                                          ; $43c0: $ee $2b
	ld b, h                                          ; $43c2: $44

jr_08e_43c3:
	dec sp                                           ; $43c3: $3b

jr_08e_43c4:
	ldh [$a0], a                                     ; $43c4: $e0 $a0
	ld d, d                                          ; $43c6: $52
	inc [hl]                                         ; $43c7: $34
	ld a, [hl]                                       ; $43c8: $7e
	jr c, jr_08e_43b9                                ; $43c9: $38 $ee

	dec hl                                           ; $43cb: $2b
	ld b, h                                          ; $43cc: $44
	dec sp                                           ; $43cd: $3b
	dec a                                            ; $43ce: $3d
	inc de                                           ; $43cf: $13
	ld h, e                                          ; $43d0: $63
	ld c, h                                          ; $43d1: $4c
	and b                                            ; $43d2: $a0
	ld a, [hl]                                       ; $43d3: $7e
	jr c, jr_08e_43c4                                ; $43d4: $38 $ee

	dec hl                                           ; $43d6: $2b
	ld b, h                                          ; $43d7: $44
	dec sp                                           ; $43d8: $3b
	dec a                                            ; $43d9: $3d
	ld h, e                                          ; $43da: $63
	and b                                            ; $43db: $a0
	cpl                                              ; $43dc: $2f

jr_08e_43dd:
	add sp, $0e                                      ; $43dd: $e8 $0e
	and c                                            ; $43df: $a1
	ld d, h                                          ; $43e0: $54
	ld b, d                                          ; $43e1: $42
	ldh a, [$99]                                     ; $43e2: $f0 $99
	sub b                                            ; $43e4: $90
	ld b, d                                          ; $43e5: $42
	ld a, [hl]                                       ; $43e6: $7e
	ld e, b                                          ; $43e7: $58
	ld d, e                                          ; $43e8: $53
	inc de                                           ; $43e9: $13
	ldh a, [rTAC]                                    ; $43ea: $f0 $07
	inc a                                            ; $43ec: $3c
	ld d, b                                          ; $43ed: $50
	ld a, [hl-]                                      ; $43ee: $3a
	jr c, jr_08e_442b                                ; $43ef: $38 $3a

	ld b, c                                          ; $43f1: $41
	ccf                                              ; $43f2: $3f
	and b                                            ; $43f3: $a0
	ldh a, [rOBP1]                                   ; $43f4: $f0 $49
	ld d, l                                          ; $43f6: $55
	db $ed                                           ; $43f7: $ed

jr_08e_43f8:
	ld e, a                                          ; $43f8: $5f
	ld h, d                                          ; $43f9: $62
	inc de                                           ; $43fa: $13
	ld [$63de], a                                    ; $43fb: $ea $de $63
	ld c, h                                          ; $43fe: $4c
	and b                                            ; $43ff: $a0
	ld b, b                                          ; $4400: $40
	add hl, sp                                       ; $4401: $39
	xor b                                            ; $4402: $a8
	db $ed                                           ; $4403: $ed
	ld e, a                                          ; $4404: $5f
	ld h, d                                          ; $4405: $62
	ld [$42de], a                                    ; $4406: $ea $de $42
	ld c, h                                          ; $4409: $4c
	and b                                            ; $440a: $a0
	cpl                                              ; $440b: $2f
	add sp, $0f                                      ; $440c: $e8 $0f
	and c                                            ; $440e: $a1
	ld b, b                                          ; $440f: $40

jr_08e_4410:
	add hl, sp                                       ; $4410: $39
	ld [hl], $17                                     ; $4411: $36 $17
	pop de                                           ; $4413: $d1
	xor h                                            ; $4414: $ac
	ld [$4437], a                                    ; $4415: $ea $37 $44
	dec sp                                           ; $4418: $3b

jr_08e_4419:
	dec a                                            ; $4419: $3d
	ld h, e                                          ; $441a: $63
	and b                                            ; $441b: $a0
	ld b, b                                          ; $441c: $40
	add hl, sp                                       ; $441d: $39
	xor c                                            ; $441e: $a9
	ld a, [hl]                                       ; $441f: $7e
	jr c, jr_08e_4410                                ; $4420: $38 $ee

	dec hl                                           ; $4422: $2b
	ld b, h                                          ; $4423: $44
	dec sp                                           ; $4424: $3b
	dec a                                            ; $4425: $3d
	ld h, e                                          ; $4426: $63
	and b                                            ; $4427: $a0
	db $ed                                           ; $4428: $ed
	jr c, jr_08e_4480                                ; $4429: $38 $55

jr_08e_442b:
	ld a, [hl-]                                      ; $442b: $3a
	jr c, @+$65                                      ; $442c: $38 $63

	dec [hl]                                         ; $442e: $35
	rla                                              ; $442f: $17
	di                                               ; $4430: $f3
	dec de                                           ; $4431: $1b
	ld hl, sp-$3b                                    ; $4432: $f8 $c5
	ld d, c                                          ; $4434: $51
	ldh a, [$cb]                                     ; $4435: $f0 $cb
	ccf                                              ; $4437: $3f
	inc [hl]                                         ; $4438: $34
	push af                                          ; $4439: $f5
	ld b, [hl]                                       ; $443a: $46
	ld e, h                                          ; $443b: $5c
	ld a, a                                          ; $443c: $7f
	ld d, e                                          ; $443d: $53
	ld d, c                                          ; $443e: $51
	ld c, [hl]                                       ; $443f: $4e
	ld h, e                                          ; $4440: $63
	and b                                            ; $4441: $a0
	ld d, d                                          ; $4442: $52
	dec sp                                           ; $4443: $3b
	dec a                                            ; $4444: $3d
	ld d, l                                          ; $4445: $55
	ld a, [hl]                                       ; $4446: $7e
	ld d, l                                          ; $4447: $55
	ld a, [hl-]                                      ; $4448: $3a
	jr c, jr_08e_44ae                                ; $4449: $38 $63

	dec [hl]                                         ; $444b: $35
	rla                                              ; $444c: $17
	ld c, a                                          ; $444d: $4f
	dec sp                                           ; $444e: $3b
	ld c, c                                          ; $444f: $49
	inc [hl]                                         ; $4450: $34
	pop af                                           ; $4451: $f1
	inc h                                            ; $4452: $24
	ldh a, [$75]                                     ; $4453: $f0 $75
	ldh a, [rAUD1ENV]                                ; $4455: $f0 $12
	jr c, @+$15                                      ; $4457: $38 $13

	ldh a, [$99]                                     ; $4459: $f0 $99
	sub b                                            ; $445b: $90
	ld d, e                                          ; $445c: $53
	jr c, jr_08e_4497                                ; $445d: $38 $38

	ld h, e                                          ; $445f: $63
	ld c, h                                          ; $4460: $4c
	and b                                            ; $4461: $a0
	ld d, h                                          ; $4462: $54
	ld b, c                                          ; $4463: $41
	ld a, [hl-]                                      ; $4464: $3a
	di                                               ; $4465: $f3
	dec de                                           ; $4466: $1b
	pop af                                           ; $4467: $f1
	ld [hl], d                                       ; $4468: $72
	ld a, [hl-]                                      ; $4469: $3a
	db $ed                                           ; $446a: $ed
	jr jr_08e_4419                                   ; $446b: $18 $ac

	db $f4                                           ; $446d: $f4
	or c                                             ; $446e: $b1
	ld d, e                                          ; $446f: $53
	rst FarCall                                          ; $4470: $f7
	ld sp, $ec57                                     ; $4471: $31 $57 $ec
	db $f4                                           ; $4474: $f4
	xor b                                            ; $4475: $a8
	ld b, [hl]                                       ; $4476: $46
	ld a, [hl-]                                      ; $4477: $3a
	dec a                                            ; $4478: $3d
	ld b, a                                          ; $4479: $47
	ld c, e                                          ; $447a: $4b
	ld h, h                                          ; $447b: $64
	ldh a, [rPCM12]                                  ; $447c: $f0 $76
	ldh a, [rTMA]                                    ; $447e: $f0 $06

jr_08e_4480:
	jr c, jr_08e_44ce                                ; $4480: $38 $4c

	and b                                            ; $4482: $a0
	call c, $1735                                    ; $4483: $dc $35 $17
	db $eb                                           ; $4486: $eb
	ld d, l                                          ; $4487: $55
	inc de                                           ; $4488: $13
	ldh a, [$99]                                     ; $4489: $f0 $99
	sub b                                            ; $448b: $90
	ld b, h                                          ; $448c: $44
	dec sp                                           ; $448d: $3b
	ldh [$a0], a                                     ; $448e: $e0 $a0
	call c, $1735                                    ; $4490: $dc $35 $17
	ld c, a                                          ; $4493: $4f
	dec sp                                           ; $4494: $3b
	ld c, c                                          ; $4495: $49
	inc [hl]                                         ; $4496: $34

jr_08e_4497:
	pop af                                           ; $4497: $f1
	inc h                                            ; $4498: $24
	ldh a, [$75]                                     ; $4499: $f0 $75
	ldh a, [rAUD1ENV]                                ; $449b: $f0 $12
	jr c, @-$0e                                      ; $449d: $38 $f0

	sbc c                                            ; $449f: $99
	sub b                                            ; $44a0: $90
	ld d, e                                          ; $44a1: $53
	inc de                                           ; $44a2: $13
	pop af                                           ; $44a3: $f1
	ld h, [hl]                                       ; $44a4: $66
	ld e, h                                          ; $44a5: $5c
	dec a                                            ; $44a6: $3d
	inc a                                            ; $44a7: $3c
	dec sp                                           ; $44a8: $3b
	ldh [$a0], a                                     ; $44a9: $e0 $a0
	ldh a, [c]                                       ; $44ab: $f2
	ld a, [bc]                                       ; $44ac: $0a
	ld d, e                                          ; $44ad: $53

jr_08e_44ae:
	ld a, [hl-]                                      ; $44ae: $3a
	jr c, jr_08e_44c4                                ; $44af: $38 $13

	ldh a, [$99]                                     ; $44b1: $f0 $99
	sub b                                            ; $44b3: $90
	ld b, h                                          ; $44b4: $44
	dec sp                                           ; $44b5: $3b
	ldh [$a0], a                                     ; $44b6: $e0 $a0
	db $ed                                           ; $44b8: $ed
	ld e, [hl]                                       ; $44b9: $5e
	inc [hl]                                         ; $44ba: $34
	ld a, [hl]                                       ; $44bb: $7e
	ld d, l                                          ; $44bc: $55
	ld a, [hl-]                                      ; $44bd: $3a
	inc a                                            ; $44be: $3c
	dec sp                                           ; $44bf: $3b
	dec a                                            ; $44c0: $3d
	ld h, e                                          ; $44c1: $63
	xor b                                            ; $44c2: $a8
	ret                                              ; $44c3: $c9


jr_08e_44c4:
	di                                               ; $44c4: $f3
	dec de                                           ; $44c5: $1b
	pop af                                           ; $44c6: $f1
	ld [hl], d                                       ; $44c7: $72
	ld d, c                                          ; $44c8: $51
	ldh a, [$cb]                                     ; $44c9: $f0 $cb
	ld c, [hl]                                       ; $44cb: $4e
	ld h, e                                          ; $44cc: $63
	ld c, h                                          ; $44cd: $4c

jr_08e_44ce:
	and b                                            ; $44ce: $a0
	ld h, c                                          ; $44cf: $61
	dec sp                                           ; $44d0: $3b
	ld c, c                                          ; $44d1: $49
	ld c, a                                          ; $44d2: $4f
	inc [hl]                                         ; $44d3: $34
	ld a, [hl]                                       ; $44d4: $7e
	ld d, l                                          ; $44d5: $55
	ld a, [hl-]                                      ; $44d6: $3a
	jr c, jr_08e_453c                                ; $44d7: $38 $63

	dec [hl]                                         ; $44d9: $35
	rla                                              ; $44da: $17
	ldh a, [c]                                       ; $44db: $f2
	ld a, [bc]                                       ; $44dc: $0a
	db $fc                                           ; $44dd: $fc
	ld sp, $f053                                     ; $44de: $31 $53 $f0
	ld a, b                                          ; $44e1: $78
	ld e, e                                          ; $44e2: $5b
	ld d, b                                          ; $44e3: $50
	ld c, l                                          ; $44e4: $4d
	inc de                                           ; $44e5: $13
	ld a, [hl-]                                      ; $44e6: $3a
	inc a                                            ; $44e7: $3c
	dec sp                                           ; $44e8: $3b
	dec a                                            ; $44e9: $3d
	ld h, e                                          ; $44ea: $63
	ld b, l                                          ; $44eb: $45
	and b                                            ; $44ec: $a0
	db $ed                                           ; $44ed: $ed
	jr c, jr_08e_4545                                ; $44ee: $38 $55

	ld a, [hl-]                                      ; $44f0: $3a
	inc a                                            ; $44f1: $3c
	dec sp                                           ; $44f2: $3b
	dec a                                            ; $44f3: $3d
	ld h, e                                          ; $44f4: $63
	xor b                                            ; $44f5: $a8
	ldh a, [c]                                       ; $44f6: $f2
	ld a, [bc]                                       ; $44f7: $0a
	ld d, e                                          ; $44f8: $53
	ld a, [hl-]                                      ; $44f9: $3a
	ld e, b                                          ; $44fa: $58
	ld d, c                                          ; $44fb: $51
	ldh a, [$cb]                                     ; $44fc: $f0 $cb
	ld c, h                                          ; $44fe: $4c
	and b                                            ; $44ff: $a0
	ld b, b                                          ; $4500: $40
	ld c, l                                          ; $4501: $4d
	ld e, e                                          ; $4502: $5b
	ld d, [hl]                                       ; $4503: $56
	inc [hl]                                         ; $4504: $34
	sub [hl]                                         ; $4505: $96
	ld c, [hl]                                       ; $4506: $4e
	ld h, e                                          ; $4507: $63
	ld b, l                                          ; $4508: $45
	and b                                            ; $4509: $a0
	ld h, h                                          ; $450a: $64
	sbc c                                            ; $450b: $99
	dec a                                            ; $450c: $3d
	ld a, c                                          ; $450d: $79
	and b                                            ; $450e: $a0
	cpl                                              ; $450f: $2f

jr_08e_4510:
	add sp, -$1e                                     ; $4510: $e8 $e2
	add hl, bc                                       ; $4512: $09
	ld b, b                                          ; $4513: $40
	ld c, b                                          ; $4514: $48
	ld b, b                                          ; $4515: $40
	add hl, sp                                       ; $4516: $39
	xor c                                            ; $4517: $a9
	ld b, [hl]                                       ; $4518: $46
	ld d, a                                          ; $4519: $57
	ld d, e                                          ; $451a: $53
	ld c, c                                          ; $451b: $49
	add hl, sp                                       ; $451c: $39
	and b                                            ; $451d: $a0
	cpl                                              ; $451e: $2f
	jp hl                                            ; $451f: $e9


	dec sp                                           ; $4520: $3b
	add hl, bc                                       ; $4521: $09
	ld b, b                                          ; $4522: $40
	add hl, sp                                       ; $4523: $39
	xor c                                            ; $4524: $a9
	call nc, $a063                                   ; $4525: $d4 $63 $a0
	cpl                                              ; $4528: $2f
	jp hl                                            ; $4529: $e9


	cp d                                             ; $452a: $ba
	add hl, bc                                       ; $452b: $09
	ld b, b                                          ; $452c: $40
	add hl, sp                                       ; $452d: $39
	xor c                                            ; $452e: $a9
	ld b, b                                          ; $452f: $40
	add hl, sp                                       ; $4530: $39
	ld [hl], d                                       ; $4531: $72
	ld e, [hl]                                       ; $4532: $5e
	ld c, [hl]                                       ; $4533: $4e
	ld b, d                                          ; $4534: $42
	ld c, h                                          ; $4535: $4c
	and b                                            ; $4536: $a0
	ld l, a                                          ; $4537: $6f
	ld c, e                                          ; $4538: $4b
	ldh a, [hDisp1_SCY]                                     ; $4539: $f0 $90
	ld d, e                                          ; $453b: $53

jr_08e_453c:
	ld a, [hl-]                                      ; $453c: $3a
	jr c, @+$65                                      ; $453d: $38 $63

	ld b, l                                          ; $453f: $45
	and b                                            ; $4540: $a0
	cpl                                              ; $4541: $2f
	ldh a, [$34]                                     ; $4542: $f0 $34
	ld b, a                                          ; $4544: $47

jr_08e_4545:
	inc [hl]                                         ; $4545: $34
	inc a                                            ; $4546: $3c
	ld d, d                                          ; $4547: $52
	ld h, e                                          ; $4548: $63
	ld a, [hl-]                                      ; $4549: $3a
	jr c, @+$47                                      ; $454a: $38 $45

	add hl, bc                                       ; $454c: $09
	ld b, b                                          ; $454d: $40
	ld c, l                                          ; $454e: $4d
	ld a, [hl-]                                      ; $454f: $3a
	ld d, b                                          ; $4550: $50
	jr c, jr_08e_458b                                ; $4551: $38 $38

	ld b, d                                          ; $4553: $42
	ld b, l                                          ; $4554: $45
	and b                                            ; $4555: $a0
	cpl                                              ; $4556: $2f
	jr c, @+$3a                                      ; $4557: $38 $38

	inc a                                            ; $4559: $3c
	ld d, b                                          ; $455a: $50
	ldh a, [hDisp1_SCY]                                     ; $455b: $f0 $90
	ld [hl], b                                       ; $455d: $70
	add hl, sp                                       ; $455e: $39
	ld b, l                                          ; $455f: $45
	add hl, bc                                       ; $4560: $09
	jr c, jr_08e_45d1                                ; $4561: $38 $6e

Call_08e_4563:
	ld b, l                                          ; $4563: $45
	xor b                                            ; $4564: $a8
	xor $08                                          ; $4565: $ee $08
	ld c, d                                          ; $4567: $4a
	ldh a, [hDisp1_SCY]                                     ; $4568: $f0 $90
	ldh a, [$cb]                                     ; $456a: $f0 $cb
	ld a, [hl-]                                      ; $456c: $3a
	ld e, b                                          ; $456d: $58
	jr c, jr_08e_4510                                ; $456e: $38 $a0

	cpl                                              ; $4570: $2f
	ret                                              ; $4571: $c9


	ldh a, [hDisp1_SCY]                                     ; $4572: $f0 $90
	jr c, jr_08e_45c0                                ; $4574: $38 $4a

	ld d, l                                          ; $4576: $55
	ld c, [hl]                                       ; $4577: $4e
	ld b, l                                          ; $4578: $45
	add hl, bc                                       ; $4579: $09
	ldh a, [$6f]                                     ; $457a: $f0 $6f
	ldh a, [$0b]                                     ; $457c: $f0 $0b
	ld b, a                                          ; $457e: $47
	ld e, d                                          ; $457f: $5a
	add hl, sp                                       ; $4580: $39
	sub a                                            ; $4581: $97
	and b                                            ; $4582: $a0
	ld b, b                                          ; $4583: $40
	ld c, l                                          ; $4584: $4d
	ld e, e                                          ; $4585: $5b
	ld d, [hl]                                       ; $4586: $56
	xor h                                            ; $4587: $ac
	ld [$63d3], a                                    ; $4588: $ea $d3 $63

jr_08e_458b:
	and b                                            ; $458b: $a0
	ret                                              ; $458c: $c9


	xor h                                            ; $458d: $ac
	ldh a, [$75]                                     ; $458e: $f0 $75
	ldh a, [$8c]                                     ; $4590: $f0 $8c
	dec a                                            ; $4592: $3d
	jr c, jr_08e_45e9                                ; $4593: $38 $54

	ld c, c                                          ; $4595: $49
	ld d, e                                          ; $4596: $53
	ld b, [hl]                                       ; $4597: $46
	ld c, [hl]                                       ; $4598: $4e
	ld b, d                                          ; $4599: $42
	ld b, l                                          ; $459a: $45
	and b                                            ; $459b: $a0
	cpl                                              ; $459c: $2f
	ld l, e                                          ; $459d: $6b
	ld h, d                                          ; $459e: $62
	ldh a, [$75]                                     ; $459f: $f0 $75
	ldh a, [$8c]                                     ; $45a1: $f0 $8c
	ld c, [hl]                                       ; $45a3: $4e
	ld b, d                                          ; $45a4: $42
	and c                                            ; $45a5: $a1
	pop af                                           ; $45a6: $f1
	ld l, [hl]                                       ; $45a7: $6e

Call_08e_45a8:
	ldh a, [$cf]                                     ; $45a8: $f0 $cf
	ld b, [hl]                                       ; $45aa: $46
	ld c, [hl]                                       ; $45ab: $4e
	ld b, d                                          ; $45ac: $42
	ld b, l                                          ; $45ad: $45
	and b                                            ; $45ae: $a0
	cpl                                              ; $45af: $2f
	ld b, b                                          ; $45b0: $40
	ld b, c                                          ; $45b1: $41
	ld a, [hl-]                                      ; $45b2: $3a
	ld b, d                                          ; $45b3: $42
	ldh a, [$d7]                                     ; $45b4: $f0 $d7
	ld b, a                                          ; $45b6: $47
	ld a, $45                                        ; $45b7: $3e $45
	add hl, sp                                       ; $45b9: $39
	ld b, l                                          ; $45ba: $45
	add hl, bc                                       ; $45bb: $09
	pop af                                           ; $45bc: $f1
	ld l, a                                          ; $45bd: $6f
	ld b, d                                          ; $45be: $42
	sbc d                                            ; $45bf: $9a

jr_08e_45c0:
	ld b, d                                          ; $45c0: $42
	ldh a, [$38]                                     ; $45c1: $f0 $38
	ld d, e                                          ; $45c3: $53
	inc [hl]                                         ; $45c4: $34
	ldh a, [$d7]                                     ; $45c5: $f0 $d7
	ld b, l                                          ; $45c7: $45
	and b                                            ; $45c8: $a0
	cpl                                              ; $45c9: $2f
	db $eb                                           ; $45ca: $eb
	ld hl, sp-$5f                                    ; $45cb: $f8 $a1
	call c, Call_08e_4aa8                            ; $45cd: $dc $a8 $4a
	ld c, a                                          ; $45d0: $4f

jr_08e_45d1:
	inc [hl]                                         ; $45d1: $34
	jr c, jr_08e_460c                                ; $45d2: $38 $38

	ld h, e                                          ; $45d4: $63
	and b                                            ; $45d5: $a0
	pop af                                           ; $45d6: $f1
	ret                                              ; $45d7: $c9


	ld d, l                                          ; $45d8: $55
	ccf                                              ; $45d9: $3f
	xor h                                            ; $45da: $ac
	pop af                                           ; $45db: $f1
	sub $53                                          ; $45dc: $d6 $53
	pop af                                           ; $45de: $f1
	halt                                             ; $45df: $76
	ld e, l                                          ; $45e0: $5d
	call c, $2fa0                                    ; $45e1: $dc $a0 $2f
	db $ec                                           ; $45e4: $ec
	ld d, c                                          ; $45e5: $51
	ld c, d                                          ; $45e6: $4a
	ld c, a                                          ; $45e7: $4f
	pop af                                           ; $45e8: $f1

jr_08e_45e9:
	ld c, $3b                                        ; $45e9: $0e $3b
	ccf                                              ; $45eb: $3f
	ld d, l                                          ; $45ec: $55
	ld c, [hl]                                       ; $45ed: $4e
	ld b, l                                          ; $45ee: $45
	add hl, bc                                       ; $45ef: $09
	ld b, b                                          ; $45f0: $40
	add hl, sp                                       ; $45f1: $39
	xor c                                            ; $45f2: $a9
	ld h, h                                          ; $45f3: $64
	ldh a, [$c8]                                     ; $45f4: $f0 $c8
	jr c, jr_08e_4649                                ; $45f6: $38 $51

	ld c, [hl]                                       ; $45f8: $4e
	ld h, e                                          ; $45f9: $63
	and b                                            ; $45fa: $a0
	cpl                                              ; $45fb: $2f
	pop af                                           ; $45fc: $f1
	jp nc, $3c44                                     ; $45fd: $d2 $44 $3c

	ld d, b                                          ; $4600: $50
	ld c, h                                          ; $4601: $4c
	add hl, bc                                       ; $4602: $09
	ld b, b                                          ; $4603: $40
	ld b, c                                          ; $4604: $41
	ld a, [hl-]                                      ; $4605: $3a
	sbc d                                            ; $4606: $9a
	xor h                                            ; $4607: $ac
	sub c                                            ; $4608: $91
	dec a                                            ; $4609: $3d
	ld d, a                                          ; $460a: $57
	sbc [hl]                                         ; $460b: $9e

jr_08e_460c:
	ld c, d                                          ; $460c: $4a
	ld a, $66                                        ; $460d: $3e $66
	add hl, sp                                       ; $460f: $39
	and b                                            ; $4610: $a0
	cpl                                              ; $4611: $2f
	pop af                                           ; $4612: $f1
	cpl                                              ; $4613: $2f
	ld b, a                                          ; $4614: $47
	ld c, d                                          ; $4615: $4a
	ld c, a                                          ; $4616: $4f
	sub [hl]                                         ; $4617: $96
	ld c, l                                          ; $4618: $4d
	ld a, e                                          ; $4619: $7b
	and c                                            ; $461a: $a1
	ld b, b                                          ; $461b: $40
	ld b, c                                          ; $461c: $41
	ld a, [hl-]                                      ; $461d: $3a
	sbc d                                            ; $461e: $9a
	ld c, e                                          ; $461f: $4b
	xor h                                            ; $4620: $ac
	ld a, $3d                                        ; $4621: $3e $3d
	ld d, l                                          ; $4623: $55
	ld a, [hl-]                                      ; $4624: $3a
	jr c, jr_08e_468a                                ; $4625: $38 $63

	and b                                            ; $4627: $a0
	db $ec                                           ; $4628: $ec
	ld a, [de]                                       ; $4629: $1a
	inc [hl]                                         ; $462a: $34
	jr c, jr_08e_4665                                ; $462b: $38 $38

	ld h, e                                          ; $462d: $63
	ld c, h                                          ; $462e: $4c
	and b                                            ; $462f: $a0
	cpl                                              ; $4630: $2f
	ld b, e                                          ; $4631: $43
	or h                                             ; $4632: $b4
	xor h                                            ; $4633: $ac
	ld [$344f], a                                    ; $4634: $ea $4f $34
	db $ec                                           ; $4637: $ec
	inc c                                            ; $4638: $0c
	and c                                            ; $4639: $a1
	call c, $f0a8                                    ; $463a: $dc $a8 $f0
	ld l, a                                          ; $463d: $6f
	ldh a, [$0b]                                     ; $463e: $f0 $0b
	ld b, a                                          ; $4640: $47
	ld e, d                                          ; $4641: $5a
	add hl, sp                                       ; $4642: $39
	sub a                                            ; $4643: $97
	and b                                            ; $4644: $a0
	cpl                                              ; $4645: $2f
	ld b, e                                          ; $4646: $43
	xor $2d                                          ; $4647: $ee $2d

jr_08e_4649:
	xor h                                            ; $4649: $ac
	db $ec                                           ; $464a: $ec
	ldh [rBGP], a                                    ; $464b: $e0 $47
	rst SubAFromDE                                          ; $464d: $df
	ld b, l                                          ; $464e: $45
	and b                                            ; $464f: $a0
	ld b, b                                          ; $4650: $40
	add hl, sp                                       ; $4651: $39
	xor b                                            ; $4652: $a8

Call_08e_4653:
	ld b, [hl]                                       ; $4653: $46
	ld d, a                                          ; $4654: $57
	ld d, e                                          ; $4655: $53
	ld c, c                                          ; $4656: $49
	add hl, sp                                       ; $4657: $39
	and b                                            ; $4658: $a0
	ld b, [hl]                                       ; $4659: $46
	ld d, a                                          ; $465a: $57
	ld d, e                                          ; $465b: $53
	ld c, c                                          ; $465c: $49
	add hl, sp                                       ; $465d: $39
	xor b                                            ; $465e: $a8
	ld c, d                                          ; $465f: $4a
	ld c, a                                          ; $4660: $4f
	inc [hl]                                         ; $4661: $34
	xor $2a                                          ; $4662: $ee $2a
	ld b, a                                          ; $4664: $47

jr_08e_4665:
	pop af                                           ; $4665: $f1
	sbc l                                            ; $4666: $9d
	add hl, sp                                       ; $4667: $39
	ld b, a                                          ; $4668: $47
	ld c, e                                          ; $4669: $4b
	inc de                                           ; $466a: $13
	pop af                                           ; $466b: $f1
	add hl, de                                       ; $466c: $19
	ld e, b                                          ; $466d: $58
	ld d, c                                          ; $466e: $51
	ldh a, [$cb]                                     ; $466f: $f0 $cb
	ld c, [hl]                                       ; $4671: $4e
	ld h, e                                          ; $4672: $63
	ld c, h                                          ; $4673: $4c
	and b                                            ; $4674: $a0
	cpl                                              ; $4675: $2f
	ld b, e                                          ; $4676: $43
	or h                                             ; $4677: $b4
	xor h                                            ; $4678: $ac
	ldh a, [c]                                       ; $4679: $f2
	inc [hl]                                         ; $467a: $34
	ldh a, [c]                                       ; $467b: $f2
	ld h, d                                          ; $467c: $62
	ldh a, [rSB]                                     ; $467d: $f0 $01
	ld c, d                                          ; $467f: $4a
	ld c, a                                          ; $4680: $4f
	db $ec                                           ; $4681: $ec
	inc c                                            ; $4682: $0c
	and c                                            ; $4683: $a1
	ld e, d                                          ; $4684: $5a
	add hl, sp                                       ; $4685: $39
	ld a, c                                          ; $4686: $79
	xor h                                            ; $4687: $ac
	db $eb                                           ; $4688: $eb
	ld d, e                                          ; $4689: $53

jr_08e_468a:
	ld c, a                                          ; $468a: $4f
	ld b, d                                          ; $468b: $42
	ld a, $3c                                        ; $468c: $3e $3c
	inc de                                           ; $468e: $13
	pop af                                           ; $468f: $f1
	inc b                                            ; $4690: $04
	ld c, l                                          ; $4691: $4d
	ld a, [hl-]                                      ; $4692: $3a
	jr c, jr_08e_46f8                                ; $4693: $38 $63

	and b                                            ; $4695: $a0
	cpl                                              ; $4696: $2f
	ld b, e                                          ; $4697: $43
	pop af                                           ; $4698: $f1
	inc b                                            ; $4699: $04
	ld c, l                                          ; $469a: $4d
	dec a                                            ; $469b: $3d
	ld d, b                                          ; $469c: $50
	xor h                                            ; $469d: $ac
	db $ec                                           ; $469e: $ec
	ldh [rBGP], a                                    ; $469f: $e0 $47
	rst SubAFromDE                                          ; $46a1: $df
	ld c, h                                          ; $46a2: $4c
	and b                                            ; $46a3: $a0
	cpl                                              ; $46a4: $2f
	ld b, e                                          ; $46a5: $43
	xor $2d                                          ; $46a6: $ee $2d
	inc [hl]                                         ; $46a8: $34
	db $ec                                           ; $46a9: $ec
	ldh [$a0], a                                     ; $46aa: $e0 $a0
	ld c, c                                          ; $46ac: $49
	ld d, a                                          ; $46ad: $57
	ld b, [hl]                                       ; $46ae: $46
	ld e, [hl]                                       ; $46af: $5e
	sbc h                                            ; $46b0: $9c
	xor h                                            ; $46b1: $ac
	ld c, a                                          ; $46b2: $4f
	ld d, b                                          ; $46b3: $50
	dec sp                                           ; $46b4: $3b
	ccf                                              ; $46b5: $3f
	ld h, h                                          ; $46b6: $64
	ld d, l                                          ; $46b7: $55
	ld h, e                                          ; $46b8: $63
	and b                                            ; $46b9: $a0
	cpl                                              ; $46ba: $2f
	ld b, e                                          ; $46bb: $43
	ld [hl], b                                       ; $46bc: $70
	ld [hl], c                                       ; $46bd: $71
	ld b, c                                          ; $46be: $41
	ld c, b                                          ; $46bf: $48
	inc [hl]                                         ; $46c0: $34
	db $ec                                           ; $46c1: $ec
	ldh [$a8], a                                     ; $46c2: $e0 $a8
	ld l, e                                          ; $46c4: $6b
	ld c, a                                          ; $46c5: $4f
	pop af                                           ; $46c6: $f1
	inc b                                            ; $46c7: $04
	ld c, l                                          ; $46c8: $4d
	ld a, [hl-]                                      ; $46c9: $3a
	inc a                                            ; $46ca: $3c
	dec sp                                           ; $46cb: $3b
	dec a                                            ; $46cc: $3d
	ld b, l                                          ; $46cd: $45
	and b                                            ; $46ce: $a0
	ldh a, [rSCY]                                    ; $46cf: $f0 $42
	ldh a, [rSCY]                                    ; $46d1: $f0 $42
	ldh a, [rSCY]                                    ; $46d3: $f0 $42
	inc [hl]                                         ; $46d5: $34
	pop de                                           ; $46d6: $d1
	ld b, d                                          ; $46d7: $42
	inc de                                           ; $46d8: $13
	ldh a, [$2a]                                     ; $46d9: $f0 $2a
	pop af                                           ; $46db: $f1
	or h                                             ; $46dc: $b4
	ld e, l                                          ; $46dd: $5d
	ldh a, [$fe]                                     ; $46de: $f0 $fe
	ld d, a                                          ; $46e0: $57
	ld b, h                                          ; $46e1: $44
	dec sp                                           ; $46e2: $3b
	dec a                                            ; $46e3: $3d
	ld h, e                                          ; $46e4: $63
	ld b, l                                          ; $46e5: $45
	and b                                            ; $46e6: $a0
	cpl                                              ; $46e7: $2f
	ld b, e                                          ; $46e8: $43
	ld l, d                                          ; $46e9: $6a
	ldh a, [rAUD1HIGH]                               ; $46ea: $f0 $14
	ld c, e                                          ; $46ec: $4b
	xor h                                            ; $46ed: $ac
	jp hl                                            ; $46ee: $e9


	dec [hl]                                         ; $46ef: $35
	xor b                                            ; $46f0: $a8
	ld [$a038], a                                    ; $46f1: $ea $38 $a0
	call c, $d0a8                                    ; $46f4: $dc $a8 $d0
	and b                                            ; $46f7: $a0

jr_08e_46f8:
	pop de                                           ; $46f8: $d1
	xor h                                            ; $46f9: $ac
	db $ed                                           ; $46fa: $ed
	ld c, c                                          ; $46fb: $49
	ld b, h                                          ; $46fc: $44
	dec sp                                           ; $46fd: $3b
	ldh [$a0], a                                     ; $46fe: $e0 $a0
	cpl                                              ; $4700: $2f
	add sp, $2e                                      ; $4701: $e8 $2e
	add hl, bc                                       ; $4703: $09
	ld b, b                                          ; $4704: $40
	add hl, sp                                       ; $4705: $39
	xor b                                            ; $4706: $a8
	ld b, [hl]                                       ; $4707: $46
	ld a, [hl-]                                      ; $4708: $3a
	dec a                                            ; $4709: $3d
	ld b, a                                          ; $470a: $47
	ld a, $3f                                        ; $470b: $3e $3f
	ld c, e                                          ; $470d: $4b
	xor h                                            ; $470e: $ac
	ld b, l                                          ; $470f: $45
	ld d, l                                          ; $4710: $55
	ldh a, [$2d]                                     ; $4711: $f0 $2d
	dec sp                                           ; $4713: $3b
	ccf                                              ; $4714: $3f
	ld c, [hl]                                       ; $4715: $4e
	ld h, e                                          ; $4716: $63
	ld c, h                                          ; $4717: $4c
	and b                                            ; $4718: $a0
	ld b, b                                          ; $4719: $40
	add hl, sp                                       ; $471a: $39
	dec [hl]                                         ; $471b: $35
	db $ed                                           ; $471c: $ed
	ld [hl], c                                       ; $471d: $71
	ld a, [hl-]                                      ; $471e: $3a
	ld b, c                                          ; $471f: $41
	ccf                                              ; $4720: $3f
	xor h                                            ; $4721: $ac
	ld e, d                                          ; $4722: $5a
	add hl, sp                                       ; $4723: $39
	ld c, d                                          ; $4724: $4a
	ld c, a                                          ; $4725: $4f
	db $ec                                           ; $4726: $ec
	ld [$40a0], sp                                   ; $4727: $08 $a0 $40
	add hl, sp                                       ; $472a: $39
	xor b                                            ; $472b: $a8
	ld b, b                                          ; $472c: $40
	ld c, l                                          ; $472d: $4d
	ld c, e                                          ; $472e: $4b
	db $ec                                           ; $472f: $ec
	cp c                                             ; $4730: $b9
	ld h, e                                          ; $4731: $63
	ld c, h                                          ; $4732: $4c
	and b                                            ; $4733: $a0
	cpl                                              ; $4734: $2f
	add sp, -$25                                     ; $4735: $e8 $db
	add hl, bc                                       ; $4737: $09
	db $ec                                           ; $4738: $ec
	ld d, d                                          ; $4739: $52
	ld a, [hl-]                                      ; $473a: $3a
	ld b, c                                          ; $473b: $41
	ccf                                              ; $473c: $3f
	xor h                                            ; $473d: $ac
	db $eb                                           ; $473e: $eb
	ld d, e                                          ; $473f: $53
	ld h, e                                          ; $4740: $63
	and b                                            ; $4741: $a0
	db $ec                                           ; $4742: $ec
	ld d, d                                          ; $4743: $52
	ld b, d                                          ; $4744: $42
	inc de                                           ; $4745: $13
	ld e, d                                          ; $4746: $5a
	ld d, h                                          ; $4747: $54
	ld d, e                                          ; $4748: $53
	jr c, @+$3a                                      ; $4749: $38 $38

	ld b, d                                          ; $474b: $42
	inc a                                            ; $474c: $3c
	xor h                                            ; $474d: $ac
	ldh a, [$63]                                     ; $474e: $f0 $63
	pop af                                           ; $4750: $f1
	dec sp                                           ; $4751: $3b
	sub h                                            ; $4752: $94
	ld a, b                                          ; $4753: $78
	ld a, [hl-]                                      ; $4754: $3a
	jr c, jr_08e_47ba                                ; $4755: $38 $63

	and b                                            ; $4757: $a0
	ld b, b                                          ; $4758: $40
	ld b, c                                          ; $4759: $41
	ld a, [hl-]                                      ; $475a: $3a
	ld c, a                                          ; $475b: $4f
	ld b, d                                          ; $475c: $42
	xor h                                            ; $475d: $ac
	di                                               ; $475e: $f3
	rla                                              ; $475f: $17
	ei                                               ; $4760: $fb
	and a                                            ; $4761: $a7
	ld b, a                                          ; $4762: $47
	ld a, [hl-]                                      ; $4763: $3a
	ld c, [hl]                                       ; $4764: $4e
	ld h, e                                          ; $4765: $63
	ld e, l                                          ; $4766: $5d
	ld d, e                                          ; $4767: $53
	ld a, [hl-]                                      ; $4768: $3a
	jr c, jr_08e_47ce                                ; $4769: $38 $63

	and b                                            ; $476b: $a0
	cpl                                              ; $476c: $2f
	jp hl                                            ; $476d: $e9


	or a                                             ; $476e: $b7
	add hl, bc                                       ; $476f: $09
	ld l, a                                          ; $4770: $6f
	ld b, d                                          ; $4771: $42
	dec a                                            ; $4772: $3d
	ld [hl], c                                       ; $4773: $71
	ld b, h                                          ; $4774: $44
	ld e, l                                          ; $4775: $5d
	ld b, a                                          ; $4776: $47
	inc de                                           ; $4777: $13
	ld d, h                                          ; $4778: $54
	ld b, d                                          ; $4779: $42
	db $ed                                           ; $477a: $ed
	adc l                                            ; $477b: $8d
	ld h, d                                          ; $477c: $62
	di                                               ; $477d: $f3
	ld l, d                                          ; $477e: $6a
	ld h, c                                          ; $477f: $61
	ldh a, [$3e]                                     ; $4780: $f0 $3e
	ldh a, [rSB]                                     ; $4782: $f0 $01
	ld c, [hl]                                       ; $4784: $4e
	ld l, b                                          ; $4785: $68
	ld d, e                                          ; $4786: $53
	xor h                                            ; $4787: $ac
	ld c, a                                          ; $4788: $4f
	add hl, sp                                       ; $4789: $39
	ld d, c                                          ; $478a: $51
	sbc l                                            ; $478b: $9d
	ld a, b                                          ; $478c: $78
	ld c, [hl]                                       ; $478d: $4e
	ld h, e                                          ; $478e: $63
	and b                                            ; $478f: $a0
	ld l, a                                          ; $4790: $6f
	ld b, d                                          ; $4791: $42
	di                                               ; $4792: $f3
	ld b, e                                          ; $4793: $43
	ld b, h                                          ; $4794: $44
	ld e, l                                          ; $4795: $5d
	ld b, d                                          ; $4796: $42
	inc de                                           ; $4797: $13
	db $ed                                           ; $4798: $ed
	adc l                                            ; $4799: $8d
	ld b, a                                          ; $479a: $47
	ld a, $3f                                        ; $479b: $3e $3f
	ld [hl], d                                       ; $479d: $72
	ld a, c                                          ; $479e: $79
	ld c, [hl]                                       ; $479f: $4e
	ld h, e                                          ; $47a0: $63
	and b                                            ; $47a1: $a0
	ld l, d                                          ; $47a2: $6a
	ld b, d                                          ; $47a3: $42
	pop af                                           ; $47a4: $f1
	ld [hl], a                                       ; $47a5: $77
	ld d, e                                          ; $47a6: $53
	ld [hl], d                                       ; $47a7: $72
	di                                               ; $47a8: $f3
	ld a, c                                          ; $47a9: $79
	ld [hl], c                                       ; $47aa: $71
	ld b, l                                          ; $47ab: $45
	and b                                            ; $47ac: $a0
	pop af                                           ; $47ad: $f1
	ld e, e                                          ; $47ae: $5b
	ld c, l                                          ; $47af: $4d
	ld a, [hl-]                                      ; $47b0: $3a
	jr c, jr_08e_47f5                                ; $47b1: $38 $42

	ld d, e                                          ; $47b3: $53
	xor h                                            ; $47b4: $ac
	ld e, b                                          ; $47b5: $58
	sub a                                            ; $47b6: $97
	inc a                                            ; $47b7: $3c
	ld a, $13                                        ; $47b8: $3e $13

jr_08e_47ba:
	ld h, h                                          ; $47ba: $64
	inc a                                            ; $47bb: $3c
	ld a, $38                                        ; $47bc: $3e $38
	ld c, d                                          ; $47be: $4a
	ld a, $66                                        ; $47bf: $3e $66
	add hl, sp                                       ; $47c1: $39
	ld c, h                                          ; $47c2: $4c
	and b                                            ; $47c3: $a0
	cpl                                              ; $47c4: $2f
	ld b, b                                          ; $47c5: $40
	ld b, c                                          ; $47c6: $41
	ld a, [hl-]                                      ; $47c7: $3a
	ld d, h                                          ; $47c8: $54
	ld c, c                                          ; $47c9: $49
	pop af                                           ; $47ca: $f1
	adc d                                            ; $47cb: $8a
	ld c, [hl]                                       ; $47cc: $4e
	pop af                                           ; $47cd: $f1

jr_08e_47ce:
	dec bc                                           ; $47ce: $0b
	ldh a, [rAUD1LOW]                                ; $47cf: $f0 $13
	jr c, jr_08e_4818                                ; $47d1: $38 $45

	add hl, bc                                       ; $47d3: $09
	rst JumpTable                                          ; $47d4: $c7
	xor b                                            ; $47d5: $a8
	ld b, b                                          ; $47d6: $40
	ld c, l                                          ; $47d7: $4d
	ld a, [hl-]                                      ; $47d8: $3a
	ld d, b                                          ; $47d9: $50
	jr c, jr_08e_4814                                ; $47da: $38 $38

	ld h, e                                          ; $47dc: $63
	and b                                            ; $47dd: $a0
	cpl                                              ; $47de: $2f
	xor $1f                                          ; $47df: $ee $1f

jr_08e_47e1:
	inc [hl]                                         ; $47e1: $34
	ld h, h                                          ; $47e2: $64
	inc a                                            ; $47e3: $3c
	ld a, $38                                        ; $47e4: $3e $38
	add hl, bc                                       ; $47e6: $09
	ldh a, [$f4]                                     ; $47e7: $f0 $f4
	di                                               ; $47e9: $f3
	ld c, l                                          ; $47ea: $4d
	ld a, $3f                                        ; $47eb: $3e $3f
	ld h, h                                          ; $47ed: $64
	ld e, h                                          ; $47ee: $5c
	ld a, [hl-]                                      ; $47ef: $3a
	ld e, b                                          ; $47f0: $58
	jr c, jr_08e_483b                                ; $47f1: $38 $48

	and b                                            ; $47f3: $a0
	cpl                                              ; $47f4: $2f

jr_08e_47f5:
	db $ed                                           ; $47f5: $ed
	ld l, b                                          ; $47f6: $68
	db $ec                                           ; $47f7: $ec
	ld [hl+], a                                      ; $47f8: $22
	add hl, bc                                       ; $47f9: $09
	db $ec                                           ; $47fa: $ec
	db $f4                                           ; $47fb: $f4
	and b                                            ; $47fc: $a0
	db $ed                                           ; $47fd: $ed
	ld h, c                                          ; $47fe: $61
	ld c, a                                          ; $47ff: $4f
	ldh a, [$a7]                                     ; $4800: $f0 $a7
	ld c, l                                          ; $4802: $4d
	ccf                                              ; $4803: $3f
	ld a, b                                          ; $4804: $78
	ccf                                              ; $4805: $3f
	xor h                                            ; $4806: $ac
	ld b, b                                          ; $4807: $40
	ld b, c                                          ; $4808: $41
	ld a, [hl-]                                      ; $4809: $3a
	ld b, a                                          ; $480a: $47
	sub b                                            ; $480b: $90
	ld a, $38                                        ; $480c: $3e $38
	and c                                            ; $480e: $a1
	cpl                                              ; $480f: $2f
	ld l, d                                          ; $4810: $6a
	ldh a, [$0d]                                     ; $4811: $f0 $0d
	inc a                                            ; $4813: $3c

jr_08e_4814:
	ld d, b                                          ; $4814: $50
	inc [hl]                                         ; $4815: $34
	ld a, a                                          ; $4816: $7f
	ld h, d                                          ; $4817: $62

jr_08e_4818:
	ldh a, [$9a]                                     ; $4818: $f0 $9a
	ld e, l                                          ; $481a: $5d
	ld c, [hl]                                       ; $481b: $4e
	ld b, l                                          ; $481c: $45
	add hl, bc                                       ; $481d: $09
	ld b, h                                          ; $481e: $44
	dec sp                                           ; $481f: $3b
	dec a                                            ; $4820: $3d
	ld d, b                                          ; $4821: $50
	xor h                                            ; $4822: $ac
	ld l, d                                          ; $4823: $6a
	inc a                                            ; $4824: $3c
	ld d, b                                          ; $4825: $50
	db $ed                                           ; $4826: $ed
	add sp, $3b                                      ; $4827: $e8 $3b
	ccf                                              ; $4829: $3f
	db $ec                                           ; $482a: $ec
	push af                                          ; $482b: $f5
	ld h, e                                          ; $482c: $63
	and b                                            ; $482d: $a0
	cpl                                              ; $482e: $2f
	xor $1f                                          ; $482f: $ee $1f
	inc [hl]                                         ; $4831: $34
	sub b                                            ; $4832: $90
	ld a, $38                                        ; $4833: $3e $38
	add hl, bc                                       ; $4835: $09
	ldh a, [$d7]                                     ; $4836: $f0 $d7
	ld c, d                                          ; $4838: $4a
	ldh a, [$f4]                                     ; $4839: $f0 $f4

jr_08e_483b:
	ld e, [hl]                                       ; $483b: $5e
	ccf                                              ; $483c: $3f
	ld a, [hl-]                                      ; $483d: $3a
	ld e, b                                          ; $483e: $58
	jr c, jr_08e_47e1                                ; $483f: $38 $a0

	cpl                                              ; $4841: $2f
	ldh a, [c]                                       ; $4842: $f2
	and e                                            ; $4843: $a3
	ld d, l                                          ; $4844: $55
	ld a, [hl-]                                      ; $4845: $3a
	dec sp                                           ; $4846: $3b
	ccf                                              ; $4847: $3f
	inc [hl]                                         ; $4848: $34
	db $ec                                           ; $4849: $ec
	push af                                          ; $484a: $f5
	inc a                                            ; $484b: $3c
	ld d, b                                          ; $484c: $50
	add hl, bc                                       ; $484d: $09
	ld l, a                                          ; $484e: $6f
	ld b, a                                          ; $484f: $47
	ld c, e                                          ; $4850: $4b
	inc [hl]                                         ; $4851: $34
	ldh a, [c]                                       ; $4852: $f2
	ld b, b                                          ; $4853: $40
	di                                               ; $4854: $f3
	sub $3a                                          ; $4855: $d6 $3a
	jr c, jr_08e_48bc                                ; $4857: $38 $63

	and b                                            ; $4859: $a0
	add hl, bc                                       ; $485a: $09
	db $eb                                           ; $485b: $eb
	ld h, e                                          ; $485c: $63
	ld c, d                                          ; $485d: $4a
	ld a, $66                                        ; $485e: $3e $66
	add hl, sp                                       ; $4860: $39
	xor c                                            ; $4861: $a9
	ld b, b                                          ; $4862: $40
	ld c, l                                          ; $4863: $4d
	ld e, e                                          ; $4864: $5b
	ld d, [hl]                                       ; $4865: $56
	and b                                            ; $4866: $a0
	cpl                                              ; $4867: $2f
	ld b, e                                          ; $4868: $43
	ld b, [hl]                                       ; $4869: $46
	dec sp                                           ; $486a: $3b
	inc [hl]                                         ; $486b: $34
	db $ec                                           ; $486c: $ec
	ldh [$a8], a                                     ; $486d: $e0 $a8
	ld l, d                                          ; $486f: $6a
	ldh a, [$0d]                                     ; $4870: $f0 $0d
	ld c, e                                          ; $4872: $4b
	inc [hl]                                         ; $4873: $34
	halt                                             ; $4874: $76
	inc a                                            ; $4875: $3c
	ld d, b                                          ; $4876: $50
	inc de                                           ; $4877: $13
	ldh a, [$3b]                                     ; $4878: $f0 $3b
	dec sp                                           ; $487a: $3b
	ccf                                              ; $487b: $3f
	db $ec                                           ; $487c: $ec
	ld a, [bc]                                       ; $487d: $0a
	and c                                            ; $487e: $a1
	ld b, b                                          ; $487f: $40
	add hl, sp                                       ; $4880: $39
	inc [hl]                                         ; $4881: $34
	call nc, Call_08e_4563                           ; $4882: $d4 $63 $45
	and b                                            ; $4885: $a0
	xor $17                                          ; $4886: $ee $17
	ld d, e                                          ; $4888: $53
	jr c, jr_08e_48cb                                ; $4889: $38 $40

	ld d, e                                          ; $488b: $53
	ld a, $38                                        ; $488c: $3e $38
	inc a                                            ; $488e: $3c
	ld d, b                                          ; $488f: $50
	xor h                                            ; $4890: $ac
	ldh a, [$ea]                                     ; $4891: $f0 $ea
	ld a, [hl-]                                      ; $4893: $3a
	ldh a, [rBGP]                                    ; $4894: $f0 $47
	ld b, a                                          ; $4896: $47
	ld a, $3f                                        ; $4897: $3e $3f
	ld b, l                                          ; $4899: $45
	and b                                            ; $489a: $a0
	cpl                                              ; $489b: $2f
	ld b, e                                          ; $489c: $43
	ld e, e                                          ; $489d: $5b
	ld d, [hl]                                       ; $489e: $56
	ld b, [hl]                                       ; $489f: $46
	inc [hl]                                         ; $48a0: $34
	ld b, b                                          ; $48a1: $40
	add hl, sp                                       ; $48a2: $39
	ld d, c                                          ; $48a3: $51
	ld c, [hl]                                       ; $48a4: $4e
	ld b, l                                          ; $48a5: $45
	and b                                            ; $48a6: $a0
	db $ec                                           ; $48a7: $ec
	rst AddAOntoHL                                          ; $48a8: $ef
	ld c, c                                          ; $48a9: $49
	inc de                                           ; $48aa: $13
	ldh a, [$cd]                                     ; $48ab: $f0 $cd
	ld e, e                                          ; $48ad: $5b
	ldh a, [$28]                                     ; $48ae: $f0 $28
	ld b, h                                          ; $48b0: $44
	dec sp                                           ; $48b1: $3b
	ldh [$a8], a                                     ; $48b2: $e0 $a8
	db $ed                                           ; $48b4: $ed
	ld h, c                                          ; $48b5: $61
	ld c, a                                          ; $48b6: $4f
	ldh a, [$cd]                                     ; $48b7: $f0 $cd
	ld e, e                                          ; $48b9: $5b
	ldh a, [$28]                                     ; $48ba: $f0 $28

jr_08e_48bc:
	ld c, e                                          ; $48bc: $4b
	inc de                                           ; $48bd: $13
	ldh a, [c]                                       ; $48be: $f2
	ld a, [hl]                                       ; $48bf: $7e
	ld e, h                                          ; $48c0: $5c
	ccf                                              ; $48c1: $3f
	db $eb                                           ; $48c2: $eb
	inc [hl]                                         ; $48c3: $34
	ld h, e                                          ; $48c4: $63
	and b                                            ; $48c5: $a0
	cpl                                              ; $48c6: $2f
	ld b, e                                          ; $48c7: $43
	rst JumpTable                                          ; $48c8: $c7
	ld b, h                                          ; $48c9: $44
	dec sp                                           ; $48ca: $3b

jr_08e_48cb:
	dec a                                            ; $48cb: $3d
	ld [hl], $17                                     ; $48cc: $36 $17
	add sp, $50                                      ; $48ce: $e8 $50
	inc de                                           ; $48d0: $13
	add sp, -$7a                                     ; $48d1: $e8 $86
	and e                                            ; $48d3: $a3
	db $ec                                           ; $48d4: $ec
	ld a, [de]                                       ; $48d5: $1a
	xor h                                            ; $48d6: $ac
	ldh a, [c]                                       ; $48d7: $f2
	ld c, e                                          ; $48d8: $4b
	pop af                                           ; $48d9: $f1
	or h                                             ; $48da: $b4
	ld e, h                                          ; $48db: $5c
	ld c, a                                          ; $48dc: $4f
	jr c, jr_08e_4917                                ; $48dd: $38 $38

	ld h, e                                          ; $48df: $63
	ld c, h                                          ; $48e0: $4c
	and b                                            ; $48e1: $a0
	cpl                                              ; $48e2: $2f
	ld b, e                                          ; $48e3: $43
	ld l, d                                          ; $48e4: $6a
	ldh a, [$0d]                                     ; $48e5: $f0 $0d
	ld d, d                                          ; $48e7: $52
	dec a                                            ; $48e8: $3d
	xor h                                            ; $48e9: $ac
	jp hl                                            ; $48ea: $e9


	or b                                             ; $48eb: $b0
	and c                                            ; $48ec: $a1
	ldh a, [rBGP]                                    ; $48ed: $f0 $47
	ldh a, [$2a]                                     ; $48ef: $f0 $2a
	ld d, e                                          ; $48f1: $53
	ldh a, [$c9]                                     ; $48f2: $f0 $c9
	jr c, jr_08e_4935                                ; $48f4: $38 $3f

	ld c, l                                          ; $48f6: $4d
	ld a, e                                          ; $48f7: $7b
	ld c, h                                          ; $48f8: $4c
	and b                                            ; $48f9: $a0
	cpl                                              ; $48fa: $2f
	ld b, e                                          ; $48fb: $43
	or h                                             ; $48fc: $b4
	xor h                                            ; $48fd: $ac
	ld d, d                                          ; $48fe: $52
	dec a                                            ; $48ff: $3d

jr_08e_4900:
	db $ec                                           ; $4900: $ec
	inc l                                            ; $4901: $2c
	ld c, h                                          ; $4902: $4c
	and b                                            ; $4903: $a0
	ld d, d                                          ; $4904: $52
	inc [hl]                                         ; $4905: $34
	db $ec                                           ; $4906: $ec
	ld a, [de]                                       ; $4907: $1a
	inc de                                           ; $4908: $13
	xor $17                                          ; $4909: $ee $17
	ld h, d                                          ; $490b: $62
	ld a, $3a                                        ; $490c: $3e $3a
	jr c, jr_08e_4900                                ; $490e: $38 $f0

	adc a                                            ; $4910: $8f
	ld l, h                                          ; $4911: $6c
	ld c, a                                          ; $4912: $4f
	inc de                                           ; $4913: $13
	jr c, jr_08e_494e                                ; $4914: $38 $38

	ld h, e                                          ; $4916: $63

jr_08e_4917:
	ld c, h                                          ; $4917: $4c
	and b                                            ; $4918: $a0
	cpl                                              ; $4919: $2f
	ld b, e                                          ; $491a: $43
	ld b, b                                          ; $491b: $40
	add hl, sp                                       ; $491c: $39
	inc [hl]                                         ; $491d: $34
	db $ec                                           ; $491e: $ec
	cp c                                             ; $491f: $b9
	and b                                            ; $4920: $a0
	add b                                            ; $4921: $80
	ld d, d                                          ; $4922: $52
	ld d, b                                          ; $4923: $50
	ld a, [hl-]                                      ; $4924: $3a
	inc a                                            ; $4925: $3c
	dec sp                                           ; $4926: $3b
	dec a                                            ; $4927: $3d
	ld e, l                                          ; $4928: $5d
	ld e, d                                          ; $4929: $5a
	xor h                                            ; $492a: $ac
	ld d, d                                          ; $492b: $52
	inc [hl]                                         ; $492c: $34
	db $ed                                           ; $492d: $ed
	ld d, a                                          ; $492e: $57
	db $ed                                           ; $492f: $ed
	push af                                          ; $4930: $f5
	ld b, a                                          ; $4931: $47
	ld [hl], d                                       ; $4932: $72
	ld c, [hl]                                       ; $4933: $4e
	ld h, e                                          ; $4934: $63

jr_08e_4935:
	and b                                            ; $4935: $a0
	cpl                                              ; $4936: $2f
	ld b, e                                          ; $4937: $43
	rst JumpTable                                          ; $4938: $c7
	xor l                                            ; $4939: $ad
	ld b, [hl]                                       ; $493a: $46
	ld d, a                                          ; $493b: $57
	ld d, e                                          ; $493c: $53
	ld c, c                                          ; $493d: $49
	add hl, sp                                       ; $493e: $39
	and b                                            ; $493f: $a0
	ld b, [hl]                                       ; $4940: $46
	ld d, d                                          ; $4941: $52
	ld d, a                                          ; $4942: $57
	ldh a, [c]                                       ; $4943: $f2
	ei                                               ; $4944: $fb
	ld c, l                                          ; $4945: $4d
	ldh a, [c]                                       ; $4946: $f2
	ei                                               ; $4947: $fb
	ld c, l                                          ; $4948: $4d
	ld a, $55                                        ; $4949: $3e $55
	inc de                                           ; $494b: $13
	ld e, b                                          ; $494c: $58
	ld c, l                                          ; $494d: $4d

jr_08e_494e:
	ld c, [hl]                                       ; $494e: $4e
	ld b, d                                          ; $494f: $42
	ld c, a                                          ; $4950: $4f
	pop af                                           ; $4951: $f1
	sbc $4e                                          ; $4952: $de $4e
	ld e, l                                          ; $4954: $5d
	ld e, d                                          ; $4955: $5a
	xor h                                            ; $4956: $ac
	ld d, d                                          ; $4957: $52
	inc [hl]                                         ; $4958: $34
	jr c, jr_08e_4993                                ; $4959: $38 $38

	ld c, d                                          ; $495b: $4a
	ld a, $66                                        ; $495c: $3e $66
	add hl, sp                                       ; $495e: $39
	and b                                            ; $495f: $a0
	xor $17                                          ; $4960: $ee $17
	ld d, e                                          ; $4962: $53
	ldh a, [rHDMA4]                                  ; $4963: $f0 $54
	ld a, $f0                                        ; $4965: $3e $f0
	rst JumpTable                                          ; $4967: $c7
	ld c, l                                          ; $4968: $4d
	dec a                                            ; $4969: $3d
	ld e, l                                          ; $496a: $5d
	ld e, d                                          ; $496b: $5a
	inc de                                           ; $496c: $13
	ld d, d                                          ; $496d: $52
	inc [hl]                                         ; $496e: $34
	jr c, jr_08e_49a9                                ; $496f: $38 $38

	ld h, e                                          ; $4971: $63
	and b                                            ; $4972: $a0
	db $ed                                           ; $4973: $ed
	ld e, [hl]                                       ; $4974: $5e
	xor h                                            ; $4975: $ac
	add b                                            ; $4976: $80
	ld d, d                                          ; $4977: $52
	ld d, b                                          ; $4978: $50
	ld a, [hl-]                                      ; $4979: $3a
	inc a                                            ; $497a: $3c
	dec sp                                           ; $497b: $3b
	dec a                                            ; $497c: $3d
	ld h, e                                          ; $497d: $63
	and b                                            ; $497e: $a0
	cpl                                              ; $497f: $2f
	ld b, e                                          ; $4980: $43
	rst JumpTable                                          ; $4981: $c7
	ld c, b                                          ; $4982: $48
	and b                                            ; $4983: $a0
	db $ec                                           ; $4984: $ec
	reti                                             ; $4985: $d9


	xor h                                            ; $4986: $ac
	ldh a, [c]                                       ; $4987: $f2
	ld c, e                                          ; $4988: $4b
	pop af                                           ; $4989: $f1
	or h                                             ; $498a: $b4
	ld e, h                                          ; $498b: $5c
	ld c, e                                          ; $498c: $4b
	ldh a, [c]                                       ; $498d: $f2
	ld b, b                                          ; $498e: $40
	di                                               ; $498f: $f3
	sub $4c                                          ; $4990: $d6 $4c
	and b                                            ; $4992: $a0

jr_08e_4993:
	ret                                              ; $4993: $c9


	xor h                                            ; $4994: $ac
	ldh a, [c]                                       ; $4995: $f2
	ei                                               ; $4996: $fb
	ld c, l                                          ; $4997: $4d
	ldh a, [c]                                       ; $4998: $f2
	ei                                               ; $4999: $fb
	ld c, l                                          ; $499a: $4d
	ld a, $38                                        ; $499b: $3e $38
	ld h, e                                          ; $499d: $63
	ld b, l                                          ; $499e: $45
	and b                                            ; $499f: $a0
	xor $17                                          ; $49a0: $ee $17
	ld d, e                                          ; $49a2: $53
	ldh a, [$c7]                                     ; $49a3: $f0 $c7
	ld c, l                                          ; $49a5: $4d
	dec a                                            ; $49a6: $3d
	ld e, l                                          ; $49a7: $5d

Call_08e_49a8:
	ld e, d                                          ; $49a8: $5a

jr_08e_49a9:
	xor h                                            ; $49a9: $ac
	ld d, d                                          ; $49aa: $52
	inc [hl]                                         ; $49ab: $34
	jr c, jr_08e_49e6                                ; $49ac: $38 $38

	ld h, e                                          ; $49ae: $63
	and b                                            ; $49af: $a0
	ldh a, [$f3]                                     ; $49b0: $f0 $f3
	ld c, l                                          ; $49b2: $4d
	dec a                                            ; $49b3: $3d
	ld b, h                                          ; $49b4: $44
	ld e, l                                          ; $49b5: $5d
	ld c, h                                          ; $49b6: $4c
	and b                                            ; $49b7: $a0
	ld d, h                                          ; $49b8: $54
	ld b, d                                          ; $49b9: $42
	ld l, a                                          ; $49ba: $6f
	ld c, c                                          ; $49bb: $49
	ld a, $3d                                        ; $49bc: $3e $3d
	ld d, h                                          ; $49be: $54
	ld c, c                                          ; $49bf: $49
	ld d, e                                          ; $49c0: $53
	inc de                                           ; $49c1: $13
	ldh a, [c]                                       ; $49c2: $f2
	ld [bc], a                                       ; $49c3: $02
	db $f4                                           ; $49c4: $f4
	ld [hl], c                                       ; $49c5: $71
	pop af                                           ; $49c6: $f1
	ld d, h                                          ; $49c7: $54
	add e                                            ; $49c8: $83
	ld b, l                                          ; $49c9: $45
	and b                                            ; $49ca: $a0
	cpl                                              ; $49cb: $2f
	ld b, e                                          ; $49cc: $43
	xor $10                                          ; $49cd: $ee $10
	xor b                                            ; $49cf: $a8
	add sp, -$72                                     ; $49d0: $e8 $8e
	and e                                            ; $49d2: $a3
	ld b, b                                          ; $49d3: $40
	add hl, sp                                       ; $49d4: $39
	ld b, b                                          ; $49d5: $40
	add hl, sp                                       ; $49d6: $39
	ld c, b                                          ; $49d7: $48
	and b                                            ; $49d8: $a0
	cpl                                              ; $49d9: $2f
	ld b, e                                          ; $49da: $43
	db $eb                                           ; $49db: $eb
	rst FarCall                                          ; $49dc: $f7
	and c                                            ; $49dd: $a1
	cpl                                              ; $49de: $2f
	ld b, e                                          ; $49df: $43
	ld b, [hl]                                       ; $49e0: $46
	ld d, a                                          ; $49e1: $57
	ld d, e                                          ; $49e2: $53
	ld c, c                                          ; $49e3: $49
	add hl, sp                                       ; $49e4: $39
	xor b                                            ; $49e5: $a8

jr_08e_49e6:
	ldh a, [$29]                                     ; $49e6: $f0 $29
	ld a, $38                                        ; $49e8: $3e $38
	ld b, l                                          ; $49ea: $45
	xor b                                            ; $49eb: $a8
	ld [hl-], a                                      ; $49ec: $32
	db $ec                                           ; $49ed: $ec
	ldh [rBGP], a                                    ; $49ee: $e0 $47
	db $eb                                           ; $49f0: $eb
	dec a                                            ; $49f1: $3d
	inc de                                           ; $49f2: $13
	ld c, a                                          ; $49f3: $4f
	ld d, b                                          ; $49f4: $50
	ld e, [hl]                                       ; $49f5: $5e
	ld c, [hl]                                       ; $49f6: $4e
	ld a, [hl-]                                      ; $49f7: $3a
	ld b, c                                          ; $49f8: $41
	ccf                                              ; $49f9: $3f
	xor h                                            ; $49fa: $ac
	halt                                             ; $49fb: $76
	ld c, e                                          ; $49fc: $4b
	pop af                                           ; $49fd: $f1
	and d                                            ; $49fe: $a2
	ld a, c                                          ; $49ff: $79
	pop af                                           ; $4a00: $f1
	ld b, d                                          ; $4a01: $42
	ld b, h                                          ; $4a02: $44
	ld e, c                                          ; $4a03: $59
	scf                                              ; $4a04: $37
	inc sp                                           ; $4a05: $33
	add hl, bc                                       ; $4a06: $09
	ld b, b                                          ; $4a07: $40
	ld c, l                                          ; $4a08: $4d
	ld e, e                                          ; $4a09: $5b
	ld d, [hl]                                       ; $4a0a: $56
	xor h                                            ; $4a0b: $ac
	db $ec                                           ; $4a0c: $ec
	push bc                                          ; $4a0d: $c5
	db $ec                                           ; $4a0e: $ec
	ld [hl-], a                                      ; $4a0f: $32
	xor b                                            ; $4a10: $a8
	ld d, $a0                                        ; $4a11: $16 $a0
	ld e, b                                          ; $4a13: $58
	ld b, [hl]                                       ; $4a14: $46
	inc [hl]                                         ; $4a15: $34
	db $ec                                           ; $4a16: $ec
	ld [hl-], a                                      ; $4a17: $32
	xor b                                            ; $4a18: $a8
	ld d, $a0                                        ; $4a19: $16 $a0
	ld b, b                                          ; $4a1b: $40
	ld c, l                                          ; $4a1c: $4d
	ld e, e                                          ; $4a1d: $5b
	ld d, [hl]                                       ; $4a1e: $56
	xor h                                            ; $4a1f: $ac
	ldh a, [rHDMA5]                                  ; $4a20: $f0 $55
	ldh a, [rBCPS]                                   ; $4a22: $f0 $68
	ld d, c                                          ; $4a24: $51
	ld c, [hl]                                       ; $4a25: $4e
	ld h, e                                          ; $4a26: $63
	and b                                            ; $4a27: $a0
	add hl, bc                                       ; $4a28: $09
	xor $10                                          ; $4a29: $ee $10
	and b                                            ; $4a2b: $a0
	cpl                                              ; $4a2c: $2f
	ld b, e                                          ; $4a2d: $43
	ld h, h                                          ; $4a2e: $64
	ld e, c                                          ; $4a2f: $59
	jr c, jr_08e_4a66                                ; $4a30: $38 $34

	db $ed                                           ; $4a32: $ed
	cp l                                             ; $4a33: $bd
	ld e, b                                          ; $4a34: $58
	ld e, c                                          ; $4a35: $59
	ld b, c                                          ; $4a36: $41
	xor b                                            ; $4a37: $a8
	sbc c                                            ; $4a38: $99
	dec sp                                           ; $4a39: $3b
	ccf                                              ; $4a3a: $3f
	ld d, l                                          ; $4a3b: $55
	ld c, l                                          ; $4a3c: $4d
	ld e, c                                          ; $4a3d: $59
	and b                                            ; $4a3e: $a0
	cpl                                              ; $4a3f: $2f
	ld b, e                                          ; $4a40: $43
	db $ec                                           ; $4a41: $ec
	reti                                             ; $4a42: $d9


	xor h                                            ; $4a43: $ac
	ld d, h                                          ; $4a44: $54
	ld b, d                                          ; $4a45: $42
	pop af                                           ; $4a46: $f1
	ld de, $573a                                     ; $4a47: $11 $3a $57
	ld e, e                                          ; $4a4a: $5b
	ld d, [hl]                                       ; $4a4b: $56
	xor h                                            ; $4a4c: $ac
	ldh a, [$e1]                                     ; $4a4d: $f0 $e1
	ldh a, [rSB]                                     ; $4a4f: $f0 $01
	ld d, b                                          ; $4a51: $50
	ld c, l                                          ; $4a52: $4d
	ld c, [hl]                                       ; $4a53: $4e
	ld b, l                                          ; $4a54: $45
	ld a, [hl-]                                      ; $4a55: $3a
	ld [hl], h                                       ; $4a56: $74
	and b                                            ; $4a57: $a0
	cpl                                              ; $4a58: $2f
	ld b, e                                          ; $4a59: $43
	db $eb                                           ; $4a5a: $eb
	inc [hl]                                         ; $4a5b: $34
	xor h                                            ; $4a5c: $ac
	ldh a, [rSVBK]                                   ; $4a5d: $f0 $70
	ld b, a                                          ; $4a5f: $47
	db $ed                                           ; $4a60: $ed
	ld e, b                                          ; $4a61: $58
	and b                                            ; $4a62: $a0
	cpl                                              ; $4a63: $2f
	ld b, e                                          ; $4a64: $43
	db $ec                                           ; $4a65: $ec

jr_08e_4a66:
	pop hl                                           ; $4a66: $e1
	ld c, e                                          ; $4a67: $4b
	xor h                                            ; $4a68: $ac
	ld c, c                                          ; $4a69: $49
	add hl, sp                                       ; $4a6a: $39
	ld c, c                                          ; $4a6b: $49
	add hl, sp                                       ; $4a6c: $39
	ld a, b                                          ; $4a6d: $78
	ld a, [hl-]                                      ; $4a6e: $3a
	inc a                                            ; $4a6f: $3c
	dec sp                                           ; $4a70: $3b
	dec a                                            ; $4a71: $3d
	ld a, [hl-]                                      ; $4a72: $3a
	and b                                            ; $4a73: $a0
	cpl                                              ; $4a74: $2f
	ld b, e                                          ; $4a75: $43
	ld e, d                                          ; $4a76: $5a
	add hl, sp                                       ; $4a77: $39
	ld a, $3d                                        ; $4a78: $3e $3d
	ld b, c                                          ; $4a7a: $41
	ld b, h                                          ; $4a7b: $44
	ld e, a                                          ; $4a7c: $5f
	add hl, sp                                       ; $4a7d: $39
	xor c                                            ; $4a7e: $a9
	db $eb                                           ; $4a7f: $eb
	inc [hl]                                         ; $4a80: $34
	xor h                                            ; $4a81: $ac
	ldh a, [rSVBK]                                   ; $4a82: $f0 $70
	ld b, a                                          ; $4a84: $47
	db $ed                                           ; $4a85: $ed
	ld e, b                                          ; $4a86: $58
	and b                                            ; $4a87: $a0
	cpl                                              ; $4a88: $2f
	ld b, e                                          ; $4a89: $43
	db $ec                                           ; $4a8a: $ec
	pop hl                                           ; $4a8b: $e1
	inc [hl]                                         ; $4a8c: $34
	ld [hl], b                                       ; $4a8d: $70
	ld [hl], c                                       ; $4a8e: $71
	ld b, c                                          ; $4a8f: $41
	ld c, h                                          ; $4a90: $4c
	xor b                                            ; $4a91: $a8
	add sp, -$21                                     ; $4a92: $e8 $df
	xor h                                            ; $4a94: $ac
	jp hl                                            ; $4a95: $e9


	xor [hl]                                         ; $4a96: $ae
	and b                                            ; $4a97: $a0
	ldh a, [$32]                                     ; $4a98: $f0 $32
	ld h, l                                          ; $4a9a: $65
	ldh a, [rAUD3LOW]                                ; $4a9b: $f0 $1d
	ld a, l                                          ; $4a9d: $7d
	ld h, l                                          ; $4a9e: $65
	ldh a, [$32]                                     ; $4a9f: $f0 $32
	xor b                                            ; $4aa1: $a8
	ld l, a                                          ; $4aa2: $6f
	ld c, a                                          ; $4aa3: $4f
	inc [hl]                                         ; $4aa4: $34
	ld l, d                                          ; $4aa5: $6a
	ld a, b                                          ; $4aa6: $78
	dec a                                            ; $4aa7: $3d

Call_08e_4aa8:
	ld c, c                                          ; $4aa8: $49
	ld d, h                                          ; $4aa9: $54
	ld e, a                                          ; $4aaa: $5f
	ld a, [hl-]                                      ; $4aab: $3a
	ld b, d                                          ; $4aac: $42
	and b                                            ; $4aad: $a0
	cpl                                              ; $4aae: $2f
	ld b, e                                          ; $4aaf: $43
	db $ec                                           ; $4ab0: $ec
	cp c                                             ; $4ab1: $b9
	dec [hl]                                         ; $4ab2: $35
	rla                                              ; $4ab3: $17
	jp hl                                            ; $4ab4: $e9


	pop de                                           ; $4ab5: $d1
	inc de                                           ; $4ab6: $13
	jp hl                                            ; $4ab7: $e9


	jp nc, $f0a3                                     ; $4ab8: $d2 $a3 $f0

	ld b, a                                          ; $4abb: $47
	ldh a, [$2a]                                     ; $4abc: $f0 $2a
	ld b, a                                          ; $4abe: $47
	db $ed                                           ; $4abf: $ed
	ccf                                              ; $4ac0: $3f
	ld c, h                                          ; $4ac1: $4c
	xor b                                            ; $4ac2: $a8
	ld c, a                                          ; $4ac3: $4f
	add hl, sp                                       ; $4ac4: $39
	inc [hl]                                         ; $4ac5: $34
	ld a, d                                          ; $4ac6: $7a
	ld c, [hl]                                       ; $4ac7: $4e
	ld c, c                                          ; $4ac8: $49
	ld d, h                                          ; $4ac9: $54
	ld e, a                                          ; $4aca: $5f
	inc de                                           ; $4acb: $13
	ld b, h                                          ; $4acc: $44
	dec sp                                           ; $4acd: $3b
	dec a                                            ; $4ace: $3d
	ld h, e                                          ; $4acf: $63
	ld b, l                                          ; $4ad0: $45
	and b                                            ; $4ad1: $a0
	cpl                                              ; $4ad2: $2f
	ld b, e                                          ; $4ad3: $43
	ld [hl], b                                       ; $4ad4: $70
	ld [hl], c                                       ; $4ad5: $71
	ld b, c                                          ; $4ad6: $41
	xor b                                            ; $4ad7: $a8
	ldh a, [$5c]                                     ; $4ad8: $f0 $5c
	inc a                                            ; $4ada: $3c
	dec sp                                           ; $4adb: $3b
	dec a                                            ; $4adc: $3d
	and b                                            ; $4add: $a0
	ldh a, [$c7]                                     ; $4ade: $f0 $c7
	jr c, jr_08e_4b45                                ; $4ae0: $38 $63

	ld b, l                                          ; $4ae2: $45
	xor b                                            ; $4ae3: $a8
	ld c, a                                          ; $4ae4: $4f
	add hl, sp                                       ; $4ae5: $39
	inc [hl]                                         ; $4ae6: $34
	ld a, d                                          ; $4ae7: $7a
	ld c, [hl]                                       ; $4ae8: $4e
	ld c, c                                          ; $4ae9: $49
	ld d, h                                          ; $4aea: $54
	ld e, a                                          ; $4aeb: $5f
	inc de                                           ; $4aec: $13
	ld b, h                                          ; $4aed: $44
	dec sp                                           ; $4aee: $3b
	dec a                                            ; $4aef: $3d
	ld h, e                                          ; $4af0: $63
	and b                                            ; $4af1: $a0
	cpl                                              ; $4af2: $2f
	ld b, e                                          ; $4af3: $43
	ld [hl], b                                       ; $4af4: $70
	ld [hl], c                                       ; $4af5: $71
	ld b, c                                          ; $4af6: $41
	ld b, l                                          ; $4af7: $45
	xor b                                            ; $4af8: $a8
	ld c, a                                          ; $4af9: $4f
	add hl, sp                                       ; $4afa: $39
	ldh a, [hDisp0_SCX]                                     ; $4afb: $f0 $84
	ldh a, [$0d]                                     ; $4afd: $f0 $0d
	ld c, c                                          ; $4aff: $49
	ld a, $3a                                        ; $4b00: $3e $3a
	jr c, jr_08e_4b40                                ; $4b02: $38 $3c

	ld d, b                                          ; $4b04: $50
	and b                                            ; $4b05: $a0
	cpl                                              ; $4b06: $2f
	ld b, e                                          ; $4b07: $43
	sbc c                                            ; $4b08: $99
	dec sp                                           ; $4b09: $3b
	dec a                                            ; $4b0a: $3d
	and c                                            ; $4b0b: $a1
	add hl, sp                                       ; $4b0c: $39
	xor $1f                                          ; $4b0d: $ee $1f
	xor b                                            ; $4b0f: $a8
	jp hl                                            ; $4b10: $e9


	db $e3                                           ; $4b11: $e3
	ld b, l                                          ; $4b12: $45
	xor b                                            ; $4b13: $a8
	ld l, a                                          ; $4b14: $6f
	ld c, a                                          ; $4b15: $4f
	inc [hl]                                         ; $4b16: $34
	ld l, d                                          ; $4b17: $6a
	ld a, b                                          ; $4b18: $78
	dec a                                            ; $4b19: $3d
	ld c, c                                          ; $4b1a: $49
	ld d, h                                          ; $4b1b: $54
	ld e, a                                          ; $4b1c: $5f
	ld a, [hl-]                                      ; $4b1d: $3a
	ld b, d                                          ; $4b1e: $42
	ld c, b                                          ; $4b1f: $48
	and b                                            ; $4b20: $a0
	cpl                                              ; $4b21: $2f
	ld b, e                                          ; $4b22: $43
	jp hl                                            ; $4b23: $e9


	dec h                                            ; $4b24: $25
	ld b, l                                          ; $4b25: $45
	and b                                            ; $4b26: $a0
	jp hl                                            ; $4b27: $e9


	db $e3                                           ; $4b28: $e3
	xor b                                            ; $4b29: $a8
	ld l, a                                          ; $4b2a: $6f
	ld c, a                                          ; $4b2b: $4f
	inc [hl]                                         ; $4b2c: $34
	ld l, d                                          ; $4b2d: $6a
	ld a, b                                          ; $4b2e: $78
	dec a                                            ; $4b2f: $3d
	ld c, c                                          ; $4b30: $49
	ld d, h                                          ; $4b31: $54
	ld e, a                                          ; $4b32: $5f
	ld b, l                                          ; $4b33: $45
	and b                                            ; $4b34: $a0
	cpl                                              ; $4b35: $2f
	ld b, e                                          ; $4b36: $43
	jp hl                                            ; $4b37: $e9


	dec h                                            ; $4b38: $25
	and b                                            ; $4b39: $a0
	jp hl                                            ; $4b3a: $e9


	db $e3                                           ; $4b3b: $e3
	xor b                                            ; $4b3c: $a8
	db $ec                                           ; $4b3d: $ec
	db $10                                           ; $4b3e: $10
	inc [hl]                                         ; $4b3f: $34

jr_08e_4b40:
	ld l, d                                          ; $4b40: $6a
	ld a, b                                          ; $4b41: $78
	dec a                                            ; $4b42: $3d
	ld c, c                                          ; $4b43: $49
	ld d, h                                          ; $4b44: $54

jr_08e_4b45:
	ld e, a                                          ; $4b45: $5f
	ld b, l                                          ; $4b46: $45
	and b                                            ; $4b47: $a0
	cpl                                              ; $4b48: $2f
	ld b, e                                          ; $4b49: $43
	db $ec                                           ; $4b4a: $ec
	pop hl                                           ; $4b4b: $e1
	ldh a, [$c7]                                     ; $4b4c: $f0 $c7
	jr c, jr_08e_4b8a                                ; $4b4e: $38 $3a

	xor b                                            ; $4b50: $a8
	db $eb                                           ; $4b51: $eb
	rst FarCall                                          ; $4b52: $f7
	inc a                                            ; $4b53: $3c
	ld a, [hl-]                                      ; $4b54: $3a
	ld c, b                                          ; $4b55: $48
	and c                                            ; $4b56: $a1
	pop af                                           ; $4b57: $f1
	ld [de], a                                       ; $4b58: $12
	ldh a, [$35]                                     ; $4b59: $f0 $35
	pop af                                           ; $4b5b: $f1
	ld [de], a                                       ; $4b5c: $12
	ldh a, [$35]                                     ; $4b5d: $f0 $35
	ld a, $3f                                        ; $4b5f: $3e $3f
	xor h                                            ; $4b61: $ac
	pop af                                           ; $4b62: $f1
	cp d                                             ; $4b63: $ba
	ld d, l                                          ; $4b64: $55
	ld a, [hl-]                                      ; $4b65: $3a
	dec sp                                           ; $4b66: $3b
	ccf                                              ; $4b67: $3f
	ld d, l                                          ; $4b68: $55
	ld c, [hl]                                       ; $4b69: $4e
	ld h, e                                          ; $4b6a: $63
	ld c, h                                          ; $4b6b: $4c
	and b                                            ; $4b6c: $a0
	cpl                                              ; $4b6d: $2f
	ld b, e                                          ; $4b6e: $43
	adc b                                            ; $4b6f: $88
	sub c                                            ; $4b70: $91
	xor b                                            ; $4b71: $a8
	add sp, -$69                                     ; $4b72: $e8 $97
	and b                                            ; $4b74: $a0
	ld c, e                                          ; $4b75: $4b
	ld [hl], h                                       ; $4b76: $74
	inc [hl]                                         ; $4b77: $34
	ld [$acab], a                                    ; $4b78: $ea $ab $ac
	db $ed                                           ; $4b7b: $ed
	ld d, a                                          ; $4b7c: $57
	db $ed                                           ; $4b7d: $ed
	ld l, h                                          ; $4b7e: $6c
	ld h, e                                          ; $4b7f: $63
	ld c, h                                          ; $4b80: $4c
	and b                                            ; $4b81: $a0
	cpl                                              ; $4b82: $2f
	ld b, e                                          ; $4b83: $43
	ld b, b                                          ; $4b84: $40
	add hl, sp                                       ; $4b85: $39
	ld b, h                                          ; $4b86: $44
	ld c, h                                          ; $4b87: $4c
	xor b                                            ; $4b88: $a8
	ld d, c                                          ; $4b89: $51

jr_08e_4b8a:
	ld [hl], b                                       ; $4b8a: $70
	ld d, l                                          ; $4b8b: $55
	db $ed                                           ; $4b8c: $ed
	ld l, h                                          ; $4b8d: $6c
	ld c, h                                          ; $4b8e: $4c
	and b                                            ; $4b8f: $a0
	ldh a, [$5f]                                     ; $4b90: $f0 $5f
	ldh a, [$9b]                                     ; $4b92: $f0 $9b
	xor h                                            ; $4b94: $ac
	ldh a, [c]                                       ; $4b95: $f2
	rst FarCall                                          ; $4b96: $f7
	ld a, $55                                        ; $4b97: $3e $55
	ld a, [hl-]                                      ; $4b99: $3a
	dec sp                                           ; $4b9a: $3b
	ccf                                              ; $4b9b: $3f
	ld e, h                                          ; $4b9c: $5c
	ldh [$a0], a                                     ; $4b9d: $e0 $a0
	cpl                                              ; $4b9f: $2f
	ld b, e                                          ; $4ba0: $43
	adc b                                            ; $4ba1: $88
	sub c                                            ; $4ba2: $91
	xor h                                            ; $4ba3: $ac
	pop af                                           ; $4ba4: $f1
	sub b                                            ; $4ba5: $90
	ld [hl], b                                       ; $4ba6: $70
	ld a, $f3                                        ; $4ba7: $3e $f3
	dec d                                            ; $4ba9: $15
	ld d, l                                          ; $4baa: $55
	ld a, [hl-]                                      ; $4bab: $3a
	dec sp                                           ; $4bac: $3b
	dec a                                            ; $4bad: $3d
	ld b, l                                          ; $4bae: $45
	and b                                            ; $4baf: $a0
	push af                                          ; $4bb0: $f5
	ld [hl], $f0                                     ; $4bb1: $36 $f0
	and l                                            ; $4bb3: $a5
	ldh a, [$c0]                                     ; $4bb4: $f0 $c0
	pop af                                           ; $4bb6: $f1
	add hl, hl                                       ; $4bb7: $29
	ld b, d                                          ; $4bb8: $42
	rst FarCall                                          ; $4bb9: $f7
	rla                                              ; $4bba: $17
	ld d, l                                          ; $4bbb: $55
	inc de                                           ; $4bbc: $13
	ldh a, [c]                                       ; $4bbd: $f2
	ld a, e                                          ; $4bbe: $7b
	ldh a, [c]                                       ; $4bbf: $f2
	ld a, h                                          ; $4bc0: $7c
	ld b, d                                          ; $4bc1: $42
	di                                               ; $4bc2: $f3
	ld e, c                                          ; $4bc3: $59
	ld a, b                                          ; $4bc4: $78
	ld c, h                                          ; $4bc5: $4c
	and b                                            ; $4bc6: $a0
	cpl                                              ; $4bc7: $2f
	ld b, e                                          ; $4bc8: $43
	ldh a, [$b7]                                     ; $4bc9: $f0 $b7
	ldh a, [$8c]                                     ; $4bcb: $f0 $8c
	ldh a, [$2c]                                     ; $4bcd: $f0 $2c
	ld b, d                                          ; $4bcf: $42
	db $ec                                           ; $4bd0: $ec
	dec de                                           ; $4bd1: $1b
	inc de                                           ; $4bd2: $13
	ldh a, [c]                                       ; $4bd3: $f2
	ld a, e                                          ; $4bd4: $7b
	ldh a, [c]                                       ; $4bd5: $f2
	ld a, h                                          ; $4bd6: $7c
	ld c, d                                          ; $4bd7: $4a
	ld c, a                                          ; $4bd8: $4f
	inc [hl]                                         ; $4bd9: $34
	ld b, [hl]                                       ; $4bda: $46
	ld c, [hl]                                       ; $4bdb: $4e
	ld b, l                                          ; $4bdc: $45
	ld c, h                                          ; $4bdd: $4c
	and b                                            ; $4bde: $a0
	db $eb                                           ; $4bdf: $eb
	ld d, c                                          ; $4be0: $51
	xor h                                            ; $4be1: $ac
	db $ec                                           ; $4be2: $ec
	ld sp, hl                                        ; $4be3: $f9
	ld [$acbd], a                                    ; $4be4: $ea $bd $ac
	ld [$a0e6], a                                    ; $4be7: $ea $e6 $a0
	cpl                                              ; $4bea: $2f
	ld b, e                                          ; $4beb: $43
	ldh a, [c]                                       ; $4bec: $f2
	rrca                                             ; $4bed: $0f
	rst FarCall                                          ; $4bee: $f7
	adc c                                            ; $4bef: $89
	ldh a, [$d9]                                     ; $4bf0: $f0 $d9
	ccf                                              ; $4bf2: $3f
	ld a, [hl-]                                      ; $4bf3: $3a
	ld d, e                                          ; $4bf4: $53
	ld d, b                                          ; $4bf5: $50
	xor h                                            ; $4bf6: $ac
	jp hl                                            ; $4bf7: $e9


	xor l                                            ; $4bf8: $ad
	xor b                                            ; $4bf9: $a8
	ld b, [hl]                                       ; $4bfa: $46
	ld d, a                                          ; $4bfb: $57
	ld d, e                                          ; $4bfc: $53
	ld c, c                                          ; $4bfd: $49
	add hl, sp                                       ; $4bfe: $39
	and b                                            ; $4bff: $a0
	db $eb                                           ; $4c00: $eb
	ld d, c                                          ; $4c01: $51
	xor h                                            ; $4c02: $ac
	db $ec                                           ; $4c03: $ec
	ld sp, hl                                        ; $4c04: $f9
	ld [$acbd], a                                    ; $4c05: $ea $bd $ac
	db $ec                                           ; $4c08: $ec
	dec [hl]                                         ; $4c09: $35
	inc a                                            ; $4c0a: $3c
	dec sp                                           ; $4c0b: $3b
	dec a                                            ; $4c0c: $3d
	ld h, e                                          ; $4c0d: $63
	and b                                            ; $4c0e: $a0
	cpl                                              ; $4c0f: $2f
	ld b, e                                          ; $4c10: $43
	ld b, b                                          ; $4c11: $40
	ld c, l                                          ; $4c12: $4d
	ld c, d                                          ; $4c13: $4a
	ld c, a                                          ; $4c14: $4f
	xor h                                            ; $4c15: $ac
	jp hl                                            ; $4c16: $e9


	xor l                                            ; $4c17: $ad
	xor b                                            ; $4c18: $a8
	ld b, [hl]                                       ; $4c19: $46
	ld d, a                                          ; $4c1a: $57
	ld d, e                                          ; $4c1b: $53
	ld c, c                                          ; $4c1c: $49
	add hl, sp                                       ; $4c1d: $39
	and b                                            ; $4c1e: $a0
	db $eb                                           ; $4c1f: $eb
	ld d, c                                          ; $4c20: $51
	xor h                                            ; $4c21: $ac
	db $ec                                           ; $4c22: $ec
	ld sp, hl                                        ; $4c23: $f9
	ld [$acbd], a                                    ; $4c24: $ea $bd $ac
	db $eb                                           ; $4c27: $eb
	ld c, a                                          ; $4c28: $4f
	ld h, e                                          ; $4c29: $63

jr_08e_4c2a:
	ld c, h                                          ; $4c2a: $4c
	and b                                            ; $4c2b: $a0
	db $eb                                           ; $4c2c: $eb
	ld d, c                                          ; $4c2d: $51
	xor h                                            ; $4c2e: $ac
	db $ec                                           ; $4c2f: $ec
	ld sp, hl                                        ; $4c30: $f9
	ld [$acb8], a                                    ; $4c31: $ea $b8 $ac
	ld d, c                                          ; $4c34: $51
	ld [hl], b                                       ; $4c35: $70
	ld d, l                                          ; $4c36: $55
	db $ec                                           ; $4c37: $ec
	cp c                                             ; $4c38: $b9
	ld h, e                                          ; $4c39: $63
	and b                                            ; $4c3a: $a0
	db $eb                                           ; $4c3b: $eb
	ld d, c                                          ; $4c3c: $51
	xor h                                            ; $4c3d: $ac
	db $ec                                           ; $4c3e: $ec
	ld sp, hl                                        ; $4c3f: $f9
	ld [$acb8], a                                    ; $4c40: $ea $b8 $ac
	cp e                                             ; $4c43: $bb
	ld h, e                                          ; $4c44: $63
	ld b, l                                          ; $4c45: $45
	and b                                            ; $4c46: $a0
	db $eb                                           ; $4c47: $eb
	ld d, c                                          ; $4c48: $51
	xor h                                            ; $4c49: $ac
	db $ec                                           ; $4c4a: $ec
	ld sp, hl                                        ; $4c4b: $f9
	ld [$acb8], a                                    ; $4c4c: $ea $b8 $ac
	ld [$a0e6], a                                    ; $4c4f: $ea $e6 $a0
	cpl                                              ; $4c52: $2f
	ld b, e                                          ; $4c53: $43
	jp hl                                            ; $4c54: $e9


	xor l                                            ; $4c55: $ad
	xor b                                            ; $4c56: $a8
	add [hl]                                         ; $4c57: $86
	ld b, [hl]                                       ; $4c58: $46
	ld d, a                                          ; $4c59: $57
	ld d, e                                          ; $4c5a: $53
	ld c, c                                          ; $4c5b: $49
	add hl, sp                                       ; $4c5c: $39
	and b                                            ; $4c5d: $a0
	add hl, sp                                       ; $4c5e: $39
	ldh a, [c]                                       ; $4c5f: $f2
	ld l, h                                          ; $4c60: $6c
	inc [hl]                                         ; $4c61: $34
	ld [$acab], a                                    ; $4c62: $ea $ab $ac
	db $ed                                           ; $4c65: $ed
	ld d, a                                          ; $4c66: $57
	pop af                                           ; $4c67: $f1
	or $38                                           ; $4c68: $f6 $38
	ld h, e                                          ; $4c6a: $63
	ld c, h                                          ; $4c6b: $4c
	and b                                            ; $4c6c: $a0
	cpl                                              ; $4c6d: $2f
	ld b, e                                          ; $4c6e: $43
	adc b                                            ; $4c6f: $88
	sub c                                            ; $4c70: $91
	inc [hl]                                         ; $4c71: $34
	pop af                                           ; $4c72: $f1
	or $38                                           ; $4c73: $f6 $38
	ld c, h                                          ; $4c75: $4c
	and b                                            ; $4c76: $a0
	db $ec                                           ; $4c77: $ec
	cpl                                              ; $4c78: $2f
	inc [hl]                                         ; $4c79: $34
	ldh a, [$bf]                                     ; $4c7a: $f0 $bf
	db $f4                                           ; $4c7c: $f4
	dec de                                           ; $4c7d: $1b
	ld a, [hl-]                                      ; $4c7e: $3a
	ld e, b                                          ; $4c7f: $58
	jr c, jr_08e_4c2a                                ; $4c80: $38 $a8

	ret                                              ; $4c82: $c9


	xor h                                            ; $4c83: $ac
	ld [$3d59], a                                    ; $4c84: $ea $59 $3d
	ld b, d                                          ; $4c87: $42
	and b                                            ; $4c88: $a0
	db $ec                                           ; $4c89: $ec
	cpl                                              ; $4c8a: $2f
	inc [hl]                                         ; $4c8b: $34
	ld [hl], b                                       ; $4c8c: $70
	ld [hl], c                                       ; $4c8d: $71
	ld b, c                                          ; $4c8e: $41
	ld c, h                                          ; $4c8f: $4c
	xor b                                            ; $4c90: $a8
	ret                                              ; $4c91: $c9


	inc [hl]                                         ; $4c92: $34
	di                                               ; $4c93: $f3
	ld d, [hl]                                       ; $4c94: $56
	ldh a, [$0d]                                     ; $4c95: $f0 $0d
	ld b, a                                          ; $4c97: $47
	inc de                                           ; $4c98: $13
	ld [$3d59], a                                    ; $4c99: $ea $59 $3d
	ld b, d                                          ; $4c9c: $42
	ld b, l                                          ; $4c9d: $45
	and b                                            ; $4c9e: $a0
	db $ec                                           ; $4c9f: $ec
	cpl                                              ; $4ca0: $2f
	inc [hl]                                         ; $4ca1: $34
	db $eb                                           ; $4ca2: $eb
	ccf                                              ; $4ca3: $3f
	xor b                                            ; $4ca4: $a8
	ret                                              ; $4ca5: $c9


	inc de                                           ; $4ca6: $13
	ld [$3f59], a                                    ; $4ca7: $ea $59 $3f
	dec a                                            ; $4caa: $3d
	ld b, d                                          ; $4cab: $42
	ld b, l                                          ; $4cac: $45
	and b                                            ; $4cad: $a0
	cpl                                              ; $4cae: $2f
	ld b, e                                          ; $4caf: $43
	jr c, jr_08e_4d20                                ; $4cb0: $38 $6e

	xor h                                            ; $4cb2: $ac
	jp hl                                            ; $4cb3: $e9


	cp h                                             ; $4cb4: $bc
	xor h                                            ; $4cb5: $ac
	jp hl                                            ; $4cb6: $e9


	dec l                                            ; $4cb7: $2d
	and b                                            ; $4cb8: $a0
	add hl, bc                                       ; $4cb9: $09
	db $eb                                           ; $4cba: $eb
	ld a, e                                          ; $4cbb: $7b
	ld c, d                                          ; $4cbc: $4a
	xor h                                            ; $4cbd: $ac
	ld h, h                                          ; $4cbe: $64
	ldh a, [rAUDVOL]                                 ; $4cbf: $f0 $24
	ld d, c                                          ; $4cc1: $51
	ld c, [hl]                                       ; $4cc2: $4e
	ld b, d                                          ; $4cc3: $42
	inc [hl]                                         ; $4cc4: $34
	ld h, e                                          ; $4cc5: $63
	ld d, a                                          ; $4cc6: $57
	ld c, c                                          ; $4cc7: $49
	adc e                                            ; $4cc8: $8b
	ld e, h                                          ; $4cc9: $5c
	ld b, l                                          ; $4cca: $45
	and b                                            ; $4ccb: $a0
	db $ec                                           ; $4ccc: $ec
	ld a, [de]                                       ; $4ccd: $1a
	inc [hl]                                         ; $4cce: $34
	db $eb                                           ; $4ccf: $eb
	ld a, e                                          ; $4cd0: $7b
	ld c, d                                          ; $4cd1: $4a
	xor h                                            ; $4cd2: $ac
	ld b, d                                          ; $4cd3: $42
	ld b, c                                          ; $4cd4: $41
	ldh a, [rKEY1]                                   ; $4cd5: $f0 $4d
	ld d, a                                          ; $4cd7: $57
	ld d, c                                          ; $4cd8: $51
	ld c, [hl]                                       ; $4cd9: $4e
	ld b, d                                          ; $4cda: $42
	ld c, a                                          ; $4cdb: $4f
	inc de                                           ; $4cdc: $13
	jr c, jr_08e_4d17                                ; $4cdd: $38 $38

	ld h, e                                          ; $4cdf: $63
	ld c, h                                          ; $4ce0: $4c
	and b                                            ; $4ce1: $a0
	ld d, h                                          ; $4ce2: $54
	ld b, c                                          ; $4ce3: $41
	ld a, [hl-]                                      ; $4ce4: $3a
	db $ec                                           ; $4ce5: $ec
	ld l, c                                          ; $4ce6: $69
	xor h                                            ; $4ce7: $ac
	pop de                                           ; $4ce8: $d1
	ld a, b                                          ; $4ce9: $78
	ld c, [hl]                                       ; $4cea: $4e
	ldh a, [$c6]                                     ; $4ceb: $f0 $c6
	ldh a, [rHDMA3]                                  ; $4ced: $f0 $53
	ld d, e                                          ; $4cef: $53
	inc de                                           ; $4cf0: $13
	db $ec                                           ; $4cf1: $ec
	dec bc                                           ; $4cf2: $0b
	and b                                            ; $4cf3: $a0
	cpl                                              ; $4cf4: $2f
	ld [hl-], a                                      ; $4cf5: $32
	ld l, e                                          ; $4cf6: $6b
	ld h, d                                          ; $4cf7: $62
	ldh a, [rAUDVOL]                                 ; $4cf8: $f0 $24
	db $ec                                           ; $4cfa: $ec
	ld d, $36                                        ; $4cfb: $16 $36
	inc sp                                           ; $4cfd: $33
	add hl, bc                                       ; $4cfe: $09
	cpl                                              ; $4cff: $2f
	add sp, $0c                                      ; $4d00: $e8 $0c
	add hl, bc                                       ; $4d02: $09
	cpl                                              ; $4d03: $2f
	add sp, $27                                      ; $4d04: $e8 $27
	add hl, bc                                       ; $4d06: $09
	cpl                                              ; $4d07: $2f
	ld [hl-], a                                      ; $4d08: $32
	pop af                                           ; $4d09: $f1
	ld a, e                                          ; $4d0a: $7b
	ldh a, [hDisp1_WY]                                     ; $4d0b: $f0 $95
	ld c, e                                          ; $4d0d: $4b
	inc de                                           ; $4d0e: $13
	ldh a, [$3f]                                     ; $4d0f: $f0 $3f
	ld h, d                                          ; $4d11: $62
	ldh a, [$bd]                                     ; $4d12: $f0 $bd
	ld d, l                                          ; $4d14: $55
	ld d, h                                          ; $4d15: $54
	ld c, c                                          ; $4d16: $49

jr_08e_4d17:
	xor b                                            ; $4d17: $a8
	xor a                                            ; $4d18: $af
	or l                                             ; $4d19: $b5
	and e                                            ; $4d1a: $a3
	cpl                                              ; $4d1b: $2f
	ld [hl-], a                                      ; $4d1c: $32
	adc e                                            ; $4d1d: $8b
	ld e, h                                          ; $4d1e: $5c
	ld a, [hl-]                                      ; $4d1f: $3a

jr_08e_4d20:
	db $ed                                           ; $4d20: $ed
	jr jr_08e_4d36                                   ; $4d21: $18 $13

	pop af                                           ; $4d23: $f1
	inc hl                                           ; $4d24: $23
	ldh a, [rP1]                                     ; $4d25: $f0 $00
	ld b, d                                          ; $4d27: $42
	jr c, jr_08e_4d62                                ; $4d28: $38 $38

	db $ec                                           ; $4d2a: $ec
	sub h                                            ; $4d2b: $94
	ldh a, [c]                                       ; $4d2c: $f2
	ld e, $a8                                        ; $4d2d: $1e $a8
	xor a                                            ; $4d2f: $af
	or l                                             ; $4d30: $b5
	and e                                            ; $4d31: $a3
	cpl                                              ; $4d32: $2f
	ld [hl-], a                                      ; $4d33: $32
	ldh a, [$74]                                     ; $4d34: $f0 $74

jr_08e_4d36:
	ldh a, [$7a]                                     ; $4d36: $f0 $7a
	ld c, e                                          ; $4d38: $4b
	ldh a, [rAUD1LEN]                                ; $4d39: $f0 $11
	ldh a, [$9d]                                     ; $4d3b: $f0 $9d
	ldh a, [rWY]                                     ; $4d3d: $f0 $4a
	ldh a, [$c4]                                     ; $4d3f: $f0 $c4
	ld a, [hl-]                                      ; $4d41: $3a
	ld e, d                                          ; $4d42: $5a
	ld b, d                                          ; $4d43: $42
	inc de                                           ; $4d44: $13
	ldh a, [c]                                       ; $4d45: $f2

jr_08e_4d46:
	ld bc, $4e5e                                     ; $4d46: $01 $5e $4e
	ld c, a                                          ; $4d49: $4f
	ld b, d                                          ; $4d4a: $42
	ld d, e                                          ; $4d4b: $53
	adc e                                            ; $4d4c: $8b
	ld e, h                                          ; $4d4d: $5c
	xor b                                            ; $4d4e: $a8
	xor a                                            ; $4d4f: $af
	or l                                             ; $4d50: $b5
	and e                                            ; $4d51: $a3
	cpl                                              ; $4d52: $2f
	db $ed                                           ; $4d53: $ed
	ld l, [hl]                                       ; $4d54: $6e
	inc [hl]                                         ; $4d55: $34
	ldh a, [$35]                                     ; $4d56: $f0 $35
	ldh a, [rSC]                                     ; $4d58: $f0 $02
	ldh a, [$c3]                                     ; $4d5a: $f0 $c3
	ldh a, [$c2]                                     ; $4d5c: $f0 $c2
	ld b, a                                          ; $4d5e: $47
	pop af                                           ; $4d5f: $f1
	add sp, -$10                                     ; $4d60: $e8 $f0

jr_08e_4d62:
	add hl, de                                       ; $4d62: $19
	xor h                                            ; $4d63: $ac
	xor a                                            ; $4d64: $af
	or l                                             ; $4d65: $b5
	and e                                            ; $4d66: $a3
	cpl                                              ; $4d67: $2f
	db $ed                                           ; $4d68: $ed
	ld l, [hl]                                       ; $4d69: $6e
	inc [hl]                                         ; $4d6a: $34
	ldh a, [$a6]                                     ; $4d6b: $f0 $a6
	ld e, c                                          ; $4d6d: $59
	pop af                                           ; $4d6e: $f1
	ld [hl], h                                       ; $4d6f: $74
	ld e, c                                          ; $4d70: $59
	ld b, d                                          ; $4d71: $42
	ldh a, [$7a]                                     ; $4d72: $f0 $7a
	ldh a, [rAUDTERM]                                ; $4d74: $f0 $25
	ld h, d                                          ; $4d76: $62
	inc de                                           ; $4d77: $13
	db $ed                                           ; $4d78: $ed
	ld bc, $4e38                                     ; $4d79: $01 $38 $4e
	inc [hl]                                         ; $4d7c: $34
	xor a                                            ; $4d7d: $af
	inc de                                           ; $4d7e: $13
	or l                                             ; $4d7f: $b5
	and e                                            ; $4d80: $a3
	cpl                                              ; $4d81: $2f
	ld [hl-], a                                      ; $4d82: $32
	ld l, e                                          ; $4d83: $6b
	ld l, [hl]                                       ; $4d84: $6e
	ld d, b                                          ; $4d85: $50
	pop af                                           ; $4d86: $f1
	ld hl, sp+$3e                                    ; $4d87: $f8 $3e
	ldh a, [rSB]                                     ; $4d89: $f0 $01
	ld a, [hl-]                                      ; $4d8b: $3a
	adc b                                            ; $4d8c: $88
	ld h, d                                          ; $4d8d: $62
	inc de                                           ; $4d8e: $13
	pop af                                           ; $4d8f: $f1
	ld c, $39                                        ; $4d90: $0e $39
	pop af                                           ; $4d92: $f1
	sub e                                            ; $4d93: $93
	pop af                                           ; $4d94: $f1
	ld a, [bc]                                       ; $4d95: $0a
	ld d, e                                          ; $4d96: $53
	ld a, [hl-]                                      ; $4d97: $3a
	jr c, jr_08e_4d46                                ; $4d98: $38 $ac

	xor a                                            ; $4d9a: $af
	or l                                             ; $4d9b: $b5
	and e                                            ; $4d9c: $a3
	cpl                                              ; $4d9d: $2f
	ld [hl-], a                                      ; $4d9e: $32
	ldh a, [$3f]                                     ; $4d9f: $f0 $3f
	ld b, d                                          ; $4da1: $42
	ldh a, [$dd]                                     ; $4da2: $f0 $dd
	ldh a, [$9c]                                     ; $4da4: $f0 $9c
	ld h, d                                          ; $4da6: $62
	inc de                                           ; $4da7: $13
	ld d, c                                          ; $4da8: $51
	ld c, [hl]                                       ; $4da9: $4e
	dec a                                            ; $4daa: $3d
	ld [hl], c                                       ; $4dab: $71
	ld b, a                                          ; $4dac: $47
	xor h                                            ; $4dad: $ac
	db $ed                                           ; $4dae: $ed
	cp d                                             ; $4daf: $ba
	ld b, a                                          ; $4db0: $47
	db $ed                                           ; $4db1: $ed
	sub b                                            ; $4db2: $90
	db $ec                                           ; $4db3: $ec
	inc c                                            ; $4db4: $0c
	ld c, c                                          ; $4db5: $49
	inc de                                           ; $4db6: $13
	ld [hl], a                                       ; $4db7: $77
	dec sp                                           ; $4db8: $3b
	ccf                                              ; $4db9: $3f
	ld c, [hl]                                       ; $4dba: $4e
	ld d, b                                          ; $4dbb: $50
	ld a, $38                                        ; $4dbc: $3e $38
	and e                                            ; $4dbe: $a3
	cpl                                              ; $4dbf: $2f
	ld [hl-], a                                      ; $4dc0: $32
	pop af                                           ; $4dc1: $f1
	ld a, [bc]                                       ; $4dc2: $0a
	pop af                                           ; $4dc3: $f1
	inc h                                            ; $4dc4: $24
	ld b, d                                          ; $4dc5: $42
	ld a, c                                          ; $4dc6: $79
	jr c, jr_08e_4e13                                ; $4dc7: $38 $4a

	xor h                                            ; $4dc9: $ac
	ld l, e                                          ; $4dca: $6b
	ld h, d                                          ; $4dcb: $62
	add d                                            ; $4dcc: $82
	dec sp                                           ; $4dcd: $3b
	ccf                                              ; $4dce: $3f
	ld c, a                                          ; $4dcf: $4f
	db $ed                                           ; $4dd0: $ed
	ld a, h                                          ; $4dd1: $7c
	ld b, a                                          ; $4dd2: $47
	inc de                                           ; $4dd3: $13
	pop af                                           ; $4dd4: $f1
	inc b                                            ; $4dd5: $04
	ld d, b                                          ; $4dd6: $50
	ld c, l                                          ; $4dd7: $4d
	ld c, [hl]                                       ; $4dd8: $4e
	ld b, c                                          ; $4dd9: $41
	db $ec                                           ; $4dda: $ec
	ret c                                            ; $4ddb: $d8

	inc a                                            ; $4ddc: $3c
	ld c, c                                          ; $4ddd: $49
	inc de                                           ; $4dde: $13
	ld a, a                                          ; $4ddf: $7f
	ld b, a                                          ; $4de0: $47
	ld a, $3f                                        ; $4de1: $3e $3f
	jr c, jr_08e_4e33                                ; $4de3: $38 $4e

	ld b, l                                          ; $4de5: $45
	add hl, sp                                       ; $4de6: $39
	ld b, h                                          ; $4de7: $44
	and e                                            ; $4de8: $a3
	cpl                                              ; $4de9: $2f
	ld [hl-], a                                      ; $4dea: $32
	ldh a, [c]                                       ; $4deb: $f2

jr_08e_4dec:
	ld a, c                                          ; $4dec: $79
	inc [hl]                                         ; $4ded: $34
	ldh a, [$2e]                                     ; $4dee: $f0 $2e
	ld c, d                                          ; $4df0: $4a
	ld h, h                                          ; $4df1: $64
	pop af                                           ; $4df2: $f1
	halt                                             ; $4df3: $76
	ld c, l                                          ; $4df4: $4d
	ccf                                              ; $4df5: $3f
	inc de                                           ; $4df6: $13
	ld l, l                                          ; $4df7: $6d
	ldh a, [$2f]                                     ; $4df8: $f0 $2f
	ldh a, [$1f]                                     ; $4dfa: $f0 $1f
	ldh a, [$08]                                     ; $4dfc: $f0 $08
	ld e, d                                          ; $4dfe: $5a
	ldh a, [hDisp0_BGP]                                     ; $4dff: $f0 $85
	ld e, b                                          ; $4e01: $58
	ld c, l                                          ; $4e02: $4d
	dec a                                            ; $4e03: $3d
	ld d, h                                          ; $4e04: $54
	ld c, c                                          ; $4e05: $49
	ld d, e                                          ; $4e06: $53
	ld b, [hl]                                       ; $4e07: $46
	ld d, a                                          ; $4e08: $57
	inc de                                           ; $4e09: $13
	ld b, b                                          ; $4e0a: $40
	ld c, l                                          ; $4e0b: $4d
	pop af                                           ; $4e0c: $f1
	ld c, e                                          ; $4e0d: $4b
	ld a, b                                          ; $4e0e: $78
	inc [hl]                                         ; $4e0f: $34
	ldh a, [rPCM34]                                  ; $4e10: $f0 $77
	ld d, e                                          ; $4e12: $53

jr_08e_4e13:
	xor $05                                          ; $4e13: $ee $05
	ld d, b                                          ; $4e15: $50
	ld a, $38                                        ; $4e16: $3e $38
	and e                                            ; $4e18: $a3
	cpl                                              ; $4e19: $2f
	ld [hl-], a                                      ; $4e1a: $32
	ldh a, [$35]                                     ; $4e1b: $f0 $35
	ldh a, [rSC]                                     ; $4e1d: $f0 $02
	ldh a, [$c3]                                     ; $4e1f: $f0 $c3
	ldh a, [$c2]                                     ; $4e21: $f0 $c2
	db $ec                                           ; $4e23: $ec
	add hl, hl                                       ; $4e24: $29
	inc de                                           ; $4e25: $13
	xor a                                            ; $4e26: $af
	or l                                             ; $4e27: $b5
	and e                                            ; $4e28: $a3
	cpl                                              ; $4e29: $2f
	ld [hl-], a                                      ; $4e2a: $32
	add e                                            ; $4e2b: $83
	ldh a, [$2f]                                     ; $4e2c: $f0 $2f
	ld e, c                                          ; $4e2e: $59
	ld c, e                                          ; $4e2f: $4b
	db $ed                                           ; $4e30: $ed
	xor [hl]                                         ; $4e31: $ae
	ld a, [hl-]                                      ; $4e32: $3a

jr_08e_4e33:
	ld b, d                                          ; $4e33: $42
	ld c, d                                          ; $4e34: $4a
	xor h                                            ; $4e35: $ac
	pop af                                           ; $4e36: $f1
	ld a, [de]                                       ; $4e37: $1a
	pop af                                           ; $4e38: $f1
	inc c                                            ; $4e39: $0c
	ld b, a                                          ; $4e3a: $47
	ld h, a                                          ; $4e3b: $67
	inc a                                            ; $4e3c: $3c
	ld a, [hl-]                                      ; $4e3d: $3a
	jr c, jr_08e_4dec                                ; $4e3e: $38 $ac

	xor a                                            ; $4e40: $af
	or l                                             ; $4e41: $b5
	and e                                            ; $4e42: $a3
	cpl                                              ; $4e43: $2f
	ld [hl-], a                                      ; $4e44: $32
	db $ed                                           ; $4e45: $ed
	ld [bc], a                                       ; $4e46: $02
	db $ec                                           ; $4e47: $ec
	add hl, hl                                       ; $4e48: $29
	inc de                                           ; $4e49: $13
	xor a                                            ; $4e4a: $af
	or l                                             ; $4e4b: $b5
	and e                                            ; $4e4c: $a3
	cpl                                              ; $4e4d: $2f
	ld [hl-], a                                      ; $4e4e: $32
	pop af                                           ; $4e4f: $f1
	cpl                                              ; $4e50: $2f
	ld c, c                                          ; $4e51: $49
	db $ec                                           ; $4e52: $ec
	db $fc                                           ; $4e53: $fc
	ld c, e                                          ; $4e54: $4b
	add a                                            ; $4e55: $87
	ldh a, [$64]                                     ; $4e56: $f0 $64
	jr c, jr_08e_4e6d                                ; $4e58: $38 $13

	xor a                                            ; $4e5a: $af
	or l                                             ; $4e5b: $b5
	xor b                                            ; $4e5c: $a8
	ldh a, [$2e]                                     ; $4e5d: $f0 $2e
	ld c, d                                          ; $4e5f: $4a
	ld h, h                                          ; $4e60: $64
	pop af                                           ; $4e61: $f1
	halt                                             ; $4e62: $76
	ld c, l                                          ; $4e63: $4d
	dec a                                            ; $4e64: $3d
	ld l, c                                          ; $4e65: $69
	ldh a, [rSC]                                     ; $4e66: $f0 $02
	ldh a, [hDisp0_WX]                                     ; $4e68: $f0 $89
	ldh a, [rAUD3LOW]                                ; $4e6a: $f0 $1d
	ld b, h                                          ; $4e6c: $44

jr_08e_4e6d:
	ld e, a                                          ; $4e6d: $5f
	add hl, sp                                       ; $4e6e: $39
	and e                                            ; $4e6f: $a3
	cpl                                              ; $4e70: $2f
	ld [hl-], a                                      ; $4e71: $32
	db $ed                                           ; $4e72: $ed
	ld sp, hl                                        ; $4e73: $f9
	ld c, e                                          ; $4e74: $4b
	ld h, e                                          ; $4e75: $63
	inc a                                            ; $4e76: $3c
	ld d, b                                          ; $4e77: $50
	ld a, [hl-]                                      ; $4e78: $3a
	jr c, jr_08e_4ece                                ; $4e79: $38 $53

	xor h                                            ; $4e7b: $ac
	pop af                                           ; $4e7c: $f1
	cpl                                              ; $4e7d: $2f
	ld c, c                                          ; $4e7e: $49
	db $ec                                           ; $4e7f: $ec
	db $fc                                           ; $4e80: $fc
	ld c, e                                          ; $4e81: $4b
	adc e                                            ; $4e82: $8b
	ld e, h                                          ; $4e83: $5c
	db $ec                                           ; $4e84: $ec
	ret c                                            ; $4e85: $d8

	inc de                                           ; $4e86: $13
	xor a                                            ; $4e87: $af
	or l                                             ; $4e88: $b5
	and e                                            ; $4e89: $a3
	cpl                                              ; $4e8a: $2f
	ld [hl-], a                                      ; $4e8b: $32
	db $ec                                           ; $4e8c: $ec
	pop af                                           ; $4e8d: $f1
	ld l, h                                          ; $4e8e: $6c
	dec a                                            ; $4e8f: $3d
	jr c, jr_08e_4ecc                                ; $4e90: $38 $3a

	inc de                                           ; $4e92: $13
	pop af                                           ; $4e93: $f1
	ld e, b                                          ; $4e94: $58
	inc a                                            ; $4e95: $3c
	ld a, [hl-]                                      ; $4e96: $3a
	ld c, c                                          ; $4e97: $49
	ld d, h                                          ; $4e98: $54
	ld e, a                                          ; $4e99: $5f
	ld c, e                                          ; $4e9a: $4b
	adc e                                            ; $4e9b: $8b
	ld e, h                                          ; $4e9c: $5c
	db $ec                                           ; $4e9d: $ec
	ret c                                            ; $4e9e: $d8

	inc de                                           ; $4e9f: $13
	xor a                                            ; $4ea0: $af
	or l                                             ; $4ea1: $b5
	and e                                            ; $4ea2: $a3
	ld c, a                                          ; $4ea3: $4f
	add hl, sp                                       ; $4ea4: $39
	ldh a, [c]                                       ; $4ea5: $f2
	ld d, h                                          ; $4ea6: $54
	ld d, e                                          ; $4ea7: $53
	ldh a, [c]                                       ; $4ea8: $f2
	ld c, l                                          ; $4ea9: $4d
	jr c, jr_08e_4eeb                                ; $4eaa: $38 $3f

	ld c, [hl]                                       ; $4eac: $4e

jr_08e_4ead:
	ld b, d                                          ; $4ead: $42
	ld c, h                                          ; $4eae: $4c
	and b                                            ; $4eaf: $a0
	cpl                                              ; $4eb0: $2f
	ld b, e                                          ; $4eb1: $43
	jp hl                                            ; $4eb2: $e9


	inc [hl]                                         ; $4eb3: $34
	and b                                            ; $4eb4: $a0
	db $ed                                           ; $4eb5: $ed
	ld l, l                                          ; $4eb6: $6d
	inc [hl]                                         ; $4eb7: $34
	ret nc                                           ; $4eb8: $d0

	and b                                            ; $4eb9: $a0
	ld b, b                                          ; $4eba: $40
	ld c, l                                          ; $4ebb: $4d
	ld e, e                                          ; $4ebc: $5b
	ld d, [hl]                                       ; $4ebd: $56
	xor h                                            ; $4ebe: $ac
	ret                                              ; $4ebf: $c9


	pop af                                           ; $4ec0: $f1
	ld h, $5c                                        ; $4ec1: $26 $5c
	ld d, d                                          ; $4ec3: $52
	ld a, $66                                        ; $4ec4: $3e $66
	add hl, sp                                       ; $4ec6: $39
	inc a                                            ; $4ec7: $3c
	and c                                            ; $4ec8: $a1
	cpl                                              ; $4ec9: $2f
	ld b, e                                          ; $4eca: $43
	db $ed                                           ; $4ecb: $ed

jr_08e_4ecc:
	ld d, a                                          ; $4ecc: $57
	xor h                                            ; $4ecd: $ac

jr_08e_4ece:
	ld [$cdca], a                                    ; $4ece: $ea $ca $cd
	and b                                            ; $4ed1: $a0
	cpl                                              ; $4ed2: $2f
	ld b, e                                          ; $4ed3: $43
	db $ed                                           ; $4ed4: $ed
	ld d, a                                          ; $4ed5: $57
	xor h                                            ; $4ed6: $ac
	ldh a, [c]                                       ; $4ed7: $f2
	db $10                                           ; $4ed8: $10
	ld b, d                                          ; $4ed9: $42
	push af                                          ; $4eda: $f5
	ld b, c                                          ; $4edb: $41
	ld d, a                                          ; $4edc: $57
	ld b, a                                          ; $4edd: $47
	call Call_08e_54a0                               ; $4ede: $cd $a0 $54
	add hl, sp                                       ; $4ee1: $39
	jr c, jr_08e_4f1d                                ; $4ee2: $38 $39

	ldh a, [$ee]                                     ; $4ee4: $f0 $ee
	ld h, d                                          ; $4ee6: $62
	inc de                                           ; $4ee7: $13
	pop af                                           ; $4ee8: $f1
	db $ed                                           ; $4ee9: $ed
	pop af                                           ; $4eea: $f1

jr_08e_4eeb:
	ld h, $51                                        ; $4eeb: $26 $51
	ld c, [hl]                                       ; $4eed: $4e
	db $ec                                           ; $4eee: $ec
	or $ac                                           ; $4eef: $f6 $ac
	ld a, a                                          ; $4ef1: $7f
	ldh a, [rTAC]                                    ; $4ef2: $f0 $07
	ld hl, sp-$30                                    ; $4ef4: $f8 $d0
	db $f4                                           ; $4ef6: $f4
	ld a, e                                          ; $4ef7: $7b
	ld c, h                                          ; $4ef8: $4c
	and b                                            ; $4ef9: $a0
	cpl                                              ; $4efa: $2f
	pop af                                           ; $4efb: $f1
	db $ed                                           ; $4efc: $ed
	pop af                                           ; $4efd: $f1
	ld h, $4b                                        ; $4efe: $26 $4b
	inc [hl]                                         ; $4f00: $34
	ld h, h                                          ; $4f01: $64
	ldh a, [c]                                       ; $4f02: $f2
	add h                                            ; $4f03: $84
	ld d, e                                          ; $4f04: $53
	ld d, c                                          ; $4f05: $51
	jr c, @+$41                                      ; $4f06: $38 $3f

	ld d, h                                          ; $4f08: $54
	ld a, [hl-]                                      ; $4f09: $3a
	jr c, jr_08e_4ead                                ; $4f0a: $38 $a1

	rst JumpTable                                          ; $4f0c: $c7
	xor c                                            ; $4f0d: $a9
	ldh a, [$31]                                     ; $4f0e: $f0 $31
	ld c, e                                          ; $4f10: $4b
	inc [hl]                                         ; $4f11: $34
	ld l, a                                          ; $4f12: $6f
	ld c, a                                          ; $4f13: $4f
	ld b, b                                          ; $4f14: $40
	add hl, sp                                       ; $4f15: $39
	ld [hl], a                                       ; $4f16: $77
	dec sp                                           ; $4f17: $3b
	ccf                                              ; $4f18: $3f
	dec a                                            ; $4f19: $3d
	ld b, d                                          ; $4f1a: $42
	and b                                            ; $4f1b: $a0
	jp hl                                            ; $4f1c: $e9


jr_08e_4f1d:
	db $e3                                           ; $4f1d: $e3
	xor b                                            ; $4f1e: $a8
	ldh a, [$31]                                     ; $4f1f: $f0 $31
	ld c, e                                          ; $4f21: $4b
	inc [hl]                                         ; $4f22: $34
	ld l, a                                          ; $4f23: $6f
	ld c, a                                          ; $4f24: $4f
	ld b, b                                          ; $4f25: $40
	add hl, sp                                       ; $4f26: $39
	ld [hl], a                                       ; $4f27: $77
	dec sp                                           ; $4f28: $3b
	ccf                                              ; $4f29: $3f
	dec a                                            ; $4f2a: $3d
	ld b, d                                          ; $4f2b: $42
	ld b, l                                          ; $4f2c: $45
	and b                                            ; $4f2d: $a0
	db $ec                                           ; $4f2e: $ec
	reti                                             ; $4f2f: $d9


	inc [hl]                                         ; $4f30: $34
	ld b, b                                          ; $4f31: $40
	add hl, sp                                       ; $4f32: $39
	ld c, d                                          ; $4f33: $4a
	ld a, $66                                        ; $4f34: $3e $66
	add hl, sp                                       ; $4f36: $39
	xor c                                            ; $4f37: $a9
	ld l, a                                          ; $4f38: $6f
	ld c, a                                          ; $4f39: $4f
	db $d3                                           ; $4f3a: $d3
	ld b, l                                          ; $4f3b: $45
	and b                                            ; $4f3c: $a0
	cpl                                              ; $4f3d: $2f
	add sp, $32                                      ; $4f3e: $e8 $32
	add hl, bc                                       ; $4f40: $09
	ret nz                                           ; $4f41: $c0

	xor b                                            ; $4f42: $a8
	ld l, a                                          ; $4f43: $6f
	ld b, b                                          ; $4f44: $40
	add hl, sp                                       ; $4f45: $39
	jr c, jr_08e_4f81                                ; $4f46: $38 $39

	ld b, d                                          ; $4f48: $42
	db $ec                                           ; $4f49: $ec
	ld c, c                                          ; $4f4a: $49
	inc a                                            ; $4f4b: $3c
	ld d, b                                          ; $4f4c: $50
	and b                                            ; $4f4d: $a0
	db $ec                                           ; $4f4e: $ec
	cpl                                              ; $4f4f: $2f
	xor b                                            ; $4f50: $a8
	ld l, a                                          ; $4f51: $6f
	inc [hl]                                         ; $4f52: $34
	ld b, b                                          ; $4f53: $40
	add hl, sp                                       ; $4f54: $39
	add d                                            ; $4f55: $82
	add hl, sp                                       ; $4f56: $39
	ld b, d                                          ; $4f57: $42
	db $ec                                           ; $4f58: $ec
	ld c, c                                          ; $4f59: $49
	ld b, d                                          ; $4f5a: $42
	ld b, l                                          ; $4f5b: $45
	and b                                            ; $4f5c: $a0
	ld l, a                                          ; $4f5d: $6f
	xor h                                            ; $4f5e: $ac
	ld b, b                                          ; $4f5f: $40
	add hl, sp                                       ; $4f60: $39
	jr c, jr_08e_4f9c                                ; $4f61: $38 $39

	ld b, d                                          ; $4f63: $42
	db $ec                                           ; $4f64: $ec
	ld c, c                                          ; $4f65: $49
	ld b, d                                          ; $4f66: $42
	and b                                            ; $4f67: $a0
	cpl                                              ; $4f68: $2f
	jp hl                                            ; $4f69: $e9


	ld c, [hl]                                       ; $4f6a: $4e
	add hl, bc                                       ; $4f6b: $09
	db $ec                                           ; $4f6c: $ec
	reti                                             ; $4f6d: $d9


	xor h                                            ; $4f6e: $ac
	ld b, b                                          ; $4f6f: $40
	add hl, sp                                       ; $4f70: $39
	ld [hl], a                                       ; $4f71: $77
	add hl, sp                                       ; $4f72: $39
	ld c, d                                          ; $4f73: $4a
	ld a, $66                                        ; $4f74: $3e $66
	add hl, sp                                       ; $4f76: $39
	and b                                            ; $4f77: $a0
	ldh a, [rSCY]                                    ; $4f78: $f0 $42
	ld [hl], h                                       ; $4f7a: $74
	ld e, c                                          ; $4f7b: $59
	xor h                                            ; $4f7c: $ac
	pop af                                           ; $4f7d: $f1
	cp d                                             ; $4f7e: $ba
	ld d, l                                          ; $4f7f: $55
	ld a, [hl-]                                      ; $4f80: $3a

jr_08e_4f81:
	dec sp                                           ; $4f81: $3b
	ccf                                              ; $4f82: $3f
	ld e, h                                          ; $4f83: $5c
	ld h, c                                          ; $4f84: $61
	ld d, [hl]                                       ; $4f85: $56
	dec sp                                           ; $4f86: $3b
	dec a                                            ; $4f87: $3d
	and b                                            ; $4f88: $a0
	ld a, a                                          ; $4f89: $7f
	ldh a, [rTAC]                                    ; $4f8a: $f0 $07
	ld d, e                                          ; $4f8c: $53
	ld b, l                                          ; $4f8d: $45
	ld d, l                                          ; $4f8e: $55
	ccf                                              ; $4f8f: $3f
	xor h                                            ; $4f90: $ac
	pop af                                           ; $4f91: $f1
	cp d                                             ; $4f92: $ba
	ld d, l                                          ; $4f93: $55
	ld a, [hl-]                                      ; $4f94: $3a
	dec sp                                           ; $4f95: $3b
	ccf                                              ; $4f96: $3f
	ld e, h                                          ; $4f97: $5c
	ld h, c                                          ; $4f98: $61
	ld d, [hl]                                       ; $4f99: $56
	dec sp                                           ; $4f9a: $3b
	dec a                                            ; $4f9b: $3d

jr_08e_4f9c:
	ld h, e                                          ; $4f9c: $63
	and b                                            ; $4f9d: $a0
	ldh a, [$2f]                                     ; $4f9e: $f0 $2f
	ld [hl], l                                       ; $4fa0: $75
	ld a, l                                          ; $4fa1: $7d
	ld a, [hl-]                                      ; $4fa2: $3a
	ldh a, [c]                                       ; $4fa3: $f2
	db $10                                           ; $4fa4: $10
	ld c, h                                          ; $4fa5: $4c
	xor b                                            ; $4fa6: $a8
	ld h, e                                          ; $4fa7: $63

Call_08e_4fa8:
	ld d, a                                          ; $4fa8: $57
	ld c, c                                          ; $4fa9: $49
	ldh a, [$3f]                                     ; $4faa: $f0 $3f
	ld b, a                                          ; $4fac: $47
	ld a, [hl-]                                      ; $4fad: $3a
	ld c, [hl]                                       ; $4fae: $4e
	ld h, e                                          ; $4faf: $63
	ld c, h                                          ; $4fb0: $4c
	and b                                            ; $4fb1: $a0
	cpl                                              ; $4fb2: $2f
	ld b, b                                          ; $4fb3: $40
	add hl, sp                                       ; $4fb4: $39
	ld b, h                                          ; $4fb5: $44
	ld c, h                                          ; $4fb6: $4c
	dec [hl]                                         ; $4fb7: $35
	ld [hl], d                                       ; $4fb8: $72
	ccf                                              ; $4fb9: $3f
	call $ed09                                       ; $4fba: $cd $09 $ed
	ld l, l                                          ; $4fbd: $6d
	inc [hl]                                         ; $4fbe: $34
	ret nc                                           ; $4fbf: $d0

	xor b                                            ; $4fc0: $a8
	xor $06                                          ; $4fc1: $ee $06
	ld b, a                                          ; $4fc3: $47
	ldh a, [$e7]                                     ; $4fc4: $f0 $e7
	dec sp                                           ; $4fc6: $3b
	ccf                                              ; $4fc7: $3f
	inc [hl]                                         ; $4fc8: $34
	ld [hl], d                                       ; $4fc9: $72
	ld d, d                                          ; $4fca: $52
	ld a, $66                                        ; $4fcb: $3e $66
	add hl, sp                                       ; $4fcd: $39
	and b                                            ; $4fce: $a0
	db $ed                                           ; $4fcf: $ed
	ld l, l                                          ; $4fd0: $6d
	xor b                                            ; $4fd1: $a8
	db $ed                                           ; $4fd2: $ed
	ld a, [bc]                                       ; $4fd3: $0a
	ld b, a                                          ; $4fd4: $47
	ldh a, [$e7]                                     ; $4fd5: $f0 $e7
	dec sp                                           ; $4fd7: $3b
	ccf                                              ; $4fd8: $3f
	inc [hl]                                         ; $4fd9: $34
	ld [hl], d                                       ; $4fda: $72
	ld d, d                                          ; $4fdb: $52
	ld a, $66                                        ; $4fdc: $3e $66
	add hl, sp                                       ; $4fde: $39
	and b                                            ; $4fdf: $a0
	cpl                                              ; $4fe0: $2f
	add sp, -$62                                     ; $4fe1: $e8 $9e
	add hl, bc                                       ; $4fe3: $09
	ld d, d                                          ; $4fe4: $52
	inc [hl]                                         ; $4fe5: $34
	ldh a, [$34]                                     ; $4fe6: $f0 $34
	ld b, a                                          ; $4fe8: $47
	db $ec                                           ; $4fe9: $ec
	ld [$a04c], sp                                   ; $4fea: $08 $4c $a0
	ld c, c                                          ; $4fed: $49
	inc [hl]                                         ; $4fee: $34
	push af                                          ; $4fef: $f5
	ld sp, $68f3                                     ; $4ff0: $31 $f3 $68
	ld c, h                                          ; $4ff3: $4c
	xor b                                            ; $4ff4: $a8
	ld l, e                                          ; $4ff5: $6b
	add d                                            ; $4ff6: $82
	dec sp                                           ; $4ff7: $3b
	ccf                                              ; $4ff8: $3f
	ld c, [hl]                                       ; $4ff9: $4e
	ld b, d                                          ; $4ffa: $42
	and c                                            ; $4ffb: $a1
	ld d, d                                          ; $4ffc: $52
	inc [hl]                                         ; $4ffd: $34
	db $ed                                           ; $4ffe: $ed
	ld e, a                                          ; $4fff: $5f
	ld c, e                                          ; $5000: $4b
	inc de                                           ; $5001: $13
	ld [$42de], a                                    ; $5002: $ea $de $42
	ld c, h                                          ; $5005: $4c
	and b                                            ; $5006: $a0
	cpl                                              ; $5007: $2f
	ld b, b                                          ; $5008: $40
	ld c, l                                          ; $5009: $4d
	ld e, e                                          ; $500a: $5b

jr_08e_500b:
	ld d, [hl]                                       ; $500b: $56
	inc [hl]                                         ; $500c: $34
	ldh a, [$3f]                                     ; $500d: $f0 $3f
	ld c, d                                          ; $500f: $4a
	ld c, a                                          ; $5010: $4f
	ldh a, [$bd]                                     ; $5011: $f0 $bd
	ld d, h                                          ; $5013: $54
	add hl, sp                                       ; $5014: $39
	inc a                                            ; $5015: $3c
	and c                                            ; $5016: $a1
	ld e, [hl]                                       ; $5017: $5e
	dec sp                                           ; $5018: $3b
	inc [hl]                                         ; $5019: $34
	ld l, d                                          ; $501a: $6a
	xor c                                            ; $501b: $a9
	jr c, jr_08e_5056                                ; $501c: $38 $38

	ldh a, [$a4]                                     ; $501e: $f0 $a4
	ld e, [hl]                                       ; $5020: $5e
	ld b, h                                          ; $5021: $44
	ld e, l                                          ; $5022: $5d
	ld e, d                                          ; $5023: $5a
	inc de                                           ; $5024: $13
	ldh a, [$ee]                                     ; $5025: $f0 $ee
	ldh a, [c]                                       ; $5027: $f2
	cp c                                             ; $5028: $b9
	ld d, e                                          ; $5029: $53
	db $ec                                           ; $502a: $ec
	dec bc                                           ; $502b: $0b
	and b                                            ; $502c: $a0
	ldh a, [$50]                                     ; $502d: $f0 $50
	ld [hl], e                                       ; $502f: $73
	ldh a, [$32]                                     ; $5030: $f0 $32
	db $ed                                           ; $5032: $ed
	ld a, l                                          ; $5033: $7d
	ldh a, [rWY]                                     ; $5034: $f0 $4a
	ldh a, [$c4]                                     ; $5036: $f0 $c4
	ldh a, [$3d]                                     ; $5038: $f0 $3d
	xor b                                            ; $503a: $a8
	ld c, d                                          ; $503b: $4a
	ld c, a                                          ; $503c: $4f
	inc [hl]                                         ; $503d: $34
	ldh a, [$ee]                                     ; $503e: $f0 $ee
	ldh a, [c]                                       ; $5040: $f2
	cp c                                             ; $5041: $b9
	ld d, e                                          ; $5042: $53
	ld a, [hl-]                                      ; $5043: $3a
	jr c, jr_08e_50a9                                ; $5044: $38 $63

	and b                                            ; $5046: $a0
	ldh a, [$3f]                                     ; $5047: $f0 $3f
	ld b, d                                          ; $5049: $42
	ldh a, [$ee]                                     ; $504a: $f0 $ee
	ldh a, [c]                                       ; $504c: $f2
	cp c                                             ; $504d: $b9
	ld h, d                                          ; $504e: $62
	xor h                                            ; $504f: $ac
	ldh a, [rHDMA1]                                  ; $5050: $f0 $51
	dec sp                                           ; $5052: $3b
	ccf                                              ; $5053: $3f
	ld d, l                                          ; $5054: $55
	ld c, l                                          ; $5055: $4d

jr_08e_5056:
	ld a, e                                          ; $5056: $7b
	ld b, l                                          ; $5057: $45
	inc a                                            ; $5058: $3c
	dec sp                                           ; $5059: $3b
	ldh [$a0], a                                     ; $505a: $e0 $a0
	ld [$a840], a                                    ; $505c: $ea $40 $a8
	ld c, d                                          ; $505f: $4a
	ld c, a                                          ; $5060: $4f
	inc [hl]                                         ; $5061: $34
	pop af                                           ; $5062: $f1
	db $ed                                           ; $5063: $ed
	dec sp                                           ; $5064: $3b
	ccf                                              ; $5065: $3f
	ld a, $52                                        ; $5066: $3e $52
	add hl, sp                                       ; $5068: $39
	ld b, d                                          ; $5069: $42
	ld d, e                                          ; $506a: $53
	ldh a, [$8d]                                     ; $506b: $f0 $8d
	ldh a, [$9e]                                     ; $506d: $f0 $9e
	ld c, h                                          ; $506f: $4c
	and b                                            ; $5070: $a0
	cpl                                              ; $5071: $2f
	add sp, $66                                      ; $5072: $e8 $66
	add hl, bc                                       ; $5074: $09
	call c, Call_08e_40a8                            ; $5075: $dc $a8 $40
	ld c, l                                          ; $5078: $4d
	inc [hl]                                         ; $5079: $34
	ldh a, [$3f]                                     ; $507a: $f0 $3f
	ld b, a                                          ; $507c: $47
	ldh a, [rAUD1LOW]                                ; $507d: $f0 $13
	jr c, jr_08e_500b                                ; $507f: $38 $8a

	ld a, $58                                        ; $5081: $3e $58
	inc a                                            ; $5083: $3c
	ld c, a                                          ; $5084: $4f
	ld c, h                                          ; $5085: $4c
	and b                                            ; $5086: $a0
	db $eb                                           ; $5087: $eb
	ld [hl], h                                       ; $5088: $74
	db $ec                                           ; $5089: $ec
	ret c                                            ; $508a: $d8

	xor b                                            ; $508b: $a8
	ld h, e                                          ; $508c: $63
	ld d, a                                          ; $508d: $57
	ld c, c                                          ; $508e: $49
	db $eb                                           ; $508f: $eb
	call Call_08e_4653                               ; $5090: $cd $53 $46
	ld c, [hl]                                       ; $5093: $4e
	ld b, d                                          ; $5094: $42
	ld c, h                                          ; $5095: $4c
	and b                                            ; $5096: $a0
	ldh a, [$5a]                                     ; $5097: $f0 $5a
	add l                                            ; $5099: $85
	xor h                                            ; $509a: $ac
	ldh a, [$c0]                                     ; $509b: $f0 $c0
	ldh a, [$f0]                                     ; $509d: $f0 $f0
	ld c, c                                          ; $509f: $49
	db $eb                                           ; $50a0: $eb
	call Call_08e_4653                               ; $50a1: $cd $53 $46
	ld c, [hl]                                       ; $50a4: $4e
	ld b, d                                          ; $50a5: $42
	ld c, h                                          ; $50a6: $4c
	and b                                            ; $50a7: $a0
	cpl                                              ; $50a8: $2f

jr_08e_50a9:
	add sp, -$60                                     ; $50a9: $e8 $a0
	add hl, bc                                       ; $50ab: $09
	ld b, b                                          ; $50ac: $40
	ld c, l                                          ; $50ad: $4d
	ld c, e                                          ; $50ae: $4b
	inc [hl]                                         ; $50af: $34
	ld b, b                                          ; $50b0: $40
	add hl, sp                                       ; $50b1: $39
	ld b, h                                          ; $50b2: $44
	ld e, l                                          ; $50b3: $5d
	ld e, d                                          ; $50b4: $5a
	ld c, h                                          ; $50b5: $4c
	and b                                            ; $50b6: $a0
	ld b, b                                          ; $50b7: $40
	ld b, c                                          ; $50b8: $41
	ld a, [hl-]                                      ; $50b9: $3a
	sbc d                                            ; $50ba: $9a
	xor h                                            ; $50bb: $ac
	db $eb                                           ; $50bc: $eb
	ld [hl], h                                       ; $50bd: $74
	ld h, e                                          ; $50be: $63
	ld b, l                                          ; $50bf: $45
	and b                                            ; $50c0: $a0
	db $eb                                           ; $50c1: $eb
	call $f095                                       ; $50c2: $cd $95 $f0
	rra                                              ; $50c5: $1f
	ld c, h                                          ; $50c6: $4c
	and b                                            ; $50c7: $a0
	cpl                                              ; $50c8: $2f
	add sp, $67                                      ; $50c9: $e8 $67
	add hl, bc                                       ; $50cb: $09
	ld b, b                                          ; $50cc: $40
	ld c, l                                          ; $50cd: $4d
	ld c, e                                          ; $50ce: $4b
	di                                               ; $50cf: $f3
	ld c, e                                          ; $50d0: $4b
	dec sp                                           ; $50d1: $3b
	ccf                                              ; $50d2: $3f
	ld c, [hl]                                       ; $50d3: $4e
	ld e, l                                          ; $50d4: $5d
	ld e, d                                          ; $50d5: $5a
	ld c, h                                          ; $50d6: $4c
	and b                                            ; $50d7: $a0
	ld d, d                                          ; $50d8: $52
	inc [hl]                                         ; $50d9: $34
	ld b, b                                          ; $50da: $40
	ld c, l                                          ; $50db: $4d
	ld c, a                                          ; $50dc: $4f
	call c, Call_08e_40a0                            ; $50dd: $dc $a0 $40
	ld c, l                                          ; $50e0: $4d
	ld c, a                                          ; $50e1: $4f
	call c, Call_08e_40a0                            ; $50e2: $dc $a0 $40
	ld c, l                                          ; $50e5: $4d
	ld e, e                                          ; $50e6: $5b
	ld d, [hl]                                       ; $50e7: $56
	xor h                                            ; $50e8: $ac
	ld e, d                                          ; $50e9: $5a
	ld d, h                                          ; $50ea: $54
	ld b, a                                          ; $50eb: $47
	pop af                                           ; $50ec: $f1
	ld c, $38                                        ; $50ed: $0e $38
	ldh a, [$2c]                                     ; $50ef: $f0 $2c
	ld b, a                                          ; $50f1: $47
	ld h, a                                          ; $50f2: $67
	ld d, l                                          ; $50f3: $55
	and c                                            ; $50f4: $a1
	cpl                                              ; $50f5: $2f
	add sp, -$29                                     ; $50f6: $e8 $d7
	add hl, bc                                       ; $50f8: $09
	db $ed                                           ; $50f9: $ed
	ld l, l                                          ; $50fa: $6d
	inc [hl]                                         ; $50fb: $34
	ld [$a0a9], a                                    ; $50fc: $ea $a9 $a0
	cpl                                              ; $50ff: $2f
	add sp, -$28                                     ; $5100: $e8 $d8
	add hl, bc                                       ; $5102: $09
	cpl                                              ; $5103: $2f
	add sp, -$27                                     ; $5104: $e8 $d9
	add hl, bc                                       ; $5106: $09
	db $eb                                           ; $5107: $eb
	add c                                            ; $5108: $81
	ld e, b                                          ; $5109: $58
	ld b, c                                          ; $510a: $41
	xor c                                            ; $510b: $a9
	ldh a, [$34]                                     ; $510c: $f0 $34
	ld b, a                                          ; $510e: $47
	db $ec                                           ; $510f: $ec
	ld [$a048], sp                                   ; $5110: $08 $48 $a0
	db $ec                                           ; $5113: $ec
	cpl                                              ; $5114: $2f
	inc [hl]                                         ; $5115: $34
	ld [hl], b                                       ; $5116: $70
	ld [hl], c                                       ; $5117: $71
	ld b, c                                          ; $5118: $41
	ld c, h                                          ; $5119: $4c
	xor b                                            ; $511a: $a8
	ld c, a                                          ; $511b: $4f
	add hl, sp                                       ; $511c: $39
	ret                                              ; $511d: $c9


	inc de                                           ; $511e: $13
	ld [hl], d                                       ; $511f: $72
	ccf                                              ; $5120: $3f
	ld e, h                                          ; $5121: $5c
	ccf                                              ; $5122: $3f
	ld c, a                                          ; $5123: $4f

jr_08e_5124:
	db $ec                                           ; $5124: $ec
	ld a, [bc]                                       ; $5125: $0a
	and c                                            ; $5126: $a1
	cpl                                              ; $5127: $2f
	add sp, $3c                                      ; $5128: $e8 $3c
	add hl, bc                                       ; $512a: $09
	db $eb                                           ; $512b: $eb
	ld e, l                                          ; $512c: $5d
	ld b, [hl]                                       ; $512d: $46
	ld d, a                                          ; $512e: $57
	ld d, e                                          ; $512f: $53
	ld c, c                                          ; $5130: $49
	add hl, sp                                       ; $5131: $39
	xor b                                            ; $5132: $a8
	ldh a, [$29]                                     ; $5133: $f0 $29
	ld a, $38                                        ; $5135: $3e $38
	ld h, e                                          ; $5137: $63
	and b                                            ; $5138: $a0
	db $eb                                           ; $5139: $eb
	ld e, l                                          ; $513a: $5d
	ld b, [hl]                                       ; $513b: $46
	ld d, a                                          ; $513c: $57
	ld d, e                                          ; $513d: $53
	ld c, c                                          ; $513e: $49
	add hl, sp                                       ; $513f: $39
	xor b                                            ; $5140: $a8
	ld b, b                                          ; $5141: $40
	ld c, l                                          ; $5142: $4d
	ld e, e                                          ; $5143: $5b
	ld d, [hl]                                       ; $5144: $56
	inc [hl]                                         ; $5145: $34
	ld [hl], d                                       ; $5146: $72
	ccf                                              ; $5147: $3f
	ld d, l                                          ; $5148: $55
	ld c, [hl]                                       ; $5149: $4e
	ld h, e                                          ; $514a: $63
	ld c, h                                          ; $514b: $4c
	and b                                            ; $514c: $a0
	db $eb                                           ; $514d: $eb
	ld e, l                                          ; $514e: $5d
	inc [hl]                                         ; $514f: $34
	ld b, [hl]                                       ; $5150: $46
	ld d, a                                          ; $5151: $57

jr_08e_5152:
	ld d, e                                          ; $5152: $53
	ld c, c                                          ; $5153: $49
	add hl, sp                                       ; $5154: $39
	and b                                            ; $5155: $a0
	cpl                                              ; $5156: $2f
	add sp, $19                                      ; $5157: $e8 $19
	add hl, bc                                       ; $5159: $09
	pop af                                           ; $515a: $f1
	daa                                              ; $515b: $27
	inc [hl]                                         ; $515c: $34
	db $ec                                           ; $515d: $ec
	cpl                                              ; $515e: $2f
	xor b                                            ; $515f: $a8
	db $eb                                           ; $5160: $eb
	ccf                                              ; $5161: $3f
	and b                                            ; $5162: $a0
	db $ec                                           ; $5163: $ec
	cpl                                              ; $5164: $2f
	xor b                                            ; $5165: $a8
	ld e, e                                          ; $5166: $5b
	ld d, [hl]                                       ; $5167: $56
	ld b, [hl]                                       ; $5168: $46
	inc [hl]                                         ; $5169: $34
	jr c, jr_08e_51a4                                ; $516a: $38 $38

	ld h, e                                          ; $516c: $63
	and b                                            ; $516d: $a0
	ld b, b                                          ; $516e: $40
	add hl, sp                                       ; $516f: $39
	xor b                                            ; $5170: $a8
	ld e, e                                          ; $5171: $5b
	ld d, [hl]                                       ; $5172: $56
	ld b, [hl]                                       ; $5173: $46
	inc [hl]                                         ; $5174: $34
	jr c, jr_08e_51af                                ; $5175: $38 $38

	ld h, e                                          ; $5177: $63
	and b                                            ; $5178: $a0
	cpl                                              ; $5179: $2f
	ld c, a                                          ; $517a: $4f
	add hl, sp                                       ; $517b: $39
	ret                                              ; $517c: $c9


	ld c, h                                          ; $517d: $4c
	add hl, bc                                       ; $517e: $09
	db $eb                                           ; $517f: $eb
	ld e, l                                          ; $5180: $5d
	xor b                                            ; $5181: $a8
	sbc $c9                                          ; $5182: $de $c9
	ld b, h                                          ; $5184: $44
	ld e, l                                          ; $5185: $5d
	ld b, h                                          ; $5186: $44
	inc a                                            ; $5187: $3c
	ld d, b                                          ; $5188: $50
	and b                                            ; $5189: $a0
	db $eb                                           ; $518a: $eb
	ld e, l                                          ; $518b: $5d
	xor b                                            ; $518c: $a8
	ld b, [hl]                                       ; $518d: $46
	ld d, a                                          ; $518e: $57
	ld d, e                                          ; $518f: $53
	ld c, c                                          ; $5190: $49
	add hl, sp                                       ; $5191: $39
	and b                                            ; $5192: $a0
	ld b, b                                          ; $5193: $40
	ld c, l                                          ; $5194: $4d
	ld e, e                                          ; $5195: $5b
	ld d, [hl]                                       ; $5196: $56
	xor h                                            ; $5197: $ac
	ret                                              ; $5198: $c9


	ld h, a                                          ; $5199: $67
	dec sp                                           ; $519a: $3b
	ccf                                              ; $519b: $3f
	ld d, l                                          ; $519c: $55
	ld c, [hl]                                       ; $519d: $4e
	ld h, e                                          ; $519e: $63
	ld c, h                                          ; $519f: $4c
	and b                                            ; $51a0: $a0
	add b                                            ; $51a1: $80
	jr c, jr_08e_5124                                ; $51a2: $38 $80

jr_08e_51a4:
	jr c, jr_08e_5152                                ; $51a4: $38 $ac

	adc $f1                                          ; $51a6: $ce $f1
	ld c, $3b                                        ; $51a8: $0e $3b
	ld h, c                                          ; $51aa: $61
	ld d, [hl]                                       ; $51ab: $56
	dec sp                                           ; $51ac: $3b
	dec a                                            ; $51ad: $3d
	ld h, e                                          ; $51ae: $63

jr_08e_51af:
	and b                                            ; $51af: $a0
	cpl                                              ; $51b0: $2f
	ld [$0947], a                                    ; $51b1: $ea $47 $09
	db $eb                                           ; $51b4: $eb
	ld e, l                                          ; $51b5: $5d
	ld b, [hl]                                       ; $51b6: $46
	ld d, a                                          ; $51b7: $57
	ld d, e                                          ; $51b8: $53
	ld c, c                                          ; $51b9: $49
	add hl, sp                                       ; $51ba: $39
	xor b                                            ; $51bb: $a8
	ld b, b                                          ; $51bc: $40
	add hl, sp                                       ; $51bd: $39
	add d                                            ; $51be: $82
	dec sp                                           ; $51bf: $3b
	ccf                                              ; $51c0: $3f
	ld d, l                                          ; $51c1: $55
	ld c, l                                          ; $51c2: $4d
	ld c, [hl]                                       ; $51c3: $4e
	ld c, c                                          ; $51c4: $49
	inc de                                           ; $51c5: $13
	ld [hl], a                                       ; $51c6: $77
	dec sp                                           ; $51c7: $3b
	ccf                                              ; $51c8: $3f
	dec a                                            ; $51c9: $3d
	ld h, e                                          ; $51ca: $63
	and b                                            ; $51cb: $a0
	db $eb                                           ; $51cc: $eb
	ld e, l                                          ; $51cd: $5d
	xor b                                            ; $51ce: $a8
	ld b, b                                          ; $51cf: $40
	add hl, sp                                       ; $51d0: $39
	add d                                            ; $51d1: $82
	dec sp                                           ; $51d2: $3b
	ccf                                              ; $51d3: $3f
	ld d, l                                          ; $51d4: $55
	ld c, l                                          ; $51d5: $4d
	ld c, [hl]                                       ; $51d6: $4e
	ld b, d                                          ; $51d7: $42
	xor h                                            ; $51d8: $ac
	db $ec                                           ; $51d9: $ec
	db $dd                                           ; $51da: $dd
	ld b, d                                          ; $51db: $42
	ld b, l                                          ; $51dc: $45

jr_08e_51dd:
	and b                                            ; $51dd: $a0
	db $eb                                           ; $51de: $eb
	ld e, l                                          ; $51df: $5d
	xor b                                            ; $51e0: $a8
	ld b, b                                          ; $51e1: $40
	ld c, l                                          ; $51e2: $4d
	ld e, e                                          ; $51e3: $5b
	ld d, [hl]                                       ; $51e4: $56
	inc [hl]                                         ; $51e5: $34
	ldh a, [c]                                       ; $51e6: $f2
	ld a, [hl-]                                      ; $51e7: $3a
	ldh a, [rTAC]                                    ; $51e8: $f0 $07
	ld b, h                                          ; $51ea: $44
	ld e, l                                          ; $51eb: $5d
	ld c, h                                          ; $51ec: $4c
	and b                                            ; $51ed: $a0
	cpl                                              ; $51ee: $2f
	add sp, $3d                                      ; $51ef: $e8 $3d
	add hl, bc                                       ; $51f1: $09
	db $ec                                           ; $51f2: $ec
	cpl                                              ; $51f3: $2f
	inc [hl]                                         ; $51f4: $34

jr_08e_51f5:
	ld [hl], b                                       ; $51f5: $70
	ld [hl], c                                       ; $51f6: $71
	ld b, c                                          ; $51f7: $41
	ld c, h                                          ; $51f8: $4c

jr_08e_51f9:
	xor b                                            ; $51f9: $a8
	ld l, d                                          ; $51fa: $6a
	ldh a, [$0d]                                     ; $51fb: $f0 $0d
	inc a                                            ; $51fd: $3c
	ld d, b                                          ; $51fe: $50
	ld a, a                                          ; $51ff: $7f
	ld h, d                                          ; $5200: $62
	ldh a, [$9a]                                     ; $5201: $f0 $9a
	ld e, l                                          ; $5203: $5d
	ld c, [hl]                                       ; $5204: $4e
	ld h, e                                          ; $5205: $63
	and b                                            ; $5206: $a0
	ldh a, [$34]                                     ; $5207: $f0 $34
	ld b, a                                          ; $5209: $47
	ld a, [hl]                                       ; $520a: $7e
	jr c, jr_08e_51f9                                ; $520b: $38 $ec

	ret c                                            ; $520d: $d8

	xor b                                            ; $520e: $a8
	ld l, a                                          ; $520f: $6f
	ld b, d                                          ; $5210: $42
	ldh a, [$6f]                                     ; $5211: $f0 $6f
	ldh a, [$0b]                                     ; $5213: $f0 $0b
	ld b, h                                          ; $5215: $44
	ld h, e                                          ; $5216: $63
	and b                                            ; $5217: $a0
	ld b, b                                          ; $5218: $40
	add hl, sp                                       ; $5219: $39
	xor c                                            ; $521a: $a9
	call nc, $d8ec                                   ; $521b: $d4 $ec $d8
	and b                                            ; $521e: $a0
	cpl                                              ; $521f: $2f
	add sp, $60                                      ; $5220: $e8 $60
	add hl, bc                                       ; $5222: $09
	ld b, b                                          ; $5223: $40
	ld c, l                                          ; $5224: $4d
	ld e, e                                          ; $5225: $5b
	ld d, [hl]                                       ; $5226: $56
	xor h                                            ; $5227: $ac
	ld [$3ca9], a                                    ; $5228: $ea $a9 $3c
	and c                                            ; $522b: $a1
	db $ec                                           ; $522c: $ec
	dec h                                            ; $522d: $25
	xor h                                            ; $522e: $ac
	ldh a, [c]                                       ; $522f: $f2
	ld a, [hl-]                                      ; $5230: $3a
	ldh a, [rTAC]                                    ; $5231: $f0 $07
	ldh a, [rHDMA1]                                  ; $5233: $f0 $51
	dec sp                                           ; $5235: $3b
	ccf                                              ; $5236: $3f
	ld d, l                                          ; $5237: $55
	ld c, l                                          ; $5238: $4d
	ld a, [hl-]                                      ; $5239: $3a
	jr c, jr_08e_51dd                                ; $523a: $38 $a1

	db $eb                                           ; $523c: $eb
	sub $a8                                          ; $523d: $d6 $a8
	ret                                              ; $523f: $c9


	inc [hl]                                         ; $5240: $34
	db $eb                                           ; $5241: $eb
	jr c, jr_08e_52a7                                ; $5242: $38 $63

	ld c, h                                          ; $5244: $4c
	and b                                            ; $5245: $a0
	ld c, h                                          ; $5246: $4c
	add l                                            ; $5247: $85
	inc [hl]                                         ; $5248: $34
	ld d, h                                          ; $5249: $54
	ld c, l                                          ; $524a: $4d
	xor h                                            ; $524b: $ac
	jr c, @+$3a                                      ; $524c: $38 $38

	ld c, c                                          ; $524e: $49
	ld [hl], a                                       ; $524f: $77
	ld h, e                                          ; $5250: $63
	ld a, [hl-]                                      ; $5251: $3a
	jr c, jr_08e_51f5                                ; $5252: $38 $a1

	cpl                                              ; $5254: $2f
	xor $1f                                          ; $5255: $ee $1f
	inc [hl]                                         ; $5257: $34
	db $ec                                           ; $5258: $ec
	pop hl                                           ; $5259: $e1
	ld b, a                                          ; $525a: $47
	ld b, l                                          ; $525b: $45
	ld d, l                                          ; $525c: $55
	ldh a, [rPCM12]                                  ; $525d: $f0 $76
	ldh a, [rTMA]                                    ; $525f: $f0 $06
	add hl, sp                                       ; $5261: $39
	ld b, l                                          ; $5262: $45
	add hl, bc                                       ; $5263: $09
	db $eb                                           ; $5264: $eb
	ld e, l                                          ; $5265: $5d
	inc [hl]                                         ; $5266: $34
	ld b, [hl]                                       ; $5267: $46
	ld d, a                                          ; $5268: $57
	ld d, e                                          ; $5269: $53
	ld c, c                                          ; $526a: $49
	add hl, sp                                       ; $526b: $39
	xor b                                            ; $526c: $a8
	ld d, c                                          ; $526d: $51
	ld [hl], b                                       ; $526e: $70
	ld d, l                                          ; $526f: $55
	ldh a, [$29]                                     ; $5270: $f0 $29
	ld a, $38                                        ; $5272: $3e $38
	ld h, e                                          ; $5274: $63
	and b                                            ; $5275: $a0
	db $ec                                           ; $5276: $ec
	scf                                              ; $5277: $37
	inc [hl]                                         ; $5278: $34
	adc b                                            ; $5279: $88
	sub c                                            ; $527a: $91
	xor c                                            ; $527b: $a9
	ldh a, [$29]                                     ; $527c: $f0 $29
	ld a, $38                                        ; $527e: $3e $38
	ld h, e                                          ; $5280: $63
	and b                                            ; $5281: $a0
	db $eb                                           ; $5282: $eb
	ld e, l                                          ; $5283: $5d
	xor b                                            ; $5284: $a8
	ldh a, [$29]                                     ; $5285: $f0 $29
	ld a, $38                                        ; $5287: $3e $38
	ld h, e                                          ; $5289: $63
	and b                                            ; $528a: $a0
	cpl                                              ; $528b: $2f
	ld [$0953], a                                    ; $528c: $ea $53 $09
	rst JumpTable                                          ; $528f: $c7
	xor c                                            ; $5290: $a9
	ld b, [hl]                                       ; $5291: $46
	ld a, [hl-]                                      ; $5292: $3a
	dec a                                            ; $5293: $3d
	ld c, e                                          ; $5294: $4b
	ld b, b                                          ; $5295: $40
	add hl, sp                                       ; $5296: $39
	ld [hl], a                                       ; $5297: $77
	xor $1f                                          ; $5298: $ee $1f
	ld b, h                                          ; $529a: $44
	and b                                            ; $529b: $a0
	ld b, b                                          ; $529c: $40
	add hl, sp                                       ; $529d: $39
	xor c                                            ; $529e: $a9
	ld h, e                                          ; $529f: $63

Call_08e_52a0:
	ld d, a                                          ; $52a0: $57
	ld c, c                                          ; $52a1: $49

jr_08e_52a2:
	jr c, jr_08e_52dc                                ; $52a2: $38 $38

	db $ec                                           ; $52a4: $ec
	ret c                                            ; $52a5: $d8

	and b                                            ; $52a6: $a0

jr_08e_52a7:
	db $ed                                           ; $52a7: $ed
	ld e, a                                          ; $52a8: $5f
	ld b, d                                          ; $52a9: $42
	ldh a, [$78]                                     ; $52aa: $f0 $78
	ldh a, [$f4]                                     ; $52ac: $f0 $f4
	ld d, e                                          ; $52ae: $53
	inc de                                           ; $52af: $13
	ldh a, [rTMA]                                    ; $52b0: $f0 $06
	ld h, e                                          ; $52b2: $63
	ld a, [hl-]                                      ; $52b3: $3a
	jr c, jr_08e_52a2                                ; $52b4: $38 $ec

	ld [de], a                                       ; $52b6: $12
	and b                                            ; $52b7: $a0
	cpl                                              ; $52b8: $2f
	ld c, d                                          ; $52b9: $4a
	ld c, a                                          ; $52ba: $4f
	inc [hl]                                         ; $52bb: $34
	ld b, [hl]                                       ; $52bc: $46
	ld c, l                                          ; $52bd: $4d
	ld c, a                                          ; $52be: $4f
	jr c, jr_08e_52f9                                ; $52bf: $38 $38

	ld b, c                                          ; $52c1: $41
	db $ec                                           ; $52c2: $ec
	ret c                                            ; $52c3: $d8

	and c                                            ; $52c4: $a1
	ldh a, [$5a]                                     ; $52c5: $f0 $5a
	add l                                            ; $52c7: $85
	inc [hl]                                         ; $52c8: $34
	ld b, b                                          ; $52c9: $40
	ld c, l                                          ; $52ca: $4d
	ld c, a                                          ; $52cb: $4f
	ld a, [hl]                                       ; $52cc: $7e
	jr c, jr_08e_5332                                ; $52cd: $38 $63

	ld c, h                                          ; $52cf: $4c
	and b                                            ; $52d0: $a0
	ld b, b                                          ; $52d1: $40
	ld c, l                                          ; $52d2: $4d
	ld c, a                                          ; $52d3: $4f
	jr c, jr_08e_530e                                ; $52d4: $38 $38

	ld h, e                                          ; $52d6: $63
	ld c, h                                          ; $52d7: $4c
	xor b                                            ; $52d8: $a8
	ld e, d                                          ; $52d9: $5a
	dec sp                                           ; $52da: $3b
	ld h, c                                          ; $52db: $61

jr_08e_52dc:
	ld d, e                                          ; $52dc: $53
	db $ec                                           ; $52dd: $ec
	ld a, [bc]                                       ; $52de: $0a
	and c                                            ; $52df: $a1
	xor $1f                                          ; $52e0: $ee $1f
	inc [hl]                                         ; $52e2: $34
	ld b, b                                          ; $52e3: $40
	ld c, l                                          ; $52e4: $4d
	ld c, a                                          ; $52e5: $4f
	ld a, [hl]                                       ; $52e6: $7e
	jr c, jr_08e_5346                                ; $52e7: $38 $5d

	ld e, d                                          ; $52e9: $5a
	xor h                                            ; $52ea: $ac
	ld l, a                                          ; $52eb: $6f
	ld c, e                                          ; $52ec: $4b
	db $ec                                           ; $52ed: $ec
	xor $42                                          ; $52ee: $ee $42
	ldh a, [$38]                                     ; $52f0: $f0 $38
	ld d, e                                          ; $52f2: $53
	adc e                                            ; $52f3: $8b
	ld e, h                                          ; $52f4: $5c
	ld b, l                                          ; $52f5: $45
	and b                                            ; $52f6: $a0
	ld l, a                                          ; $52f7: $6f
	ld b, a                                          ; $52f8: $47

jr_08e_52f9:
	ldh a, [rPCM12]                                  ; $52f9: $f0 $76
	ldh a, [rTMA]                                    ; $52fb: $f0 $06
	add hl, sp                                       ; $52fd: $39
	db $eb                                           ; $52fe: $eb
	and b                                            ; $52ff: $a0
	xor h                                            ; $5300: $ac
	ld e, d                                          ; $5301: $5a
	ld c, l                                          ; $5302: $4d
	ld b, h                                          ; $5303: $44
	ld c, c                                          ; $5304: $49
	ld [hl], a                                       ; $5305: $77
	add hl, sp                                       ; $5306: $39
	and c                                            ; $5307: $a1
	cpl                                              ; $5308: $2f
	add sp, -$6b                                     ; $5309: $e8 $95
	and c                                            ; $530b: $a1
	db $ec                                           ; $530c: $ec
	reti                                             ; $530d: $d9


jr_08e_530e:
	xor h                                            ; $530e: $ac
	ldh a, [c]                                       ; $530f: $f2
	ld e, l                                          ; $5310: $5d
	ld b, c                                          ; $5311: $41
	ld c, d                                          ; $5312: $4a
	ld b, l                                          ; $5313: $45
	inc a                                            ; $5314: $3c
	dec sp                                           ; $5315: $3b
	dec a                                            ; $5316: $3d
	ld h, e                                          ; $5317: $63
	and b                                            ; $5318: $a0
	ldh a, [$50]                                     ; $5319: $f0 $50
	ld [hl], e                                       ; $531b: $73
	ldh a, [$32]                                     ; $531c: $f0 $32
	xor b                                            ; $531e: $a8
	ld l, a                                          ; $531f: $6f

jr_08e_5320:
	ld c, a                                          ; $5320: $4f
	ld a, [hl]                                       ; $5321: $7e
	jr c, jr_08e_536d                                ; $5322: $38 $49

	ld [hl], a                                       ; $5324: $77
	dec sp                                           ; $5325: $3b
	db $ec                                           ; $5326: $ec
	add hl, de                                       ; $5327: $19
	and b                                            ; $5328: $a0
	ld h, e                                          ; $5329: $63
	ld d, a                                          ; $532a: $57
	ld c, c                                          ; $532b: $49
	ldh a, [$7b]                                     ; $532c: $f0 $7b
	ld h, l                                          ; $532e: $65
	add e                                            ; $532f: $83
	inc de                                           ; $5330: $13
	ld a, [hl]                                       ; $5331: $7e

jr_08e_5332:
	jr c, jr_08e_5320                                ; $5332: $38 $ec

	ret c                                            ; $5334: $d8

	and b                                            ; $5335: $a0
	cpl                                              ; $5336: $2f
	add sp, $74                                      ; $5337: $e8 $74
	and c                                            ; $5339: $a1
	ldh a, [$5c]                                     ; $533a: $f0 $5c
	ld d, l                                          ; $533c: $55
	ld c, e                                          ; $533d: $4b
	ld a, [hl-]                                      ; $533e: $3a
	jr c, @+$43                                      ; $533f: $38 $41

	ld b, h                                          ; $5341: $44
	ld e, l                                          ; $5342: $5d

jr_08e_5343:
	ld e, d                                          ; $5343: $5a
	ld c, h                                          ; $5344: $4c
	and b                                            ; $5345: $a0

jr_08e_5346:
	ld b, [hl]                                       ; $5346: $46
	ld a, [hl-]                                      ; $5347: $3a
	dec a                                            ; $5348: $3d
	ld c, c                                          ; $5349: $49
	ld c, e                                          ; $534a: $4b
	xor h                                            ; $534b: $ac
	ldh a, [$7b]                                     ; $534c: $f0 $7b
	ld h, l                                          ; $534e: $65
	add e                                            ; $534f: $83
	ld d, e                                          ; $5350: $53
	ldh a, [rTMA]                                    ; $5351: $f0 $06
	ld h, e                                          ; $5353: $63
	ld a, [hl-]                                      ; $5354: $3a
	jr c, jr_08e_5343                                ; $5355: $38 $ec

	ld [de], a                                       ; $5357: $12
	and b                                            ; $5358: $a0
	ldh a, [rAUD4LEN]                                ; $5359: $f0 $20
	ld [hl], e                                       ; $535b: $73
	ldh a, [$32]                                     ; $535c: $f0 $32
	ldh a, [$7b]                                     ; $535e: $f0 $7b
	ld h, l                                          ; $5360: $65
	add e                                            ; $5361: $83
	xor b                                            ; $5362: $a8
	ld b, [hl]                                       ; $5363: $46
	ld a, [hl-]                                      ; $5364: $3a
	dec a                                            ; $5365: $3d
	ld c, e                                          ; $5366: $4b
	ld d, h                                          ; $5367: $54
	add hl, sp                                       ; $5368: $39
	jr c, jr_08e_53a4                                ; $5369: $38 $39

	ld b, d                                          ; $536b: $42
	ld d, e                                          ; $536c: $53

jr_08e_536d:
	inc de                                           ; $536d: $13
	adc e                                            ; $536e: $8b
	ld l, h                                          ; $536f: $6c
	ld a, [hl-]                                      ; $5370: $3a
	ld b, d                                          ; $5371: $42
	ld c, h                                          ; $5372: $4c
	and b                                            ; $5373: $a0
	cpl                                              ; $5374: $2f
	jp hl                                            ; $5375: $e9


	ld e, a                                          ; $5376: $5f
	and c                                            ; $5377: $a1
	ldh a, [$5a]                                     ; $5378: $f0 $5a
	add l                                            ; $537a: $85
	inc [hl]                                         ; $537b: $34
	ld h, e                                          ; $537c: $63
	ld d, a                                          ; $537d: $57
	ld c, c                                          ; $537e: $49
	ldh a, [$8a]                                     ; $537f: $f0 $8a
	ldh a, [rHDMA2]                                  ; $5381: $f0 $52
	jr c, jr_08e_53d1                                ; $5383: $38 $4c

	xor b                                            ; $5385: $a8
	ldh a, [rPCM12]                                  ; $5386: $f0 $76
	ldh a, [rTMA]                                    ; $5388: $f0 $06
	add hl, sp                                       ; $538a: $39
	inc a                                            ; $538b: $3c
	ld a, [hl-]                                      ; $538c: $3a
	and c                                            ; $538d: $a1
	ld h, e                                          ; $538e: $63
	ld d, a                                          ; $538f: $57
	ld c, c                                          ; $5390: $49
	ldh a, [$8a]                                     ; $5391: $f0 $8a
	ldh a, [rHDMA2]                                  ; $5393: $f0 $52
	jr c, jr_08e_53e3                                ; $5395: $38 $4c

	and b                                            ; $5397: $a0
	ldh a, [$8a]                                     ; $5398: $f0 $8a
	ldh a, [rHDMA2]                                  ; $539a: $f0 $52
	jr c, jr_08e_53fb                                ; $539c: $38 $5d

	ld e, d                                          ; $539e: $5a
	xor h                                            ; $539f: $ac
	ld l, a                                          ; $53a0: $6f
	ld b, a                                          ; $53a1: $47
	ldh a, [rPCM12]                                  ; $53a2: $f0 $76

jr_08e_53a4:
	ldh a, [rTMA]                                    ; $53a4: $f0 $06
	add hl, sp                                       ; $53a6: $39
	inc a                                            ; $53a7: $3c
	ld a, [hl-]                                      ; $53a8: $3a
	and b                                            ; $53a9: $a0
	ld h, e                                          ; $53aa: $63
	ld d, a                                          ; $53ab: $57
	ld c, c                                          ; $53ac: $49
	jr c, jr_08e_53e7                                ; $53ad: $38 $38

	ldh a, [$78]                                     ; $53af: $f0 $78
	ld e, e                                          ; $53b1: $5b
	ld c, h                                          ; $53b2: $4c
	and b                                            ; $53b3: $a0
	cpl                                              ; $53b4: $2f
	db $ec                                           ; $53b5: $ec
	add e                                            ; $53b6: $83
	ld a, [hl-]                                      ; $53b7: $3a
	ldh a, [$78]                                     ; $53b8: $f0 $78
	ldh a, [$f4]                                     ; $53ba: $f0 $f4
	ld b, h                                          ; $53bc: $44
	ld b, l                                          ; $53bd: $45
	ld c, h                                          ; $53be: $4c
	add hl, bc                                       ; $53bf: $09
	ld l, a                                          ; $53c0: $6f
	ld d, h                                          ; $53c1: $54
	add hl, sp                                       ; $53c2: $39
	jr c, @+$3b                                      ; $53c3: $38 $39

	db $ec                                           ; $53c5: $ec
	ld l, [hl]                                       ; $53c6: $6e
	inc de                                           ; $53c7: $13
	ld h, e                                          ; $53c8: $63
	ld d, a                                          ; $53c9: $57
	ld c, c                                          ; $53ca: $49
	adc e                                            ; $53cb: $8b
	ld e, h                                          ; $53cc: $5c
	ld b, l                                          ; $53cd: $45
	and b                                            ; $53ce: $a0
	ld l, a                                          ; $53cf: $6f
	ld b, d                                          ; $53d0: $42

jr_08e_53d1:
	adc e                                            ; $53d1: $8b
	ld e, h                                          ; $53d2: $5c
	ld a, [hl-]                                      ; $53d3: $3a
	inc de                                           ; $53d4: $13
	db $eb                                           ; $53d5: $eb
	ret                                              ; $53d6: $c9


	ld b, d                                          ; $53d7: $42
	db $ec                                           ; $53d8: $ec
	ld l, [hl]                                       ; $53d9: $6e
	ld b, a                                          ; $53da: $47
	xor h                                            ; $53db: $ac
	ldh a, [$9b]                                     ; $53dc: $f0 $9b
	jr c, @+$44                                      ; $53de: $38 $42

	ld b, l                                          ; $53e0: $45
	and b                                            ; $53e1: $a0
	ld b, b                                          ; $53e2: $40

jr_08e_53e3:
	ld c, l                                          ; $53e3: $4d
	ld c, e                                          ; $53e4: $4b
	inc de                                           ; $53e5: $13
	ld a, [hl]                                       ; $53e6: $7e

jr_08e_53e7:
	ld d, l                                          ; $53e7: $55
	ldh a, [rTAC]                                    ; $53e8: $f0 $07
	inc a                                            ; $53ea: $3c

jr_08e_53eb:
	ld d, b                                          ; $53eb: $50
	ld a, [hl-]                                      ; $53ec: $3a
	jr c, jr_08e_544c                                ; $53ed: $38 $5d

	ld e, d                                          ; $53ef: $5a
	xor h                                            ; $53f0: $ac
	ld l, a                                          ; $53f1: $6f
	ld b, d                                          ; $53f2: $42
	adc e                                            ; $53f3: $8b
	ld e, h                                          ; $53f4: $5c
	ld a, [hl-]                                      ; $53f5: $3a
	db $eb                                           ; $53f6: $eb
	ret                                              ; $53f7: $c9


	ld b, d                                          ; $53f8: $42
	inc de                                           ; $53f9: $13
	db $ec                                           ; $53fa: $ec

jr_08e_53fb:
	ld l, [hl]                                       ; $53fb: $6e
	ld b, a                                          ; $53fc: $47
	ldh a, [$9b]                                     ; $53fd: $f0 $9b
	jr c, jr_08e_5464                                ; $53ff: $38 $63

	ld c, h                                          ; $5401: $4c
	and b                                            ; $5402: $a0
	cpl                                              ; $5403: $2f
	ldh a, [rAUD2ENV]                                ; $5404: $f0 $17
	ld b, d                                          ; $5406: $42
	ld d, l                                          ; $5407: $55
	ld a, c                                          ; $5408: $79
	ld b, a                                          ; $5409: $47
	ld h, h                                          ; $540a: $64
	inc a                                            ; $540b: $3c
	ld a, $38                                        ; $540c: $3e $38
	adc l                                            ; $540e: $8d

jr_08e_540f:
	add hl, bc                                       ; $540f: $09
	rst JumpTable                                          ; $5410: $c7
	xor c                                            ; $5411: $a9
	db $ec                                           ; $5412: $ec
	ld d, $74                                        ; $5413: $16 $74
	ld c, b                                          ; $5415: $48
	and b                                            ; $5416: $a0
	ldh a, [rHDMA5]                                  ; $5417: $f0 $55
	ldh a, [rBCPS]                                   ; $5419: $f0 $68
	ld c, h                                          ; $541b: $4c
	xor b                                            ; $541c: $a8
	ldh a, [$34]                                     ; $541d: $f0 $34
	ld b, a                                          ; $541f: $47
	ld a, [hl]                                       ; $5420: $7e
	jr c, jr_08e_540f                                ; $5421: $38 $ec

	ret c                                            ; $5423: $d8

	ld b, d                                          ; $5424: $42
	and b                                            ; $5425: $a0
	ret                                              ; $5426: $c9


	xor h                                            ; $5427: $ac
	ldh a, [rHDMA5]                                  ; $5428: $f0 $55
	ldh a, [rBCPS]                                   ; $542a: $f0 $68
	db $ec                                           ; $542c: $ec
	ret c                                            ; $542d: $d8

	and c                                            ; $542e: $a1
	cpl                                              ; $542f: $2f
	ldh a, [$8e]                                     ; $5430: $f0 $8e
	ld e, c                                          ; $5432: $59
	ld h, l                                          ; $5433: $65
	inc [hl]                                         ; $5434: $34
	adc e                                            ; $5435: $8b
	ld e, h                                          ; $5436: $5c
	ld a, [hl-]                                      ; $5437: $3a
	ld b, c                                          ; $5438: $41
	ld b, h                                          ; $5439: $44
	add hl, bc                                       ; $543a: $09
	adc e                                            ; $543b: $8b
	ld e, h                                          ; $543c: $5c
	ld a, [hl-]                                      ; $543d: $3a
	db $eb                                           ; $543e: $eb
	ret                                              ; $543f: $c9


	ld b, d                                          ; $5440: $42
	inc de                                           ; $5441: $13
	db $ec                                           ; $5442: $ec
	ld l, [hl]                                       ; $5443: $6e
	ld b, a                                          ; $5444: $47
	ldh a, [rPCM12]                                  ; $5445: $f0 $76
	ccf                                              ; $5447: $3f
	ld c, [hl]                                       ; $5448: $4e
	ld b, d                                          ; $5449: $42
	ld b, l                                          ; $544a: $45
	and b                                            ; $544b: $a0

jr_08e_544c:
	ld a, [hl-]                                      ; $544c: $3a
	ld b, c                                          ; $544d: $41
	inc a                                            ; $544e: $3c
	pop af                                           ; $544f: $f1
	ld e, a                                          ; $5450: $5f
	dec sp                                           ; $5451: $3b
	ldh a, [c]                                       ; $5452: $f2
	push af                                          ; $5453: $f5
	inc a                                            ; $5454: $3c
	ld c, [hl]                                       ; $5455: $4e
	ld e, l                                          ; $5456: $5d
	ld e, d                                          ; $5457: $5a
	xor h                                            ; $5458: $ac
	call nc, $a063                                   ; $5459: $d4 $63 $a0
	ld a, [hl-]                                      ; $545c: $3a
	ld b, c                                          ; $545d: $41
	inc a                                            ; $545e: $3c
	pop af                                           ; $545f: $f1
	ld e, a                                          ; $5460: $5f
	dec sp                                           ; $5461: $3b
	ldh a, [c]                                       ; $5462: $f2
	push af                                          ; $5463: $f5

jr_08e_5464:
	inc a                                            ; $5464: $3c
	ld c, [hl]                                       ; $5465: $4e
	ld h, e                                          ; $5466: $63
	ld c, h                                          ; $5467: $4c
	and b                                            ; $5468: $a0
	jr c, jr_08e_53eb                                ; $5469: $38 $80

	ld a, b                                          ; $546b: $78
	ccf                                              ; $546c: $3f
	ld c, a                                          ; $546d: $4f
	xor h                                            ; $546e: $ac
	ld d, c                                          ; $546f: $51
	ld [hl], b                                       ; $5470: $70

jr_08e_5471:
	jr c, jr_08e_54bc                                ; $5471: $38 $49

	ld d, h                                          ; $5473: $54
	ld e, a                                          ; $5474: $5f
	ld c, h                                          ; $5475: $4c
	and b                                            ; $5476: $a0
	cpl                                              ; $5477: $2f
	add sp, -$6a                                     ; $5478: $e8 $96
	add hl, bc                                       ; $547a: $09
	ld b, [hl]                                       ; $547b: $46
	dec sp                                           ; $547c: $3b
	inc [hl]                                         ; $547d: $34
	call nc, $a863                                   ; $547e: $d4 $63 $a8
	ldh a, [$64]                                     ; $5481: $f0 $64
	jr c, jr_08e_5471                                ; $5483: $38 $ec

	ret c                                            ; $5485: $d8

jr_08e_5486:
	inc a                                            ; $5486: $3c
	ld d, b                                          ; $5487: $50
	and b                                            ; $5488: $a0
	call nc, $a863                                   ; $5489: $d4 $63 $a8
	ld a, a                                          ; $548c: $7f
	ld b, a                                          ; $548d: $47
	ld a, $3a                                        ; $548e: $3e $3a
	jr c, jr_08e_54dc                                ; $5490: $38 $4a

	and b                                            ; $5492: $a0
	ldh a, [$34]                                     ; $5493: $f0 $34
	ld b, a                                          ; $5495: $47
	ldh a, [$64]                                     ; $5496: $f0 $64
	jr c, jr_08e_5486                                ; $5498: $38 $ec

	ret c                                            ; $549a: $d8

	inc a                                            ; $549b: $3c
	ld d, b                                          ; $549c: $50
	xor h                                            ; $549d: $ac
	jr c, jr_08e_54d8                                ; $549e: $38 $38

Call_08e_54a0:
	ld h, e                                          ; $54a0: $63
	and b                                            ; $54a1: $a0
	cpl                                              ; $54a2: $2f
	add sp, $6a                                      ; $54a3: $e8 $6a
	and c                                            ; $54a5: $a1
	ld d, h                                          ; $54a6: $54
	ld d, h                                          ; $54a7: $54
	ld b, l                                          ; $54a8: $45
	ld d, a                                          ; $54a9: $57
	ld d, c                                          ; $54aa: $51
	ld [hl], b                                       ; $54ab: $70
	jr c, jr_08e_54f0                                ; $54ac: $38 $42

	xor c                                            ; $54ae: $a9
	adc e                                            ; $54af: $8b
	ld e, h                                          ; $54b0: $5c
	ld b, h                                          ; $54b1: $44
	ld e, l                                          ; $54b2: $5d
	ld e, d                                          ; $54b3: $5a
	inc [hl]                                         ; $54b4: $34
	pop af                                           ; $54b5: $f1
	ld b, $f1                                        ; $54b6: $06 $f1
	ld a, $51                                        ; $54b8: $3e $51
	ld c, [hl]                                       ; $54ba: $4e
	ld h, e                                          ; $54bb: $63

jr_08e_54bc:
	ld c, b                                          ; $54bc: $48
	and b                                            ; $54bd: $a0
	ld e, [hl]                                       ; $54be: $5e
	dec sp                                           ; $54bf: $3b
	xor c                                            ; $54c0: $a9
	ld d, h                                          ; $54c1: $54
	ld d, h                                          ; $54c2: $54
	ld b, l                                          ; $54c3: $45
	ld d, a                                          ; $54c4: $57
	ld d, c                                          ; $54c5: $51
	ld [hl], b                                       ; $54c6: $70
	jr c, @+$44                                      ; $54c7: $38 $42

	ld c, e                                          ; $54c9: $4b
	xor h                                            ; $54ca: $ac
	ret                                              ; $54cb: $c9


	pop af                                           ; $54cc: $f1
	ld b, $f1                                        ; $54cd: $06 $f1
	ld a, $51                                        ; $54cf: $3e $51
	ld c, [hl]                                       ; $54d1: $4e
	ld h, e                                          ; $54d2: $63
	and b                                            ; $54d3: $a0
	ld e, [hl]                                       ; $54d4: $5e
	dec sp                                           ; $54d5: $3b
	xor c                                            ; $54d6: $a9
	ld d, h                                          ; $54d7: $54

jr_08e_54d8:
	ld d, h                                          ; $54d8: $54
	ld b, l                                          ; $54d9: $45
	ld d, a                                          ; $54da: $57
	ld d, c                                          ; $54db: $51

jr_08e_54dc:
	ld [hl], b                                       ; $54dc: $70
	jr c, jr_08e_5521                                ; $54dd: $38 $42

	ld c, e                                          ; $54df: $4b
	inc de                                           ; $54e0: $13
	xor $10                                          ; $54e1: $ee $10
	ret                                              ; $54e3: $c9


	ld c, h                                          ; $54e4: $4c
	and b                                            ; $54e5: $a0
	cpl                                              ; $54e6: $2f
	jp hl                                            ; $54e7: $e9


	nop                                              ; $54e8: $00
	add hl, bc                                       ; $54e9: $09
	db $ec                                           ; $54ea: $ec
	inc e                                            ; $54eb: $1c
	xor b                                            ; $54ec: $a8
	pop af                                           ; $54ed: $f1
	sbc e                                            ; $54ee: $9b
	ld c, l                                          ; $54ef: $4d

jr_08e_54f0:
	ld b, l                                          ; $54f0: $45
	ld c, h                                          ; $54f1: $4c
	and b                                            ; $54f2: $a0
	ld h, e                                          ; $54f3: $63
	ld d, a                                          ; $54f4: $57
	ld c, c                                          ; $54f5: $49
	pop af                                           ; $54f6: $f1
	sbc e                                            ; $54f7: $9b
	ld c, l                                          ; $54f8: $4d
	ccf                                              ; $54f9: $3f
	ld c, [hl]                                       ; $54fa: $4e
	add b                                            ; $54fb: $80
	ld c, a                                          ; $54fc: $4f
	ld d, a                                          ; $54fd: $57
	inc de                                           ; $54fe: $13
	ld a, [hl-]                                      ; $54ff: $3a
	ld b, c                                          ; $5500: $41
	ld b, h                                          ; $5501: $44
	ld e, l                                          ; $5502: $5d
	ld e, d                                          ; $5503: $5a
	ld c, h                                          ; $5504: $4c
	and b                                            ; $5505: $a0
	ld b, b                                          ; $5506: $40
	ld c, l                                          ; $5507: $4d
	ld c, a                                          ; $5508: $4f
	inc [hl]                                         ; $5509: $34
	call c, Call_08e_40a0                            ; $550a: $dc $a0 $40
	ld c, l                                          ; $550d: $4d
	ld e, e                                          ; $550e: $5b
	ld d, [hl]                                       ; $550f: $56
	xor h                                            ; $5510: $ac
	ldh a, [rAUD2HIGH]                               ; $5511: $f0 $19
	ld b, a                                          ; $5513: $47
	sub [hl]                                         ; $5514: $96
	ld d, a                                          ; $5515: $57
	ld d, d                                          ; $5516: $52
	ld a, $66                                        ; $5517: $3e $66
	add hl, sp                                       ; $5519: $39
	and b                                            ; $551a: $a0
	cpl                                              ; $551b: $2f
	ld b, e                                          ; $551c: $43
	ld b, b                                          ; $551d: $40
	add hl, sp                                       ; $551e: $39
	ld b, h                                          ; $551f: $44
	ld c, h                                          ; $5520: $4c

jr_08e_5521:
	xor b                                            ; $5521: $a8
	db $eb                                           ; $5522: $eb
	ld d, d                                          ; $5523: $52
	inc a                                            ; $5524: $3c
	and b                                            ; $5525: $a0
	ldh a, [$c3]                                     ; $5526: $f0 $c3
	ld e, c                                          ; $5528: $59
	xor h                                            ; $5529: $ac
	ldh a, [c]                                       ; $552a: $f2
	jr jr_08e_55a0                                   ; $552b: $18 $73

	ldh a, [$f2]                                     ; $552d: $f0 $f2
	ld [$a840], a                                    ; $552f: $ea $40 $a8
	ldh a, [$2f]                                     ; $5532: $f0 $2f
	ld [hl], l                                       ; $5534: $75
	ld a, l                                          ; $5535: $7d
	ld a, [hl-]                                      ; $5536: $3a
	pop af                                           ; $5537: $f1
	xor c                                            ; $5538: $a9
	ld d, e                                          ; $5539: $53
	xor h                                            ; $553a: $ac
	adc $38                                          ; $553b: $ce $38
	ld c, [hl]                                       ; $553d: $4e
	ld h, e                                          ; $553e: $63
	ld c, h                                          ; $553f: $4c
	and b                                            ; $5540: $a0
	cpl                                              ; $5541: $2f
	jp hl                                            ; $5542: $e9


	ld a, $09                                        ; $5543: $3e $09
	pop de                                           ; $5545: $d1
	ldh a, [$50]                                     ; $5546: $f0 $50
	ld [hl], e                                       ; $5548: $73
	ldh a, [$32]                                     ; $5549: $f0 $32
	ld a, [hl-]                                      ; $554b: $3a
	xor h                                            ; $554c: $ac
	dec a                                            ; $554d: $3d
	ld c, c                                          ; $554e: $49
	ld e, [hl]                                       ; $554f: $5e
	db $ec                                           ; $5550: $ec
	ret c                                            ; $5551: $d8

	xor b                                            ; $5552: $a8
	db $eb                                           ; $5553: $eb
	ld d, h                                          ; $5554: $54
	ld h, e                                          ; $5555: $63
	and b                                            ; $5556: $a0
	ldh a, [$ba]                                     ; $5557: $f0 $ba
	ld a, l                                          ; $5559: $7d
	add e                                            ; $555a: $83
	ld a, [hl-]                                      ; $555b: $3a
	pop af                                           ; $555c: $f1
	and l                                            ; $555d: $a5
	pop af                                           ; $555e: $f1
	and [hl]                                         ; $555f: $a6
	ld c, h                                          ; $5560: $4c
	xor b                                            ; $5561: $a8
	ld l, a                                          ; $5562: $6f
	ld c, a                                          ; $5563: $4f
	ld b, b                                          ; $5564: $40
	add hl, sp                                       ; $5565: $39
	ld [hl], a                                       ; $5566: $77
	add hl, sp                                       ; $5567: $39
	ld h, e                                          ; $5568: $63
	and b                                            ; $5569: $a0
	call c, Call_08e_6fa8                            ; $556a: $dc $a8 $6f
	ld c, a                                          ; $556d: $4f
	ld b, b                                          ; $556e: $40
	add hl, sp                                       ; $556f: $39
	ld [hl], a                                       ; $5570: $77
	add hl, sp                                       ; $5571: $39
	ld h, e                                          ; $5572: $63
	and b                                            ; $5573: $a0
	cpl                                              ; $5574: $2f
	ld b, b                                          ; $5575: $40
	add hl, sp                                       ; $5576: $39
	inc [hl]                                         ; $5577: $34
	db $ed                                           ; $5578: $ed
	ld e, [hl]                                       ; $5579: $5e
	add hl, bc                                       ; $557a: $09
	ld b, b                                          ; $557b: $40
	add hl, sp                                       ; $557c: $39
	xor b                                            ; $557d: $a8
	ldh a, [$34]                                     ; $557e: $f0 $34
	ld b, a                                          ; $5580: $47
	db $ec                                           ; $5581: $ec
	ld [$5ca0], sp                                   ; $5582: $08 $a0 $5c
	dec sp                                           ; $5585: $3b
	ld c, c                                          ; $5586: $49
	xor h                                            ; $5587: $ac
	db $ec                                           ; $5588: $ec
	ld a, e                                          ; $5589: $7b
	ld d, e                                          ; $558a: $53
	ldh a, [$f5]                                     ; $558b: $f0 $f5
	add hl, sp                                       ; $558d: $39
	ld b, d                                          ; $558e: $42
	ld c, h                                          ; $558f: $4c
	and b                                            ; $5590: $a0
	ld e, h                                          ; $5591: $5c
	dec sp                                           ; $5592: $3b
	ld c, c                                          ; $5593: $49
	ldh a, [$7b]                                     ; $5594: $f0 $7b
	ld h, l                                          ; $5596: $65
	add e                                            ; $5597: $83
	ld d, e                                          ; $5598: $53
	ldh a, [rAUD1LOW]                                ; $5599: $f0 $13
	jr c, jr_08e_55df                                ; $559b: $38 $42

	ld c, h                                          ; $559d: $4c
	and b                                            ; $559e: $a0
	cpl                                              ; $559f: $2f

jr_08e_55a0:
	add sp, -$20                                     ; $55a0: $e8 $e0
	add hl, bc                                       ; $55a2: $09
	ld b, b                                          ; $55a3: $40
	ld c, l                                          ; $55a4: $4d
	ld c, a                                          ; $55a5: $4f
	xor h                                            ; $55a6: $ac
	ld [hl], a                                       ; $55a7: $77
	dec sp                                           ; $55a8: $3b
	ccf                                              ; $55a9: $3f
	dec a                                            ; $55aa: $3d
	ld c, c                                          ; $55ab: $49
	ld d, h                                          ; $55ac: $54
	ld e, a                                          ; $55ad: $5f
	ld b, l                                          ; $55ae: $45
	and b                                            ; $55af: $a0
	ld c, h                                          ; $55b0: $4c
	add l                                            ; $55b1: $85
	xor h                                            ; $55b2: $ac
	ldh a, [$b7]                                     ; $55b3: $f0 $b7
	ldh a, [$8c]                                     ; $55b5: $f0 $8c
	ld d, b                                          ; $55b7: $50
	ld c, l                                          ; $55b8: $4d
	ld c, [hl]                                       ; $55b9: $4e
	ld c, c                                          ; $55ba: $49
	ld [hl], a                                       ; $55bb: $77
	add hl, sp                                       ; $55bc: $39
	and c                                            ; $55bd: $a1
	ldh a, [$b7]                                     ; $55be: $f0 $b7
	ldh a, [$8c]                                     ; $55c0: $f0 $8c
	ld d, b                                          ; $55c2: $50
	ld c, l                                          ; $55c3: $4d
	ld c, [hl]                                       ; $55c4: $4e
	ld b, d                                          ; $55c5: $42
	inc a                                            ; $55c6: $3c
	ld a, [hl-]                                      ; $55c7: $3a
	and c                                            ; $55c8: $a1
	ld c, h                                          ; $55c9: $4c
	add l                                            ; $55ca: $85
	inc [hl]                                         ; $55cb: $34
	pop af                                           ; $55cc: $f1
	xor c                                            ; $55cd: $a9
	dec sp                                           ; $55ce: $3b
	ccf                                              ; $55cf: $3f
	xor h                                            ; $55d0: $ac
	ldh a, [$2a]                                     ; $55d1: $f0 $2a
	pop af                                           ; $55d3: $f1
	or h                                             ; $55d4: $b4
	ld e, l                                          ; $55d5: $5d
	ld a, [hl-]                                      ; $55d6: $3a
	ldh a, [$d2]                                     ; $55d7: $f0 $d2
	ld a, $3f                                        ; $55d9: $3e $3f
	ld a, [hl-]                                      ; $55db: $3a
	jr c, @-$5d                                      ; $55dc: $38 $a1

	cpl                                              ; $55de: $2f

jr_08e_55df:
	adc b                                            ; $55df: $88
	sub c                                            ; $55e0: $91
	dec [hl]                                         ; $55e1: $35
	ldh a, [c]                                       ; $55e2: $f2
	ld bc, $4e5e                                     ; $55e3: $01 $5e $4e
	ldh a, [$d2]                                     ; $55e6: $f0 $d2
	ld b, h                                          ; $55e8: $44
	ld b, l                                          ; $55e9: $45
	ld c, h                                          ; $55ea: $4c
	add hl, bc                                       ; $55eb: $09
	ld c, h                                          ; $55ec: $4c
	xor b                                            ; $55ed: $a8
	ldh a, [rAUD4ENV]                                ; $55ee: $f0 $21
	ldh a, [rAUD4GO]                                 ; $55f0: $f0 $23
	jr c, jr_08e_5657                                ; $55f2: $38 $63

	ld b, l                                          ; $55f4: $45
	ld c, h                                          ; $55f5: $4c
	and b                                            ; $55f6: $a0
	pop af                                           ; $55f7: $f1
	db $fc                                           ; $55f8: $fc
	ldh a, [rOCPS]                                   ; $55f9: $f0 $6a
	inc [hl]                                         ; $55fb: $34
	ld b, b                                          ; $55fc: $40
	add hl, sp                                       ; $55fd: $39
	ld [hl], a                                       ; $55fe: $77
	add hl, sp                                       ; $55ff: $39
	ld h, e                                          ; $5600: $63
	ld b, l                                          ; $5601: $45
	ld c, h                                          ; $5602: $4c
	and b                                            ; $5603: $a0
	cpl                                              ; $5604: $2f
	add sp, $14                                      ; $5605: $e8 $14
	and c                                            ; $5607: $a1
	ldh a, [rHDMA5]                                  ; $5608: $f0 $55
	ldh a, [rBCPS]                                   ; $560a: $f0 $68
	ld c, h                                          ; $560c: $4c
	xor b                                            ; $560d: $a8
	call nc, $d8ec                                   ; $560e: $d4 $ec $d8
	ld b, d                                          ; $5611: $42
	and b                                            ; $5612: $a0
	cpl                                              ; $5613: $2f
	jp hl                                            ; $5614: $e9


	ld a, c                                          ; $5615: $79
	ld c, b                                          ; $5616: $48
	add hl, bc                                       ; $5617: $09
	ld b, b                                          ; $5618: $40
	ld c, l                                          ; $5619: $4d
	ld e, e                                          ; $561a: $5b
	ld d, [hl]                                       ; $561b: $56
	ld c, h                                          ; $561c: $4c
	xor b                                            ; $561d: $a8
	ldh a, [$08]                                     ; $561e: $f0 $08
	ld d, b                                          ; $5620: $50
	inc [hl]                                         ; $5621: $34
	xor $1e                                          ; $5622: $ee $1e
	pop af                                           ; $5624: $f1
	xor c                                            ; $5625: $a9
	ld a, [hl-]                                      ; $5626: $3a
	ld b, c                                          ; $5627: $41
	ccf                                              ; $5628: $3f
	inc de                                           ; $5629: $13
	ld b, b                                          ; $562a: $40
	add hl, sp                                       ; $562b: $39
	ld [hl], a                                       ; $562c: $77
	add hl, sp                                       ; $562d: $39
	ld h, e                                          ; $562e: $63
	ld b, l                                          ; $562f: $45
	and b                                            ; $5630: $a0
	ld b, l                                          ; $5631: $45
	ld d, l                                          ; $5632: $55
	ld [hl], d                                       ; $5633: $72
	ccf                                              ; $5634: $3f
	ld l, h                                          ; $5635: $6c
	dec a                                            ; $5636: $3d
	ld d, b                                          ; $5637: $50
	xor h                                            ; $5638: $ac
	ld e, h                                          ; $5639: $5c
	dec sp                                           ; $563a: $3b
	ld c, c                                          ; $563b: $49
	ld b, b                                          ; $563c: $40
	add hl, sp                                       ; $563d: $39
	ld [hl], a                                       ; $563e: $77
	add hl, sp                                       ; $563f: $39
	ld h, e                                          ; $5640: $63
	ld b, l                                          ; $5641: $45
	and b                                            ; $5642: $a0
	ld b, b                                          ; $5643: $40
	ld c, l                                          ; $5644: $4d
	ld e, e                                          ; $5645: $5b
	ld d, [hl]                                       ; $5646: $56
	xor h                                            ; $5647: $ac
	ldh a, [c]                                       ; $5648: $f2
	call z, $c0f0                                    ; $5649: $cc $f0 $c0
	ld a, $3f                                        ; $564c: $3e $3f
	ld [hl], d                                       ; $564e: $72
	ccf                                              ; $564f: $3f
	ld l, h                                          ; $5650: $6c
	ccf                                              ; $5651: $3f
	and b                                            ; $5652: $a0
	ld l, d                                          ; $5653: $6a
	ld [hl], d                                       ; $5654: $72
	ccf                                              ; $5655: $3f
	ld e, h                                          ; $5656: $5c

jr_08e_5657:
	dec a                                            ; $5657: $3d
	inc [hl]                                         ; $5658: $34
	ld a, l                                          ; $5659: $7d
	ldh a, [$03]                                     ; $565a: $f0 $03
	ldh a, [$35]                                     ; $565c: $f0 $35
	ld b, d                                          ; $565e: $42
	inc de                                           ; $565f: $13
	db $ec                                           ; $5660: $ec
	ldh a, [c]                                       ; $5661: $f2
	dec [hl]                                         ; $5662: $35
	db $eb                                           ; $5663: $eb
	sbc d                                            ; $5664: $9a
	ld b, h                                          ; $5665: $44
	dec sp                                           ; $5666: $3b
	ldh [$a0], a                                     ; $5667: $e0 $a0
	cpl                                              ; $5669: $2f
	add sp, -$1a                                     ; $566a: $e8 $e6
	add hl, bc                                       ; $566c: $09
	db $ec                                           ; $566d: $ec
	ld b, l                                          ; $566e: $45
	xor b                                            ; $566f: $a8
	ld l, a                                          ; $5670: $6f
	ld c, a                                          ; $5671: $4f
	ld b, b                                          ; $5672: $40
	add hl, sp                                       ; $5673: $39
	ld [hl], a                                       ; $5674: $77
	add hl, sp                                       ; $5675: $39
	ld a, [hl-]                                      ; $5676: $3a
	and b                                            ; $5677: $a0
	db $ec                                           ; $5678: $ec
	ld b, l                                          ; $5679: $45
	xor b                                            ; $567a: $a8
	ldh a, [$78]                                     ; $567b: $f0 $78
	ldh a, [rVBK]                                    ; $567d: $f0 $4f
	ld a, $61                                        ; $567f: $3e $61
	ld d, [hl]                                       ; $5681: $56
	add hl, sp                                       ; $5682: $39
	ld h, e                                          ; $5683: $63
	ld c, h                                          ; $5684: $4c
	and b                                            ; $5685: $a0
	call c, $f1a8                                    ; $5686: $dc $a8 $f1
	sub $38                                          ; $5689: $d6 $38
	jr c, jr_08e_56f0                                ; $568b: $38 $63

	ld c, h                                          ; $568d: $4c
	and b                                            ; $568e: $a0
	cpl                                              ; $568f: $2f

jr_08e_5690:
	add sp, $2f                                      ; $5690: $e8 $2f
	add hl, bc                                       ; $5692: $09
	db $ec                                           ; $5693: $ec
	dec b                                            ; $5694: $05
	add h                                            ; $5695: $84
	dec sp                                           ; $5696: $3b
	ccf                                              ; $5697: $3f
	jr c, jr_08e_56e8                                ; $5698: $38 $4e

	ld b, d                                          ; $569a: $42
	and c                                            ; $569b: $a1
	sub c                                            ; $569c: $91
	dec a                                            ; $569d: $3d
	ld d, a                                          ; $569e: $57
	sbc [hl]                                         ; $569f: $9e
	ld c, d                                          ; $56a0: $4a
	ld a, $66                                        ; $56a1: $3e $66
	add hl, sp                                       ; $56a3: $39
	and b                                            ; $56a4: $a0
	ldh a, [$2d]                                     ; $56a5: $f0 $2d
	dec sp                                           ; $56a7: $3b
	ccf                                              ; $56a8: $3f
	ld c, [hl]                                       ; $56a9: $4e
	ld h, e                                          ; $56aa: $63
	ld b, l                                          ; $56ab: $45
	and b                                            ; $56ac: $a0
	cpl                                              ; $56ad: $2f
	add sp, -$6f                                     ; $56ae: $e8 $91
	and c                                            ; $56b0: $a1
	db $d3                                           ; $56b1: $d3
	xor c                                            ; $56b2: $a9
	ld h, c                                          ; $56b3: $61
	ld d, [hl]                                       ; $56b4: $56
	ld b, c                                          ; $56b5: $41
	ld c, c                                          ; $56b6: $49
	ld [hl], d                                       ; $56b7: $72
	ccf                                              ; $56b8: $3f
	ld c, l                                          ; $56b9: $4d
	ld a, e                                          ; $56ba: $7b
	inc de                                           ; $56bb: $13
	ld b, l                                          ; $56bc: $45
	inc a                                            ; $56bd: $3c
	dec sp                                           ; $56be: $3b
	dec a                                            ; $56bf: $3d
	and b                                            ; $56c0: $a0
	db $d3                                           ; $56c1: $d3
	xor c                                            ; $56c2: $a9
	ld b, l                                          ; $56c3: $45
	ld d, l                                          ; $56c4: $55
	ld [hl], d                                       ; $56c5: $72
	ccf                                              ; $56c6: $3f
	ld a, [hl-]                                      ; $56c7: $3a
	inc a                                            ; $56c8: $3c
	dec sp                                           ; $56c9: $3b
	dec a                                            ; $56ca: $3d
	ld h, e                                          ; $56cb: $63
	and b                                            ; $56cc: $a0
	db $d3                                           ; $56cd: $d3
	xor c                                            ; $56ce: $a9
	ld b, l                                          ; $56cf: $45
	ld d, l                                          ; $56d0: $55
	ld [hl], d                                       ; $56d1: $72
	ccf                                              ; $56d2: $3f
	ld c, [hl]                                       ; $56d3: $4e
	ld h, e                                          ; $56d4: $63
	ld c, h                                          ; $56d5: $4c
	and b                                            ; $56d6: $a0
	ldh a, [rOBP0]                                   ; $56d7: $f0 $48
	ldh a, [$2c]                                     ; $56d9: $f0 $2c
	dec sp                                           ; $56db: $3b
	ccf                                              ; $56dc: $3f
	inc [hl]                                         ; $56dd: $34
	jr c, jr_08e_572e                                ; $56de: $38 $4e

	ld b, h                                          ; $56e0: $44
	ld e, l                                          ; $56e1: $5d
	ld c, d                                          ; $56e2: $4a
	inc de                                           ; $56e3: $13
	ldh a, [$3f]                                     ; $56e4: $f0 $3f
	ld b, a                                          ; $56e6: $47
	ld a, [hl-]                                      ; $56e7: $3a

jr_08e_56e8:
	ld c, [hl]                                       ; $56e8: $4e
	ld c, c                                          ; $56e9: $49
	ld [hl], a                                       ; $56ea: $77
	ld h, e                                          ; $56eb: $63
	ld a, [hl-]                                      ; $56ec: $3a
	jr c, jr_08e_5690                                ; $56ed: $38 $a1

	cpl                                              ; $56ef: $2f

jr_08e_56f0:
	ldh a, [$b6]                                     ; $56f0: $f0 $b6
	ld b, a                                          ; $56f2: $47
	ldh a, [$67]                                     ; $56f3: $f0 $67
	ldh a, [$59]                                     ; $56f5: $f0 $59
	ld b, d                                          ; $56f7: $42
	ldh a, [rAUD2HIGH]                               ; $56f8: $f0 $19
	ld b, h                                          ; $56fa: $44
	ld c, c                                          ; $56fb: $49
	ld c, h                                          ; $56fc: $4c
	add hl, bc                                       ; $56fd: $09
	call c, $f2a8                                    ; $56fe: $dc $a8 $f2
	set 6, b                                         ; $5701: $cb $f0
	ld c, b                                          ; $5703: $48
	ldh a, [$78]                                     ; $5704: $f0 $78
	ld b, [hl]                                       ; $5706: $46
	ldh a, [rSCY]                                    ; $5707: $f0 $42
	ld c, l                                          ; $5709: $4d
	ld c, [hl]                                       ; $570a: $4e
	ldh a, [$08]                                     ; $570b: $f0 $08
	add hl, sp                                       ; $570d: $39
	ld d, e                                          ; $570e: $53
	xor h                                            ; $570f: $ac
	ldh a, [$57]                                     ; $5710: $f0 $57
	ldh a, [$ae]                                     ; $5712: $f0 $ae
	ld a, [hl-]                                      ; $5714: $3a
	ldh a, [$3f]                                     ; $5715: $f0 $3f
	ld b, a                                          ; $5717: $47
	ld a, [hl-]                                      ; $5718: $3a
	ld c, [hl]                                       ; $5719: $4e
	ld h, e                                          ; $571a: $63
	ld c, h                                          ; $571b: $4c
	and b                                            ; $571c: $a0
	db $ec                                           ; $571d: $ec
	ld b, l                                          ; $571e: $45
	xor b                                            ; $571f: $a8
	ld l, a                                          ; $5720: $6f
	ld c, a                                          ; $5721: $4f
	ld b, b                                          ; $5722: $40
	add hl, sp                                       ; $5723: $39
	ld [hl], a                                       ; $5724: $77
	add hl, sp                                       ; $5725: $39
	ld h, e                                          ; $5726: $63
	and b                                            ; $5727: $a0
	db $ec                                           ; $5728: $ec
	inc e                                            ; $5729: $1c
	xor b                                            ; $572a: $a8
	ld b, b                                          ; $572b: $40
	add hl, sp                                       ; $572c: $39
	ld [hl], a                                       ; $572d: $77

jr_08e_572e:
	add hl, sp                                       ; $572e: $39
	ld h, e                                          ; $572f: $63
	and b                                            ; $5730: $a0
	cpl                                              ; $5731: $2f
	db $ed                                           ; $5732: $ed
	ld e, [hl]                                       ; $5733: $5e
	dec [hl]                                         ; $5734: $35
	halt                                             ; $5735: $76
	ld b, d                                          ; $5736: $42
	ldh a, [$38]                                     ; $5737: $f0 $38
	ld d, e                                          ; $5739: $53
	ldh a, [$3f]                                     ; $573a: $f0 $3f
	ld b, a                                          ; $573c: $47
	ld a, [hl-]                                      ; $573d: $3a
	ld c, [hl]                                       ; $573e: $4e
	ld a, [hl-]                                      ; $573f: $3a
	add hl, bc                                       ; $5740: $09
	db $ec                                           ; $5741: $ec
	ld a, e                                          ; $5742: $7b
	ld d, e                                          ; $5743: $53
	inc de                                           ; $5744: $13
	db $ed                                           ; $5745: $ed
	ld e, [hl]                                       ; $5746: $5e
	ldh a, [$f5]                                     ; $5747: $f0 $f5
	add hl, sp                                       ; $5749: $39
	ld b, d                                          ; $574a: $42
	ld c, h                                          ; $574b: $4c
	and b                                            ; $574c: $a0
	add hl, sp                                       ; $574d: $39
	pop af                                           ; $574e: $f1
	ld a, b                                          ; $574f: $78
	pop af                                           ; $5750: $f1
	halt                                             ; $5751: $76
	ld c, l                                          ; $5752: $4d
	ccf                                              ; $5753: $3f
	ld c, [hl]                                       ; $5754: $4e
	ld h, e                                          ; $5755: $63
	ld c, h                                          ; $5756: $4c
	and b                                            ; $5757: $a0
	ldh a, [$34]                                     ; $5758: $f0 $34
	ld b, a                                          ; $575a: $47
	db $ec                                           ; $575b: $ec
	ld [$2fa0], sp                                   ; $575c: $08 $a0 $2f
	ld b, b                                          ; $575f: $40
	add hl, sp                                       ; $5760: $39
	ld [hl], a                                       ; $5761: $77
	add hl, sp                                       ; $5762: $39
	ld b, l                                          ; $5763: $45
	add hl, bc                                       ; $5764: $09
	ldh a, [$67]                                     ; $5765: $f0 $67
	ldh a, [$59]                                     ; $5767: $f0 $59
	dec sp                                           ; $5769: $3b
	ccf                                              ; $576a: $3f
	ldh a, [$d0]                                     ; $576b: $f0 $d0
	ld [hl], a                                       ; $576d: $77
	ldh a, [c]                                       ; $576e: $f2
	or b                                             ; $576f: $b0
	ld c, h                                          ; $5770: $4c
	and b                                            ; $5771: $a0
	ld c, d                                          ; $5772: $4a
	ld c, a                                          ; $5773: $4f
	xor h                                            ; $5774: $ac
	ldh a, [$67]                                     ; $5775: $f0 $67
	ldh a, [$59]                                     ; $5777: $f0 $59
	ld b, d                                          ; $5779: $42
	ldh a, [rOBP0]                                   ; $577a: $f0 $48
	ldh a, [$2c]                                     ; $577c: $f0 $2c
	ld d, e                                          ; $577e: $53
	db $ed                                           ; $577f: $ed
	ld [hl], d                                       ; $5780: $72
	ld c, h                                          ; $5781: $4c
	and b                                            ; $5782: $a0
	ld b, b                                          ; $5783: $40
	add hl, sp                                       ; $5784: $39
	ld c, d                                          ; $5785: $4a
	ld a, $66                                        ; $5786: $3e $66
	add hl, sp                                       ; $5788: $39
	and b                                            ; $5789: $a0
	ld b, [hl]                                       ; $578a: $46
	ld c, e                                          ; $578b: $4b
	ld c, e                                          ; $578c: $4b
	ld c, e                                          ; $578d: $4b
	ld c, e                                          ; $578e: $4b
	xor b                                            ; $578f: $a8
	xor $1e                                          ; $5790: $ee $1e
	ldh a, [rOBP0]                                   ; $5792: $f0 $48
	ldh a, [$2c]                                     ; $5794: $f0 $2c
	inc [hl]                                         ; $5796: $34
	ld l, e                                          ; $5797: $6b
	inc a                                            ; $5798: $3c
	ldh a, [$5d]                                     ; $5799: $f0 $5d
	db $ec                                           ; $579b: $ec
	ret c                                            ; $579c: $d8

	and c                                            ; $579d: $a1
	cpl                                              ; $579e: $2f
	adc b                                            ; $579f: $88
	sub c                                            ; $57a0: $91
	inc [hl]                                         ; $57a1: $34
	ldh a, [rAUD4ENV]                                ; $57a2: $f0 $21
	ldh a, [rAUD4GO]                                 ; $57a4: $f0 $23
	jr c, @+$3e                                      ; $57a6: $38 $3c

	dec sp                                           ; $57a8: $3b
	ld d, h                                          ; $57a9: $54
	ld a, $3f                                        ; $57aa: $3e $3f
	ld c, [hl]                                       ; $57ac: $4e
	ld c, h                                          ; $57ad: $4c
	add hl, bc                                       ; $57ae: $09
	ld b, b                                          ; $57af: $40
	add hl, sp                                       ; $57b0: $39
	ld [hl], a                                       ; $57b1: $77
	add hl, sp                                       ; $57b2: $39
	ld c, d                                          ; $57b3: $4a
	ld a, $66                                        ; $57b4: $3e $66
	add hl, sp                                       ; $57b6: $39
	xor b                                            ; $57b7: $a8
	ld h, h                                          ; $57b8: $64
	dec sp                                           ; $57b9: $3b
	inc a                                            ; $57ba: $3c
	ld a, $38                                        ; $57bb: $3e $38
	and b                                            ; $57bd: $a0
	ld b, [hl]                                       ; $57be: $46
	ld e, c                                          ; $57bf: $59
	dec sp                                           ; $57c0: $3b
	xor h                                            ; $57c1: $ac
	ldh a, [c]                                       ; $57c2: $f2
	ld bc, $5138                                     ; $57c3: $01 $38 $51
	ldh a, [$cb]                                     ; $57c6: $f0 $cb
	ccf                                              ; $57c8: $3f
	ld h, h                                          ; $57c9: $64
	ldh a, [c]                                       ; $57ca: $f2
	add h                                            ; $57cb: $84
	ld d, e                                          ; $57cc: $53
	pop af                                           ; $57cd: $f1
	ld a, [hl-]                                      ; $57ce: $3a
	jr c, jr_08e_5834                                ; $57cf: $38 $63

	and b                                            ; $57d1: $a0
	xor $05                                          ; $57d2: $ee $05
	inc [hl]                                         ; $57d4: $34
	ld h, h                                          ; $57d5: $64
	ldh a, [c]                                       ; $57d6: $f2
	add h                                            ; $57d7: $84
	ld d, e                                          ; $57d8: $53
	ld c, e                                          ; $57d9: $4b
	ld c, e                                          ; $57da: $4b
	ld c, e                                          ; $57db: $4b
	ld c, b                                          ; $57dc: $48
	and b                                            ; $57dd: $a0
	cpl                                              ; $57de: $2f
	xor $1e                                          ; $57df: $ee $1e
	ldh a, [rOBP0]                                   ; $57e1: $f0 $48
	ldh a, [$2c]                                     ; $57e3: $f0 $2c
	ld b, a                                          ; $57e5: $47
	ldh a, [rHDMA5]                                  ; $57e6: $f0 $55
	ldh a, [rBCPS]                                   ; $57e8: $f0 $68
	db $ec                                           ; $57ea: $ec
	ret c                                            ; $57eb: $d8

	inc a                                            ; $57ec: $3c
	add hl, bc                                       ; $57ed: $09
	ld [$a0af], a                                    ; $57ee: $ea $af $a0
	ld b, b                                          ; $57f1: $40
	add hl, sp                                       ; $57f2: $39
	xor c                                            ; $57f3: $a9
	db $ed                                           ; $57f4: $ed
	ld b, e                                          ; $57f5: $43
	ld h, h                                          ; $57f6: $64
	inc a                                            ; $57f7: $3c
	ld a, $38                                        ; $57f8: $3e $38
	db $ec                                           ; $57fa: $ec
	ret c                                            ; $57fb: $d8

	and b                                            ; $57fc: $a0
	ld l, e                                          ; $57fd: $6b
	inc a                                            ; $57fe: $3c
	inc [hl]                                         ; $57ff: $34
	ld a, $50                                        ; $5800: $3e $50
	ld e, l                                          ; $5802: $5d
	ld h, c                                          ; $5803: $61
	ld d, [hl]                                       ; $5804: $56
	dec sp                                           ; $5805: $3b
	dec a                                            ; $5806: $3d
	ld h, e                                          ; $5807: $63
	and b                                            ; $5808: $a0
	cpl                                              ; $5809: $2f
	xor $1f                                          ; $580a: $ee $1f
	inc [hl]                                         ; $580c: $34
	ret                                              ; $580d: $c9


	ld c, h                                          ; $580e: $4c
	add hl, bc                                       ; $580f: $09
	ld b, b                                          ; $5810: $40
	ld b, c                                          ; $5811: $41
	ld a, [hl-]                                      ; $5812: $3a
	ld b, a                                          ; $5813: $47
	xor h                                            ; $5814: $ac
	ldh a, [rAUD4ENV]                                ; $5815: $f0 $21
	ldh a, [rAUD4GO]                                 ; $5817: $f0 $23
	ld d, l                                          ; $5819: $55
	ld a, [hl-]                                      ; $581a: $3a
	inc a                                            ; $581b: $3c
	dec sp                                           ; $581c: $3b
	dec a                                            ; $581d: $3d
	and c                                            ; $581e: $a1
	ld b, [hl]                                       ; $581f: $46
	ld b, [hl]                                       ; $5820: $46
	jr c, jr_08e_585c                                ; $5821: $38 $39

jr_08e_5823:
	ld b, d                                          ; $5823: $42
	ld c, e                                          ; $5824: $4b
	inc de                                           ; $5825: $13
	adc e                                            ; $5826: $8b
	ld e, h                                          ; $5827: $5c
	db $ec                                           ; $5828: $ec
	ret c                                            ; $5829: $d8

	ld b, c                                          ; $582a: $41
	ld b, h                                          ; $582b: $44
	and b                                            ; $582c: $a0
	jp nc, $f013                                     ; $582d: $d2 $13 $f0

	ld hl, $23f0                                     ; $5830: $21 $f0 $23
	ld d, l                                          ; $5833: $55

jr_08e_5834:
	ld a, [hl-]                                      ; $5834: $3a
	jr c, jr_08e_5823                                ; $5835: $38 $ec

	ld [de], a                                       ; $5837: $12
	and b                                            ; $5838: $a0
	ld l, d                                          ; $5839: $6a
	ld [hl], d                                       ; $583a: $72
	ccf                                              ; $583b: $3f
	ld e, h                                          ; $583c: $5c
	dec a                                            ; $583d: $3d
	inc [hl]                                         ; $583e: $34
	db $ec                                           ; $583f: $ec
	ld a, [$f0a8]                                    ; $5840: $fa $a8 $f0
	adc d                                            ; $5843: $8a
	ldh a, [rHDMA2]                                  ; $5844: $f0 $52
	inc a                                            ; $5846: $3c
	dec sp                                           ; $5847: $3b
	ldh [$a0], a                                     ; $5848: $e0 $a0
	cpl                                              ; $584a: $2f
	jp hl                                            ; $584b: $e9


	rrc c                                            ; $584c: $cb $09
	ld c, h                                          ; $584e: $4c
	xor b                                            ; $584f: $a8
	ldh a, [$8a]                                     ; $5850: $f0 $8a
	ldh a, [rHDMA2]                                  ; $5852: $f0 $52
	jr c, jr_08e_58b9                                ; $5854: $38 $63

	ld b, l                                          ; $5856: $45
	ld c, h                                          ; $5857: $4c
	and b                                            ; $5858: $a0
	ld b, b                                          ; $5859: $40
	ld c, l                                          ; $585a: $4d
	ld d, e                                          ; $585b: $53

jr_08e_585c:
	pop af                                           ; $585c: $f1
	db $fc                                           ; $585d: $fc
	ldh a, [rOCPS]                                   ; $585e: $f0 $6a
	ld b, l                                          ; $5860: $45
	ld c, h                                          ; $5861: $4c
	and b                                            ; $5862: $a0
	cpl                                              ; $5863: $2f
	jp hl                                            ; $5864: $e9


	add hl, sp                                       ; $5865: $39
	add hl, bc                                       ; $5866: $09
	ld b, b                                          ; $5867: $40
	add hl, sp                                       ; $5868: $39
	xor c                                            ; $5869: $a9
	ldh a, [$34]                                     ; $586a: $f0 $34
	ld b, a                                          ; $586c: $47
	db $ec                                           ; $586d: $ec
	ld [$f0a0], sp                                   ; $586e: $08 $a0 $f0
	ld a, e                                          ; $5871: $7b
	ld h, l                                          ; $5872: $65
	add e                                            ; $5873: $83
	ld d, e                                          ; $5874: $53
	sbc h                                            ; $5875: $9c
	ld c, l                                          ; $5876: $4d
	ccf                                              ; $5877: $3f
	ld c, [hl]                                       ; $5878: $4e
	inc de                                           ; $5879: $13
	db $ec                                           ; $587a: $ec
	ld [de], a                                       ; $587b: $12
	and b                                            ; $587c: $a0
	sbc $ac                                          ; $587d: $de $ac
	ld b, b                                          ; $587f: $40
	add hl, sp                                       ; $5880: $39
	ld [hl], a                                       ; $5881: $77
	dec sp                                           ; $5882: $3b
	ccf                                              ; $5883: $3f
	ld c, [hl]                                       ; $5884: $4e
	ld b, d                                          ; $5885: $42
	and c                                            ; $5886: $a1
	cpl                                              ; $5887: $2f
	jp hl                                            ; $5888: $e9


	call z, $d309                                    ; $5889: $cc $09 $d3
	xor c                                            ; $588c: $a9
	ld h, c                                          ; $588d: $61
	ld d, [hl]                                       ; $588e: $56
	ld b, c                                          ; $588f: $41
	ld c, c                                          ; $5890: $49
	ld [hl], d                                       ; $5891: $72
	ccf                                              ; $5892: $3f
	ld h, h                                          ; $5893: $64
	ld e, l                                          ; $5894: $5d
	ld a, e                                          ; $5895: $7b
	ld b, l                                          ; $5896: $45
	inc a                                            ; $5897: $3c
	dec sp                                           ; $5898: $3b
	dec a                                            ; $5899: $3d
	and b                                            ; $589a: $a0
	ld b, b                                          ; $589b: $40
	add hl, sp                                       ; $589c: $39
	ld b, h                                          ; $589d: $44
	dec sp                                           ; $589e: $3b
	dec a                                            ; $589f: $3d
	xor c                                            ; $58a0: $a9
	ld l, d                                          ; $58a1: $6a
	ldh a, [$0d]                                     ; $58a2: $f0 $0d
	ld [hl], d                                       ; $58a4: $72
	ccf                                              ; $58a5: $3f
	ld l, h                                          ; $58a6: $6c
	ld c, [hl]                                       ; $58a7: $4e
	ld h, e                                          ; $58a8: $63
	and b                                            ; $58a9: $a0
	ld b, b                                          ; $58aa: $40
	add hl, sp                                       ; $58ab: $39
	ld b, h                                          ; $58ac: $44
	dec sp                                           ; $58ad: $3b
	dec a                                            ; $58ae: $3d
	xor c                                            ; $58af: $a9
	ld a, a                                          ; $58b0: $7f
	ldh a, [$9a]                                     ; $58b1: $f0 $9a
	inc a                                            ; $58b3: $3c
	ld a, [hl-]                                      ; $58b4: $3a
	inc a                                            ; $58b5: $3c
	dec sp                                           ; $58b6: $3b
	dec a                                            ; $58b7: $3d
	ld h, e                                          ; $58b8: $63

jr_08e_58b9:
	and b                                            ; $58b9: $a0
	ld b, b                                          ; $58ba: $40
	ld c, l                                          ; $58bb: $4d
	ld e, e                                          ; $58bc: $5b
	ld d, [hl]                                       ; $58bd: $56
	xor h                                            ; $58be: $ac
	db $ec                                           ; $58bf: $ec
	push bc                                          ; $58c0: $c5
	xor h                                            ; $58c1: $ac
	ldh a, [rAUD2HIGH]                               ; $58c2: $f0 $19
	ld b, a                                          ; $58c4: $47
	sub [hl]                                         ; $58c5: $96
	ld d, a                                          ; $58c6: $57
	ld d, d                                          ; $58c7: $52
	ld a, $66                                        ; $58c8: $3e $66
	add hl, sp                                       ; $58ca: $39
	and b                                            ; $58cb: $a0
	ld [$a840], a                                    ; $58cc: $ea $40 $a8
	ldh a, [$2f]                                     ; $58cf: $f0 $2f
	ld [hl], l                                       ; $58d1: $75
	ld a, l                                          ; $58d2: $7d
	ld a, [hl-]                                      ; $58d3: $3a
	ld h, h                                          ; $58d4: $64
	ldh a, [hDisp0_OBP0]                                     ; $58d5: $f0 $86
	ld d, e                                          ; $58d7: $53
	inc de                                           ; $58d8: $13
	adc $46                                          ; $58d9: $ce $46
	ld c, [hl]                                       ; $58db: $4e
	ld h, e                                          ; $58dc: $63
	ld c, h                                          ; $58dd: $4c
	and b                                            ; $58de: $a0
	cpl                                              ; $58df: $2f
	add sp, $59                                      ; $58e0: $e8 $59
	add hl, bc                                       ; $58e2: $09
	db $ec                                           ; $58e3: $ec
	ld b, l                                          ; $58e4: $45
	xor b                                            ; $58e5: $a8
	ld l, a                                          ; $58e6: $6f
	ld c, a                                          ; $58e7: $4f
	inc [hl]                                         ; $58e8: $34
	ld b, b                                          ; $58e9: $40
	add hl, sp                                       ; $58ea: $39
	ld [hl], a                                       ; $58eb: $77
	add hl, sp                                       ; $58ec: $39
	ld h, e                                          ; $58ed: $63
	and b                                            ; $58ee: $a0
	ldh a, [hDisp0_OBP0]                                     ; $58ef: $f0 $86
	dec sp                                           ; $58f1: $3b
	ccf                                              ; $58f2: $3f
	inc [hl]                                         ; $58f3: $34
	db $ed                                           ; $58f4: $ed
	ld e, a                                          ; $58f5: $5f
	ld b, l                                          ; $58f6: $45
	ld c, h                                          ; $58f7: $4c
	and b                                            ; $58f8: $a0
	jr c, jr_08e_5933                                ; $58f9: $38 $38

	ldh a, [$7b]                                     ; $58fb: $f0 $7b
	ld h, l                                          ; $58fd: $65
	add e                                            ; $58fe: $83
	ld a, $3f                                        ; $58ff: $3e $3f
	ld c, [hl]                                       ; $5901: $4e
	ld h, e                                          ; $5902: $63
	ld c, h                                          ; $5903: $4c
	and b                                            ; $5904: $a0
	cpl                                              ; $5905: $2f
	ld e, d                                          ; $5906: $5a
	ld d, h                                          ; $5907: $54
	ld b, a                                          ; $5908: $47
	ld b, [hl]                                       ; $5909: $46
	ld c, [hl]                                       ; $590a: $4e
	ld b, d                                          ; $590b: $42
	and c                                            ; $590c: $a1
	db $ec                                           ; $590d: $ec
	ld a, e                                          ; $590e: $7b
	ld d, e                                          ; $590f: $53
	inc de                                           ; $5910: $13
	ldh a, [$f5]                                     ; $5911: $f0 $f5
	add hl, sp                                       ; $5913: $39
	db $ec                                           ; $5914: $ec
	ld [de], a                                       ; $5915: $12
	and b                                            ; $5916: $a0
	ld b, b                                          ; $5917: $40
	ld c, l                                          ; $5918: $4d
	xor h                                            ; $5919: $ac
	pop af                                           ; $591a: $f1
	jp nz, $21f0                                     ; $591b: $c2 $f0 $21

	ldh a, [rAUD3LEVEL]                              ; $591e: $f0 $1c
	ld b, a                                          ; $5920: $47
	add d                                            ; $5921: $82
	dec sp                                           ; $5922: $3b
	ccf                                              ; $5923: $3f
	ld c, [hl]                                       ; $5924: $4e
	and c                                            ; $5925: $a1
	ld e, d                                          ; $5926: $5a
	ld d, h                                          ; $5927: $54
	ld b, a                                          ; $5928: $47
	ld b, [hl]                                       ; $5929: $46
	ld c, [hl]                                       ; $592a: $4e
	inc a                                            ; $592b: $3c
	xor h                                            ; $592c: $ac
	ldh a, [$a4]                                     ; $592d: $f0 $a4
	ld e, [hl]                                       ; $592f: $5e
	ccf                                              ; $5930: $3f
	ld l, h                                          ; $5931: $6c
	dec a                                            ; $5932: $3d

jr_08e_5933:
	ld d, b                                          ; $5933: $50
	and c                                            ; $5934: $a1
	cpl                                              ; $5935: $2f
	ld [$0948], a                                    ; $5936: $ea $48 $09
	ldh a, [hDisp0_OBP0]                                     ; $5939: $f0 $86
	dec sp                                           ; $593b: $3b
	ccf                                              ; $593c: $3f
	xor h                                            ; $593d: $ac
	ldh a, [$0b]                                     ; $593e: $f0 $0b
	sub [hl]                                         ; $5940: $96
	ld c, l                                          ; $5941: $4d
	ld d, e                                          ; $5942: $53
	db $ed                                           ; $5943: $ed
	xor [hl]                                         ; $5944: $ae
	ld a, [hl-]                                      ; $5945: $3a
	ld b, d                                          ; $5946: $42
	ld b, l                                          ; $5947: $45
	ld c, h                                          ; $5948: $4c
	and b                                            ; $5949: $a0
	cpl                                              ; $594a: $2f
	db $ed                                           ; $594b: $ed
	ld e, l                                          ; $594c: $5d
	ld c, d                                          ; $594d: $4a
	pop af                                           ; $594e: $f1
	xor a                                            ; $594f: $af
	ccf                                              ; $5950: $3f
	ld c, [hl]                                       ; $5951: $4e
	ld b, d                                          ; $5952: $42
	ld c, e                                          ; $5953: $4b
	add a                                            ; $5954: $87
	ldh a, [$5d]                                     ; $5955: $f0 $5d
	ld b, h                                          ; $5957: $44
	ld b, l                                          ; $5958: $45
	ld c, h                                          ; $5959: $4c
	add hl, bc                                       ; $595a: $09
	db $ec                                           ; $595b: $ec
	reti                                             ; $595c: $d9


	xor h                                            ; $595d: $ac
	ld b, b                                          ; $595e: $40
	add hl, sp                                       ; $595f: $39
	ld [hl], a                                       ; $5960: $77
	add hl, sp                                       ; $5961: $39
	ld h, e                                          ; $5962: $63
	ld b, l                                          ; $5963: $45
	ld c, h                                          ; $5964: $4c
	and b                                            ; $5965: $a0

jr_08e_5966:
	db $d3                                           ; $5966: $d3
	ld b, l                                          ; $5967: $45
	ld c, h                                          ; $5968: $4c
	and b                                            ; $5969: $a0
	cpl                                              ; $596a: $2f
	ld d, h                                          ; $596b: $54
	ld d, h                                          ; $596c: $54
	inc a                                            ; $596d: $3c
	ld d, b                                          ; $596e: $50
	inc [hl]                                         ; $596f: $34
	ldh a, [rHDMA1]                                  ; $5970: $f0 $51
	dec sp                                           ; $5972: $3b

jr_08e_5973:
	ccf                                              ; $5973: $3f
	jr c, jr_08e_59b1                                ; $5974: $38 $3b

	dec a                                            ; $5976: $3d
	ld d, b                                          ; $5977: $50
	and c                                            ; $5978: $a1
	ld b, b                                          ; $5979: $40
	ld b, c                                          ; $597a: $41
	ld a, [hl-]                                      ; $597b: $3a
	sbc d                                            ; $597c: $9a
	inc de                                           ; $597d: $13
	ld d, c                                          ; $597e: $51
	ld c, [hl]                                       ; $597f: $4e
	ld h, e                                          ; $5980: $63
	ld e, l                                          ; $5981: $5d
	ld a, [hl-]                                      ; $5982: $3a
	jr c, @+$4c                                      ; $5983: $38 $4a

	ld a, $66                                        ; $5985: $3e $66
	add hl, sp                                       ; $5987: $39
	and b                                            ; $5988: $a0
	ld b, b                                          ; $5989: $40
	ld b, c                                          ; $598a: $41
	ld a, [hl-]                                      ; $598b: $3a
	sbc d                                            ; $598c: $9a
	ld a, $3d                                        ; $598d: $3e $3d
	ld d, b                                          ; $598f: $50
	xor h                                            ; $5990: $ac
	ld hl, sp+$2c                                    ; $5991: $f8 $2c
	db $f4                                           ; $5993: $f4
	ld [hl], h                                       ; $5994: $74
	db $ec                                           ; $5995: $ec
	ret c                                            ; $5996: $d8

	and b                                            ; $5997: $a0
	ld b, b                                          ; $5998: $40
	ld b, c                                          ; $5999: $41
	ld a, [hl-]                                      ; $599a: $3a
	sbc d                                            ; $599b: $9a
	ld a, $3a                                        ; $599c: $3e $3a
	jr c, jr_08e_5a03                                ; $599e: $38 $63

	ld b, l                                          ; $59a0: $45
	and b                                            ; $59a1: $a0
	cpl                                              ; $59a2: $2f
	db $ed                                           ; $59a3: $ed
	xor [hl]                                         ; $59a4: $ae
	ld d, l                                          ; $59a5: $55
	ld e, b                                          ; $59a6: $58
	ld d, e                                          ; $59a7: $53
	ld d, a                                          ; $59a8: $57
	pop af                                           ; $59a9: $f1
	ld b, h                                          ; $59aa: $44
	ld b, h                                          ; $59ab: $44
	ld c, h                                          ; $59ac: $4c
	and c                                            ; $59ad: $a1
	db $d3                                           ; $59ae: $d3
	ld b, l                                          ; $59af: $45
	xor b                                            ; $59b0: $a8

jr_08e_59b1:
	db $ec                                           ; $59b1: $ec

jr_08e_59b2:
	reti                                             ; $59b2: $d9


	ldh a, [rTAC]                                    ; $59b3: $f0 $07
	inc a                                            ; $59b5: $3c
	dec sp                                           ; $59b6: $3b
	ld h, c                                          ; $59b7: $61
	ld d, [hl]                                       ; $59b8: $56
	add hl, sp                                       ; $59b9: $39
	and c                                            ; $59ba: $a1
	db $d3                                           ; $59bb: $d3
	ld b, l                                          ; $59bc: $45
	and b                                            ; $59bd: $a0
	db $d3                                           ; $59be: $d3

jr_08e_59bf:
	ld b, l                                          ; $59bf: $45
	xor b                                            ; $59c0: $a8
	ldh a, [$5c]                                     ; $59c1: $f0 $5c
	jr c, jr_08e_5966                                ; $59c3: $38 $a1

	ld [$a840], a                                    ; $59c5: $ea $40 $a8
	ldh a, [$2f]                                     ; $59c8: $f0 $2f
	ld [hl], l                                       ; $59ca: $75
	ld a, l                                          ; $59cb: $7d
	ld c, h                                          ; $59cc: $4c
	xor b                                            ; $59cd: $a8
	ldh a, [$0a]                                     ; $59ce: $f0 $0a
	ld d, l                                          ; $59d0: $55
	ldh a, [$e7]                                     ; $59d1: $f0 $e7
	ld d, a                                          ; $59d3: $57
	ld d, d                                          ; $59d4: $52
	ld a, $66                                        ; $59d5: $3e $66
	add hl, sp                                       ; $59d7: $39
	and b                                            ; $59d8: $a0
	pop af                                           ; $59d9: $f1
	ld h, l                                          ; $59da: $65
	dec sp                                           ; $59db: $3b
	ccf                                              ; $59dc: $3f
	xor h                                            ; $59dd: $ac
	ld [$4454], a                                    ; $59de: $ea $54 $44
	ld c, c                                          ; $59e1: $49
	ld [hl], a                                       ; $59e2: $77
	add hl, sp                                       ; $59e3: $39
	ld h, e                                          ; $59e4: $63
	and b                                            ; $59e5: $a0
	cpl                                              ; $59e6: $2f
	add sp, $30                                      ; $59e7: $e8 $30
	add hl, bc                                       ; $59e9: $09
	ld d, c                                          ; $59ea: $51
	ld [hl], b                                       ; $59eb: $70
	ld d, l                                          ; $59ec: $55
	db $ed                                           ; $59ed: $ed
	inc bc                                           ; $59ee: $03
	ld c, h                                          ; $59ef: $4c
	xor l                                            ; $59f0: $ad
	jr c, jr_08e_5973                                ; $59f1: $38 $80

	ld d, d                                          ; $59f3: $52
	ld c, d                                          ; $59f4: $4a
	ld c, a                                          ; $59f5: $4f
	ld d, h                                          ; $59f6: $54
	add hl, sp                                       ; $59f7: $39
	ld a, $3f                                        ; $59f8: $3e $3f
	jr c, jr_08e_5a39                                ; $59fa: $38 $3d

	jr c, jr_08e_5a61                                ; $59fc: $38 $63

	and b                                            ; $59fe: $a0
	ld d, c                                          ; $59ff: $51
	ld [hl], b                                       ; $5a00: $70
	ld d, l                                          ; $5a01: $55
	db $ed                                           ; $5a02: $ed

jr_08e_5a03:
	inc bc                                           ; $5a03: $03
	ld c, d                                          ; $5a04: $4a
	xor h                                            ; $5a05: $ac
	ldh a, [$57]                                     ; $5a06: $f0 $57
	ldh a, [$ae]                                     ; $5a08: $f0 $ae
	ld b, h                                          ; $5a0a: $44
	ld c, c                                          ; $5a0b: $49
	ld [hl], a                                       ; $5a0c: $77
	ld h, e                                          ; $5a0d: $63
	ld a, [hl-]                                      ; $5a0e: $3a
	jr c, jr_08e_59b2                                ; $5a0f: $38 $a1

	ld d, c                                          ; $5a11: $51
	ld [hl], b                                       ; $5a12: $70
	ld d, l                                          ; $5a13: $55
	db $ed                                           ; $5a14: $ed
	inc bc                                           ; $5a15: $03
	ld b, h                                          ; $5a16: $44
	ld c, c                                          ; $5a17: $49
	inc de                                           ; $5a18: $13
	ld [hl], a                                       ; $5a19: $77
	ld h, e                                          ; $5a1a: $63
	ld a, [hl-]                                      ; $5a1b: $3a
	jr c, jr_08e_59bf                                ; $5a1c: $38 $a1

	cpl                                              ; $5a1e: $2f
	add sp, -$1f                                     ; $5a1f: $e8 $e1
	add hl, bc                                       ; $5a21: $09
	ld b, b                                          ; $5a22: $40
	ld c, l                                          ; $5a23: $4d
	ld c, e                                          ; $5a24: $4b
	ld b, b                                          ; $5a25: $40
	add hl, sp                                       ; $5a26: $39
	ld b, h                                          ; $5a27: $44
	ld e, l                                          ; $5a28: $5d
	ld e, d                                          ; $5a29: $5a
	ld c, h                                          ; $5a2a: $4c
	and b                                            ; $5a2b: $a0
	ld b, b                                          ; $5a2c: $40
	ld c, l                                          ; $5a2d: $4d
	ld c, e                                          ; $5a2e: $4b
	ld b, b                                          ; $5a2f: $40
	add hl, sp                                       ; $5a30: $39
	ld b, h                                          ; $5a31: $44
	ld e, l                                          ; $5a32: $5d
	ld e, d                                          ; $5a33: $5a
	xor h                                            ; $5a34: $ac
	add d                                            ; $5a35: $82
	ld h, e                                          ; $5a36: $63
	ld a, [hl-]                                      ; $5a37: $3a
	ld d, l                                          ; $5a38: $55

jr_08e_5a39:
	ccf                                              ; $5a39: $3f
	ld c, a                                          ; $5a3a: $4f
	jr c, jr_08e_5a75                                ; $5a3b: $38 $38

	ld d, h                                          ; $5a3d: $54
	ld c, c                                          ; $5a3e: $49
	ld b, l                                          ; $5a3f: $45
	and b                                            ; $5a40: $a0
	ldh a, [c]                                       ; $5a41: $f2
	add l                                            ; $5a42: $85
	ldh a, [rAUD1SWEEP]                              ; $5a43: $f0 $10
	ld [hl], c                                       ; $5a45: $71
	ld a, $61                                        ; $5a46: $3e $61
	ld d, [hl]                                       ; $5a48: $56
	add hl, sp                                       ; $5a49: $39
	ld h, e                                          ; $5a4a: $63
	ld c, h                                          ; $5a4b: $4c
	and b                                            ; $5a4c: $a0
	cpl                                              ; $5a4d: $2f
	ld b, b                                          ; $5a4e: $40
	add hl, sp                                       ; $5a4f: $39
	ld b, h                                          ; $5a50: $44
	ld c, h                                          ; $5a51: $4c
	inc [hl]                                         ; $5a52: $34
	ldh a, [$2f]                                     ; $5a53: $f0 $2f
	ld [hl], l                                       ; $5a55: $75
	ld a, l                                          ; $5a56: $7d
	ld b, h                                          ; $5a57: $44
	ld c, h                                          ; $5a58: $4c
	add hl, bc                                       ; $5a59: $09
	xor $1f                                          ; $5a5a: $ee $1f
	inc [hl]                                         ; $5a5c: $34
	db $ed                                           ; $5a5d: $ed
	inc bc                                           ; $5a5e: $03
	ld a, [hl-]                                      ; $5a5f: $3a
	inc de                                           ; $5a60: $13

jr_08e_5a61:
	adc d                                            ; $5a61: $8a
	ld a, $58                                        ; $5a62: $3e $58
	ld c, h                                          ; $5a64: $4c
	dec [hl]                                         ; $5a65: $35
	db $ed                                           ; $5a66: $ed
	ld e, a                                          ; $5a67: $5f
	ld b, h                                          ; $5a68: $44
	ld c, c                                          ; $5a69: $49
	ld [hl], a                                       ; $5a6a: $77
	add hl, sp                                       ; $5a6b: $39
	ld h, e                                          ; $5a6c: $63
	and b                                            ; $5a6d: $a0
	pop af                                           ; $5a6e: $f1
	ld h, l                                          ; $5a6f: $65
	ldh a, [$c9]                                     ; $5a70: $f0 $c9
	dec sp                                           ; $5a72: $3b
	ccf                                              ; $5a73: $3f
	xor h                                            ; $5a74: $ac

jr_08e_5a75:
	db $ed                                           ; $5a75: $ed
	ld e, a                                          ; $5a76: $5f
	ld b, h                                          ; $5a77: $44
	ld c, c                                          ; $5a78: $49
	ld [hl], a                                       ; $5a79: $77
	add hl, sp                                       ; $5a7a: $39
	ld h, e                                          ; $5a7b: $63
	and b                                            ; $5a7c: $a0
	ld d, d                                          ; $5a7d: $52
	ld e, b                                          ; $5a7e: $58
	ld b, a                                          ; $5a7f: $47
	db $ed                                           ; $5a80: $ed
	ld e, a                                          ; $5a81: $5f
	ld b, l                                          ; $5a82: $45
	ld c, h                                          ; $5a83: $4c
	and b                                            ; $5a84: $a0
	ld b, [hl]                                       ; $5a85: $46
	dec sp                                           ; $5a86: $3b
	inc [hl]                                         ; $5a87: $34
	ld b, [hl]                                       ; $5a88: $46
	ld c, l                                          ; $5a89: $4d
	ld c, e                                          ; $5a8a: $4b
	ld l, e                                          ; $5a8b: $6b
	dec sp                                           ; $5a8c: $3b
	ccf                                              ; $5a8d: $3f
	jr c, @+$3b                                      ; $5a8e: $38 $39

	inc de                                           ; $5a90: $13
	pop af                                           ; $5a91: $f1
	ld h, l                                          ; $5a92: $65
	ldh a, [$e7]                                     ; $5a93: $f0 $e7
	and c                                            ; $5a95: $a1
	cpl                                              ; $5a96: $2f
	jp hl                                            ; $5a97: $e9


	call nz, $f009                                   ; $5a98: $c4 $09 $f0
	ld e, d                                          ; $5a9b: $5a
	add l                                            ; $5a9c: $85
	inc [hl]                                         ; $5a9d: $34
	ret nz                                           ; $5a9e: $c0

	xor b                                            ; $5a9f: $a8
	di                                               ; $5aa0: $f3
	nop                                              ; $5aa1: $00
	ld a, $38                                        ; $5aa2: $3e $38
	ld b, d                                          ; $5aa4: $42
	ld c, h                                          ; $5aa5: $4c
	and b                                            ; $5aa6: $a0
	ldh a, [$5a]                                     ; $5aa7: $f0 $5a
	add l                                            ; $5aa9: $85
	inc [hl]                                         ; $5aaa: $34
	di                                               ; $5aab: $f3
	nop                                              ; $5aac: $00
	ld a, $38                                        ; $5aad: $3e $38
	ld b, d                                          ; $5aaf: $42
	ld c, h                                          ; $5ab0: $4c
	and b                                            ; $5ab1: $a0
	ldh a, [c]                                       ; $5ab2: $f2
	sub a                                            ; $5ab3: $97
	ldh a, [$e7]                                     ; $5ab4: $f0 $e7
	dec sp                                           ; $5ab6: $3b
	ccf                                              ; $5ab7: $3f
	add d                                            ; $5ab8: $82
	xor $1f                                          ; $5ab9: $ee $1f
	ld b, h                                          ; $5abb: $44
	and b                                            ; $5abc: $a0
	cpl                                              ; $5abd: $2f
	add sp, $57                                      ; $5abe: $e8 $57
	add hl, bc                                       ; $5ac0: $09
	ld e, [hl]                                       ; $5ac1: $5e
	dec sp                                           ; $5ac2: $3b
	inc [hl]                                         ; $5ac3: $34
	ldh a, [rAUD4GO]                                 ; $5ac4: $f0 $23
	ldh a, [c]                                       ; $5ac6: $f2
	rrca                                             ; $5ac7: $0f
	ldh a, [$e7]                                     ; $5ac8: $f0 $e7
	dec sp                                           ; $5aca: $3b
	ccf                                              ; $5acb: $3f
	inc de                                           ; $5acc: $13
	ld b, [hl]                                       ; $5acd: $46
	ld b, c                                          ; $5ace: $41
	ld a, [hl-]                                      ; $5acf: $3a
	ldh a, [c]                                       ; $5ad0: $f2
	ret z                                            ; $5ad1: $c8

	ld b, h                                          ; $5ad2: $44
	dec sp                                           ; $5ad3: $3b
	dec a                                            ; $5ad4: $3d
	and c                                            ; $5ad5: $a1
	ldh a, [rAUD4GO]                                 ; $5ad6: $f0 $23
	ldh a, [c]                                       ; $5ad8: $f2
	rrca                                             ; $5ad9: $0f
	ldh a, [$e7]                                     ; $5ada: $f0 $e7
	db $ec                                           ; $5adc: $ec
	ret c                                            ; $5add: $d8

	ld h, e                                          ; $5ade: $63
	ld b, l                                          ; $5adf: $45
	and b                                            ; $5ae0: $a0
	ldh a, [rAUD4GO]                                 ; $5ae1: $f0 $23
	ldh a, [c]                                       ; $5ae3: $f2
	rrca                                             ; $5ae4: $0f
	ldh a, [$e7]                                     ; $5ae5: $f0 $e7
	ld c, e                                          ; $5ae7: $4b
	ldh a, [$f5]                                     ; $5ae8: $f0 $f5
	add hl, sp                                       ; $5aea: $39
	ld h, e                                          ; $5aeb: $63
	ld b, l                                          ; $5aec: $45
	and b                                            ; $5aed: $a0
	cpl                                              ; $5aee: $2f
	add sp, $28                                      ; $5aef: $e8 $28
	add hl, bc                                       ; $5af1: $09
	ld b, b                                          ; $5af2: $40
	add hl, sp                                       ; $5af3: $39
	ld b, h                                          ; $5af4: $44
	ld e, l                                          ; $5af5: $5d
	ld e, d                                          ; $5af6: $5a
	ld c, h                                          ; $5af7: $4c
	and b                                            ; $5af8: $a0
	ld a, [hl-]                                      ; $5af9: $3a
	ld b, c                                          ; $5afa: $41
	ld b, h                                          ; $5afb: $44
	inc [hl]                                         ; $5afc: $34
	db $ec                                           ; $5afd: $ec
	dec b                                            ; $5afe: $05
	ld b, c                                          ; $5aff: $41
	ld b, h                                          ; $5b00: $44
	and b                                            ; $5b01: $a0
	ld b, b                                          ; $5b02: $40
	ld c, l                                          ; $5b03: $4d
	ld c, a                                          ; $5b04: $4f
	ld b, b                                          ; $5b05: $40
	add hl, sp                                       ; $5b06: $39
	ld b, h                                          ; $5b07: $44
	ld e, l                                          ; $5b08: $5d
	ld e, d                                          ; $5b09: $5a
	ld c, b                                          ; $5b0a: $48
	and b                                            ; $5b0b: $a0
	cpl                                              ; $5b0c: $2f
	jp hl                                            ; $5b0d: $e9


	ld a, [hl-]                                      ; $5b0e: $3a
	and c                                            ; $5b0f: $a1
	db $ec                                           ; $5b10: $ec
	dec b                                            ; $5b11: $05
	ld a, [hl-]                                      ; $5b12: $3a
	ld d, b                                          ; $5b13: $50
	inc [hl]                                         ; $5b14: $34
	ldh a, [$34]                                     ; $5b15: $f0 $34
	ld b, a                                          ; $5b17: $47
	inc de                                           ; $5b18: $13
	jr c, jr_08e_5b53                                ; $5b19: $38 $38

	ld h, e                                          ; $5b1b: $63
	dec [hl]                                         ; $5b1c: $35
	db $eb                                           ; $5b1d: $eb
	ld e, l                                          ; $5b1e: $5d
	ld b, [hl]                                       ; $5b1f: $46
	ld d, a                                          ; $5b20: $57
	ld d, e                                          ; $5b21: $53
	ld c, c                                          ; $5b22: $49
	add hl, sp                                       ; $5b23: $39
	and b                                            ; $5b24: $a0
	ld b, [hl]                                       ; $5b25: $46
	ld c, e                                          ; $5b26: $4b
	ld c, e                                          ; $5b27: $4b
	ld c, e                                          ; $5b28: $4b
	xor h                                            ; $5b29: $ac
	db $ec                                           ; $5b2a: $ec
	db $db                                           ; $5b2b: $db
	ld l, e                                          ; $5b2c: $6b
	ld b, a                                          ; $5b2d: $47
	ld c, a                                          ; $5b2e: $4f
	db $ec                                           ; $5b2f: $ec
	dec b                                            ; $5b30: $05
	ld h, e                                          ; $5b31: $63
	ld c, h                                          ; $5b32: $4c
	and b                                            ; $5b33: $a0
	ldh a, [$60]                                     ; $5b34: $f0 $60
	ld e, c                                          ; $5b36: $59
	add c                                            ; $5b37: $81
	ld c, d                                          ; $5b38: $4a
	pop af                                           ; $5b39: $f1
	dec c                                            ; $5b3a: $0d
	ldh a, [$79]                                     ; $5b3b: $f0 $79
	ld a, $3f                                        ; $5b3d: $3e $3f
	inc de                                           ; $5b3f: $13
	ld d, l                                          ; $5b40: $55
	ld c, l                                          ; $5b41: $4d
	ld c, [hl]                                       ; $5b42: $4e
	inc a                                            ; $5b43: $3c
	ld a, [hl-]                                      ; $5b44: $3a
	and b                                            ; $5b45: $a0
	cpl                                              ; $5b46: $2f
	ld b, e                                          ; $5b47: $43
	di                                               ; $5b48: $f3
	ld e, $f0                                        ; $5b49: $1e $f0
	ld d, e                                          ; $5b4b: $53
	ld e, e                                          ; $5b4c: $5b
	ld d, [hl]                                       ; $5b4d: $56
	inc de                                           ; $5b4e: $13
	ld d, h                                          ; $5b4f: $54
	ld b, c                                          ; $5b50: $41
	ld a, [hl-]                                      ; $5b51: $3a
	pop af                                           ; $5b52: $f1

jr_08e_5b53:
	ld h, l                                          ; $5b53: $65
	ldh a, [$c9]                                     ; $5b54: $f0 $c9
	ld [hl], d                                       ; $5b56: $72
	ld c, l                                          ; $5b57: $4d
	ld a, [hl-]                                      ; $5b58: $3a
	jr c, jr_08e_5ba7                                ; $5b59: $38 $4c

	and b                                            ; $5b5b: $a0
	xor $10                                          ; $5b5c: $ee $10
	and b                                            ; $5b5e: $a0
	cpl                                              ; $5b5f: $2f
	ld b, e                                          ; $5b60: $43
	ldh a, [rAUD1LOW]                                ; $5b61: $f0 $13
	ldh a, [c]                                       ; $5b63: $f2
	rst GetHLinHL                                          ; $5b64: $cf
	ld a, $3a                                        ; $5b65: $3e $3a
	jr c, jr_08e_5bb3                                ; $5b67: $38 $4a

	ld b, l                                          ; $5b69: $45
	xor b                                            ; $5b6a: $a8
	db $ec                                           ; $5b6b: $ec
	pop hl                                           ; $5b6c: $e1
	and b                                            ; $5b6d: $a0
	cpl                                              ; $5b6e: $2f
	ld b, e                                          ; $5b6f: $43
	db $ec                                           ; $5b70: $ec
	pop hl                                           ; $5b71: $e1
	and c                                            ; $5b72: $a1
	cpl                                              ; $5b73: $2f
	ld [hl-], a                                      ; $5b74: $32
	ld l, e                                          ; $5b75: $6b
	ld b, h                                          ; $5b76: $44
	inc [hl]                                         ; $5b77: $34
	ldh a, [c]                                       ; $5b78: $f2
	ld l, c                                          ; $5b79: $69

jr_08e_5b7a:
	ccf                                              ; $5b7a: $3f
	dec a                                            ; $5b7b: $3d
	ld b, d                                          ; $5b7c: $42
	inc a                                            ; $5b7d: $3c
	xor b                                            ; $5b7e: $a8
	ld [$acab], a                                    ; $5b7f: $ea $ab $ac
	ldh a, [$8a]                                     ; $5b82: $f0 $8a
	ldh a, [rHDMA2]                                  ; $5b84: $f0 $52
	jr c, jr_08e_5b7a                                ; $5b86: $38 $f2

	ld l, c                                          ; $5b88: $69
	ldh a, [$d2]                                     ; $5b89: $f0 $d2
	ld b, h                                          ; $5b8b: $44
	ld a, [hl-]                                      ; $5b8c: $3a
	ld c, b                                          ; $5b8d: $48
	and e                                            ; $5b8e: $a3
	cpl                                              ; $5b8f: $2f
	ldh a, [$4e]                                     ; $5b90: $f0 $4e
	ld a, $55                                        ; $5b92: $3e $55
	inc [hl]                                         ; $5b94: $34
	ldh a, [c]                                       ; $5b95: $f2
	rlca                                             ; $5b96: $07
	ld d, h                                          ; $5b97: $54
	ld d, c                                          ; $5b98: $51
	add hl, bc                                       ; $5b99: $09
	cpl                                              ; $5b9a: $2f
	ld b, e                                          ; $5b9b: $43
	db $ec                                           ; $5b9c: $ec
	pop hl                                           ; $5b9d: $e1

jr_08e_5b9e:
	xor l                                            ; $5b9e: $ad
	ldh a, [c]                                       ; $5b9f: $f2
	rlca                                             ; $5ba0: $07
	ld e, h                                          ; $5ba1: $5c
	ccf                                              ; $5ba2: $3f
	ld c, b                                          ; $5ba3: $48
	and b                                            ; $5ba4: $a0
	add hl, sp                                       ; $5ba5: $39
	inc [hl]                                         ; $5ba6: $34

jr_08e_5ba7:
	add hl, sp                                       ; $5ba7: $39
	xor $1f                                          ; $5ba8: $ee $1f
	dec [hl]                                         ; $5baa: $35
	inc hl                                           ; $5bab: $23
	inc de                                           ; $5bac: $13
	xor $10                                          ; $5bad: $ee $10
	ldh a, [rRP]                                     ; $5baf: $f0 $56
	xor h                                            ; $5bb1: $ac
	add a                                            ; $5bb2: $87

jr_08e_5bb3:
	adc e                                            ; $5bb3: $8b
	ld e, h                                          ; $5bb4: $5c
	ld b, l                                          ; $5bb5: $45
	and b                                            ; $5bb6: $a0
	cpl                                              ; $5bb7: $2f
	ld b, e                                          ; $5bb8: $43
	ld l, d                                          ; $5bb9: $6a
	ld a, [hl-]                                      ; $5bba: $3a
	ld b, c                                          ; $5bbb: $41
	ccf                                              ; $5bbc: $3f
	ld c, b                                          ; $5bbd: $48
	dec [hl]                                         ; $5bbe: $35
	rla                                              ; $5bbf: $17
	ld [hl-], a                                      ; $5bc0: $32
	db $ec                                           ; $5bc1: $ec
	push de                                          ; $5bc2: $d5
	xor b                                            ; $5bc3: $a8
	ld b, l                                          ; $5bc4: $45
	ld d, l                                          ; $5bc5: $55
	ldh a, [$0c]                                     ; $5bc6: $f0 $0c
	ld e, h                                          ; $5bc8: $5c
	pop af                                           ; $5bc9: $f1
	inc b                                            ; $5bca: $04
	ld c, l                                          ; $5bcb: $4d
	ld a, [hl-]                                      ; $5bcc: $3a
	inc a                                            ; $5bcd: $3c
	dec sp                                           ; $5bce: $3b
	dec a                                            ; $5bcf: $3d
	and e                                            ; $5bd0: $a3
	ld h, e                                          ; $5bd1: $63
	inc [hl]                                         ; $5bd2: $34
	ld l, a                                          ; $5bd3: $6f
	xor h                                            ; $5bd4: $ac
	pop af                                           ; $5bd5: $f1
	cp d                                             ; $5bd6: $ba
	dec sp                                           ; $5bd7: $3b
	ld h, c                                          ; $5bd8: $61
	ld d, [hl]                                       ; $5bd9: $56
	dec sp                                           ; $5bda: $3b
	dec a                                            ; $5bdb: $3d
	ld b, c                                          ; $5bdc: $41
	ld b, h                                          ; $5bdd: $44
	xor b                                            ; $5bde: $a8
	ld a, [hl-]                                      ; $5bdf: $3a
	inc [hl]                                         ; $5be0: $34
	ld a, [hl-]                                      ; $5be1: $3a
	ld b, c                                          ; $5be2: $41
	inc a                                            ; $5be3: $3c
	ldh a, [$5d]                                     ; $5be4: $f0 $5d
	ld a, [hl-]                                      ; $5be6: $3a
	ld d, h                                          ; $5be7: $54
	ld c, c                                          ; $5be8: $49
	inc de                                           ; $5be9: $13
	add d                                            ; $5bea: $82
	ld h, e                                          ; $5beb: $63
	ld a, [hl-]                                      ; $5bec: $3a
	inc a                                            ; $5bed: $3c
	dec sp                                           ; $5bee: $3b
	dec a                                            ; $5bef: $3d
	and b                                            ; $5bf0: $a0
	cpl                                              ; $5bf1: $2f
	ld b, e                                          ; $5bf2: $43
	add d                                            ; $5bf3: $82
	dec sp                                           ; $5bf4: $3b
	ccf                                              ; $5bf5: $3f
	dec a                                            ; $5bf6: $3d
	inc [hl]                                         ; $5bf7: $34
	add d                                            ; $5bf8: $82
	dec sp                                           ; $5bf9: $3b
	ccf                                              ; $5bfa: $3f
	dec a                                            ; $5bfb: $3d
	and b                                            ; $5bfc: $a0
	ld a, [hl-]                                      ; $5bfd: $3a
	inc [hl]                                         ; $5bfe: $34
	ld a, [hl-]                                      ; $5bff: $3a
	ld b, c                                          ; $5c00: $41
	ccf                                              ; $5c01: $3f
	add d                                            ; $5c02: $82
	dec sp                                           ; $5c03: $3b
	ccf                                              ; $5c04: $3f
	dec a                                            ; $5c05: $3d
	ld b, d                                          ; $5c06: $42
	and c                                            ; $5c07: $a1
	cpl                                              ; $5c08: $2f
	ld b, e                                          ; $5c09: $43
	halt                                             ; $5c0a: $76
	ld b, d                                          ; $5c0b: $42
	sbc d                                            ; $5c0c: $9a
	ld d, e                                          ; $5c0d: $53
	adc e                                            ; $5c0e: $8b
	ld e, h                                          ; $5c0f: $5c
	db $ed                                           ; $5c10: $ed
	ld b, e                                          ; $5c11: $43
	and b                                            ; $5c12: $a0
	pop af                                           ; $5c13: $f1
	ld a, [hl]                                       ; $5c14: $7e
	ld b, l                                          ; $5c15: $45
	xor h                                            ; $5c16: $ac
	ld b, b                                          ; $5c17: $40
	ld b, c                                          ; $5c18: $41
	ld a, [hl-]                                      ; $5c19: $3a
	sbc d                                            ; $5c1a: $9a
	xor b                                            ; $5c1b: $a8
	jr c, jr_08e_5b9e                                ; $5c1c: $38 $80

	ld c, a                                          ; $5c1e: $4f
	ld b, d                                          ; $5c1f: $42
	db $ed                                           ; $5c20: $ed
	ld a, h                                          ; $5c21: $7c
	ld b, l                                          ; $5c22: $45
	ld c, h                                          ; $5c23: $4c
	and b                                            ; $5c24: $a0
	cpl                                              ; $5c25: $2f
	ld b, e                                          ; $5c26: $43
	ld b, b                                          ; $5c27: $40
	add hl, sp                                       ; $5c28: $39
	ld b, h                                          ; $5c29: $44
	ld b, l                                          ; $5c2a: $45
	xor b                                            ; $5c2b: $a8
	ld l, e                                          ; $5c2c: $6b
	ld b, [hl]                                       ; $5c2d: $46
	ld h, e                                          ; $5c2e: $63
	ccf                                              ; $5c2f: $3f
	ccf                                              ; $5c30: $3f
	ld b, c                                          ; $5c31: $41
	ld b, d                                          ; $5c32: $42
	and c                                            ; $5c33: $a1
	ldh a, [$8c]                                     ; $5c34: $f0 $8c
	inc [hl]                                         ; $5c36: $34
	ldh a, [$34]                                     ; $5c37: $f0 $34
	ld b, a                                          ; $5c39: $47
	ld b, [hl]                                       ; $5c3a: $46
	ld h, e                                          ; $5c3b: $63
	ccf                                              ; $5c3c: $3f
	ccf                                              ; $5c3d: $3f
	ld a, [hl-]                                      ; $5c3e: $3a
	ld b, c                                          ; $5c3f: $41
	inc a                                            ; $5c40: $3c
	inc de                                           ; $5c41: $13
	jr c, jr_08e_5c7e                                ; $5c42: $38 $3a

	jr c, jr_08e_5ca9                                ; $5c44: $38 $63

	ld b, l                                          ; $5c46: $45
	xor b                                            ; $5c47: $a8
	xor $10                                          ; $5c48: $ee $10
	db $ec                                           ; $5c4a: $ec
	cp c                                             ; $5c4b: $b9
	ld h, e                                          ; $5c4c: $63
	and b                                            ; $5c4d: $a0
	cpl                                              ; $5c4e: $2f
	ld b, e                                          ; $5c4f: $43
	ld [hl], $a9                                     ; $5c50: $36 $a9
	ldh a, [$5d]                                     ; $5c52: $f0 $5d
	ld a, [hl-]                                      ; $5c54: $3a
	db $ec                                           ; $5c55: $ec
	pop hl                                           ; $5c56: $e1
	and b                                            ; $5c57: $a0
	cpl                                              ; $5c58: $2f
	ld b, b                                          ; $5c59: $40
	ld b, d                                          ; $5c5a: $42
	ld d, d                                          ; $5c5b: $52
	ld d, d                                          ; $5c5c: $52
	inc [hl]                                         ; $5c5d: $34
	pop af                                           ; $5c5e: $f1
	cp d                                             ; $5c5f: $ba
	ld d, b                                          ; $5c60: $50
	ld a, c                                          ; $5c61: $79
	ccf                                              ; $5c62: $3f
	ld h, h                                          ; $5c63: $64
	ld d, l                                          ; $5c64: $55
	add hl, bc                                       ; $5c65: $09
	ld b, [hl]                                       ; $5c66: $46
	ld e, c                                          ; $5c67: $59
	dec sp                                           ; $5c68: $3b
	xor h                                            ; $5c69: $ac
	ld l, a                                          ; $5c6a: $6f
	inc [hl]                                         ; $5c6b: $34
	pop af                                           ; $5c6c: $f1
	cp d                                             ; $5c6d: $ba
	dec sp                                           ; $5c6e: $3b
	ld h, c                                          ; $5c6f: $61
	ld d, [hl]                                       ; $5c70: $56
	dec sp                                           ; $5c71: $3b
	dec a                                            ; $5c72: $3d
	ld b, c                                          ; $5c73: $41
	ld b, h                                          ; $5c74: $44
	xor b                                            ; $5c75: $a8
	pop af                                           ; $5c76: $f1
	ld sp, $3468                                     ; $5c77: $31 $68 $34
	ret                                              ; $5c7a: $c9


	push af                                          ; $5c7b: $f5
	add sp, -$0d                                     ; $5c7c: $e8 $f3

jr_08e_5c7e:
	ld sp, hl                                        ; $5c7e: $f9

jr_08e_5c7f:
	inc de                                           ; $5c7f: $13
	ld a, $61                                        ; $5c80: $3e $61
	ld d, [hl]                                       ; $5c82: $56
	dec sp                                           ; $5c83: $3b
	ccf                                              ; $5c84: $3f
	and b                                            ; $5c85: $a0
	cpl                                              ; $5c86: $2f
	ld b, e                                          ; $5c87: $43
	ld b, b                                          ; $5c88: $40
	ld c, l                                          ; $5c89: $4d
	ld b, h                                          ; $5c8a: $44
	dec sp                                           ; $5c8b: $3b
	dec a                                            ; $5c8c: $3d
	ld d, b                                          ; $5c8d: $50
	xor h                                            ; $5c8e: $ac
	ld c, a                                          ; $5c8f: $4f
	dec sp                                           ; $5c90: $3b
	ld c, c                                          ; $5c91: $49
	ldh a, [c]                                       ; $5c92: $f2
	ld l, c                                          ; $5c93: $69
	ccf                                              ; $5c94: $3f
	ccf                                              ; $5c95: $3f
	ld c, a                                          ; $5c96: $4f
	inc de                                           ; $5c97: $13
	ld b, l                                          ; $5c98: $45
	inc a                                            ; $5c99: $3c
	dec sp                                           ; $5c9a: $3b
	dec a                                            ; $5c9b: $3d
	ld b, d                                          ; $5c9c: $42
	ld b, a                                          ; $5c9d: $47
	ld c, b                                          ; $5c9e: $48
	and b                                            ; $5c9f: $a0
	db $ec                                           ; $5ca0: $ec
	add hl, bc                                       ; $5ca1: $09
	xor h                                            ; $5ca2: $ac
	xor $06                                          ; $5ca3: $ee $06
	ld b, a                                          ; $5ca5: $47
	ld a, b                                          ; $5ca6: $78
	ld c, l                                          ; $5ca7: $4d
	dec a                                            ; $5ca8: $3d

jr_08e_5ca9:
	ld b, c                                          ; $5ca9: $41
	ld b, h                                          ; $5caa: $44
	inc a                                            ; $5cab: $3c
	ld d, b                                          ; $5cac: $50
	xor h                                            ; $5cad: $ac
	ldh a, [c]                                       ; $5cae: $f2
	ld l, c                                          ; $5caf: $69
	ccf                                              ; $5cb0: $3f
	ld a, [hl-]                                      ; $5cb1: $3a
	ld b, c                                          ; $5cb2: $41
	ccf                                              ; $5cb3: $3f
	jr c, jr_08e_5d06                                ; $5cb4: $38 $50

	ld c, l                                          ; $5cb6: $4d
	ld a, [hl-]                                      ; $5cb7: $3a
	jr c, jr_08e_5d1d                                ; $5cb8: $38 $63

	and b                                            ; $5cba: $a0
	cpl                                              ; $5cbb: $2f
	ld b, e                                          ; $5cbc: $43
	rst JumpTable                                          ; $5cbd: $c7
	xor b                                            ; $5cbe: $a8
	ldh a, [$29]                                     ; $5cbf: $f0 $29
	ld a, $38                                        ; $5cc1: $3e $38
	ld b, l                                          ; $5cc3: $45
	and b                                            ; $5cc4: $a0
	ld c, c                                          ; $5cc5: $49
	ld d, h                                          ; $5cc6: $54
	ld e, a                                          ; $5cc7: $5f
	ld c, d                                          ; $5cc8: $4a
	xor h                                            ; $5cc9: $ac
	ld l, a                                          ; $5cca: $6f
	ld b, d                                          ; $5ccb: $42
	ldh a, [c]                                       ; $5ccc: $f2
	ld l, c                                          ; $5ccd: $69
	ldh a, [$d2]                                     ; $5cce: $f0 $d2
	xor h                                            ; $5cd0: $ac
	ldh a, [$5d]                                     ; $5cd1: $f0 $5d
	ld e, e                                          ; $5cd3: $5b
	ld d, [hl]                                       ; $5cd4: $56
	ld a, [hl-]                                      ; $5cd5: $3a
	inc a                                            ; $5cd6: $3c
	dec sp                                           ; $5cd7: $3b
	dec a                                            ; $5cd8: $3d
	and c                                            ; $5cd9: $a1
	cpl                                              ; $5cda: $2f
	ld b, e                                          ; $5cdb: $43
	ldh a, [$34]                                     ; $5cdc: $f0 $34
	ld b, a                                          ; $5cde: $47
	ldh a, [$5d]                                     ; $5cdf: $f0 $5d
	ld e, e                                          ; $5ce1: $5b
	ld d, [hl]                                       ; $5ce2: $56
	ld a, [hl-]                                      ; $5ce3: $3a
	inc a                                            ; $5ce4: $3c
	dec sp                                           ; $5ce5: $3b
	dec a                                            ; $5ce6: $3d
	ld b, l                                          ; $5ce7: $45
	xor b                                            ; $5ce8: $a8
	ldh a, [$8a]                                     ; $5ce9: $f0 $8a
	ldh a, [rHDMA2]                                  ; $5ceb: $f0 $52
	inc a                                            ; $5ced: $3c
	dec sp                                           ; $5cee: $3b
	dec a                                            ; $5cef: $3d
	ld b, l                                          ; $5cf0: $45
	and b                                            ; $5cf1: $a0
	ld e, [hl]                                       ; $5cf2: $5e
	dec sp                                           ; $5cf3: $3b
	xor c                                            ; $5cf4: $a9
	ld c, e                                          ; $5cf5: $4b
	inc [hl]                                         ; $5cf6: $34
	db $eb                                           ; $5cf7: $eb
	ld c, a                                          ; $5cf8: $4f
	ld c, b                                          ; $5cf9: $48
	and b                                            ; $5cfa: $a0
	cpl                                              ; $5cfb: $2f
	ld [hl-], a                                      ; $5cfc: $32
	jr c, jr_08e_5c7f                                ; $5cfd: $38 $80

	ld c, a                                          ; $5cff: $4f
	ld b, d                                          ; $5d00: $42
	db $ec                                           ; $5d01: $ec
	pop hl                                           ; $5d02: $e1
	ld c, c                                          ; $5d03: $49
	inc de                                           ; $5d04: $13
	ldh a, [c]                                       ; $5d05: $f2

jr_08e_5d06:
	ldh [c], a                                       ; $5d06: $e2
	ldh a, [$a9]                                     ; $5d07: $f0 $a9
	ld d, e                                          ; $5d09: $53
	ldh a, [$f5]                                     ; $5d0a: $f0 $f5
	add hl, sp                                       ; $5d0c: $39
	ld a, a                                          ; $5d0d: $7f
	ld d, e                                          ; $5d0e: $53
	ld d, c                                          ; $5d0f: $51
	ld c, [hl]                                       ; $5d10: $4e
	and e                                            ; $5d11: $a3
	ldh a, [$57]                                     ; $5d12: $f0 $57
	ldh a, [$ae]                                     ; $5d14: $f0 $ae
	ld a, [hl-]                                      ; $5d16: $3a
	ldh a, [$3f]                                     ; $5d17: $f0 $3f
	ld d, e                                          ; $5d19: $53
	inc de                                           ; $5d1a: $13
	adc $46                                          ; $5d1b: $ce $46

jr_08e_5d1d:
	ld c, [hl]                                       ; $5d1d: $4e
	ld h, e                                          ; $5d1e: $63
	ld c, h                                          ; $5d1f: $4c
	and b                                            ; $5d20: $a0
	cpl                                              ; $5d21: $2f
	ld d, h                                          ; $5d22: $54
	ld b, d                                          ; $5d23: $42
	ldh a, [$3f]                                     ; $5d24: $f0 $3f
	inc [hl]                                         ; $5d26: $34
	db $ed                                           ; $5d27: $ed
	ld c, c                                          ; $5d28: $49
	ld b, h                                          ; $5d29: $44
	ld c, h                                          ; $5d2a: $4c
	and c                                            ; $5d2b: $a1
	ld [$a840], a                                    ; $5d2c: $ea $40 $a8
	ld [hl], d                                       ; $5d2f: $72
	ld c, c                                          ; $5d30: $49
	ld c, l                                          ; $5d31: $4d
	ld h, c                                          ; $5d32: $61
	ld d, [hl]                                       ; $5d33: $56
	add hl, sp                                       ; $5d34: $39
	ld h, e                                          ; $5d35: $63
	ld c, h                                          ; $5d36: $4c
	and b                                            ; $5d37: $a0
	db $eb                                           ; $5d38: $eb
	sbc d                                            ; $5d39: $9a
	xor b                                            ; $5d3a: $a8
	ldh a, [$57]                                     ; $5d3b: $f0 $57
	ldh a, [$ae]                                     ; $5d3d: $f0 $ae
	ld a, [hl-]                                      ; $5d3f: $3a
	ldh a, [$3f]                                     ; $5d40: $f0 $3f
	ld c, h                                          ; $5d42: $4c
	and b                                            ; $5d43: $a0
	cpl                                              ; $5d44: $2f
	jp hl                                            ; $5d45: $e9


	ld c, a                                          ; $5d46: $4f
	ld c, b                                          ; $5d47: $48
	add hl, bc                                       ; $5d48: $09
	ld b, b                                          ; $5d49: $40
	ld c, l                                          ; $5d4a: $4d
	ld a, [hl-]                                      ; $5d4b: $3a
	ld d, b                                          ; $5d4c: $50
	xor h                                            ; $5d4d: $ac
	ld l, a                                          ; $5d4e: $6f
	ld h, d                                          ; $5d4f: $62
	ld [hl], d                                       ; $5d50: $72
	ld a, [hl-]                                      ; $5d51: $3a
	ld e, b                                          ; $5d52: $58
	jr c, jr_08e_5d9a                                ; $5d53: $38 $45

	and b                                            ; $5d55: $a0
	ld d, d                                          ; $5d56: $52
	dec sp                                           ; $5d57: $3b
	dec a                                            ; $5d58: $3d
	ld d, l                                          ; $5d59: $55
	inc [hl]                                         ; $5d5a: $34
	jr c, @-$7e                                      ; $5d5b: $38 $80

	ld c, a                                          ; $5d5d: $4f
	call c, Call_08e_52a0                            ; $5d5e: $dc $a0 $52
	dec sp                                           ; $5d61: $3b
	dec a                                            ; $5d62: $3d
	ld d, l                                          ; $5d63: $55
	xor h                                            ; $5d64: $ac
	db $eb                                           ; $5d65: $eb
	inc [hl]                                         ; $5d66: $34
	ld h, e                                          ; $5d67: $63
	ld c, h                                          ; $5d68: $4c
	and b                                            ; $5d69: $a0
	cpl                                              ; $5d6a: $2f
	db $eb                                           ; $5d6b: $eb
	push bc                                          ; $5d6c: $c5
	inc [hl]                                         ; $5d6d: $34
	db $ec                                           ; $5d6e: $ec
	pop hl                                           ; $5d6f: $e1
	ld l, h                                          ; $5d70: $6c
	dec a                                            ; $5d71: $3d
	jr c, jr_08e_5d7d                                ; $5d72: $38 $09

	ld b, b                                          ; $5d74: $40
	add hl, sp                                       ; $5d75: $39
	xor c                                            ; $5d76: $a9
	ldh a, [rPCM12]                                  ; $5d77: $f0 $76
	ccf                                              ; $5d79: $3f
	ld c, [hl]                                       ; $5d7a: $4e
	inc a                                            ; $5d7b: $3c
	ld c, a                                          ; $5d7c: $4f

jr_08e_5d7d:
	ld [$a0df], a                                    ; $5d7d: $ea $df $a0
	add hl, sp                                       ; $5d80: $39
	ld e, c                                          ; $5d81: $59
	ld b, c                                          ; $5d82: $41
	xor b                                            ; $5d83: $a8
	ld b, l                                          ; $5d84: $45
	ld d, l                                          ; $5d85: $55
	ldh a, [rTAC]                                    ; $5d86: $f0 $07
	inc a                                            ; $5d88: $3c
	ld d, b                                          ; $5d89: $50
	ld a, [hl-]                                      ; $5d8a: $3a
	jr c, jr_08e_5df0                                ; $5d8b: $38 $63

	and b                                            ; $5d8d: $a0
	ld b, b                                          ; $5d8e: $40
	add hl, sp                                       ; $5d8f: $39
	xor c                                            ; $5d90: $a9
	ld e, d                                          ; $5d91: $5a
	dec sp                                           ; $5d92: $3b
	ld h, c                                          ; $5d93: $61
	ld c, d                                          ; $5d94: $4a
	ld c, a                                          ; $5d95: $4f
	db $ec                                           ; $5d96: $ec
	ld [$a04c], sp                                   ; $5d97: $08 $4c $a0

jr_08e_5d9a:
	ld l, a                                          ; $5d9a: $6f
	ld b, a                                          ; $5d9b: $47
	ld c, a                                          ; $5d9c: $4f
	xor h                                            ; $5d9d: $ac
	ld d, h                                          ; $5d9e: $54
	ld b, d                                          ; $5d9f: $42
	sbc l                                            ; $5da0: $9d
	ld d, b                                          ; $5da1: $50
	jr c, jr_08e_5de6                                ; $5da2: $38 $42

	inc de                                           ; $5da4: $13
	pop af                                           ; $5da5: $f1
	and e                                            ; $5da6: $a3
	pop af                                           ; $5da7: $f1
	ld [hl], d                                       ; $5da8: $72
	ld d, e                                          ; $5da9: $53
	ld b, [hl]                                       ; $5daa: $46
	ld c, l                                          ; $5dab: $4d
	ld a, e                                          ; $5dac: $7b
	ld a, [hl-]                                      ; $5dad: $3a
	ld [hl], h                                       ; $5dae: $74
	and b                                            ; $5daf: $a0
	cpl                                              ; $5db0: $2f
	db $ec                                           ; $5db1: $ec
	pop hl                                           ; $5db2: $e1
	pop af                                           ; $5db3: $f1
	and e                                            ; $5db4: $a3
	pop af                                           ; $5db5: $f1
	ld [hl], d                                       ; $5db6: $72
	ld b, [hl]                                       ; $5db7: $46
	ld c, [hl]                                       ; $5db8: $4e
	ld b, l                                          ; $5db9: $45
	add hl, bc                                       ; $5dba: $09
	rst JumpTable                                          ; $5dbb: $c7
	xor c                                            ; $5dbc: $a9
	ld d, c                                          ; $5dbd: $51
	ld [hl], b                                       ; $5dbe: $70
	ld d, l                                          ; $5dbf: $55
	ldh a, [$29]                                     ; $5dc0: $f0 $29
	ld a, $38                                        ; $5dc2: $3e $38
	ld h, e                                          ; $5dc4: $63
	and b                                            ; $5dc5: $a0
	ld h, h                                          ; $5dc6: $64
	db $ed                                           ; $5dc7: $ed
	sbc d                                            ; $5dc8: $9a
	ld c, d                                          ; $5dc9: $4a
	ld c, a                                          ; $5dca: $4f
	ldh a, [$29]                                     ; $5dcb: $f0 $29
	ld a, $38                                        ; $5dcd: $3e $38
	ld h, e                                          ; $5dcf: $63
	and b                                            ; $5dd0: $a0
	cpl                                              ; $5dd1: $2f
	add sp, $54                                      ; $5dd2: $e8 $54
	and c                                            ; $5dd4: $a1
	db $ec                                           ; $5dd5: $ec
	scf                                              ; $5dd6: $37
	xor c                                            ; $5dd7: $a9
	ldh a, [rHDMA4]                                  ; $5dd8: $f0 $54
	ld a, [hl-]                                      ; $5dda: $3a
	ld d, l                                          ; $5ddb: $55
	ld c, c                                          ; $5ddc: $49
	ld c, a                                          ; $5ddd: $4f
	xor h                                            ; $5dde: $ac
	ld l, a                                          ; $5ddf: $6f
	ld b, a                                          ; $5de0: $47
	ld c, e                                          ; $5de1: $4b
	ldh a, [$bd]                                     ; $5de2: $f0 $bd
	ld e, l                                          ; $5de4: $5d
	db $ec                                           ; $5de5: $ec

jr_08e_5de6:
	dec bc                                           ; $5de6: $0b
	and b                                            ; $5de7: $a0
	ld b, h                                          ; $5de8: $44
	dec sp                                           ; $5de9: $3b
	dec a                                            ; $5dea: $3d
	ld d, b                                          ; $5deb: $50
	xor h                                            ; $5dec: $ac
	ldh a, [$98]                                     ; $5ded: $f0 $98
	ld c, d                                          ; $5def: $4a

jr_08e_5df0:
	ld c, a                                          ; $5df0: $4f
	ldh a, [$7a]                                     ; $5df1: $f0 $7a
	ldh a, [rSVBK]                                   ; $5df3: $f0 $70
	ld b, a                                          ; $5df5: $47
	ld a, [hl-]                                      ; $5df6: $3a
	ld c, l                                          ; $5df7: $4d
	ld c, [hl]                                       ; $5df8: $4e
	ld h, e                                          ; $5df9: $63
	ld c, h                                          ; $5dfa: $4c
	and b                                            ; $5dfb: $a0
	ld b, b                                          ; $5dfc: $40
	ld b, c                                          ; $5dfd: $41
	ld a, [hl-]                                      ; $5dfe: $3a
	ld h, e                                          ; $5dff: $63
	ld e, l                                          ; $5e00: $5d
	ld a, [hl-]                                      ; $5e01: $3a
	jr c, jr_08e_5df0                                ; $5e02: $38 $ec

	ret c                                            ; $5e04: $d8

	and b                                            ; $5e05: $a0
	cpl                                              ; $5e06: $2f
	sub d                                            ; $5e07: $92
	adc [hl]                                         ; $5e08: $8e
	ld c, l                                          ; $5e09: $4d
	ld a, e                                          ; $5e0a: $7b
	ld l, e                                          ; $5e0b: $6b
	ld c, c                                          ; $5e0c: $49
	inc a                                            ; $5e0d: $3c
	ld a, [hl-]                                      ; $5e0e: $3a
	ld c, [hl]                                       ; $5e0f: $4e
	ld b, l                                          ; $5e10: $45
	add hl, bc                                       ; $5e11: $09
	db $eb                                           ; $5e12: $eb
	ld e, l                                          ; $5e13: $5d
	xor h                                            ; $5e14: $ac
	db $f4                                           ; $5e15: $f4
	adc d                                            ; $5e16: $8a
	ld d, d                                          ; $5e17: $52
	ld a, $3f                                        ; $5e18: $3e $3f
	ld d, l                                          ; $5e1a: $55
	ld c, l                                          ; $5e1b: $4d
	ccf                                              ; $5e1c: $3f
	ld b, [hl]                                       ; $5e1d: $46
	ld d, a                                          ; $5e1e: $57
	ld d, e                                          ; $5e1f: $53
	ld c, c                                          ; $5e20: $49
	add hl, sp                                       ; $5e21: $39
	and b                                            ; $5e22: $a0
	sub d                                            ; $5e23: $92
	adc [hl]                                         ; $5e24: $8e
	dec sp                                           ; $5e25: $3b
	dec a                                            ; $5e26: $3d
	inc a                                            ; $5e27: $3c
	ld d, b                                          ; $5e28: $50
	dec sp                                           ; $5e29: $3b
	ccf                                              ; $5e2a: $3f
	xor h                                            ; $5e2b: $ac
	ld l, e                                          ; $5e2c: $6b
	ld c, c                                          ; $5e2d: $49
	inc a                                            ; $5e2e: $3c
	ld a, [hl-]                                      ; $5e2f: $3a
	ld c, [hl]                                       ; $5e30: $4e
	ld c, c                                          ; $5e31: $49
	ld c, a                                          ; $5e32: $4f
	inc de                                           ; $5e33: $13
	ld [hl], a                                       ; $5e34: $77
	ld e, [hl]                                       ; $5e35: $5e
	ld a, [hl-]                                      ; $5e36: $3a
	jr c, jr_08e_5e9c                                ; $5e37: $38 $63

	and b                                            ; $5e39: $a0
	ldh a, [$7b]                                     ; $5e3a: $f0 $7b
	ld h, l                                          ; $5e3c: $65
	add e                                            ; $5e3d: $83
	ld d, e                                          ; $5e3e: $53
	inc de                                           ; $5e3f: $13
	ldh a, [$2c]                                     ; $5e40: $f0 $2c
	ld h, d                                          ; $5e42: $62
	add d                                            ; $5e43: $82
	add hl, sp                                       ; $5e44: $39
	inc a                                            ; $5e45: $3c
	ld d, b                                          ; $5e46: $50
	ld c, h                                          ; $5e47: $4c
	and b                                            ; $5e48: $a0
	db $ec                                           ; $5e49: $ec
	ld [hl], a                                       ; $5e4a: $77

jr_08e_5e4b:
	xor b                                            ; $5e4b: $a8
	db $ed                                           ; $5e4c: $ed
	ld h, c                                          ; $5e4d: $61
	ld [hl], d                                       ; $5e4e: $72
	ccf                                              ; $5e4f: $3f
	ld c, a                                          ; $5e50: $4f
	db $eb                                           ; $5e51: $eb
	ld d, h                                          ; $5e52: $54
	ld h, e                                          ; $5e53: $63
	ld c, h                                          ; $5e54: $4c
	and b                                            ; $5e55: $a0
	cpl                                              ; $5e56: $2f
	ld [$0961], a                                    ; $5e57: $ea $61 $09
	db $ec                                           ; $5e5a: $ec
	reti                                             ; $5e5b: $d9


	xor h                                            ; $5e5c: $ac
	ldh a, [rTAC]                                    ; $5e5d: $f0 $07
	inc a                                            ; $5e5f: $3c
	ld c, [hl]                                       ; $5e60: $4e
	add h                                            ; $5e61: $84
	ld b, a                                          ; $5e62: $47
	ld c, e                                          ; $5e63: $4b
	inc [hl]                                         ; $5e64: $34
	ldh a, [rTAC]                                    ; $5e65: $f0 $07
	inc a                                            ; $5e67: $3c
	ld c, [hl]                                       ; $5e68: $4e
	ld b, d                                          ; $5e69: $42
	ld c, h                                          ; $5e6a: $4c
	and b                                            ; $5e6b: $a0
	ld d, h                                          ; $5e6c: $54
	add hl, sp                                       ; $5e6d: $39
	jr c, @+$3b                                      ; $5e6e: $38 $39

	ldh a, [$7b]                                     ; $5e70: $f0 $7b
	ld h, l                                          ; $5e72: $65
	add e                                            ; $5e73: $83
	ld d, e                                          ; $5e74: $53
	inc de                                           ; $5e75: $13
	ldh a, [rTAC]                                    ; $5e76: $f0 $07
	inc a                                            ; $5e78: $3c
	ld c, [hl]                                       ; $5e79: $4e
	ld a, [hl-]                                      ; $5e7a: $3a
	ld b, c                                          ; $5e7b: $41
	ccf                                              ; $5e7c: $3f
	inc [hl]                                         ; $5e7d: $34
	ld d, c                                          ; $5e7e: $51
	ld [hl], b                                       ; $5e7f: $70
	jr c, jr_08e_5ee5                                ; $5e80: $38 $63

	ld c, h                                          ; $5e82: $4c
	and b                                            ; $5e83: $a0
	cpl                                              ; $5e84: $2f
	ld d, h                                          ; $5e85: $54
	ld c, l                                          ; $5e86: $4d
	ld b, d                                          ; $5e87: $42
	ld e, d                                          ; $5e88: $5a
	ld d, h                                          ; $5e89: $54
	ld d, e                                          ; $5e8a: $53
	jr c, jr_08e_5ec5                                ; $5e8b: $38 $38

	ld b, d                                          ; $5e8d: $42
	and c                                            ; $5e8e: $a1
	ld b, b                                          ; $5e8f: $40
	ld b, c                                          ; $5e90: $41
	ld a, [hl-]                                      ; $5e91: $3a
	ld b, a                                          ; $5e92: $47
	inc de                                           ; $5e93: $13
	ld a, [hl]                                       ; $5e94: $7e
	ld d, l                                          ; $5e95: $55
	ld a, [hl-]                                      ; $5e96: $3a
	jr c, jr_08e_5ee2                                ; $5e97: $38 $49

	ld [hl], a                                       ; $5e99: $77
	add hl, sp                                       ; $5e9a: $39
	and c                                            ; $5e9b: $a1

jr_08e_5e9c:
	ldh a, [rHDMA5]                                  ; $5e9c: $f0 $55
	ldh a, [rBCPS]                                   ; $5e9e: $f0 $68
	ld c, h                                          ; $5ea0: $4c
	xor b                                            ; $5ea1: $a8
	db $eb                                           ; $5ea2: $eb
	ld d, h                                          ; $5ea3: $54
	ld c, c                                          ; $5ea4: $49
	ld [hl], a                                       ; $5ea5: $77
	ld h, e                                          ; $5ea6: $63
	ld a, [hl-]                                      ; $5ea7: $3a
	jr c, jr_08e_5e4b                                ; $5ea8: $38 $a1

	cpl                                              ; $5eaa: $2f
	ld d, h                                          ; $5eab: $54
	ld b, d                                          ; $5eac: $42
	add h                                            ; $5ead: $84
	ld b, d                                          ; $5eae: $42
	ldh a, [$3f]                                     ; $5eaf: $f0 $3f
	ld b, l                                          ; $5eb1: $45
	ld d, l                                          ; $5eb2: $55
	ld [hl], d                                       ; $5eb3: $72
	ld c, [hl]                                       ; $5eb4: $4e
	ld b, l                                          ; $5eb5: $45
	ld c, h                                          ; $5eb6: $4c
	add hl, bc                                       ; $5eb7: $09
	pop af                                           ; $5eb8: $f1
	ld l, [hl]                                       ; $5eb9: $6e
	ldh a, [$cf]                                     ; $5eba: $f0 $cf
	ld a, [hl-]                                      ; $5ebc: $3a
	ld c, c                                          ; $5ebd: $49
	ld d, h                                          ; $5ebe: $54
	ld e, a                                          ; $5ebf: $5f
	ld c, d                                          ; $5ec0: $4a
	xor h                                            ; $5ec1: $ac
	ldh a, [$3f]                                     ; $5ec2: $f0 $3f
	ld h, d                                          ; $5ec4: $62

jr_08e_5ec5:
	ldh a, [$bd]                                     ; $5ec5: $f0 $bd
	jr c, jr_08e_5f08                                ; $5ec7: $38 $3f

	ld c, [hl]                                       ; $5ec9: $4e
	inc a                                            ; $5eca: $3c
	ld d, b                                          ; $5ecb: $50
	ld c, h                                          ; $5ecc: $4c
	and b                                            ; $5ecd: $a0
	ld b, b                                          ; $5ece: $40
	ld d, a                                          ; $5ecf: $57
	ld d, [hl]                                       ; $5ed0: $56
	inc [hl]                                         ; $5ed1: $34
	pop af                                           ; $5ed2: $f1
	adc d                                            ; $5ed3: $8a
	ldh a, [$fb]                                     ; $5ed4: $f0 $fb
	ld b, h                                          ; $5ed6: $44
	inc a                                            ; $5ed7: $3c
	ld d, b                                          ; $5ed8: $50
	ld c, h                                          ; $5ed9: $4c
	and b                                            ; $5eda: $a0
	ld b, b                                          ; $5edb: $40
	add hl, sp                                       ; $5edc: $39
	ld c, d                                          ; $5edd: $4a
	ld a, $66                                        ; $5ede: $3e $66
	add hl, sp                                       ; $5ee0: $39
	xor b                                            ; $5ee1: $a8

jr_08e_5ee2:
	ldh a, [rAUD3LEVEL]                              ; $5ee2: $f0 $1c
	ld h, d                                          ; $5ee4: $62

jr_08e_5ee5:
	pop af                                           ; $5ee5: $f1
	ld e, a                                          ; $5ee6: $5f
	ld d, l                                          ; $5ee7: $55
	ld b, d                                          ; $5ee8: $42
	ld b, l                                          ; $5ee9: $45
	ld c, h                                          ; $5eea: $4c
	and b                                            ; $5eeb: $a0
	db $eb                                           ; $5eec: $eb
	sbc d                                            ; $5eed: $9a
	xor b                                            ; $5eee: $a8
	ld l, a                                          ; $5eef: $6f
	inc [hl]                                         ; $5ef0: $34
	ld d, h                                          ; $5ef1: $54
	ld b, d                                          ; $5ef2: $42
	add h                                            ; $5ef3: $84
	ld b, d                                          ; $5ef4: $42
	ldh a, [$3f]                                     ; $5ef5: $f0 $3f
	ld b, d                                          ; $5ef7: $42
	inc de                                           ; $5ef8: $13
	add a                                            ; $5ef9: $87
	ldh a, [$8e]                                     ; $5efa: $f0 $8e
	pop af                                           ; $5efc: $f1
	ld c, l                                          ; $5efd: $4d
	ld h, l                                          ; $5efe: $65
	ld a, [hl-]                                      ; $5eff: $3a
	ld b, d                                          ; $5f00: $42
	and b                                            ; $5f01: $a0
	cpl                                              ; $5f02: $2f
	ld b, e                                          ; $5f03: $43
	rst JumpTable                                          ; $5f04: $c7
	xor b                                            ; $5f05: $a8
	ld a, b                                          ; $5f06: $78
	ccf                                              ; $5f07: $3f

jr_08e_5f08:
	ld b, l                                          ; $5f08: $45
	inc a                                            ; $5f09: $3c
	dec sp                                           ; $5f0a: $3b
	dec a                                            ; $5f0b: $3d
	ld c, h                                          ; $5f0c: $4c
	and b                                            ; $5f0d: $a0
	ldh a, [$08]                                     ; $5f0e: $f0 $08
	ld d, b                                          ; $5f10: $50
	inc [hl]                                         ; $5f11: $34
	ld d, h                                          ; $5f12: $54
	ld c, l                                          ; $5f13: $4d
	ld a, [hl-]                                      ; $5f14: $3a
	ld b, c                                          ; $5f15: $41
	ccf                                              ; $5f16: $3f
	xor h                                            ; $5f17: $ac
	db $ec                                           ; $5f18: $ec
	ld [hl], a                                       ; $5f19: $77
	ld c, h                                          ; $5f1a: $4c
	xor b                                            ; $5f1b: $a8
	ld a, $f0                                        ; $5f1c: $3e $f0
	ld c, l                                          ; $5f1e: $4d
	ld c, l                                          ; $5f1f: $4d
	ld h, c                                          ; $5f20: $61
	ld d, [hl]                                       ; $5f21: $56
	add hl, sp                                       ; $5f22: $39
	ld h, e                                          ; $5f23: $63
	and b                                            ; $5f24: $a0
	cpl                                              ; $5f25: $2f
	ld b, e                                          ; $5f26: $43
	ld b, b                                          ; $5f27: $40
	add hl, sp                                       ; $5f28: $39
	ld b, h                                          ; $5f29: $44
	ld c, h                                          ; $5f2a: $4c
	and b                                            ; $5f2b: $a0
	jr c, jr_08e_5f66                                ; $5f2c: $38 $38

	ld h, e                                          ; $5f2e: $63
	ld c, h                                          ; $5f2f: $4c
	add l                                            ; $5f30: $85
	xor l                                            ; $5f31: $ad
	ld l, a                                          ; $5f32: $6f
	ld c, a                                          ; $5f33: $4f
	ld d, h                                          ; $5f34: $54
	ld b, d                                          ; $5f35: $42
	sbc l                                            ; $5f36: $9d
	ld d, b                                          ; $5f37: $50
	jr c, jr_08e_5f4d                                ; $5f38: $38 $13

	ldh a, [$bd]                                     ; $5f3a: $f0 $bd
	ld e, l                                          ; $5f3c: $5d
	ld c, l                                          ; $5f3d: $4d
	ld a, e                                          ; $5f3e: $7b
	ld a, [hl-]                                      ; $5f3f: $3a
	ld [hl], h                                       ; $5f40: $74
	ld c, b                                          ; $5f41: $48
	and b                                            ; $5f42: $a0
	cpl                                              ; $5f43: $2f
	ld [hl-], a                                      ; $5f44: $32
	ld b, l                                          ; $5f45: $45
	dec sp                                           ; $5f46: $3b
	pop af                                           ; $5f47: $f1
	rla                                              ; $5f48: $17
	ld e, d                                          ; $5f49: $5a
	xor h                                            ; $5f4a: $ac
	adc e                                            ; $5f4b: $8b
	ld e, h                                          ; $5f4c: $5c

jr_08e_5f4d:
	ld a, [hl-]                                      ; $5f4d: $3a
	ld b, c                                          ; $5f4e: $41
	ld b, h                                          ; $5f4f: $44
	ld a, [hl-]                                      ; $5f50: $3a
	ld [hl], h                                       ; $5f51: $74
	xor l                                            ; $5f52: $ad
	ld c, a                                          ; $5f53: $4f
	add hl, sp                                       ; $5f54: $39
	ldh a, [$58]                                     ; $5f55: $f0 $58
	ldh a, [rBGP]                                    ; $5f57: $f0 $47
	ldh a, [$2a]                                     ; $5f59: $f0 $2a
	ld c, a                                          ; $5f5b: $4f
	ld [hl], d                                       ; $5f5c: $72
	ccf                                              ; $5f5d: $3f
	ld c, [hl]                                       ; $5f5e: $4e
	ld b, l                                          ; $5f5f: $45
	and e                                            ; $5f60: $a3
	db $dd                                           ; $5f61: $dd
	ldh a, [$f4]                                     ; $5f62: $f0 $f4
	ld e, [hl]                                       ; $5f64: $5e
	dec a                                            ; $5f65: $3d

jr_08e_5f66:
	ld h, e                                          ; $5f66: $63
	xor b                                            ; $5f67: $a8
	ld e, b                                          ; $5f68: $58
	ld b, [hl]                                       ; $5f69: $46
	inc [hl]                                         ; $5f6a: $34
	or b                                             ; $5f6b: $b0
	and b                                            ; $5f6c: $a0
	cpl                                              ; $5f6d: $2f
	ld b, e                                          ; $5f6e: $43
	ld e, [hl]                                       ; $5f6f: $5e
	dec sp                                           ; $5f70: $3b
	xor c                                            ; $5f71: $a9
	ldh a, [$f4]                                     ; $5f72: $f0 $f4
	ld e, [hl]                                       ; $5f74: $5e
	dec a                                            ; $5f75: $3d
	dec sp                                           ; $5f76: $3b
	ccf                                              ; $5f77: $3f
	and c                                            ; $5f78: $a1
	pop af                                           ; $5f79: $f1
	dec d                                            ; $5f7a: $15
	ld c, l                                          ; $5f7b: $4d
	ld a, [hl-]                                      ; $5f7c: $3a
	jr c, jr_08e_5fb8                                ; $5f7d: $38 $39

	ld h, c                                          ; $5f7f: $61
	ld b, a                                          ; $5f80: $47
	inc de                                           ; $5f81: $13
	ldh a, [rSVBK]                                   ; $5f82: $f0 $70
	ld b, a                                          ; $5f84: $47
	ld a, d                                          ; $5f85: $7a
	dec sp                                           ; $5f86: $3b
	ccf                                              ; $5f87: $3f
	xor h                                            ; $5f88: $ac
	ldh a, [$3f]                                     ; $5f89: $f0 $3f
	ld b, a                                          ; $5f8b: $47
	ld a, $3f                                        ; $5f8c: $3e $3f
	ld h, h                                          ; $5f8e: $64
	ld d, l                                          ; $5f8f: $55
	ld b, d                                          ; $5f90: $42
	ld b, l                                          ; $5f91: $45
	and b                                            ; $5f92: $a0
	cpl                                              ; $5f93: $2f
	ld b, e                                          ; $5f94: $43
	xor $10                                          ; $5f95: $ee $10
	and b                                            ; $5f97: $a0
	ld d, h                                          ; $5f98: $54
	ld b, d                                          ; $5f99: $42
	db $eb                                           ; $5f9a: $eb
	cp d                                             ; $5f9b: $ba
	xor h                                            ; $5f9c: $ac
	db $eb                                           ; $5f9d: $eb
	ld d, h                                          ; $5f9e: $54
	ldh a, [c]                                       ; $5f9f: $f2
	set 6, b                                         ; $5fa0: $cb $f0
	ld c, b                                          ; $5fa2: $48
	ldh a, [$78]                                     ; $5fa3: $f0 $78
	ld c, h                                          ; $5fa5: $4c
	and b                                            ; $5fa6: $a0
	cpl                                              ; $5fa7: $2f
	add sp, $5c                                      ; $5fa8: $e8 $5c
	add hl, bc                                       ; $5faa: $09
	adc b                                            ; $5fab: $88
	sub c                                            ; $5fac: $91
	xor b                                            ; $5fad: $a8
	db $eb                                           ; $5fae: $eb
	ld d, h                                          ; $5faf: $54
	ldh a, [$a5]                                     ; $5fb0: $f0 $a5
	ldh a, [c]                                       ; $5fb2: $f2
	ld a, [bc]                                       ; $5fb3: $0a
	ld b, l                                          ; $5fb4: $45
	ld c, h                                          ; $5fb5: $4c
	and b                                            ; $5fb6: $a0
	ld d, h                                          ; $5fb7: $54

jr_08e_5fb8:
	add hl, sp                                       ; $5fb8: $39
	jr c, jr_08e_5ff4                                ; $5fb9: $38 $39

	ldh a, [$2c]                                     ; $5fbb: $f0 $2c
	ld h, d                                          ; $5fbd: $62
	di                                               ; $5fbe: $f3
	ld a, [de]                                       ; $5fbf: $1a
	ld c, l                                          ; $5fc0: $4d
	ld c, [hl]                                       ; $5fc1: $4e
	inc de                                           ; $5fc2: $13
	add h                                            ; $5fc3: $84
	dec sp                                           ; $5fc4: $3b
	ccf                                              ; $5fc5: $3f
	inc [hl]                                         ; $5fc6: $34
	pop af                                           ; $5fc7: $f1
	xor d                                            ; $5fc8: $aa
	pop af                                           ; $5fc9: $f1
	and e                                            ; $5fca: $a3
	ld b, l                                          ; $5fcb: $45
	ld c, h                                          ; $5fcc: $4c
	and b                                            ; $5fcd: $a0
	cpl                                              ; $5fce: $2f
	jp hl                                            ; $5fcf: $e9


	ld e, b                                          ; $5fd0: $58
	and c                                            ; $5fd1: $a1
	db $ec                                           ; $5fd2: $ec
	ld e, c                                          ; $5fd3: $59
	ld c, c                                          ; $5fd4: $49
	ldh a, [$a5]                                     ; $5fd5: $f0 $a5
	ldh a, [c]                                       ; $5fd7: $f2
	ld a, [bc]                                       ; $5fd8: $0a
	ld b, d                                          ; $5fd9: $42
	ldh a, [c]                                       ; $5fda: $f2
	adc e                                            ; $5fdb: $8b
	di                                               ; $5fdc: $f3
	ld c, $13                                        ; $5fdd: $0e $13
	ld c, e                                          ; $5fdf: $4b
	inc [hl]                                         ; $5fe0: $34
	db $ed                                           ; $5fe1: $ed
	ld a, a                                          ; $5fe2: $7f
	ld a, [hl-]                                      ; $5fe3: $3a

jr_08e_5fe4:
	jr c, jr_08e_602f                                ; $5fe4: $38 $49

	ld [hl], a                                       ; $5fe6: $77
	add hl, sp                                       ; $5fe7: $39
	ld h, e                                          ; $5fe8: $63
	and b                                            ; $5fe9: $a0
	db $ec                                           ; $5fea: $ec
	ld e, c                                          ; $5feb: $59
	ld b, h                                          ; $5fec: $44
	inc a                                            ; $5fed: $3c
	ld d, b                                          ; $5fee: $50
	xor h                                            ; $5fef: $ac
	ldh a, [$5c]                                     ; $5ff0: $f0 $5c
	jr c, jr_08e_5fe4                                ; $5ff2: $38 $f0

jr_08e_5ff4:
	and l                                            ; $5ff4: $a5
	ldh a, [c]                                       ; $5ff5: $f2
	ld a, [bc]                                       ; $5ff6: $0a
	ld a, [hl-]                                      ; $5ff7: $3a
	ld b, c                                          ; $5ff8: $41
	ccf                                              ; $5ff9: $3f
	ld d, h                                          ; $5ffa: $54
	ld c, c                                          ; $5ffb: $49
	ld c, e                                          ; $5ffc: $4b
	ldh a, [rAUD1LOW]                                ; $5ffd: $f0 $13
	jr c, @+$65                                      ; $5fff: $38 $63

	and b                                            ; $6001: $a0
	ld b, b                                          ; $6002: $40
	add hl, sp                                       ; $6003: $39
	jr c, jr_08e_603f                                ; $6004: $38 $39

	sbc d                                            ; $6006: $9a
	ld c, d                                          ; $6007: $4a
	ld a, $3c                                        ; $6008: $3e $3c
	xor h                                            ; $600a: $ac
	ldh a, [$2c]                                     ; $600b: $f0 $2c
	ld b, d                                          ; $600d: $42
	ldh a, [c]                                       ; $600e: $f2
	adc e                                            ; $600f: $8b
	di                                               ; $6010: $f3
	ld c, $62                                        ; $6011: $0e $62
	ld [hl], d                                       ; $6013: $72
	ld c, l                                          ; $6014: $4d
	ld a, [hl-]                                      ; $6015: $3a
	jr c, jr_08e_605a                                ; $6016: $38 $42

	and c                                            ; $6018: $a1
	cpl                                              ; $6019: $2f
	add sp, -$67                                     ; $601a: $e8 $99
	add hl, bc                                       ; $601c: $09
	ld l, a                                          ; $601d: $6f
	ld c, a                                          ; $601e: $4f
	ld b, b                                          ; $601f: $40
	add hl, sp                                       ; $6020: $39
	ld [hl], a                                       ; $6021: $77
	dec sp                                           ; $6022: $3b
	ccf                                              ; $6023: $3f
	dec a                                            ; $6024: $3d
	ld b, d                                          ; $6025: $42
	ld b, l                                          ; $6026: $45
	and b                                            ; $6027: $a0
	call c, Call_08e_63a8                            ; $6028: $dc $a8 $63
	ld d, a                                          ; $602b: $57
	ld c, c                                          ; $602c: $49
	jr c, jr_08e_6067                                ; $602d: $38 $38

jr_08e_602f:
	ld h, e                                          ; $602f: $63
	ld c, h                                          ; $6030: $4c
	and b                                            ; $6031: $a0
	ldh a, [c]                                       ; $6032: $f2
	ld d, c                                          ; $6033: $51
	ld b, d                                          ; $6034: $42
	ld c, a                                          ; $6035: $4f
	inc [hl]                                         ; $6036: $34
	ld h, e                                          ; $6037: $63
	ld d, a                                          ; $6038: $57
	ld c, c                                          ; $6039: $49
	jr c, @+$3a                                      ; $603a: $38 $38

	ld c, h                                          ; $603c: $4c
	and b                                            ; $603d: $a0
	db $ec                                           ; $603e: $ec

jr_08e_603f:
	ld [hl], a                                       ; $603f: $77
	xor b                                            ; $6040: $a8
	db $eb                                           ; $6041: $eb
	ld d, h                                          ; $6042: $54
	ldh a, [$3f]                                     ; $6043: $f0 $3f
	ld c, h                                          ; $6045: $4c
	and b                                            ; $6046: $a0
	cpl                                              ; $6047: $2f
	halt                                             ; $6048: $76
	ld c, a                                          ; $6049: $4f
	ldh a, [$8e]                                     ; $604a: $f0 $8e
	pop af                                           ; $604c: $f1
	ld c, l                                          ; $604d: $4d
	ld h, l                                          ; $604e: $65
	ld a, [hl-]                                      ; $604f: $3a
	ld b, c                                          ; $6050: $41
	ld b, h                                          ; $6051: $44
	ld b, l                                          ; $6052: $45
	add hl, bc                                       ; $6053: $09
	db $ec                                           ; $6054: $ec
	scf                                              ; $6055: $37
	xor c                                            ; $6056: $a9
	ret nz                                           ; $6057: $c0

	and b                                            ; $6058: $a0
	ret nz                                           ; $6059: $c0

jr_08e_605a:
	xor b                                            ; $605a: $a8
	ld [hl], d                                       ; $605b: $72
	ld b, a                                          ; $605c: $47
	ld a, b                                          ; $605d: $78
	ld c, l                                          ; $605e: $4d
	ccf                                              ; $605f: $3f
	ld b, l                                          ; $6060: $45
	inc a                                            ; $6061: $3c
	dec sp                                           ; $6062: $3b
	ldh [$a0], a                                     ; $6063: $e0 $a0
	db $ec                                           ; $6065: $ec
	scf                                              ; $6066: $37

jr_08e_6067:
	xor c                                            ; $6067: $a9
	ld [$63b1], a                                    ; $6068: $ea $b1 $63
	and b                                            ; $606b: $a0
	cpl                                              ; $606c: $2f
	ld d, h                                          ; $606d: $54
	ld b, c                                          ; $606e: $41
	ld a, [hl-]                                      ; $606f: $3a
	ldh a, [$3f]                                     ; $6070: $f0 $3f
	ld d, e                                          ; $6072: $53
	jr c, jr_08e_60ad                                ; $6073: $38 $38

	ld b, d                                          ; $6075: $42
	and c                                            ; $6076: $a1
	ld e, [hl]                                       ; $6077: $5e
	dec sp                                           ; $6078: $3b
	xor c                                            ; $6079: $a9
	ld e, h                                          ; $607a: $5c
	dec sp                                           ; $607b: $3b
	ld c, c                                          ; $607c: $49
	inc [hl]                                         ; $607d: $34
	db $ec                                           ; $607e: $ec
	ld a, e                                          ; $607f: $7b
	ld d, e                                          ; $6080: $53
	ldh a, [$f5]                                     ; $6081: $f0 $f5
	add hl, sp                                       ; $6083: $39
	ld b, d                                          ; $6084: $42
	ld c, h                                          ; $6085: $4c
	and b                                            ; $6086: $a0
	ld d, h                                          ; $6087: $54
	add hl, sp                                       ; $6088: $39
	jr c, jr_08e_60c4                                ; $6089: $38 $39

	ldh a, [$3f]                                     ; $608b: $f0 $3f
	ld c, e                                          ; $608d: $4b
	ldh a, [$64]                                     ; $608e: $f0 $64
	jr c, jr_08e_60cc                                ; $6090: $38 $3a

	ld b, d                                          ; $6092: $42
	xor c                                            ; $6093: $a9
	ret nz                                           ; $6094: $c0

	and b                                            ; $6095: $a0
	ld l, a                                          ; $6096: $6f
	ld c, e                                          ; $6097: $4b
	inc [hl]                                         ; $6098: $34
	jr c, jr_08e_60d3                                ; $6099: $38 $38

	ld c, c                                          ; $609b: $49
	ld [hl], a                                       ; $609c: $77
	add hl, sp                                       ; $609d: $39
	ld h, e                                          ; $609e: $63
	and b                                            ; $609f: $a0
	cpl                                              ; $60a0: $2f
	ldh a, [$3e]                                     ; $60a1: $f0 $3e
	ldh a, [$0b]                                     ; $60a3: $f0 $0b
	ld b, h                                          ; $60a5: $44
	ld b, l                                          ; $60a6: $45
	ld c, h                                          ; $60a7: $4c
	add hl, bc                                       ; $60a8: $09
	sub c                                            ; $60a9: $91
	dec a                                            ; $60aa: $3d
	ld d, a                                          ; $60ab: $57
	sbc [hl]                                         ; $60ac: $9e

jr_08e_60ad:
	ld b, h                                          ; $60ad: $44
	ld e, l                                          ; $60ae: $5d
	ld e, d                                          ; $60af: $5a
	xor h                                            ; $60b0: $ac
	db $eb                                           ; $60b1: $eb
	ld d, h                                          ; $60b2: $54
	ld h, e                                          ; $60b3: $63
	ld c, h                                          ; $60b4: $4c
	and b                                            ; $60b5: $a0
	sub c                                            ; $60b6: $91
	dec a                                            ; $60b7: $3d
	ld d, a                                          ; $60b8: $57
	sbc [hl]                                         ; $60b9: $9e
	ld b, h                                          ; $60ba: $44
	ld e, l                                          ; $60bb: $5d
	ld e, d                                          ; $60bc: $5a
	ld c, h                                          ; $60bd: $4c
	and b                                            ; $60be: $a0
	db $ed                                           ; $60bf: $ed
	sbc [hl]                                         ; $60c0: $9e
	xor b                                            ; $60c1: $a8
	db $ec                                           ; $60c2: $ec
	rst AddAOntoHL                                          ; $60c3: $ef

jr_08e_60c4:
	inc [hl]                                         ; $60c4: $34
	ld [hl], d                                       ; $60c5: $72
	dec a                                            ; $60c6: $3d
	ld b, d                                          ; $60c7: $42
	ld b, h                                          ; $60c8: $44
	ld h, e                                          ; $60c9: $63
	and b                                            ; $60ca: $a0
	db $ed                                           ; $60cb: $ed

jr_08e_60cc:
	sbc [hl]                                         ; $60cc: $9e
	xor b                                            ; $60cd: $a8
	ld d, h                                          ; $60ce: $54
	ld c, l                                          ; $60cf: $4d
	inc [hl]                                         ; $60d0: $34
	db $ec                                           ; $60d1: $ec
	rst AddAOntoHL                                          ; $60d2: $ef

jr_08e_60d3:
	ld c, a                                          ; $60d3: $4f
	ld [hl], d                                       ; $60d4: $72
	dec a                                            ; $60d5: $3d
	ld h, e                                          ; $60d6: $63
	and b                                            ; $60d7: $a0
	ld d, h                                          ; $60d8: $54
	ld c, l                                          ; $60d9: $4d
	inc [hl]                                         ; $60da: $34
	db $ec                                           ; $60db: $ec
	rst AddAOntoHL                                          ; $60dc: $ef
	xor h                                            ; $60dd: $ac
	ld [hl], d                                       ; $60de: $72
	dec a                                            ; $60df: $3d
	ld b, c                                          ; $60e0: $41
	db $ec                                           ; $60e1: $ec
	ret c                                            ; $60e2: $d8

	and c                                            ; $60e3: $a1
	ld b, [hl]                                       ; $60e4: $46
	ld [hl], h                                       ; $60e5: $74
	inc [hl]                                         ; $60e6: $34
	db $f4                                           ; $60e7: $f4
	ld [$505e], sp                                   ; $60e8: $08 $5e $50
	ld c, l                                          ; $60eb: $4d
	ld a, [hl-]                                      ; $60ec: $3a
	jr c, jr_08e_6152                                ; $60ed: $38 $63

	xor b                                            ; $60ef: $a8
	ld d, h                                          ; $60f0: $54
	ld b, d                                          ; $60f1: $42
	ldh a, [c]                                       ; $60f2: $f2
	dec e                                            ; $60f3: $1d
	adc [hl]                                         ; $60f4: $8e
	ldh a, [$78]                                     ; $60f5: $f0 $78
	and b                                            ; $60f7: $a0
	cpl                                              ; $60f8: $2f
	db $ec                                           ; $60f9: $ec
	reti                                             ; $60fa: $d9


	inc [hl]                                         ; $60fb: $34
	ld l, [hl]                                       ; $60fc: $6e
	ld [hl], c                                       ; $60fd: $71
	ld b, l                                          ; $60fe: $45
	add hl, sp                                       ; $60ff: $39
	inc a                                            ; $6100: $3c
	and c                                            ; $6101: $a1
	db $eb                                           ; $6102: $eb
	ld e, l                                          ; $6103: $5d
	inc [hl]                                         ; $6104: $34
	ld b, [hl]                                       ; $6105: $46
	ld d, a                                          ; $6106: $57
	ld d, e                                          ; $6107: $53
	ld c, c                                          ; $6108: $49
	add hl, sp                                       ; $6109: $39
	xor b                                            ; $610a: $a8
	ld b, b                                          ; $610b: $40
	add hl, sp                                       ; $610c: $39
	ld a, $3f                                        ; $610d: $3e $3f
	ld d, l                                          ; $610f: $55
	ld c, l                                          ; $6110: $4d
	ld c, [hl]                                       ; $6111: $4e
	and b                                            ; $6112: $a0
	db $ed                                           ; $6113: $ed
	ld b, c                                          ; $6114: $41
	xor c                                            ; $6115: $a9
	ld b, b                                          ; $6116: $40
	add hl, sp                                       ; $6117: $39
	ld a, $3f                                        ; $6118: $3e $3f
	ld d, l                                          ; $611a: $55
	ld c, l                                          ; $611b: $4d
	ld c, [hl]                                       ; $611c: $4e
	ld c, c                                          ; $611d: $49
	pop af                                           ; $611e: $f1
	jp hl                                            ; $611f: $e9


	inc a                                            ; $6120: $3c
	ld c, [hl]                                       ; $6121: $4e
	ld h, e                                          ; $6122: $63
	and b                                            ; $6123: $a0
	ld b, b                                          ; $6124: $40
	add hl, sp                                       ; $6125: $39
	ld a, $52                                        ; $6126: $3e $52
	ld a, $66                                        ; $6128: $3e $66
	add hl, sp                                       ; $612a: $39
	and b                                            ; $612b: $a0
	cpl                                              ; $612c: $2f
	add sp, -$66                                     ; $612d: $e8 $9a
	add hl, bc                                       ; $612f: $09
	db $ec                                           ; $6130: $ec
	reti                                             ; $6131: $d9


	inc [hl]                                         ; $6132: $34
	ld l, [hl]                                       ; $6133: $6e
	ld c, [hl]                                       ; $6134: $4e
	ld b, d                                          ; $6135: $42
	ld c, h                                          ; $6136: $4c
	and b                                            ; $6137: $a0
	ld b, [hl]                                       ; $6138: $46
	ld a, [hl-]                                      ; $6139: $3a
	dec a                                            ; $613a: $3d
	dec sp                                           ; $613b: $3b
	ccf                                              ; $613c: $3f
	xor h                                            ; $613d: $ac
	ldh a, [$dd]                                     ; $613e: $f0 $dd
	ldh a, [$9c]                                     ; $6140: $f0 $9c
	adc e                                            ; $6142: $8b
	ld e, h                                          ; $6143: $5c
	ld a, [hl-]                                      ; $6144: $3a
	ld b, d                                          ; $6145: $42
	ld c, h                                          ; $6146: $4c
	and b                                            ; $6147: $a0
	ld b, [hl]                                       ; $6148: $46
	ld d, d                                          ; $6149: $52
	ld d, a                                          ; $614a: $57
	xor h                                            ; $614b: $ac
	ld a, a                                          ; $614c: $7f
	ld d, e                                          ; $614d: $53
	pop af                                           ; $614e: $f1
	dec hl                                           ; $614f: $2b
	ld d, d                                          ; $6150: $52
	db $ec                                           ; $6151: $ec

jr_08e_6152:
	dec bc                                           ; $6152: $0b
	and b                                            ; $6153: $a0
	cpl                                              ; $6154: $2f
	add sp, $58                                      ; $6155: $e8 $58
	and d                                            ; $6157: $a2
	add a                                            ; $6158: $87
	pop af                                           ; $6159: $f1
	dec l                                            ; $615a: $2d
	ld c, d                                          ; $615b: $4a
	xor h                                            ; $615c: $ac
	ldh a, [c]                                       ; $615d: $f2
	dec e                                            ; $615e: $1d
	adc [hl]                                         ; $615f: $8e
	ld h, d                                          ; $6160: $62
	ldh a, [$08]                                     ; $6161: $f0 $08
	sbc l                                            ; $6163: $9d
	ld a, $3f                                        ; $6164: $3e $3f
	ld d, l                                          ; $6166: $55
	ld c, l                                          ; $6167: $4d
	ld c, [hl]                                       ; $6168: $4e
	ld b, d                                          ; $6169: $42
	ld c, e                                          ; $616a: $4b
	inc de                                           ; $616b: $13
	ld b, [hl]                                       ; $616c: $46
	ld d, a                                          ; $616d: $57
	ld d, e                                          ; $616e: $53
	dec a                                            ; $616f: $3d
	jr c, jr_08e_61cf                                ; $6170: $38 $5d

	ld e, d                                          ; $6172: $5a
	ld c, b                                          ; $6173: $48
	add hl, bc                                       ; $6174: $09
	add a                                            ; $6175: $87
	pop af                                           ; $6176: $f1
	dec l                                            ; $6177: $2d
	ld c, d                                          ; $6178: $4a
	xor h                                            ; $6179: $ac
	ldh a, [c]                                       ; $617a: $f2
	dec e                                            ; $617b: $1d
	adc [hl]                                         ; $617c: $8e
	ld c, e                                          ; $617d: $4b
	ldh a, [$08]                                     ; $617e: $f0 $08
	sbc l                                            ; $6180: $9d
	ld c, l                                          ; $6181: $4d
	ld c, [hl]                                       ; $6182: $4e
	ld e, l                                          ; $6183: $5d
	ld e, d                                          ; $6184: $5a
	ld c, h                                          ; $6185: $4c
	xor h                                            ; $6186: $ac
	ld l, h                                          ; $6187: $6c
	ld b, c                                          ; $6188: $41
	ld a, [hl-]                                      ; $6189: $3a
	ld d, e                                          ; $618a: $53
	ld [hl], d                                       ; $618b: $72
	ccf                                              ; $618c: $3f
	ld c, [hl]                                       ; $618d: $4e
	ld h, e                                          ; $618e: $63
	ld b, l                                          ; $618f: $45
	and b                                            ; $6190: $a0
	ld b, b                                          ; $6191: $40
	ld b, c                                          ; $6192: $41
	ld a, [hl-]                                      ; $6193: $3a
	ld b, a                                          ; $6194: $47
	xor h                                            ; $6195: $ac
	ldh a, [rAUD3LEVEL]                              ; $6196: $f0 $1c
	ldh a, [$d9]                                     ; $6198: $f0 $d9
	ld h, c                                          ; $619a: $61
	dec a                                            ; $619b: $3d
	jr c, jr_08e_61e0                                ; $619c: $38 $42

	and c                                            ; $619e: $a1
	cpl                                              ; $619f: $2f
	ld b, e                                          ; $61a0: $43
	ld b, b                                          ; $61a1: $40
	add hl, sp                                       ; $61a2: $39
	ld b, h                                          ; $61a3: $44
	ld c, h                                          ; $61a4: $4c
	xor b                                            ; $61a5: $a8
	db $eb                                           ; $61a6: $eb
	ld d, d                                          ; $61a7: $52
	and b                                            ; $61a8: $a0
	cpl                                              ; $61a9: $2f
	add sp, $29                                      ; $61aa: $e8 $29
	add hl, bc                                       ; $61ac: $09
	cpl                                              ; $61ad: $2f
	add sp, $2a                                      ; $61ae: $e8 $2a
	add hl, bc                                       ; $61b0: $09
	ldh a, [$5a]                                     ; $61b1: $f0 $5a
	add l                                            ; $61b3: $85
	inc [hl]                                         ; $61b4: $34
	ldh a, [$c0]                                     ; $61b5: $f0 $c0
	ldh a, [$f0]                                     ; $61b7: $f0 $f0
	ld c, c                                          ; $61b9: $49
	pop hl                                           ; $61ba: $e1
	ld d, e                                          ; $61bb: $53
	inc de                                           ; $61bc: $13
	pop af                                           ; $61bd: $f1
	sub d                                            ; $61be: $92
	jr c, jr_08e_6203                                ; $61bf: $38 $42

	ld c, h                                          ; $61c1: $4c
	and b                                            ; $61c2: $a0
	cpl                                              ; $61c3: $2f
	ldh a, [$5f]                                     ; $61c4: $f0 $5f
	ldh a, [$9b]                                     ; $61c6: $f0 $9b
	ld c, e                                          ; $61c8: $4b
	inc [hl]                                         ; $61c9: $34
	pop hl                                           ; $61ca: $e1
	ld c, a                                          ; $61cb: $4f
	ld a, b                                          ; $61cc: $78
	ld c, [hl]                                       ; $61cd: $4e
	ld b, l                                          ; $61ce: $45

jr_08e_61cf:
	add hl, bc                                       ; $61cf: $09
	rst JumpTable                                          ; $61d0: $c7
	ld a, [hl-]                                      ; $61d1: $3a
	ld b, c                                          ; $61d2: $41
	ld b, h                                          ; $61d3: $44
	xor b                                            ; $61d4: $a8
	ld [$63b1], a                                    ; $61d5: $ea $b1 $63
	and b                                            ; $61d8: $a0
	ret nz                                           ; $61d9: $c0

	xor b                                            ; $61da: $a8
	ldh a, [$5f]                                     ; $61db: $f0 $5f
	ldh a, [$9b]                                     ; $61dd: $f0 $9b
	ld c, e                                          ; $61df: $4b

jr_08e_61e0:
	db $d3                                           ; $61e0: $d3
	ld c, h                                          ; $61e1: $4c
	and b                                            ; $61e2: $a0
	ldh a, [$5a]                                     ; $61e3: $f0 $5a
	add l                                            ; $61e5: $85
	inc [hl]                                         ; $61e6: $34
	ret nz                                           ; $61e7: $c0

	and c                                            ; $61e8: $a1
	cpl                                              ; $61e9: $2f
	ld [$42b1], a                                    ; $61ea: $ea $b1 $42
	and c                                            ; $61ed: $a1
	ldh a, [$c3]                                     ; $61ee: $f0 $c3
	ldh a, [$8e]                                     ; $61f0: $f0 $8e
	ldh a, [rAUD1LEN]                                ; $61f2: $f0 $11
	ld e, c                                          ; $61f4: $59
	add e                                            ; $61f5: $83
	xor b                                            ; $61f6: $a8
	ld [$63b1], a                                    ; $61f7: $ea $b1 $63
	and b                                            ; $61fa: $a0
	ld b, b                                          ; $61fb: $40
	ld b, c                                          ; $61fc: $41
	ld a, [hl-]                                      ; $61fd: $3a
	ld b, d                                          ; $61fe: $42
	xor h                                            ; $61ff: $ac
	db $ec                                           ; $6200: $ec
	dec b                                            ; $6201: $05
	ld h, e                                          ; $6202: $63

jr_08e_6203:
	ld b, l                                          ; $6203: $45
	and b                                            ; $6204: $a0
	ldh a, [$2d]                                     ; $6205: $f0 $2d
	dec sp                                           ; $6207: $3b
	ccf                                              ; $6208: $3f
	ccf                                              ; $6209: $3f
	ld c, a                                          ; $620a: $4f
	xor h                                            ; $620b: $ac
	ld a, $3c                                        ; $620c: $3e $3c
	dec a                                            ; $620e: $3d
	ld a, [hl-]                                      ; $620f: $3a
	jr c, jr_08e_624e                                ; $6210: $38 $3c

	ld d, b                                          ; $6212: $50
	ld c, h                                          ; $6213: $4c
	and b                                            ; $6214: $a0
	cpl                                              ; $6215: $2f
	adc b                                            ; $6216: $88
	sub c                                            ; $6217: $91
	inc [hl]                                         ; $6218: $34
	ld b, b                                          ; $6219: $40
	add hl, sp                                       ; $621a: $39
	ld b, h                                          ; $621b: $44
	ld c, h                                          ; $621c: $4c
	add hl, bc                                       ; $621d: $09
	ld e, [hl]                                       ; $621e: $5e
	dec sp                                           ; $621f: $3b
	xor h                                            ; $6220: $ac
	ld b, [hl]                                       ; $6221: $46
	ld a, [hl-]                                      ; $6222: $3a
	dec a                                            ; $6223: $3d
	ld c, a                                          ; $6224: $4f
	ld [$42b1], a                                    ; $6225: $ea $b1 $42
	and c                                            ; $6228: $a1
	ld b, [hl]                                       ; $6229: $46
	ld a, [hl-]                                      ; $622a: $3a
	dec a                                            ; $622b: $3d
	ld c, a                                          ; $622c: $4f
	xor h                                            ; $622d: $ac
	ld [$41b1], a                                    ; $622e: $ea $b1 $41
	ld b, h                                          ; $6231: $44
	and b                                            ; $6232: $a0
	ld e, d                                          ; $6233: $5a
	ld b, c                                          ; $6234: $41
	ld a, [hl-]                                      ; $6235: $3a
	ldh a, [$6d]                                     ; $6236: $f0 $6d
	ld e, c                                          ; $6238: $59
	ldh a, [$27]                                     ; $6239: $f0 $27
	ld d, e                                          ; $623b: $53
	inc de                                           ; $623c: $13
	ldh a, [rAUD4ENV]                                ; $623d: $f0 $21
	ldh a, [rAUD4GO]                                 ; $623f: $f0 $23
	jr c, jr_08e_6285                                ; $6241: $38 $42

	and c                                            ; $6243: $a1
	cpl                                              ; $6244: $2f
	add sp, $34                                      ; $6245: $e8 $34
	add hl, bc                                       ; $6247: $09
	ld d, h                                          ; $6248: $54
	add hl, sp                                       ; $6249: $39
	jr c, jr_08e_6285                                ; $624a: $38 $39

	ldh a, [$6d]                                     ; $624c: $f0 $6d

jr_08e_624e:
	ld e, c                                          ; $624e: $59
	ldh a, [$27]                                     ; $624f: $f0 $27
	ld a, [hl-]                                      ; $6251: $3a
	ld d, b                                          ; $6252: $50
	xor h                                            ; $6253: $ac
	ld l, a                                          ; $6254: $6f
	ld b, a                                          ; $6255: $47
	ld c, a                                          ; $6256: $4f
	sub h                                            ; $6257: $94
	ld a, b                                          ; $6258: $78
	ld c, [hl]                                       ; $6259: $4e
	inc a                                            ; $625a: $3c

jr_08e_625b:
	ld a, [hl-]                                      ; $625b: $3a
	and c                                            ; $625c: $a1
	ld d, h                                          ; $625d: $54
	add hl, sp                                       ; $625e: $39
	jr c, jr_08e_629a                                ; $625f: $38 $39

	ldh a, [$6d]                                     ; $6261: $f0 $6d
	ld e, c                                          ; $6263: $59
	ldh a, [$27]                                     ; $6264: $f0 $27
	ld a, [hl-]                                      ; $6266: $3a
	ld d, b                                          ; $6267: $50
	xor h                                            ; $6268: $ac
	ld l, a                                          ; $6269: $6f
	ld c, a                                          ; $626a: $4f
	sub h                                            ; $626b: $94
	ld a, b                                          ; $626c: $78
	call c, Call_08e_54a0                            ; $626d: $dc $a0 $54
	ld c, l                                          ; $6270: $4d
	ld a, [hl-]                                      ; $6271: $3a
	ld d, b                                          ; $6272: $50
	ld l, a                                          ; $6273: $6f
	ld b, a                                          ; $6274: $47
	ld c, a                                          ; $6275: $4f
	inc de                                           ; $6276: $13
	sub h                                            ; $6277: $94
	ld a, b                                          ; $6278: $78
	call c, $2fa0                                    ; $6279: $dc $a0 $2f
	jp hl                                            ; $627c: $e9


	ld b, c                                          ; $627d: $41
	add hl, bc                                       ; $627e: $09
	ld l, a                                          ; $627f: $6f
	inc [hl]                                         ; $6280: $34
	ld d, h                                          ; $6281: $54
	add hl, sp                                       ; $6282: $39
	jr c, jr_08e_62be                                ; $6283: $38 $39

jr_08e_6285:
	ld b, d                                          ; $6285: $42
	ld c, e                                          ; $6286: $4b
	inc de                                           ; $6287: $13
	ret                                              ; $6288: $c9


	sub h                                            ; $6289: $94
	ld a, b                                          ; $628a: $78
	ld a, [hl-]                                      ; $628b: $3a
	jr c, @+$65                                      ; $628c: $38 $63

	and b                                            ; $628e: $a0
	ld d, h                                          ; $628f: $54
	add hl, sp                                       ; $6290: $39
	jr c, jr_08e_62cc                                ; $6291: $38 $39

	ld b, d                                          ; $6293: $42
	ld c, e                                          ; $6294: $4b
	xor h                                            ; $6295: $ac
	ret                                              ; $6296: $c9


	pop af                                           ; $6297: $f1
	ld b, $f1                                        ; $6298: $06 $f1

jr_08e_629a:
	ld a, $3e                                        ; $629a: $3e $3e
	ccf                                              ; $629c: $3f
	ld h, h                                          ; $629d: $64
	ld d, l                                          ; $629e: $55
	ld h, e                                          ; $629f: $63
	and b                                            ; $62a0: $a0
	ld d, h                                          ; $62a1: $54
	ld c, l                                          ; $62a2: $4d
	ld c, e                                          ; $62a3: $4b
	xor h                                            ; $62a4: $ac
	ld l, a                                          ; $62a5: $6f
	ld b, a                                          ; $62a6: $47
	ld c, e                                          ; $62a7: $4b
	ret                                              ; $62a8: $c9


	inc de                                           ; $62a9: $13
	ldh a, [rAUD1LOW]                                ; $62aa: $f0 $13

jr_08e_62ac:
	ldh a, [$63]                                     ; $62ac: $f0 $63
	db $ec                                           ; $62ae: $ec
	ld [de], a                                       ; $62af: $12
	and b                                            ; $62b0: $a0
	cpl                                              ; $62b1: $2f
	add sp, $55                                      ; $62b2: $e8 $55
	and c                                            ; $62b4: $a1
	ldh a, [$8a]                                     ; $62b5: $f0 $8a
	ldh a, [rHDMA2]                                  ; $62b7: $f0 $52
	jr c, jr_08e_62ac                                ; $62b9: $38 $f1

	ld a, b                                          ; $62bb: $78
	jr c, jr_08e_625b                                ; $62bc: $38 $9d

jr_08e_62be:
	ld c, [hl]                                       ; $62be: $4e
	ld l, h                                          ; $62bf: $6c
	ld d, e                                          ; $62c0: $53
	inc de                                           ; $62c1: $13
	ld b, [hl]                                       ; $62c2: $46
	ld c, [hl]                                       ; $62c3: $4e
	ld h, e                                          ; $62c4: $63
	ld c, h                                          ; $62c5: $4c
	xor b                                            ; $62c6: $a8
	ld c, d                                          ; $62c7: $4a
	ld c, a                                          ; $62c8: $4f
	inc [hl]                                         ; $62c9: $34
	sub h                                            ; $62ca: $94
	ld a, b                                          ; $62cb: $78

jr_08e_62cc:
	ld b, b                                          ; $62cc: $40
	add hl, sp                                       ; $62cd: $39
	ld c, a                                          ; $62ce: $4f
	ld a, [hl-]                                      ; $62cf: $3a
	jr c, jr_08e_6335                                ; $62d0: $38 $63

	and b                                            ; $62d2: $a0
	ld [$ac6f], a                                    ; $62d3: $ea $6f $ac
	ld l, a                                          ; $62d6: $6f
	ld b, a                                          ; $62d7: $47
	sub h                                            ; $62d8: $94
	ld a, b                                          ; $62d9: $78
	ld c, [hl]                                       ; $62da: $4e
	ld c, c                                          ; $62db: $49
	ld [hl], a                                       ; $62dc: $77
	add hl, sp                                       ; $62dd: $39
	and c                                            ; $62de: $a1
	ld [$ac6f], a                                    ; $62df: $ea $6f $ac
	ld l, a                                          ; $62e2: $6f
	ld b, a                                          ; $62e3: $47
	ld c, e                                          ; $62e4: $4b
	ldh a, [rAUD1LOW]                                ; $62e5: $f0 $13
	ldh a, [$63]                                     ; $62e7: $f0 $63
	db $ec                                           ; $62e9: $ec
	ld [de], a                                       ; $62ea: $12
	and b                                            ; $62eb: $a0
	ld d, h                                          ; $62ec: $54
	add hl, sp                                       ; $62ed: $39
	jr c, jr_08e_6329                                ; $62ee: $38 $39

	ldh a, [$6d]                                     ; $62f0: $f0 $6d
	ld e, c                                          ; $62f2: $59
	ldh a, [$27]                                     ; $62f3: $f0 $27
	dec sp                                           ; $62f5: $3b
	ccf                                              ; $62f6: $3f
	ldh a, [$f1]                                     ; $62f7: $f0 $f1
	ldh a, [$9d]                                     ; $62f9: $f0 $9d
	xor b                                            ; $62fb: $a8
	db $f4                                           ; $62fc: $f4
	add l                                            ; $62fd: $85
	ld b, a                                          ; $62fe: $47
	ld a, [hl-]                                      ; $62ff: $3a
	dec sp                                           ; $6300: $3b
	ld h, c                                          ; $6301: $61
	ld d, [hl]                                       ; $6302: $56
	jr c, jr_08e_6345                                ; $6303: $38 $40

	add hl, sp                                       ; $6305: $39
	and b                                            ; $6306: $a0
	cpl                                              ; $6307: $2f
	add sp, $1c                                      ; $6308: $e8 $1c
	add hl, bc                                       ; $630a: $09
	ld d, c                                          ; $630b: $51
	sbc l                                            ; $630c: $9d
	xor h                                            ; $630d: $ac
	pop af                                           ; $630e: $f1
	push hl                                          ; $630f: $e5
	ld d, l                                          ; $6310: $55
	ld a, [hl-]                                      ; $6311: $3a
	dec sp                                           ; $6312: $3b
	ld h, c                                          ; $6313: $61
	ld d, [hl]                                       ; $6314: $56
	add hl, sp                                       ; $6315: $39
	ld b, d                                          ; $6316: $42
	ld b, l                                          ; $6317: $45
	and b                                            ; $6318: $a0
	ld [hl], a                                       ; $6319: $77
	ld h, e                                          ; $631a: $63
	sbc h                                            ; $631b: $9c
	inc de                                           ; $631c: $13
	ldh a, [$be]                                     ; $631d: $f0 $be
	ld e, h                                          ; $631f: $5c
	ld b, a                                          ; $6320: $47
	ld a, [hl-]                                      ; $6321: $3a
	dec sp                                           ; $6322: $3b
	ld h, c                                          ; $6323: $61
	ld d, [hl]                                       ; $6324: $56
	add hl, sp                                       ; $6325: $39
	inc a                                            ; $6326: $3c
	ld d, b                                          ; $6327: $50
	ld c, h                                          ; $6328: $4c

jr_08e_6329:
	and b                                            ; $6329: $a0
	ldh a, [$be]                                     ; $632a: $f0 $be
	ld e, h                                          ; $632c: $5c
	ld b, a                                          ; $632d: $47
	ld a, [hl-]                                      ; $632e: $3a
	dec sp                                           ; $632f: $3b
	ld h, c                                          ; $6330: $61
	ld d, [hl]                                       ; $6331: $56
	add hl, sp                                       ; $6332: $39
	ld b, d                                          ; $6333: $42
	ld b, l                                          ; $6334: $45

jr_08e_6335:
	ld c, h                                          ; $6335: $4c
	and b                                            ; $6336: $a0
	cpl                                              ; $6337: $2f
	ld b, b                                          ; $6338: $40
	ld c, l                                          ; $6339: $4d
	ld c, e                                          ; $633a: $4b
	ld h, h                                          ; $633b: $64
	inc a                                            ; $633c: $3c
	ld a, $38                                        ; $633d: $3e $38
	ld b, l                                          ; $633f: $45
	add hl, bc                                       ; $6340: $09
	ld b, b                                          ; $6341: $40
	ld b, c                                          ; $6342: $41
	ld a, [hl-]                                      ; $6343: $3a
	sbc d                                            ; $6344: $9a

jr_08e_6345:
	inc de                                           ; $6345: $13
	ld b, l                                          ; $6346: $45
	ld d, l                                          ; $6347: $55
	add d                                            ; $6348: $82
	ld e, [hl]                                       ; $6349: $5e
	ld c, [hl]                                       ; $634a: $4e
	ld h, e                                          ; $634b: $63
	ld c, h                                          ; $634c: $4c
	and b                                            ; $634d: $a0
	ld b, b                                          ; $634e: $40
	ld b, c                                          ; $634f: $41
	ld a, [hl-]                                      ; $6350: $3a
	ld d, h                                          ; $6351: $54
	ld c, c                                          ; $6352: $49
	add d                                            ; $6353: $82
	add hl, sp                                       ; $6354: $39
	ldh a, [$08]                                     ; $6355: $f0 $08
	add hl, sp                                       ; $6357: $39
	ld d, e                                          ; $6358: $53
	xor h                                            ; $6359: $ac
	ld h, h                                          ; $635a: $64
	inc a                                            ; $635b: $3c
	ld a, $38                                        ; $635c: $3e $38
	ld h, e                                          ; $635e: $63
	and b                                            ; $635f: $a0
	ld b, b                                          ; $6360: $40
	ld c, l                                          ; $6361: $4d
	ld c, e                                          ; $6362: $4b
	xor h                                            ; $6363: $ac
	ldh a, [$d8]                                     ; $6364: $f0 $d8
	ld e, d                                          ; $6366: $5a
	jr c, jr_08e_63aa                                ; $6367: $38 $41

	db $ec                                           ; $6369: $ec
	ret c                                            ; $636a: $d8

	and c                                            ; $636b: $a1
	cpl                                              ; $636c: $2f
	add sp, $6b                                      ; $636d: $e8 $6b
	and c                                            ; $636f: $a1
	rst JumpTable                                          ; $6370: $c7
	inc a                                            ; $6371: $3c
	ld c, a                                          ; $6372: $4f
	inc de                                           ; $6373: $13
	ld [$a8df], a                                    ; $6374: $ea $df $a8
	ldh a, [$f5]                                     ; $6377: $f0 $f5
	add hl, sp                                       ; $6379: $39
	ld c, c                                          ; $637a: $49
	ld [hl], a                                       ; $637b: $77
	add hl, sp                                       ; $637c: $39
	ld e, l                                          ; $637d: $5d
	ld e, d                                          ; $637e: $5a
	ld c, b                                          ; $637f: $48
	and b                                            ; $6380: $a0
	db $d3                                           ; $6381: $d3
	inc a                                            ; $6382: $3c
	ld c, a                                          ; $6383: $4f
	inc de                                           ; $6384: $13
	ld [$a0df], a                                    ; $6385: $ea $df $a0
	ld c, a                                          ; $6388: $4f
	ld a, $3c                                        ; $6389: $3e $3c
	ld a, $3d                                        ; $638b: $3e $3d
	ld d, b                                          ; $638d: $50
	xor h                                            ; $638e: $ac
	db $d3                                           ; $638f: $d3
	inc a                                            ; $6390: $3c
	ld c, a                                          ; $6391: $4f
	ld c, h                                          ; $6392: $4c
	and b                                            ; $6393: $a0
	ldh a, [$03]                                     ; $6394: $f0 $03
	ld [hl], e                                       ; $6396: $73
	sub e                                            ; $6397: $93
	xor b                                            ; $6398: $a8
	ld l, e                                          ; $6399: $6b
	ld b, h                                          ; $639a: $44
	inc a                                            ; $639b: $3c
	db $ec                                           ; $639c: $ec
	dec b                                            ; $639d: $05
	ld e, l                                          ; $639e: $5d
	ld e, d                                          ; $639f: $5a

Call_08e_63a0:
	xor h                                            ; $63a0: $ac
	ldh a, [rAUD1LEN]                                ; $63a1: $f0 $11
	ld a, l                                          ; $63a3: $7d
	ld h, l                                          ; $63a4: $65
	ld d, e                                          ; $63a5: $53
	sub h                                            ; $63a6: $94
	ccf                                              ; $63a7: $3f

Call_08e_63a8:
	ld e, h                                          ; $63a8: $5c
	dec a                                            ; $63a9: $3d

jr_08e_63aa:
	ld h, e                                          ; $63aa: $63
	ld b, l                                          ; $63ab: $45
	and b                                            ; $63ac: $a0
	cpl                                              ; $63ad: $2f
	add sp, -$4b                                     ; $63ae: $e8 $b5
	and c                                            ; $63b0: $a1
	ld [$a9af], a                                    ; $63b1: $ea $af $a9
	ld c, d                                          ; $63b4: $4a
	ld c, a                                          ; $63b5: $4f
	inc [hl]                                         ; $63b6: $34
	db $ec                                           ; $63b7: $ec
	db $d3                                           ; $63b8: $d3
	sub h                                            ; $63b9: $94
	dec a                                            ; $63ba: $3d
	ld b, d                                          ; $63bb: $42
	inc a                                            ; $63bc: $3c
	ld a, $50                                        ; $63bd: $3e $50
	and c                                            ; $63bf: $a1
	db $ec                                           ; $63c0: $ec
	reti                                             ; $63c1: $d9


	inc [hl]                                         ; $63c2: $34
	db $ec                                           ; $63c3: $ec
	ld d, $a0                                        ; $63c4: $16 $a0
	ld b, b                                          ; $63c6: $40
	add hl, sp                                       ; $63c7: $39
	inc a                                            ; $63c8: $3c
	ld c, a                                          ; $63c9: $4f
	ld [$a0df], a                                    ; $63ca: $ea $df $a0
	cpl                                              ; $63cd: $2f
	ldh a, [c]                                       ; $63ce: $f2
	inc sp                                           ; $63cf: $33
	ld a, $3d                                        ; $63d0: $3e $3d
	ld b, c                                          ; $63d2: $41
	db $ec                                           ; $63d3: $ec
	ret c                                            ; $63d4: $d8

	and c                                            ; $63d5: $a1
	ld b, b                                          ; $63d6: $40
	inc [hl]                                         ; $63d7: $34
	ld b, b                                          ; $63d8: $40
	ld b, c                                          ; $63d9: $41
	ld a, [hl-]                                      ; $63da: $3a
	xor b                                            ; $63db: $a8
	ld l, e                                          ; $63dc: $6b
	ld c, a                                          ; $63dd: $4f
	ld a, $3f                                        ; $63de: $3e $3f
	ld a, [hl-]                                      ; $63e0: $3a
	jr c, jr_08e_6446                                ; $63e1: $38 $63

	ld b, l                                          ; $63e3: $45
	and b                                            ; $63e4: $a0
	ldh a, [rHDMA5]                                  ; $63e5: $f0 $55
	ldh a, [rBCPS]                                   ; $63e7: $f0 $68
	ld c, h                                          ; $63e9: $4c
	xor b                                            ; $63ea: $a8
	ld l, a                                          ; $63eb: $6f
	ld c, e                                          ; $63ec: $4b
	ld l, e                                          ; $63ed: $6b
	ld c, a                                          ; $63ee: $4f
	ld a, $3f                                        ; $63ef: $3e $3f
	ld a, [hl-]                                      ; $63f1: $3a
	jr c, jr_08e_6457                                ; $63f2: $38 $63

	ld b, l                                          ; $63f4: $45
	and b                                            ; $63f5: $a0
	ld l, e                                          ; $63f6: $6b
	ld b, a                                          ; $63f7: $47
	ld c, a                                          ; $63f8: $4f
	ld a, $3f                                        ; $63f9: $3e $3f
	ld a, [hl-]                                      ; $63fb: $3a
	jr c, jr_08e_6461                                ; $63fc: $38 $63

	ld b, l                                          ; $63fe: $45
	and b                                            ; $63ff: $a0
	cpl                                              ; $6400: $2f
	jp hl                                            ; $6401: $e9


	ld bc, $eaa1                                     ; $6402: $01 $a1 $ea
	xor a                                            ; $6405: $af
	xor c                                            ; $6406: $a9
	ld b, b                                          ; $6407: $40
	add hl, sp                                       ; $6408: $39
	inc a                                            ; $6409: $3c
	ld c, a                                          ; $640a: $4f
	ld [$a0df], a                                    ; $640b: $ea $df $a0
	call c, Call_08e_40a8                            ; $640e: $dc $a8 $40
	add hl, sp                                       ; $6411: $39
	inc a                                            ; $6412: $3c
	ld c, a                                          ; $6413: $4f
	ld [$a0df], a                                    ; $6414: $ea $df $a0
	ldh a, [$34]                                     ; $6417: $f0 $34
	ld b, a                                          ; $6419: $47
	inc [hl]                                         ; $641a: $34
	ld b, b                                          ; $641b: $40
	ld c, l                                          ; $641c: $4d
	ld c, d                                          ; $641d: $4a
	ld c, a                                          ; $641e: $4f
	jr c, @+$3a                                      ; $641f: $38 $38

	ld h, e                                          ; $6421: $63
	and b                                            ; $6422: $a0
	add hl, bc                                       ; $6423: $09
	ld b, b                                          ; $6424: $40
	ld c, l                                          ; $6425: $4d
	ld e, e                                          ; $6426: $5b
	ld d, [hl]                                       ; $6427: $56
	xor h                                            ; $6428: $ac
	ldh a, [rAUD2HIGH]                               ; $6429: $f0 $19
	ld b, a                                          ; $642b: $47
	sub [hl]                                         ; $642c: $96
	ld d, a                                          ; $642d: $57
	ld d, d                                          ; $642e: $52
	ld a, $66                                        ; $642f: $3e $66
	add hl, sp                                       ; $6431: $39
	and b                                            ; $6432: $a0
	cpl                                              ; $6433: $2f
	ld b, e                                          ; $6434: $43
	ld b, b                                          ; $6435: $40
	add hl, sp                                       ; $6436: $39
	ld b, h                                          ; $6437: $44
	ld c, h                                          ; $6438: $4c
	xor b                                            ; $6439: $a8
	db $eb                                           ; $643a: $eb
	ld d, d                                          ; $643b: $52
	inc a                                            ; $643c: $3c
	and b                                            ; $643d: $a0
	ldh a, [$c3]                                     ; $643e: $f0 $c3
	ld e, c                                          ; $6440: $59
	ld a, l                                          ; $6441: $7d
	ld [hl], e                                       ; $6442: $73
	ldh a, [$f2]                                     ; $6443: $f0 $f2
	db $ed                                           ; $6445: $ed

jr_08e_6446:
	add c                                            ; $6446: $81
	ldh a, [rAUD4LEN]                                ; $6447: $f0 $20
	ld [hl], e                                       ; $6449: $73
	ldh a, [$32]                                     ; $644a: $f0 $32
	xor b                                            ; $644c: $a8
	ld [$3ae9], a                                    ; $644d: $ea $e9 $3a
	dec sp                                           ; $6450: $3b
	dec a                                            ; $6451: $3d
	ld h, e                                          ; $6452: $63
	and b                                            ; $6453: $a0
	cpl                                              ; $6454: $2f
	db $ec                                           ; $6455: $ec
	pop hl                                           ; $6456: $e1

jr_08e_6457:
	ld [$0962], a                                    ; $6457: $ea $62 $09
	ld [$ac95], a                                    ; $645a: $ea $95 $ac
	ld b, [hl]                                       ; $645d: $46
	ld d, a                                          ; $645e: $57
	ld d, e                                          ; $645f: $53
	ld c, c                                          ; $6460: $49

jr_08e_6461:
	add hl, sp                                       ; $6461: $39
	xor b                                            ; $6462: $a8
	sub d                                            ; $6463: $92
	adc [hl]                                         ; $6464: $8e
	dec sp                                           ; $6465: $3b
	ccf                                              ; $6466: $3f
	ld l, h                                          ; $6467: $6c
	ld c, [hl]                                       ; $6468: $4e
	ld h, e                                          ; $6469: $63
	ld c, h                                          ; $646a: $4c
	and b                                            ; $646b: $a0
	cpl                                              ; $646c: $2f
	db $ec                                           ; $646d: $ec
	pop hl                                           ; $646e: $e1
	jp hl                                            ; $646f: $e9


	ld e, c                                          ; $6470: $59
	add hl, bc                                       ; $6471: $09
	ld b, b                                          ; $6472: $40
	ld c, l                                          ; $6473: $4d
	dec sp                                           ; $6474: $3b
	ccf                                              ; $6475: $3f
	xor h                                            ; $6476: $ac
	ret                                              ; $6477: $c9


	ldh a, [rHDMA5]                                  ; $6478: $f0 $55
	ldh a, [rBCPS]                                   ; $647a: $f0 $68
	ld b, l                                          ; $647c: $45
	ld c, h                                          ; $647d: $4c
	and b                                            ; $647e: $a0
	cpl                                              ; $647f: $2f
	add sp, -$11                                     ; $6480: $e8 $ef
	add hl, bc                                       ; $6482: $09
	call c, Call_08e_6ba8                            ; $6483: $dc $a8 $6b
	ld c, c                                          ; $6486: $49
	inc a                                            ; $6487: $3c
	ld a, [hl-]                                      ; $6488: $3a
	ld c, [hl]                                       ; $6489: $4e
	ld h, e                                          ; $648a: $63
	ld b, l                                          ; $648b: $45
	ld c, h                                          ; $648c: $4c
	and b                                            ; $648d: $a0
	jp hl                                            ; $648e: $e9


	rrca                                             ; $648f: $0f
	xor b                                            ; $6490: $a8
	ldh a, [rDIV]                                    ; $6491: $f0 $04
	ld e, c                                          ; $6493: $59
	ldh a, [$2f]                                     ; $6494: $f0 $2f
	ld e, c                                          ; $6496: $59
	ld b, l                                          ; $6497: $45
	and b                                            ; $6498: $a0
	cpl                                              ; $6499: $2f
	db $ec                                           ; $649a: $ec
	pop hl                                           ; $649b: $e1
	inc [hl]                                         ; $649c: $34
	db $eb                                           ; $649d: $eb
	rra                                              ; $649e: $1f
	add hl, bc                                       ; $649f: $09
	ld b, b                                          ; $64a0: $40
	add hl, sp                                       ; $64a1: $39
	xor c                                            ; $64a2: $a9
	ld e, h                                          ; $64a3: $5c
	dec sp                                           ; $64a4: $3b
	ld c, c                                          ; $64a5: $49
	inc [hl]                                         ; $64a6: $34
	ldh a, [$31]                                     ; $64a7: $f0 $31
	ldh a, [$7f]                                     ; $64a9: $f0 $7f
	ld b, l                                          ; $64ab: $45
	ld c, h                                          ; $64ac: $4c
	and b                                            ; $64ad: $a0
	cpl                                              ; $64ae: $2f
	add sp, $42                                      ; $64af: $e8 $42
	add hl, bc                                       ; $64b1: $09
	ld b, b                                          ; $64b2: $40
	ld b, c                                          ; $64b3: $41
	ld a, [hl-]                                      ; $64b4: $3a
	sbc d                                            ; $64b5: $9a
	xor h                                            ; $64b6: $ac
	ld [hl], a                                       ; $64b7: $77
	dec sp                                           ; $64b8: $3b
	ccf                                              ; $64b9: $3f
	ld a, [hl-]                                      ; $64ba: $3a
	jr c, @+$65                                      ; $64bb: $38 $63

	ld b, l                                          ; $64bd: $45
	and b                                            ; $64be: $a0
	cpl                                              ; $64bf: $2f
	jp hl                                            ; $64c0: $e9


	ld a, d                                          ; $64c1: $7a
	add hl, bc                                       ; $64c2: $09
	ld b, b                                          ; $64c3: $40
	ld c, l                                          ; $64c4: $4d
	ld e, e                                          ; $64c5: $5b
	ld d, [hl]                                       ; $64c6: $56
	inc [hl]                                         ; $64c7: $34
	sub d                                            ; $64c8: $92
	adc [hl]                                         ; $64c9: $8e
	dec sp                                           ; $64ca: $3b
	ccf                                              ; $64cb: $3f
	and b                                            ; $64cc: $a0
	ld c, h                                          ; $64cd: $4c
	add l                                            ; $64ce: $85
	xor h                                            ; $64cf: $ac
	ld l, a                                          ; $64d0: $6f
	ld b, d                                          ; $64d1: $42
	pop af                                           ; $64d2: $f1
	xor e                                            ; $64d3: $ab
	db $eb                                           ; $64d4: $eb
	ld d, b                                          ; $64d5: $50
	and c                                            ; $64d6: $a1
	cpl                                              ; $64d7: $2f
	add sp, $56                                      ; $64d8: $e8 $56
	add hl, bc                                       ; $64da: $09
	ld e, [hl]                                       ; $64db: $5e
	ld e, c                                          ; $64dc: $59
	dec sp                                           ; $64dd: $3b
	inc [hl]                                         ; $64de: $34
	adc b                                            ; $64df: $88
	sub c                                            ; $64e0: $91
	xor c                                            ; $64e1: $a9
	ld l, e                                          ; $64e2: $6b
	ld b, h                                          ; $64e3: $44
	inc a                                            ; $64e4: $3c
	pop af                                           ; $64e5: $f1
	sbc c                                            ; $64e6: $99
	ld c, l                                          ; $64e7: $4d
	ld h, c                                          ; $64e8: $61
	ld d, [hl]                                       ; $64e9: $56
	add hl, sp                                       ; $64ea: $39
	ld a, [hl-]                                      ; $64eb: $3a
	and b                                            ; $64ec: $a0
	cpl                                              ; $64ed: $2f
	db $ed                                           ; $64ee: $ed
	ld e, [hl]                                       ; $64ef: $5e
	inc [hl]                                         ; $64f0: $34
	pop af                                           ; $64f1: $f1
	and $f3                                          ; $64f2: $e6 $f3
	pop de                                           ; $64f4: $d1
	inc a                                            ; $64f5: $3c
	ld d, b                                          ; $64f6: $50
	ld l, [hl]                                       ; $64f7: $6e
	ld d, a                                          ; $64f8: $57
	ldh a, [hDisp1_WX]                                     ; $64f9: $f0 $96
	ld a, c                                          ; $64fb: $79
	add hl, bc                                       ; $64fc: $09
	ld b, b                                          ; $64fd: $40
	add hl, sp                                       ; $64fe: $39
	xor c                                            ; $64ff: $a9
	ld h, e                                          ; $6500: $63
	ld d, a                                          ; $6501: $57
	ld c, c                                          ; $6502: $49
	ldh a, [$67]                                     ; $6503: $f0 $67
	ldh a, [$9f]                                     ; $6505: $f0 $9f
	inc de                                           ; $6507: $13
	ld b, [hl]                                       ; $6508: $46
	dec sp                                           ; $6509: $3b
	dec a                                            ; $650a: $3d
	ld b, c                                          ; $650b: $41
	ld b, h                                          ; $650c: $44
	ld e, l                                          ; $650d: $5d
	ld e, d                                          ; $650e: $5a
	ld c, h                                          ; $650f: $4c
	and b                                            ; $6510: $a0
	cpl                                              ; $6511: $2f
	add sp, -$19                                     ; $6512: $e8 $e7
	add hl, bc                                       ; $6514: $09
	ld b, b                                          ; $6515: $40
	ld b, d                                          ; $6516: $42
	pop af                                           ; $6517: $f1
	rst SubAFromHL                                          ; $6518: $d7
	ldh a, [$0d]                                     ; $6519: $f0 $0d
	xor c                                            ; $651b: $a9
	ld h, e                                          ; $651c: $63
	ld d, a                                          ; $651d: $57
	ld c, c                                          ; $651e: $49
	ldh a, [$67]                                     ; $651f: $f0 $67
	ldh a, [$9f]                                     ; $6521: $f0 $9f
	inc de                                           ; $6523: $13
	ld b, [hl]                                       ; $6524: $46
	dec sp                                           ; $6525: $3b
	dec a                                            ; $6526: $3d
	ld b, c                                          ; $6527: $41
	ld b, h                                          ; $6528: $44
	ld e, l                                          ; $6529: $5d
	ld e, d                                          ; $652a: $5a
	ld a, [hl-]                                      ; $652b: $3a
	ld [hl], h                                       ; $652c: $74
	ld c, b                                          ; $652d: $48
	and b                                            ; $652e: $a0
	ld e, e                                          ; $652f: $5b
	ld d, [hl]                                       ; $6530: $56
	ld b, [hl]                                       ; $6531: $46
	inc [hl]                                         ; $6532: $34
	ldh a, [$d6]                                     ; $6533: $f0 $d6
	ld c, e                                          ; $6535: $4b
	ld d, h                                          ; $6536: $54
	ld c, l                                          ; $6537: $4d
	ld c, h                                          ; $6538: $4c
	xor b                                            ; $6539: $a8
	ret                                              ; $653a: $c9


	inc [hl]                                         ; $653b: $34
	ldh a, [rP1]                                     ; $653c: $f0 $00
	pop af                                           ; $653e: $f1
	dec b                                            ; $653f: $05
	ldh a, [rAUD1LEN]                                ; $6540: $f0 $11
	ld h, l                                          ; $6542: $65
	ldh a, [c]                                       ; $6543: $f2
	ld hl, sp+$3e                                    ; $6544: $f8 $3e
	ccf                                              ; $6546: $3f
	and b                                            ; $6547: $a0
	cpl                                              ; $6548: $2f
	halt                                             ; $6549: $76
	ld d, e                                          ; $654a: $53
	sub [hl]                                         ; $654b: $96
	ld c, l                                          ; $654c: $4d
	ccf                                              ; $654d: $3f
	rst SubAFromDE                                          ; $654e: $df
	ld b, l                                          ; $654f: $45
	add hl, bc                                       ; $6550: $09
	db $eb                                           ; $6551: $eb
	ld e, l                                          ; $6552: $5d
	inc [hl]                                         ; $6553: $34
	ld b, [hl]                                       ; $6554: $46
	ld d, a                                          ; $6555: $57
	ld d, e                                          ; $6556: $53
	ld c, c                                          ; $6557: $49
	add hl, sp                                       ; $6558: $39
	xor b                                            ; $6559: $a8
	ld b, b                                          ; $655a: $40
	ld c, l                                          ; $655b: $4d
	ld e, e                                          ; $655c: $5b
	ld d, [hl]                                       ; $655d: $56
	inc [hl]                                         ; $655e: $34
	ld d, h                                          ; $655f: $54
	ld b, d                                          ; $6560: $42
	ldh a, [$ed]                                     ; $6561: $f0 $ed
	ld h, h                                          ; $6563: $64
	ldh a, [$c8]                                     ; $6564: $f0 $c8
	jr c, jr_08e_65b4                                ; $6566: $38 $4c

	and b                                            ; $6568: $a0
	cpl                                              ; $6569: $2f
	ld e, [hl]                                       ; $656a: $5e
	ld e, c                                          ; $656b: $59
	dec sp                                           ; $656c: $3b
	ld [hl], $52                                     ; $656d: $36 $52
	dec a                                            ; $656f: $3d
	pop af                                           ; $6570: $f1
	xor e                                            ; $6571: $ab
	add hl, sp                                       ; $6572: $39
	ld b, d                                          ; $6573: $42
	and c                                            ; $6574: $a1
	sub c                                            ; $6575: $91
	ldh a, [$59]                                     ; $6576: $f0 $59
	ld c, d                                          ; $6578: $4a
	ld a, $66                                        ; $6579: $3e $66
	add hl, sp                                       ; $657b: $39
	xor b                                            ; $657c: $a8
	pop af                                           ; $657d: $f1
	xor e                                            ; $657e: $ab
	jr c, jr_08e_65c8                                ; $657f: $38 $47

	ld a, b                                          ; $6581: $78
	dec a                                            ; $6582: $3d
	ld b, c                                          ; $6583: $41
	ld b, h                                          ; $6584: $44
	inc a                                            ; $6585: $3c
	ld d, b                                          ; $6586: $50
	and b                                            ; $6587: $a0
	cpl                                              ; $6588: $2f
	xor $2d                                          ; $6589: $ee $2d
	dec [hl]                                         ; $658b: $35
	ld e, d                                          ; $658c: $5a
	add hl, sp                                       ; $658d: $39
	sub a                                            ; $658e: $97
	add hl, bc                                       ; $658f: $09
	ldh a, [rAUD4POLY]                               ; $6590: $f0 $22
	ld h, l                                          ; $6592: $65
	sub e                                            ; $6593: $93
	add e                                            ; $6594: $83
	and b                                            ; $6595: $a0
	cpl                                              ; $6596: $2f
	ld b, e                                          ; $6597: $43
	ldh a, [$08]                                     ; $6598: $f0 $08
	ld d, b                                          ; $659a: $50
	inc [hl]                                         ; $659b: $34
	db $ec                                           ; $659c: $ec
	pop hl                                           ; $659d: $e1
	ld b, d                                          ; $659e: $42
	inc de                                           ; $659f: $13
	ldh a, [rDMA]                                    ; $65a0: $f0 $46
	ld b, h                                          ; $65a2: $44
	ld b, l                                          ; $65a3: $45
	and b                                            ; $65a4: $a0
	ld l, a                                          ; $65a5: $6f
	ld c, e                                          ; $65a6: $4b
	db $eb                                           ; $65a7: $eb
	ld c, a                                          ; $65a8: $4f
	inc a                                            ; $65a9: $3c
	ld d, b                                          ; $65aa: $50
	inc de                                           ; $65ab: $13
	jr c, jr_08e_65e6                                ; $65ac: $38 $38

	ld h, e                                          ; $65ae: $63
	and b                                            ; $65af: $a0
	cpl                                              ; $65b0: $2f
	ld b, e                                          ; $65b1: $43
	db $eb                                           ; $65b2: $eb
	rst FarCall                                          ; $65b3: $f7

jr_08e_65b4:
	xor c                                            ; $65b4: $a9
	db $ec                                           ; $65b5: $ec
	dec [hl]                                         ; $65b6: $35
	ld d, e                                          ; $65b7: $53
	ld c, [hl]                                       ; $65b8: $4e
	ld a, [hl-]                                      ; $65b9: $3a
	ld b, c                                          ; $65ba: $41
	ccf                                              ; $65bb: $3f
	xor h                                            ; $65bc: $ac
	db $ec                                           ; $65bd: $ec
	pop hl                                           ; $65be: $e1
	ld d, b                                          ; $65bf: $50
	ld a, $55                                        ; $65c0: $3e $55
	ld a, [hl-]                                      ; $65c2: $3a
	jr c, jr_08e_660a                                ; $65c3: $38 $45

	and b                                            ; $65c5: $a0
	ldh a, [rHDMA5]                                  ; $65c6: $f0 $55

jr_08e_65c8:
	ldh a, [rBCPS]                                   ; $65c8: $f0 $68
	ld c, h                                          ; $65ca: $4c
	xor b                                            ; $65cb: $a8
	ld l, a                                          ; $65cc: $6f
	ld c, e                                          ; $65cd: $4b
	db $ec                                           ; $65ce: $ec
	adc d                                            ; $65cf: $8a
	ld a, [hl-]                                      ; $65d0: $3a
	ld b, d                                          ; $65d1: $42
	ld b, l                                          ; $65d2: $45
	xor b                                            ; $65d3: $a8
	ld b, h                                          ; $65d4: $44
	inc a                                            ; $65d5: $3c
	ld d, b                                          ; $65d6: $50
	pop af                                           ; $65d7: $f1
	xor e                                            ; $65d8: $ab
	ld h, e                                          ; $65d9: $63
	ld a, [hl-]                                      ; $65da: $3a
	jr c, jr_08e_661f                                ; $65db: $38 $42

	and b                                            ; $65dd: $a0
	cpl                                              ; $65de: $2f
	ld b, e                                          ; $65df: $43
	xor $2d                                          ; $65e0: $ee $2d
	xor $2d                                          ; $65e2: $ee $2d
	xor b                                            ; $65e4: $a8
	ld c, d                                          ; $65e5: $4a

jr_08e_65e6:
	ld c, a                                          ; $65e6: $4f
	inc [hl]                                         ; $65e7: $34
	db $ec                                           ; $65e8: $ec
	pop hl                                           ; $65e9: $e1
	ld b, d                                          ; $65ea: $42
	adc d                                            ; $65eb: $8a
	pop af                                           ; $65ec: $f1
	dec l                                            ; $65ed: $2d
	ld h, d                                          ; $65ee: $62
	inc de                                           ; $65ef: $13
	ldh a, [$0c]                                     ; $65f0: $f0 $0c
	jr c, jr_08e_6633                                ; $65f2: $38 $3f

	ld l, h                                          ; $65f4: $6c
	dec a                                            ; $65f5: $3d
	jr c, jr_08e_6632                                ; $65f6: $38 $3a

	ld [hl], h                                       ; $65f8: $74
	ld c, b                                          ; $65f9: $48
	and b                                            ; $65fa: $a0
	ld e, [hl]                                       ; $65fb: $5e
	dec sp                                           ; $65fc: $3b
	inc [hl]                                         ; $65fd: $34
	ld b, b                                          ; $65fe: $40
	add hl, sp                                       ; $65ff: $39
	xor c                                            ; $6600: $a9
	db $eb                                           ; $6601: $eb
	ld e, c                                          ; $6602: $59
	inc a                                            ; $6603: $3c
	ld a, [hl-]                                      ; $6604: $3a
	ld c, b                                          ; $6605: $48
	and b                                            ; $6606: $a0
	cpl                                              ; $6607: $2f
	ld b, e                                          ; $6608: $43
	ld e, h                                          ; $6609: $5c

jr_08e_660a:
	dec sp                                           ; $660a: $3b
	ld c, c                                          ; $660b: $49
	inc [hl]                                         ; $660c: $34
	pop af                                           ; $660d: $f1
	xor d                                            ; $660e: $aa
	pop af                                           ; $660f: $f1
	sbc l                                            ; $6610: $9d
	ld b, d                                          ; $6611: $42
	ld b, l                                          ; $6612: $45
	add hl, sp                                       ; $6613: $39
	ld a, [hl-]                                      ; $6614: $3a

jr_08e_6615:
	xor h                                            ; $6615: $ac
	pop af                                           ; $6616: $f1
	xor e                                            ; $6617: $ab
	pop af                                           ; $6618: $f1
	dec l                                            ; $6619: $2d
	ld a, [hl-]                                      ; $661a: $3a
	ld b, c                                          ; $661b: $41
	ld b, h                                          ; $661c: $44
	ld e, a                                          ; $661d: $5f
	add hl, sp                                       ; $661e: $39

jr_08e_661f:
	ld a, [hl-]                                      ; $661f: $3a
	ld c, b                                          ; $6620: $48
	and b                                            ; $6621: $a0
	ld b, b                                          ; $6622: $40
	ld d, h                                          ; $6623: $54
	ld d, d                                          ; $6624: $52
	ld c, d                                          ; $6625: $4a
	inc [hl]                                         ; $6626: $34
	add d                                            ; $6627: $82
	ld h, e                                          ; $6628: $63
	ld c, l                                          ; $6629: $4d
	ld h, c                                          ; $662a: $61
	ld d, [hl]                                       ; $662b: $56
	inc de                                           ; $662c: $13
	ld a, $3c                                        ; $662d: $3e $3c
	dec a                                            ; $662f: $3d
	db $ec                                           ; $6630: $ec
	dec bc                                           ; $6631: $0b

jr_08e_6632:
	and b                                            ; $6632: $a0

jr_08e_6633:
	cpl                                              ; $6633: $2f
	ld b, e                                          ; $6634: $43
	db $ed                                           ; $6635: $ed
	ld d, l                                          ; $6636: $55
	xor b                                            ; $6637: $a8
	pop af                                           ; $6638: $f1
	xor e                                            ; $6639: $ab
	dec sp                                           ; $663a: $3b
	ccf                                              ; $663b: $3f
	ld d, l                                          ; $663c: $55
	ld c, l                                          ; $663d: $4d
	ld c, [hl]                                       ; $663e: $4e
	ld b, c                                          ; $663f: $41
	ld b, h                                          ; $6640: $44
	xor b                                            ; $6641: $a8
	ld [hl-], a                                      ; $6642: $32
	ld c, d                                          ; $6643: $4a
	ld c, a                                          ; $6644: $4f
	inc [hl]                                         ; $6645: $34
	ldh a, [$d2]                                     ; $6646: $f0 $d2
	ld d, e                                          ; $6648: $53
	ldh a, [c]                                       ; $6649: $f2
	ld bc, $3f3b                                     ; $664a: $01 $3b $3f
	ld c, [hl]                                       ; $664d: $4e
	sub a                                            ; $664e: $97
	and e                                            ; $664f: $a3

jr_08e_6650:
	cpl                                              ; $6650: $2f
	ld b, e                                          ; $6651: $43
	xor $10                                          ; $6652: $ee $10
	dec [hl]                                         ; $6654: $35
	rla                                              ; $6655: $17
	ld [hl-], a                                      ; $6656: $32
	ldh a, [rAUD1LOW]                                ; $6657: $f0 $13
	di                                               ; $6659: $f3
	sbc b                                            ; $665a: $98
	ldh a, [rIE]                                     ; $665b: $f0 $ff
	di                                               ; $665d: $f3
	sbc b                                            ; $665e: $98
	xor h                                            ; $665f: $ac
	add hl, sp                                       ; $6660: $39
	ld d, d                                          ; $6661: $52
	jr c, jr_08e_6650                                ; $6662: $38 $ec

	ret c                                            ; $6664: $d8

	inc a                                            ; $6665: $3c
	ld c, b                                          ; $6666: $48
	and e                                            ; $6667: $a3
	cpl                                              ; $6668: $2f
	ld b, b                                          ; $6669: $40
	ld a, $3f                                        ; $666a: $3e $3f
	inc [hl]                                         ; $666c: $34
	ld l, l                                          ; $666d: $6d
	ldh a, [rBGP]                                    ; $666e: $f0 $47
	ldh a, [$2a]                                     ; $6670: $f0 $2a
	ldh a, [$d7]                                     ; $6672: $f0 $d7
	and b                                            ; $6674: $a0
	ld e, b                                          ; $6675: $58
	ld b, [hl]                                       ; $6676: $46
	inc [hl]                                         ; $6677: $34
	db $ec                                           ; $6678: $ec
	or $5c                                           ; $6679: $f6 $5c
	dec a                                            ; $667b: $3d
	ld h, e                                          ; $667c: $63
	xor b                                            ; $667d: $a8
	ldh a, [$d6]                                     ; $667e: $f0 $d6
	ld c, e                                          ; $6680: $4b
	inc [hl]                                         ; $6681: $34
	ld d, h                                          ; $6682: $54
	ld c, l                                          ; $6683: $4d
	ld b, l                                          ; $6684: $45
	and b                                            ; $6685: $a0
	cpl                                              ; $6686: $2f
	ld b, e                                          ; $6687: $43
	xor $10                                          ; $6688: $ee $10
	dec [hl]                                         ; $668a: $35
	rla                                              ; $668b: $17
	ld [hl-], a                                      ; $668c: $32
	sbc h                                            ; $668d: $9c
	dec sp                                           ; $668e: $3b
	ld c, c                                          ; $668f: $49
	inc [hl]                                         ; $6690: $34
	pop af                                           ; $6691: $f1
	xor e                                            ; $6692: $ab
	jr c, jr_08e_6615                                ; $6693: $38 $80

	ldh a, [c]                                       ; $6695: $f2
	ld h, a                                          ; $6696: $67
	ld e, l                                          ; $6697: $5d
	ccf                                              ; $6698: $3f
	ld c, [hl]                                       ; $6699: $4e
	ld b, l                                          ; $669a: $45
	xor h                                            ; $669b: $ac
	ld l, e                                          ; $669c: $6b
	ld d, e                                          ; $669d: $53
	db $ec                                           ; $669e: $ec
	adc d                                            ; $669f: $8a
	ld a, [hl-]                                      ; $66a0: $3a
	ld b, c                                          ; $66a1: $41
	ld b, h                                          ; $66a2: $44
	inc a                                            ; $66a3: $3c
	ld c, b                                          ; $66a4: $48
	and e                                            ; $66a5: $a3
	cpl                                              ; $66a6: $2f
	ld b, e                                          ; $66a7: $43
	ld b, b                                          ; $66a8: $40
	add hl, sp                                       ; $66a9: $39
	ld b, h                                          ; $66aa: $44
	ld c, h                                          ; $66ab: $4c
	and b                                            ; $66ac: $a0
	cpl                                              ; $66ad: $2f
	jp hl                                            ; $66ae: $e9


	cp e                                             ; $66af: $bb
	xor h                                            ; $66b0: $ac
	ld [$6222], a                                    ; $66b1: $ea $22 $62
	inc de                                           ; $66b4: $13
	db $eb                                           ; $66b5: $eb
	adc a                                            ; $66b6: $8f
	and e                                            ; $66b7: $a3
	cpl                                              ; $66b8: $2f
	db $ec                                           ; $66b9: $ec
	pop hl                                           ; $66ba: $e1
	jp hl                                            ; $66bb: $e9


	cp b                                             ; $66bc: $b8
	add hl, bc                                       ; $66bd: $09
	cpl                                              ; $66be: $2f
	ld b, e                                          ; $66bf: $43
	db $ec                                           ; $66c0: $ec
	pop hl                                           ; $66c1: $e1
	xor h                                            ; $66c2: $ac
	ld [$7222], a                                    ; $66c3: $ea $22 $72
	ld b, a                                          ; $66c6: $47
	db $eb                                           ; $66c7: $eb
	ld e, h                                          ; $66c8: $5c
	and c                                            ; $66c9: $a1
	ld e, [hl]                                       ; $66ca: $5e
	dec sp                                           ; $66cb: $3b
	inc [hl]                                         ; $66cc: $34
	ld [$a922], a                                    ; $66cd: $ea $22 $a9
	db $ed                                           ; $66d0: $ed
	ld a, l                                          ; $66d1: $7d
	ldh a, [$32]                                     ; $66d2: $f0 $32
	ld h, l                                          ; $66d4: $65
	ld l, c                                          ; $66d5: $69
	ldh a, [rSC]                                     ; $66d6: $f0 $02
	ld a, l                                          ; $66d8: $7d
	sub e                                            ; $66d9: $93
	ld a, l                                          ; $66da: $7d
	ld [hl], e                                       ; $66db: $73
	ld l, c                                          ; $66dc: $69
	xor h                                            ; $66dd: $ac
	ld l, a                                          ; $66de: $6f
	ld c, e                                          ; $66df: $4b
	adc e                                            ; $66e0: $8b
	ld e, h                                          ; $66e1: $5c
	db $ec                                           ; $66e2: $ec
	ret c                                            ; $66e3: $d8

	ld h, e                                          ; $66e4: $63
	and b                                            ; $66e5: $a0
	cpl                                              ; $66e6: $2f
	jp hl                                            ; $66e7: $e9


	rst GetHLinHL                                          ; $66e8: $cf
	add hl, bc                                       ; $66e9: $09
	jr c, jr_08e_6724                                ; $66ea: $38 $38

	ld h, e                                          ; $66ec: $63
	xor b                                            ; $66ed: $a8
	ld e, e                                          ; $66ee: $5b
	ld d, [hl]                                       ; $66ef: $56
	ld b, [hl]                                       ; $66f0: $46
	inc [hl]                                         ; $66f1: $34
	ld h, a                                          ; $66f2: $67
	dec sp                                           ; $66f3: $3b
	ccf                                              ; $66f4: $3f
	rst SubAFromDE                                          ; $66f5: $df
	and b                                            ; $66f6: $a0
	cpl                                              ; $66f7: $2f
	jp hl                                            ; $66f8: $e9


	ret nc                                           ; $66f9: $d0

	add hl, bc                                       ; $66fa: $09
	cpl                                              ; $66fb: $2f
	add sp, $51                                      ; $66fc: $e8 $51
	add hl, bc                                       ; $66fe: $09
	ld b, b                                          ; $66ff: $40
	ld c, l                                          ; $6700: $4d
	ld e, e                                          ; $6701: $5b
	ld d, [hl]                                       ; $6702: $56
	xor h                                            ; $6703: $ac
	ld e, d                                          ; $6704: $5a
	ld d, h                                          ; $6705: $54
	ld b, a                                          ; $6706: $47
	db $ec                                           ; $6707: $ec
	rlca                                             ; $6708: $07
	and c                                            ; $6709: $a1
	cpl                                              ; $670a: $2f
	add sp, $0d                                      ; $670b: $e8 $0d
	add hl, bc                                       ; $670d: $09
	cpl                                              ; $670e: $2f
	add sp, $2b                                      ; $670f: $e8 $2b
	add hl, bc                                       ; $6711: $09
	cpl                                              ; $6712: $2f
	add sp, $52                                      ; $6713: $e8 $52
	add hl, bc                                       ; $6715: $09
	cpl                                              ; $6716: $2f
	add sp, -$76                                     ; $6717: $e8 $8a
	add hl, bc                                       ; $6719: $09
	cpl                                              ; $671a: $2f
	jp hl                                            ; $671b: $e9


	cp c                                             ; $671c: $b9
	add hl, bc                                       ; $671d: $09
	ld [$a80b], a                                    ; $671e: $ea $0b $a8
	jp hl                                            ; $6721: $e9


	ld b, h                                          ; $6722: $44
	and b                                            ; $6723: $a0

jr_08e_6724:
	ldh a, [c]                                       ; $6724: $f2
	jr jr_08e_679a                                   ; $6725: $18 $73

	ldh a, [$f2]                                     ; $6727: $f0 $f2
	db $ed                                           ; $6729: $ed
	add c                                            ; $672a: $81
	ldh a, [$8e]                                     ; $672b: $f0 $8e
	pop af                                           ; $672d: $f1
	ld c, l                                          ; $672e: $4d
	ld h, l                                          ; $672f: $65
	xor b                                            ; $6730: $a8
	ld d, c                                          ; $6731: $51
	ld [hl], b                                       ; $6732: $70
	ld d, l                                          ; $6733: $55
	inc [hl]                                         ; $6734: $34
	cp e                                             ; $6735: $bb
	ld h, e                                          ; $6736: $63
	ld c, h                                          ; $6737: $4c
	and b                                            ; $6738: $a0
	cpl                                              ; $6739: $2f
	add sp, $63                                      ; $673a: $e8 $63
	add hl, bc                                       ; $673c: $09
	ldh a, [$c3]                                     ; $673d: $f0 $c3
	ld e, c                                          ; $673f: $59
	db $ec                                           ; $6740: $ec
	ld b, l                                          ; $6741: $45
	xor b                                            ; $6742: $a8
	ld l, a                                          ; $6743: $6f
	ld c, a                                          ; $6744: $4f
	inc [hl]                                         ; $6745: $34
	ld b, b                                          ; $6746: $40
	add hl, sp                                       ; $6747: $39
	ld [hl], a                                       ; $6748: $77
	add hl, sp                                       ; $6749: $39
	ld h, e                                          ; $674a: $63
	and b                                            ; $674b: $a0
	cpl                                              ; $674c: $2f
	add sp, $43                                      ; $674d: $e8 $43
	and c                                            ; $674f: $a1
	ld b, b                                          ; $6750: $40
	add hl, sp                                       ; $6751: $39
	inc a                                            ; $6752: $3c
	ld c, a                                          ; $6753: $4f
	ld a, $4d                                        ; $6754: $3e $4d
	ld a, [hl-]                                      ; $6756: $3a
	jr c, jr_08e_67b6                                ; $6757: $38 $5d

	ld e, d                                          ; $6759: $5a
	xor h                                            ; $675a: $ac
	ld l, a                                          ; $675b: $6f
	ld c, e                                          ; $675c: $4b
	adc e                                            ; $675d: $8b
	ld e, h                                          ; $675e: $5c
	ld b, l                                          ; $675f: $45
	and b                                            ; $6760: $a0
	cpl                                              ; $6761: $2f
	jp hl                                            ; $6762: $e9


	ld h, b                                          ; $6763: $60
	add hl, bc                                       ; $6764: $09
	ldh a, [c]                                       ; $6765: $f2
	sub e                                            ; $6766: $93
	ldh a, [$f0]                                     ; $6767: $f0 $f0
	inc [hl]                                         ; $6769: $34
	di                                               ; $676a: $f3
	ld [bc], a                                       ; $676b: $02
	pop af                                           ; $676c: $f1
	ld [$423a], a                                    ; $676d: $ea $3a $42
	ld c, h                                          ; $6770: $4c
	and b                                            ; $6771: $a0
	ldh a, [$8e]                                     ; $6772: $f0 $8e
	ldh a, [$c4]                                     ; $6774: $f0 $c4
	ld e, c                                          ; $6776: $59
	ldh a, [$03]                                     ; $6777: $f0 $03
	db $ed                                           ; $6779: $ed
	add c                                            ; $677a: $81
	ldh a, [$50]                                     ; $677b: $f0 $50
	ld [hl], e                                       ; $677d: $73
	ldh a, [$32]                                     ; $677e: $f0 $32
	xor b                                            ; $6780: $a8
	db $ed                                           ; $6781: $ed
	ld l, a                                          ; $6782: $6f
	ld h, c                                          ; $6783: $61
	db $ec                                           ; $6784: $ec
	cp c                                             ; $6785: $b9
	ld h, e                                          ; $6786: $63
	ld c, h                                          ; $6787: $4c
	and b                                            ; $6788: $a0
	cpl                                              ; $6789: $2f
	xor $1e                                          ; $678a: $ee $1e
	pop af                                           ; $678c: $f1
	ld a, a                                          ; $678d: $7f
	ld h, d                                          ; $678e: $62
	ld e, h                                          ; $678f: $5c
	ld c, [hl]                                       ; $6790: $4e
	ldh a, [$78]                                     ; $6791: $f0 $78
	ldh a, [$f4]                                     ; $6793: $f0 $f4
	ld d, e                                          ; $6795: $53
	dec a                                            ; $6796: $3d
	ld d, d                                          ; $6797: $52
	ld d, b                                          ; $6798: $50
	ld a, [hl-]                                      ; $6799: $3a

jr_08e_679a:
	jr c, jr_08e_67a5                                ; $679a: $38 $09

	ld b, b                                          ; $679c: $40
	ld c, l                                          ; $679d: $4d
	ld b, l                                          ; $679e: $45
	xor b                                            ; $679f: $a8
	db $ec                                           ; $67a0: $ec
	reti                                             ; $67a1: $d9


	ld b, b                                          ; $67a2: $40
	ld c, l                                          ; $67a3: $4d
	ld b, l                                          ; $67a4: $45

jr_08e_67a5:
	ld c, h                                          ; $67a5: $4c
	and b                                            ; $67a6: $a0
	cpl                                              ; $67a7: $2f
	ld h, c                                          ; $67a8: $61
	dec sp                                           ; $67a9: $3b
	ld c, c                                          ; $67aa: $49
	ld c, a                                          ; $67ab: $4f
	add hl, bc                                       ; $67ac: $09
	ld b, b                                          ; $67ad: $40
	add hl, sp                                       ; $67ae: $39
	inc [hl]                                         ; $67af: $34
	ldh a, [$64]                                     ; $67b0: $f0 $64
	jr c, jr_08e_67ee                                ; $67b2: $38 $3a

	ld b, d                                          ; $67b4: $42
	ld c, h                                          ; $67b5: $4c

jr_08e_67b6:
	and b                                            ; $67b6: $a0
	cpl                                              ; $67b7: $2f
	sbc h                                            ; $67b8: $9c
	dec sp                                           ; $67b9: $3b
	ld c, c                                          ; $67ba: $49
	ldh a, [rAUD3LEVEL]                              ; $67bb: $f0 $1c
	ld h, d                                          ; $67bd: $62
	add b                                            ; $67be: $80
	ldh a, [$fe]                                     ; $67bf: $f0 $fe
	dec sp                                           ; $67c1: $3b
	ccf                                              ; $67c2: $3f
	dec a                                            ; $67c3: $3d
	inc a                                            ; $67c4: $3c
	ld d, b                                          ; $67c5: $50
	ld c, b                                          ; $67c6: $48
	add hl, bc                                       ; $67c7: $09
	ld e, [hl]                                       ; $67c8: $5e
	dec sp                                           ; $67c9: $3b
	inc [hl]                                         ; $67ca: $34
	ldh a, [rAUD3LEVEL]                              ; $67cb: $f0 $1c
	ld h, d                                          ; $67cd: $62
	xor c                                            ; $67ce: $a9
	ld a, [hl-]                                      ; $67cf: $3a
	ld b, c                                          ; $67d0: $41
	ld b, h                                          ; $67d1: $44
	xor h                                            ; $67d2: $ac
	ldh a, [$c0]                                     ; $67d3: $f0 $c0
	ldh a, [$f0]                                     ; $67d5: $f0 $f0
	ld c, c                                          ; $67d7: $49
	di                                               ; $67d8: $f3
	ld [bc], a                                       ; $67d9: $02
	pop af                                           ; $67da: $f1
	ld [$423a], a                                    ; $67db: $ea $3a $42
	ld c, h                                          ; $67de: $4c
	and b                                            ; $67df: $a0
	ld [$a80b], a                                    ; $67e0: $ea $0b $a8
	ld e, b                                          ; $67e3: $58
	ld b, [hl]                                       ; $67e4: $46
	inc [hl]                                         ; $67e5: $34
	sub [hl]                                         ; $67e6: $96
	ld d, a                                          ; $67e7: $57
	ld d, d                                          ; $67e8: $52
	ld a, $66                                        ; $67e9: $3e $66
	add hl, sp                                       ; $67eb: $39
	and b                                            ; $67ec: $a0
	ld h, e                                          ; $67ed: $63

jr_08e_67ee:
	ld d, a                                          ; $67ee: $57
	ld c, c                                          ; $67ef: $49
	ldh a, [$71]                                     ; $67f0: $f0 $71
	inc a                                            ; $67f2: $3c
	dec sp                                           ; $67f3: $3b
	ldh [$a0], a                                     ; $67f4: $e0 $a0
	cpl                                              ; $67f6: $2f
	add sp, $15                                      ; $67f7: $e8 $15
	add hl, bc                                       ; $67f9: $09
	ld e, [hl]                                       ; $67fa: $5e
	ld e, c                                          ; $67fb: $59
	dec sp                                           ; $67fc: $3b
	xor h                                            ; $67fd: $ac
	ld b, b                                          ; $67fe: $40
	ld b, c                                          ; $67ff: $41
	ld a, [hl-]                                      ; $6800: $3a
	ldh a, [$7b]                                     ; $6801: $f0 $7b
	ldh a, [rP1]                                     ; $6803: $f0 $00
	ldh a, [$8e]                                     ; $6805: $f0 $8e
	inc [hl]                                         ; $6807: $34
	ld b, l                                          ; $6808: $45
	ld d, l                                          ; $6809: $55
	add d                                            ; $680a: $82
	ld e, [hl]                                       ; $680b: $5e
	ld c, [hl]                                       ; $680c: $4e
	ld h, e                                          ; $680d: $63
	ld c, h                                          ; $680e: $4c
	dec [hl]                                         ; $680f: $35
	inc hl                                           ; $6810: $23
	inc de                                           ; $6811: $13
	ld c, d                                          ; $6812: $4a
	ld c, a                                          ; $6813: $4f
	inc [hl]                                         ; $6814: $34
	ld b, [hl]                                       ; $6815: $46
	ld a, [hl-]                                      ; $6816: $3a
	dec a                                            ; $6817: $3d
	ld d, e                                          ; $6818: $53
	jr c, jr_08e_685a                                ; $6819: $38 $3f

	ld d, l                                          ; $681b: $55
	ld c, l                                          ; $681c: $4d
	ccf                                              ; $681d: $3f
	xor h                                            ; $681e: $ac
	db $ec                                           ; $681f: $ec
	cp c                                             ; $6820: $b9
	ld h, e                                          ; $6821: $63
	and b                                            ; $6822: $a0
	cpl                                              ; $6823: $2f
	add sp, $35                                      ; $6824: $e8 $35
	and c                                            ; $6826: $a1
	ld e, [hl]                                       ; $6827: $5e
	ld e, c                                          ; $6828: $59
	dec sp                                           ; $6829: $3b
	inc [hl]                                         ; $682a: $34
	db $ec                                           ; $682b: $ec
	ld d, $a9                                        ; $682c: $16 $a9
	ld c, d                                          ; $682e: $4a
	ld c, a                                          ; $682f: $4f
	inc [hl]                                         ; $6830: $34
	ld h, h                                          ; $6831: $64
	inc a                                            ; $6832: $3c
	ld a, $38                                        ; $6833: $3e $38
	ld c, e                                          ; $6835: $4b
	inc de                                           ; $6836: $13
	ld a, [hl-]                                      ; $6837: $3a
	jr c, jr_08e_687b                                ; $6838: $38 $41

	db $ec                                           ; $683a: $ec
	ret c                                            ; $683b: $d8

	and b                                            ; $683c: $a0
	cpl                                              ; $683d: $2f
	jp hl                                            ; $683e: $e9


	ld a, e                                          ; $683f: $7b
	add hl, bc                                       ; $6840: $09
	ld a, l                                          ; $6841: $7d
	pop af                                           ; $6842: $f1
	ld b, b                                          ; $6843: $40
	add e                                            ; $6844: $83
	xor b                                            ; $6845: $a8
	ldh a, [$c0]                                     ; $6846: $f0 $c0
	ldh a, [$f0]                                     ; $6848: $f0 $f0
	ld c, c                                          ; $684a: $49
	db $d3                                           ; $684b: $d3
	dec [hl]                                         ; $684c: $35
	inc hl                                           ; $684d: $23
	inc de                                           ; $684e: $13
	add h                                            ; $684f: $84
	ld b, a                                          ; $6850: $47
	ld c, e                                          ; $6851: $4b
	add d                                            ; $6852: $82
	ld h, e                                          ; $6853: $63
	ld c, l                                          ; $6854: $4d
	ld a, [hl-]                                      ; $6855: $3a
	jr c, @+$43                                      ; $6856: $38 $41

	ld b, h                                          ; $6858: $44
	ld e, l                                          ; $6859: $5d

jr_08e_685a:
	ld e, d                                          ; $685a: $5a
	ld c, h                                          ; $685b: $4c
	and b                                            ; $685c: $a0
	ld a, l                                          ; $685d: $7d
	ld [hl], e                                       ; $685e: $73
	ldh a, [$f2]                                     ; $685f: $f0 $f2
	db $ed                                           ; $6861: $ed
	add c                                            ; $6862: $81
	inc de                                           ; $6863: $13
	ld [$3a40], a                                    ; $6864: $ea $40 $3a
	xor h                                            ; $6867: $ac
	db $ec                                           ; $6868: $ec
	inc sp                                           ; $6869: $33
	ld b, h                                          ; $686a: $44
	dec sp                                           ; $686b: $3b
	ldh [$a0], a                                     ; $686c: $e0 $a0
	cpl                                              ; $686e: $2f
	sbc $38                                          ; $686f: $de $38
	ld c, [hl]                                       ; $6871: $4e
	ld l, h                                          ; $6872: $6c
	dec a                                            ; $6873: $3d
	jr c, jr_08e_68ba                                ; $6874: $38 $44

	dec sp                                           ; $6876: $3b
	dec a                                            ; $6877: $3d
	ld c, h                                          ; $6878: $4c
	add hl, bc                                       ; $6879: $09
	ld b, [hl]                                       ; $687a: $46

jr_08e_687b:
	ld b, [hl]                                       ; $687b: $46
	add d                                            ; $687c: $82
	add hl, sp                                       ; $687d: $39
	ld b, d                                          ; $687e: $42
	inc [hl]                                         ; $687f: $34
	ldh a, [$3d]                                     ; $6880: $f0 $3d
	ld e, c                                          ; $6882: $59
	ld l, c                                          ; $6883: $69
	ld b, a                                          ; $6884: $47
	inc de                                           ; $6885: $13
	pop af                                           ; $6886: $f1
	sbc l                                            ; $6887: $9d
	dec sp                                           ; $6888: $3b
	ccf                                              ; $6889: $3f
	ld l, h                                          ; $688a: $6c
	dec a                                            ; $688b: $3d
	jr c, jr_08e_68f1                                ; $688c: $38 $63

	ld c, h                                          ; $688e: $4c
	and b                                            ; $688f: $a0
	cpl                                              ; $6890: $2f
	ld e, [hl]                                       ; $6891: $5e
	dec sp                                           ; $6892: $3b
	ld [hl], $f0                                     ; $6893: $36 $f0
	inc e                                            ; $6895: $1c
	ld h, d                                          ; $6896: $62

jr_08e_6897:
	add b                                            ; $6897: $80
	ldh a, [$fe]                                     ; $6898: $f0 $fe
	dec sp                                           ; $689a: $3b
	ccf                                              ; $689b: $3f
	dec a                                            ; $689c: $3d
	inc a                                            ; $689d: $3c
	ld d, b                                          ; $689e: $50
	ld c, b                                          ; $689f: $48
	add hl, bc                                       ; $68a0: $09
	ld e, [hl]                                       ; $68a1: $5e
	dec sp                                           ; $68a2: $3b
	xor c                                            ; $68a3: $a9
	db $ec                                           ; $68a4: $ec
	dec hl                                           ; $68a5: $2b
	db $ed                                           ; $68a6: $ed
	ld c, c                                          ; $68a7: $49
	ld b, h                                          ; $68a8: $44
	dec sp                                           ; $68a9: $3b
	dec a                                            ; $68aa: $3d
	ld b, d                                          ; $68ab: $42
	ld b, a                                          ; $68ac: $47
	inc de                                           ; $68ad: $13
	ld [hl], d                                       ; $68ae: $72
	ld a, [hl-]                                      ; $68af: $3a
	inc a                                            ; $68b0: $3c
	dec sp                                           ; $68b1: $3b
	dec a                                            ; $68b2: $3d
	ld b, d                                          ; $68b3: $42
	and c                                            ; $68b4: $a1
	cpl                                              ; $68b5: $2f
	rst JumpTable                                          ; $68b6: $c7
	ld b, h                                          ; $68b7: $44
	dec sp                                           ; $68b8: $3b
	dec a                                            ; $68b9: $3d

jr_08e_68ba:
	ld c, h                                          ; $68ba: $4c
	add hl, bc                                       ; $68bb: $09
	sbc $72                                          ; $68bc: $de $72
	ccf                                              ; $68be: $3f
	dec a                                            ; $68bf: $3d
	ld b, d                                          ; $68c0: $42
	xor c                                            ; $68c1: $a9
	ld l, e                                          ; $68c2: $6b
	ld b, h                                          ; $68c3: $44
	inc a                                            ; $68c4: $3c
	pop af                                           ; $68c5: $f1
	ld hl, sp+$3e                                    ; $68c6: $f8 $3e
	jr c, jr_08e_692d                                ; $68c8: $38 $63

	ld c, h                                          ; $68ca: $4c
	and b                                            ; $68cb: $a0
	ld e, b                                          ; $68cc: $58
	ld b, [hl]                                       ; $68cd: $46
	xor h                                            ; $68ce: $ac
	ld e, e                                          ; $68cf: $5b
	ld d, [hl]                                       ; $68d0: $56
	ld b, [hl]                                       ; $68d1: $46
	ld [$a0ea], a                                    ; $68d2: $ea $ea $a0
	jr c, jr_08e_690f                                ; $68d5: $38 $38

	pop af                                           ; $68d7: $f1
	db $eb                                           ; $68d8: $eb
	ld [hl], c                                       ; $68d9: $71
	ld b, h                                          ; $68da: $44
	dec sp                                           ; $68db: $3b
	ldh [$a0], a                                     ; $68dc: $e0 $a0
	cpl                                              ; $68de: $2f
	add sp, -$6c                                     ; $68df: $e8 $94
	add hl, bc                                       ; $68e1: $09
	ld c, h                                          ; $68e2: $4c
	add l                                            ; $68e3: $85
	inc [hl]                                         ; $68e4: $34
	sbc $13                                          ; $68e5: $de $13
	db $ed                                           ; $68e7: $ed
	ld c, c                                          ; $68e8: $49
	ld b, h                                          ; $68e9: $44
	dec sp                                           ; $68ea: $3b
	ldh [$a0], a                                     ; $68eb: $e0 $a0
	cpl                                              ; $68ed: $2f
	jp hl                                            ; $68ee: $e9


	ret nz                                           ; $68ef: $c0

	add hl, bc                                       ; $68f0: $09

jr_08e_68f1:
	ld l, a                                          ; $68f1: $6f
	ld c, c                                          ; $68f2: $49
	jr c, jr_08e_6943                                ; $68f3: $38 $4e

	ld b, d                                          ; $68f5: $42
	ld d, e                                          ; $68f6: $53
	xor h                                            ; $68f7: $ac
	ldh a, [c]                                       ; $68f8: $f2
	cp h                                             ; $68f9: $bc
	ld a, [$3af1]                                    ; $68fa: $fa $f1 $3a
	ld b, d                                          ; $68fd: $42
	and c                                            ; $68fe: $a1
	cpl                                              ; $68ff: $2f
	db $ec                                           ; $6900: $ec
	pop hl                                           ; $6901: $e1
	ld b, d                                          ; $6902: $42
	ldh a, [$d2]                                     ; $6903: $f0 $d2
	ld h, d                                          ; $6905: $62
	ld [hl], d                                       ; $6906: $72
	ccf                                              ; $6907: $3f
	dec a                                            ; $6908: $3d
	inc a                                            ; $6909: $3c
	ld d, b                                          ; $690a: $50
	ld c, b                                          ; $690b: $48
	add hl, bc                                       ; $690c: $09
	ld e, [hl]                                       ; $690d: $5e
	dec sp                                           ; $690e: $3b

jr_08e_690f:
	xor c                                            ; $690f: $a9
	ld b, b                                          ; $6910: $40
	ld b, c                                          ; $6911: $41
	ld a, [hl-]                                      ; $6912: $3a
	ld b, d                                          ; $6913: $42
	inc [hl]                                         ; $6914: $34
	jr c, jr_08e_6897                                ; $6915: $38 $80

	ld c, d                                          ; $6917: $4a
	ld c, a                                          ; $6918: $4f
	inc de                                           ; $6919: $13
	ld [hl], d                                       ; $691a: $72
	ld c, l                                          ; $691b: $4d
	ld c, [hl]                                       ; $691c: $4e
	db $ec                                           ; $691d: $ec
	ret c                                            ; $691e: $d8

	and b                                            ; $691f: $a0
	xor $1e                                          ; $6920: $ee $1e
	ld [$ace8], a                                    ; $6922: $ea $e8 $ac
	ldh a, [c]                                       ; $6925: $f2
	ld l, d                                          ; $6926: $6a
	ld c, l                                          ; $6927: $4d
	ldh [$a0], a                                     ; $6928: $e0 $a0
	cpl                                              ; $692a: $2f
	db $ec                                           ; $692b: $ec
	pop hl                                           ; $692c: $e1

jr_08e_692d:
	ld c, c                                          ; $692d: $49
	xor $06                                          ; $692e: $ee $06
	ld b, h                                          ; $6930: $44
	inc a                                            ; $6931: $3c
	ld d, b                                          ; $6932: $50
	pop af                                           ; $6933: $f1
	ld l, c                                          ; $6934: $69
	ld a, a                                          ; $6935: $7f
	ld e, b                                          ; $6936: $58
	add hl, bc                                       ; $6937: $09
	db $eb                                           ; $6938: $eb
	ld e, l                                          ; $6939: $5d
	inc [hl]                                         ; $693a: $34
	ld b, [hl]                                       ; $693b: $46
	ld d, a                                          ; $693c: $57
	ld d, e                                          ; $693d: $53
	ld c, c                                          ; $693e: $49
	add hl, sp                                       ; $693f: $39
	xor b                                            ; $6940: $a8
	ld b, b                                          ; $6941: $40
	ld b, c                                          ; $6942: $41

jr_08e_6943:
	ld a, [hl-]                                      ; $6943: $3a
	ld b, a                                          ; $6944: $47
	ldh a, [$71]                                     ; $6945: $f0 $71
	jr c, jr_08e_6992                                ; $6947: $38 $49

	ld c, a                                          ; $6949: $4f
	inc de                                           ; $694a: $13
	ld [hl], a                                       ; $694b: $77

jr_08e_694c:
	ld e, [hl]                                       ; $694c: $5e
	ld a, [hl-]                                      ; $694d: $3a
	inc a                                            ; $694e: $3c
	dec sp                                           ; $694f: $3b
	dec a                                            ; $6950: $3d
	ld e, l                                          ; $6951: $5d
	ld e, d                                          ; $6952: $5a
	ld c, h                                          ; $6953: $4c
	and b                                            ; $6954: $a0
	cpl                                              ; $6955: $2f
	db $ed                                           ; $6956: $ed
	ld [hl], d                                       ; $6957: $72
	ldh a, [$71]                                     ; $6958: $f0 $71
	jr c, jr_08e_694c                                ; $695a: $38 $f0

	ld b, b                                          ; $695c: $40
	ld d, a                                          ; $695d: $57
	ldh a, [$2c]                                     ; $695e: $f0 $2c
	ld b, h                                          ; $6960: $44
	ld c, h                                          ; $6961: $4c
	add hl, bc                                       ; $6962: $09

jr_08e_6963:
	ld b, b                                          ; $6963: $40
	ld c, l                                          ; $6964: $4d
	ld c, e                                          ; $6965: $4b
	inc [hl]                                         ; $6966: $34
	ld h, h                                          ; $6967: $64
	ld h, h                                          ; $6968: $64
	ldh a, [rSB]                                     ; $6969: $f0 $01
	ld e, b                                          ; $696b: $58
	ld c, h                                          ; $696c: $4c
	xor b                                            ; $696d: $a8
	ld b, b                                          ; $696e: $40
	ld b, c                                          ; $696f: $41
	ld a, [hl-]                                      ; $6970: $3a
	pop af                                           ; $6971: $f1
	dec bc                                           ; $6972: $0b
	inc [hl]                                         ; $6973: $34
	ld a, [hl-]                                      ; $6974: $3a
	jr c, jr_08e_6963                                ; $6975: $38 $ec

	ret c                                            ; $6977: $d8

	and b                                            ; $6978: $a0
	cpl                                              ; $6979: $2f
	db $ed                                           ; $697a: $ed
	ld e, [hl]                                       ; $697b: $5e
	ld a, a                                          ; $697c: $7f
	ldh a, [$9a]                                     ; $697d: $f0 $9a
	inc a                                            ; $697f: $3c
	ld a, [hl-]                                      ; $6980: $3a
	inc a                                            ; $6981: $3c
	dec sp                                           ; $6982: $3b
	dec a                                            ; $6983: $3d
	ld b, l                                          ; $6984: $45
	add hl, bc                                       ; $6985: $09
	pop de                                           ; $6986: $d1
	xor h                                            ; $6987: $ac
	ldh a, [$d4]                                     ; $6988: $f0 $d4
	ldh a, [c]                                       ; $698a: $f2
	inc hl                                           ; $698b: $23
	ld d, e                                          ; $698c: $53
	ld hl, sp-$48                                    ; $698d: $f8 $b8
	jr c, jr_08e_69d3                                ; $698f: $38 $42

	ld c, h                                          ; $6991: $4c

jr_08e_6992:
	and b                                            ; $6992: $a0
	ld b, [hl]                                       ; $6993: $46
	ld c, l                                          ; $6994: $4d
	inc [hl]                                         ; $6995: $34

jr_08e_6996:
	ldh a, [$71]                                     ; $6996: $f0 $71
	ld b, b                                          ; $6998: $40
	add hl, sp                                       ; $6999: $39
	ld b, h                                          ; $699a: $44
	ld e, l                                          ; $699b: $5d
	ld e, d                                          ; $699c: $5a
	xor h                                            ; $699d: $ac
	ldh a, [rLCDC]                                   ; $699e: $f0 $40
	dec sp                                           ; $69a0: $3b
	ccf                                              ; $69a1: $3f
	ld l, h                                          ; $69a2: $6c
	ld d, d                                          ; $69a3: $52
	ld a, $66                                        ; $69a4: $3e $66
	add hl, sp                                       ; $69a6: $39
	inc a                                            ; $69a7: $3c
	and c                                            ; $69a8: $a1
	cpl                                              ; $69a9: $2f
	ld b, e                                          ; $69aa: $43
	db $dd                                           ; $69ab: $dd
	ldh a, [rLCDC]                                   ; $69ac: $f0 $40
	ld e, a                                          ; $69ae: $5f
	add hl, sp                                       ; $69af: $39
	and b                                            ; $69b0: $a0
	ld d, c                                          ; $69b1: $51
	inc [hl]                                         ; $69b2: $34
	ld d, c                                          ; $69b3: $51
	ld [hl], b                                       ; $69b4: $70
	ld d, l                                          ; $69b5: $55
	inc de                                           ; $69b6: $13
	add e                                            ; $69b7: $83
	ldh a, [rP1]                                     ; $69b8: $f0 $00
	ldh a, [$03]                                     ; $69ba: $f0 $03
	ld b, [hl]                                       ; $69bc: $46
	dec sp                                           ; $69bd: $3b
	ldh [$a0], a                                     ; $69be: $e0 $a0
	cpl                                              ; $69c0: $2f
	ld c, d                                          ; $69c1: $4a
	ld c, a                                          ; $69c2: $4f
	inc [hl]                                         ; $69c3: $34
	cp e                                             ; $69c4: $bb
	ld c, h                                          ; $69c5: $4c
	add hl, bc                                       ; $69c6: $09
	db $ec                                           ; $69c7: $ec
	ld b, l                                          ; $69c8: $45
	xor b                                            ; $69c9: $a8
	ld l, a                                          ; $69ca: $6f
	ld c, a                                          ; $69cb: $4f
	ld b, b                                          ; $69cc: $40
	add hl, sp                                       ; $69cd: $39
	ld [hl], a                                       ; $69ce: $77
	add hl, sp                                       ; $69cf: $39
	ld h, e                                          ; $69d0: $63
	xor b                                            ; $69d1: $a8
	ld c, h                                          ; $69d2: $4c

jr_08e_69d3:
	add l                                            ; $69d3: $85
	inc [hl]                                         ; $69d4: $34
	ld c, a                                          ; $69d5: $4f
	add hl, sp                                       ; $69d6: $39
	ld l, l                                          ; $69d7: $6d
	ldh a, [$d3]                                     ; $69d8: $f0 $d3
	ld [$3cea], a                                    ; $69da: $ea $ea $3c
	and c                                            ; $69dd: $a1
	cpl                                              ; $69de: $2f
	add sp, $1a                                      ; $69df: $e8 $1a
	add hl, bc                                       ; $69e1: $09
	ld c, h                                          ; $69e2: $4c
	add l                                            ; $69e3: $85
	inc [hl]                                         ; $69e4: $34
	ld c, a                                          ; $69e5: $4f
	ld a, $3c                                        ; $69e6: $3e $3c
	ld a, $3f                                        ; $69e8: $3e $3f
	xor h                                            ; $69ea: $ac
	ld a, a                                          ; $69eb: $7f
	ld h, d                                          ; $69ec: $62
	ldh a, [rHDMA5]                                  ; $69ed: $f0 $55
	dec sp                                           ; $69ef: $3b
	ccf                                              ; $69f0: $3f
	dec a                                            ; $69f1: $3d
	ld d, a                                          ; $69f2: $57
	ld a, $3f                                        ; $69f3: $3e $3f
	xor c                                            ; $69f5: $a9
	pop af                                           ; $69f6: $f1
	ldh [c], a                                       ; $69f7: $e2
	ld e, l                                          ; $69f8: $5d
	ld a, [hl-]                                      ; $69f9: $3a
	jr c, @+$43                                      ; $69fa: $38 $41

	ld b, h                                          ; $69fc: $44
	inc a                                            ; $69fd: $3c
	ld d, b                                          ; $69fe: $50
	and b                                            ; $69ff: $a0
	cpl                                              ; $6a00: $2f
	add sp, $1d                                      ; $6a01: $e8 $1d
	add hl, bc                                       ; $6a03: $09
	pop af                                           ; $6a04: $f1
	dec l                                            ; $6a05: $2d
	ld d, e                                          ; $6a06: $53
	db $f4                                           ; $6a07: $f4
	add a                                            ; $6a08: $87
	ld e, [hl]                                       ; $6a09: $5e
	ccf                                              ; $6a0a: $3f
	ld c, [hl]                                       ; $6a0b: $4e
	ld e, l                                          ; $6a0c: $5d
	ld e, d                                          ; $6a0d: $5a
	xor h                                            ; $6a0e: $ac
	db $ed                                           ; $6a0f: $ed
	ld b, c                                          ; $6a10: $41
	ld a, [hl-]                                      ; $6a11: $3a
	ld b, d                                          ; $6a12: $42
	and c                                            ; $6a13: $a1
	jr c, jr_08e_6996                                ; $6a14: $38 $80

	inc [hl]                                         ; $6a16: $34
	ldh a, [rLCDC]                                   ; $6a17: $f0 $40
	dec sp                                           ; $6a19: $3b
	ccf                                              ; $6a1a: $3f
	ld c, a                                          ; $6a1b: $4f
	xor b                                            ; $6a1c: $a8
	ld d, c                                          ; $6a1d: $51
	ld [hl], b                                       ; $6a1e: $70
	jr c, jr_08e_6a84                                ; $6a1f: $38 $63

	ld c, h                                          ; $6a21: $4c
	and b                                            ; $6a22: $a0
	cpl                                              ; $6a23: $2f
	ld b, [hl]                                       ; $6a24: $46
	ld e, c                                          ; $6a25: $59
	dec sp                                           ; $6a26: $3b
	inc [hl]                                         ; $6a27: $34
	ld d, d                                          ; $6a28: $52
	ld b, h                                          ; $6a29: $44
	ld e, d                                          ; $6a2a: $5a
	ld e, h                                          ; $6a2b: $5c
	ld e, d                                          ; $6a2c: $5a
	ld e, h                                          ; $6a2d: $5c
	ld a, $3f                                        ; $6a2e: $3e $3f
	ld c, [hl]                                       ; $6a30: $4e
	ld b, l                                          ; $6a31: $45
	add hl, bc                                       ; $6a32: $09
	adc b                                            ; $6a33: $88
	sub c                                            ; $6a34: $91
	xor h                                            ; $6a35: $ac
	ldh a, [$32]                                     ; $6a36: $f0 $32
	ldh a, [$2f]                                     ; $6a38: $f0 $2f
	ldh a, [$32]                                     ; $6a3a: $f0 $32
	ldh a, [$2f]                                     ; $6a3c: $f0 $2f

jr_08e_6a3e:
	db $eb                                           ; $6a3e: $eb
	ld d, [hl]                                       ; $6a3f: $56
	xor b                                            ; $6a40: $a8
	ld c, d                                          ; $6a41: $4a
	ld c, a                                          ; $6a42: $4f
	inc [hl]                                         ; $6a43: $34
	ld c, a                                          ; $6a44: $4f
	add hl, sp                                       ; $6a45: $39
	ld l, l                                          ; $6a46: $6d
	ldh a, [$d3]                                     ; $6a47: $f0 $d3
	inc de                                           ; $6a49: $13
	ldh a, [rLCDC]                                   ; $6a4a: $f0 $40
	ld d, a                                          ; $6a4c: $57
	dec a                                            ; $6a4d: $3d
	jr c, jr_08e_6ab3                                ; $6a4e: $38 $63

	ld c, h                                          ; $6a50: $4c
	and b                                            ; $6a51: $a0
	cpl                                              ; $6a52: $2f
	add hl, sp                                       ; $6a53: $39
	dec sp                                           ; $6a54: $3b
	inc [hl]                                         ; $6a55: $34
	db $ed                                           ; $6a56: $ed
	ld l, a                                          ; $6a57: $6f
	ld h, c                                          ; $6a58: $61
	ldh a, [$5c]                                     ; $6a59: $f0 $5c
	jr c, @+$4a                                      ; $6a5b: $38 $48

	add hl, bc                                       ; $6a5d: $09
	ld b, [hl]                                       ; $6a5e: $46
	dec sp                                           ; $6a5f: $3b
	inc [hl]                                         ; $6a60: $34
	add a                                            ; $6a61: $87
	ldh a, [$5b]                                     ; $6a62: $f0 $5b
	ldh a, [$5e]                                     ; $6a64: $f0 $5e
	xor c                                            ; $6a66: $a9
	ld h, e                                          ; $6a67: $63
	ld d, a                                          ; $6a68: $57
	ld c, c                                          ; $6a69: $49
	ld b, h                                          ; $6a6a: $44
	ld d, b                                          ; $6a6b: $50
	ld a, $3a                                        ; $6a6c: $3e $3a
	jr c, jr_08e_6ab2                                ; $6a6e: $38 $42

	ld c, h                                          ; $6a70: $4c
	and b                                            ; $6a71: $a0
	cpl                                              ; $6a72: $2f
	ldh a, [rAUD3LEVEL]                              ; $6a73: $f0 $1c
	ld d, e                                          ; $6a75: $53
	inc [hl]                                         ; $6a76: $34
	di                                               ; $6a77: $f3
	ld b, l                                          ; $6a78: $45
	dec sp                                           ; $6a79: $3b
	ld h, c                                          ; $6a7a: $61
	ld d, [hl]                                       ; $6a7b: $56
	dec sp                                           ; $6a7c: $3b
	dec a                                            ; $6a7d: $3d
	add hl, bc                                       ; $6a7e: $09
	ld l, a                                          ; $6a7f: $6f
	ld c, a                                          ; $6a80: $4f
	inc [hl]                                         ; $6a81: $34
	ret                                              ; $6a82: $c9


	inc de                                           ; $6a83: $13

jr_08e_6a84:
	ldh a, [rSCY]                                    ; $6a84: $f0 $42
	ld d, b                                          ; $6a86: $50
	add b                                            ; $6a87: $80
	ld d, l                                          ; $6a88: $55
	ld h, e                                          ; $6a89: $63
	and b                                            ; $6a8a: $a0
	ldh a, [$5a]                                     ; $6a8b: $f0 $5a
	add l                                            ; $6a8d: $85
	ldh a, [rAUD4ENV]                                ; $6a8e: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6a90: $f0 $23
	call c, $c9a8                                    ; $6a92: $dc $a8 $c9
	inc [hl]                                         ; $6a95: $34
	sub [hl]                                         ; $6a96: $96
	dec sp                                           ; $6a97: $3b
	ccf                                              ; $6a98: $3f
	ld l, h                                          ; $6a99: $6c
	ld a, [hl-]                                      ; $6a9a: $3a
	jr c, jr_08e_6a3e                                ; $6a9b: $38 $a1

	ld a, l                                          ; $6a9d: $7d
	pop af                                           ; $6a9e: $f1
	db $e3                                           ; $6a9f: $e3
	ld e, c                                          ; $6aa0: $59
	xor h                                            ; $6aa1: $ac
	ldh a, [rP1]                                     ; $6aa2: $f0 $00
	ldh a, [$3d]                                     ; $6aa4: $f0 $3d
	ldh a, [$03]                                     ; $6aa6: $f0 $03
	ld b, h                                          ; $6aa8: $44
	dec sp                                           ; $6aa9: $3b
	ldh [$a8], a                                     ; $6aaa: $e0 $a8
	sbc $34                                          ; $6aac: $de $34
	db $ec                                           ; $6aae: $ec
	ld h, c                                          ; $6aaf: $61
	inc de                                           ; $6ab0: $13
	ld h, a                                          ; $6ab1: $67

jr_08e_6ab2:
	dec sp                                           ; $6ab2: $3b

jr_08e_6ab3:
	dec a                                            ; $6ab3: $3d
	ld l, h                                          ; $6ab4: $6c
	dec a                                            ; $6ab5: $3d
	jr c, jr_08e_6afc                                ; $6ab6: $38 $44

	dec sp                                           ; $6ab8: $3b
	dec a                                            ; $6ab9: $3d
	ld c, a                                          ; $6aba: $4f
	ld b, c                                          ; $6abb: $41
	and b                                            ; $6abc: $a0
	cpl                                              ; $6abd: $2f
	ld a, l                                          ; $6abe: $7d
	ld h, l                                          ; $6abf: $65
	ldh a, [c]                                       ; $6ac0: $f2
	adc l                                            ; $6ac1: $8d
	ld d, e                                          ; $6ac2: $53
	ld a, b                                          ; $6ac3: $78
	dec a                                            ; $6ac4: $3d
	ldh a, [rBGP]                                    ; $6ac5: $f0 $47
	inc [hl]                                         ; $6ac7: $34
	ldh a, [rKEY1]                                   ; $6ac8: $f0 $4d
	ldh a, [rKEY1]                                   ; $6aca: $f0 $4d
	dec sp                                           ; $6acc: $3b
	ld h, c                                          ; $6acd: $61
	ld d, [hl]                                       ; $6ace: $56
	dec sp                                           ; $6acf: $3b
	dec a                                            ; $6ad0: $3d
	add hl, bc                                       ; $6ad1: $09
	db $ed                                           ; $6ad2: $ed
	ld a, l                                          ; $6ad3: $7d
	ldh a, [$27]                                     ; $6ad4: $f0 $27
	db $ed                                           ; $6ad6: $ed
	add c                                            ; $6ad7: $81
	ldh a, [rAUD4POLY]                               ; $6ad8: $f0 $22
	add c                                            ; $6ada: $81
	ldh a, [rSC]                                     ; $6adb: $f0 $02
	ld a, l                                          ; $6add: $7d
	pop af                                           ; $6ade: $f1
	ld b, l                                          ; $6adf: $45
	ldh a, [$32]                                     ; $6ae0: $f0 $32
	xor b                                            ; $6ae2: $a8
	ld l, a                                          ; $6ae3: $6f
	ld c, a                                          ; $6ae4: $4f
	inc [hl]                                         ; $6ae5: $34
	ret                                              ; $6ae6: $c9


	inc de                                           ; $6ae7: $13
	rst FarCall                                          ; $6ae8: $f7
	ld h, h                                          ; $6ae9: $64
	ld e, l                                          ; $6aea: $5d
	ld h, c                                          ; $6aeb: $61
	ld d, [hl]                                       ; $6aec: $56
	dec sp                                           ; $6aed: $3b
	dec a                                            ; $6aee: $3d
	and b                                            ; $6aef: $a0
	cpl                                              ; $6af0: $2f
	add sp, -$10                                     ; $6af1: $e8 $f0
	add hl, bc                                       ; $6af3: $09
	ld b, b                                          ; $6af4: $40
	add hl, sp                                       ; $6af5: $39
	xor c                                            ; $6af6: $a9
	ld l, a                                          ; $6af7: $6f
	ld c, e                                          ; $6af8: $4b
	inc [hl]                                         ; $6af9: $34
	ld d, c                                          ; $6afa: $51
	ld [hl], b                                       ; $6afb: $70

jr_08e_6afc:
	ld d, l                                          ; $6afc: $55
	db $ec                                           ; $6afd: $ec
	cp c                                             ; $6afe: $b9
	ld h, e                                          ; $6aff: $63
	and b                                            ; $6b00: $a0
	cpl                                              ; $6b01: $2f
	ld [$09b3], a                                    ; $6b02: $ea $b3 $09
	db $ec                                           ; $6b05: $ec
	ld b, l                                          ; $6b06: $45
	xor b                                            ; $6b07: $a8
	ld l, a                                          ; $6b08: $6f
	ld c, a                                          ; $6b09: $4f
	ld b, b                                          ; $6b0a: $40
	add hl, sp                                       ; $6b0b: $39
	ld [hl], a                                       ; $6b0c: $77
	add hl, sp                                       ; $6b0d: $39
	and b                                            ; $6b0e: $a0
	add h                                            ; $6b0f: $84
	ldh a, [$2a]                                     ; $6b10: $f0 $2a
	ld b, d                                          ; $6b12: $42
	db $ec                                           ; $6b13: $ec
	ld l, b                                          ; $6b14: $68
	inc de                                           ; $6b15: $13
	ld e, l                                          ; $6b16: $5d
	dec sp                                           ; $6b17: $3b
	ld d, h                                          ; $6b18: $54
	add hl, sp                                       ; $6b19: $39
	db $eb                                           ; $6b1a: $eb
	or b                                             ; $6b1b: $b0
	ld b, d                                          ; $6b1c: $42
	ld c, h                                          ; $6b1d: $4c
	and b                                            ; $6b1e: $a0
	cpl                                              ; $6b1f: $2f
	ld c, d                                          ; $6b20: $4a
	ld c, a                                          ; $6b21: $4f

jr_08e_6b22:
	sub b                                            ; $6b22: $90
	ld a, $71                                        ; $6b23: $3e $71
	ld c, [hl]                                       ; $6b25: $4e
	inc a                                            ; $6b26: $3c
	ld d, b                                          ; $6b27: $50
	jr c, jr_08e_6b62                                ; $6b28: $38 $38

	ld b, l                                          ; $6b2a: $45
	ld c, h                                          ; $6b2b: $4c
	add hl, bc                                       ; $6b2c: $09
	di                                               ; $6b2d: $f3
	sub [hl]                                         ; $6b2e: $96
	ld e, c                                          ; $6b2f: $59
	ldh a, [rSC]                                     ; $6b30: $f0 $02
	ld a, l                                          ; $6b32: $7d
	ld l, c                                          ; $6b33: $69
	xor b                                            ; $6b34: $a8
	ld d, d                                          ; $6b35: $52
	ld e, b                                          ; $6b36: $58
	ld b, a                                          ; $6b37: $47
	ld b, b                                          ; $6b38: $40
	ld b, d                                          ; $6b39: $42
	ldh a, [rOCPS]                                   ; $6b3a: $f0 $6a
	ld d, a                                          ; $6b3c: $57
	ld c, h                                          ; $6b3d: $4c
	and b                                            ; $6b3e: $a0
	cpl                                              ; $6b3f: $2f
	ld b, b                                          ; $6b40: $40
	ld b, c                                          ; $6b41: $41
	ld a, [hl-]                                      ; $6b42: $3a
	sbc d                                            ; $6b43: $9a
	ldh a, [rAUD1LOW]                                ; $6b44: $f0 $13
	jr c, jr_08e_6b89                                ; $6b46: $38 $41

	db $ec                                           ; $6b48: $ec
	ret c                                            ; $6b49: $d8

	and c                                            ; $6b4a: $a1
	ld b, b                                          ; $6b4b: $40
	add hl, sp                                       ; $6b4c: $39
	ldh a, [$a4]                                     ; $6b4d: $f0 $a4
	ld e, [hl]                                       ; $6b4f: $5e
	ld c, [hl]                                       ; $6b50: $4e
	db $ec                                           ; $6b51: $ec
	or $13                                           ; $6b52: $f6 $13
	ld h, h                                          ; $6b54: $64
	inc a                                            ; $6b55: $3c
	ld a, $55                                        ; $6b56: $3e $55
	ld a, [hl-]                                      ; $6b58: $3a
	jr c, jr_08e_6afc                                ; $6b59: $38 $a1

	cpl                                              ; $6b5b: $2f
	xor $1f                                          ; $6b5c: $ee $1f
	inc [hl]                                         ; $6b5e: $34
	ld d, h                                          ; $6b5f: $54
	ld b, c                                          ; $6b60: $41
	ld a, [hl-]                                      ; $6b61: $3a

jr_08e_6b62:
	ld c, a                                          ; $6b62: $4f
	ld b, c                                          ; $6b63: $41
	ld b, h                                          ; $6b64: $44
	ld c, c                                          ; $6b65: $49
	ld [hl], a                                       ; $6b66: $77
	add hl, sp                                       ; $6b67: $39
	ld b, l                                          ; $6b68: $45
	add hl, bc                                       ; $6b69: $09
	db $ec                                           ; $6b6a: $ec
	reti                                             ; $6b6b: $d9


	xor h                                            ; $6b6c: $ac
	db $eb                                           ; $6b6d: $eb
	ld e, b                                          ; $6b6e: $58
	ld b, l                                          ; $6b6f: $45
	ld c, h                                          ; $6b70: $4c
	and b                                            ; $6b71: $a0

jr_08e_6b72:
	ld d, h                                          ; $6b72: $54
	ld c, l                                          ; $6b73: $4d
	inc [hl]                                         ; $6b74: $34
	db $ed                                           ; $6b75: $ed
	ld h, a                                          ; $6b76: $67
	ld c, c                                          ; $6b77: $49
	ld [hl], d                                       ; $6b78: $72
	ccf                                              ; $6b79: $3f
	ccf                                              ; $6b7a: $3f
	xor h                                            ; $6b7b: $ac
	db $eb                                           ; $6b7c: $eb
	ld l, d                                          ; $6b7d: $6a
	ld a, [hl-]                                      ; $6b7e: $3a
	jr c, jr_08e_6b22                                ; $6b7f: $38 $a1

	cpl                                              ; $6b81: $2f
	ld [hl], b                                       ; $6b82: $70
	ld [hl], c                                       ; $6b83: $71
	ld b, c                                          ; $6b84: $41
	ld b, l                                          ; $6b85: $45
	dec [hl]                                         ; $6b86: $35
	halt                                             ; $6b87: $76
	adc e                                            ; $6b88: $8b

jr_08e_6b89:
	ld e, h                                          ; $6b89: $5c
	ld a, [hl-]                                      ; $6b8a: $3a
	ld b, c                                          ; $6b8b: $41
	ld b, h                                          ; $6b8c: $44
	ld b, l                                          ; $6b8d: $45
	add hl, bc                                       ; $6b8e: $09
	ld b, [hl]                                       ; $6b8f: $46
	dec sp                                           ; $6b90: $3b
	inc [hl]                                         ; $6b91: $34
	db $d3                                           ; $6b92: $d3
	xor b                                            ; $6b93: $a8
	db $ed                                           ; $6b94: $ed
	ld l, l                                          ; $6b95: $6d
	xor b                                            ; $6b96: $a8
	ld b, b                                          ; $6b97: $40
	ld c, l                                          ; $6b98: $4d
	ld a, [hl-]                                      ; $6b99: $3a
	ld d, b                                          ; $6b9a: $50
	inc [hl]                                         ; $6b9b: $34
	ld a, $3c                                        ; $6b9c: $3e $3c
	dec a                                            ; $6b9e: $3d
	db $ec                                           ; $6b9f: $ec
	dec bc                                           ; $6ba0: $0b
	and b                                            ; $6ba1: $a0
	cpl                                              ; $6ba2: $2f
	add sp, -$5f                                     ; $6ba3: $e8 $a1
	add hl, bc                                       ; $6ba5: $09
	jp hl                                            ; $6ba6: $e9


	db $e4                                           ; $6ba7: $e4

Call_08e_6ba8:
	xor b                                            ; $6ba8: $a8
	ld b, b                                          ; $6ba9: $40
	ld b, c                                          ; $6baa: $41
	ld a, [hl-]                                      ; $6bab: $3a
	sbc d                                            ; $6bac: $9a
	sub h                                            ; $6bad: $94
	ld a, b                                          ; $6bae: $78
	ld a, [hl-]                                      ; $6baf: $3a
	jr c, jr_08e_6bf7                                ; $6bb0: $38 $45

	and b                                            ; $6bb2: $a0
	cpl                                              ; $6bb3: $2f
	add sp, $36                                      ; $6bb4: $e8 $36
	ld c, b                                          ; $6bb6: $48
	add hl, bc                                       ; $6bb7: $09
	call c, $f0a8                                    ; $6bb8: $dc $a8 $f0
	ld e, a                                          ; $6bbb: $5f
	ldh a, [hDisp1_OBP1]                                     ; $6bbc: $f0 $94
	ld b, a                                          ; $6bbe: $47
	inc [hl]                                         ; $6bbf: $34
	ld b, b                                          ; $6bc0: $40
	add hl, sp                                       ; $6bc1: $39
	ld [hl], a                                       ; $6bc2: $77
	dec sp                                           ; $6bc3: $3b
	ccf                                              ; $6bc4: $3f
	inc de                                           ; $6bc5: $13
	pop af                                           ; $6bc6: $f1
	add hl, hl                                       ; $6bc7: $29
	ld a, $3c                                        ; $6bc8: $3e $3c
	dec sp                                           ; $6bca: $3b
	dec a                                            ; $6bcb: $3d
	ld h, e                                          ; $6bcc: $63
	and b                                            ; $6bcd: $a0
	ld c, h                                          ; $6bce: $4c
	add l                                            ; $6bcf: $85
	inc [hl]                                         ; $6bd0: $34
	pop af                                           ; $6bd1: $f1
	ld a, b                                          ; $6bd2: $78
	jr c, jr_08e_6b72                                ; $6bd3: $38 $9d

	ld c, [hl]                                       ; $6bd5: $4e
	ld l, h                                          ; $6bd6: $6c
	dec sp                                           ; $6bd7: $3b
	ccf                                              ; $6bd8: $3f
	xor h                                            ; $6bd9: $ac
	add a                                            ; $6bda: $87
	ldh a, [$5d]                                     ; $6bdb: $f0 $5d
	db $ec                                           ; $6bdd: $ec
	inc e                                            ; $6bde: $1c
	and b                                            ; $6bdf: $a0
	cpl                                              ; $6be0: $2f
	add sp, $11                                      ; $6be1: $e8 $11
	add hl, bc                                       ; $6be3: $09
	ld b, [hl]                                       ; $6be4: $46
	dec sp                                           ; $6be5: $3b
	ld b, b                                          ; $6be6: $40
	add hl, sp                                       ; $6be7: $39
	xor b                                            ; $6be8: $a8
	db $ec                                           ; $6be9: $ec
	reti                                             ; $6bea: $d9


	inc [hl]                                         ; $6beb: $34
	db $d3                                           ; $6bec: $d3
	ld c, h                                          ; $6bed: $4c
	and b                                            ; $6bee: $a0
	cpl                                              ; $6bef: $2f
	add sp, -$17                                     ; $6bf0: $e8 $e9
	ld c, b                                          ; $6bf2: $48
	add hl, bc                                       ; $6bf3: $09
	ldh a, [$ac]                                     ; $6bf4: $f0 $ac
	dec a                                            ; $6bf6: $3d

jr_08e_6bf7:
	ld d, h                                          ; $6bf7: $54
	ld c, c                                          ; $6bf8: $49
	ld b, [hl]                                       ; $6bf9: $46
	ld c, [hl]                                       ; $6bfa: $4e
	add h                                            ; $6bfb: $84
	dec sp                                           ; $6bfc: $3b
	ccf                                              ; $6bfd: $3f
	xor h                                            ; $6bfe: $ac
	pop af                                           ; $6bff: $f1
	sub d                                            ; $6c00: $92
	jr c, jr_08e_6c45                                ; $6c01: $38 $42

	inc a                                            ; $6c03: $3c
	ld a, $50                                        ; $6c04: $3e $50
	ld c, b                                          ; $6c06: $48
	and c                                            ; $6c07: $a1
	cpl                                              ; $6c08: $2f
	add sp, -$65                                     ; $6c09: $e8 $9b
	add hl, bc                                       ; $6c0b: $09
	db $ed                                           ; $6c0c: $ed
	rla                                              ; $6c0d: $17
	dec sp                                           ; $6c0e: $3b
	ccf                                              ; $6c0f: $3f
	inc de                                           ; $6c10: $13
	ld l, l                                          ; $6c11: $6d
	ldh a, [$65]                                     ; $6c12: $f0 $65
	ld l, e                                          ; $6c14: $6b
	ld a, [hl-]                                      ; $6c15: $3a
	ld b, d                                          ; $6c16: $42
	and c                                            ; $6c17: $a1
	ld b, [hl]                                       ; $6c18: $46
	dec sp                                           ; $6c19: $3b
	inc [hl]                                         ; $6c1a: $34
	db $ec                                           ; $6c1b: $ec
	dec e                                            ; $6c1c: $1d
	ld h, d                                          ; $6c1d: $62
	inc de                                           ; $6c1e: $13
	ld [$4c31], a                                    ; $6c1f: $ea $31 $4c
	and b                                            ; $6c22: $a0
	cpl                                              ; $6c23: $2f
	ld [$acc9], a                                    ; $6c24: $ea $c9 $ac
	db $ed                                           ; $6c27: $ed
	ld d, a                                          ; $6c28: $57
	db $ec                                           ; $6c29: $ec
	dec e                                            ; $6c2a: $1d
	ld h, d                                          ; $6c2b: $62
	inc de                                           ; $6c2c: $13
	ld [$a33f], a                                    ; $6c2d: $ea $3f $a3
	cpl                                              ; $6c30: $2f
	jp hl                                            ; $6c31: $e9


	ld sp, $f009                                     ; $6c32: $31 $09 $f0
	jp $ac59                                         ; $6c35: $c3 $59 $ac


	ldh a, [c]                                       ; $6c38: $f2
	jr jr_08e_6cae                                   ; $6c39: $18 $73

	ldh a, [$f2]                                     ; $6c3b: $f0 $f2
	ld [$3540], a                                    ; $6c3d: $ea $40 $35
	ldh a, [$57]                                     ; $6c40: $f0 $57
	ldh a, [$ae]                                     ; $6c42: $f0 $ae
	ld c, h                                          ; $6c44: $4c

jr_08e_6c45:
	and b                                            ; $6c45: $a0
	db $ed                                           ; $6c46: $ed
	ld h, c                                          ; $6c47: $61
	ld [hl], d                                       ; $6c48: $72
	ccf                                              ; $6c49: $3f
	ld c, a                                          ; $6c4a: $4f
	inc de                                           ; $6c4b: $13
	ldh a, [$57]                                     ; $6c4c: $f0 $57
	ldh a, [$ae]                                     ; $6c4e: $f0 $ae
	ld a, [hl-]                                      ; $6c50: $3a
	db $ec                                           ; $6c51: $ec
	dec e                                            ; $6c52: $1d
	ld b, l                                          ; $6c53: $45
	ld c, h                                          ; $6c54: $4c
	and b                                            ; $6c55: $a0
	cpl                                              ; $6c56: $2f
	ld b, e                                          ; $6c57: $43
	ldh a, [$66]                                     ; $6c58: $f0 $66
	ld b, c                                          ; $6c5a: $41
	ld c, d                                          ; $6c5b: $4a
	ld c, a                                          ; $6c5c: $4f
	ld d, b                                          ; $6c5d: $50
	ld e, [hl]                                       ; $6c5e: $5e
	dec a                                            ; $6c5f: $3d
	ld l, h                                          ; $6c60: $6c
	dec a                                            ; $6c61: $3d
	jr c, jr_08e_6cae                                ; $6c62: $38 $4a

	inc de                                           ; $6c64: $13
	db $eb                                           ; $6c65: $eb
	ld e, a                                          ; $6c66: $5f
	and b                                            ; $6c67: $a0
	cpl                                              ; $6c68: $2f
	add sp, -$26                                     ; $6c69: $e8 $da
	add hl, bc                                       ; $6c6b: $09
	ld b, b                                          ; $6c6c: $40
	ld c, l                                          ; $6c6d: $4d
	ld e, e                                          ; $6c6e: $5b
	ld d, [hl]                                       ; $6c6f: $56
	xor h                                            ; $6c70: $ac
	ldh a, [rAUD2HIGH]                               ; $6c71: $f0 $19
	ld b, a                                          ; $6c73: $47
	sub [hl]                                         ; $6c74: $96
	ld d, a                                          ; $6c75: $57
	ld d, d                                          ; $6c76: $52
	ld a, $66                                        ; $6c77: $3e $66
	add hl, sp                                       ; $6c79: $39
	inc a                                            ; $6c7a: $3c
	and c                                            ; $6c7b: $a1
	cpl                                              ; $6c7c: $2f
	ld b, e                                          ; $6c7d: $43
	ld b, b                                          ; $6c7e: $40
	add hl, sp                                       ; $6c7f: $39
	ld b, h                                          ; $6c80: $44
	ld c, h                                          ; $6c81: $4c
	xor b                                            ; $6c82: $a8
	db $eb                                           ; $6c83: $eb
	ld d, d                                          ; $6c84: $52
	inc a                                            ; $6c85: $3c
	and c                                            ; $6c86: $a1
	ldh a, [rAUD2LOW]                                ; $6c87: $f0 $18
	ldh a, [$dc]                                     ; $6c89: $f0 $dc
	ld h, d                                          ; $6c8b: $62
	ld [hl], d                                       ; $6c8c: $72
	ld c, [hl]                                       ; $6c8d: $4e
	ld b, d                                          ; $6c8e: $42
	ld c, c                                          ; $6c8f: $49
	xor h                                            ; $6c90: $ac
	db $ed                                           ; $6c91: $ed
	sub h                                            ; $6c92: $94
	ld b, a                                          ; $6c93: $47
	add c                                            ; $6c94: $81
	ld [hl], l                                       ; $6c95: $75
	ld a, l                                          ; $6c96: $7d
	ld d, c                                          ; $6c97: $51
	ld c, [hl]                                       ; $6c98: $4e
	ld b, d                                          ; $6c99: $42

jr_08e_6c9a:
	ld c, c                                          ; $6c9a: $49
	xor h                                            ; $6c9b: $ac
	ld e, d                                          ; $6c9c: $5a
	dec sp                                           ; $6c9d: $3b
	ld h, c                                          ; $6c9e: $61
	ld d, e                                          ; $6c9f: $53
	adc e                                            ; $6ca0: $8b
	ld e, h                                          ; $6ca1: $5c
	ld a, [hl-]                                      ; $6ca2: $3a
	ld b, d                                          ; $6ca3: $42
	and c                                            ; $6ca4: $a1
	cpl                                              ; $6ca5: $2f
	add sp, $1e                                      ; $6ca6: $e8 $1e
	add hl, bc                                       ; $6ca8: $09
	db $ec                                           ; $6ca9: $ec
	reti                                             ; $6caa: $d9


	db $ec                                           ; $6cab: $ec
	db $f4                                           ; $6cac: $f4
	ld c, h                                          ; $6cad: $4c

jr_08e_6cae:
	xor b                                            ; $6cae: $a8
	ld l, a                                          ; $6caf: $6f
	ld c, a                                          ; $6cb0: $4f
	ld b, b                                          ; $6cb1: $40
	add hl, sp                                       ; $6cb2: $39
	ld [hl], a                                       ; $6cb3: $77
	add hl, sp                                       ; $6cb4: $39
	ld h, e                                          ; $6cb5: $63
	and b                                            ; $6cb6: $a0
	cpl                                              ; $6cb7: $2f
	ld [$0990], a                                    ; $6cb8: $ea $90 $09
	ld b, h                                          ; $6cbb: $44
	dec sp                                           ; $6cbc: $3b
	dec a                                            ; $6cbd: $3d
	ld d, b                                          ; $6cbe: $50
	xor h                                            ; $6cbf: $ac
	ld a, b                                          ; $6cc0: $78
	ld a, [hl-]                                      ; $6cc1: $3a
	ld e, l                                          ; $6cc2: $5d
	ld c, l                                          ; $6cc3: $4d
	ld a, e                                          ; $6cc4: $7b
	inc de                                           ; $6cc5: $13
	ld b, l                                          ; $6cc6: $45
	inc a                                            ; $6cc7: $3c
	dec sp                                           ; $6cc8: $3b
	dec a                                            ; $6cc9: $3d
	db $ec                                           ; $6cca: $ec
	ret c                                            ; $6ccb: $d8

	and b                                            ; $6ccc: $a0
	cpl                                              ; $6ccd: $2f
	jp hl                                            ; $6cce: $e9


	ld [bc], a                                       ; $6ccf: $02
	add hl, bc                                       ; $6cd0: $09
	ld b, [hl]                                       ; $6cd1: $46
	dec sp                                           ; $6cd2: $3b
	inc [hl]                                         ; $6cd3: $34
	db $d3                                           ; $6cd4: $d3
	xor c                                            ; $6cd5: $a9
	db $ed                                           ; $6cd6: $ed
	sub h                                            ; $6cd7: $94
	ld b, a                                          ; $6cd8: $47
	add c                                            ; $6cd9: $81
	ld [hl], l                                       ; $6cda: $75
	ld a, l                                          ; $6cdb: $7d
	ld d, c                                          ; $6cdc: $51
	ld c, [hl]                                       ; $6cdd: $4e
	ld b, d                                          ; $6cde: $42
	ld c, e                                          ; $6cdf: $4b
	inc de                                           ; $6ce0: $13
	adc e                                            ; $6ce1: $8b
	ld e, h                                          ; $6ce2: $5c
	db $ec                                           ; $6ce3: $ec
	ret c                                            ; $6ce4: $d8

	ld b, c                                          ; $6ce5: $41
	ld b, h                                          ; $6ce6: $44
	and b                                            ; $6ce7: $a0
	ldh a, [rAUD2LOW]                                ; $6ce8: $f0 $18
	ldh a, [$dc]                                     ; $6cea: $f0 $dc
	dec sp                                           ; $6cec: $3b
	ccf                                              ; $6ced: $3f
	xor h                                            ; $6cee: $ac
	ld b, b                                          ; $6cef: $40
	ld b, c                                          ; $6cf0: $41
	ld a, [hl-]                                      ; $6cf1: $3a
	ld b, a                                          ; $6cf2: $47
	ldh a, [rAUD4ENV]                                ; $6cf3: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6cf5: $f0 $23
	jr c, jr_08e_6c9a                                ; $6cf7: $38 $a1

	cpl                                              ; $6cf9: $2f
	halt                                             ; $6cfa: $76
	ld c, e                                          ; $6cfb: $4b
	ld h, e                                          ; $6cfc: $63
	ld d, a                                          ; $6cfd: $57
	ld c, c                                          ; $6cfe: $49
	adc e                                            ; $6cff: $8b
	ld e, h                                          ; $6d00: $5c
	ld b, h                                          ; $6d01: $44
	ld a, [hl-]                                      ; $6d02: $3a
	ld c, b                                          ; $6d03: $48
	add hl, bc                                       ; $6d04: $09
	ld b, b                                          ; $6d05: $40
	add hl, sp                                       ; $6d06: $39
	add d                                            ; $6d07: $82
	add hl, sp                                       ; $6d08: $39
	ld c, c                                          ; $6d09: $49
	ld [hl], a                                       ; $6d0a: $77
	dec sp                                           ; $6d0b: $3b
	dec a                                            ; $6d0c: $3d
	ld h, e                                          ; $6d0d: $63
	xor b                                            ; $6d0e: $a8
	db $ec                                           ; $6d0f: $ec
	reti                                             ; $6d10: $d9


	db $ec                                           ; $6d11: $ec
	db $f4                                           ; $6d12: $f4
	ld c, h                                          ; $6d13: $4c
	and b                                            ; $6d14: $a0
	cpl                                              ; $6d15: $2f
	db $ec                                           ; $6d16: $ec
	ld e, d                                          ; $6d17: $5a
	ld d, l                                          ; $6d18: $55
	ld a, [hl-]                                      ; $6d19: $3a
	jr c, jr_08e_6d25                                ; $6d1a: $38 $09

	ld b, h                                          ; $6d1c: $44
	dec sp                                           ; $6d1d: $3b
	dec a                                            ; $6d1e: $3d
	ld d, b                                          ; $6d1f: $50
	xor h                                            ; $6d20: $ac
	ld [hl], d                                       ; $6d21: $72
	ld b, a                                          ; $6d22: $47
	ld a, b                                          ; $6d23: $78
	ld a, [hl-]                                      ; $6d24: $3a

jr_08e_6d25:
	ld e, l                                          ; $6d25: $5d
	ld c, l                                          ; $6d26: $4d
	ld a, e                                          ; $6d27: $7b
	inc de                                           ; $6d28: $13
	db $ec                                           ; $6d29: $ec
	cp c                                             ; $6d2a: $b9
	db $ec                                           ; $6d2b: $ec
	ret c                                            ; $6d2c: $d8

	and b                                            ; $6d2d: $a0
	cpl                                              ; $6d2e: $2f
	db $ec                                           ; $6d2f: $ec
	pop hl                                           ; $6d30: $e1
	ld c, e                                          ; $6d31: $4b
	ld e, d                                          ; $6d32: $5a
	add hl, sp                                       ; $6d33: $39
	ld a, [hl-]                                      ; $6d34: $3a
	ld b, d                                          ; $6d35: $42

jr_08e_6d36:
	and c                                            ; $6d36: $a1
	ld [hl], d                                       ; $6d37: $72
	ld c, [hl]                                       ; $6d38: $4e
	ld b, h                                          ; $6d39: $44
	ld e, l                                          ; $6d3a: $5d
	ld a, [hl-]                                      ; $6d3b: $3a
	ld d, b                                          ; $6d3c: $50
	xor h                                            ; $6d3d: $ac

jr_08e_6d3e:
	ld h, e                                          ; $6d3e: $63
	ld d, a                                          ; $6d3f: $57
	ld c, c                                          ; $6d40: $49
	ld c, h                                          ; $6d41: $4c
	and b                                            ; $6d42: $a0
	ldh a, [$c3]                                     ; $6d43: $f0 $c3
	ld e, c                                          ; $6d45: $59
	ldh a, [$3d]                                     ; $6d46: $f0 $3d
	ldh a, [hDisp0_WX]                                     ; $6d48: $f0 $89
	ldh a, [$2b]                                     ; $6d4a: $f0 $2b
	inc [hl]                                         ; $6d4c: $34
	pop af                                           ; $6d4d: $f1
	ld a, [hl-]                                      ; $6d4e: $3a
	call c, $2fa0                                    ; $6d4f: $dc $a0 $2f
	add sp, $16                                      ; $6d52: $e8 $16
	add hl, bc                                       ; $6d54: $09
	add h                                            ; $6d55: $84
	ldh a, [$2a]                                     ; $6d56: $f0 $2a
	dec sp                                           ; $6d58: $3b
	ccf                                              ; $6d59: $3f
	pop af                                           ; $6d5a: $f1
	cp e                                             ; $6d5b: $bb
	ld e, [hl]                                       ; $6d5c: $5e
	ld c, [hl]                                       ; $6d5d: $4e
	ld c, c                                          ; $6d5e: $49
	xor h                                            ; $6d5f: $ac
	ldh a, [$9c]                                     ; $6d60: $f0 $9c
	ld d, l                                          ; $6d62: $55
	ld a, [hl-]                                      ; $6d63: $3a
	ld c, [hl]                                       ; $6d64: $4e

jr_08e_6d65:
	ld c, a                                          ; $6d65: $4f
	ld b, d                                          ; $6d66: $42
	ld a, [hl-]                                      ; $6d67: $3a
	ld b, d                                          ; $6d68: $42
	ld c, h                                          ; $6d69: $4c
	and b                                            ; $6d6a: $a0
	cpl                                              ; $6d6b: $2f
	ld [$0963], a                                    ; $6d6c: $ea $63 $09
	ld b, b                                          ; $6d6f: $40
	ld b, c                                          ; $6d70: $41
	ld a, [hl-]                                      ; $6d71: $3a
	ld h, e                                          ; $6d72: $63
	ld e, l                                          ; $6d73: $5d
	xor h                                            ; $6d74: $ac
	ldh a, [rAUD1LOW]                                ; $6d75: $f0 $13
	jr c, jr_08e_6d65                                ; $6d77: $38 $ec

	ret c                                            ; $6d79: $d8

	and b                                            ; $6d7a: $a0
	cpl                                              ; $6d7b: $2f
	add sp, -$5e                                     ; $6d7c: $e8 $a2
	add hl, bc                                       ; $6d7e: $09
	ld l, e                                          ; $6d7f: $6b
	ld b, h                                          ; $6d80: $44
	inc [hl]                                         ; $6d81: $34
	db $ec                                           ; $6d82: $ec
	add h                                            ; $6d83: $84
	ld a, [hl-]                                      ; $6d84: $3a
	ld b, d                                          ; $6d85: $42
	ld c, h                                          ; $6d86: $4c
	and b                                            ; $6d87: $a0
	ld [$acd8], a                                    ; $6d88: $ea $d8 $ac
	ld b, b                                          ; $6d8b: $40
	ld b, c                                          ; $6d8c: $41
	ld a, [hl-]                                      ; $6d8d: $3a
	ld b, a                                          ; $6d8e: $47
	ldh a, [rAUD4ENV]                                ; $6d8f: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6d91: $f0 $23
	jr c, jr_08e_6d36                                ; $6d93: $38 $a1

	cpl                                              ; $6d95: $2f
	db $ec                                           ; $6d96: $ec
	pop hl                                           ; $6d97: $e1
	ld c, e                                          ; $6d98: $4b
	ldh a, [$64]                                     ; $6d99: $f0 $64
	jr c, jr_08e_6d3e                                ; $6d9b: $38 $a1

	add hl, sp                                       ; $6d9d: $39
	xor $1f                                          ; $6d9e: $ee $1f
	xor b                                            ; $6da0: $a8
	ld b, b                                          ; $6da1: $40
	ld b, c                                          ; $6da2: $41
	ld a, [hl-]                                      ; $6da3: $3a
	sbc d                                            ; $6da4: $9a
	ld a, [hl-]                                      ; $6da5: $3a
	jr c, @+$65                                      ; $6da6: $38 $63

	xor b                                            ; $6da8: $a8
	ret                                              ; $6da9: $c9


	ldh a, [$0c]                                     ; $6daa: $f0 $0c
	jr c, jr_08e_6ded                                ; $6dac: $38 $3f

	ld l, h                                          ; $6dae: $6c
	dec a                                            ; $6daf: $3d
	ld b, h                                          ; $6db0: $44
	ld e, l                                          ; $6db1: $5d
	and b                                            ; $6db2: $a0
	cpl                                              ; $6db3: $2f
	db $ec                                           ; $6db4: $ec
	pop hl                                           ; $6db5: $e1
	ld b, a                                          ; $6db6: $47
	ld c, e                                          ; $6db7: $4b
	ldh a, [rTAC]                                    ; $6db8: $f0 $07
	inc a                                            ; $6dba: $3c
	ld d, b                                          ; $6dbb: $50
	ld a, [hl-]                                      ; $6dbc: $3a
	jr c, jr_08e_6e04                                ; $6dbd: $38 $45

	add hl, bc                                       ; $6dbf: $09
	db $ed                                           ; $6dc0: $ed
	daa                                              ; $6dc1: $27
	xor c                                            ; $6dc2: $a9
	ld b, b                                          ; $6dc3: $40
	ld c, l                                          ; $6dc4: $4d
	ld e, d                                          ; $6dc5: $5a
	add hl, sp                                       ; $6dc6: $39
	jr c, jr_08e_6e02                                ; $6dc7: $38 $39

	db $ed                                           ; $6dc9: $ed
	add a                                            ; $6dca: $87
	and c                                            ; $6dcb: $a1
	cpl                                              ; $6dcc: $2f
	db $ec                                           ; $6dcd: $ec
	rst SubAFromHL                                          ; $6dce: $d7
	ldh a, [rAUD4ENV]                                ; $6dcf: $f0 $21
	ldh a, [rAUD4GO]                                 ; $6dd1: $f0 $23
	jr c, jr_08e_6e1a                                ; $6dd3: $38 $45

	add hl, bc                                       ; $6dd5: $09
	ldh a, [$8e]                                     ; $6dd6: $f0 $8e
	ld e, c                                          ; $6dd8: $59
	ld h, l                                          ; $6dd9: $65
	xor b                                            ; $6dda: $a8
	ret nz                                           ; $6ddb: $c0

	and b                                            ; $6ddc: $a0
	ld b, [hl]                                       ; $6ddd: $46
	dec sp                                           ; $6dde: $3b
	inc [hl]                                         ; $6ddf: $34
	db $ec                                           ; $6de0: $ec
	ld a, $45                                        ; $6de1: $3e $45
	xor b                                            ; $6de3: $a8
	ldh a, [$0a]                                     ; $6de4: $f0 $0a
	ld d, l                                          ; $6de6: $55
	ldh a, [rAUD2HIGH]                               ; $6de7: $f0 $19
	ld b, a                                          ; $6de9: $47
	sub [hl]                                         ; $6dea: $96
	ld d, a                                          ; $6deb: $57
	ld d, d                                          ; $6dec: $52

jr_08e_6ded:
	ld a, $66                                        ; $6ded: $3e $66
	add hl, sp                                       ; $6def: $39
	ld b, l                                          ; $6df0: $45
	and b                                            ; $6df1: $a0
	cpl                                              ; $6df2: $2f
	ld b, e                                          ; $6df3: $43
	ld b, b                                          ; $6df4: $40
	add hl, sp                                       ; $6df5: $39
	ld b, h                                          ; $6df6: $44
	ld c, h                                          ; $6df7: $4c
	xor b                                            ; $6df8: $a8
	ldh a, [$0a]                                     ; $6df9: $f0 $0a
	ld d, l                                          ; $6dfb: $55
	sub [hl]                                         ; $6dfc: $96
	ld e, a                                          ; $6dfd: $5f
	add hl, sp                                       ; $6dfe: $39
	and b                                            ; $6dff: $a0
	ld b, [hl]                                       ; $6e00: $46
	dec sp                                           ; $6e01: $3b

jr_08e_6e02:
	inc [hl]                                         ; $6e02: $34
	ld b, [hl]                                       ; $6e03: $46

jr_08e_6e04:
	ld b, b                                          ; $6e04: $40
	ld d, h                                          ; $6e05: $54
	ld d, e                                          ; $6e06: $53
	inc de                                           ; $6e07: $13
	ldh a, [$c9]                                     ; $6e08: $f0 $c9
	jr c, jr_08e_6e4b                                ; $6e0a: $38 $3f

	ld c, [hl]                                       ; $6e0c: $4e
	db $ec                                           ; $6e0d: $ec
	ld [de], a                                       ; $6e0e: $12
	and b                                            ; $6e0f: $a0
	cpl                                              ; $6e10: $2f
	add sp, -$75                                     ; $6e11: $e8 $8b
	and c                                            ; $6e13: $a1
	db $ec                                           ; $6e14: $ec
	ld b, l                                          ; $6e15: $45
	xor b                                            ; $6e16: $a8
	ld l, a                                          ; $6e17: $6f
	ld c, a                                          ; $6e18: $4f
	inc [hl]                                         ; $6e19: $34

jr_08e_6e1a:
	ld b, b                                          ; $6e1a: $40
	add hl, sp                                       ; $6e1b: $39
	ld [hl], a                                       ; $6e1c: $77
	dec sp                                           ; $6e1d: $3b
	dec a                                            ; $6e1e: $3d
	ld h, e                                          ; $6e1f: $63
	and b                                            ; $6e20: $a0
	cpl                                              ; $6e21: $2f
	add sp, $2c                                      ; $6e22: $e8 $2c
	and c                                            ; $6e24: $a1
	ld b, b                                          ; $6e25: $40
	add hl, sp                                       ; $6e26: $39
	xor c                                            ; $6e27: $a9
	ld l, a                                          ; $6e28: $6f
	inc [hl]                                         ; $6e29: $34
	ld d, c                                          ; $6e2a: $51
	ld [hl], b                                       ; $6e2b: $70
	ld d, l                                          ; $6e2c: $55
	cp e                                             ; $6e2d: $bb
	ld h, e                                          ; $6e2e: $63
	and b                                            ; $6e2f: $a0
	cpl                                              ; $6e30: $2f
	add sp, $2d                                      ; $6e31: $e8 $2d
	and c                                            ; $6e33: $a1
	ld e, d                                          ; $6e34: $5a
	ld h, c                                          ; $6e35: $61
	ld d, b                                          ; $6e36: $50
	inc a                                            ; $6e37: $3c
	ld c, c                                          ; $6e38: $49
	add d                                            ; $6e39: $82
	add hl, sp                                       ; $6e3a: $39
	ld c, c                                          ; $6e3b: $49
	xor h                                            ; $6e3c: $ac
	cp e                                             ; $6e3d: $bb
	ld h, e                                          ; $6e3e: $63
	and b                                            ; $6e3f: $a0
	ld b, b                                          ; $6e40: $40
	add hl, sp                                       ; $6e41: $39
	ld [hl], $17                                     ; $6e42: $36 $17
	ld l, a                                          ; $6e44: $6f
	ld c, e                                          ; $6e45: $4b
	xor h                                            ; $6e46: $ac
	ldh a, [c]                                       ; $6e47: $f2
	ld bc, $4e5e                                     ; $6e48: $01 $5e $4e

jr_08e_6e4b:
	ld b, d                                          ; $6e4b: $42
	ld d, e                                          ; $6e4c: $53
	adc e                                            ; $6e4d: $8b
	ld e, h                                          ; $6e4e: $5c
	ld b, h                                          ; $6e4f: $44
	ld a, [hl-]                                      ; $6e50: $3a
	and b                                            ; $6e51: $a0
	db $ec                                           ; $6e52: $ec
	ld b, l                                          ; $6e53: $45
	xor b                                            ; $6e54: $a8
	ld l, a                                          ; $6e55: $6f
	ld c, a                                          ; $6e56: $4f
	inc [hl]                                         ; $6e57: $34
	ld b, b                                          ; $6e58: $40
	add hl, sp                                       ; $6e59: $39
	ld [hl], a                                       ; $6e5a: $77
	add hl, sp                                       ; $6e5b: $39
	ld h, e                                          ; $6e5c: $63
	xor b                                            ; $6e5d: $a8
	ld c, a                                          ; $6e5e: $4f
	dec sp                                           ; $6e5f: $3b
	ld c, c                                          ; $6e60: $49
	ldh a, [c]                                       ; $6e61: $f2
	ld bc, $4e5e                                     ; $6e62: $01 $5e $4e
	ld b, d                                          ; $6e65: $42
	ld d, e                                          ; $6e66: $53
	inc de                                           ; $6e67: $13
	ret nc                                           ; $6e68: $d0

	ld c, h                                          ; $6e69: $4c
	and b                                            ; $6e6a: $a0
	ld l, a                                          ; $6e6b: $6f
	inc [hl]                                         ; $6e6c: $34
	ld e, d                                          ; $6e6d: $5a
	dec sp                                           ; $6e6e: $3b
	ld h, c                                          ; $6e6f: $61
	inc a                                            ; $6e70: $3c
	dec sp                                           ; $6e71: $3b
	ccf                                              ; $6e72: $3f
	add d                                            ; $6e73: $82
	add hl, sp                                       ; $6e74: $39
	ld c, c                                          ; $6e75: $49
	inc de                                           ; $6e76: $13
	ldh a, [c]                                       ; $6e77: $f2
	ld bc, $4e5e                                     ; $6e78: $01 $5e $4e
	ldh a, [$08]                                     ; $6e7b: $f0 $08
	add hl, sp                                       ; $6e7d: $39
	ld d, e                                          ; $6e7e: $53
	jr c, jr_08e_6eb9                                ; $6e7f: $38 $38

	ld h, e                                          ; $6e81: $63
	ld c, h                                          ; $6e82: $4c
	and b                                            ; $6e83: $a0
	call c, $1735                                    ; $6e84: $dc $35 $17
	ld c, d                                          ; $6e87: $4a
	ld c, a                                          ; $6e88: $4f
	inc [hl]                                         ; $6e89: $34
	ld b, b                                          ; $6e8a: $40
	ld d, h                                          ; $6e8b: $54
	ld d, d                                          ; $6e8c: $52
	ld c, d                                          ; $6e8d: $4a
	inc de                                           ; $6e8e: $13
	cp e                                             ; $6e8f: $bb
	inc a                                            ; $6e90: $3c
	ld a, $50                                        ; $6e91: $3e $50
	and c                                            ; $6e93: $a1
	ld b, b                                          ; $6e94: $40
	add hl, sp                                       ; $6e95: $39
	ld [hl], $17                                     ; $6e96: $36 $17
	ld b, b                                          ; $6e98: $40
	ld d, h                                          ; $6e99: $54
	ld d, d                                          ; $6e9a: $52
	ld c, d                                          ; $6e9b: $4a
	ld c, c                                          ; $6e9c: $49
	ld c, e                                          ; $6e9d: $4b
	inc de                                           ; $6e9e: $13
	ld [hl], a                                       ; $6e9f: $77
	ld h, e                                          ; $6ea0: $63
	ld a, [hl-]                                      ; $6ea1: $3a
	inc a                                            ; $6ea2: $3c
	dec sp                                           ; $6ea3: $3b
	dec a                                            ; $6ea4: $3d
	ld e, l                                          ; $6ea5: $5d
	ld e, d                                          ; $6ea6: $5a
	ld c, h                                          ; $6ea7: $4c
	and b                                            ; $6ea8: $a0
	call c, $eca8                                    ; $6ea9: $dc $a8 $ec
	sub $3b                                          ; $6eac: $d6 $3b
	ccf                                              ; $6eae: $3f
	ld c, c                                          ; $6eaf: $49
	ld d, h                                          ; $6eb0: $54
	inc a                                            ; $6eb1: $3c
	ld a, [hl-]                                      ; $6eb2: $3a
	and b                                            ; $6eb3: $a0
	ld b, [hl]                                       ; $6eb4: $46
	dec sp                                           ; $6eb5: $3b
	inc [hl]                                         ; $6eb6: $34
	ld c, a                                          ; $6eb7: $4f
	add hl, sp                                       ; $6eb8: $39

jr_08e_6eb9:
	db $ec                                           ; $6eb9: $ec
	ccf                                              ; $6eba: $3f
	inc de                                           ; $6ebb: $13
	ld b, l                                          ; $6ebc: $45
	dec [hl]                                         ; $6ebd: $35
	ldh a, [$0a]                                     ; $6ebe: $f0 $0a
	ld d, l                                          ; $6ec0: $55
	ldh a, [rAUD2HIGH]                               ; $6ec1: $f0 $19
	ld b, a                                          ; $6ec3: $47
	sub [hl]                                         ; $6ec4: $96
	ld d, a                                          ; $6ec5: $57
	ld d, d                                          ; $6ec6: $52
	ld a, $66                                        ; $6ec7: $3e $66
	add hl, sp                                       ; $6ec9: $39
	ld b, l                                          ; $6eca: $45
	and b                                            ; $6ecb: $a0
	ld l, a                                          ; $6ecc: $6f
	ldh a, [rSTAT]                                   ; $6ecd: $f0 $41
	ld b, d                                          ; $6ecf: $42
	ldh a, [$e7]                                     ; $6ed0: $f0 $e7
	ldh a, [c]                                       ; $6ed2: $f2
	ld h, h                                          ; $6ed3: $64
	ld c, e                                          ; $6ed4: $4b
	ld e, d                                          ; $6ed5: $5a
	ld d, h                                          ; $6ed6: $54
	and c                                            ; $6ed7: $a1
	cpl                                              ; $6ed8: $2f
	ld b, e                                          ; $6ed9: $43
	ldh a, [$08]                                     ; $6eda: $f0 $08
	ld d, b                                          ; $6edc: $50
	inc [hl]                                         ; $6edd: $34
	db $ec                                           ; $6ede: $ec
	pop hl                                           ; $6edf: $e1
	xor b                                            ; $6ee0: $a8
	db $ec                                           ; $6ee1: $ec
	xor $ec                                          ; $6ee2: $ee $ec
	xor $a0                                          ; $6ee4: $ee $a0
	cpl                                              ; $6ee6: $2f
	add sp, -$74                                     ; $6ee7: $e8 $8c
	and c                                            ; $6ee9: $a1
	call c, $eca8                                    ; $6eea: $dc $a8 $ec
	cp c                                             ; $6eed: $b9
	ld h, e                                          ; $6eee: $63
	ld c, h                                          ; $6eef: $4c
	and b                                            ; $6ef0: $a0
	cpl                                              ; $6ef1: $2f
	add sp, $0e                                      ; $6ef2: $e8 $0e
	and c                                            ; $6ef4: $a1
	ld b, b                                          ; $6ef5: $40
	add hl, sp                                       ; $6ef6: $39
	xor c                                            ; $6ef7: $a9
	ld l, a                                          ; $6ef8: $6f
	ld c, e                                          ; $6ef9: $4b
	inc [hl]                                         ; $6efa: $34
	ld d, c                                          ; $6efb: $51
	ld [hl], b                                       ; $6efc: $70
	ld d, l                                          ; $6efd: $55
	adc e                                            ; $6efe: $8b
	ld e, h                                          ; $6eff: $5c
	ld b, l                                          ; $6f00: $45
	and b                                            ; $6f01: $a0
	cpl                                              ; $6f02: $2f
	add sp, $0f                                      ; $6f03: $e8 $0f
	and c                                            ; $6f05: $a1
	ld b, b                                          ; $6f06: $40
	add hl, sp                                       ; $6f07: $39
	xor c                                            ; $6f08: $a9
	ld l, a                                          ; $6f09: $6f
	ld c, e                                          ; $6f0a: $4b
	inc [hl]                                         ; $6f0b: $34
	db $ec                                           ; $6f0c: $ec
	cp c                                             ; $6f0d: $b9
	ld h, e                                          ; $6f0e: $63
	and b                                            ; $6f0f: $a0
	ld e, [hl]                                       ; $6f10: $5e
	ld e, c                                          ; $6f11: $59
	dec sp                                           ; $6f12: $3b
	inc [hl]                                         ; $6f13: $34
	ld b, b                                          ; $6f14: $40
	add hl, sp                                       ; $6f15: $39
	ld [hl], $17                                     ; $6f16: $36 $17
	ld l, a                                          ; $6f18: $6f
	ld c, e                                          ; $6f19: $4b
	pop af                                           ; $6f1a: $f1
	inc hl                                           ; $6f1b: $23
	ldh a, [rP1]                                     ; $6f1c: $f0 $00
	ld b, d                                          ; $6f1e: $42
	jr c, jr_08e_6f59                                ; $6f1f: $38 $38

	ldh a, [$ed]                                     ; $6f21: $f0 $ed
	ld b, d                                          ; $6f23: $42
	ldh a, [$38]                                     ; $6f24: $f0 $38
	ld d, e                                          ; $6f26: $53
	inc de                                           ; $6f27: $13
	adc e                                            ; $6f28: $8b
	ld e, h                                          ; $6f29: $5c
	ld b, h                                          ; $6f2a: $44
	ld h, e                                          ; $6f2b: $63
	and b                                            ; $6f2c: $a0
	db $ec                                           ; $6f2d: $ec
	ld b, l                                          ; $6f2e: $45
	dec [hl]                                         ; $6f2f: $35
	rla                                              ; $6f30: $17
	db $ed                                           ; $6f31: $ed
	ld b, c                                          ; $6f32: $41
	xor h                                            ; $6f33: $ac
	add b                                            ; $6f34: $80
	ld d, d                                          ; $6f35: $52
	ld d, b                                          ; $6f36: $50
	ld a, [hl-]                                      ; $6f37: $3a
	inc a                                            ; $6f38: $3c
	dec sp                                           ; $6f39: $3b
	ldh [$a0], a                                     ; $6f3a: $e0 $a0
	call c, $1735                                    ; $6f3c: $dc $35 $17
	ld c, d                                          ; $6f3f: $4a

jr_08e_6f40:
	ld c, a                                          ; $6f40: $4f
	inc [hl]                                         ; $6f41: $34
	ld l, a                                          ; $6f42: $6f
	ld c, e                                          ; $6f43: $4b
	ld c, a                                          ; $6f44: $4f
	dec sp                                           ; $6f45: $3b
	ld c, c                                          ; $6f46: $49
	xor h                                            ; $6f47: $ac
	pop af                                           ; $6f48: $f1
	inc hl                                           ; $6f49: $23
	ldh a, [rP1]                                     ; $6f4a: $f0 $00
	ld b, d                                          ; $6f4c: $42
	ld a, [hl]                                       ; $6f4d: $7e
	jr c, jr_08e_6f40                                ; $6f4e: $38 $f0

	jr c, jr_08e_6fa5                                ; $6f50: $38 $53

	adc e                                            ; $6f52: $8b
	ld e, h                                          ; $6f53: $5c
	ld b, h                                          ; $6f54: $44
	ld h, e                                          ; $6f55: $63
	and b                                            ; $6f56: $a0
	ld b, b                                          ; $6f57: $40
	ld c, l                                          ; $6f58: $4d

jr_08e_6f59:
	ldh a, [$08]                                     ; $6f59: $f0 $08
	ld e, d                                          ; $6f5b: $5a
	ld c, d                                          ; $6f5c: $4a
	ld c, a                                          ; $6f5d: $4f
	xor h                                            ; $6f5e: $ac
	ldh a, [rAUD1LOW]                                ; $6f5f: $f0 $13
	jr c, jr_08e_6fac                                ; $6f61: $38 $49

	ld [hl], a                                       ; $6f63: $77
	add hl, sp                                       ; $6f64: $39
	ld h, e                                          ; $6f65: $63
	and b                                            ; $6f66: $a0
	ld b, b                                          ; $6f67: $40
	ld b, c                                          ; $6f68: $41
	ld a, [hl-]                                      ; $6f69: $3a
	ld b, a                                          ; $6f6a: $47
	xor h                                            ; $6f6b: $ac
	add b                                            ; $6f6c: $80
	ld d, d                                          ; $6f6d: $52
	ld d, b                                          ; $6f6e: $50
	ld a, [hl-]                                      ; $6f6f: $3a
	ld d, l                                          ; $6f70: $55
	ld c, e                                          ; $6f71: $4b
	ldh a, [rAUD1LOW]                                ; $6f72: $f0 $13
	jr c, @+$4b                                      ; $6f74: $38 $49

	inc de                                           ; $6f76: $13
	ld [hl], a                                       ; $6f77: $77
	xor $1f                                          ; $6f78: $ee $1f
	ld b, h                                          ; $6f7a: $44
	ld e, l                                          ; $6f7b: $5d
	ld e, d                                          ; $6f7c: $5a
	ld a, [hl-]                                      ; $6f7d: $3a
	ld [hl], h                                       ; $6f7e: $74
	ld c, b                                          ; $6f7f: $48
	and b                                            ; $6f80: $a0
	call c, $eca8                                    ; $6f81: $dc $a8 $ec
	sub $44                                          ; $6f84: $d6 $44
	dec sp                                           ; $6f86: $3b
	ldh [$a0], a                                     ; $6f87: $e0 $a0
	cpl                                              ; $6f89: $2f
	jp hl                                            ; $6f8a: $e9


	cp d                                             ; $6f8b: $ba
	add hl, bc                                       ; $6f8c: $09
	ld e, [hl]                                       ; $6f8d: $5e
	dec sp                                           ; $6f8e: $3b
	inc [hl]                                         ; $6f8f: $34
	ld b, [hl]                                       ; $6f90: $46
	ld d, a                                          ; $6f91: $57
	ld d, e                                          ; $6f92: $53
	ld c, c                                          ; $6f93: $49
	add hl, sp                                       ; $6f94: $39
	xor b                                            ; $6f95: $a8
	ld c, d                                          ; $6f96: $4a
	ld c, a                                          ; $6f97: $4f
	inc [hl]                                         ; $6f98: $34
	ret                                              ; $6f99: $c9


	inc de                                           ; $6f9a: $13
	db $eb                                           ; $6f9b: $eb
	ld c, a                                          ; $6f9c: $4f
	ld a, [hl-]                                      ; $6f9d: $3a
	and b                                            ; $6f9e: $a0
	cpl                                              ; $6f9f: $2f
	jp hl                                            ; $6fa0: $e9


	dec sp                                           ; $6fa1: $3b
	add hl, bc                                       ; $6fa2: $09
	rst JumpTable                                          ; $6fa3: $c7
	ld c, b                                          ; $6fa4: $48

jr_08e_6fa5:
	xor c                                            ; $6fa5: $a9
	ld d, h                                          ; $6fa6: $54
	ld c, l                                          ; $6fa7: $4d

Call_08e_6fa8:
	db $ec                                           ; $6fa8: $ec
	ret c                                            ; $6fa9: $d8

	ldh a, [$38]                                     ; $6faa: $f0 $38

jr_08e_6fac:
	ld d, e                                          ; $6fac: $53
	inc de                                           ; $6fad: $13
	ld b, l                                          ; $6fae: $45
	inc a                                            ; $6faf: $3c
	dec sp                                           ; $6fb0: $3b
	dec a                                            ; $6fb1: $3d
	inc a                                            ; $6fb2: $3c
	ld a, [hl-]                                      ; $6fb3: $3a
	ld c, b                                          ; $6fb4: $48
	and b                                            ; $6fb5: $a0
	cpl                                              ; $6fb6: $2f
	add sp, -$1e                                     ; $6fb7: $e8 $e2
	add hl, bc                                       ; $6fb9: $09
	ld e, [hl]                                       ; $6fba: $5e
	dec sp                                           ; $6fbb: $3b
	xor c                                            ; $6fbc: $a9
	jp nc, $3a72                                     ; $6fbd: $d2 $72 $3a

	jr c, jr_08e_700c                                ; $6fc0: $38 $4a

	ld c, h                                          ; $6fc2: $4c
	xor l                                            ; $6fc3: $ad
	db $eb                                           ; $6fc4: $eb
	ld c, a                                          ; $6fc5: $4f
	ld b, c                                          ; $6fc6: $41
	ld b, h                                          ; $6fc7: $44
	inc a                                            ; $6fc8: $3c
	ld d, b                                          ; $6fc9: $50
	ld c, b                                          ; $6fca: $48
	and b                                            ; $6fcb: $a0
	ld c, h                                          ; $6fcc: $4c
	add l                                            ; $6fcd: $85
	inc [hl]                                         ; $6fce: $34
	ldh a, [hDisp1_SCY]                                     ; $6fcf: $f0 $90
	ldh a, [$cb]                                     ; $6fd1: $f0 $cb
	ld h, d                                          ; $6fd3: $62
	inc de                                           ; $6fd4: $13
	db $ec                                           ; $6fd5: $ec
	db $ed                                           ; $6fd6: $ed
	ld d, l                                          ; $6fd7: $55
	ld c, l                                          ; $6fd8: $4d
	ld c, [hl]                                       ; $6fd9: $4e
	and c                                            ; $6fda: $a1
	cpl                                              ; $6fdb: $2f
	add sp, $76                                      ; $6fdc: $e8 $76
	add hl, bc                                       ; $6fde: $09
	db $ec                                           ; $6fdf: $ec
	scf                                              ; $6fe0: $37
	inc [hl]                                         ; $6fe1: $34
	adc b                                            ; $6fe2: $88
	sub c                                            ; $6fe3: $91
	xor c                                            ; $6fe4: $a9
	ldh a, [c]                                       ; $6fe5: $f2
	ld e, l                                          ; $6fe6: $5d
	ld c, a                                          ; $6fe7: $4f
	ld a, $38                                        ; $6fe8: $3e $38
	ld h, e                                          ; $6fea: $63
	ld c, h                                          ; $6feb: $4c
	and b                                            ; $6fec: $a0
	cpl                                              ; $6fed: $2f
	db $eb                                           ; $6fee: $eb
	sub e                                            ; $6fef: $93
	xor h                                            ; $6ff0: $ac
	add sp, -$6e                                     ; $6ff1: $e8 $92
	xor b                                            ; $6ff3: $a8
	db $eb                                           ; $6ff4: $eb
	sub h                                            ; $6ff5: $94
	ldh a, [hDisp1_SCY]                                     ; $6ff6: $f0 $90
	ldh a, [rSB]                                     ; $6ff8: $f0 $01
	ld a, [hl-]                                      ; $6ffa: $3a
	jr c, jr_08e_703e                                ; $6ffb: $38 $41

	ld b, h                                          ; $6ffd: $44
	and e                                            ; $6ffe: $a3
	cpl                                              ; $6fff: $2f
	jp hl                                            ; $7000: $e9


	dec c                                            ; $7001: $0d
	ld c, b                                          ; $7002: $48
	add hl, bc                                       ; $7003: $09

jr_08e_7004:
	ld e, [hl]                                       ; $7004: $5e
	dec sp                                           ; $7005: $3b
	inc [hl]                                         ; $7006: $34
	db $d3                                           ; $7007: $d3
	xor b                                            ; $7008: $a8
	ld b, b                                          ; $7009: $40
	ld c, l                                          ; $700a: $4d
	ld e, e                                          ; $700b: $5b

jr_08e_700c:
	ld d, [hl]                                       ; $700c: $56
	inc [hl]                                         ; $700d: $34
	ld a, b                                          ; $700e: $78
	ccf                                              ; $700f: $3f
	ld c, a                                          ; $7010: $4f
	inc de                                           ; $7011: $13
	db $eb                                           ; $7012: $eb
	inc [hl]                                         ; $7013: $34
	ld h, e                                          ; $7014: $63
	ld c, h                                          ; $7015: $4c
	and b                                            ; $7016: $a0
	cpl                                              ; $7017: $2f
	pop af                                           ; $7018: $f1
	db $fc                                           ; $7019: $fc
	ldh a, [rOCPS]                                   ; $701a: $f0 $6a
	sbc l                                            ; $701c: $9d
	ld d, b                                          ; $701d: $50
	jr c, jr_08e_706a                                ; $701e: $38 $4a

	jr c, jr_08e_705a                                ; $7020: $38 $38

	ld a, [hl-]                                      ; $7022: $3a
	ld d, b                                          ; $7023: $50
	add hl, bc                                       ; $7024: $09
	db $ed                                           ; $7025: $ed
	ld l, l                                          ; $7026: $6d
	inc [hl]                                         ; $7027: $34
	ld b, b                                          ; $7028: $40
	ld c, l                                          ; $7029: $4d
	ld c, d                                          ; $702a: $4a
	db $ed                                           ; $702b: $ed
	ld [hl], e                                       ; $702c: $73
	ld b, l                                          ; $702d: $45
	and b                                            ; $702e: $a0
	ld b, b                                          ; $702f: $40
	ld c, l                                          ; $7030: $4d
	ld e, e                                          ; $7031: $5b
	ld d, [hl]                                       ; $7032: $56
	xor h                                            ; $7033: $ac
	ld [$4cd3], a                                    ; $7034: $ea $d3 $4c
	and b                                            ; $7037: $a0
	cpl                                              ; $7038: $2f
	ld b, e                                          ; $7039: $43
	db $ec                                           ; $703a: $ec
	pop hl                                           ; $703b: $e1
	xor h                                            ; $703c: $ac
	jp hl                                            ; $703d: $e9


jr_08e_703e:
	ld [$f213], a                                    ; $703e: $ea $13 $f2
	ld l, c                                          ; $7041: $69
	ccf                                              ; $7042: $3f
	ld c, [hl]                                       ; $7043: $4e
	ld b, l                                          ; $7044: $45
	and b                                            ; $7045: $a0
	cpl                                              ; $7046: $2f
	add sp, $5d                                      ; $7047: $e8 $5d
	add hl, bc                                       ; $7049: $09
	db $ed                                           ; $704a: $ed
	ld a, l                                          ; $704b: $7d
	ldh a, [$27]                                     ; $704c: $f0 $27
	db $ed                                           ; $704e: $ed
	add c                                            ; $704f: $81
	ldh a, [rAUD4POLY]                               ; $7050: $f0 $22
	add c                                            ; $7052: $81
	ldh a, [rSC]                                     ; $7053: $f0 $02
	ld a, l                                          ; $7055: $7d
	pop af                                           ; $7056: $f1
	ld b, l                                          ; $7057: $45
	xor h                                            ; $7058: $ac
	db $ec                                           ; $7059: $ec

jr_08e_705a:
	ld de, $3d3e                                     ; $705a: $11 $3e $3d
	ld h, e                                          ; $705d: $63
	and b                                            ; $705e: $a0
	cpl                                              ; $705f: $2f
	add sp, $5e                                      ; $7060: $e8 $5e
	and d                                            ; $7062: $a2
	jp hl                                            ; $7063: $e9


	rrca                                             ; $7064: $0f
	xor b                                            ; $7065: $a8
	db $eb                                           ; $7066: $eb
	ld a, d                                          ; $7067: $7a
	jr c, jr_08e_7004                                ; $7068: $38 $9a

jr_08e_706a:
	ld d, c                                          ; $706a: $51
	ld c, [hl]                                       ; $706b: $4e
	ld h, e                                          ; $706c: $63
	ld c, h                                          ; $706d: $4c
	and b                                            ; $706e: $a0
	cpl                                              ; $706f: $2f
	add sp, $13                                      ; $7070: $e8 $13
	add hl, bc                                       ; $7072: $09
	ld b, [hl]                                       ; $7073: $46
	dec sp                                           ; $7074: $3b
	inc [hl]                                         ; $7075: $34
	pop af                                           ; $7076: $f1
	daa                                              ; $7077: $27
	inc [hl]                                         ; $7078: $34
	db $ec                                           ; $7079: $ec
	cpl                                              ; $707a: $2f
	dec [hl]                                         ; $707b: $35
	rla                                              ; $707c: $17
	ldh a, [c]                                       ; $707d: $f2
	rlca                                             ; $707e: $07
	ld d, h                                          ; $707f: $54
	ld a, $3f                                        ; $7080: $3e $3f
	ld d, l                                          ; $7082: $55
	ld c, l                                          ; $7083: $4d
	ccf                                              ; $7084: $3f
	ld c, a                                          ; $7085: $4f
	inc de                                           ; $7086: $13
	ld b, l                                          ; $7087: $45
	inc a                                            ; $7088: $3c
	dec sp                                           ; $7089: $3b
	dec a                                            ; $708a: $3d
	ld b, d                                          ; $708b: $42
	ld b, l                                          ; $708c: $45
	and b                                            ; $708d: $a0
	cpl                                              ; $708e: $2f
	ldh a, [rPCM34]                                  ; $708f: $f0 $77
	ld b, a                                          ; $7091: $47
	ld a, [hl-]                                      ; $7092: $3a
	ld c, l                                          ; $7093: $4d
	ld c, [hl]                                       ; $7094: $4e
	ld b, l                                          ; $7095: $45
	add hl, sp                                       ; $7096: $39
	sub d                                            ; $7097: $92
	adc [hl]                                         ; $7098: $8e
	ld e, a                                          ; $7099: $5f
	add hl, sp                                       ; $709a: $39
	add hl, bc                                       ; $709b: $09
	db $eb                                           ; $709c: $eb
	ld e, l                                          ; $709d: $5d
	inc [hl]                                         ; $709e: $34
	ld b, [hl]                                       ; $709f: $46
	ld d, a                                          ; $70a0: $57
	ld d, e                                          ; $70a1: $53
	ld c, c                                          ; $70a2: $49
	add hl, sp                                       ; $70a3: $39
	xor b                                            ; $70a4: $a8
	ldh a, [c]                                       ; $70a5: $f2
	ld e, l                                          ; $70a6: $5d
	ld d, a                                          ; $70a7: $57
	ld b, a                                          ; $70a8: $47
	ld a, $3f                                        ; $70a9: $3e $3f
	ld c, [hl]                                       ; $70ab: $4e
	ld h, e                                          ; $70ac: $63
	ld b, l                                          ; $70ad: $45
	and b                                            ; $70ae: $a0
	cpl                                              ; $70af: $2f
	ldh a, [$08]                                     ; $70b0: $f0 $08
	ld d, b                                          ; $70b2: $50
	inc [hl]                                         ; $70b3: $34
	ldh a, [hDisp1_SCY]                                     ; $70b4: $f0 $90
	ldh a, [$cb]                                     ; $70b6: $f0 $cb
	ld b, a                                          ; $70b8: $47
	ld h, a                                          ; $70b9: $67
	ld d, l                                          ; $70ba: $55
	ld b, l                                          ; $70bb: $45
	add hl, bc                                       ; $70bc: $09
	ld e, [hl]                                       ; $70bd: $5e
	ld e, c                                          ; $70be: $59
	dec sp                                           ; $70bf: $3b
	xor h                                            ; $70c0: $ac
	jp hl                                            ; $70c1: $e9


	db $e4                                           ; $70c2: $e4
	xor b                                            ; $70c3: $a8
	ld l, a                                          ; $70c4: $6f
	inc [hl]                                         ; $70c5: $34
	ldh a, [rPCM34]                                  ; $70c6: $f0 $77
	ld d, e                                          ; $70c8: $53
	db $ed                                           ; $70c9: $ed
	ld l, b                                          ; $70ca: $68
	ld a, [hl-]                                      ; $70cb: $3a
	ld b, d                                          ; $70cc: $42
	ld b, a                                          ; $70cd: $47
	and b                                            ; $70ce: $a0
	cpl                                              ; $70cf: $2f
	ld b, b                                          ; $70d0: $40
	ld c, l                                          ; $70d1: $4d
	ld e, e                                          ; $70d2: $5b
	ld d, [hl]                                       ; $70d3: $56
	inc [hl]                                         ; $70d4: $34
	pop af                                           ; $70d5: $f1
	ld de, $65f0                                     ; $70d6: $11 $f0 $65
	ld c, d                                          ; $70d9: $4a
	ld c, a                                          ; $70da: $4f
	pop af                                           ; $70db: $f1
	cp h                                             ; $70dc: $bc
	ld d, h                                          ; $70dd: $54
	add hl, sp                                       ; $70de: $39
	add hl, bc                                       ; $70df: $09
	db $ed                                           ; $70e0: $ed
	ld l, l                                          ; $70e1: $6d
	inc [hl]                                         ; $70e2: $34
	ret nc                                           ; $70e3: $d0

	and b                                            ; $70e4: $a0
	db $ed                                           ; $70e5: $ed
	ld d, a                                          ; $70e6: $57
	ret                                              ; $70e7: $c9


	inc de                                           ; $70e8: $13
	ldh a, [c]                                       ; $70e9: $f2
	rst FarCall                                          ; $70ea: $f7
	ld a, $38                                        ; $70eb: $3e $38
	ld h, e                                          ; $70ed: $63
	ld c, h                                          ; $70ee: $4c
	and b                                            ; $70ef: $a0
	cpl                                              ; $70f0: $2f
	ld b, e                                          ; $70f1: $43
	rst JumpTable                                          ; $70f2: $c7
	xor c                                            ; $70f3: $a9
	halt                                             ; $70f4: $76
	ld c, e                                          ; $70f5: $4b
	inc [hl]                                         ; $70f6: $34
	ld c, a                                          ; $70f7: $4f
	ld b, d                                          ; $70f8: $42
	ld d, c                                          ; $70f9: $51
	ld [hl], b                                       ; $70fa: $70
	ld d, l                                          ; $70fb: $55
	inc de                                           ; $70fc: $13
	db $ed                                           ; $70fd: $ed
	ld l, h                                          ; $70fe: $6c
	ld b, c                                          ; $70ff: $41
	ld b, h                                          ; $7100: $44
	ld e, l                                          ; $7101: $5d
	ld e, d                                          ; $7102: $5a
	and b                                            ; $7103: $a0
	db $ec                                           ; $7104: $ec
	scf                                              ; $7105: $37
	xor c                                            ; $7106: $a9
	ld b, b                                          ; $7107: $40
	ld b, c                                          ; $7108: $41
	ld a, [hl-]                                      ; $7109: $3a
	ld d, h                                          ; $710a: $54
	ld c, c                                          ; $710b: $49
	ld a, [hl-]                                      ; $710c: $3a
	jr c, jr_08e_7172                                ; $710d: $38 $63

	ld b, l                                          ; $710f: $45
	and b                                            ; $7110: $a0
	cpl                                              ; $7111: $2f
	ld b, e                                          ; $7112: $43
	db $ec                                           ; $7113: $ec
	pop hl                                           ; $7114: $e1
	xor b                                            ; $7115: $a8
	ldh a, [$08]                                     ; $7116: $f0 $08
	ld d, b                                          ; $7118: $50
	inc [hl]                                         ; $7119: $34
	ldh a, [hDisp1_SCY]                                     ; $711a: $f0 $90
	ldh a, [$cb]                                     ; $711c: $f0 $cb
	ld b, a                                          ; $711e: $47
	call Call_08e_63a0                               ; $711f: $cd $a0 $63
	inc [hl]                                         ; $7122: $34
	ld l, a                                          ; $7123: $6f
	ld c, e                                          ; $7124: $4b
	xor h                                            ; $7125: $ac
	ret                                              ; $7126: $c9


	pop af                                           ; $7127: $f1
	or $38                                           ; $7128: $f6 $38
	inc a                                            ; $712a: $3c
	ld d, b                                          ; $712b: $50
	xor b                                            ; $712c: $a8
	pop af                                           ; $712d: $f1
	ld b, $f1                                        ; $712e: $06 $f1
	ld a, $3e                                        ; $7130: $3e $3e
	ccf                                              ; $7132: $3f
	ld h, h                                          ; $7133: $64
	ld d, l                                          ; $7134: $55
	ld h, e                                          ; $7135: $63
	and b                                            ; $7136: $a0
	cpl                                              ; $7137: $2f
	ld b, e                                          ; $7138: $43

jr_08e_7139:
	pop af                                           ; $7139: $f1
	or $38                                           ; $713a: $f6 $38
	ld c, c                                          ; $713c: $49
	jr c, jr_08e_7177                                ; $713d: $38 $38

	ld a, [hl-]                                      ; $713f: $3a
	ld d, e                                          ; $7140: $53
	ld d, b                                          ; $7141: $50
	xor h                                            ; $7142: $ac
	push af                                          ; $7143: $f5
	rrca                                             ; $7144: $0f
	inc a                                            ; $7145: $3c
	jr c, jr_08e_7187                                ; $7146: $38 $3f

	ld c, [hl]                                       ; $7148: $4e
	db $ec                                           ; $7149: $ec
	ret c                                            ; $714a: $d8

	inc a                                            ; $714b: $3c
	xor b                                            ; $714c: $a8
	ldh a, [$08]                                     ; $714d: $f0 $08
	ld d, b                                          ; $714f: $50
	inc [hl]                                         ; $7150: $34
	call $38a0                                       ; $7151: $cd $a0 $38
	inc [hl]                                         ; $7154: $34
	jr c, jr_08e_71c5                                ; $7155: $38 $6e

	xor b                                            ; $7157: $a8
	db $ed                                           ; $7158: $ed
	ld l, h                                          ; $7159: $6c
	inc a                                            ; $715a: $3c
	ld d, b                                          ; $715b: $50
	db $ec                                           ; $715c: $ec
	ret c                                            ; $715d: $d8

	ld h, e                                          ; $715e: $63
	and b                                            ; $715f: $a0
	cpl                                              ; $7160: $2f
	ld b, e                                          ; $7161: $43
	ld b, h                                          ; $7162: $44
	dec sp                                           ; $7163: $3b
	dec a                                            ; $7164: $3d
	ld d, b                                          ; $7165: $50
	inc [hl]                                         ; $7166: $34
	ld l, e                                          ; $7167: $6b
	ld b, d                                          ; $7168: $42
	push af                                          ; $7169: $f5
	rrca                                             ; $716a: $0f
	and c                                            ; $716b: $a1
	db $eb                                           ; $716c: $eb
	add h                                            ; $716d: $84
	pop af                                           ; $716e: $f1
	sub h                                            ; $716f: $94
	ld l, [hl]                                       ; $7170: $6e
	push af                                          ; $7171: $f5

jr_08e_7172:
	rrca                                             ; $7172: $0f
	ld a, [hl-]                                      ; $7173: $3a
	ld b, d                                          ; $7174: $42
	and b                                            ; $7175: $a0
	cpl                                              ; $7176: $2f

jr_08e_7177:
	ld b, e                                          ; $7177: $43
	ld e, [hl]                                       ; $7178: $5e
	dec sp                                           ; $7179: $3b
	xor c                                            ; $717a: $a9
	ld l, e                                          ; $717b: $6b
	ld c, d                                          ; $717c: $4a
	pop af                                           ; $717d: $f1
	sub h                                            ; $717e: $94
	ld l, [hl]                                       ; $717f: $6e
	push af                                          ; $7180: $f5
	rrca                                             ; $7181: $0f
	ld a, [hl-]                                      ; $7182: $3a
	ld b, c                                          ; $7183: $41
	inc a                                            ; $7184: $3c
	ld c, b                                          ; $7185: $48
	and b                                            ; $7186: $a0

jr_08e_7187:
	ld l, a                                          ; $7187: $6f
	inc [hl]                                         ; $7188: $34
	ldh a, [rPCM34]                                  ; $7189: $f0 $77
	ld d, e                                          ; $718b: $53
	ldh a, [$71]                                     ; $718c: $f0 $71
	jr c, jr_08e_71d2                                ; $718e: $38 $42

	ld b, l                                          ; $7190: $45
	xor b                                            ; $7191: $a8
	db $ec                                           ; $7192: $ec
	jr nz, jr_08e_71f9                               ; $7193: $20 $64

	ldh a, [$c8]                                     ; $7195: $f0 $c8
	jr c, jr_08e_7139                                ; $7197: $38 $a0

	cpl                                              ; $7199: $2f
	ld b, e                                          ; $719a: $43
	ld b, b                                          ; $719b: $40
	ld c, l                                          ; $719c: $4d
	ld a, [hl-]                                      ; $719d: $3a
	ld d, b                                          ; $719e: $50
	inc [hl]                                         ; $719f: $34
	ld b, b                                          ; $71a0: $40
	add hl, sp                                       ; $71a1: $39
	ld c, c                                          ; $71a2: $49
	inc de                                           ; $71a3: $13
	add d                                            ; $71a4: $82
	dec sp                                           ; $71a5: $3b
	ccf                                              ; $71a6: $3f
	ld d, l                                          ; $71a7: $55
	ld c, l                                          ; $71a8: $4d
	ld c, l                                          ; $71a9: $4d
	ld a, e                                          ; $71aa: $7b
	jr c, jr_08e_71e5                                ; $71ab: $38 $38

	ld b, d                                          ; $71ad: $42
	ld b, a                                          ; $71ae: $47
	and b                                            ; $71af: $a0
	db $ed                                           ; $71b0: $ed
	ld b, e                                          ; $71b1: $43
	inc [hl]                                         ; $71b2: $34
	ldh a, [rPCM34]                                  ; $71b3: $f0 $77
	ld d, e                                          ; $71b5: $53
	ldh a, [$71]                                     ; $71b6: $f0 $71
	jr c, jr_08e_71cd                                ; $71b8: $38 $13

	ld a, [hl-]                                      ; $71ba: $3a
	ld b, c                                          ; $71bb: $41
	ccf                                              ; $71bc: $3f
	inc [hl]                                         ; $71bd: $34
	db $eb                                           ; $71be: $eb
	ld c, a                                          ; $71bf: $4f
	db $ec                                           ; $71c0: $ec
	ret c                                            ; $71c1: $d8

	and b                                            ; $71c2: $a0
	cpl                                              ; $71c3: $2f
	ld b, e                                          ; $71c4: $43

jr_08e_71c5:
	ld b, b                                          ; $71c5: $40
	ld b, c                                          ; $71c6: $41
	ld a, [hl-]                                      ; $71c7: $3a
	ld d, h                                          ; $71c8: $54
	ld c, c                                          ; $71c9: $49
	ld a, [hl-]                                      ; $71ca: $3a
	jr c, @+$47                                      ; $71cb: $38 $45

jr_08e_71cd:
	xor b                                            ; $71cd: $a8
	ldh a, [$98]                                     ; $71ce: $f0 $98
	ld b, a                                          ; $71d0: $47
	db $ed                                           ; $71d1: $ed

jr_08e_71d2:
	ld b, e                                          ; $71d2: $43
	db $ed                                           ; $71d3: $ed
	ld l, b                                          ; $71d4: $68
	ld a, [hl-]                                      ; $71d5: $3a
	ld c, a                                          ; $71d6: $4f
	ld b, d                                          ; $71d7: $42
	ld c, e                                          ; $71d8: $4b
	inc de                                           ; $71d9: $13
	ld b, [hl]                                       ; $71da: $46
	ld c, [hl]                                       ; $71db: $4e
	ld b, c                                          ; $71dc: $41
	ld b, h                                          ; $71dd: $44
	inc a                                            ; $71de: $3c
	ld d, b                                          ; $71df: $50
	and b                                            ; $71e0: $a0
	db $eb                                           ; $71e1: $eb
	ld e, l                                          ; $71e2: $5d
	inc [hl]                                         ; $71e3: $34
	ld b, [hl]                                       ; $71e4: $46

jr_08e_71e5:
	ld d, a                                          ; $71e5: $57
	ld d, e                                          ; $71e6: $53
	ld c, c                                          ; $71e7: $49
	add hl, sp                                       ; $71e8: $39
	xor b                                            ; $71e9: $a8
	ld c, d                                          ; $71ea: $4a
	ld c, a                                          ; $71eb: $4f
	inc [hl]                                         ; $71ec: $34
	ld l, a                                          ; $71ed: $6f
	db $ed                                           ; $71ee: $ed
	ld b, e                                          ; $71ef: $43
	xor h                                            ; $71f0: $ac
	xor $06                                          ; $71f1: $ee $06
	ld b, a                                          ; $71f3: $47
	ldh a, [hDisp1_SCY]                                     ; $71f4: $f0 $90
	ldh a, [$cb]                                     ; $71f6: $f0 $cb
	dec a                                            ; $71f8: $3d

jr_08e_71f9:
	jr c, jr_08e_725e                                ; $71f9: $38 $63

	and b                                            ; $71fb: $a0
	cpl                                              ; $71fc: $2f
	ld b, e                                          ; $71fd: $43
	ld b, b                                          ; $71fe: $40
	ld b, c                                          ; $71ff: $41
	ld a, [hl-]                                      ; $7200: $3a
	ld b, a                                          ; $7201: $47
	pop af                                           ; $7202: $f1
	ld d, $53                                        ; $7203: $16 $53
	ld a, [hl-]                                      ; $7205: $3a
	ld d, l                                          ; $7206: $55
	ccf                                              ; $7207: $3f
	ld c, a                                          ; $7208: $4f
	xor h                                            ; $7209: $ac
	db $ec                                           ; $720a: $ec
	ld c, $ac                                        ; $720b: $0e $ac
	pop af                                           ; $720d: $f1
	sbc e                                            ; $720e: $9b
	ld c, l                                          ; $720f: $4d
	ccf                                              ; $7210: $3f
	jr c, jr_08e_7270                                ; $7211: $38 $5d

	ld a, e                                          ; $7213: $7b
	jr c, jr_08e_724e                                ; $7214: $38 $38

	ld b, l                                          ; $7216: $45
	and b                                            ; $7217: $a0
	call c, Call_08e_40a8                            ; $7218: $dc $a8 $40
	add hl, sp                                       ; $721b: $39
	ld d, c                                          ; $721c: $51
	ld c, [hl]                                       ; $721d: $4e
	ld h, e                                          ; $721e: $63
	and b                                            ; $721f: $a0
	ld d, c                                          ; $7220: $51
	ld [hl], b                                       ; $7221: $70
	ld d, l                                          ; $7222: $55
	di                                               ; $7223: $f3
	ld c, [hl]                                       ; $7224: $4e
	ld l, [hl]                                       ; $7225: $6e
	inc a                                            ; $7226: $3c
	ld c, h                                          ; $7227: $4c
	and b                                            ; $7228: $a0
	cpl                                              ; $7229: $2f
	ld [$09d6], a                                    ; $722a: $ea $d6 $09
	cpl                                              ; $722d: $2f
	ld b, e                                          ; $722e: $43
	db $ed                                           ; $722f: $ed
	ld [de], a                                       ; $7230: $12
	inc de                                           ; $7231: $13
	ld d, c                                          ; $7232: $51
	ld [hl], b                                       ; $7233: $70
	ld d, l                                          ; $7234: $55
	db $ec                                           ; $7235: $ec
	ld c, a                                          ; $7236: $4f
	dec [hl]                                         ; $7237: $35
	ldh a, [$8a]                                     ; $7238: $f0 $8a
	ldh a, [rHDMA2]                                  ; $723a: $f0 $52
	jr c, jr_08e_7283                                ; $723c: $38 $45

	and b                                            ; $723e: $a0
	db $ed                                           ; $723f: $ed
	add c                                            ; $7240: $81
	db $ec                                           ; $7241: $ec
	sub e                                            ; $7242: $93
	inc [hl]                                         ; $7243: $34
	ldh a, [$29]                                     ; $7244: $f0 $29
	ld a, $38                                        ; $7246: $3e $38
	ld h, e                                          ; $7248: $63
	and b                                            ; $7249: $a0
	cpl                                              ; $724a: $2f
	ld [$09d7], a                                    ; $724b: $ea $d7 $09

jr_08e_724e:
	cpl                                              ; $724e: $2f
	ld b, e                                          ; $724f: $43
	or h                                             ; $7250: $b4
	xor h                                            ; $7251: $ac
	ld [$344f], a                                    ; $7252: $ea $4f $34
	db $ec                                           ; $7255: $ec
	inc c                                            ; $7256: $0c
	and c                                            ; $7257: $a1
	ld [$a883], a                                    ; $7258: $ea $83 $a8
	ld l, a                                          ; $725b: $6f
	xor $2d                                          ; $725c: $ee $2d

jr_08e_725e:
	jr c, jr_08e_729c                                ; $725e: $38 $3c

	ld d, b                                          ; $7260: $50
	xor h                                            ; $7261: $ac
	ld b, [hl]                                       ; $7262: $46
	ld a, [hl-]                                      ; $7263: $3a
	dec a                                            ; $7264: $3d
	ld l, [hl]                                       ; $7265: $6e
	dec sp                                           ; $7266: $3b
	ccf                                              ; $7267: $3f
	ld l, h                                          ; $7268: $6c
	ccf                                              ; $7269: $3f
	and b                                            ; $726a: $a0
	cpl                                              ; $726b: $2f
	ld b, e                                          ; $726c: $43
	xor $2d                                          ; $726d: $ee $2d
	xor h                                            ; $726f: $ac

jr_08e_7270:
	db $ec                                           ; $7270: $ec
	pop hl                                           ; $7271: $e1
	ld b, a                                          ; $7272: $47
	rst SubAFromDE                                          ; $7273: $df
	ld b, l                                          ; $7274: $45
	and b                                            ; $7275: $a0
	ld [$ac95], a                                    ; $7276: $ea $95 $ac
	ld b, [hl]                                       ; $7279: $46
	ld d, a                                          ; $727a: $57
	ld d, e                                          ; $727b: $53
	ld c, c                                          ; $727c: $49
	add hl, sp                                       ; $727d: $39
	xor b                                            ; $727e: $a8
	ldh a, [$29]                                     ; $727f: $f0 $29
	ld a, $38                                        ; $7281: $3e $38

jr_08e_7283:
	ld h, e                                          ; $7283: $63
	and b                                            ; $7284: $a0
	cpl                                              ; $7285: $2f
	ld b, e                                          ; $7286: $43
	or h                                             ; $7287: $b4
	xor h                                            ; $7288: $ac
	ldh a, [c]                                       ; $7289: $f2
	inc [hl]                                         ; $728a: $34
	ldh a, [c]                                       ; $728b: $f2
	ld h, d                                          ; $728c: $62
	ldh a, [rSB]                                     ; $728d: $f0 $01
	ld c, d                                          ; $728f: $4a
	ld c, a                                          ; $7290: $4f
	db $ec                                           ; $7291: $ec
	inc c                                            ; $7292: $0c
	and c                                            ; $7293: $a1
	ld c, d                                          ; $7294: $4a
	ld c, a                                          ; $7295: $4f
	inc [hl]                                         ; $7296: $34
	pop de                                           ; $7297: $d1
	pop af                                           ; $7298: $f1
	inc b                                            ; $7299: $04
	ld c, l                                          ; $729a: $4d
	ld a, [hl-]                                      ; $729b: $3a

jr_08e_729c:
	jr c, @+$4b                                      ; $729c: $38 $49

	inc de                                           ; $729e: $13
	ld [hl], a                                       ; $729f: $77
	add hl, sp                                       ; $72a0: $39
	ld h, e                                          ; $72a1: $63
	ld b, l                                          ; $72a2: $45
	and b                                            ; $72a3: $a0
	cpl                                              ; $72a4: $2f
	ld b, e                                          ; $72a5: $43
	pop af                                           ; $72a6: $f1
	inc b                                            ; $72a7: $04
	ld c, l                                          ; $72a8: $4d
	dec a                                            ; $72a9: $3d
	ld d, b                                          ; $72aa: $50
	db $ec                                           ; $72ab: $ec
	pop hl                                           ; $72ac: $e1
	ld b, a                                          ; $72ad: $47
	inc de                                           ; $72ae: $13
	rst SubAFromDE                                          ; $72af: $df
	ld c, h                                          ; $72b0: $4c
	and b                                            ; $72b1: $a0
	cpl                                              ; $72b2: $2f
	ld b, e                                          ; $72b3: $43
	xor $2d                                          ; $72b4: $ee $2d
	inc [hl]                                         ; $72b6: $34
	db $ec                                           ; $72b7: $ec
	pop hl                                           ; $72b8: $e1
	and b                                            ; $72b9: $a0
	ld [$ac95], a                                    ; $72ba: $ea $95 $ac
	ld b, [hl]                                       ; $72bd: $46
	ld d, a                                          ; $72be: $57
	ld d, e                                          ; $72bf: $53
	ld c, c                                          ; $72c0: $49
	add hl, sp                                       ; $72c1: $39
	xor b                                            ; $72c2: $a8
	ld l, a                                          ; $72c3: $6f
	ld c, a                                          ; $72c4: $4f
	ld l, e                                          ; $72c5: $6b
	inc a                                            ; $72c6: $3c
	ld l, [hl]                                       ; $72c7: $6e
	ld e, a                                          ; $72c8: $5f
	add hl, sp                                       ; $72c9: $39
	inc a                                            ; $72ca: $3c
	ld a, [hl-]                                      ; $72cb: $3a
	and b                                            ; $72cc: $a0
	cpl                                              ; $72cd: $2f
	ld b, e                                          ; $72ce: $43
	ld [hl], b                                       ; $72cf: $70
	ld [hl], c                                       ; $72d0: $71
	ld b, c                                          ; $72d1: $41
	ld c, b                                          ; $72d2: $48
	inc [hl]                                         ; $72d3: $34
	db $ec                                           ; $72d4: $ec
	pop hl                                           ; $72d5: $e1
	xor b                                            ; $72d6: $a8
	ld l, e                                          ; $72d7: $6b
	ld c, a                                          ; $72d8: $4f
	pop af                                           ; $72d9: $f1
	inc b                                            ; $72da: $04
	ld c, l                                          ; $72db: $4d
	ld a, [hl-]                                      ; $72dc: $3a
	inc a                                            ; $72dd: $3c
	dec sp                                           ; $72de: $3b
	dec a                                            ; $72df: $3d
	ld b, l                                          ; $72e0: $45
	and b                                            ; $72e1: $a0
	ldh a, [$3d]                                     ; $72e2: $f0 $3d
	ldh a, [rAUD3ENA]                                ; $72e4: $f0 $1a
	ldh a, [rAUD3ENA]                                ; $72e6: $f0 $1a
	xor h                                            ; $72e8: $ac
	pop af                                           ; $72e9: $f1
	ld h, e                                          ; $72ea: $63
	ld d, e                                          ; $72eb: $53
	ldh a, [$5c]                                     ; $72ec: $f0 $5c
	inc a                                            ; $72ee: $3c
	dec sp                                           ; $72ef: $3b
	ldh [$a0], a                                     ; $72f0: $e0 $a0
	cpl                                              ; $72f2: $2f
	ld b, e                                          ; $72f3: $43
	ld l, d                                          ; $72f4: $6a
	ldh a, [rAUD1HIGH]                               ; $72f5: $f0 $14
	ld c, e                                          ; $72f7: $4b
	xor h                                            ; $72f8: $ac
	jp hl                                            ; $72f9: $e9


	dec [hl]                                         ; $72fa: $35
	xor b                                            ; $72fb: $a8
	ld [$a038], a                                    ; $72fc: $ea $38 $a0
	db $ec                                           ; $72ff: $ec
	inc de                                           ; $7300: $13
	db $ed                                           ; $7301: $ed
	adc l                                            ; $7302: $8d
	ld b, h                                          ; $7303: $44
	dec sp                                           ; $7304: $3b
	dec a                                            ; $7305: $3d
	inc de                                           ; $7306: $13
	ld h, e                                          ; $7307: $63
	ld c, h                                          ; $7308: $4c
	and b                                            ; $7309: $a0
	cpl                                              ; $730a: $2f
	add sp, $2e                                      ; $730b: $e8 $2e
	add hl, bc                                       ; $730d: $09
	ld b, b                                          ; $730e: $40
	ld b, c                                          ; $730f: $41
	ld a, [hl-]                                      ; $7310: $3a
	ld b, d                                          ; $7311: $42
	inc de                                           ; $7312: $13
	ld a, [hl]                                       ; $7313: $7e
	ld d, l                                          ; $7314: $55
	ldh a, [$2d]                                     ; $7315: $f0 $2d
	dec sp                                           ; $7317: $3b
	ccf                                              ; $7318: $3f
	ld c, [hl]                                       ; $7319: $4e
	ld h, e                                          ; $731a: $63
	ld c, h                                          ; $731b: $4c
	and b                                            ; $731c: $a0
	cpl                                              ; $731d: $2f
	add sp, -$25                                     ; $731e: $e8 $db
	add hl, bc                                       ; $7320: $09
	db $ec                                           ; $7321: $ec
	scf                                              ; $7322: $37
	xor c                                            ; $7323: $a9
	db $f4                                           ; $7324: $f4
	ld [bc], a                                       ; $7325: $02
	ldh a, [$7f]                                     ; $7326: $f0 $7f
	ld d, e                                          ; $7328: $53
	db $ed                                           ; $7329: $ed
	ld e, [hl]                                       ; $732a: $5e
	ldh a, [$f5]                                     ; $732b: $f0 $f5
	add hl, sp                                       ; $732d: $39
	ld h, e                                          ; $732e: $63
	ld b, l                                          ; $732f: $45
	and b                                            ; $7330: $a0
	cpl                                              ; $7331: $2f
	jp hl                                            ; $7332: $e9


	or a                                             ; $7333: $b7
	add hl, bc                                       ; $7334: $09
	ld b, b                                          ; $7335: $40
	add hl, sp                                       ; $7336: $39
	add d                                            ; $7337: $82
	add hl, sp                                       ; $7338: $39
	ld c, c                                          ; $7339: $49
	inc [hl]                                         ; $733a: $34
	ld [hl], a                                       ; $733b: $77
	dec sp                                           ; $733c: $3b
	dec a                                            ; $733d: $3d
	ld h, e                                          ; $733e: $63
	and b                                            ; $733f: $a0
	ld b, b                                          ; $7340: $40
	ld c, l                                          ; $7341: $4d
	ld e, e                                          ; $7342: $5b
	ld d, [hl]                                       ; $7343: $56
	inc [hl]                                         ; $7344: $34
	db $ec                                           ; $7345: $ec
	push bc                                          ; $7346: $c5
	inc de                                           ; $7347: $13
	ldh a, [rAUD2HIGH]                               ; $7348: $f0 $19
	ld b, a                                          ; $734a: $47
	sub [hl]                                         ; $734b: $96
	ld d, a                                          ; $734c: $57
	ld d, d                                          ; $734d: $52
	ld a, $66                                        ; $734e: $3e $66
	add hl, sp                                       ; $7350: $39
	and b                                            ; $7351: $a0
	add hl, sp                                       ; $7352: $39
	ld d, d                                          ; $7353: $52
	ld d, l                                          ; $7354: $55
	pop af                                           ; $7355: $f1
	ld e, e                                          ; $7356: $5b
	ld c, l                                          ; $7357: $4d
	ld c, [hl]                                       ; $7358: $4e
	ld b, d                                          ; $7359: $42
	and c                                            ; $735a: $a1
	cpl                                              ; $735b: $2f
	add sp, $39                                      ; $735c: $e8 $39
	add hl, bc                                       ; $735e: $09
	ld [$34da], a                                    ; $735f: $ea $da $34
	db $ec                                           ; $7362: $ec
	cp c                                             ; $7363: $b9
	xor b                                            ; $7364: $a8
	ld b, b                                          ; $7365: $40
	ld c, l                                          ; $7366: $4d
	ld e, e                                          ; $7367: $5b
	ld d, [hl]                                       ; $7368: $56
	inc [hl]                                         ; $7369: $34
	db $ec                                           ; $736a: $ec
	db $ed                                           ; $736b: $ed
	ld c, h                                          ; $736c: $4c
	and b                                            ; $736d: $a0
	cpl                                              ; $736e: $2f
	db $eb                                           ; $736f: $eb
	sub e                                            ; $7370: $93
	xor h                                            ; $7371: $ac
	add sp, -$6e                                     ; $7372: $e8 $92
	xor b                                            ; $7374: $a8
	db $eb                                           ; $7375: $eb
	sub h                                            ; $7376: $94
	pop af                                           ; $7377: $f1
	ld e, e                                          ; $7378: $5b
	ld c, l                                          ; $7379: $4d
	ld a, [hl-]                                      ; $737a: $3a
	jr c, @+$43                                      ; $737b: $38 $41

	ld b, h                                          ; $737d: $44
	and e                                            ; $737e: $a3
	cpl                                              ; $737f: $2f
	add sp, $44                                      ; $7380: $e8 $44
	ld c, b                                          ; $7382: $48
	add hl, bc                                       ; $7383: $09
	ld e, [hl]                                       ; $7384: $5e
	dec sp                                           ; $7385: $3b
	xor c                                            ; $7386: $a9
	db $ed                                           ; $7387: $ed
	daa                                              ; $7388: $27
	inc [hl]                                         ; $7389: $34
	ld a, [hl-]                                      ; $738a: $3a
	adc l                                            ; $738b: $8d
	xor c                                            ; $738c: $a9
	ld l, e                                          ; $738d: $6b
	ld d, e                                          ; $738e: $53
	di                                               ; $738f: $f3
	rst GetHLinHL                                          ; $7390: $cf
	di                                               ; $7391: $f3
	ret nc                                           ; $7392: $d0

	ld a, [hl-]                                      ; $7393: $3a
	ld b, d                                          ; $7394: $42
	and c                                            ; $7395: $a1
	cpl                                              ; $7396: $2f
	add sp, -$55                                     ; $7397: $e8 $ab
	add hl, bc                                       ; $7399: $09
	ld b, b                                          ; $739a: $40
	ld c, l                                          ; $739b: $4d
	ld e, e                                          ; $739c: $5b
	ld d, [hl]                                       ; $739d: $56
	xor h                                            ; $739e: $ac
	xor $06                                          ; $739f: $ee $06
	ld b, a                                          ; $73a1: $47
	xor $19                                          ; $73a2: $ee $19
	ld a, $45                                        ; $73a4: $3e $45
	dec sp                                           ; $73a6: $3b
	inc a                                            ; $73a7: $3c
	and c                                            ; $73a8: $a1
	ldh a, [$c3]                                     ; $73a9: $f0 $c3
	ld e, c                                          ; $73ab: $59
	scf                                              ; $73ac: $37
	db $eb                                           ; $73ad: $eb
	sub l                                            ; $73ae: $95
	xor h                                            ; $73af: $ac
	sbc l                                            ; $73b0: $9d
	ld a, $66                                        ; $73b1: $3e $66
	sbc l                                            ; $73b3: $9d
	ld a, $66                                        ; $73b4: $3e $66
	ld c, h                                          ; $73b6: $4c
	and b                                            ; $73b7: $a0
	cpl                                              ; $73b8: $2f
	ldh a, [$08]                                     ; $73b9: $f0 $08
	ld d, b                                          ; $73bb: $50
	inc [hl]                                         ; $73bc: $34
	ldh a, [$0b]                                     ; $73bd: $f0 $0b
	ld b, a                                          ; $73bf: $47
	add b                                            ; $73c0: $80
	inc a                                            ; $73c1: $3c
	ld d, d                                          ; $73c2: $52
	dec sp                                           ; $73c3: $3b
	ccf                                              ; $73c4: $3f
	add hl, bc                                       ; $73c5: $09
	db $eb                                           ; $73c6: $eb
	ld e, l                                          ; $73c7: $5d
	inc [hl]                                         ; $73c8: $34
	ld b, [hl]                                       ; $73c9: $46
	ld d, a                                          ; $73ca: $57
	ld d, e                                          ; $73cb: $53
	ld c, c                                          ; $73cc: $49
	add hl, sp                                       ; $73cd: $39
	xor b                                            ; $73ce: $a8
	pop af                                           ; $73cf: $f1
	jp hl                                            ; $73d0: $e9


	inc a                                            ; $73d1: $3c
	ld c, [hl]                                       ; $73d2: $4e
	ld h, e                                          ; $73d3: $63
	and b                                            ; $73d4: $a0
	cpl                                              ; $73d5: $2f
	pop af                                           ; $73d6: $f1
	ld a, [de]                                       ; $73d7: $1a
	pop af                                           ; $73d8: $f1
	inc c                                            ; $73d9: $0c
	pop af                                           ; $73da: $f1
	ld [hl], $41                                     ; $73db: $36 $41
	ld c, d                                          ; $73dd: $4a
	inc [hl]                                         ; $73de: $34
	ldh a, [rKEY1]                                   ; $73df: $f0 $4d
	ld a, $66                                        ; $73e1: $3e $66
	di                                               ; $73e3: $f3
	cp c                                             ; $73e4: $b9
	ld c, l                                          ; $73e5: $4d
	ld b, h                                          ; $73e6: $44
	add hl, bc                                       ; $73e7: $09
	jp hl                                            ; $73e8: $e9


	db $e4                                           ; $73e9: $e4
	xor b                                            ; $73ea: $a8
	ld b, b                                          ; $73eb: $40
	ld b, c                                          ; $73ec: $41
	ld a, [hl-]                                      ; $73ed: $3a
	db $eb                                           ; $73ee: $eb
	ld c, $13                                        ; $73ef: $0e $13
	inc a                                            ; $73f1: $3c
	ld e, l                                          ; $73f2: $5d
	ld a, [hl-]                                      ; $73f3: $3a
	jr c, jr_08e_7440                                ; $73f4: $38 $4a

	ld b, l                                          ; $73f6: $45
	and b                                            ; $73f7: $a0
	cpl                                              ; $73f8: $2f
	pop af                                           ; $73f9: $f1
	ld [hl], $7b                                     ; $73fa: $36 $7b
	ld a, [hl-]                                      ; $73fc: $3a
	ld e, l                                          ; $73fd: $5d
	ld c, l                                          ; $73fe: $4d
	ld a, e                                          ; $73ff: $7b
	jr c, @+$3a                                      ; $7400: $38 $38

	ld b, h                                          ; $7402: $44
	ld e, l                                          ; $7403: $5d
	ld b, h                                          ; $7404: $44
	ld b, l                                          ; $7405: $45
	add hl, bc                                       ; $7406: $09
	ld b, b                                          ; $7407: $40
	ld c, l                                          ; $7408: $4d
	ld c, e                                          ; $7409: $4b
	inc [hl]                                         ; $740a: $34
	ld [$a030], a                                    ; $740b: $ea $30 $a0
	add hl, bc                                       ; $740e: $09
	db $ed                                           ; $740f: $ed
	ld d, a                                          ; $7410: $57
	xor h                                            ; $7411: $ac
	ldh a, [$9a]                                     ; $7412: $f0 $9a
	ld e, h                                          ; $7414: $5c
	ldh a, [rTMA]                                    ; $7415: $f0 $06
	dec sp                                           ; $7417: $3b
	ccf                                              ; $7418: $3f
	ld d, l                                          ; $7419: $55
	ld c, l                                          ; $741a: $4d
	ccf                                              ; $741b: $3f
	xor h                                            ; $741c: $ac
	db $eb                                           ; $741d: $eb
	ld e, l                                          ; $741e: $5d
	inc [hl]                                         ; $741f: $34
	ld b, [hl]                                       ; $7420: $46
	ld d, a                                          ; $7421: $57
	ld d, e                                          ; $7422: $53
	ld c, c                                          ; $7423: $49
	add hl, sp                                       ; $7424: $39
	and b                                            ; $7425: $a0
	cpl                                              ; $7426: $2f
	ld b, e                                          ; $7427: $43
	ld l, d                                          ; $7428: $6a
	ldh a, [$0d]                                     ; $7429: $f0 $0d
	ld c, e                                          ; $742b: $4b
	inc [hl]                                         ; $742c: $34
	halt                                             ; $742d: $76
	inc a                                            ; $742e: $3c
	ld d, b                                          ; $742f: $50
	inc de                                           ; $7430: $13
	ldh a, [$3b]                                     ; $7431: $f0 $3b
	dec sp                                           ; $7433: $3b
	ccf                                              ; $7434: $3f
	db $ec                                           ; $7435: $ec
	ld a, [bc]                                       ; $7436: $0a
	and c                                            ; $7437: $a1
	call c, $38a8                                    ; $7438: $dc $a8 $38
	add b                                            ; $743b: $80
	ld c, d                                          ; $743c: $4a
	ld c, a                                          ; $743d: $4f
	ret nc                                           ; $743e: $d0

	and b                                            ; $743f: $a0

jr_08e_7440:
	call c, $d0a8                                    ; $7440: $dc $a8 $d0
	and b                                            ; $7443: $a0
	cpl                                              ; $7444: $2f
	ld b, e                                          ; $7445: $43
	ld e, e                                          ; $7446: $5b
	ld d, [hl]                                       ; $7447: $56
	ld b, [hl]                                       ; $7448: $46
	inc [hl]                                         ; $7449: $34
	ld b, b                                          ; $744a: $40
	add hl, sp                                       ; $744b: $39
	ld d, c                                          ; $744c: $51
	ld c, [hl]                                       ; $744d: $4e
	ld b, l                                          ; $744e: $45
	and b                                            ; $744f: $a0
	db $ec                                           ; $7450: $ec
	rst AddAOntoHL                                          ; $7451: $ef
	ld c, a                                          ; $7452: $4f
	xor h                                            ; $7453: $ac
	ld d, h                                          ; $7454: $54
	ld d, h                                          ; $7455: $54
	ld b, h                                          ; $7456: $44
	dec sp                                           ; $7457: $3b
	dec a                                            ; $7458: $3d
	ld h, e                                          ; $7459: $63
	ld b, l                                          ; $745a: $45
	ld c, h                                          ; $745b: $4c
	xor b                                            ; $745c: $a8
	db $ec                                           ; $745d: $ec
	reti                                             ; $745e: $d9


	ldh a, [c]                                       ; $745f: $f2
	ld a, [hl]                                       ; $7460: $7e
	ld e, h                                          ; $7461: $5c
	ld h, c                                          ; $7462: $61
	ld d, [hl]                                       ; $7463: $56
	add hl, sp                                       ; $7464: $39
	ld c, h                                          ; $7465: $4c
	and b                                            ; $7466: $a0
	cpl                                              ; $7467: $2f
	ld b, e                                          ; $7468: $43
	ld [$36af], a                                    ; $7469: $ea $af $36
	rla                                              ; $746c: $17
	add sp, $50                                      ; $746d: $e8 $50
	inc de                                           ; $746f: $13
	add sp, -$7a                                     ; $7470: $e8 $86
	and e                                            ; $7472: $a3
	db $ed                                           ; $7473: $ed
	add c                                            ; $7474: $81
	inc [hl]                                         ; $7475: $34
	ldh a, [$8e]                                     ; $7476: $f0 $8e
	pop af                                           ; $7478: $f1
	ld c, l                                          ; $7479: $4d
	ld h, l                                          ; $747a: $65
	xor b                                            ; $747b: $a8
	ld c, c                                          ; $747c: $49
	ccf                                              ; $747d: $3f
	ld c, a                                          ; $747e: $4f
	ld [$a8b7], a                                    ; $747f: $ea $b7 $a8
	ld d, d                                          ; $7482: $52
	dec a                                            ; $7483: $3d
	ld l, d                                          ; $7484: $6a
	ldh a, [$0d]                                     ; $7485: $f0 $0d
	ldh a, [$3b]                                     ; $7487: $f0 $3b
	dec sp                                           ; $7489: $3b
	ccf                                              ; $748a: $3f
	ld c, h                                          ; $748b: $4c
	and b                                            ; $748c: $a0
	db $ed                                           ; $748d: $ed
	add c                                            ; $748e: $81
	inc [hl]                                         ; $748f: $34
	ldh a, [$8e]                                     ; $7490: $f0 $8e
	pop af                                           ; $7492: $f1
	ld c, l                                          ; $7493: $4d
	ld h, l                                          ; $7494: $65
	xor b                                            ; $7495: $a8
	ld [$a8b7], a                                    ; $7496: $ea $b7 $a8
	ld d, d                                          ; $7499: $52
	dec a                                            ; $749a: $3d
	ld l, d                                          ; $749b: $6a
	ldh a, [$0d]                                     ; $749c: $f0 $0d
	ldh a, [$3b]                                     ; $749e: $f0 $3b
	dec sp                                           ; $74a0: $3b
	ccf                                              ; $74a1: $3f
	ld c, h                                          ; $74a2: $4c
	and b                                            ; $74a3: $a0
	db $ed                                           ; $74a4: $ed
	ld d, a                                          ; $74a5: $57

jr_08e_74a6:
	inc de                                           ; $74a6: $13
	db $eb                                           ; $74a7: $eb
	jr c, jr_08e_7507                                ; $74a8: $38 $5d

	ld e, d                                          ; $74aa: $5a
	xor h                                            ; $74ab: $ac
	ld d, d                                          ; $74ac: $52
	dec a                                            ; $74ad: $3d
	ld l, d                                          ; $74ae: $6a
	ldh a, [$0d]                                     ; $74af: $f0 $0d
	ldh a, [$3b]                                     ; $74b1: $f0 $3b
	dec sp                                           ; $74b3: $3b
	ccf                                              ; $74b4: $3f
	ld c, h                                          ; $74b5: $4c
	and b                                            ; $74b6: $a0
	cpl                                              ; $74b7: $2f
	ld b, e                                          ; $74b8: $43
	ld [$a8c3], a                                    ; $74b9: $ea $c3 $a8
	jp hl                                            ; $74bc: $e9


	ld b, [hl]                                       ; $74bd: $46
	and b                                            ; $74be: $a0
	db $ed                                           ; $74bf: $ed
	add c                                            ; $74c0: $81
	inc [hl]                                         ; $74c1: $34
	ldh a, [$8e]                                     ; $74c2: $f0 $8e
	pop af                                           ; $74c4: $f1
	ld c, l                                          ; $74c5: $4d
	ld h, l                                          ; $74c6: $65
	xor b                                            ; $74c7: $a8
	ld c, c                                          ; $74c8: $49
	ccf                                              ; $74c9: $3f
	ld c, a                                          ; $74ca: $4f
	ld [$4cb7], a                                    ; $74cb: $ea $b7 $4c
	xor b                                            ; $74ce: $a8
	ld d, d                                          ; $74cf: $52

jr_08e_74d0:
	dec a                                            ; $74d0: $3d
	ld l, d                                          ; $74d1: $6a
	ldh a, [$0d]                                     ; $74d2: $f0 $0d
	ldh a, [$3b]                                     ; $74d4: $f0 $3b
	dec sp                                           ; $74d6: $3b
	ccf                                              ; $74d7: $3f
	ld c, h                                          ; $74d8: $4c
	and b                                            ; $74d9: $a0
	cpl                                              ; $74da: $2f
	ld b, e                                          ; $74db: $43
	jp hl                                            ; $74dc: $e9


	ld b, [hl]                                       ; $74dd: $46
	and b                                            ; $74de: $a0
	db $ed                                           ; $74df: $ed
	add c                                            ; $74e0: $81
	inc [hl]                                         ; $74e1: $34
	ldh a, [$8e]                                     ; $74e2: $f0 $8e
	pop af                                           ; $74e4: $f1
	ld c, l                                          ; $74e5: $4d
	ld h, l                                          ; $74e6: $65
	xor b                                            ; $74e7: $a8
	db $ed                                           ; $74e8: $ed
	ld d, a                                          ; $74e9: $57
	ld [$4cb7], a                                    ; $74ea: $ea $b7 $4c
	xor b                                            ; $74ed: $a8
	ld d, d                                          ; $74ee: $52
	dec a                                            ; $74ef: $3d
	ld l, d                                          ; $74f0: $6a
	ldh a, [$0d]                                     ; $74f1: $f0 $0d
	ldh a, [$3b]                                     ; $74f3: $f0 $3b
	dec sp                                           ; $74f5: $3b
	ccf                                              ; $74f6: $3f
	ld c, h                                          ; $74f7: $4c
	and b                                            ; $74f8: $a0
	db $ed                                           ; $74f9: $ed
	add c                                            ; $74fa: $81
	inc [hl]                                         ; $74fb: $34
	db $eb                                           ; $74fc: $eb
	sub $a8                                          ; $74fd: $d6 $a8
	db $ed                                           ; $74ff: $ed
	ld d, a                                          ; $7500: $57
	ret                                              ; $7501: $c9


	inc de                                           ; $7502: $13
	db $eb                                           ; $7503: $eb
	jr c, jr_08e_74a6                                ; $7504: $38 $a0

	cpl                                              ; $7506: $2f

jr_08e_7507:
	ld b, e                                          ; $7507: $43
	rst JumpTable                                          ; $7508: $c7
	ld c, b                                          ; $7509: $48
	and b                                            ; $750a: $a0
	ld c, c                                          ; $750b: $49
	ccf                                              ; $750c: $3f
	ld c, a                                          ; $750d: $4f
	ld [$a8b7], a                                    ; $750e: $ea $b7 $a8
	ld d, d                                          ; $7511: $52
	dec a                                            ; $7512: $3d
	ld l, d                                          ; $7513: $6a
	ldh a, [$0d]                                     ; $7514: $f0 $0d
	ldh a, [$3b]                                     ; $7516: $f0 $3b
	dec sp                                           ; $7518: $3b
	ccf                                              ; $7519: $3f
	ld c, h                                          ; $751a: $4c
	and b                                            ; $751b: $a0
	db $ed                                           ; $751c: $ed
	ld d, a                                          ; $751d: $57
	ld [$a0b7], a                                    ; $751e: $ea $b7 $a0
	cpl                                              ; $7521: $2f
	ld b, e                                          ; $7522: $43
	ld b, b                                          ; $7523: $40
	add hl, sp                                       ; $7524: $39
	inc [hl]                                         ; $7525: $34
	db $ec                                           ; $7526: $ec
	cp c                                             ; $7527: $b9
	and b                                            ; $7528: $a0
	db $ed                                           ; $7529: $ed
	ld d, a                                          ; $752a: $57
	ret                                              ; $752b: $c9


	inc de                                           ; $752c: $13
	db $eb                                           ; $752d: $eb
	jr c, jr_08e_74d0                                ; $752e: $38 $a0

	pop af                                           ; $7530: $f1
	ld d, h                                          ; $7531: $54
	add e                                            ; $7532: $83
	ldh a, [$60]                                     ; $7533: $f0 $60
	ld a, l                                          ; $7535: $7d
	sub e                                            ; $7536: $93
	xor h                                            ; $7537: $ac
	ldh a, [rHDMA5]                                  ; $7538: $f0 $55
	pop af                                           ; $753a: $f1
	add b                                            ; $753b: $80
	ld b, h                                          ; $753c: $44
	dec sp                                           ; $753d: $3b
	dec a                                            ; $753e: $3d
	ld h, e                                          ; $753f: $63
	xor b                                            ; $7540: $a8
	ld a, b                                          ; $7541: $78
	ld a, [hl-]                                      ; $7542: $3a
	ld e, l                                          ; $7543: $5d
	ld c, l                                          ; $7544: $4d
	ld a, e                                          ; $7545: $7b
	ld b, l                                          ; $7546: $45
	inc a                                            ; $7547: $3c
	dec sp                                           ; $7548: $3b
	dec a                                            ; $7549: $3d
	ld c, b                                          ; $754a: $48
	and b                                            ; $754b: $a0
	cpl                                              ; $754c: $2f
	ld b, e                                          ; $754d: $43
	xor $10                                          ; $754e: $ee $10
	xor $10                                          ; $7550: $ee $10
	xor b                                            ; $7552: $a8
	add sp, -$72                                     ; $7553: $e8 $8e
	and e                                            ; $7555: $a3
	ld b, b                                          ; $7556: $40
	add hl, sp                                       ; $7557: $39
	ld b, h                                          ; $7558: $44
	ld c, b                                          ; $7559: $48
	and b                                            ; $755a: $a0
	cpl                                              ; $755b: $2f
	ld b, e                                          ; $755c: $43
	db $eb                                           ; $755d: $eb
	rst FarCall                                          ; $755e: $f7
	and c                                            ; $755f: $a1
	cpl                                              ; $7560: $2f
	ld b, e                                          ; $7561: $43
	ld b, [hl]                                       ; $7562: $46
	ld d, a                                          ; $7563: $57
	ld d, e                                          ; $7564: $53
	ld c, c                                          ; $7565: $49
	add hl, sp                                       ; $7566: $39
	xor b                                            ; $7567: $a8
	ldh a, [$29]                                     ; $7568: $f0 $29
	ld a, $38                                        ; $756a: $3e $38
	ld b, l                                          ; $756c: $45
	xor b                                            ; $756d: $a8
	ld [hl-], a                                      ; $756e: $32
	db $ec                                           ; $756f: $ec
	pop hl                                           ; $7570: $e1
	ld b, a                                          ; $7571: $47
	db $eb                                           ; $7572: $eb
	dec a                                            ; $7573: $3d
	inc de                                           ; $7574: $13
	ld c, a                                          ; $7575: $4f
	ld d, b                                          ; $7576: $50
	ld e, [hl]                                       ; $7577: $5e
	ld c, [hl]                                       ; $7578: $4e
	ld a, [hl-]                                      ; $7579: $3a
	ld b, c                                          ; $757a: $41
	ccf                                              ; $757b: $3f
	xor h                                            ; $757c: $ac
	halt                                             ; $757d: $76
	ld c, e                                          ; $757e: $4b
	pop af                                           ; $757f: $f1
	and d                                            ; $7580: $a2
	ld a, c                                          ; $7581: $79
	pop af                                           ; $7582: $f1
	ld b, d                                          ; $7583: $42
	ld b, h                                          ; $7584: $44
	ld e, c                                          ; $7585: $59
	scf                                              ; $7586: $37
	inc sp                                           ; $7587: $33
	add hl, bc                                       ; $7588: $09
	ld e, b                                          ; $7589: $58
	ld b, [hl]                                       ; $758a: $46
	inc [hl]                                         ; $758b: $34
	or b                                             ; $758c: $b0
	xor b                                            ; $758d: $a8
	ld d, $a0                                        ; $758e: $16 $a0
	ld b, b                                          ; $7590: $40
	ld c, l                                          ; $7591: $4d
	ld e, e                                          ; $7592: $5b
	ld d, [hl]                                       ; $7593: $56
	xor h                                            ; $7594: $ac
	or b                                             ; $7595: $b0
	xor b                                            ; $7596: $a8
	ld d, $a0                                        ; $7597: $16 $a0
	ld b, b                                          ; $7599: $40
	ld c, l                                          ; $759a: $4d
	ld e, e                                          ; $759b: $5b
	ld d, [hl]                                       ; $759c: $56
	and b                                            ; $759d: $a0
	add hl, bc                                       ; $759e: $09
	xor $10                                          ; $759f: $ee $10
	and b                                            ; $75a1: $a0
	cpl                                              ; $75a2: $2f
	ld b, e                                          ; $75a3: $43
	ld h, h                                          ; $75a4: $64
	ld e, c                                          ; $75a5: $59
	jr c, jr_08e_75dc                                ; $75a6: $38 $34

	ldh a, [$b3]                                     ; $75a8: $f0 $b3
	ld e, b                                          ; $75aa: $58
	ld e, c                                          ; $75ab: $59
	ld b, c                                          ; $75ac: $41
	xor b                                            ; $75ad: $a8
	sbc c                                            ; $75ae: $99
	dec sp                                           ; $75af: $3b
	ccf                                              ; $75b0: $3f
	ld d, l                                          ; $75b1: $55
	ld c, l                                          ; $75b2: $4d
	ld e, c                                          ; $75b3: $59
	and b                                            ; $75b4: $a0
	cpl                                              ; $75b5: $2f
	ld b, e                                          ; $75b6: $43
	db $ec                                           ; $75b7: $ec
	reti                                             ; $75b8: $d9


	xor h                                            ; $75b9: $ac
	ld d, h                                          ; $75ba: $54
	ld b, d                                          ; $75bb: $42
	pop af                                           ; $75bc: $f1
	ld de, $573a                                     ; $75bd: $11 $3a $57
	ld e, e                                          ; $75c0: $5b
	ld d, [hl]                                       ; $75c1: $56
	xor h                                            ; $75c2: $ac
	ldh a, [$e1]                                     ; $75c3: $f0 $e1
	ldh a, [rSB]                                     ; $75c5: $f0 $01
	ld d, b                                          ; $75c7: $50
	ld c, l                                          ; $75c8: $4d
	ld c, [hl]                                       ; $75c9: $4e
	ld b, l                                          ; $75ca: $45
	ld a, [hl-]                                      ; $75cb: $3a
	ld [hl], h                                       ; $75cc: $74
	and b                                            ; $75cd: $a0
	cpl                                              ; $75ce: $2f
	ld b, e                                          ; $75cf: $43
	db $eb                                           ; $75d0: $eb
	inc [hl]                                         ; $75d1: $34
	xor h                                            ; $75d2: $ac
	ldh a, [rSVBK]                                   ; $75d3: $f0 $70
	ld b, a                                          ; $75d5: $47
	db $ed                                           ; $75d6: $ed
	ld e, b                                          ; $75d7: $58
	and b                                            ; $75d8: $a0
	cpl                                              ; $75d9: $2f
	ld b, e                                          ; $75da: $43
	db $ed                                           ; $75db: $ed

jr_08e_75dc:
	ld d, e                                          ; $75dc: $53
	ld c, e                                          ; $75dd: $4b
	xor h                                            ; $75de: $ac
	ld c, c                                          ; $75df: $49
	add hl, sp                                       ; $75e0: $39
	ld c, c                                          ; $75e1: $49
	add hl, sp                                       ; $75e2: $39
	ld a, b                                          ; $75e3: $78
	ld a, [hl-]                                      ; $75e4: $3a
	inc a                                            ; $75e5: $3c
	dec sp                                           ; $75e6: $3b
	dec a                                            ; $75e7: $3d
	ld a, [hl-]                                      ; $75e8: $3a
	and b                                            ; $75e9: $a0
	cpl                                              ; $75ea: $2f
	ld b, e                                          ; $75eb: $43
	ld e, d                                          ; $75ec: $5a
	add hl, sp                                       ; $75ed: $39
	ld a, $3d                                        ; $75ee: $3e $3d
	ld b, c                                          ; $75f0: $41
	ld b, h                                          ; $75f1: $44
	ld e, a                                          ; $75f2: $5f
	add hl, sp                                       ; $75f3: $39
	xor c                                            ; $75f4: $a9
	db $eb                                           ; $75f5: $eb
	inc [hl]                                         ; $75f6: $34
	xor h                                            ; $75f7: $ac
	ldh a, [rSVBK]                                   ; $75f8: $f0 $70
	ld b, a                                          ; $75fa: $47
	db $ed                                           ; $75fb: $ed
	ld e, b                                          ; $75fc: $58
	and b                                            ; $75fd: $a0
	cpl                                              ; $75fe: $2f
	ld b, e                                          ; $75ff: $43
	db $ed                                           ; $7600: $ed
	ld d, e                                          ; $7601: $53
	inc [hl]                                         ; $7602: $34
	ld [hl], b                                       ; $7603: $70
	ld [hl], c                                       ; $7604: $71
	ld b, c                                          ; $7605: $41
	ld c, h                                          ; $7606: $4c
	xor b                                            ; $7607: $a8
	add sp, -$21                                     ; $7608: $e8 $df
	xor h                                            ; $760a: $ac
	jp hl                                            ; $760b: $e9


	xor [hl]                                         ; $760c: $ae
	and b                                            ; $760d: $a0
	ld l, d                                          ; $760e: $6a
	ldh a, [$d3]                                     ; $760f: $f0 $d3
	ld b, h                                          ; $7611: $44
	ld e, l                                          ; $7612: $5d
	ld c, e                                          ; $7613: $4b
	xor h                                            ; $7614: $ac
	sbc c                                            ; $7615: $99
	dec sp                                           ; $7616: $3b
	ccf                                              ; $7617: $3f
	ld b, [hl]                                       ; $7618: $46
	ldh a, [rSB]                                     ; $7619: $f0 $01
	dec a                                            ; $761b: $3d
	ld h, e                                          ; $761c: $63
	xor b                                            ; $761d: $a8
	ld c, a                                          ; $761e: $4f
	add hl, sp                                       ; $761f: $39
	inc [hl]                                         ; $7620: $34
	ldh a, [$d6]                                     ; $7621: $f0 $d6
	ld c, e                                          ; $7623: $4b
	ld a, [hl-]                                      ; $7624: $3a
	ld d, l                                          ; $7625: $55
	ccf                                              ; $7626: $3f
	ld b, l                                          ; $7627: $45
	and b                                            ; $7628: $a0
	cpl                                              ; $7629: $2f
	ld b, e                                          ; $762a: $43
	ld [hl], b                                       ; $762b: $70
	ld [hl], c                                       ; $762c: $71
	ld b, c                                          ; $762d: $41
	ld c, h                                          ; $762e: $4c

jr_08e_762f:
	and b                                            ; $762f: $a0
	ldh a, [$c7]                                     ; $7630: $f0 $c7
	jr c, jr_08e_7697                                ; $7632: $38 $63

	ld c, h                                          ; $7634: $4c
	xor b                                            ; $7635: $a8
	ld d, h                                          ; $7636: $54
	ld b, d                                          ; $7637: $42
	ld l, a                                          ; $7638: $6f
	ld h, d                                          ; $7639: $62
	sbc c                                            ; $763a: $99
	dec a                                            ; $763b: $3d
	ld a, c                                          ; $763c: $79
	ld c, [hl]                                       ; $763d: $4e
	ld a, [hl-]                                      ; $763e: $3a
	ld b, c                                          ; $763f: $41
	ccf                                              ; $7640: $3f
	xor h                                            ; $7641: $ac
	ld l, l                                          ; $7642: $6d
	ldh a, [$65]                                     ; $7643: $f0 $65
	ld e, d                                          ; $7645: $5a
	add hl, sp                                       ; $7646: $39
	jr c, jr_08e_7682                                ; $7647: $38 $39

	add b                                            ; $7649: $80
	ld c, a                                          ; $764a: $4f
	ld d, a                                          ; $764b: $57
	and c                                            ; $764c: $a1
	cpl                                              ; $764d: $2f
	ld b, e                                          ; $764e: $43
	db $eb                                           ; $764f: $eb
	ccf                                              ; $7650: $3f
	xor b                                            ; $7651: $a8
	ld c, a                                          ; $7652: $4f
	add hl, sp                                       ; $7653: $39
	ldh a, [hDisp0_SCX]                                     ; $7654: $f0 $84
	ldh a, [$0d]                                     ; $7656: $f0 $0d
	ld c, c                                          ; $7658: $49
	ld a, $52                                        ; $7659: $3e $52
	ld a, c                                          ; $765b: $79
	ld b, c                                          ; $765c: $41
	and b                                            ; $765d: $a0
	cpl                                              ; $765e: $2f
	ld b, e                                          ; $765f: $43
	db $ed                                           ; $7660: $ed
	ld d, e                                          ; $7661: $53
	inc [hl]                                         ; $7662: $34
	ldh a, [$c7]                                     ; $7663: $f0 $c7
	jr c, jr_08e_76a1                                ; $7665: $38 $3a

	xor b                                            ; $7667: $a8
	ld c, b                                          ; $7668: $48
	ld c, a                                          ; $7669: $4f
	ld a, $3c                                        ; $766a: $3e $3c
	ld a, $3f                                        ; $766c: $3e $3f
	inc [hl]                                         ; $766e: $34
	ldh a, [$30]                                     ; $766f: $f0 $30
	ldh a, [$28]                                     ; $7671: $f0 $28
	ld h, d                                          ; $7673: $62
	inc de                                           ; $7674: $13
	ldh a, [$2a]                                     ; $7675: $f0 $2a
	ldh a, [$f5]                                     ; $7677: $f0 $f5
	ld e, [hl]                                       ; $7679: $5e
	dec a                                            ; $767a: $3d
	inc a                                            ; $767b: $3c
	ld a, [hl-]                                      ; $767c: $3a
	and c                                            ; $767d: $a1
	cpl                                              ; $767e: $2f
	ld b, e                                          ; $767f: $43
	ld a, $3c                                        ; $7680: $3e $3c

jr_08e_7682:
	dec a                                            ; $7682: $3d

jr_08e_7683:
	ld d, e                                          ; $7683: $53
	ld a, [hl-]                                      ; $7684: $3a
	jr c, jr_08e_762f                                ; $7685: $38 $a8

	db $ed                                           ; $7687: $ed
	ld e, b                                          ; $7688: $58
	and b                                            ; $7689: $a0
	cpl                                              ; $768a: $2f
	ld b, e                                          ; $768b: $43
	sbc c                                            ; $768c: $99
	dec sp                                           ; $768d: $3b
	dec a                                            ; $768e: $3d
	and c                                            ; $768f: $a1
	ldh a, [$34]                                     ; $7690: $f0 $34
	ld b, a                                          ; $7692: $47
	sbc c                                            ; $7693: $99
	dec sp                                           ; $7694: $3b
	ccf                                              ; $7695: $3f
	ld a, [hl-]                                      ; $7696: $3a

jr_08e_7697:
	jr c, jr_08e_76fc                                ; $7697: $38 $63

	xor b                                            ; $7699: $a8
	jp hl                                            ; $769a: $e9


	ld a, [hl+]                                      ; $769b: $2a
	and b                                            ; $769c: $a0
	cpl                                              ; $769d: $2f
	ld b, e                                          ; $769e: $43
	jp hl                                            ; $769f: $e9


	dec h                                            ; $76a0: $25

jr_08e_76a1:
	ld b, l                                          ; $76a1: $45
	and b                                            ; $76a2: $a0
	ldh a, [rHDMA4]                                  ; $76a3: $f0 $54
	ld a, $99                                        ; $76a5: $3e $99
	dec sp                                           ; $76a7: $3b
	dec a                                            ; $76a8: $3d
	ld e, l                                          ; $76a9: $5d
	ld e, d                                          ; $76aa: $5a
	xor h                                            ; $76ab: $ac
	ld d, h                                          ; $76ac: $54
	ld b, d                                          ; $76ad: $42
	pop af                                           ; $76ae: $f1
	rst SubAFromHL                                          ; $76af: $d7
	ldh a, [$0d]                                     ; $76b0: $f0 $0d
	ld a, [hl-]                                      ; $76b2: $3a
	ld d, b                                          ; $76b3: $50
	xor h                                            ; $76b4: $ac
	ldh a, [c]                                       ; $76b5: $f2
	ld a, b                                          ; $76b6: $78
	ld a, $3f                                        ; $76b7: $3e $3f
	rst SubAFromDE                                          ; $76b9: $df
	ld h, e                                          ; $76ba: $63
	and b                                            ; $76bb: $a0
	cpl                                              ; $76bc: $2f
	ld b, e                                          ; $76bd: $43
	ld b, [hl]                                       ; $76be: $46
	inc [hl]                                         ; $76bf: $34
	ld b, [hl]                                       ; $76c0: $46
	ld d, a                                          ; $76c1: $57
	ld d, e                                          ; $76c2: $53
	ld c, c                                          ; $76c3: $49
	add hl, sp                                       ; $76c4: $39
	xor b                                            ; $76c5: $a8
	ld [hl-], a                                      ; $76c6: $32
	ldh a, [rBGP]                                    ; $76c7: $f0 $47
	ldh a, [$2a]                                     ; $76c9: $f0 $2a
	ldh a, [rOCPS]                                   ; $76cb: $f0 $6a
	ld d, a                                          ; $76cd: $57
	ld b, a                                          ; $76ce: $47
	ld a, b                                          ; $76cf: $78
	dec a                                            ; $76d0: $3d
	ld b, d                                          ; $76d1: $42
	ld b, a                                          ; $76d2: $47
	ld c, b                                          ; $76d3: $48
	and e                                            ; $76d4: $a3
	sbc c                                            ; $76d5: $99
	dec sp                                           ; $76d6: $3b
	dec a                                            ; $76d7: $3d
	ld h, e                                          ; $76d8: $63
	ld b, l                                          ; $76d9: $45
	xor b                                            ; $76da: $a8
	ldh a, [$e5]                                     ; $76db: $f0 $e5
	pop af                                           ; $76dd: $f1
	sbc [hl]                                         ; $76de: $9e
	ldh a, [rTAC]                                    ; $76df: $f0 $07
	sbc l                                            ; $76e1: $9d
	ld d, b                                          ; $76e2: $50
	jr c, jr_08e_7683                                ; $76e3: $38 $9e

	ld b, a                                          ; $76e5: $47
	ld c, e                                          ; $76e6: $4b
	xor h                                            ; $76e7: $ac
	ld c, a                                          ; $76e8: $4f
	add hl, sp                                       ; $76e9: $39
	ld a, b                                          ; $76ea: $78
	ccf                                              ; $76eb: $3f
	jr c, jr_08e_7728                                ; $76ec: $38 $3a

	ld e, b                                          ; $76ee: $58
	jr c, @-$5e                                      ; $76ef: $38 $a0

	cpl                                              ; $76f1: $2f
	ld b, e                                          ; $76f2: $43
	rst JumpTable                                          ; $76f3: $c7
	ld b, h                                          ; $76f4: $44
	ld c, h                                          ; $76f5: $4c
	xor l                                            ; $76f6: $ad
	ld [hl-], a                                      ; $76f7: $32
	ldh a, [rBGP]                                    ; $76f8: $f0 $47
	ldh a, [$2a]                                     ; $76fa: $f0 $2a

jr_08e_76fc:
	ldh a, [rOCPS]                                   ; $76fc: $f0 $6a
	ld d, a                                          ; $76fe: $57
	ld b, a                                          ; $76ff: $47
	ld a, b                                          ; $7700: $78
	dec a                                            ; $7701: $3d
	ld b, d                                          ; $7702: $42
	ld b, a                                          ; $7703: $47
	ld c, b                                          ; $7704: $48
	and e                                            ; $7705: $a3
	cpl                                              ; $7706: $2f
	ld b, e                                          ; $7707: $43
	ldh a, [$c7]                                     ; $7708: $f0 $c7
	jr c, jr_08e_7746                                ; $770a: $38 $3a

	inc [hl]                                         ; $770c: $34
	db $ed                                           ; $770d: $ed
	ld d, e                                          ; $770e: $53
	xor b                                            ; $770f: $a8
	db $eb                                           ; $7710: $eb
	rst FarCall                                          ; $7711: $f7
	inc a                                            ; $7712: $3c
	ld a, [hl-]                                      ; $7713: $3a
	ld c, b                                          ; $7714: $48
	and c                                            ; $7715: $a1
	ld [$acab], a                                    ; $7716: $ea $ab $ac
	db $ed                                           ; $7719: $ed
	ld d, a                                          ; $771a: $57
	ld b, [hl]                                       ; $771b: $46
	dec a                                            ; $771c: $3d
	dec a                                            ; $771d: $3d
	inc a                                            ; $771e: $3c
	jr c, jr_08e_7784                                ; $771f: $38 $63

	ld c, h                                          ; $7721: $4c
	and b                                            ; $7722: $a0
	cpl                                              ; $7723: $2f
	ld b, e                                          ; $7724: $43
	pop af                                           ; $7725: $f1
	cp d                                             ; $7726: $ba
	ld d, l                                          ; $7727: $55

jr_08e_7728:
	ld a, [hl-]                                      ; $7728: $3a
	ld c, [hl]                                       ; $7729: $4e
	ldh a, [c]                                       ; $772a: $f2
	ld a, e                                          ; $772b: $7b
	ldh a, [c]                                       ; $772c: $f2
	ld a, h                                          ; $772d: $7c
	ld b, d                                          ; $772e: $42
	inc de                                           ; $772f: $13
	di                                               ; $7730: $f3
	ld e, c                                          ; $7731: $59
	ld a, b                                          ; $7732: $78
	ld b, h                                          ; $7733: $44
	ld c, h                                          ; $7734: $4c
	and b                                            ; $7735: $a0
	ld [$acab], a                                    ; $7736: $ea $ab $ac
	db $ed                                           ; $7739: $ed
	ld l, h                                          ; $773a: $6c
	ld h, e                                          ; $773b: $63
	ld c, h                                          ; $773c: $4c
	and b                                            ; $773d: $a0
	cpl                                              ; $773e: $2f
	ld b, e                                          ; $773f: $43
	ld b, b                                          ; $7740: $40
	add hl, sp                                       ; $7741: $39
	ld b, h                                          ; $7742: $44
	ld c, h                                          ; $7743: $4c
	xor b                                            ; $7744: $a8
	ld d, c                                          ; $7745: $51

jr_08e_7746:
	ld [hl], b                                       ; $7746: $70
	ld d, l                                          ; $7747: $55
	db $ed                                           ; $7748: $ed
	ld l, h                                          ; $7749: $6c
	ld c, h                                          ; $774a: $4c
	and b                                            ; $774b: $a0
	ld [$acab], a                                    ; $774c: $ea $ab $ac
	db $ec                                           ; $774f: $ec
	ld hl, sp-$54                                    ; $7750: $f8 $ac
	ldh a, [c]                                       ; $7752: $f2
	rst FarCall                                          ; $7753: $f7
	ld a, $55                                        ; $7754: $3e $55
	ld a, [hl-]                                      ; $7756: $3a
	dec sp                                           ; $7757: $3b
	ccf                                              ; $7758: $3f
	ld e, h                                          ; $7759: $5c
	ldh [$a0], a                                     ; $775a: $e0 $a0
	cpl                                              ; $775c: $2f
	ld b, e                                          ; $775d: $43
	adc b                                            ; $775e: $88
	sub c                                            ; $775f: $91
	xor h                                            ; $7760: $ac
	pop af                                           ; $7761: $f1
	sub b                                            ; $7762: $90
	ld [hl], b                                       ; $7763: $70
	ld a, $6e                                        ; $7764: $3e $6e
	ld d, c                                          ; $7766: $51
	ld d, l                                          ; $7767: $55
	ld a, [hl-]                                      ; $7768: $3a
	dec sp                                           ; $7769: $3b
	dec a                                            ; $776a: $3d
	ld b, l                                          ; $776b: $45
	and b                                            ; $776c: $a0
	db $eb                                           ; $776d: $eb
	ld d, c                                          ; $776e: $51
	xor h                                            ; $776f: $ac
	jp hl                                            ; $7770: $e9


	ld [hl], b                                       ; $7771: $70
	xor h                                            ; $7772: $ac
	ld h, e                                          ; $7773: $63
	ld d, a                                          ; $7774: $57
	ld c, c                                          ; $7775: $49
	ldh a, [$fa]                                     ; $7776: $f0 $fa
	ld [hl], c                                       ; $7778: $71
	dec a                                            ; $7779: $3d
	ld h, e                                          ; $777a: $63
	ld b, l                                          ; $777b: $45
	and b                                            ; $777c: $a0
	cpl                                              ; $777d: $2f
	ld b, e                                          ; $777e: $43
	jp hl                                            ; $777f: $e9


	xor l                                            ; $7780: $ad
	xor b                                            ; $7781: $a8
	ld b, [hl]                                       ; $7782: $46
	ld d, a                                          ; $7783: $57

jr_08e_7784:
	ld d, e                                          ; $7784: $53
	ld c, c                                          ; $7785: $49
	add hl, sp                                       ; $7786: $39
	and b                                            ; $7787: $a0
	db $eb                                           ; $7788: $eb
	ld d, c                                          ; $7789: $51
	xor h                                            ; $778a: $ac
	jp hl                                            ; $778b: $e9


	ld [hl], b                                       ; $778c: $70
	xor h                                            ; $778d: $ac
	db $ec                                           ; $778e: $ec
	sub $4c                                          ; $778f: $d6 $4c
	and b                                            ; $7791: $a0
	db $eb                                           ; $7792: $eb
	ld d, c                                          ; $7793: $51
	xor h                                            ; $7794: $ac
	jp hl                                            ; $7795: $e9


	ld [hl], b                                       ; $7796: $70
	xor h                                            ; $7797: $ac
	add sp, -$3c                                     ; $7798: $e8 $c4
	and b                                            ; $779a: $a0
	cpl                                              ; $779b: $2f
	ld b, e                                          ; $779c: $43
	jr c, jr_08e_780d                                ; $779d: $38 $6e

	inc [hl]                                         ; $779f: $34
	call nc, $a045                                   ; $77a0: $d4 $45 $a0
	db $eb                                           ; $77a3: $eb
	ld d, c                                          ; $77a4: $51
	xor h                                            ; $77a5: $ac
	jp hl                                            ; $77a6: $e9


	ld [hl], c                                       ; $77a7: $71
	xor h                                            ; $77a8: $ac
	db $ec                                           ; $77a9: $ec
	sub $4c                                          ; $77aa: $d6 $4c
	and b                                            ; $77ac: $a0
	db $eb                                           ; $77ad: $eb
	ld d, c                                          ; $77ae: $51
	xor h                                            ; $77af: $ac
	jp hl                                            ; $77b0: $e9


	ld [hl], c                                       ; $77b1: $71
	xor h                                            ; $77b2: $ac
	ldh a, [rAUD3LEVEL]                              ; $77b3: $f0 $1c
	ld h, d                                          ; $77b5: $62
	ldh a, [rOCPS]                                   ; $77b6: $f0 $6a
	ld a, $3f                                        ; $77b8: $3e $3f
	ld c, e                                          ; $77ba: $4b
	ld l, h                                          ; $77bb: $6c
	dec a                                            ; $77bc: $3d
	ld h, e                                          ; $77bd: $63
	and b                                            ; $77be: $a0
	db $eb                                           ; $77bf: $eb
	ld d, c                                          ; $77c0: $51
	xor h                                            ; $77c1: $ac
	jp hl                                            ; $77c2: $e9


	ld [hl], c                                       ; $77c3: $71
	xor h                                            ; $77c4: $ac
	add sp, -$3c                                     ; $77c5: $e8 $c4

jr_08e_77c7:
	and b                                            ; $77c7: $a0
	ld [$acab], a                                    ; $77c8: $ea $ab $ac
	pop af                                           ; $77cb: $f1
	or $38                                           ; $77cc: $f6 $38
	ld h, e                                          ; $77ce: $63
	ld c, h                                          ; $77cf: $4c
	and b                                            ; $77d0: $a0
	cpl                                              ; $77d1: $2f
	ld b, e                                          ; $77d2: $43
	adc b                                            ; $77d3: $88
	sub c                                            ; $77d4: $91
	inc [hl]                                         ; $77d5: $34
	pop af                                           ; $77d6: $f1
	or $38                                           ; $77d7: $f6 $38
	ld c, h                                          ; $77d9: $4c
	and b                                            ; $77da: $a0
	sbc $eb                                          ; $77db: $de $eb
	ccf                                              ; $77dd: $3f
	xor b                                            ; $77de: $a8
	sbc c                                            ; $77df: $99
	dec a                                            ; $77e0: $3d
	ld a, c                                          ; $77e1: $79
	ccf                                              ; $77e2: $3f
	db $ec                                           ; $77e3: $ec
	push de                                          ; $77e4: $d5
	inc a                                            ; $77e5: $3c
	ld a, $50                                        ; $77e6: $3e $50
	and c                                            ; $77e8: $a1
	cpl                                              ; $77e9: $2f
	ld b, e                                          ; $77ea: $43
	jp hl                                            ; $77eb: $e9


	cp h                                             ; $77ec: $bc
	inc de                                           ; $77ed: $13
	jp hl                                            ; $77ee: $e9


	dec l                                            ; $77ef: $2d
	and b                                            ; $77f0: $a0
	cpl                                              ; $77f1: $2f
	ld b, e                                          ; $77f2: $43
	jp hl                                            ; $77f3: $e9


	cp h                                             ; $77f4: $bc
	xor h                                            ; $77f5: $ac
	jp hl                                            ; $77f6: $e9


	dec l                                            ; $77f7: $2d
	and b                                            ; $77f8: $a0
	db $eb                                           ; $77f9: $eb
	ccf                                              ; $77fa: $3f
	xor b                                            ; $77fb: $a8
	sbc c                                            ; $77fc: $99
	dec a                                            ; $77fd: $3d
	ld a, c                                          ; $77fe: $79
	ccf                                              ; $77ff: $3f
	db $ec                                           ; $7800: $ec
	push de                                          ; $7801: $d5
	inc a                                            ; $7802: $3c
	ld a, $50                                        ; $7803: $3e $50
	and c                                            ; $7805: $a1
	jp hl                                            ; $7806: $e9


	ld a, [hl+]                                      ; $7807: $2a
	and b                                            ; $7808: $a0
	cpl                                              ; $7809: $2f
	ld b, e                                          ; $780a: $43
	rst JumpTable                                          ; $780b: $c7
	ld b, h                                          ; $780c: $44

jr_08e_780d:
	ld c, h                                          ; $780d: $4c
	dec [hl]                                         ; $780e: $35
	rla                                              ; $780f: $17
	ld [hl-], a                                      ; $7810: $32
	ldh a, [$c7]                                     ; $7811: $f0 $c7
	ld c, l                                          ; $7813: $4d
	ccf                                              ; $7814: $3f
	ld e, h                                          ; $7815: $5c
	dec a                                            ; $7816: $3d
	ld b, d                                          ; $7817: $42
	ld b, a                                          ; $7818: $47
	xor h                                            ; $7819: $ac
	ld l, e                                          ; $781a: $6b
	ld b, d                                          ; $781b: $42
	add d                                            ; $781c: $82
	pop af                                           ; $781d: $f1
	adc h                                            ; $781e: $8c
	ld c, a                                          ; $781f: $4f
	ld a, [hl-]                                      ; $7820: $3a
	ld a, $3c                                        ; $7821: $3e $3c
	ld c, b                                          ; $7823: $48
	and e                                            ; $7824: $a3
	ld l, l                                          ; $7825: $6d
	ldh a, [rBGP]                                    ; $7826: $f0 $47
	ldh a, [$2a]                                     ; $7828: $f0 $2a
	sbc l                                            ; $782a: $9d
	ld d, b                                          ; $782b: $50
	jr c, jr_08e_77c7                                ; $782c: $38 $99

	add b                                            ; $782e: $80
	ld b, d                                          ; $782f: $42
	ld c, e                                          ; $7830: $4b
	inc de                                           ; $7831: $13
	sub c                                            ; $7832: $91
	ldh a, [$59]                                     ; $7833: $f0 $59
	ld c, h                                          ; $7835: $4c
	dec [hl]                                         ; $7836: $35
	jp hl                                            ; $7837: $e9


	ld a, [hl+]                                      ; $7838: $2a
	and b                                            ; $7839: $a0
	cpl                                              ; $783a: $2f
	ld b, e                                          ; $783b: $43
	rst JumpTable                                          ; $783c: $c7
	ld b, h                                          ; $783d: $44
	ld c, h                                          ; $783e: $4c
	xor b                                            ; $783f: $a8
	ld [hl-], a                                      ; $7840: $32
	ldh a, [$80]                                     ; $7841: $f0 $80
	ldh a, [$c5]                                     ; $7843: $f0 $c5
	sbc c                                            ; $7845: $99
	dec sp                                           ; $7846: $3b
	dec a                                            ; $7847: $3d
	ld b, d                                          ; $7848: $42
	ld b, a                                          ; $7849: $47
	ld a, [hl-]                                      ; $784a: $3a
	ld c, b                                          ; $784b: $48
	and e                                            ; $784c: $a3
	db $eb                                           ; $784d: $eb
	ccf                                              ; $784e: $3f
	and b                                            ; $784f: $a0
	cpl                                              ; $7850: $2f
	ld b, e                                          ; $7851: $43
	ld e, [hl]                                       ; $7852: $5e
	dec sp                                           ; $7853: $3b
	inc [hl]                                         ; $7854: $34
	db $eb                                           ; $7855: $eb
	rst FarCall                                          ; $7856: $f7
	xor c                                            ; $7857: $a9
	jr c, jr_08e_78b6                                ; $7858: $38 $5c

	ld a, [hl-]                                      ; $785a: $3a
	ld d, a                                          ; $785b: $57
	ld c, b                                          ; $785c: $48
	and b                                            ; $785d: $a0
	ld hl, sp+$3a                                    ; $785e: $f8 $3a
	ld d, e                                          ; $7860: $53
	pop af                                           ; $7861: $f1
	push hl                                          ; $7862: $e5
	ld h, d                                          ; $7863: $62
	sub h                                            ; $7864: $94
	ld a, $3f                                        ; $7865: $3e $3f
	inc de                                           ; $7867: $13
	ldh a, [c]                                       ; $7868: $f2
	ld [de], a                                       ; $7869: $12
	ld c, l                                          ; $786a: $4d
	dec a                                            ; $786b: $3d
	inc a                                            ; $786c: $3c
	ld d, b                                          ; $786d: $50
	inc [hl]                                         ; $786e: $34
	db $f4                                           ; $786f: $f4
	ld c, $f1                                        ; $7870: $0e $f1
	ld [$3a3e], a                                    ; $7872: $ea $3e $3a
	jr c, jr_08e_78c0                                ; $7875: $38 $49

	ld c, b                                          ; $7877: $48
	and b                                            ; $7878: $a0
	cpl                                              ; $7879: $2f
	ld b, e                                          ; $787a: $43
	rst JumpTable                                          ; $787b: $c7
	xor l                                            ; $787c: $ad
	ld e, e                                          ; $787d: $5b
	ld d, [hl]                                       ; $787e: $56
	ld b, [hl]                                       ; $787f: $46
	xor h                                            ; $7880: $ac
	ldh a, [$0a]                                     ; $7881: $f0 $0a
	ld d, l                                          ; $7883: $55
	ld a, d                                          ; $7884: $7a
	dec sp                                           ; $7885: $3b
	dec a                                            ; $7886: $3d
	ldh a, [$08]                                     ; $7887: $f0 $08
	add hl, sp                                       ; $7889: $39
	ld d, e                                          ; $788a: $53
	jr c, jr_08e_78c5                                ; $788b: $38 $38

	ld b, l                                          ; $788d: $45
	and b                                            ; $788e: $a0
	ld b, [hl]                                       ; $788f: $46
	ld d, a                                          ; $7890: $57
	ld d, e                                          ; $7891: $53
	ld c, c                                          ; $7892: $49
	add hl, sp                                       ; $7893: $39
	xor b                                            ; $7894: $a8
	sbc $70                                          ; $7895: $de $70
	ld [hl], c                                       ; $7897: $71
	ld b, c                                          ; $7898: $41
	ld c, h                                          ; $7899: $4c
	xor b                                            ; $789a: $a8
	ld b, b                                          ; $789b: $40
	ld c, l                                          ; $789c: $4d
	ld e, e                                          ; $789d: $5b
	ld d, [hl]                                       ; $789e: $56
	and b                                            ; $789f: $a0
	cpl                                              ; $78a0: $2f
	ld b, e                                          ; $78a1: $43
	ldh a, [rWY]                                     ; $78a2: $f0 $4a
	ld e, c                                          ; $78a4: $59
	ld l, c                                          ; $78a5: $69
	ld c, e                                          ; $78a6: $4b
	add b                                            ; $78a7: $80
	ldh a, [$fe]                                     ; $78a8: $f0 $fe
	ld c, l                                          ; $78aa: $4d
	dec a                                            ; $78ab: $3d
	ld e, l                                          ; $78ac: $5d
	ld e, d                                          ; $78ad: $5a
	xor h                                            ; $78ae: $ac
	db $eb                                           ; $78af: $eb
	inc [hl]                                         ; $78b0: $34
	ld a, [hl-]                                      ; $78b1: $3a
	and b                                            ; $78b2: $a0
	cpl                                              ; $78b3: $2f
	ld [hl-], a                                      ; $78b4: $32
	db $ed                                           ; $78b5: $ed

jr_08e_78b6:
	ld d, e                                          ; $78b6: $53
	ccf                                              ; $78b7: $3f
	xor h                                            ; $78b8: $ac
	ld hl, sp+$3a                                    ; $78b9: $f8 $3a
	pop af                                           ; $78bb: $f1
	ld c, h                                          ; $78bc: $4c

jr_08e_78bd:
	jr c, jr_08e_78f9                                ; $78bd: $38 $3a

	ld b, c                                          ; $78bf: $41

jr_08e_78c0:
	ld b, h                                          ; $78c0: $44
	ld a, [hl-]                                      ; $78c1: $3a
	ld c, b                                          ; $78c2: $48
	and e                                            ; $78c3: $a3
	add hl, bc                                       ; $78c4: $09

jr_08e_78c5:
	ld [$13ab], a                                    ; $78c5: $ea $ab $13
	ld l, e                                          ; $78c8: $6b
	ld c, a                                          ; $78c9: $4f
	ld a, [hl-]                                      ; $78ca: $3a
	jr c, jr_08e_78bd                                ; $78cb: $38 $f0

	jr z, jr_08e_791b                                ; $78cd: $28 $4c

	xor b                                            ; $78cf: $a8
	db $eb                                           ; $78d0: $eb
	ld d, e                                          ; $78d1: $53
	ld h, e                                          ; $78d2: $63
	xor b                                            ; $78d3: $a8
	db $ec                                           ; $78d4: $ec
	ld [hl-], a                                      ; $78d5: $32
	and b                                            ; $78d6: $a0
	cpl                                              ; $78d7: $2f
	ld b, e                                          ; $78d8: $43
	ld b, b                                          ; $78d9: $40
	ld b, c                                          ; $78da: $41
	ld a, [hl-]                                      ; $78db: $3a
	ld d, h                                          ; $78dc: $54
	ld c, c                                          ; $78dd: $49
	add d                                            ; $78de: $82
	ld h, e                                          ; $78df: $63
	sbc h                                            ; $78e0: $9c
	ld b, a                                          ; $78e1: $47
	ld e, b                                          ; $78e2: $58
	and b                                            ; $78e3: $a0
	ld l, d                                          ; $78e4: $6a
	ldh a, [$0d]                                     ; $78e5: $f0 $0d
	ld c, e                                          ; $78e7: $4b
	ld c, a                                          ; $78e8: $4f
	dec sp                                           ; $78e9: $3b
	ld c, c                                          ; $78ea: $49
	inc de                                           ; $78eb: $13
	ld a, a                                          ; $78ec: $7f
	ld b, d                                          ; $78ed: $42
	di                                               ; $78ee: $f3
	call nz, $3d38                                   ; $78ef: $c4 $38 $3d
	ldh a, [$28]                                     ; $78f2: $f0 $28
	ld b, a                                          ; $78f4: $47
	ldh a, [$3b]                                     ; $78f5: $f0 $3b
	dec sp                                           ; $78f7: $3b
	ccf                                              ; $78f8: $3f

jr_08e_78f9:
	ld d, l                                          ; $78f9: $55
	ld b, h                                          ; $78fa: $44
	ld e, b                                          ; $78fb: $58
	ld c, [hl]                                       ; $78fc: $4e
	xor c                                            ; $78fd: $a9
	ld b, b                                          ; $78fe: $40
	ld c, l                                          ; $78ff: $4d
	ld e, e                                          ; $7900: $5b
	ld d, [hl]                                       ; $7901: $56
	and b                                            ; $7902: $a0
	cpl                                              ; $7903: $2f
	ld b, e                                          ; $7904: $43
	ld b, [hl]                                       ; $7905: $46
	dec sp                                           ; $7906: $3b
	inc [hl]                                         ; $7907: $34
	db $ed                                           ; $7908: $ed
	ld d, e                                          ; $7909: $53
	ld c, b                                          ; $790a: $48
	xor h                                            ; $790b: $ac
	ld [$48be], a                                    ; $790c: $ea $be $48
	and b                                            ; $790f: $a0
	cpl                                              ; $7910: $2f
	ld [hl-], a                                      ; $7911: $32
	ld l, e                                          ; $7912: $6b
	ld h, d                                          ; $7913: $62
	ldh a, [rAUDVOL]                                 ; $7914: $f0 $24
	db $ec                                           ; $7916: $ec
	ld d, $36                                        ; $7917: $16 $36
	inc sp                                           ; $7919: $33
	add hl, bc                                       ; $791a: $09

jr_08e_791b:
	cpl                                              ; $791b: $2f
	add sp, $0c                                      ; $791c: $e8 $0c
	add hl, bc                                       ; $791e: $09
	cpl                                              ; $791f: $2f
	add sp, $27                                      ; $7920: $e8 $27
	add hl, bc                                       ; $7922: $09
	cpl                                              ; $7923: $2f
	ld [hl-], a                                      ; $7924: $32
	pop af                                           ; $7925: $f1
	ld a, e                                          ; $7926: $7b
	ldh a, [hDisp1_WY]                                     ; $7927: $f0 $95
	ld c, e                                          ; $7929: $4b
	inc de                                           ; $792a: $13
	ldh a, [hDisp0_WX]                                     ; $792b: $f0 $89
	ldh a, [$c4]                                     ; $792d: $f0 $c4
	ld h, l                                          ; $792f: $65
	ldh a, [$32]                                     ; $7930: $f0 $32
	ld e, c                                          ; $7932: $59
	db $eb                                           ; $7933: $eb
	inc de                                           ; $7934: $13
	xor b                                            ; $7935: $a8
	xor a                                            ; $7936: $af
	or l                                             ; $7937: $b5
	and e                                            ; $7938: $a3
	cpl                                              ; $7939: $2f
	ld [hl-], a                                      ; $793a: $32
	adc d                                            ; $793b: $8a
	ldh a, [c]                                       ; $793c: $f2
	ret z                                            ; $793d: $c8

	ld b, d                                          ; $793e: $42
	ldh a, [$ab]                                     ; $793f: $f0 $ab
	pop af                                           ; $7941: $f1
	ld a, [bc]                                       ; $7942: $0a
	ld b, d                                          ; $7943: $42
	inc de                                           ; $7944: $13
	ldh a, [$99]                                     ; $7945: $f0 $99
	sub b                                            ; $7947: $90
	ld d, e                                          ; $7948: $53
	adc e                                            ; $7949: $8b
	ld l, h                                          ; $794a: $6c
	xor b                                            ; $794b: $a8
	xor a                                            ; $794c: $af
	or l                                             ; $794d: $b5
	and e                                            ; $794e: $a3
	cpl                                              ; $794f: $2f
	ld [hl-], a                                      ; $7950: $32
	db $ed                                           ; $7951: $ed
	call z, $2cf0                                    ; $7952: $cc $f0 $2c
	ld b, d                                          ; $7955: $42
	ld [$13c1], a                                    ; $7956: $ea $c1 $13
	ld b, d                                          ; $7959: $42
	ldh a, [$74]                                     ; $795a: $f0 $74
	ldh a, [$7a]                                     ; $795c: $f0 $7a
	ld d, e                                          ; $795e: $53
	adc e                                            ; $795f: $8b
	ld l, h                                          ; $7960: $6c
	xor b                                            ; $7961: $a8
	xor a                                            ; $7962: $af
	or l                                             ; $7963: $b5
	and e                                            ; $7964: $a3
	cpl                                              ; $7965: $2f
	ld [hl-], a                                      ; $7966: $32
	db $eb                                           ; $7967: $eb
	ld h, b                                          ; $7968: $60
	ld c, e                                          ; $7969: $4b
	xor h                                            ; $796a: $ac
	ldh a, [rAUD1ENV]                                ; $796b: $f0 $12
	ldh a, [c]                                       ; $796d: $f2
	adc e                                            ; $796e: $8b
	ld a, [hl-]                                      ; $796f: $3a
	ld c, a                                          ; $7970: $4f
	ld b, d                                          ; $7971: $42
	ld d, e                                          ; $7972: $53
	jr c, jr_08e_79ad                                ; $7973: $38 $38

	xor b                                            ; $7975: $a8
	xor a                                            ; $7976: $af
	or l                                             ; $7977: $b5
	and e                                            ; $7978: $a3
	cpl                                              ; $7979: $2f
	ld [hl-], a                                      ; $797a: $32
	ldh a, [hDisp0_SCX]                                     ; $797b: $f0 $84
	ldh a, [hDisp0_BGP]                                     ; $797d: $f0 $85
	pop af                                           ; $797f: $f1
	ld a, l                                          ; $7980: $7d
	ldh a, [hDisp0_LCDC]                                     ; $7981: $f0 $82
	ld b, a                                          ; $7983: $47

jr_08e_7984:
	ld h, a                                          ; $7984: $67
	ld d, h                                          ; $7985: $54
	add hl, sp                                       ; $7986: $39
	ld c, c                                          ; $7987: $49
	inc de                                           ; $7988: $13
	ld [hl], a                                       ; $7989: $77
	dec sp                                           ; $798a: $3b
	ccf                                              ; $798b: $3f
	jr c, jr_08e_79cb                                ; $798c: $38 $3d

	ld d, e                                          ; $798e: $53
	xor h                                            ; $798f: $ac
	pop af                                           ; $7990: $f1
	dec b                                            ; $7991: $05
	ldh a, [rWY]                                     ; $7992: $f0 $4a
	ldh a, [$03]                                     ; $7994: $f0 $03
	ld b, d                                          ; $7996: $42
	ldh a, [$3b]                                     ; $7997: $f0 $3b
	jr c, jr_08e_79ee                                ; $7999: $38 $53

	ld e, h                                          ; $799b: $5c
	ccf                                              ; $799c: $3f
	jr c, jr_08e_79ed                                ; $799d: $38 $4e

	ld d, b                                          ; $799f: $50
	ld a, $38                                        ; $79a0: $3e $38
	xor b                                            ; $79a2: $a8
	xor a                                            ; $79a3: $af
	or l                                             ; $79a4: $b5
	and e                                            ; $79a5: $a3
	cpl                                              ; $79a6: $2f
	ld [hl-], a                                      ; $79a7: $32
	ldh a, [rSVBK]                                   ; $79a8: $f0 $70
	ld c, e                                          ; $79aa: $4b
	ld b, b                                          ; $79ab: $40
	ld b, c                                          ; $79ac: $41

jr_08e_79ad:
	ld a, [hl-]                                      ; $79ad: $3a
	ld b, a                                          ; $79ae: $47
	inc de                                           ; $79af: $13
	or $7f                                           ; $79b0: $f6 $7f

jr_08e_79b2:
	rst FarCall                                          ; $79b2: $f7
	ld de, $4b4a                                     ; $79b3: $11 $4a $4b
	ld a, [hl-]                                      ; $79b6: $3a
	ld d, l                                          ; $79b7: $55
	inc [hl]                                         ; $79b8: $34
	ld hl, sp+$3a                                    ; $79b9: $f8 $3a
	ld d, e                                          ; $79bb: $53
	or $1c                                           ; $79bc: $f6 $1c
	add h                                            ; $79be: $84
	jr c, jr_08e_7a0f                                ; $79bf: $38 $4e

	xor b                                            ; $79c1: $a8
	xor a                                            ; $79c2: $af
	or l                                             ; $79c3: $b5
	and e                                            ; $79c4: $a3
	cpl                                              ; $79c5: $2f

jr_08e_79c6:
	ld [hl-], a                                      ; $79c6: $32
	db $eb                                           ; $79c7: $eb
	inc de                                           ; $79c8: $13
	ld c, e                                          ; $79c9: $4b
	xor h                                            ; $79ca: $ac

jr_08e_79cb:
	ldh a, [rBCPD]                                   ; $79cb: $f0 $69
	ldh a, [$60]                                     ; $79cd: $f0 $60
	ldh a, [$c4]                                     ; $79cf: $f0 $c4
	ld [hl], e                                       ; $79d1: $73
	sub e                                            ; $79d2: $93
	pop af                                           ; $79d3: $f1
	ld c, e                                          ; $79d4: $4b
	ldh a, [$f0]                                     ; $79d5: $f0 $f0
	ld c, e                                          ; $79d7: $4b
	ldh a, [$64]                                     ; $79d8: $f0 $64
	jr c, jr_08e_7984                                ; $79da: $38 $a8

	xor a                                            ; $79dc: $af
	or l                                             ; $79dd: $b5
	and e                                            ; $79de: $a3
	cpl                                              ; $79df: $2f
	ld [hl-], a                                      ; $79e0: $32
	pop af                                           ; $79e1: $f1
	cpl                                              ; $79e2: $2f
	ld c, e                                          ; $79e3: $4b
	ld c, c                                          ; $79e4: $49
	ccf                                              ; $79e5: $3f
	ld c, a                                          ; $79e6: $4f
	adc e                                            ; $79e7: $8b
	ld e, h                                          ; $79e8: $5c
	xor b                                            ; $79e9: $a8
	xor a                                            ; $79ea: $af
	or l                                             ; $79eb: $b5
	and e                                            ; $79ec: $a3

jr_08e_79ed:
	cpl                                              ; $79ed: $2f

jr_08e_79ee:
	ld [hl-], a                                      ; $79ee: $32
	add e                                            ; $79ef: $83
	ldh a, [$2f]                                     ; $79f0: $f0 $2f
	ld e, c                                          ; $79f2: $59
	ld d, e                                          ; $79f3: $53
	ld c, c                                          ; $79f4: $49
	ccf                                              ; $79f5: $3f
	ld c, a                                          ; $79f6: $4f
	adc e                                            ; $79f7: $8b
	ld e, h                                          ; $79f8: $5c
	xor b                                            ; $79f9: $a8
	xor a                                            ; $79fa: $af
	or l                                             ; $79fb: $b5
	and e                                            ; $79fc: $a3
	cpl                                              ; $79fd: $2f
	ld [hl-], a                                      ; $79fe: $32
	db $ec                                           ; $79ff: $ec
	pop af                                           ; $7a00: $f1
	ld c, e                                          ; $7a01: $4b
	inc [hl]                                         ; $7a02: $34
	ld b, [hl]                                       ; $7a03: $46
	ld d, d                                          ; $7a04: $52
	ld d, a                                          ; $7a05: $57
	inc de                                           ; $7a06: $13
	jp hl                                            ; $7a07: $e9


	jr nc, jr_08e_79b2                               ; $7a08: $30 $a8

	xor a                                            ; $7a0a: $af
	or l                                             ; $7a0b: $b5
	and e                                            ; $7a0c: $a3
	cpl                                              ; $7a0d: $2f
	ld [hl-], a                                      ; $7a0e: $32

jr_08e_7a0f:
	ldh a, [rOBP0]                                   ; $7a0f: $f0 $48
	ldh a, [$2c]                                     ; $7a11: $f0 $2c
	ldh a, [rLY]                                     ; $7a13: $f0 $44
	ld c, e                                          ; $7a15: $4b
	inc [hl]                                         ; $7a16: $34
	ld b, [hl]                                       ; $7a17: $46
	ld d, d                                          ; $7a18: $52
	ld d, a                                          ; $7a19: $57
	inc de                                           ; $7a1a: $13
	jp hl                                            ; $7a1b: $e9


	jr nc, jr_08e_79c6                               ; $7a1c: $30 $a8

	xor a                                            ; $7a1e: $af
	or l                                             ; $7a1f: $b5
	and e                                            ; $7a20: $a3
	ldh a, [c]                                       ; $7a21: $f2
	ld d, h                                          ; $7a22: $54
	ld d, e                                          ; $7a23: $53
	ldh a, [c]                                       ; $7a24: $f2
	ld c, l                                          ; $7a25: $4d
	jr c, @+$41                                      ; $7a26: $38 $3f

	jr c, jr_08e_7a78                                ; $7a28: $38 $4e

	ldh a, [hDisp0_OBP1]                                     ; $7a2a: $f0 $87
	ld c, h                                          ; $7a2c: $4c
	and b                                            ; $7a2d: $a0
	cpl                                              ; $7a2e: $2f
	ld b, e                                          ; $7a2f: $43
	jp hl                                            ; $7a30: $e9


	inc [hl]                                         ; $7a31: $34
	and b                                            ; $7a32: $a0
	call c, Call_08e_45a8                            ; $7a33: $dc $a8 $45
	ld d, l                                          ; $7a36: $55
	dec sp                                           ; $7a37: $3b
	ccf                                              ; $7a38: $3f
	ld b, l                                          ; $7a39: $45
	and b                                            ; $7a3a: $a0
	db $ed                                           ; $7a3b: $ed
	xor a                                            ; $7a3c: $af
	ld a, [hl-]                                      ; $7a3d: $3a
	jr c, jr_08e_7a7c                                ; $7a3e: $38 $3c

	ld d, b                                          ; $7a40: $50
	xor h                                            ; $7a41: $ac
	pop af                                           ; $7a42: $f1
	db $ed                                           ; $7a43: $ed
	pop af                                           ; $7a44: $f1
	ld h, $4a                                        ; $7a45: $26 $4a
	ld c, a                                          ; $7a47: $4f
	ld a, $3f                                        ; $7a48: $3e $3f
	rst SubAFromDE                                          ; $7a4a: $df
	ld h, e                                          ; $7a4b: $63
	and b                                            ; $7a4c: $a0
	cpl                                              ; $7a4d: $2f
	ld b, e                                          ; $7a4e: $43
	ld e, e                                          ; $7a4f: $5b
	ld d, [hl]                                       ; $7a50: $56
	ld b, [hl]                                       ; $7a51: $46
	xor h                                            ; $7a52: $ac
	ld [$cdca], a                                    ; $7a53: $ea $ca $cd
	and b                                            ; $7a56: $a0
	call c, $2fa0                                    ; $7a57: $dc $a0 $2f
	ld b, e                                          ; $7a5a: $43
	ld e, e                                          ; $7a5b: $5b
	ld d, [hl]                                       ; $7a5c: $56
	ld b, [hl]                                       ; $7a5d: $46
	xor h                                            ; $7a5e: $ac
	ldh a, [c]                                       ; $7a5f: $f2
	db $10                                           ; $7a60: $10
	ld b, d                                          ; $7a61: $42
	push af                                          ; $7a62: $f5
	ld b, c                                          ; $7a63: $41
	ld d, a                                          ; $7a64: $57
	ld b, a                                          ; $7a65: $47
	call $eca0                                       ; $7a66: $cd $a0 $ec
	ld a, [de]                                       ; $7a69: $1a
	xor h                                            ; $7a6a: $ac
	ld d, h                                          ; $7a6b: $54
	add hl, sp                                       ; $7a6c: $39
	jr c, @+$3b                                      ; $7a6d: $38 $39

	ld b, d                                          ; $7a6f: $42
	ld c, a                                          ; $7a70: $4f
	inc de                                           ; $7a71: $13
	db $ec                                           ; $7a72: $ec
	ld e, $63                                        ; $7a73: $1e $63
	ld c, h                                          ; $7a75: $4c
	and b                                            ; $7a76: $a0
	cpl                                              ; $7a77: $2f

jr_08e_7a78:
	jp hl                                            ; $7a78: $e9


	ld c, [hl]                                       ; $7a79: $4e
	add hl, bc                                       ; $7a7a: $09
	adc b                                            ; $7a7b: $88

jr_08e_7a7c:
	sub c                                            ; $7a7c: $91
	ld c, e                                          ; $7a7d: $4b
	inc [hl]                                         ; $7a7e: $34
	db $eb                                           ; $7a7f: $eb
	ld a, e                                          ; $7a80: $7b
	ld c, e                                          ; $7a81: $4b
	inc de                                           ; $7a82: $13
	adc e                                            ; $7a83: $8b
	ld e, h                                          ; $7a84: $5c
	ld c, d                                          ; $7a85: $4a
	ld c, e                                          ; $7a86: $4b
	ld a, [hl-]                                      ; $7a87: $3a
	jr c, jr_08e_7ae7                                ; $7a88: $38 $5d

	ld c, l                                          ; $7a8a: $4d
	ld e, d                                          ; $7a8b: $5a
	xor h                                            ; $7a8c: $ac
	db $ed                                           ; $7a8d: $ed
	ld d, a                                          ; $7a8e: $57
	ldh a, [c]                                       ; $7a8f: $f2
	ld a, b                                          ; $7a90: $78
	ld a, $3f                                        ; $7a91: $3e $3f
	rst SubAFromDE                                          ; $7a93: $df
	ld h, e                                          ; $7a94: $63
	and b                                            ; $7a95: $a0
	cpl                                              ; $7a96: $2f
	add sp, $33                                      ; $7a97: $e8 $33
	add hl, bc                                       ; $7a99: $09
	xor $10                                          ; $7a9a: $ee $10
	xor b                                            ; $7a9c: $a8
	db $ec                                           ; $7a9d: $ec
	add hl, bc                                       ; $7a9e: $09
	ld b, d                                          ; $7a9f: $42
	ld a, a                                          ; $7aa0: $7f
	ldh a, [rTAC]                                    ; $7aa1: $f0 $07
	ld d, e                                          ; $7aa3: $53
	inc de                                           ; $7aa4: $13
	ldh a, [c]                                       ; $7aa5: $f2
	ld d, a                                          ; $7aa6: $57
	ldh a, [rAUD1LOW]                                ; $7aa7: $f0 $13
	ld a, $4c                                        ; $7aa9: $3e $4c
	and b                                            ; $7aab: $a0
	cpl                                              ; $7aac: $2f
	add sp, $32                                      ; $7aad: $e8 $32
	add hl, bc                                       ; $7aaf: $09
	ldh a, [c]                                       ; $7ab0: $f2
	rra                                              ; $7ab1: $1f
	ldh a, [$38]                                     ; $7ab2: $f0 $38
	ld c, d                                          ; $7ab4: $4a
	ld c, e                                          ; $7ab5: $4b
	xor h                                            ; $7ab6: $ac
	ld l, a                                          ; $7ab7: $6f
	ld b, d                                          ; $7ab8: $42
	ldh a, [$e9]                                     ; $7ab9: $f0 $e9
	ldh a, [$0b]                                     ; $7abb: $f0 $0b
	ld h, d                                          ; $7abd: $62
	ld d, c                                          ; $7abe: $51
	ld c, [hl]                                       ; $7abf: $4e
	ld b, a                                          ; $7ac0: $47
	ld c, e                                          ; $7ac1: $4b
	inc de                                           ; $7ac2: $13
	ldh a, [c]                                       ; $7ac3: $f2
	reti                                             ; $7ac4: $d9


	ldh a, [$d0]                                     ; $7ac5: $f0 $d0
	pop af                                           ; $7ac7: $f1
	cp [hl]                                          ; $7ac8: $be
	ld c, d                                          ; $7ac9: $4a
	ld a, [hl-]                                      ; $7aca: $3a
	ld d, l                                          ; $7acb: $55
	ccf                                              ; $7acc: $3f
	and c                                            ; $7acd: $a1
	ret                                              ; $7ace: $c9


	ldh a, [$f3]                                     ; $7acf: $f0 $f3

jr_08e_7ad1:
	ld c, l                                          ; $7ad1: $4d
	ldh [$a0], a                                     ; $7ad2: $e0 $a0
	cpl                                              ; $7ad4: $2f
	db $ed                                           ; $7ad5: $ed
	ld a, [bc]                                       ; $7ad6: $0a
	ld c, d                                          ; $7ad7: $4a
	ldh a, [hDisp1_LCDC]                                     ; $7ad8: $f0 $8f
	ld b, c                                          ; $7ada: $41
	ld c, d                                          ; $7adb: $4a
	jr c, @+$56                                      ; $7adc: $38 $54

	add hl, sp                                       ; $7ade: $39
	add hl, bc                                       ; $7adf: $09
	di                                               ; $7ae0: $f3
	db $d3                                           ; $7ae1: $d3
	jr c, jr_08e_7ad1                                ; $7ae2: $38 $ed

	ld a, [bc]                                       ; $7ae4: $0a
	ld c, d                                          ; $7ae5: $4a
	ld d, c                                          ; $7ae6: $51

jr_08e_7ae7:
	ld d, h                                          ; $7ae7: $54
	ld c, c                                          ; $7ae8: $49
	xor b                                            ; $7ae9: $a8
	ldh a, [rAUD3ENA]                                ; $7aea: $f0 $1a
	ld h, l                                          ; $7aec: $65
	ldh a, [$35]                                     ; $7aed: $f0 $35
	ldh a, [$2b]                                     ; $7aef: $f0 $2b
	ld c, d                                          ; $7af1: $4a
	ld c, a                                          ; $7af2: $4f
	inc de                                           ; $7af3: $13
	rst FarCall                                          ; $7af4: $f7
	jr nc, jr_08e_7b2f                               ; $7af5: $30 $38

	ccf                                              ; $7af7: $3f
	ldh a, [$a3]                                     ; $7af8: $f0 $a3
	ld e, b                                          ; $7afa: $58
	ld c, [hl]                                       ; $7afb: $4e
	and c                                            ; $7afc: $a1
	cpl                                              ; $7afd: $2f
	di                                               ; $7afe: $f3
	inc l                                            ; $7aff: $2c
	di                                               ; $7b00: $f3
	dec l                                            ; $7b01: $2d
	ld c, d                                          ; $7b02: $4a
	ld c, a                                          ; $7b03: $4f
	sub h                                            ; $7b04: $94
	ccf                                              ; $7b05: $3f
	ld e, h                                          ; $7b06: $5c
	ld b, b                                          ; $7b07: $40
	add hl, sp                                       ; $7b08: $39
	ld b, h                                          ; $7b09: $44
	ld c, h                                          ; $7b0a: $4c
	add hl, bc                                       ; $7b0b: $09
	ld a, [hl-]                                      ; $7b0c: $3a
	inc [hl]                                         ; $7b0d: $34
	ld l, e                                          ; $7b0e: $6b
	db $eb                                           ; $7b0f: $eb
	ld d, l                                          ; $7b10: $55
	ld d, h                                          ; $7b11: $54
	ld c, c                                          ; $7b12: $49
	inc de                                           ; $7b13: $13
	add d                                            ; $7b14: $82
	dec sp                                           ; $7b15: $3b
	ccf                                              ; $7b16: $3f
	jr c, jr_08e_7b67                                ; $7b17: $38 $4e

	ld b, d                                          ; $7b19: $42
	xor c                                            ; $7b1a: $a9
	ldh a, [$08]                                     ; $7b1b: $f0 $08
	ld d, b                                          ; $7b1d: $50
	inc [hl]                                         ; $7b1e: $34
	ld e, b                                          ; $7b1f: $58
	dec sp                                           ; $7b20: $3b
	ld e, b                                          ; $7b21: $58
	ld c, c                                          ; $7b22: $49
	ld h, a                                          ; $7b23: $67
	ld e, h                                          ; $7b24: $5c
	ld d, d                                          ; $7b25: $52
	ld d, c                                          ; $7b26: $51
	ld h, e                                          ; $7b27: $63
	ld b, l                                          ; $7b28: $45
	and b                                            ; $7b29: $a0
	cpl                                              ; $7b2a: $2f
	ld b, [hl]                                       ; $7b2b: $46
	ld b, b                                          ; $7b2c: $40
	ld d, h                                          ; $7b2d: $54
	ld b, a                                          ; $7b2e: $47

jr_08e_7b2f:
	di                                               ; $7b2f: $f3
	call nc, $27ec                                   ; $7b30: $d4 $ec $27
	add hl, bc                                       ; $7b33: $09
	ld l, a                                          ; $7b34: $6f
	ld d, e                                          ; $7b35: $53
	ldh a, [$f3]                                     ; $7b36: $f0 $f3
	ld c, l                                          ; $7b38: $4d
	dec a                                            ; $7b39: $3d
	ld c, c                                          ; $7b3a: $49
	inc de                                           ; $7b3b: $13
	add d                                            ; $7b3c: $82
	dec sp                                           ; $7b3d: $3b
	ccf                                              ; $7b3e: $3f
	jr c, jr_08e_7b8f                                ; $7b3f: $38 $4e

	ld b, d                                          ; $7b41: $42
	ld b, l                                          ; $7b42: $45
	xor b                                            ; $7b43: $a8
	ldh a, [rHDMA4]                                  ; $7b44: $f0 $54
	ld a, $4b                                        ; $7b46: $3e $4b
	inc [hl]                                         ; $7b48: $34
	ld a, a                                          ; $7b49: $7f
	ld h, d                                          ; $7b4a: $62
	ld e, h                                          ; $7b4b: $5c
	inc a                                            ; $7b4c: $3c
	ld a, c                                          ; $7b4d: $79
	dec a                                            ; $7b4e: $3d
	ld d, b                                          ; $7b4f: $50
	ld e, d                                          ; $7b50: $5a
	add hl, sp                                       ; $7b51: $39
	and c                                            ; $7b52: $a1
	pop de                                           ; $7b53: $d1
	ld b, d                                          ; $7b54: $42
	inc [hl]                                         ; $7b55: $34
	ld c, a                                          ; $7b56: $4f
	ld b, d                                          ; $7b57: $42
	db $ec                                           ; $7b58: $ec
	ret c                                            ; $7b59: $d8

	and b                                            ; $7b5a: $a0
	cpl                                              ; $7b5b: $2f
	db $ed                                           ; $7b5c: $ed
	ld d, e                                          ; $7b5d: $53
	ld b, a                                          ; $7b5e: $47
	ld c, e                                          ; $7b5f: $4b
	inc a                                            ; $7b60: $3c
	ld a, [hl-]                                      ; $7b61: $3a
	ld h, e                                          ; $7b62: $63
	ld a, [hl-]                                      ; $7b63: $3a
	jr c, @+$5f                                      ; $7b64: $38 $5d

	ld e, d                                          ; $7b66: $5a

jr_08e_7b67:
	ld c, h                                          ; $7b67: $4c
	add hl, bc                                       ; $7b68: $09
	ld [$a8f7], a                                    ; $7b69: $ea $f7 $a8
	sub c                                            ; $7b6c: $91
	ldh a, [$59]                                     ; $7b6d: $f0 $59
	ld c, h                                          ; $7b6f: $4c
	and b                                            ; $7b70: $a0
	cpl                                              ; $7b71: $2f
	db $ec                                           ; $7b72: $ec
	ld d, $36                                        ; $7b73: $16 $36
	db $ed                                           ; $7b75: $ed
	ld e, [hl]                                       ; $7b76: $5e
	add hl, bc                                       ; $7b77: $09
	ldh a, [c]                                       ; $7b78: $f2
	rra                                              ; $7b79: $1f
	ldh a, [$38]                                     ; $7b7a: $f0 $38
	ld b, a                                          ; $7b7c: $47
	ldh a, [$0c]                                     ; $7b7d: $f0 $0c
	jr c, @+$3f                                      ; $7b7f: $38 $3d

	ld b, d                                          ; $7b81: $42
	ld d, e                                          ; $7b82: $53
	inc de                                           ; $7b83: $13
	ldh a, [$2a]                                     ; $7b84: $f0 $2a
	ldh a, [$f5]                                     ; $7b86: $f0 $f5
	jr c, jr_08e_7bd4                                ; $7b88: $38 $4a

	ld a, $3d                                        ; $7b8a: $3e $3d
	ld h, e                                          ; $7b8c: $63

jr_08e_7b8d:
	and b                                            ; $7b8d: $a0
	cpl                                              ; $7b8e: $2f

jr_08e_7b8f:
	jp hl                                            ; $7b8f: $e9


	or a                                             ; $7b90: $b7
	add hl, bc                                       ; $7b91: $09
	ld d, d                                          ; $7b92: $52
	ld b, [hl]                                       ; $7b93: $46
	xor h                                            ; $7b94: $ac
	ld l, a                                          ; $7b95: $6f
	ld b, a                                          ; $7b96: $47
	ld c, e                                          ; $7b97: $4b
	db $f4                                           ; $7b98: $f4
	sbc h                                            ; $7b99: $9c
	ld a, e                                          ; $7b9a: $7b
	ld a, [hl-]                                      ; $7b9b: $3a
	jr c, jr_08e_7bfb                                ; $7b9c: $38 $5d

	ld c, l                                          ; $7b9e: $4d
	ld e, d                                          ; $7b9f: $5a
	and b                                            ; $7ba0: $a0
	ld e, b                                          ; $7ba1: $58
	ld b, [hl]                                       ; $7ba2: $46
	inc [hl]                                         ; $7ba3: $34
	db $ed                                           ; $7ba4: $ed
	ld d, a                                          ; $7ba5: $57
	ld e, d                                          ; $7ba6: $5a
	ld d, h                                          ; $7ba7: $54
	ld b, a                                          ; $7ba8: $47
	inc de                                           ; $7ba9: $13
	ldh a, [c]                                       ; $7baa: $f2
	sub e                                            ; $7bab: $93
	pop af                                           ; $7bac: $f1
	ld [hl], a                                       ; $7bad: $77
	ld a, $3f                                        ; $7bae: $3e $3f
	ld d, l                                          ; $7bb0: $55
	ld c, l                                          ; $7bb1: $4d
	ld c, [hl]                                       ; $7bb2: $4e
	ld b, d                                          ; $7bb3: $42
	inc a                                            ; $7bb4: $3c
	ld a, $50                                        ; $7bb5: $3e $50
	and c                                            ; $7bb7: $a1
	cpl                                              ; $7bb8: $2f
	add sp, -$29                                     ; $7bb9: $e8 $d7
	add hl, bc                                       ; $7bbb: $09
	ld [$a8e7], a                                    ; $7bbc: $ea $e7 $a8
	ld c, d                                          ; $7bbf: $4a
	ld c, e                                          ; $7bc0: $4b
	inc [hl]                                         ; $7bc1: $34
	ld [$a0a9], a                                    ; $7bc2: $ea $a9 $a0
	cpl                                              ; $7bc5: $2f
	add sp, -$28                                     ; $7bc6: $e8 $d8
	add hl, bc                                       ; $7bc8: $09
	cpl                                              ; $7bc9: $2f
	add sp, -$27                                     ; $7bca: $e8 $d9
	add hl, bc                                       ; $7bcc: $09
	db $ed                                           ; $7bcd: $ed
	xor a                                            ; $7bce: $af
	db $ec                                           ; $7bcf: $ec
	dec bc                                           ; $7bd0: $0b
	xor b                                            ; $7bd1: $a8
	ldh a, [$9a]                                     ; $7bd2: $f0 $9a

jr_08e_7bd4:
	ld e, h                                          ; $7bd4: $5c
	ldh a, [rTMA]                                    ; $7bd5: $f0 $06
	dec sp                                           ; $7bd7: $3b
	ccf                                              ; $7bd8: $3f
	rst SubAFromDE                                          ; $7bd9: $df
	and b                                            ; $7bda: $a0
	ret                                              ; $7bdb: $c9


	ld [hl], d                                       ; $7bdc: $72
	ccf                                              ; $7bdd: $3f
	ld a, b                                          ; $7bde: $78
	ld c, [hl]                                       ; $7bdf: $4e
	inc a                                            ; $7be0: $3c
	ld d, b                                          ; $7be1: $50
	xor h                                            ; $7be2: $ac
	ld d, h                                          ; $7be3: $54
	ld d, h                                          ; $7be4: $54
	ld c, d                                          ; $7be5: $4a
	sbc c                                            ; $7be6: $99
	dec sp                                           ; $7be7: $3b
	ccf                                              ; $7be8: $3f
	ld a, [hl-]                                      ; $7be9: $3a
	ld e, b                                          ; $7bea: $58
	jr c, jr_08e_7b8d                                ; $7beb: $38 $a0

	cpl                                              ; $7bed: $2f
	ld b, e                                          ; $7bee: $43
	ld b, [hl]                                       ; $7bef: $46
	ld b, [hl]                                       ; $7bf0: $46
	xor h                                            ; $7bf1: $ac
	db $ec                                           ; $7bf2: $ec
	ld c, $72                                        ; $7bf3: $0e $72
	ccf                                              ; $7bf5: $3f
	ld e, h                                          ; $7bf6: $5c
	ccf                                              ; $7bf7: $3f
	jr c, jr_08e_7c32                                ; $7bf8: $38 $38

	ld b, l                                          ; $7bfa: $45

jr_08e_7bfb:
	and b                                            ; $7bfb: $a0
	sbc c                                            ; $7bfc: $99
	dec a                                            ; $7bfd: $3d
	ld a, c                                          ; $7bfe: $79
	dec a                                            ; $7bff: $3d
	inc a                                            ; $7c00: $3c
	ld a, $50                                        ; $7c01: $3e $50
	and c                                            ; $7c03: $a1
	cpl                                              ; $7c04: $2f
	add sp, $3c                                      ; $7c05: $e8 $3c
	add hl, bc                                       ; $7c07: $09
	ld b, b                                          ; $7c08: $40
	add hl, sp                                       ; $7c09: $39
	xor c                                            ; $7c0a: $a9
	ld a, [hl-]                                      ; $7c0b: $3a
	ld d, b                                          ; $7c0c: $50
	ld c, a                                          ; $7c0d: $4f
	add hl, sp                                       ; $7c0e: $39
	ld l, l                                          ; $7c0f: $6d
	ldh a, [$0d]                                     ; $7c10: $f0 $0d
	xor h                                            ; $7c12: $ac
	ld h, a                                          ; $7c13: $67
	dec sp                                           ; $7c14: $3b
	ccf                                              ; $7c15: $3f
	ld d, l                                          ; $7c16: $55
	ld c, [hl]                                       ; $7c17: $4e
	ld h, e                                          ; $7c18: $63
	ld c, h                                          ; $7c19: $4c
	and b                                            ; $7c1a: $a0
	cpl                                              ; $7c1b: $2f
	add sp, $19                                      ; $7c1c: $e8 $19
	add hl, bc                                       ; $7c1e: $09
	xor $14                                          ; $7c1f: $ee $14
	inc [hl]                                         ; $7c21: $34
	ld l, a                                          ; $7c22: $6f
	ld h, d                                          ; $7c23: $62
	sbc c                                            ; $7c24: $99
	ccf                                              ; $7c25: $3f
	ld c, [hl]                                       ; $7c26: $4e
	ld d, h                                          ; $7c27: $54
	ld c, c                                          ; $7c28: $49
	ld h, d                                          ; $7c29: $62
	inc de                                           ; $7c2a: $13
	ldh a, [c]                                       ; $7c2b: $f2
	ld b, l                                          ; $7c2c: $45
	db $f4                                           ; $7c2d: $f4
	and h                                            ; $7c2e: $a4
	ld b, a                                          ; $7c2f: $47

jr_08e_7c30:
	ld [hl], a                                       ; $7c30: $77
	add hl, sp                                       ; $7c31: $39

jr_08e_7c32:
	ld d, h                                          ; $7c32: $54
	ld c, c                                          ; $7c33: $49
	ld c, h                                          ; $7c34: $4c
	and b                                            ; $7c35: $a0
	cpl                                              ; $7c36: $2f
	db $eb                                           ; $7c37: $eb
	ld e, $a1                                        ; $7c38: $1e $a1
	ld d, d                                          ; $7c3a: $52
	ld b, h                                          ; $7c3b: $44
	ld d, d                                          ; $7c3c: $52
	ld b, h                                          ; $7c3d: $44
	ld b, l                                          ; $7c3e: $45
	xor b                                            ; $7c3f: $a8
	ld c, a                                          ; $7c40: $4f
	add hl, sp                                       ; $7c41: $39
	ld l, l                                          ; $7c42: $6d
	ldh a, [$0d]                                     ; $7c43: $f0 $0d
	ld h, a                                          ; $7c45: $67
	dec sp                                           ; $7c46: $3b
	ccf                                              ; $7c47: $3f
	ld a, b                                          ; $7c48: $78
	ld c, [hl]                                       ; $7c49: $4e
	ld h, e                                          ; $7c4a: $63
	and b                                            ; $7c4b: $a0
	ldh a, [$80]                                     ; $7c4c: $f0 $80
	ldh a, [$c5]                                     ; $7c4e: $f0 $c5
	inc [hl]                                         ; $7c50: $34
	pop af                                           ; $7c51: $f1
	ld c, $3b                                        ; $7c52: $0e $3b
	ldh [$a0], a                                     ; $7c54: $e0 $a0
	cpl                                              ; $7c56: $2f
	ld [$0947], a                                    ; $7c57: $ea $47 $09
	sub c                                            ; $7c5a: $91
	ldh a, [$59]                                     ; $7c5b: $f0 $59
	ld c, h                                          ; $7c5d: $4c
	xor b                                            ; $7c5e: $a8
	jp hl                                            ; $7c5f: $e9


	ld a, [hl+]                                      ; $7c60: $2a
	and b                                            ; $7c61: $a0
	cpl                                              ; $7c62: $2f
	add sp, $3d                                      ; $7c63: $e8 $3d
	add hl, bc                                       ; $7c65: $09
	ld b, b                                          ; $7c66: $40
	ld b, c                                          ; $7c67: $41
	ld a, [hl-]                                      ; $7c68: $3a
	ld b, d                                          ; $7c69: $42
	xor h                                            ; $7c6a: $ac
	ld l, a                                          ; $7c6b: $6f
	ld b, d                                          ; $7c6c: $42
	ldh a, [$6f]                                     ; $7c6d: $f0 $6f
	ldh a, [$0b]                                     ; $7c6f: $f0 $0b
	ld c, d                                          ; $7c71: $4a
	ld a, $66                                        ; $7c72: $3e $66
	add hl, sp                                       ; $7c74: $39
	and b                                            ; $7c75: $a0
	cpl                                              ; $7c76: $2f
	add sp, $60                                      ; $7c77: $e8 $60
	add hl, bc                                       ; $7c79: $09
	ldh a, [$0a]                                     ; $7c7a: $f0 $0a
	ld d, l                                          ; $7c7c: $55
	ldh a, [rHDMA1]                                  ; $7c7d: $f0 $51
	dec sp                                           ; $7c7f: $3b
	ccf                                              ; $7c80: $3f
	ldh a, [$a3]                                     ; $7c81: $f0 $a3
	ld e, b                                          ; $7c83: $58
	ld d, b                                          ; $7c84: $50
	ld a, [hl-]                                      ; $7c85: $3a
	jr c, jr_08e_7c30                                ; $7c86: $38 $a8

	ld b, b                                          ; $7c88: $40
	ld c, l                                          ; $7c89: $4d
	ld c, c                                          ; $7c8a: $49
	ld c, a                                          ; $7c8b: $4f
	xor h                                            ; $7c8c: $ac
	ld l, a                                          ; $7c8d: $6f
	ld b, a                                          ; $7c8e: $47
	ldh a, [rHDMA1]                                  ; $7c8f: $f0 $51
	dec a                                            ; $7c91: $3d
	ld a, c                                          ; $7c92: $79
	ld c, [hl]                                       ; $7c93: $4e
	add b                                            ; $7c94: $80
	ld c, a                                          ; $7c95: $4f
	ld d, a                                          ; $7c96: $57
	and c                                            ; $7c97: $a1
	xor $14                                          ; $7c98: $ee $14
	inc [hl]                                         ; $7c9a: $34
	ld d, h                                          ; $7c9b: $54
	ld b, d                                          ; $7c9c: $42
	pop af                                           ; $7c9d: $f1
	ld a, d                                          ; $7c9e: $7a
	inc de                                           ; $7c9f: $13
	pop de                                           ; $7ca0: $d1
	jr c, jr_08e_7cdb                                ; $7ca1: $38 $38

	ld h, e                                          ; $7ca3: $63
	ld c, h                                          ; $7ca4: $4c
	and b                                            ; $7ca5: $a0
	cpl                                              ; $7ca6: $2f
	ld b, e                                          ; $7ca7: $43
	adc b                                            ; $7ca8: $88
	sub c                                            ; $7ca9: $91
	ld b, h                                          ; $7caa: $44
	inc [hl]                                         ; $7cab: $34
	ld a, [hl]                                       ; $7cac: $7e
	jr c, jr_08e_7cfb                                ; $7cad: $38 $4c

	and b                                            ; $7caf: $a0
	ld e, d                                          ; $7cb0: $5a
	ld b, d                                          ; $7cb1: $42
	pop af                                           ; $7cb2: $f1
	ld l, [hl]                                       ; $7cb3: $6e
	ld d, e                                          ; $7cb4: $53
	inc de                                           ; $7cb5: $13
	ld l, a                                          ; $7cb6: $6f
	ld b, a                                          ; $7cb7: $47
	ldh a, [rPCM12]                                  ; $7cb8: $f0 $76
	ldh a, [rTMA]                                    ; $7cba: $f0 $06
	add hl, sp                                       ; $7cbc: $39
	inc a                                            ; $7cbd: $3c
	ld a, $50                                        ; $7cbe: $3e $50
	and c                                            ; $7cc0: $a1
	cpl                                              ; $7cc1: $2f
	di                                               ; $7cc2: $f3
	add hl, bc                                       ; $7cc3: $09
	ld d, e                                          ; $7cc4: $53
	ldh a, [rPCM12]                                  ; $7cc5: $f0 $76
	ldh a, [rTMA]                                    ; $7cc7: $f0 $06
	add hl, sp                                       ; $7cc9: $39
	ld b, l                                          ; $7cca: $45
	add hl, bc                                       ; $7ccb: $09
	pop de                                           ; $7ccc: $d1
	ld b, d                                          ; $7ccd: $42
	ldh a, [$7b]                                     ; $7cce: $f0 $7b
	ld h, l                                          ; $7cd0: $65
	add e                                            ; $7cd1: $83

jr_08e_7cd2:
	ld c, h                                          ; $7cd2: $4c
	xor b                                            ; $7cd3: $a8
	ld h, e                                          ; $7cd4: $63
	ld d, a                                          ; $7cd5: $57
	ld c, c                                          ; $7cd6: $49
	ret nc                                           ; $7cd7: $d0

	and b                                            ; $7cd8: $a0
	cpl                                              ; $7cd9: $2f
	ld b, e                                          ; $7cda: $43

jr_08e_7cdb:
	db $ec                                           ; $7cdb: $ec
	reti                                             ; $7cdc: $d9


	xor h                                            ; $7cdd: $ac
	db $ed                                           ; $7cde: $ed
	ld d, e                                          ; $7cdf: $53
	ld b, a                                          ; $7ce0: $47
	ld c, e                                          ; $7ce1: $4b
	ld d, h                                          ; $7ce2: $54
	ld b, d                                          ; $7ce3: $42
	pop af                                           ; $7ce4: $f1
	ld l, [hl]                                       ; $7ce5: $6e
	ld b, h                                          ; $7ce6: $44
	ld b, l                                          ; $7ce7: $45
	and b                                            ; $7ce8: $a0
	cpl                                              ; $7ce9: $2f
	di                                               ; $7cea: $f3
	sbc b                                            ; $7ceb: $98
	pop af                                           ; $7cec: $f1
	ld l, [hl]                                       ; $7ced: $6e
	ld d, e                                          ; $7cee: $53
	ldh a, [rPCM12]                                  ; $7cef: $f0 $76
	ldh a, [rTMA]                                    ; $7cf1: $f0 $06
	add hl, sp                                       ; $7cf3: $39
	ld b, l                                          ; $7cf4: $45
	add hl, bc                                       ; $7cf5: $09
	sbc $54                                          ; $7cf6: $de $54
	ld b, d                                          ; $7cf8: $42
	pop af                                           ; $7cf9: $f1
	ld l, [hl]                                       ; $7cfa: $6e

jr_08e_7cfb:
	ld d, e                                          ; $7cfb: $53
	inc de                                           ; $7cfc: $13
	ldh a, [rPCM12]                                  ; $7cfd: $f0 $76
	ldh a, [rTMA]                                    ; $7cff: $f0 $06
	add hl, sp                                       ; $7d01: $39
	ld c, c                                          ; $7d02: $49
	ld [hl], a                                       ; $7d03: $77
	dec sp                                           ; $7d04: $3b
	ccf                                              ; $7d05: $3f
	and c                                            ; $7d06: $a1
	cpl                                              ; $7d07: $2f
	ld b, e                                          ; $7d08: $43
	ld b, h                                          ; $7d09: $44
	inc [hl]                                         ; $7d0a: $34
	xor $05                                          ; $7d0b: $ee $05
	xor c                                            ; $7d0d: $a9
	halt                                             ; $7d0e: $76
	ld c, e                                          ; $7d0f: $4b
	inc [hl]                                         ; $7d10: $34
	jr c, jr_08e_7d4b                                ; $7d11: $38 $38

	ld c, c                                          ; $7d13: $49
	ld [hl], a                                       ; $7d14: $77
	xor $1f                                          ; $7d15: $ee $1f
	ld b, h                                          ; $7d17: $44
	ld e, l                                          ; $7d18: $5d
	ld e, d                                          ; $7d19: $5a
	and b                                            ; $7d1a: $a0
	db $ec                                           ; $7d1b: $ec
	ld a, e                                          ; $7d1c: $7b
	sub l                                            ; $7d1d: $95
	ldh a, [$1f]                                     ; $7d1e: $f0 $1f
	ld c, h                                          ; $7d20: $4c
	xor b                                            ; $7d21: $a8
	ld h, h                                          ; $7d22: $64
	ld a, $56                                        ; $7d23: $3e $56
	ld c, l                                          ; $7d25: $4d
	ld b, d                                          ; $7d26: $42
	inc de                                           ; $7d27: $13
	ldh a, [$dd]                                     ; $7d28: $f0 $dd
	ldh a, [$9c]                                     ; $7d2a: $f0 $9c
	ld h, d                                          ; $7d2c: $62
	ld a, $3a                                        ; $7d2d: $3e $3a
	ld e, b                                          ; $7d2f: $58
	jr c, jr_08e_7cd2                                ; $7d30: $38 $a0

	cpl                                              ; $7d32: $2f
	ld b, e                                          ; $7d33: $43
	ld c, e                                          ; $7d34: $4b
	inc [hl]                                         ; $7d35: $34
	xor $2d                                          ; $7d36: $ee $2d
	ld c, b                                          ; $7d38: $48
	and b                                            ; $7d39: $a0
	cpl                                              ; $7d3a: $2f
	db $f4                                           ; $7d3b: $f4
	rlca                                             ; $7d3c: $07
	ld d, e                                          ; $7d3d: $53
	ldh a, [rPCM12]                                  ; $7d3e: $f0 $76
	ldh a, [rTMA]                                    ; $7d40: $f0 $06
	add hl, sp                                       ; $7d42: $39
	ld b, l                                          ; $7d43: $45
	add hl, bc                                       ; $7d44: $09
	ld c, c                                          ; $7d45: $49
	ld d, a                                          ; $7d46: $57
	ld b, [hl]                                       ; $7d47: $46
	ld e, [hl]                                       ; $7d48: $5e
	sbc h                                            ; $7d49: $9c
	xor h                                            ; $7d4a: $ac

jr_08e_7d4b:
	db $ec                                           ; $7d4b: $ec
	sub $4c                                          ; $7d4c: $d6 $4c
	xor b                                            ; $7d4e: $a8
	db $ed                                           ; $7d4f: $ed
	sub h                                            ; $7d50: $94
	ld b, a                                          ; $7d51: $47
	ld [hl], d                                       ; $7d52: $72
	ccf                                              ; $7d53: $3f
	ld e, d                                          ; $7d54: $5a
	add hl, sp                                       ; $7d55: $39
	ld [hl], a                                       ; $7d56: $77
	add hl, sp                                       ; $7d57: $39
	and c                                            ; $7d58: $a1
	cpl                                              ; $7d59: $2f
	ld b, e                                          ; $7d5a: $43
	rst JumpTable                                          ; $7d5b: $c7
	ld b, h                                          ; $7d5c: $44
	ld c, h                                          ; $7d5d: $4c
	xor b                                            ; $7d5e: $a8
	jr c, @+$54                                      ; $7d5f: $38 $52

	jr c, @+$63                                      ; $7d61: $38 $61

	inc a                                            ; $7d63: $3c
	ld a, [hl-]                                      ; $7d64: $3a
	and b                                            ; $7d65: $a0
	call c, Call_08e_4fa8                            ; $7d66: $dc $a8 $4f
	add hl, sp                                       ; $7d69: $39
	ldh a, [rHDMA4]                                  ; $7d6a: $f0 $54
	ld a, $ac                                        ; $7d6c: $3e $ac
	ldh a, [$dd]                                     ; $7d6e: $f0 $dd
	ldh a, [$9c]                                     ; $7d70: $f0 $9c
	ld a, $3d                                        ; $7d72: $3e $3d
	ldh a, [$08]                                     ; $7d74: $f0 $08
	add hl, sp                                       ; $7d76: $39
	ld d, e                                          ; $7d77: $53
	jr c, jr_08e_7db2                                ; $7d78: $38 $38

	ld h, e                                          ; $7d7a: $63
	ld c, h                                          ; $7d7b: $4c
	and b                                            ; $7d7c: $a0
	ld b, b                                          ; $7d7d: $40
	ld c, l                                          ; $7d7e: $4d
	ld e, e                                          ; $7d7f: $5b
	ld d, [hl]                                       ; $7d80: $56
	xor h                                            ; $7d81: $ac
	pop af                                           ; $7d82: $f1
	add hl, sp                                       ; $7d83: $39
	ldh a, [$ac]                                     ; $7d84: $f0 $ac
	ld a, $3f                                        ; $7d86: $3e $3f
	ld d, l                                          ; $7d88: $55
	ld c, [hl]                                       ; $7d89: $4e
	inc a                                            ; $7d8a: $3c
	ld d, b                                          ; $7d8b: $50
	xor h                                            ; $7d8c: $ac
	sbc c                                            ; $7d8d: $99
	dec sp                                           ; $7d8e: $3b
	ccf                                              ; $7d8f: $3f
	ccf                                              ; $7d90: $3f
	and b                                            ; $7d91: $a0
	xor $14                                          ; $7d92: $ee $14
	xor c                                            ; $7d94: $a9
	ld d, h                                          ; $7d95: $54
	ld c, l                                          ; $7d96: $4d
	inc [hl]                                         ; $7d97: $34
	pop de                                           ; $7d98: $d1
	sbc b                                            ; $7d99: $98
	ldh a, [$7c]                                     ; $7d9a: $f0 $7c
	ld [hl], l                                       ; $7d9c: $75
	ccf                                              ; $7d9d: $3f
	ld c, [hl]                                       ; $7d9e: $4e
	ld h, e                                          ; $7d9f: $63
	ld c, h                                          ; $7da0: $4c
	and b                                            ; $7da1: $a0
	cpl                                              ; $7da2: $2f
	xor $1f                                          ; $7da3: $ee $1f
	inc [hl]                                         ; $7da5: $34
	db $ed                                           ; $7da6: $ed
	ld d, e                                          ; $7da7: $53
	ld b, a                                          ; $7da8: $47
	ld b, l                                          ; $7da9: $45
	ld d, l                                          ; $7daa: $55
	ldh a, [rPCM12]                                  ; $7dab: $f0 $76
	ldh a, [rTMA]                                    ; $7dad: $f0 $06
	add hl, sp                                       ; $7daf: $39
	ld b, l                                          ; $7db0: $45
	add hl, bc                                       ; $7db1: $09

jr_08e_7db2:
	call c, Call_08e_6fa8                            ; $7db2: $dc $a8 $6f
	ld b, a                                          ; $7db5: $47
	ldh a, [rSCY]                                    ; $7db6: $f0 $42
	ld e, b                                          ; $7db8: $58
	ld h, e                                          ; $7db9: $63
	ld a, $38                                        ; $7dba: $3e $38
	ld h, e                                          ; $7dbc: $63
	ld c, h                                          ; $7dbd: $4c
	and b                                            ; $7dbe: $a0
	cpl                                              ; $7dbf: $2f
	ld [$0953], a                                    ; $7dc0: $ea $53 $09
	xor $10                                          ; $7dc3: $ee $10
	xor b                                            ; $7dc5: $a8
	ldh a, [$7b]                                     ; $7dc6: $f0 $7b
	ld h, l                                          ; $7dc8: $65
	add e                                            ; $7dc9: $83
	db $ec                                           ; $7dca: $ec
	dec bc                                           ; $7dcb: $0b
	and b                                            ; $7dcc: $a0
	cpl                                              ; $7dcd: $2f
	ld c, d                                          ; $7dce: $4a
	ld c, a                                          ; $7dcf: $4f
	inc [hl]                                         ; $7dd0: $34
	ld b, [hl]                                       ; $7dd1: $46
	ld c, l                                          ; $7dd2: $4d
	ld c, a                                          ; $7dd3: $4f
	ldh a, [$80]                                     ; $7dd4: $f0 $80
	ldh a, [$c5]                                     ; $7dd6: $f0 $c5
	jr c, jr_08e_7e12                                ; $7dd8: $38 $38

	ld b, l                                          ; $7dda: $45
	add hl, bc                                       ; $7ddb: $09
	call c, $d1a8                                    ; $7ddc: $dc $a8 $d1
	ld c, h                                          ; $7ddf: $4c
	and b                                            ; $7de0: $a0
	ld c, h                                          ; $7de1: $4c
	add l                                            ; $7de2: $85
	xor h                                            ; $7de3: $ac
	ld l, a                                          ; $7de4: $6f
	ld b, a                                          ; $7de5: $47
	ldh a, [rPCM12]                                  ; $7de6: $f0 $76
	ldh a, [rTMA]                                    ; $7de8: $f0 $06
	add hl, sp                                       ; $7dea: $39
	db $eb                                           ; $7deb: $eb
	and b                                            ; $7dec: $a0
	inc de                                           ; $7ded: $13
	db $ed                                           ; $7dee: $ed
	ld bc, $a3f0                                     ; $7def: $01 $f0 $a3
	ld e, b                                          ; $7df2: $58
	ld c, [hl]                                       ; $7df3: $4e
	and c                                            ; $7df4: $a1
	cpl                                              ; $7df5: $2f
	add sp, -$6b                                     ; $7df6: $e8 $95
	and c                                            ; $7df8: $a1
	xor $14                                          ; $7df9: $ee $14
	xor c                                            ; $7dfb: $a9
	pop de                                           ; $7dfc: $d1
	jr c, jr_08e_7e37                                ; $7dfd: $38 $38

	db $ec                                           ; $7dff: $ec
	ret c                                            ; $7e00: $d8

	and b                                            ; $7e01: $a0
	cpl                                              ; $7e02: $2f
	jp hl                                            ; $7e03: $e9


	ld e, a                                          ; $7e04: $5f
	and c                                            ; $7e05: $a1
	ld l, a                                          ; $7e06: $6f
	ld h, d                                          ; $7e07: $62
	inc de                                           ; $7e08: $13
	inc a                                            ; $7e09: $3c
	ld d, b                                          ; $7e0a: $50
	inc a                                            ; $7e0b: $3c
	dec sp                                           ; $7e0c: $3b
	ccf                                              ; $7e0d: $3f
	jr c, @+$50                                      ; $7e0e: $38 $4e

	add b                                            ; $7e10: $80
	ld c, a                                          ; $7e11: $4f

jr_08e_7e12:
	ld d, a                                          ; $7e12: $57
	and c                                            ; $7e13: $a1
	cpl                                              ; $7e14: $2f
	ld d, h                                          ; $7e15: $54
	ld b, d                                          ; $7e16: $42
	pop af                                           ; $7e17: $f1
	cp a                                             ; $7e18: $bf
	db $ec                                           ; $7e19: $ec
	and [hl]                                         ; $7e1a: $a6
	ld c, e                                          ; $7e1b: $4b
	ld e, d                                          ; $7e1c: $5a
	add hl, sp                                       ; $7e1d: $39
	and c                                            ; $7e1e: $a1
	db $ec                                           ; $7e1f: $ec
	sub $4c                                          ; $7e20: $d6 $4c
	and b                                            ; $7e22: $a0
	ld l, e                                          ; $7e23: $6b
	inc a                                            ; $7e24: $3c
	inc [hl]                                         ; $7e25: $34
	ldh a, [$64]                                     ; $7e26: $f0 $64
	ld a, [hl-]                                      ; $7e28: $3a
	db $ec                                           ; $7e29: $ec
	cp $4c                                           ; $7e2a: $fe $4c
	and b                                            ; $7e2c: $a0
	cpl                                              ; $7e2d: $2f
	ld b, b                                          ; $7e2e: $40
	add hl, sp                                       ; $7e2f: $39
	ld b, h                                          ; $7e30: $44
	ld c, h                                          ; $7e31: $4c
	inc [hl]                                         ; $7e32: $34
	ld c, a                                          ; $7e33: $4f
	add hl, sp                                       ; $7e34: $39
	db $ec                                           ; $7e35: $ec
	rrca                                             ; $7e36: $0f

jr_08e_7e37:
	and c                                            ; $7e37: $a1
	rst JumpTable                                          ; $7e38: $c7
	ld a, $3f                                        ; $7e39: $3e $3f
	inc de                                           ; $7e3b: $13
	db $eb                                           ; $7e3c: $eb
	sub b                                            ; $7e3d: $90
	inc a                                            ; $7e3e: $3c
	ld a, $50                                        ; $7e3f: $3e $50
	and c                                            ; $7e41: $a1
	cpl                                              ; $7e42: $2f
	ld c, a                                          ; $7e43: $4f
	ld a, $3c                                        ; $7e44: $3e $3c
	ld a, $3f                                        ; $7e46: $3e $3f
	ldh a, [$71]                                     ; $7e48: $f0 $71
	jr c, @+$44                                      ; $7e4a: $38 $42

	and c                                            ; $7e4c: $a1
	ld b, b                                          ; $7e4d: $40
	inc [hl]                                         ; $7e4e: $34
	ld b, b                                          ; $7e4f: $40
	ld b, c                                          ; $7e50: $41
	ld a, [hl-]                                      ; $7e51: $3a
	ld d, h                                          ; $7e52: $54
	ld c, c                                          ; $7e53: $49
	ld a, [hl-]                                      ; $7e54: $3a
	jr c, @+$65                                      ; $7e55: $38 $63

	xor b                                            ; $7e57: $a8
	adc b                                            ; $7e58: $88
	sub c                                            ; $7e59: $91
	ld b, l                                          ; $7e5a: $45
	and b                                            ; $7e5b: $a0
	cpl                                              ; $7e5c: $2f
	add sp, $37                                      ; $7e5d: $e8 $37
	add hl, bc                                       ; $7e5f: $09
	rst JumpTable                                          ; $7e60: $c7
	ld c, b                                          ; $7e61: $48
	and c                                            ; $7e62: $a1
	jr c, jr_08e_7e99                                ; $7e63: $38 $34

	jr c, @-$7e                                      ; $7e65: $38 $80

	ld a, b                                          ; $7e67: $78
	ccf                                              ; $7e68: $3f
	ld c, a                                          ; $7e69: $4f
	xor h                                            ; $7e6a: $ac
	ld d, c                                          ; $7e6b: $51
	ld [hl], b                                       ; $7e6c: $70
	jr c, jr_08e_7ed2                                ; $7e6d: $38 $63

	ld c, h                                          ; $7e6f: $4c
	and b                                            ; $7e70: $a0
	cpl                                              ; $7e71: $2f
	add sp, -$6a                                     ; $7e72: $e8 $96
	add hl, bc                                       ; $7e74: $09
	ld c, e                                          ; $7e75: $4b
	inc [hl]                                         ; $7e76: $34
	ldh a, [$0a]                                     ; $7e77: $f0 $0a
	ld d, l                                          ; $7e79: $55
	ld a, $3f                                        ; $7e7a: $3e $3f
	ld b, l                                          ; $7e7c: $45
	ld c, h                                          ; $7e7d: $4c
	xor b                                            ; $7e7e: $a8
	ld l, a                                          ; $7e7f: $6f
	ld c, e                                          ; $7e80: $4b
	sbc c                                            ; $7e81: $99
	add b                                            ; $7e82: $80
	ld b, d                                          ; $7e83: $42
	ld c, e                                          ; $7e84: $4b
	ldh a, [$64]                                     ; $7e85: $f0 $64
	jr c, jr_08e_7ec3                                ; $7e87: $38 $3a

	ld b, d                                          ; $7e89: $42
	ld b, l                                          ; $7e8a: $45
	and b                                            ; $7e8b: $a0
	cpl                                              ; $7e8c: $2f
	add sp, $6a                                      ; $7e8d: $e8 $6a
	and c                                            ; $7e8f: $a1
	ld e, [hl]                                       ; $7e90: $5e
	inc [hl]                                         ; $7e91: $34
	pop af                                           ; $7e92: $f1
	ld b, $f1                                        ; $7e93: $06 $f1
	ld a, $3e                                        ; $7e95: $3e $3e
	ccf                                              ; $7e97: $3f
	ld h, h                                          ; $7e98: $64

jr_08e_7e99:
	ld d, l                                          ; $7e99: $55
	ld h, e                                          ; $7e9a: $63
	and b                                            ; $7e9b: $a0
	cpl                                              ; $7e9c: $2f
	jp hl                                            ; $7e9d: $e9


	nop                                              ; $7e9e: $00
	add hl, bc                                       ; $7e9f: $09
	ld d, h                                          ; $7ea0: $54
	inc [hl]                                         ; $7ea1: $34
	ld d, h                                          ; $7ea2: $54
	ld b, c                                          ; $7ea3: $41
	ld a, [hl-]                                      ; $7ea4: $3a
	ldh a, [$28]                                     ; $7ea5: $f0 $28
	ld c, e                                          ; $7ea7: $4b
	xor h                                            ; $7ea8: $ac
	ld l, a                                          ; $7ea9: $6f
	ld b, a                                          ; $7eaa: $47
	ld c, e                                          ; $7eab: $4b
	ldh a, [rPCM12]                                  ; $7eac: $f0 $76
	ldh a, [rTMA]                                    ; $7eae: $f0 $06
	jr c, jr_08e_7f04                                ; $7eb0: $38 $52

	ld a, c                                          ; $7eb2: $79
	ld b, c                                          ; $7eb3: $41
	ld h, e                                          ; $7eb4: $63
	and b                                            ; $7eb5: $a0
	db $ec                                           ; $7eb6: $ec
	push bc                                          ; $7eb7: $c5
	xor h                                            ; $7eb8: $ac
	ld [$a0cd], a                                    ; $7eb9: $ea $cd $a0
	cpl                                              ; $7ebc: $2f
	ld b, e                                          ; $7ebd: $43
	ld b, b                                          ; $7ebe: $40
	add hl, sp                                       ; $7ebf: $39
	ld b, h                                          ; $7ec0: $44
	ld c, h                                          ; $7ec1: $4c
	xor b                                            ; $7ec2: $a8

jr_08e_7ec3:
	db $eb                                           ; $7ec3: $eb
	ld d, d                                          ; $7ec4: $52
	inc a                                            ; $7ec5: $3c
	and b                                            ; $7ec6: $a0
	pop de                                           ; $7ec7: $d1
	db $ed                                           ; $7ec8: $ed
	ld c, c                                          ; $7ec9: $49
	db $ec                                           ; $7eca: $ec
	ret c                                            ; $7ecb: $d8

	and b                                            ; $7ecc: $a0
	cpl                                              ; $7ecd: $2f
	jp hl                                            ; $7ece: $e9


	ld a, $09                                        ; $7ecf: $3e $09
	db $ec                                           ; $7ed1: $ec

jr_08e_7ed2:
	ld a, [de]                                       ; $7ed2: $1a
	inc [hl]                                         ; $7ed3: $34
	jr c, jr_08e_7f0e                                ; $7ed4: $38 $38

	sbc d                                            ; $7ed6: $9a
	inc de                                           ; $7ed7: $13
	add d                                            ; $7ed8: $82
	add hl, sp                                       ; $7ed9: $39
	ld h, e                                          ; $7eda: $63
	ld c, h                                          ; $7edb: $4c
	dec [hl]                                         ; $7edc: $35
	pop af                                           ; $7edd: $f1
	db $d3                                           ; $7ede: $d3
	ld [hl], c                                       ; $7edf: $71
	ccf                                              ; $7ee0: $3f
	rst SubAFromDE                                          ; $7ee1: $df
	ld h, e                                          ; $7ee2: $63
	and b                                            ; $7ee3: $a0
	cpl                                              ; $7ee4: $2f
	add sp, -$20                                     ; $7ee5: $e8 $e0
	add hl, bc                                       ; $7ee7: $09
	xor $10                                          ; $7ee8: $ee $10
	xor b                                            ; $7eea: $a8
	ldh a, [$0c]                                     ; $7eeb: $f0 $0c
	inc a                                            ; $7eed: $3c
	ld a, [hl-]                                      ; $7eee: $3a
	inc a                                            ; $7eef: $3c
	dec sp                                           ; $7ef0: $3b
	dec a                                            ; $7ef1: $3d
	sbc d                                            ; $7ef2: $9a
	ld b, a                                          ; $7ef3: $47
	inc de                                           ; $7ef4: $13
	ld a, $3f                                        ; $7ef5: $3e $3f
	rst SubAFromDE                                          ; $7ef7: $df
	ld h, e                                          ; $7ef8: $63
	and b                                            ; $7ef9: $a0
	ld d, d                                          ; $7efa: $52
	ld b, [hl]                                       ; $7efb: $46
	inc [hl]                                         ; $7efc: $34
	ld l, a                                          ; $7efd: $6f
	ld b, d                                          ; $7efe: $42
	adc d                                            ; $7eff: $8a
	db $f4                                           ; $7f00: $f4
	ld l, b                                          ; $7f01: $68
	ld b, a                                          ; $7f02: $47
	ld c, e                                          ; $7f03: $4b

jr_08e_7f04:
	inc de                                           ; $7f04: $13
	pop af                                           ; $7f05: $f1
	ld b, $55                                        ; $7f06: $06 $55
	db $f4                                           ; $7f08: $f4
	sbc h                                            ; $7f09: $9c
	ld a, e                                          ; $7f0a: $7b
	ld a, [hl-]                                      ; $7f0b: $3a
	jr c, jr_08e_7f6b                                ; $7f0c: $38 $5d

jr_08e_7f0e:
	ld c, l                                          ; $7f0e: $4d
	ld e, d                                          ; $7f0f: $5a
	ld c, b                                          ; $7f10: $48
	and b                                            ; $7f11: $a0
	xor $14                                          ; $7f12: $ee $14
	inc [hl]                                         ; $7f14: $34
	xor $1e                                          ; $7f15: $ee $1e
	pop af                                           ; $7f17: $f1
	xor c                                            ; $7f18: $a9
	xor h                                            ; $7f19: $ac
	ldh a, [c]                                       ; $7f1a: $f2
	rra                                              ; $7f1b: $1f
	ldh a, [$38]                                     ; $7f1c: $f0 $38
	ld b, b                                          ; $7f1e: $40
	dec sp                                           ; $7f1f: $3b
	ld d, l                                          ; $7f20: $55
	ld d, a                                          ; $7f21: $57
	db $ec                                           ; $7f22: $ec
	ret c                                            ; $7f23: $d8

	and c                                            ; $7f24: $a1
	cpl                                              ; $7f25: $2f
	ld b, [hl]                                       ; $7f26: $46
	ld c, e                                          ; $7f27: $4b
	ld c, e                                          ; $7f28: $4b
	ld c, e                                          ; $7f29: $4b
	dec [hl]                                         ; $7f2a: $35
	adc b                                            ; $7f2b: $88
	sub c                                            ; $7f2c: $91
	ld b, h                                          ; $7f2d: $44
	add hl, bc                                       ; $7f2e: $09

jr_08e_7f2f:
	ld b, b                                          ; $7f2f: $40
	dec sp                                           ; $7f30: $3b
	ld d, l                                          ; $7f31: $55
	ld d, a                                          ; $7f32: $57
	ld b, l                                          ; $7f33: $45
	ld c, h                                          ; $7f34: $4c
	add l                                            ; $7f35: $85
	xor b                                            ; $7f36: $a8
	ld h, h                                          ; $7f37: $64
	ldh a, [$08]                                     ; $7f38: $f0 $08
	ldh a, [$08]                                     ; $7f3a: $f0 $08
	ldh a, [$08]                                     ; $7f3c: $f0 $08
	ldh a, [$08]                                     ; $7f3e: $f0 $08
	ldh a, [$08]                                     ; $7f40: $f0 $08
	and b                                            ; $7f42: $a0
	cpl                                              ; $7f43: $2f
	ld b, [hl]                                       ; $7f44: $46
	ld b, c                                          ; $7f45: $41
	ld a, [hl-]                                      ; $7f46: $3a
	ld b, d                                          ; $7f47: $42
	ld c, c                                          ; $7f48: $49
	xor $06                                          ; $7f49: $ee $06
	ld b, a                                          ; $7f4b: $47
	ld a, $3a                                        ; $7f4c: $3e $3a
	jr c, jr_08e_7f9a                                ; $7f4e: $38 $4a

	ld d, l                                          ; $7f50: $55
	ld c, l                                          ; $7f51: $4d
	add hl, bc                                       ; $7f52: $09
	xor $14                                          ; $7f53: $ee $14
	inc [hl]                                         ; $7f55: $34
	ldh a, [c]                                       ; $7f56: $f2
	rra                                              ; $7f57: $1f
	ldh a, [$38]                                     ; $7f58: $f0 $38
	xor h                                            ; $7f5a: $ac
	ld l, a                                          ; $7f5b: $6f
	ld b, a                                          ; $7f5c: $47
	ld b, b                                          ; $7f5d: $40
	ld b, c                                          ; $7f5e: $41
	ld a, [hl-]                                      ; $7f5f: $3a
	pop af                                           ; $7f60: $f1
	push af                                          ; $7f61: $f5
	ld d, e                                          ; $7f62: $53
	ld e, h                                          ; $7f63: $5c
	ld e, l                                          ; $7f64: $5d
	ccf                                              ; $7f65: $3f
	and c                                            ; $7f66: $a1
	cpl                                              ; $7f67: $2f
	db $ec                                           ; $7f68: $ec
	ld d, $a1                                        ; $7f69: $16 $a1

jr_08e_7f6b:
	db $ec                                           ; $7f6b: $ec
	db $f4                                           ; $7f6c: $f4
	xor b                                            ; $7f6d: $a8
	ld b, b                                          ; $7f6e: $40
	dec sp                                           ; $7f6f: $3b
	ld d, l                                          ; $7f70: $55
	ld d, a                                          ; $7f71: $57
	ld b, l                                          ; $7f72: $45
	xor b                                            ; $7f73: $a8
	ldh a, [$08]                                     ; $7f74: $f0 $08
	ldh a, [$08]                                     ; $7f76: $f0 $08
	ldh a, [$08]                                     ; $7f78: $f0 $08
	ldh a, [$08]                                     ; $7f7a: $f0 $08
	ldh a, [$08]                                     ; $7f7c: $f0 $08
	and b                                            ; $7f7e: $a0
	cpl                                              ; $7f7f: $2f
	ld b, e                                          ; $7f80: $43
	ld l, d                                          ; $7f81: $6a
	ld b, d                                          ; $7f82: $42
	inc [hl]                                         ; $7f83: $34
	db $eb                                           ; $7f84: $eb
	ld a, [hl+]                                      ; $7f85: $2a
	inc de                                           ; $7f86: $13
	cp e                                             ; $7f87: $bb
	ld c, c                                          ; $7f88: $49
	ld [hl], a                                       ; $7f89: $77
	ld h, e                                          ; $7f8a: $63
	ld a, [hl-]                                      ; $7f8b: $3a
	jr c, jr_08e_7f2f                                ; $7f8c: $38 $a1

	ldh a, [rPCM34]                                  ; $7f8e: $f0 $77
	ld a, $f0                                        ; $7f90: $3e $f0
	cp $5c                                           ; $7f92: $fe $5c
	ld d, e                                          ; $7f94: $53
	xor h                                            ; $7f95: $ac
	inc a                                            ; $7f96: $3c
	inc a                                            ; $7f97: $3c
	dec sp                                           ; $7f98: $3b
	ccf                                              ; $7f99: $3f

jr_08e_7f9a:
	db $ec                                           ; $7f9a: $ec
	push de                                          ; $7f9b: $d5
	ld h, e                                          ; $7f9c: $63
	xor b                                            ; $7f9d: $a8
	db $ec                                           ; $7f9e: $ec
	db $d3                                           ; $7f9f: $d3
	ld d, l                                          ; $7fa0: $55
	ld c, l                                          ; $7fa1: $4d
	ld d, d                                          ; $7fa2: $52
	ld d, c                                          ; $7fa3: $51
	ld b, d                                          ; $7fa4: $42
	and c                                            ; $7fa5: $a1
	cpl                                              ; $7fa6: $2f
	ldh a, [rPCM34]                                  ; $7fa7: $f0 $77
	ld c, a                                          ; $7fa9: $4f
	ld a, $3d                                        ; $7faa: $3e $3d
	dec a                                            ; $7fac: $3d
	ld c, [hl]                                       ; $7fad: $4e
	dec sp                                           ; $7fae: $3b
	ccf                                              ; $7faf: $3f
	add d                                            ; $7fb0: $82
	add hl, sp                                       ; $7fb1: $39
	db $ec                                           ; $7fb2: $ec
	ret c                                            ; $7fb3: $d8

	add hl, bc                                       ; $7fb4: $09
	ld [$f0f7], a                                    ; $7fb5: $ea $f7 $f0
	ld [$08f0], sp                                   ; $7fb8: $08 $f0 $08
	xor b                                            ; $7fbb: $a8
	ld b, b                                          ; $7fbc: $40
	ld c, l                                          ; $7fbd: $4d
	ld c, a                                          ; $7fbe: $4f
	call c, $2fa0                                    ; $7fbf: $dc $a0 $2f
	ldh a, [$08]                                     ; $7fc2: $f0 $08
	dec sp                                           ; $7fc4: $3b
	ld c, c                                          ; $7fc5: $49
	ld e, h                                          ; $7fc6: $5c
	ld d, [hl]                                       ; $7fc7: $56
	di                                               ; $7fc8: $f3
	cp h                                             ; $7fc9: $bc
	ld d, l                                          ; $7fca: $55
	ld b, l                                          ; $7fcb: $45
	add hl, bc                                       ; $7fcc: $09
	ldh a, [$d0]                                     ; $7fcd: $f0 $d0
	push af                                          ; $7fcf: $f5
	add hl, hl                                       ; $7fd0: $29
	db $f4                                           ; $7fd1: $f4
	ld a, e                                          ; $7fd2: $7b
	ld b, h                                          ; $7fd3: $44
	ld h, e                                          ; $7fd4: $63
	xor b                                            ; $7fd5: $a8
	db $ec                                           ; $7fd6: $ec
	ld [hl-], a                                      ; $7fd7: $32
	and b                                            ; $7fd8: $a0
	cpl                                              ; $7fd9: $2f
	ld b, b                                          ; $7fda: $40
	inc [hl]                                         ; $7fdb: $34
	ld b, b                                          ; $7fdc: $40
	ld b, c                                          ; $7fdd: $41
	ld a, [hl-]                                      ; $7fde: $3a
	ld d, h                                          ; $7fdf: $54
	ld c, c                                          ; $7fe0: $49
	add d                                            ; $7fe1: $82
	ld h, e                                          ; $7fe2: $63
	ld c, l                                          ; $7fe3: $4d
	ccf                                              ; $7fe4: $3f
	ld c, a                                          ; $7fe5: $4f
	ld c, b                                          ; $7fe6: $48
	add hl, bc                                       ; $7fe7: $09
	ld a, $3c                                        ; $7fe8: $3e $3c
	dec a                                            ; $7fea: $3d
	ld a, [hl-]                                      ; $7feb: $3a
	jr c, @+$65                                      ; $7fec: $38 $63

	xor b                                            ; $7fee: $a8
	ldh a, [$b5]                                     ; $7fef: $f0 $b5
	ld c, [hl]                                       ; $7ff1: $4e
	ld a, $3f                                        ; $7ff2: $3e $3f
	rst SubAFromDE                                          ; $7ff4: $df
	and b                                            ; $7ff5: $a0
	xor $1e                                          ; $7ff6: $ee $1e
	di                                               ; $7ff8: $f3
	ld a, b                                          ; $7ff9: $78
	xor h                                            ; $7ffa: $ac
	sbc h                                            ; $7ffb: $9c
	dec sp                                           ; $7ffc: $3b
	ld c, c                                          ; $7ffd: $49
	db $ec                                           ; $7ffe: $ec
	db $ee                                           ; $7fff: $ee
