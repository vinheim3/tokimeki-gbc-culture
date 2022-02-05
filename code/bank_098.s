; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $098", ROMX[$4000], BANK[$98]

	xor c                                            ; $4000: $a9
	and b                                            ; $4001: $a0
	cpl                                              ; $4002: $2f
	ld b, e                                          ; $4003: $43
	jp hl                                            ; $4004: $e9


	ld d, l                                          ; $4005: $55
	and b                                            ; $4006: $a0
	ldh a, [hDisp0_WX]                                     ; $4007: $f0 $89
	pop af                                           ; $4009: $f1
	ld b, b                                          ; $400a: $40
	ld a, l                                          ; $400b: $7d
	ld l, c                                          ; $400c: $69
	inc [hl]                                         ; $400d: $34
	ret                                              ; $400e: $c9


	inc de                                           ; $400f: $13
	sbc c                                            ; $4010: $99
	dec sp                                           ; $4011: $3b
	ccf                                              ; $4012: $3f
	ccf                                              ; $4013: $3f
	dec [hl]                                         ; $4014: $35
	pop af                                           ; $4015: $f1
	ld a, c                                          ; $4016: $79
	pop af                                           ; $4017: $f1
	ld h, d                                          ; $4018: $62
	ld a, $3f                                        ; $4019: $3e $3f
	ld d, l                                          ; $401b: $55
	ld c, [hl]                                       ; $401c: $4e
	inc a                                            ; $401d: $3c
	ld d, b                                          ; $401e: $50
	and b                                            ; $401f: $a0
	ld h, h                                          ; $4020: $64
	sbc c                                            ; $4021: $99
	dec a                                            ; $4022: $3d
	ld a, c                                          ; $4023: $79
	xor h                                            ; $4024: $ac
	ld d, $a8                                        ; $4025: $16 $a8
	ld e, e                                          ; $4027: $5b
	ld d, [hl]                                       ; $4028: $56
	ld b, [hl]                                       ; $4029: $46
	inc [hl]                                         ; $402a: $34
	ld [$3ca9], a                                    ; $402b: $ea $a9 $3c

jr_098_402e:
	and b                                            ; $402e: $a0
	xor $14                                          ; $402f: $ee $14
	inc [hl]                                         ; $4031: $34
	ld d, $a8                                        ; $4032: $16 $a8
	ld l, e                                          ; $4034: $6b
	and c                                            ; $4035: $a1
	db $ed                                           ; $4036: $ed
	ld l, l                                          ; $4037: $6d
	inc [hl]                                         ; $4038: $34
	ret nc                                           ; $4039: $d0

	xor b                                            ; $403a: $a8
	ld e, e                                          ; $403b: $5b
	ld d, [hl]                                       ; $403c: $56
	ld b, [hl]                                       ; $403d: $46
	inc [hl]                                         ; $403e: $34
	ldh a, [$0a]                                     ; $403f: $f0 $0a
	pop af                                           ; $4041: $f1
	jr jr_098_402e                                   ; $4042: $18 $ea

	xor c                                            ; $4044: $a9
	inc a                                            ; $4045: $3c
	and c                                            ; $4046: $a1
	cpl                                              ; $4047: $2f
	ld b, e                                          ; $4048: $43
	xor $1f                                          ; $4049: $ee $1f
	inc [hl]                                         ; $404b: $34
	ld h, a                                          ; $404c: $67
	ld d, h                                          ; $404d: $54
	add hl, sp                                       ; $404e: $39
	and b                                            ; $404f: $a0
	ld c, b                                          ; $4050: $48
	ld l, e                                          ; $4051: $6b
	and c                                            ; $4052: $a1
	ldh a, [$98]                                     ; $4053: $f0 $98
	ld d, e                                          ; $4055: $53
	and c                                            ; $4056: $a1
	cpl                                              ; $4057: $2f
	ld b, e                                          ; $4058: $43
	db $ec                                           ; $4059: $ec
	pop hl                                           ; $405a: $e1
	ld d, e                                          ; $405b: $53
	ld c, b                                          ; $405c: $48
	and b                                            ; $405d: $a0
	ldh a, [$98]                                     ; $405e: $f0 $98
	ld c, c                                          ; $4060: $49
	and c                                            ; $4061: $a1
	cpl                                              ; $4062: $2f
	ld b, e                                          ; $4063: $43
	halt                                             ; $4064: $76
	ld c, c                                          ; $4065: $49
	ld c, b                                          ; $4066: $48
	and b                                            ; $4067: $a0
	ld l, e                                          ; $4068: $6b
	ld c, d                                          ; $4069: $4a
	and c                                            ; $406a: $a1
	cpl                                              ; $406b: $2f
	ld b, e                                          ; $406c: $43
	ld l, e                                          ; $406d: $6b
	ld c, d                                          ; $406e: $4a
	dec sp                                           ; $406f: $3b
	ccf                                              ; $4070: $3f
	ld c, b                                          ; $4071: $48
	xor h                                            ; $4072: $ac
	ld b, b                                          ; $4073: $40
	ld d, a                                          ; $4074: $57
	ld d, [hl]                                       ; $4075: $56
	db $ed                                           ; $4076: $ed
	ld sp, hl                                        ; $4077: $f9
	ld c, e                                          ; $4078: $4b
	inc [hl]                                         ; $4079: $34
	pop af                                           ; $407a: $f1
	ld l, [hl]                                       ; $407b: $6e
	ldh a, [$cf]                                     ; $407c: $f0 $cf
	ld c, c                                          ; $407e: $49
	ld c, b                                          ; $407f: $48
	and b                                            ; $4080: $a0
	ld h, a                                          ; $4081: $67
	inc a                                            ; $4082: $3c
	ld a, [hl-]                                      ; $4083: $3a
	jr c, @-$5e                                      ; $4084: $38 $a0

	cpl                                              ; $4086: $2f
	ld b, e                                          ; $4087: $43
	ld b, b                                          ; $4088: $40
	inc [hl]                                         ; $4089: $34
	ld b, b                                          ; $408a: $40
	ld b, c                                          ; $408b: $41
	ld a, [hl-]                                      ; $408c: $3a
	ld [hl], h                                       ; $408d: $74
	pop af                                           ; $408e: $f1
	dec [hl]                                         ; $408f: $35
	and b                                            ; $4090: $a0
	cpl                                              ; $4091: $2f
	ld [$ac33], a                                    ; $4092: $ea $33 $ac
	ld [$a3b0], a                                    ; $4095: $ea $b0 $a3
	ld c, d                                          ; $4098: $4a
	ld c, a                                          ; $4099: $4f
	inc [hl]                                         ; $409a: $34
	di                                               ; $409b: $f3
	ld h, l                                          ; $409c: $65
	pop af                                           ; $409d: $f1
	ld l, [hl]                                       ; $409e: $6e
	ld d, e                                          ; $409f: $53

Call_098_40a0:
	ldh a, [$57]                                     ; $40a0: $f0 $57
	pop af                                           ; $40a2: $f1
	ld e, $50                                        ; $40a3: $1e $50
	ld a, $13                                        ; $40a5: $3e $13
	ld d, l                                          ; $40a7: $55

Call_098_40a8:
	ccf                                              ; $40a8: $3f
	db $ed                                           ; $40a9: $ed
	ld e, [hl]                                       ; $40aa: $5e
	ld a, a                                          ; $40ab: $7f
	ld b, a                                          ; $40ac: $47
	ld a, [hl-]                                      ; $40ad: $3a
	ld d, b                                          ; $40ae: $50
	ld a, [hl-]                                      ; $40af: $3a
	jr c, jr_098_4115                                ; $40b0: $38 $63

	and b                                            ; $40b2: $a0
	ld [$ac40], a                                    ; $40b3: $ea $40 $ac
	ld d, c                                          ; $40b6: $51
	ld [hl], b                                       ; $40b7: $70
	ld d, l                                          ; $40b8: $55

jr_098_40b9:
	ldh a, [$3f]                                     ; $40b9: $f0 $3f
	ld b, a                                          ; $40bb: $47
	ld a, [hl-]                                      ; $40bc: $3a
	ld c, [hl]                                       ; $40bd: $4e
	ld h, e                                          ; $40be: $63
	and b                                            ; $40bf: $a0
	ld d, d                                          ; $40c0: $52
	ld e, b                                          ; $40c1: $58
	ld b, a                                          ; $40c2: $47
	inc [hl]                                         ; $40c3: $34
	db $eb                                           ; $40c4: $eb
	sbc d                                            ; $40c5: $9a
	dec sp                                           ; $40c6: $3b
	ccf                                              ; $40c7: $3f
	inc de                                           ; $40c8: $13
	ldh a, [$78]                                     ; $40c9: $f0 $78
	ld e, e                                          ; $40cb: $5b
	ld b, l                                          ; $40cc: $45
	ld c, h                                          ; $40cd: $4c
	dec [hl]                                         ; $40ce: $35
	ldh a, [$57]                                     ; $40cf: $f0 $57
	pop af                                           ; $40d1: $f1
	ld e, $50                                        ; $40d2: $1e $50
	ld a, $3c                                        ; $40d4: $3e $3c
	dec sp                                           ; $40d6: $3b
	dec a                                            ; $40d7: $3d
	ld h, e                                          ; $40d8: $63
	and b                                            ; $40d9: $a0
	cpl                                              ; $40da: $2f
	ld b, e                                          ; $40db: $43
	ld [$accc], a                                    ; $40dc: $ea $cc $ac
	jp hl                                            ; $40df: $e9


	ld [hl], $13                                     ; $40e0: $36 $13
	jp hl                                            ; $40e2: $e9


	xor d                                            ; $40e3: $aa
	and c                                            ; $40e4: $a1
	db $ed                                           ; $40e5: $ed
	ld l, l                                          ; $40e6: $6d
	inc [hl]                                         ; $40e7: $34
	ret nc                                           ; $40e8: $d0

	xor b                                            ; $40e9: $a8
	ld d, d                                          ; $40ea: $52
	dec a                                            ; $40eb: $3d
	xor $06                                          ; $40ec: $ee $06
	ld b, a                                          ; $40ee: $47
	ld [$a0a9], a                                    ; $40ef: $ea $a9 $a0
	cpl                                              ; $40f2: $2f
	ld b, e                                          ; $40f3: $43
	ld e, e                                          ; $40f4: $5b
	ld d, [hl]                                       ; $40f5: $56
	ld b, [hl]                                       ; $40f6: $46
	inc [hl]                                         ; $40f7: $34
	ld d, d                                          ; $40f8: $52
	dec a                                            ; $40f9: $3d
	ld d, h                                          ; $40fa: $54
	ld d, h                                          ; $40fb: $54
	ld c, d                                          ; $40fc: $4a
	inc de                                           ; $40fd: $13
	db $eb                                           ; $40fe: $eb
	ld a, [hl]                                       ; $40ff: $7e
	ld c, c                                          ; $4100: $49
	jr c, @+$3b                                      ; $4101: $38 $39

	sbc d                                            ; $4103: $9a
	ld c, d                                          ; $4104: $4a
	and b                                            ; $4105: $a0
	db $ec                                           ; $4106: $ec
	cpl                                              ; $4107: $2f
	inc [hl]                                         ; $4108: $34
	ldh a, [$bf]                                     ; $4109: $f0 $bf
	db $f4                                           ; $410b: $f4
	dec de                                           ; $410c: $1b
	ld a, [hl-]                                      ; $410d: $3a
	ld e, b                                          ; $410e: $58
	jr c, jr_098_40b9                                ; $410f: $38 $a8

	pop af                                           ; $4111: $f1
	ld a, c                                          ; $4112: $79
	pop af                                           ; $4113: $f1
	ld h, d                                          ; $4114: $62

jr_098_4115:
	ld b, a                                          ; $4115: $47
	ld [$3f59], a                                    ; $4116: $ea $59 $3f
	xor l                                            ; $4119: $ad
	jp hl                                            ; $411a: $e9


	ld a, [hl+]                                      ; $411b: $2a
	and b                                            ; $411c: $a0
	db $ed                                           ; $411d: $ed
	ld l, l                                          ; $411e: $6d
	inc [hl]                                         ; $411f: $34
	ret nc                                           ; $4120: $d0

	xor b                                            ; $4121: $a8
	sub [hl]                                         ; $4122: $96
	ld d, a                                          ; $4123: $57
	ld d, d                                          ; $4124: $52
	ld a, $66                                        ; $4125: $3e $66
	add hl, sp                                       ; $4127: $39
	xor b                                            ; $4128: $a8
	inc hl                                           ; $4129: $23
	ld b, [hl]                                       ; $412a: $46
	inc [hl]                                         ; $412b: $34
	inc h                                            ; $412c: $24
	ld b, [hl]                                       ; $412d: $46
	ld c, l                                          ; $412e: $4d
	ld c, e                                          ; $412f: $4b
	ld l, e                                          ; $4130: $6b
	inc a                                            ; $4131: $3c
	ld a, $50                                        ; $4132: $3e $50
	and b                                            ; $4134: $a0
	cpl                                              ; $4135: $2f
	ld b, e                                          ; $4136: $43
	db $eb                                           ; $4137: $eb
	ld a, [hl-]                                      ; $4138: $3a
	add hl, bc                                       ; $4139: $09
	cpl                                              ; $413a: $2f
	ld [$093a], a                                    ; $413b: $ea $3a $09
	cpl                                              ; $413e: $2f
	add sp, $53                                      ; $413f: $e8 $53
	add hl, bc                                       ; $4141: $09
	ld b, b                                          ; $4142: $40
	ld c, l                                          ; $4143: $4d
	ld b, l                                          ; $4144: $45
	ld d, a                                          ; $4145: $57
	inc [hl]                                         ; $4146: $34
	ld [hl], d                                       ; $4147: $72
	ccf                                              ; $4148: $3f
	ld b, l                                          ; $4149: $45
	inc de                                           ; $414a: $13
	ld d, h                                          ; $414b: $54
	ld b, d                                          ; $414c: $42
	pop af                                           ; $414d: $f1
	ld a, a                                          ; $414e: $7f
	di                                               ; $414f: $f3
	ld h, l                                          ; $4150: $65
	xor b                                            ; $4151: $a8
	ld d, d                                          ; $4152: $52
	ld e, b                                          ; $4153: $58
	ld b, a                                          ; $4154: $47
	inc [hl]                                         ; $4155: $34
	ldh a, [c]                                       ; $4156: $f2
	ld e, [hl]                                       ; $4157: $5e

Call_098_4158:
	pop af                                           ; $4158: $f1
	cpl                                              ; $4159: $2f
	ldh a, [$ee]                                     ; $415a: $f0 $ee
	dec sp                                           ; $415c: $3b
	ccf                                              ; $415d: $3f
	ldh a, [$78]                                     ; $415e: $f0 $78
	ld e, e                                          ; $4160: $5b
	ld b, l                                          ; $4161: $45
	ld c, h                                          ; $4162: $4c
	and b                                            ; $4163: $a0
	cpl                                              ; $4164: $2f
	ld b, e                                          ; $4165: $43
	db $eb                                           ; $4166: $eb
	dec sp                                           ; $4167: $3b
	add hl, bc                                       ; $4168: $09
	xor $10                                          ; $4169: $ee $10
	and b                                            ; $416b: $a0
	cpl                                              ; $416c: $2f
	ld b, e                                          ; $416d: $43
	db $eb                                           ; $416e: $eb
	rst FarCall                                          ; $416f: $f7
	inc [hl]                                         ; $4170: $34
	db $ec                                           ; $4171: $ec
	pop hl                                           ; $4172: $e1
	and b                                            ; $4173: $a0
	ld d, h                                          ; $4174: $54

jr_098_4175:
	inc [hl]                                         ; $4175: $34
	ld d, h                                          ; $4176: $54
	ld b, d                                          ; $4177: $42
	db $ed                                           ; $4178: $ed
	ld h, l                                          ; $4179: $65
	ld c, e                                          ; $417a: $4b
	add d                                            ; $417b: $82
	pop af                                           ; $417c: $f1
	adc h                                            ; $417d: $8c
	inc de                                           ; $417e: $13
	ld c, d                                          ; $417f: $4a
	ld c, e                                          ; $4180: $4b
	add d                                            ; $4181: $82
	jr c, jr_098_4175                                ; $4182: $38 $f1

	and l                                            ; $4184: $a5
	ld a, c                                          ; $4185: $79
	ld a, [hl-]                                      ; $4186: $3a
	jr c, jr_098_41ec                                ; $4187: $38 $63

	and b                                            ; $4189: $a0
	cpl                                              ; $418a: $2f
	ld b, e                                          ; $418b: $43
	ld [$099e], a                                    ; $418c: $ea $9e $09
	cpl                                              ; $418f: $2f
	ld b, e                                          ; $4190: $43
	ld [$a845], a                                    ; $4191: $ea $45 $a8
	db $ec                                           ; $4194: $ec
	pop hl                                           ; $4195: $e1
	ld c, e                                          ; $4196: $4b
	inc [hl]                                         ; $4197: $34
	ld [$a046], a                                    ; $4198: $ea $46 $a0
	add a                                            ; $419b: $87
	ldh a, [$5b]                                     ; $419c: $f0 $5b
	ldh a, [$5e]                                     ; $419e: $f0 $5e
	ld b, h                                          ; $41a0: $44
	dec sp                                           ; $41a1: $3b
	dec a                                            ; $41a2: $3d
	xor c                                            ; $41a3: $a9
	xor $10                                          ; $41a4: $ee $10
	ld h, b                                          ; $41a6: $60
	scf                                              ; $41a7: $37
	inc de                                           ; $41a8: $13
	pop af                                           ; $41a9: $f1
	ld hl, sp-$0f                                    ; $41aa: $f8 $f1
	ld d, b                                          ; $41ac: $50
	ld a, $3f                                        ; $41ad: $3e $3f
	ld c, [hl]                                       ; $41af: $4e
	db $ec                                           ; $41b0: $ec
	ret c                                            ; $41b1: $d8

	and b                                            ; $41b2: $a0
	cpl                                              ; $41b3: $2f
	ld b, e                                          ; $41b4: $43
	ld b, [hl]                                       ; $41b5: $46
	ld b, [hl]                                       ; $41b6: $46
	xor h                                            ; $41b7: $ac
	ld [$44e5], a                                    ; $41b8: $ea $e5 $44
	ld b, l                                          ; $41bb: $45
	and b                                            ; $41bc: $a0
	pop af                                           ; $41bd: $f1
	or d                                             ; $41be: $b2
	pop af                                           ; $41bf: $f1
	ld c, b                                          ; $41c0: $48
	scf                                              ; $41c1: $37
	inc de                                           ; $41c2: $13
	ld l, a                                          ; $41c3: $6f
	ld h, d                                          ; $41c4: $62
	ldh a, [c]                                       ; $41c5: $f2
	dec c                                            ; $41c6: $0d
	ld e, a                                          ; $41c7: $5f
	add hl, sp                                       ; $41c8: $39
	ld c, c                                          ; $41c9: $49
	ld a, [hl-]                                      ; $41ca: $3a
	ld b, c                                          ; $41cb: $41
	ccf                                              ; $41cc: $3f
	ld d, c                                          ; $41cd: $51
	ld c, [hl]                                       ; $41ce: $4e
	inc a                                            ; $41cf: $3c
	ld d, b                                          ; $41d0: $50
	and b                                            ; $41d1: $a0
	cpl                                              ; $41d2: $2f
	ld b, e                                          ; $41d3: $43
	db $ed                                           ; $41d4: $ed
	ld h, h                                          ; $41d5: $64
	ld a, $3f                                        ; $41d6: $3e $3f
	ld d, l                                          ; $41d8: $55
	ld c, l                                          ; $41d9: $4d
	ccf                                              ; $41da: $3f
	inc de                                           ; $41db: $13
	ld b, [hl]                                       ; $41dc: $46
	ld d, a                                          ; $41dd: $57
	ld d, e                                          ; $41de: $53
	ld c, c                                          ; $41df: $49
	add hl, sp                                       ; $41e0: $39
	xor b                                            ; $41e1: $a8
	jp hl                                            ; $41e2: $e9


	ret z                                            ; $41e3: $c8

	db $ec                                           ; $41e4: $ec
	rrca                                             ; $41e5: $0f
	and b                                            ; $41e6: $a0
	call c, $ecac                                    ; $41e7: $dc $ac $ec
	push bc                                          ; $41ea: $c5
	or b                                             ; $41eb: $b0

jr_098_41ec:
	inc a                                            ; $41ec: $3c
	and b                                            ; $41ed: $a0
	ld c, e                                          ; $41ee: $4b
	ld [hl], h                                       ; $41ef: $74
	inc [hl]                                         ; $41f0: $34
	ld c, e                                          ; $41f1: $4b
	ld [hl], h                                       ; $41f2: $74
	inc [hl]                                         ; $41f3: $34
	ld c, e                                          ; $41f4: $4b
	ld [hl], h                                       ; $41f5: $74
	xor l                                            ; $41f6: $ad
	db $eb                                           ; $41f7: $eb
	add l                                            ; $41f8: $85
	ld h, e                                          ; $41f9: $63
	ld c, h                                          ; $41fa: $4c
	xor b                                            ; $41fb: $a8
	ld c, a                                          ; $41fc: $4f
	add hl, sp                                       ; $41fd: $39
	xor $05                                          ; $41fe: $ee $05
	inc a                                            ; $4200: $3c
	ld c, c                                          ; $4201: $49
	ld [hl], a                                       ; $4202: $77
	dec sp                                           ; $4203: $3b
	ld h, c                                          ; $4204: $61
	ld d, [hl]                                       ; $4205: $56
	dec sp                                           ; $4206: $3b
	dec a                                            ; $4207: $3d
	and b                                            ; $4208: $a0
	cpl                                              ; $4209: $2f
	ld b, e                                          ; $420a: $43
	xor $10                                          ; $420b: $ee $10
	and b                                            ; $420d: $a0
	db $eb                                           ; $420e: $eb
	rst FarCall                                          ; $420f: $f7
	and c                                            ; $4210: $a1
	cpl                                              ; $4211: $2f
	ld b, e                                          ; $4212: $43
	ld e, d                                          ; $4213: $5a
	add hl, sp                                       ; $4214: $39
	ld c, a                                          ; $4215: $4f
	ldh a, [$ee]                                     ; $4216: $f0 $ee
	ld b, a                                          ; $4218: $47
	pop af                                           ; $4219: $f1
	or c                                             ; $421a: $b1
	dec sp                                           ; $421b: $3b
	dec a                                            ; $421c: $3d
	inc de                                           ; $421d: $13
	ld l, h                                          ; $421e: $6c
	dec a                                            ; $421f: $3d
	jr c, jr_098_425c                                ; $4220: $38 $3a

	ld b, c                                          ; $4222: $41
	ld b, h                                          ; $4223: $44
	ld c, b                                          ; $4224: $48
	and b                                            ; $4225: $a0
	ldh a, [$32]                                     ; $4226: $f0 $32
	ld h, l                                          ; $4228: $65
	ld l, c                                          ; $4229: $69
	ldh a, [hDisp0_WX]                                     ; $422a: $f0 $89
	ldh a, [c]                                       ; $422c: $f2
	daa                                              ; $422d: $27
	ld e, c                                          ; $422e: $59
	ldh a, [rP1]                                     ; $422f: $f0 $00
	ld e, c                                          ; $4231: $59
	xor b                                            ; $4232: $a8
	ld b, [hl]                                       ; $4233: $46
	ld b, b                                          ; $4234: $40
	ld d, h                                          ; $4235: $54
	ld b, a                                          ; $4236: $47
	add h                                            ; $4237: $84
	ld d, e                                          ; $4238: $53
	jr c, jr_098_4289                                ; $4239: $38 $4e

	ld h, e                                          ; $423b: $63
	and b                                            ; $423c: $a0
	cpl                                              ; $423d: $2f
	ld b, e                                          ; $423e: $43
	ld e, [hl]                                       ; $423f: $5e
	inc [hl]                                         ; $4240: $34
	db $ec                                           ; $4241: $ec
	pop hl                                           ; $4242: $e1
	xor h                                            ; $4243: $ac
	ldh a, [$f0]                                     ; $4244: $f0 $f0
	ldh a, [$ca]                                     ; $4246: $f0 $ca
	ld b, d                                          ; $4248: $42
	add h                                            ; $4249: $84
	ld b, h                                          ; $424a: $44
	ld b, l                                          ; $424b: $45
	xor b                                            ; $424c: $a8
	dec sp                                           ; $424d: $3b
	ccf                                              ; $424e: $3f
	inc [hl]                                         ; $424f: $34
	ld c, a                                          ; $4250: $4f
	add hl, sp                                       ; $4251: $39
	ldh a, [rAUDVOL]                                 ; $4252: $f0 $24
	ld a, $3c                                        ; $4254: $3e $3c
	ld e, l                                          ; $4256: $5d
	ccf                                              ; $4257: $3f
	ld c, [hl]                                       ; $4258: $4e
	and b                                            ; $4259: $a0
	pop af                                           ; $425a: $f1
	ld b, b                                          ; $425b: $40

jr_098_425c:
	sub e                                            ; $425c: $93
	add e                                            ; $425d: $83
	ldh a, [$2f]                                     ; $425e: $f0 $2f
	ldh a, [$a1]                                     ; $4260: $f0 $a1
	ld e, c                                          ; $4262: $59
	pop af                                           ; $4263: $f1
	ld b, l                                          ; $4264: $45
	pop af                                           ; $4265: $f1
	ld d, h                                          ; $4266: $54
	ld e, c                                          ; $4267: $59
	xor b                                            ; $4268: $a8
	ret                                              ; $4269: $c9


	ldh a, [$0c]                                     ; $426a: $f0 $0c
	ld e, h                                          ; $426c: $5c
	dec a                                            ; $426d: $3d
	jr c, jr_098_42b1                                ; $426e: $38 $41

	ld b, h                                          ; $4270: $44
	ld e, l                                          ; $4271: $5d
	ld e, d                                          ; $4272: $5a
	and b                                            ; $4273: $a0
	db $f4                                           ; $4274: $f4
	sbc $f2                                          ; $4275: $de $f2
	jp nz, $dff3                                     ; $4277: $c2 $f3 $df

	di                                               ; $427a: $f3
	ldh [$f4], a                                     ; $427b: $e0 $f4
	or [hl]                                          ; $427d: $b6
	db $f4                                           ; $427e: $f4
	sub $a9                                          ; $427f: $d6 $a9
	ld [hl-], a                                      ; $4281: $32
	ld l, e                                          ; $4282: $6b
	ld b, h                                          ; $4283: $44
	ld [hl], $6b                                     ; $4284: $36 $6b
	inc a                                            ; $4286: $3c

jr_098_4287:
	ldh a, [rAUD2LEN]                                ; $4287: $f0 $16

jr_098_4289:
	inc a                                            ; $4289: $3c
	ld [hl], $33                                     ; $428a: $36 $33
	add hl, bc                                       ; $428c: $09
	add c                                            ; $428d: $81
	ldh a, [rP1]                                     ; $428e: $f0 $00
	ld e, c                                          ; $4290: $59
	pop af                                           ; $4291: $f1
	ld b, l                                          ; $4292: $45
	xor h                                            ; $4293: $ac
	di                                               ; $4294: $f3
	jr z, jr_098_4287                                ; $4295: $28 $f0

	ld e, d                                          ; $4297: $5a
	ld b, d                                          ; $4298: $42
	ldh a, [$ee]                                     ; $4299: $f0 $ee
	ld h, d                                          ; $429b: $62
	ldh a, [$2d]                                     ; $429c: $f0 $2d
	ld d, a                                          ; $429e: $57
	dec a                                            ; $429f: $3d
	jr c, jr_098_42e4                                ; $42a0: $38 $42

	and c                                            ; $42a2: $a1
	ldh a, [c]                                       ; $42a3: $f2
	ld c, b                                          ; $42a4: $48
	di                                               ; $42a5: $f3
	ld h, h                                          ; $42a6: $64
	scf                                              ; $42a7: $37
	rla                                              ; $42a8: $17
	db $f4                                           ; $42a9: $f4
	db $db                                           ; $42aa: $db
	add [hl]                                         ; $42ab: $86
	db $f4                                           ; $42ac: $f4
	inc a                                            ; $42ad: $3c
	di                                               ; $42ae: $f3
	rst SubAFromDE                                          ; $42af: $df
	di                                               ; $42b0: $f3

jr_098_42b1:
	pop hl                                           ; $42b1: $e1
	db $f4                                           ; $42b2: $f4
	or [hl]                                          ; $42b3: $b6
	di                                               ; $42b4: $f3
	ldh [hDisp0_OBP0], a                                     ; $42b5: $e0 $86
	db $f4                                           ; $42b7: $f4
	ld b, c                                          ; $42b8: $41
	di                                               ; $42b9: $f3
	pop hl                                           ; $42ba: $e1
	db $f4                                           ; $42bb: $f4
	ret nc                                           ; $42bc: $d0

	db $f4                                           ; $42bd: $f4
	pop de                                           ; $42be: $d1
	ldh a, [c]                                       ; $42bf: $f2
	xor $f4                                          ; $42c0: $ee $f4
	sub $f3                                          ; $42c2: $d6 $f3
	ldh [$f3], a                                     ; $42c4: $e0 $f3
	rst SubAFromDE                                          ; $42c6: $df
	di                                               ; $42c7: $f3
	pop hl                                           ; $42c8: $e1
	db $f4                                           ; $42c9: $f4
	ret nc                                           ; $42ca: $d0

	inc de                                           ; $42cb: $13
	db $f4                                           ; $42cc: $f4
	ret c                                            ; $42cd: $d8

	ldh a, [c]                                       ; $42ce: $f2
	jp nz, $dff3                                     ; $42cf: $c2 $f3 $df

	di                                               ; $42d2: $f3
	ldh [hDisp0_OBP0], a                                     ; $42d3: $e0 $86
	db $f4                                           ; $42d5: $f4
	jp c, Jump_098_64f3                              ; $42d6: $da $f3 $64

	db $f4                                           ; $42d9: $f4
	ld b, c                                          ; $42da: $41
	add [hl]                                         ; $42db: $86
	db $f4                                           ; $42dc: $f4
	sub $f3                                          ; $42dd: $d6 $f3
	rst SubAFromDE                                          ; $42df: $df
	db $f4                                           ; $42e0: $f4
	jp c, $bef2                                      ; $42e1: $da $f2 $be

jr_098_42e4:
	add hl, bc                                       ; $42e4: $09
	ldh a, [c]                                       ; $42e5: $f2
	add hl, sp                                       ; $42e6: $39
	di                                               ; $42e7: $f3
	ld h, h                                          ; $42e8: $64
	add [hl]                                         ; $42e9: $86
	db $f4                                           ; $42ea: $f4
	jp nc, Jump_098_43f4                             ; $42eb: $d2 $f4 $43

	di                                               ; $42ee: $f3
	pop hl                                           ; $42ef: $e1
	db $f4                                           ; $42f0: $f4
	ret nc                                           ; $42f1: $d0

	add [hl]                                         ; $42f2: $86
	di                                               ; $42f3: $f3
	ldh [$f2], a                                     ; $42f4: $e0 $f2
	jp nz, $d1f4                                     ; $42f6: $c2 $f4 $d1

	add [hl]                                         ; $42f9: $86
	inc de                                           ; $42fa: $13
	db $f4                                           ; $42fb: $f4
	db $db                                           ; $42fc: $db
	di                                               ; $42fd: $f3
	pop hl                                           ; $42fe: $e1
	db $f4                                           ; $42ff: $f4
	jp nc, Jump_098_64f3                             ; $4300: $d2 $f3 $64

	ldh a, [c]                                       ; $4303: $f2
	xor $f3                                          ; $4304: $ee $f3
	ld a, [hl+]                                      ; $4306: $2a
	di                                               ; $4307: $f3
	rst SubAFromDE                                          ; $4308: $df
	di                                               ; $4309: $f3
	ldh [$f4], a                                     ; $430a: $e0 $f4
	ld b, e                                          ; $430c: $43
	di                                               ; $430d: $f3
	ld h, h                                          ; $430e: $64
	di                                               ; $430f: $f3
	pop hl                                           ; $4310: $e1
	add [hl]                                         ; $4311: $86
	di                                               ; $4312: $f3
	ld h, h                                          ; $4313: $64
	di                                               ; $4314: $f3
	pop hl                                           ; $4315: $e1
	add [hl]                                         ; $4316: $86
	rla                                              ; $4317: $17
	db $f4                                           ; $4318: $f4
	jp c, Jump_098_64f3                              ; $4319: $da $f3 $64

	db $f4                                           ; $431c: $f4
	ld b, c                                          ; $431d: $41
	ldh a, [c]                                       ; $431e: $f2
	xor $86                                          ; $431f: $ee $86
	ldh a, [c]                                       ; $4321: $f2
	xor $f4                                          ; $4322: $ee $f4
	ld b, e                                          ; $4324: $43
	db $f4                                           ; $4325: $f4
	ld b, b                                          ; $4326: $40
	ldh a, [c]                                       ; $4327: $f2
	jp nz, $e0f3                                     ; $4328: $c2 $f3 $e0

	db $fd                                           ; $432b: $fd
	add c                                            ; $432c: $81
	inc de                                           ; $432d: $13
	db $f4                                           ; $432e: $f4
	ld b, b                                          ; $432f: $40
	di                                               ; $4330: $f3
	ld h, h                                          ; $4331: $64
	add [hl]                                         ; $4332: $86
	db $f4                                           ; $4333: $f4
	sub $f3                                          ; $4334: $d6 $f3
	ldh [$f2], a                                     ; $4336: $e0 $f2
	xor $f3                                          ; $4338: $ee $f3
	rst SubAFromDE                                          ; $433a: $df
	db $f4                                           ; $433b: $f4
	ld b, e                                          ; $433c: $43
	db $f4                                           ; $433d: $f4
	ld b, b                                          ; $433e: $40
	ldh a, [c]                                       ; $433f: $f2
	jp nz, $e0f3                                     ; $4340: $c2 $f3 $e0

	ldh a, [c]                                       ; $4343: $f2
	cp [hl]                                          ; $4344: $be
	add hl, bc                                       ; $4345: $09
	ld l, e                                          ; $4346: $6b
	ld h, d                                          ; $4347: $62
	add d                                            ; $4348: $82
	dec sp                                           ; $4349: $3b
	ccf                                              ; $434a: $3f
	jr c, jr_098_439b                                ; $434b: $38 $4e

	inc a                                            ; $434d: $3c
	inc de                                           ; $434e: $13
	ldh a, [rTAC]                                    ; $434f: $f0 $07
	inc a                                            ; $4351: $3c
	ld d, b                                          ; $4352: $50
	ld a, [hl-]                                      ; $4353: $3a
	jr c, jr_098_439b                                ; $4354: $38 $45

	and b                                            ; $4356: $a0
	ldh a, [hDisp1_WX]                                     ; $4357: $f0 $96
	pop af                                           ; $4359: $f1

jr_098_435a:
	dec hl                                           ; $435a: $2b
	ld a, $3f                                        ; $435b: $3e $3f
	db $f4                                           ; $435d: $f4
	dec l                                            ; $435e: $2d
	db $f4                                           ; $435f: $f4
	ld [$1347], a                                    ; $4360: $ea $47 $13
	ldh a, [c]                                       ; $4363: $f2
	sub e                                            ; $4364: $93
	pop af                                           ; $4365: $f1
	ld [hl], a                                       ; $4366: $77
	ldh a, [$28]                                     ; $4367: $f0 $28
	db $eb                                           ; $4369: $eb
	ld l, l                                          ; $436a: $6d
	xor h                                            ; $436b: $ac
	ld b, b                                          ; $436c: $40
	ld d, h                                          ; $436d: $54
	ld b, a                                          ; $436e: $47
	jr c, jr_098_43cd                                ; $436f: $38 $5c

	ld a, [hl-]                                      ; $4371: $3a
	and b                                            ; $4372: $a0
	db $eb                                           ; $4373: $eb
	ld e, l                                          ; $4374: $5d
	dec [hl]                                         ; $4375: $35
	rla                                              ; $4376: $17
	db $f4                                           ; $4377: $f4
	dec l                                            ; $4378: $2d
	db $f4                                           ; $4379: $f4
	xor l                                            ; $437a: $ad
	ld a, $3f                                        ; $437b: $3e $3f
	xor h                                            ; $437d: $ac
	ldh a, [$d7]                                     ; $437e: $f0 $d7
	ld c, e                                          ; $4380: $4b
	ldh a, [hDisp1_WX]                                     ; $4381: $f0 $96
	pop af                                           ; $4383: $f1
	dec hl                                           ; $4384: $2b
	ld d, c                                          ; $4385: $51
	ld c, l                                          ; $4386: $4d
	ld a, e                                          ; $4387: $7b
	jr c, jr_098_43c2                                ; $4388: $38 $38

	ld l, h                                          ; $438a: $6c
	dec a                                            ; $438b: $3d
	jr c, jr_098_43d3                                ; $438c: $38 $45

	and b                                            ; $438e: $a0
	cpl                                              ; $438f: $2f
	ld b, e                                          ; $4390: $43
	ld d, c                                          ; $4391: $51
	ld [hl], b                                       ; $4392: $70
	jr c, jr_098_43e1                                ; $4393: $38 $4c

	xor h                                            ; $4395: $ac
	ldh a, [$f0]                                     ; $4396: $f0 $f0
	ldh a, [$ca]                                     ; $4398: $f0 $ca
	add h                                            ; $439a: $84

jr_098_439b:
	ld c, c                                          ; $439b: $49
	ldh a, [rAUDVOL]                                 ; $439c: $f0 $24
	ld a, c                                          ; $439e: $79
	ld c, [hl]                                       ; $439f: $4e
	ld a, [hl-]                                      ; $43a0: $3a
	ld b, c                                          ; $43a1: $41
	ccf                                              ; $43a2: $3f
	and b                                            ; $43a3: $a0
	call c, Call_098_6f34                            ; $43a4: $dc $34 $6f
	xor h                                            ; $43a7: $ac
	ldh a, [$8e]                                     ; $43a8: $f0 $8e
	ldh a, [$c4]                                     ; $43aa: $f0 $c4
	ld e, c                                          ; $43ac: $59
	ldh a, [rP1]                                     ; $43ad: $f0 $00
	ld h, l                                          ; $43af: $65
	ldh a, [$50]                                     ; $43b0: $f0 $50
	ld d, e                                          ; $43b2: $53
	ldh a, [rTMA]                                    ; $43b3: $f0 $06
	add hl, sp                                       ; $43b5: $39
	ld l, h                                          ; $43b6: $6c
	dec a                                            ; $43b7: $3d
	jr c, jr_098_435a                                ; $43b8: $38 $a0

	cpl                                              ; $43ba: $2f
	ld b, e                                          ; $43bb: $43
	ld b, b                                          ; $43bc: $40
	ld c, l                                          ; $43bd: $4d
	ld e, e                                          ; $43be: $5b
	ld d, [hl]                                       ; $43bf: $56
	inc [hl]                                         ; $43c0: $34
	ld a, d                                          ; $43c1: $7a

jr_098_43c2:
	ld e, a                                          ; $43c2: $5f
	add hl, sp                                       ; $43c3: $39
	and b                                            ; $43c4: $a0
	call c, $b034                                    ; $43c5: $dc $34 $b0
	and b                                            ; $43c8: $a0
	cpl                                              ; $43c9: $2f
	ld [hl-], a                                      ; $43ca: $32
	ldh a, [rAUD1LOW]                                ; $43cb: $f0 $13

jr_098_43cd:
	sbc d                                            ; $43cd: $9a
	ld b, a                                          ; $43ce: $47
	ldh a, [rOCPD]                                   ; $43cf: $f0 $6b
	ldh a, [$60]                                     ; $43d1: $f0 $60

jr_098_43d3:
	ldh a, [$03]                                     ; $43d3: $f0 $03
	ld b, a                                          ; $43d5: $47
	inc de                                           ; $43d6: $13
	ld a, d                                          ; $43d7: $7a
	ld c, [hl]                                       ; $43d8: $4e
	ld d, h                                          ; $43d9: $54
	ld c, c                                          ; $43da: $49
	ld d, e                                          ; $43db: $53
	sub h                                            ; $43dc: $94
	ld a, b                                          ; $43dd: $78
	dec a                                            ; $43de: $3d
	xor b                                            ; $43df: $a8
	ld e, b                                          ; $43e0: $58

jr_098_43e1:
	ld d, c                                          ; $43e1: $51
	ld d, e                                          ; $43e2: $53
	inc [hl]                                         ; $43e3: $34
	db $ec                                           ; $43e4: $ec
	pop hl                                           ; $43e5: $e1
	ld b, h                                          ; $43e6: $44
	and b                                            ; $43e7: $a0
	cpl                                              ; $43e8: $2f
	ld b, e                                          ; $43e9: $43
	ld e, [hl]                                       ; $43ea: $5e
	inc [hl]                                         ; $43eb: $34
	ld b, b                                          ; $43ec: $40
	ld b, c                                          ; $43ed: $41
	ld a, [hl-]                                      ; $43ee: $3a
	ld d, h                                          ; $43ef: $54
	ld c, c                                          ; $43f0: $49
	inc de                                           ; $43f1: $13
	add d                                            ; $43f2: $82
	dec sp                                           ; $43f3: $3b

Jump_098_43f4:
	ccf                                              ; $43f4: $3f
	dec a                                            ; $43f5: $3d
	inc a                                            ; $43f6: $3c
	ld a, [hl-]                                      ; $43f7: $3a
	xor c                                            ; $43f8: $a9
	pop af                                           ; $43f9: $f1
	ld l, a                                          ; $43fa: $6f
	ld b, d                                          ; $43fb: $42
	add h                                            ; $43fc: $84
	ld b, a                                          ; $43fd: $47
	ld c, a                                          ; $43fe: $4f
	ldh a, [$0c]                                     ; $43ff: $f0 $0c
	jr c, jr_098_4442                                ; $4401: $38 $3f

	ld l, h                                          ; $4403: $6c
	ld b, l                                          ; $4404: $45
	add hl, sp                                       ; $4405: $39
	ld b, l                                          ; $4406: $45
	and c                                            ; $4407: $a1
	ldh a, [$32]                                     ; $4408: $f0 $32
	ld h, l                                          ; $440a: $65
	ld l, c                                          ; $440b: $69
	ldh a, [hDisp0_WX]                                     ; $440c: $f0 $89
	ldh a, [c]                                       ; $440e: $f2
	daa                                              ; $440f: $27
	ld e, c                                          ; $4410: $59
	ldh a, [rP1]                                     ; $4411: $f0 $00
	ld e, c                                          ; $4413: $59
	xor h                                            ; $4414: $ac
	add a                                            ; $4415: $87
	ldh a, [$5b]                                     ; $4416: $f0 $5b
	ldh a, [$5e]                                     ; $4418: $f0 $5e
	ld b, l                                          ; $441a: $45
	xor b                                            ; $441b: $a8
	ld e, b                                          ; $441c: $58
	ld b, [hl]                                       ; $441d: $46
	inc [hl]                                         ; $441e: $34
	jr c, @+$5e                                      ; $441f: $38 $5c

	ld d, d                                          ; $4421: $52
	ld a, $66                                        ; $4422: $3e $66
	add hl, sp                                       ; $4424: $39
	and b                                            ; $4425: $a0
	cpl                                              ; $4426: $2f
	ld [hl-], a                                      ; $4427: $32
	ld a, [hl-]                                      ; $4428: $3a
	adc l                                            ; $4429: $8d
	inc a                                            ; $442a: $3c
	inc [hl]                                         ; $442b: $34
	ldh a, [rAUD1LOW]                                ; $442c: $f0 $13
	sbc d                                            ; $442e: $9a
	ld b, a                                          ; $442f: $47
	inc de                                           ; $4430: $13
	ldh a, [rOCPD]                                   ; $4431: $f0 $6b
	ldh a, [$60]                                     ; $4433: $f0 $60
	ldh a, [$03]                                     ; $4435: $f0 $03
	ld b, a                                          ; $4437: $47
	ld a, d                                          ; $4438: $7a
	ld c, [hl]                                       ; $4439: $4e
	ld d, h                                          ; $443a: $54
	ld c, c                                          ; $443b: $49
	ld d, e                                          ; $443c: $53
	sub h                                            ; $443d: $94
	ld a, b                                          ; $443e: $78
	dec a                                            ; $443f: $3d
	inc sp                                           ; $4440: $33
	add hl, bc                                       ; $4441: $09

jr_098_4442:
	add hl, bc                                       ; $4442: $09
	xor $14                                          ; $4443: $ee $14
	xor h                                            ; $4445: $ac
	ld d, $ec                                        ; $4446: $16 $ec
	ret c                                            ; $4448: $d8

	and b                                            ; $4449: $a0
	cpl                                              ; $444a: $2f
	ld b, e                                          ; $444b: $43
	ld b, [hl]                                       ; $444c: $46
	dec sp                                           ; $444d: $3b
	xor h                                            ; $444e: $ac
	db $ed                                           ; $444f: $ed
	ld d, e                                          ; $4450: $53
	inc [hl]                                         ; $4451: $34
	ld h, h                                          ; $4452: $64
	ld c, e                                          ; $4453: $4b
	ld b, l                                          ; $4454: $45
	add hl, sp                                       ; $4455: $39
	and b                                            ; $4456: $a0
	ld d, d                                          ; $4457: $52
	ld b, h                                          ; $4458: $44
	inc [hl]                                         ; $4459: $34
	ldh a, [$98]                                     ; $445a: $f0 $98
	ld c, c                                          ; $445c: $49
	ld h, a                                          ; $445d: $67
	ld d, l                                          ; $445e: $55
	inc a                                            ; $445f: $3c
	xor h                                            ; $4460: $ac
	ldh a, [$ec]                                     ; $4461: $f0 $ec
	ld [hl], c                                       ; $4463: $71
	ccf                                              ; $4464: $3f
	jr c, jr_098_44a1                                ; $4465: $38 $3a

	jr c, @+$44                                      ; $4467: $38 $42

	inc a                                            ; $4469: $3c
	ld a, $50                                        ; $446a: $3e $50
	and c                                            ; $446c: $a1
	cpl                                              ; $446d: $2f
	ld b, e                                          ; $446e: $43
	xor $1f                                          ; $446f: $ee $1f
	inc [hl]                                         ; $4471: $34
	ld b, b                                          ; $4472: $40
	add hl, sp                                       ; $4473: $39
	and b                                            ; $4474: $a0
	ld l, a                                          ; $4475: $6f
	ld d, e                                          ; $4476: $53
	inc [hl]                                         ; $4477: $34
	ldh a, [$bf]                                     ; $4478: $f0 $bf
	xor $06                                          ; $447a: $ee $06
	ld a, $3f                                        ; $447c: $3e $3f
	inc de                                           ; $447e: $13
	ld b, [hl]                                       ; $447f: $46
	ldh a, [rSB]                                     ; $4480: $f0 $01
	ccf                                              ; $4482: $3f
	ld c, a                                          ; $4483: $4f
	ld b, l                                          ; $4484: $45
	ld d, l                                          ; $4485: $55
	ccf                                              ; $4486: $3f
	ld b, l                                          ; $4487: $45
	xor b                                            ; $4488: $a8
	ld [$a0e1], a                                    ; $4489: $ea $e1 $a0
	cpl                                              ; $448c: $2f
	xor $1f                                          ; $448d: $ee $1f
	inc [hl]                                         ; $448f: $34
	ldh a, [$bf]                                     ; $4490: $f0 $bf
	ldh a, [$c8]                                     ; $4492: $f0 $c8
	jr c, jr_098_44e7                                ; $4494: $38 $51

	ld c, [hl]                                       ; $4496: $4e
	ld b, l                                          ; $4497: $45
	add hl, bc                                       ; $4498: $09
	ld d, d                                          ; $4499: $52
	inc [hl]                                         ; $449a: $34
	ld l, a                                          ; $449b: $6f
	ld b, d                                          ; $449c: $42
	ldh a, [$3b]                                     ; $449d: $f0 $3b
	jr c, jr_098_4503                                ; $449f: $38 $62

jr_098_44a1:
	pop af                                           ; $44a1: $f1
	pop bc                                           ; $44a2: $c1
	ld c, [hl]                                       ; $44a3: $4e
	ldh a, [$ab]                                     ; $44a4: $f0 $ab
	inc de                                           ; $44a6: $13
	ld a, [hl-]                                      ; $44a7: $3a
	ld b, c                                          ; $44a8: $41
	ccf                                              ; $44a9: $3f
	ldh a, [$a4]                                     ; $44aa: $f0 $a4
	ld e, [hl]                                       ; $44ac: $5e
	ld d, b                                          ; $44ad: $50
	ld c, l                                          ; $44ae: $4d
	ld a, [hl-]                                      ; $44af: $3a
	jr c, jr_098_450f                                ; $44b0: $38 $5d

	ld e, d                                          ; $44b2: $5a
	xor l                                            ; $44b3: $ad
	jp hl                                            ; $44b4: $e9


	ld a, [hl+]                                      ; $44b5: $2a
	and b                                            ; $44b6: $a0
	cpl                                              ; $44b7: $2f
	jr c, jr_098_4528                                ; $44b8: $38 $6e

	inc [hl]                                         ; $44ba: $34
	jr c, jr_098_44f5                                ; $44bb: $38 $38

	ld b, l                                          ; $44bd: $45
	add hl, bc                                       ; $44be: $09
	ld l, e                                          ; $44bf: $6b
	ld b, l                                          ; $44c0: $45
	scf                                              ; $44c1: $37
	ld [hl+], a                                      ; $44c2: $22
	inc de                                           ; $44c3: $13
	ld d, h                                          ; $44c4: $54
	ld b, d                                          ; $44c5: $42
	ld l, a                                          ; $44c6: $6f
	ld d, e                                          ; $44c7: $53
	inc [hl]                                         ; $44c8: $34
	db $ec                                           ; $44c9: $ec
	add hl, bc                                       ; $44ca: $09
	inc de                                           ; $44cb: $13
	ldh a, [$3b]                                     ; $44cc: $f0 $3b
	dec sp                                           ; $44ce: $3b
	ccf                                              ; $44cf: $3f
	ld b, [hl]                                       ; $44d0: $46
	ldh a, [rSB]                                     ; $44d1: $f0 $01
	ccf                                              ; $44d3: $3f
	ld c, [hl]                                       ; $44d4: $4e
	ld b, d                                          ; $44d5: $42
	ld b, a                                          ; $44d6: $47
	dec [hl]                                         ; $44d7: $35
	inc hl                                           ; $44d8: $23
	inc de                                           ; $44d9: $13
	ldh a, [rHDMA5]                                  ; $44da: $f0 $55
	ldh a, [rBCPS]                                   ; $44dc: $f0 $68
	ld d, c                                          ; $44de: $51
	ld c, [hl]                                       ; $44df: $4e
	ld h, e                                          ; $44e0: $63
	ld c, h                                          ; $44e1: $4c
	and b                                            ; $44e2: $a0
	cpl                                              ; $44e3: $2f
	ld b, e                                          ; $44e4: $43
	ld b, [hl]                                       ; $44e5: $46
	ld d, a                                          ; $44e6: $57

jr_098_44e7:
	ld d, [hl]                                       ; $44e7: $56
	xor h                                            ; $44e8: $ac
	pop af                                           ; $44e9: $f1
	ld [hl-], a                                      ; $44ea: $32
	ld d, b                                          ; $44eb: $50
	ld a, c                                          ; $44ec: $79
	ld h, c                                          ; $44ed: $61
	ld d, [hl]                                       ; $44ee: $56
	dec sp                                           ; $44ef: $3b
	dec a                                            ; $44f0: $3d
	ld b, l                                          ; $44f1: $45
	and b                                            ; $44f2: $a0
	cpl                                              ; $44f3: $2f
	ld b, e                                          ; $44f4: $43

jr_098_44f5:
	ld b, [hl]                                       ; $44f5: $46
	dec sp                                           ; $44f6: $3b
	inc [hl]                                         ; $44f7: $34
	db $ed                                           ; $44f8: $ed
	xor d                                            ; $44f9: $aa
	jr c, @+$3a                                      ; $44fa: $38 $38

	ld c, c                                          ; $44fc: $49
	ld d, h                                          ; $44fd: $54
	ld e, a                                          ; $44fe: $5f
	inc de                                           ; $44ff: $13
	ld b, a                                          ; $4500: $47
	inc [hl]                                         ; $4501: $34

jr_098_4502:
	db $ed                                           ; $4502: $ed

jr_098_4503:
	ld d, e                                          ; $4503: $53
	db $eb                                           ; $4504: $eb
	ld h, [hl]                                       ; $4505: $66
	and b                                            ; $4506: $a0
	cpl                                              ; $4507: $2f
	ld b, e                                          ; $4508: $43
	db $ed                                           ; $4509: $ed
	ld d, e                                          ; $450a: $53
	and b                                            ; $450b: $a0
	xor $14                                          ; $450c: $ee $14
	inc [hl]                                         ; $450e: $34

jr_098_450f:
	ld h, h                                          ; $450f: $64
	ld c, e                                          ; $4510: $4b
	ld b, l                                          ; $4511: $45
	add hl, sp                                       ; $4512: $39
	xor b                                            ; $4513: $a8
	ld d, $a0                                        ; $4514: $16 $a0
	cpl                                              ; $4516: $2f
	ld b, e                                          ; $4517: $43
	ld c, h                                          ; $4518: $4c
	ld e, [hl]                                       ; $4519: $5e
	inc [hl]                                         ; $451a: $34
	ld l, d                                          ; $451b: $6a
	ld l, b                                          ; $451c: $68
	ld b, d                                          ; $451d: $42
	inc de                                           ; $451e: $13
	db $ec                                           ; $451f: $ec
	jp $ea34                                         ; $4520: $c3 $34 $ea


	ld h, $a1                                        ; $4523: $26 $a1
	ld e, [hl]                                       ; $4525: $5e
	dec sp                                           ; $4526: $3b
	inc [hl]                                         ; $4527: $34

jr_098_4528:
	ld l, a                                          ; $4528: $6f
	ld c, c                                          ; $4529: $49
	ld c, b                                          ; $452a: $48
	xor c                                            ; $452b: $a9
	ld e, [hl]                                       ; $452c: $5e
	ld e, [hl]                                       ; $452d: $5e
	inc [hl]                                         ; $452e: $34
	jr c, jr_098_4569                                ; $452f: $38 $38

	ld h, e                                          ; $4531: $63
	xor b                                            ; $4532: $a8
	xor $06                                          ; $4533: $ee $06
	ld b, a                                          ; $4535: $47
	ld h, a                                          ; $4536: $67
	dec sp                                           ; $4537: $3b
	ccf                                              ; $4538: $3f
	rst SubAFromDE                                          ; $4539: $df
	and b                                            ; $453a: $a0
	cpl                                              ; $453b: $2f
	ld b, e                                          ; $453c: $43
	ld e, e                                          ; $453d: $5b
	ld d, [hl]                                       ; $453e: $56
	ld b, [hl]                                       ; $453f: $46
	ld e, b                                          ; $4540: $58
	xor h                                            ; $4541: $ac
	ld l, d                                          ; $4542: $6a
	inc a                                            ; $4543: $3c
	ld d, b                                          ; $4544: $50
	call Call_098_40a0                               ; $4545: $cd $a0 $40
	ld c, l                                          ; $4548: $4d
	ld e, e                                          ; $4549: $5b
	ld d, [hl]                                       ; $454a: $56
	inc [hl]                                         ; $454b: $34
	ret                                              ; $454c: $c9


	inc de                                           ; $454d: $13
	sbc c                                            ; $454e: $99
	dec sp                                           ; $454f: $3b
	ccf                                              ; $4550: $3f
	db $eb                                           ; $4551: $eb
	sub b                                            ; $4552: $90
	and c                                            ; $4553: $a1
	cpl                                              ; $4554: $2f
	ld b, e                                          ; $4555: $43
	ld b, [hl]                                       ; $4556: $46
	ld b, [hl]                                       ; $4557: $46
	inc [hl]                                         ; $4558: $34
	ld h, a                                          ; $4559: $67
	dec sp                                           ; $455a: $3b
	ccf                                              ; $455b: $3f
	ld d, b                                          ; $455c: $50
	dec sp                                           ; $455d: $3b
	ld a, $56                                        ; $455e: $3e $56
	jr c, jr_098_4502                                ; $4560: $38 $a0

	cpl                                              ; $4562: $2f
	ld b, e                                          ; $4563: $43
	xor $10                                          ; $4564: $ee $10
	dec [hl]                                         ; $4566: $35
	inc hl                                           ; $4567: $23
	inc de                                           ; $4568: $13

jr_098_4569:
	ret                                              ; $4569: $c9


	inc [hl]                                         ; $456a: $34
	ldh a, [$c7]                                     ; $456b: $f0 $c7
	jr c, jr_098_45a9                                ; $456d: $38 $3a

	and b                                            ; $456f: $a0
	ldh a, [$bf]                                     ; $4570: $f0 $bf
	db $f4                                           ; $4572: $f4
	dec de                                           ; $4573: $1b
	ld a, [hl-]                                      ; $4574: $3a
	ld e, b                                          ; $4575: $58
	jr c, jr_098_45c4                                ; $4576: $38 $4c

	xor h                                            ; $4578: $ac
	ldh a, [$c7]                                     ; $4579: $f0 $c7
	ld d, l                                          ; $457b: $55
	ld a, [hl-]                                      ; $457c: $3a
	dec sp                                           ; $457d: $3b
	ld h, c                                          ; $457e: $61
	ld d, [hl]                                       ; $457f: $56
	dec sp                                           ; $4580: $3b
	ccf                                              ; $4581: $3f
	dec [hl]                                         ; $4582: $35
	inc hl                                           ; $4583: $23
	inc de                                           ; $4584: $13
	pop hl                                           ; $4585: $e1
	ld c, e                                          ; $4586: $4b
	inc [hl]                                         ; $4587: $34
	pop af                                           ; $4588: $f1

jr_098_4589:
	ld a, c                                          ; $4589: $79
	pop af                                           ; $458a: $f1
	ld h, d                                          ; $458b: $62
	ld b, a                                          ; $458c: $47
	pop af                                           ; $458d: $f1
	ld l, [hl]                                       ; $458e: $6e
	ldh a, [$cf]                                     ; $458f: $f0 $cf
	ld c, c                                          ; $4591: $49
	inc de                                           ; $4592: $13
	ldh a, [rBGP]                                    ; $4593: $f0 $47
	ldh a, [$2a]                                     ; $4595: $f0 $2a
	ld d, e                                          ; $4597: $53
	inc a                                            ; $4598: $3c
	inc a                                            ; $4599: $3c
	ld c, [hl]                                       ; $459a: $4e
	inc a                                            ; $459b: $3c
	ld d, b                                          ; $459c: $50
	and b                                            ; $459d: $a0
	cpl                                              ; $459e: $2f
	ld b, e                                          ; $459f: $43
	ld e, e                                          ; $45a0: $5b
	ld d, [hl]                                       ; $45a1: $56
	ld b, [hl]                                       ; $45a2: $46
	inc [hl]                                         ; $45a3: $34
	db $ec                                           ; $45a4: $ec
	rlca                                             ; $45a5: $07
	and b                                            ; $45a6: $a0
	xor $14                                          ; $45a7: $ee $14

jr_098_45a9:
	inc [hl]                                         ; $45a9: $34
	ld d, $a8                                        ; $45aa: $16 $a8
	ld l, e                                          ; $45ac: $6b
	inc a                                            ; $45ad: $3c
	ld a, $50                                        ; $45ae: $3e $50
	and c                                            ; $45b0: $a1
	call c, $ee34                                    ; $45b1: $dc $34 $ee
	ld b, $47                                        ; $45b4: $06 $47
	ld h, a                                          ; $45b6: $67
	dec sp                                           ; $45b7: $3b
	ccf                                              ; $45b8: $3f
	inc de                                           ; $45b9: $13
	ld b, [hl]                                       ; $45ba: $46
	ldh a, [rSB]                                     ; $45bb: $f0 $01
	ccf                                              ; $45bd: $3f
	ld c, a                                          ; $45be: $4f
	ret nc                                           ; $45bf: $d0

jr_098_45c0:
	and b                                            ; $45c0: $a0
	or h                                             ; $45c1: $b4
	inc [hl]                                         ; $45c2: $34
	ret                                              ; $45c3: $c9


jr_098_45c4:
	inc de                                           ; $45c4: $13
	pop af                                           ; $45c5: $f1
	ld a, c                                          ; $45c6: $79
	pop af                                           ; $45c7: $f1
	ld h, d                                          ; $45c8: $62
	ld a, $3f                                        ; $45c9: $3e $3f
	ld d, l                                          ; $45cb: $55
	ld c, [hl]                                       ; $45cc: $4e
	inc a                                            ; $45cd: $3c
	ld d, b                                          ; $45ce: $50
	xor h                                            ; $45cf: $ac
	sbc c                                            ; $45d0: $99
	dec sp                                           ; $45d1: $3b
	ccf                                              ; $45d2: $3f
	db $eb                                           ; $45d3: $eb
	sub b                                            ; $45d4: $90
	and c                                            ; $45d5: $a1
	cpl                                              ; $45d6: $2f
	ld b, e                                          ; $45d7: $43
	xor $10                                          ; $45d8: $ee $10
	dec [hl]                                         ; $45da: $35
	inc hl                                           ; $45db: $23
	inc de                                           ; $45dc: $13
	xor $10                                          ; $45dd: $ee $10
	dec [hl]                                         ; $45df: $35
	inc hl                                           ; $45e0: $23
	inc de                                           ; $45e1: $13
	ld b, h                                          ; $45e2: $44
	ld e, c                                          ; $45e3: $59
	inc [hl]                                         ; $45e4: $34
	ldh a, [$c7]                                     ; $45e5: $f0 $c7
	jr c, jr_098_4589                                ; $45e7: $38 $a0

	sbc c                                            ; $45e9: $99
	dec a                                            ; $45ea: $3d
	ld a, c                                          ; $45eb: $79
	ld h, c                                          ; $45ec: $61
	ld d, [hl]                                       ; $45ed: $56
	dec sp                                           ; $45ee: $3b
	dec a                                            ; $45ef: $3d
	inc a                                            ; $45f0: $3c
	ld a, $50                                        ; $45f1: $3e $50
	and c                                            ; $45f3: $a1
	cpl                                              ; $45f4: $2f
	ld b, e                                          ; $45f5: $43
	ldh a, [rAUD3ENA]                                ; $45f6: $f0 $1a
	inc [hl]                                         ; $45f8: $34
	ldh a, [rAUD3ENA]                                ; $45f9: $f0 $1a
	inc [hl]                                         ; $45fb: $34
	ldh a, [rAUD3ENA]                                ; $45fc: $f0 $1a
	inc [hl]                                         ; $45fe: $34
	ret                                              ; $45ff: $c9


	ld c, h                                          ; $4600: $4c
	xor b                                            ; $4601: $a8
	ld [hl-], a                                      ; $4602: $32
	ld b, [hl]                                       ; $4603: $46
	ld b, [hl]                                       ; $4604: $46
	inc [hl]                                         ; $4605: $34
	ld d, c                                          ; $4606: $51
	dec sp                                           ; $4607: $3b
	ldh a, [rSB]                                     ; $4608: $f0 $01
	ld e, c                                          ; $460a: $59
	sbc c                                            ; $460b: $99
	dec sp                                           ; $460c: $3b
	dec a                                            ; $460d: $3d
	ld b, l                                          ; $460e: $45
	and e                                            ; $460f: $a3
	ldh a, [$bf]                                     ; $4610: $f0 $bf
	db $f4                                           ; $4612: $f4
	dec de                                           ; $4613: $1b
	ld a, [hl-]                                      ; $4614: $3a
	ld e, b                                          ; $4615: $58
	jr c, jr_098_45c0                                ; $4616: $38 $a8

	pop hl                                           ; $4618: $e1
	ld c, e                                          ; $4619: $4b
	inc [hl]                                         ; $461a: $34
	pop af                                           ; $461b: $f1
	ld a, c                                          ; $461c: $79
	pop af                                           ; $461d: $f1
	ld h, d                                          ; $461e: $62
	ld b, a                                          ; $461f: $47
	pop af                                           ; $4620: $f1
	ld l, [hl]                                       ; $4621: $6e
	ldh a, [$cf]                                     ; $4622: $f0 $cf
	ld c, c                                          ; $4624: $49
	inc de                                           ; $4625: $13
	ldh a, [rBGP]                                    ; $4626: $f0 $47
	ldh a, [$2a]                                     ; $4628: $f0 $2a
	ld d, e                                          ; $462a: $53
	inc a                                            ; $462b: $3c
	inc a                                            ; $462c: $3c
	ld c, [hl]                                       ; $462d: $4e
	inc a                                            ; $462e: $3c
	ld d, b                                          ; $462f: $50
	and b                                            ; $4630: $a0
	xor $14                                          ; $4631: $ee $14
	inc [hl]                                         ; $4633: $34

Call_098_4634:
	ld l, e                                          ; $4634: $6b
	ld b, d                                          ; $4635: $42
	ldh a, [rAUD2LEN]                                ; $4636: $f0 $16
	inc a                                            ; $4638: $3c
	ld a, $50                                        ; $4639: $3e $50
	and c                                            ; $463b: $a1
	call c, $ee34                                    ; $463c: $dc $34 $ee
	ld b, $47                                        ; $463f: $06 $47
	ld h, a                                          ; $4641: $67
	dec sp                                           ; $4642: $3b
	ccf                                              ; $4643: $3f
	inc de                                           ; $4644: $13
	ld b, [hl]                                       ; $4645: $46
	ldh a, [rSB]                                     ; $4646: $f0 $01
	ccf                                              ; $4648: $3f
	ld c, a                                          ; $4649: $4f
	ld b, l                                          ; $464a: $45
	ld d, l                                          ; $464b: $55
	ccf                                              ; $464c: $3f
	ld b, l                                          ; $464d: $45
	xor b                                            ; $464e: $a8
	ld [$f0e1], a                                    ; $464f: $ea $e1 $f0
	ld l, e                                          ; $4652: $6b
	ldh a, [rOCPD]                                   ; $4653: $f0 $6b
	and b                                            ; $4655: $a0
	or h                                             ; $4656: $b4
	inc [hl]                                         ; $4657: $34
	ret                                              ; $4658: $c9


	inc de                                           ; $4659: $13
	pop af                                           ; $465a: $f1
	ld a, c                                          ; $465b: $79
	pop af                                           ; $465c: $f1
	ld h, d                                          ; $465d: $62
	ld a, $3f                                        ; $465e: $3e $3f
	ld d, l                                          ; $4660: $55
	ld c, [hl]                                       ; $4661: $4e
	inc a                                            ; $4662: $3c
	ld d, b                                          ; $4663: $50
	xor h                                            ; $4664: $ac
	sbc c                                            ; $4665: $99
	dec sp                                           ; $4666: $3b
	ccf                                              ; $4667: $3f
	ldh a, [$a3]                                     ; $4668: $f0 $a3
	ld e, b                                          ; $466a: $58

jr_098_466b:
	ld c, [hl]                                       ; $466b: $4e
	and c                                            ; $466c: $a1
	ld l, a                                          ; $466d: $6f
	ld c, c                                          ; $466e: $49

jr_098_466f:
	inc [hl]                                         ; $466f: $34
	xor $06                                          ; $4670: $ee $06
	ld a, [hl-]                                      ; $4672: $3a
	ld b, c                                          ; $4673: $41
	ld b, h                                          ; $4674: $44
	inc a                                            ; $4675: $3c
	ld d, b                                          ; $4676: $50
	inc de                                           ; $4677: $13
	ld d, h                                          ; $4678: $54
	ld b, d                                          ; $4679: $42
	sbc l                                            ; $467a: $9d
	ld d, b                                          ; $467b: $50
	jr c, jr_098_466b                                ; $467c: $38 $ed

	adc c                                            ; $467e: $89
	ld a, $3a                                        ; $467f: $3e $3a
	ld e, h                                          ; $4681: $5c
	ld d, [hl]                                       ; $4682: $56
	xor b                                            ; $4683: $a8
	ld b, b                                          ; $4684: $40
	ld c, l                                          ; $4685: $4d
	ld e, e                                          ; $4686: $5b
	ld d, [hl]                                       ; $4687: $56
	inc [hl]                                         ; $4688: $34
	ld h, a                                          ; $4689: $67
	ld e, h                                          ; $468a: $5c
	ld d, d                                          ; $468b: $52
	ld a, $66                                        ; $468c: $3e $66
	and b                                            ; $468e: $a0
	ld hl, $10ee                                     ; $468f: $21 $ee $10
	xor b                                            ; $4692: $a8
	jr nz, jr_098_4700                               ; $4693: $20 $6b

	ld b, d                                          ; $4695: $42
	xor $1c                                          ; $4696: $ee $1c
	and c                                            ; $4698: $a1
	ld l, a                                          ; $4699: $6f
	xor h                                            ; $469a: $ac
	ld b, [hl]                                       ; $469b: $46
	ld a, [hl-]                                      ; $469c: $3a
	dec a                                            ; $469d: $3d
	ld b, a                                          ; $469e: $47
	ldh a, [$3b]                                     ; $469f: $f0 $3b
	dec sp                                           ; $46a1: $3b
	ccf                                              ; $46a2: $3f
	ld c, a                                          ; $46a3: $4f
	ld d, b                                          ; $46a4: $50
	add hl, sp                                       ; $46a5: $39
	ldh a, [$08]                                     ; $46a6: $f0 $08
	ld e, d                                          ; $46a8: $5a
	xor h                                            ; $46a9: $ac
	pop af                                           ; $46aa: $f1
	add c                                            ; $46ab: $81
	ld h, c                                          ; $46ac: $61
	ldh a, [$fe]                                     ; $46ad: $f0 $fe
	ld c, l                                          ; $46af: $4d

jr_098_46b0:
	ccf                                              ; $46b0: $3f
	ld h, h                                          ; $46b1: $64
	ld d, a                                          ; $46b2: $57
	ld d, d                                          ; $46b3: $52
	ld a, c                                          ; $46b4: $79
	ld b, c                                          ; $46b5: $41
	ld b, d                                          ; $46b6: $42
	and b                                            ; $46b7: $a0
	cpl                                              ; $46b8: $2f
	ld b, e                                          ; $46b9: $43
	ldh a, [$d8]                                     ; $46ba: $f0 $d8
	inc [hl]                                         ; $46bc: $34
	ldh a, [$d8]                                     ; $46bd: $f0 $d8
	ld e, d                                          ; $46bf: $5a
	jr c, jr_098_466f                                ; $46c0: $38 $ad

	ldh a, [$d8]                                     ; $46c2: $f0 $d8
	ld e, d                                          ; $46c4: $5a
	ld d, c                                          ; $46c5: $51
	ldh a, [$cb]                                     ; $46c6: $f0 $cb
	ld c, [hl]                                       ; $46c8: $4e
	ld c, b                                          ; $46c9: $48
	and b                                            ; $46ca: $a0
	cpl                                              ; $46cb: $2f
	ld [$ac33], a                                    ; $46cc: $ea $33 $ac
	jp hl                                            ; $46cf: $e9


	ld b, l                                          ; $46d0: $45
	and e                                            ; $46d1: $a3
	pop af                                           ; $46d2: $f1
	sbc b                                            ; $46d3: $98
	ldh a, [hDisp1_WY]                                     ; $46d4: $f0 $95
	ld b, h                                          ; $46d6: $44
	ld a, $34                                        ; $46d7: $3e $34
	ldh a, [$f3]                                     ; $46d9: $f0 $f3
	ld c, l                                          ; $46db: $4d
	ld c, [hl]                                       ; $46dc: $4e
	ld a, $ac                                        ; $46dd: $3e $ac
	jp nc, $21f0                                     ; $46df: $d2 $f0 $21

	ldh a, [rAUD4GO]                                 ; $46e2: $f0 $23
	ld d, l                                          ; $46e4: $55
	ld a, [hl-]                                      ; $46e5: $3a
	jr c, jr_098_474b                                ; $46e6: $38 $63

	and b                                            ; $46e8: $a0
	ld d, d                                          ; $46e9: $52
	ld b, [hl]                                       ; $46ea: $46
	inc [hl]                                         ; $46eb: $34
	ld l, a                                          ; $46ec: $6f
	ld b, a                                          ; $46ed: $47
	ldh a, [c]                                       ; $46ee: $f2
	sbc $3b                                          ; $46ef: $de $3b
	dec a                                            ; $46f1: $3d
	ld d, a                                          ; $46f2: $57
	ld b, d                                          ; $46f3: $42
	inc de                                           ; $46f4: $13
	ldh a, [$33]                                     ; $46f5: $f0 $33
	ld hl, sp-$0a                                    ; $46f7: $f8 $f6
	ld a, [hl-]                                      ; $46f9: $3a
	di                                               ; $46fa: $f3
	ld [hl], b                                       ; $46fb: $70
	ldh a, [$2c]                                     ; $46fc: $f0 $2c
	ld c, d                                          ; $46fe: $4a
	ld d, c                                          ; $46ff: $51

jr_098_4700:
	ld d, h                                          ; $4700: $54
	ld c, c                                          ; $4701: $49
	xor b                                            ; $4702: $a8
	ld [$a0e1], a                                    ; $4703: $ea $e1 $a0
	db $ed                                           ; $4706: $ed
	ld a, b                                          ; $4707: $78
	ld c, d                                          ; $4708: $4a
	xor h                                            ; $4709: $ac
	ld l, a                                          ; $470a: $6f
	adc e                                            ; $470b: $8b
	ld l, h                                          ; $470c: $6c
	ld b, h                                          ; $470d: $44
	dec sp                                           ; $470e: $3b
	dec a                                            ; $470f: $3d
	ld h, e                                          ; $4710: $63
	xor b                                            ; $4711: $a8
	jr c, jr_098_46b0                                ; $4712: $38 $9c

	ld c, l                                          ; $4714: $4d
	ld c, e                                          ; $4715: $4b
	inc [hl]                                         ; $4716: $34
	ld b, [hl]                                       ; $4717: $46
	ld b, c                                          ; $4718: $41
	ld a, [hl-]                                      ; $4719: $3a
	ld h, h                                          ; $471a: $64
	di                                               ; $471b: $f3
	ld a, [bc]                                       ; $471c: $0a
	ld b, a                                          ; $471d: $47
	inc de                                           ; $471e: $13
	push af                                          ; $471f: $f5
	ld a, l                                          ; $4720: $7d
	ld l, h                                          ; $4721: $6c
	dec a                                            ; $4722: $3d
	jr c, jr_098_4788                                ; $4723: $38 $63

	ld c, h                                          ; $4725: $4c
	and b                                            ; $4726: $a0
	cpl                                              ; $4727: $2f
	ld [hl-], a                                      ; $4728: $32
	ld b, [hl]                                       ; $4729: $46
	ld b, c                                          ; $472a: $41
	ld a, [hl-]                                      ; $472b: $3a
	inc [hl]                                         ; $472c: $34
	db $ed                                           ; $472d: $ed
	ld a, b                                          ; $472e: $78
	ld a, [hl-]                                      ; $472f: $3a
	inc de                                           ; $4730: $13
	ld c, c                                          ; $4731: $49
	ld d, h                                          ; $4732: $54
	ld e, a                                          ; $4733: $5f
	ld b, a                                          ; $4734: $47
	push af                                          ; $4735: $f5
	ld a, l                                          ; $4736: $7d
	ld l, h                                          ; $4737: $6c
	dec a                                            ; $4738: $3d
	jr c, jr_098_477d                                ; $4739: $38 $42

	inc a                                            ; $473b: $3c
	ld c, b                                          ; $473c: $48
	and e                                            ; $473d: $a3
	cpl                                              ; $473e: $2f
	ld b, e                                          ; $473f: $43
	db $ec                                           ; $4740: $ec
	push bc                                          ; $4741: $c5
	xor h                                            ; $4742: $ac
	db $ec                                           ; $4743: $ec
	add $ec                                          ; $4744: $c6 $ec
	rrca                                             ; $4746: $0f
	and b                                            ; $4747: $a0
	ld b, [hl]                                       ; $4748: $46
	ld a, [hl-]                                      ; $4749: $3a
	dec a                                            ; $474a: $3d

jr_098_474b:
	ld b, a                                          ; $474b: $47
	pop af                                           ; $474c: $f1
	dec h                                            ; $474d: $25
	ld a, c                                          ; $474e: $79
	ld c, [hl]                                       ; $474f: $4e
	ld h, e                                          ; $4750: $63
	and b                                            ; $4751: $a0
	cpl                                              ; $4752: $2f
	ld b, e                                          ; $4753: $43
	ld [$accc], a                                    ; $4754: $ea $cc $ac
	jp hl                                            ; $4757: $e9


	ld [hl], $13                                     ; $4758: $36 $13
	jp hl                                            ; $475a: $e9


	xor d                                            ; $475b: $aa
	and c                                            ; $475c: $a1
	ld d, d                                          ; $475d: $52
	inc [hl]                                         ; $475e: $34
	jr c, @+$3a                                      ; $475f: $38 $38

	ld c, d                                          ; $4761: $4a
	ld a, $66                                        ; $4762: $3e $66
	add hl, sp                                       ; $4764: $39
	and b                                            ; $4765: $a0
	cpl                                              ; $4766: $2f
	ld b, e                                          ; $4767: $43

Call_098_4768:
	jp hl                                            ; $4768: $e9


	ret                                              ; $4769: $c9


	xor h                                            ; $476a: $ac
	db $eb                                           ; $476b: $eb
	ld a, [hl]                                       ; $476c: $7e
	ld c, d                                          ; $476d: $4a
	db $ec                                           ; $476e: $ec
	ld a, [bc]                                       ; $476f: $0a
	and b                                            ; $4770: $a0
	ldh a, [$80]                                     ; $4771: $f0 $80
	ldh a, [$c5]                                     ; $4773: $f0 $c5
	ld b, l                                          ; $4775: $45
	and b                                            ; $4776: $a0
	ld h, h                                          ; $4777: $64
	sbc c                                            ; $4778: $99
	dec a                                            ; $4779: $3d
	ld a, c                                          ; $477a: $79
	xor h                                            ; $477b: $ac
	jp hl                                            ; $477c: $e9


jr_098_477d:
	ld a, [hl+]                                      ; $477d: $2a
	and b                                            ; $477e: $a0
	xor $14                                          ; $477f: $ee $14
	xor h                                            ; $4781: $ac
	ld l, e                                          ; $4782: $6b
	inc a                                            ; $4783: $3c
	pop af                                           ; $4784: $f1
	ld c, $3b                                        ; $4785: $0e $3b
	ccf                                              ; $4787: $3f

jr_098_4788:
	ld d, l                                          ; $4788: $55
	ld b, h                                          ; $4789: $44
	ld e, b                                          ; $478a: $58
	ld c, [hl]                                       ; $478b: $4e
	ld b, d                                          ; $478c: $42
	and c                                            ; $478d: $a1
	cpl                                              ; $478e: $2f
	ld b, e                                          ; $478f: $43
	db $eb                                           ; $4790: $eb
	ld a, [hl-]                                      ; $4791: $3a
	add hl, bc                                       ; $4792: $09
	cpl                                              ; $4793: $2f
	ld [$093a], a                                    ; $4794: $ea $3a $09
	cpl                                              ; $4797: $2f
	add sp, $53                                      ; $4798: $e8 $53
	add hl, bc                                       ; $479a: $09
	add a                                            ; $479b: $87
	ldh a, [c]                                       ; $479c: $f2
	rst SubAFromDE                                          ; $479d: $df
	ld a, [hl-]                                      ; $479e: $3a
	ld b, c                                          ; $479f: $41
	ccf                                              ; $47a0: $3f
	ldh a, [c]                                       ; $47a1: $f2
	sub [hl]                                         ; $47a2: $96
	ld e, l                                          ; $47a3: $5d
	ld a, [hl-]                                      ; $47a4: $3a
	jr c, @+$65                                      ; $47a5: $38 $63

	inc de                                           ; $47a7: $13
	ld d, h                                          ; $47a8: $54
	ld c, l                                          ; $47a9: $4d
	pop af                                           ; $47aa: $f1
	ld c, e                                          ; $47ab: $4b
	ldh a, [$3e]                                     ; $47ac: $f0 $3e
	ld b, d                                          ; $47ae: $42
	adc d                                            ; $47af: $8a
	db $f4                                           ; $47b0: $f4
	ld l, b                                          ; $47b1: $68
	ld c, e                                          ; $47b2: $4b
	inc [hl]                                         ; $47b3: $34
	ldh a, [$d4]                                     ; $47b4: $f0 $d4
	ld h, d                                          ; $47b6: $62
	inc de                                           ; $47b7: $13
	push af                                          ; $47b8: $f5
	ld a, d                                          ; $47b9: $7a
	push af                                          ; $47ba: $f5
	ld a, e                                          ; $47bb: $7b
	ld d, c                                          ; $47bc: $51
	ld c, [hl]                                       ; $47bd: $4e
	sbc d                                            ; $47be: $9a
	ld b, a                                          ; $47bf: $47
	ld a, [hl-]                                      ; $47c0: $3a
	ld c, [hl]                                       ; $47c1: $4e
	ld c, a                                          ; $47c2: $4f
	ld b, d                                          ; $47c3: $42
	and b                                            ; $47c4: $a0
	cpl                                              ; $47c5: $2f
	ld b, e                                          ; $47c6: $43
	db $eb                                           ; $47c7: $eb
	dec sp                                           ; $47c8: $3b
	add hl, bc                                       ; $47c9: $09
	ldh a, [$57]                                     ; $47ca: $f0 $57
	ldh a, [$ae]                                     ; $47cc: $f0 $ae
	ld c, h                                          ; $47ce: $4c
	add l                                            ; $47cf: $85
	xor l                                            ; $47d0: $ad
	ld d, h                                          ; $47d1: $54
	ld b, d                                          ; $47d2: $42
	pop af                                           ; $47d3: $f1
	call nz, Call_098_4768                           ; $47d4: $c4 $68 $47
	ldh a, [rPCM12]                                  ; $47d7: $f0 $76
	ldh a, [rTMA]                                    ; $47d9: $f0 $06
	add hl, sp                                       ; $47db: $39
	ld b, d                                          ; $47dc: $42
	ld c, e                                          ; $47dd: $4b
	xor h                                            ; $47de: $ac
	ld l, a                                          ; $47df: $6f
	sbc l                                            ; $47e0: $9d
	ld d, b                                          ; $47e1: $50
	jr c, jr_098_4826                                ; $47e2: $38 $42

	ld c, a                                          ; $47e4: $4f
	ld b, d                                          ; $47e5: $42
	ld c, h                                          ; $47e6: $4c
	and b                                            ; $47e7: $a0
	cpl                                              ; $47e8: $2f
	ld b, e                                          ; $47e9: $43
	ld [$099e], a                                    ; $47ea: $ea $9e $09
	cpl                                              ; $47ed: $2f
	ld b, e                                          ; $47ee: $43
	ld [$a845], a                                    ; $47ef: $ea $45 $a8
	db $ed                                           ; $47f2: $ed
	ld d, e                                          ; $47f3: $53
	ld c, e                                          ; $47f4: $4b
	inc [hl]                                         ; $47f5: $34
	ld [$a046], a                                    ; $47f6: $ea $46 $a0
	pop de                                           ; $47f9: $d1
	ld l, [hl]                                       ; $47fa: $6e
	ld c, [hl]                                       ; $47fb: $4e
	db $ec                                           ; $47fc: $ec
	ret c                                            ; $47fd: $d8

	ld b, d                                          ; $47fe: $42
	and b                                            ; $47ff: $a0
	cpl                                              ; $4800: $2f
	ld b, e                                          ; $4801: $43
	add a                                            ; $4802: $87
	ldh a, [$5b]                                     ; $4803: $f0 $5b
	ldh a, [$5e]                                     ; $4805: $f0 $5e
	xor h                                            ; $4807: $ac
	pop af                                           ; $4808: $f1
	ld hl, sp-$0f                                    ; $4809: $f8 $f1
	ld d, b                                          ; $480b: $50
	ld c, e                                          ; $480c: $4b
	ld a, [hl-]                                      ; $480d: $3a
	inc a                                            ; $480e: $3c
	dec sp                                           ; $480f: $3b
	dec a                                            ; $4810: $3d
	and c                                            ; $4811: $a1
	ld l, e                                          ; $4812: $6b
	inc a                                            ; $4813: $3c
	dec sp                                           ; $4814: $3b
	ld d, h                                          ; $4815: $54
	add b                                            ; $4816: $80
	ld e, l                                          ; $4817: $5d
	ccf                                              ; $4818: $3f
	ld c, [hl]                                       ; $4819: $4e
	ld b, d                                          ; $481a: $42
	xor c                                            ; $481b: $a9
	ld l, a                                          ; $481c: $6f
	ld h, d                                          ; $481d: $62
	ldh a, [c]                                       ; $481e: $f2
	dec c                                            ; $481f: $0d
	ld c, [hl]                                       ; $4820: $4e
	ld b, d                                          ; $4821: $42
	ld c, e                                          ; $4822: $4b
	sub c                                            ; $4823: $91
	ldh a, [$59]                                     ; $4824: $f0 $59

jr_098_4826:
	ld b, h                                          ; $4826: $44
	ld c, a                                          ; $4827: $4f
	ld b, d                                          ; $4828: $42
	xor h                                            ; $4829: $ac
	ldh a, [rBCPS]                                   ; $482a: $f0 $68
	ld a, [hl-]                                      ; $482c: $3a
	ld b, c                                          ; $482d: $41
	ccf                                              ; $482e: $3f
	add d                                            ; $482f: $82
	ld h, e                                          ; $4830: $63
	ld a, [hl-]                                      ; $4831: $3a
	jr c, jr_098_4897                                ; $4832: $38 $63

	ld b, l                                          ; $4834: $45
	and b                                            ; $4835: $a0
	cpl                                              ; $4836: $2f
	ld b, e                                          ; $4837: $43
	jr c, jr_098_4872                                ; $4838: $38 $38

	ld b, l                                          ; $483a: $45
	inc [hl]                                         ; $483b: $34
	ldh a, [$34]                                     ; $483c: $f0 $34
	ld b, a                                          ; $483e: $47
	xor l                                            ; $483f: $ad
	jp hl                                            ; $4840: $e9


	ret z                                            ; $4841: $c8

	db $ec                                           ; $4842: $ec
	rrca                                             ; $4843: $0f
	and b                                            ; $4844: $a0
	ld c, e                                          ; $4845: $4b
	ld b, [hl]                                       ; $4846: $46
	inc [hl]                                         ; $4847: $34
	ld c, e                                          ; $4848: $4b
	ld b, [hl]                                       ; $4849: $46
	xor l                                            ; $484a: $ad
	ldh a, [$e1]                                     ; $484b: $f0 $e1
	ldh a, [rSB]                                     ; $484d: $f0 $01
	ld c, [hl]                                       ; $484f: $4e
	ld a, [hl-]                                      ; $4850: $3a
	ld b, c                                          ; $4851: $41
	ccf                                              ; $4852: $3f
	ldh a, [$5f]                                     ; $4853: $f0 $5f
	di                                               ; $4855: $f3
	dec de                                           ; $4856: $1b
	ld c, h                                          ; $4857: $4c
	xor b                                            ; $4858: $a8
	ldh a, [$ab]                                     ; $4859: $f0 $ab
	ld b, h                                          ; $485b: $44
	dec sp                                           ; $485c: $3b
	dec a                                            ; $485d: $3d
	ld d, b                                          ; $485e: $50
	xor h                                            ; $485f: $ac
	ld l, a                                          ; $4860: $6f
	ld h, d                                          ; $4861: $62
	ldh a, [c]                                       ; $4862: $f2
	dec c                                            ; $4863: $0d
	dec sp                                           ; $4864: $3b
	ccf                                              ; $4865: $3f
	ldh a, [$fc]                                     ; $4866: $f0 $fc
	jr c, @+$3c                                      ; $4868: $38 $3a

	ld e, b                                          ; $486a: $58
	jr c, jr_098_48b2                                ; $486b: $38 $45

	and b                                            ; $486d: $a0
	add hl, bc                                       ; $486e: $09
	ld b, [hl]                                       ; $486f: $46
	dec sp                                           ; $4870: $3b
	inc [hl]                                         ; $4871: $34

jr_098_4872:
	db $ec                                           ; $4872: $ec
	jp nz, $2fa0                                     ; $4873: $c2 $a0 $2f

	ld b, e                                          ; $4876: $43
	db $eb                                           ; $4877: $eb
	ld a, [$6434]                                    ; $4878: $fa $34 $64
	ld c, e                                          ; $487b: $4b
	ld b, l                                          ; $487c: $45
	add hl, sp                                       ; $487d: $39
	xor b                                            ; $487e: $a8
	ld l, e                                          ; $487f: $6b
	inc a                                            ; $4880: $3c
	ldh a, [rAUD2LEN]                                ; $4881: $f0 $16
	and c                                            ; $4883: $a1
	ld c, h                                          ; $4884: $4c
	ld e, [hl]                                       ; $4885: $5e
	inc [hl]                                         ; $4886: $34
	ld c, h                                          ; $4887: $4c
	ld e, [hl]                                       ; $4888: $5e
	xor h                                            ; $4889: $ac
	ld [$ac9f], a                                    ; $488a: $ea $9f $ac
	xor $06                                          ; $488d: $ee $06
	ld b, a                                          ; $488f: $47
	ld h, a                                          ; $4890: $67
	ld e, h                                          ; $4891: $5c
	dec a                                            ; $4892: $3d
	jr c, jr_098_48cf                                ; $4893: $38 $3a

	and b                                            ; $4895: $a0
	cpl                                              ; $4896: $2f

jr_098_4897:
	xor $1f                                          ; $4897: $ee $1f
	inc [hl]                                         ; $4899: $34
	jr c, jr_098_48d4                                ; $489a: $38 $38

	ld b, l                                          ; $489c: $45
	add hl, bc                                       ; $489d: $09
	ld e, e                                          ; $489e: $5b
	ld d, [hl]                                       ; $489f: $56
	ld b, [hl]                                       ; $48a0: $46
	inc [hl]                                         ; $48a1: $34
	pop af                                           ; $48a2: $f1
	jr jr_098_4897                                   ; $48a3: $18 $f2

	sub c                                            ; $48a5: $91
	ld c, d                                          ; $48a6: $4a
	inc de                                           ; $48a7: $13
	call $f0a8                                       ; $48a8: $cd $a8 $f0
	ld [$3450], sp                                   ; $48ab: $08 $50 $34
	ldh a, [$0a]                                     ; $48ae: $f0 $0a
	ld d, l                                          ; $48b0: $55
	inc [hl]                                         ; $48b1: $34

jr_098_48b2:
	ldh a, [$0a]                                     ; $48b2: $f0 $0a
	ld d, l                                          ; $48b4: $55
	and b                                            ; $48b5: $a0
	cpl                                              ; $48b6: $2f
	ld b, e                                          ; $48b7: $43
	ld b, [hl]                                       ; $48b8: $46
	inc [hl]                                         ; $48b9: $34
	ld h, h                                          ; $48ba: $64
	jr c, @-$52                                      ; $48bb: $38 $ac

	jp hl                                            ; $48bd: $e9


	ld d, b                                          ; $48be: $50
	ld b, l                                          ; $48bf: $45
	and b                                            ; $48c0: $a0
	cpl                                              ; $48c1: $2f
	jr c, jr_098_4932                                ; $48c2: $38 $6e

	inc [hl]                                         ; $48c4: $34
	ret                                              ; $48c5: $c9


	ld c, h                                          ; $48c6: $4c
	ld c, b                                          ; $48c7: $48
	add hl, bc                                       ; $48c8: $09
	db $ec                                           ; $48c9: $ec
	ld b, e                                          ; $48ca: $43
	inc [hl]                                         ; $48cb: $34
	ld b, h                                          ; $48cc: $44
	ld [hl], c                                       ; $48cd: $71
	ld a, [hl-]                                      ; $48ce: $3a

jr_098_48cf:
	ld b, d                                          ; $48cf: $42
	xor c                                            ; $48d0: $a9
	pop af                                           ; $48d1: $f1
	ld d, d                                          ; $48d2: $52
	sub b                                            ; $48d3: $90

jr_098_48d4:
	ld a, $6c                                        ; $48d4: $3e $6c
	ld b, a                                          ; $48d6: $47
	ld a, $3f                                        ; $48d7: $3e $3f
	dec a                                            ; $48d9: $3d
	ld b, d                                          ; $48da: $42
	ld b, a                                          ; $48db: $47
	xor l                                            ; $48dc: $ad
	ld e, e                                          ; $48dd: $5b
	ld d, [hl]                                       ; $48de: $56
	ld b, [hl]                                       ; $48df: $46
	inc [hl]                                         ; $48e0: $34
	ret nc                                           ; $48e1: $d0

	and b                                            ; $48e2: $a0
	cpl                                              ; $48e3: $2f
	ld b, e                                          ; $48e4: $43
	ret                                              ; $48e5: $c9


	xor h                                            ; $48e6: $ac
	ld [$a034], a                                    ; $48e7: $ea $34 $a0
	cpl                                              ; $48ea: $2f
	ld b, e                                          ; $48eb: $43
	ld b, [hl]                                       ; $48ec: $46
	dec sp                                           ; $48ed: $3b
	inc [hl]                                         ; $48ee: $34
	db $ed                                           ; $48ef: $ed
	xor d                                            ; $48f0: $aa
	jr c, jr_098_492b                                ; $48f1: $38 $38

	ld c, c                                          ; $48f3: $49
	ld d, h                                          ; $48f4: $54
	ld e, a                                          ; $48f5: $5f
	inc de                                           ; $48f6: $13
	ld b, a                                          ; $48f7: $47
	inc [hl]                                         ; $48f8: $34
	db $eb                                           ; $48f9: $eb
	ld a, [$66eb]                                    ; $48fa: $fa $eb $66
	and b                                            ; $48fd: $a0
	cpl                                              ; $48fe: $2f
	ld b, e                                          ; $48ff: $43
	db $eb                                           ; $4900: $eb
	ld a, [$16a0]                                    ; $4901: $fa $a0 $16
	xor b                                            ; $4904: $a8
	ld l, e                                          ; $4905: $6b
	inc [hl]                                         ; $4906: $34
	db $eb                                           ; $4907: $eb
	rst FarCall                                          ; $4908: $f7
	and c                                            ; $4909: $a1
	cpl                                              ; $490a: $2f
	ld b, e                                          ; $490b: $43
	ld c, h                                          ; $490c: $4c
	ld e, [hl]                                       ; $490d: $5e
	inc [hl]                                         ; $490e: $34
	ld l, d                                          ; $490f: $6a
	ld l, b                                          ; $4910: $68
	ld b, d                                          ; $4911: $42
	inc de                                           ; $4912: $13
	db $ec                                           ; $4913: $ec
	jp $ea34                                         ; $4914: $c3 $34 $ea


	ld h, $a1                                        ; $4917: $26 $a1
	pop af                                           ; $4919: $f1
	ld a, [hl]                                       ; $491a: $7e
	dec sp                                           ; $491b: $3b
	inc [hl]                                         ; $491c: $34
	ld l, a                                          ; $491d: $6f
	ld c, c                                          ; $491e: $49
	ld c, b                                          ; $491f: $48
	xor c                                            ; $4920: $a9
	xor $1f                                          ; $4921: $ee $1f
	inc [hl]                                         ; $4923: $34
	ld h, a                                          ; $4924: $67
	ld d, l                                          ; $4925: $55
	ld h, a                                          ; $4926: $67
	ld d, l                                          ; $4927: $55
	xor b                                            ; $4928: $a8
	ldh a, [$08]                                     ; $4929: $f0 $08

jr_098_492b:
	ld d, b                                          ; $492b: $50
	inc [hl]                                         ; $492c: $34
	ldh a, [$0a]                                     ; $492d: $f0 $0a
	ld d, l                                          ; $492f: $55
	ld h, a                                          ; $4930: $67
	ld e, h                                          ; $4931: $5c

jr_098_4932:
	ld d, d                                          ; $4932: $52
	ld a, $66                                        ; $4933: $3e $66
	and b                                            ; $4935: $a0
	cpl                                              ; $4936: $2f
	ld b, e                                          ; $4937: $43
	ldh a, [$08]                                     ; $4938: $f0 $08
	ld d, b                                          ; $493a: $50
	dec sp                                           ; $493b: $3b
	ccf                                              ; $493c: $3f
	xor l                                            ; $493d: $ad
	pop af                                           ; $493e: $f1
	ld a, [hl-]                                      ; $493f: $3a
	ccf                                              ; $4940: $3f
	ccf                                              ; $4941: $3f
	xor h                                            ; $4942: $ac
	ld b, b                                          ; $4943: $40
	ld b, c                                          ; $4944: $41
	ld a, [hl-]                                      ; $4945: $3a
	ld b, a                                          ; $4946: $47
	pop af                                           ; $4947: $f1
	ld e, a                                          ; $4948: $5f
	dec sp                                           ; $4949: $3b
	adc [hl]                                         ; $494a: $8e
	ld c, [hl]                                       ; $494b: $4e
	ld a, [hl-]                                      ; $494c: $3a
	ld b, l                                          ; $494d: $45
	and b                                            ; $494e: $a0
	ldh a, [$bf]                                     ; $494f: $f0 $bf
	db $f4                                           ; $4951: $f4
	dec de                                           ; $4952: $1b
	ld a, [hl-]                                      ; $4953: $3a
	ld e, b                                          ; $4954: $58
	jr c, jr_098_498b                                ; $4955: $38 $34

	ldh a, [$29]                                     ; $4957: $f0 $29
	ld a, $55                                        ; $4959: $3e $55
	ccf                                              ; $495b: $3f
	inc de                                           ; $495c: $13
	ld c, e                                          ; $495d: $4b
	ld a, $56                                        ; $495e: $3e $56
	ldh a, [$cb]                                     ; $4960: $f0 $cb
	ld d, c                                          ; $4962: $51
	ldh a, [$cb]                                     ; $4963: $f0 $cb
	ld h, c                                          ; $4965: $61
	ld d, [hl]                                       ; $4966: $56
	dec sp                                           ; $4967: $3b
	dec a                                            ; $4968: $3d
	and b                                            ; $4969: $a0
	ld b, [hl]                                       ; $496a: $46
	dec sp                                           ; $496b: $3b
	inc [hl]                                         ; $496c: $34
	ld d, $a8                                        ; $496d: $16 $a8
	ld l, e                                          ; $496f: $6b
	ldh a, [$cf]                                     ; $4970: $f0 $cf
	and c                                            ; $4972: $a1
	cpl                                              ; $4973: $2f
	ld b, e                                          ; $4974: $43
	ld [$ac9f], a                                    ; $4975: $ea $9f $ac
	jp hl                                            ; $4978: $e9


	xor d                                            ; $4979: $aa
	and c                                            ; $497a: $a1
	db $ed                                           ; $497b: $ed
	xor d                                            ; $497c: $aa
	ld b, l                                          ; $497d: $45
	inc a                                            ; $497e: $3c
	dec sp                                           ; $497f: $3b
	dec a                                            ; $4980: $3d
	xor b                                            ; $4981: $a8
	ld l, a                                          ; $4982: $6f
	ld c, a                                          ; $4983: $4f
	ldh a, [$3b]                                     ; $4984: $f0 $3b
	ld h, h                                          ; $4986: $64
	add hl, sp                                       ; $4987: $39
	ld c, c                                          ; $4988: $49
	ld [hl], a                                       ; $4989: $77
	dec sp                                           ; $498a: $3b

jr_098_498b:
	ccf                                              ; $498b: $3f
	dec a                                            ; $498c: $3d
	ld b, d                                          ; $498d: $42
	ld b, l                                          ; $498e: $45
	xor b                                            ; $498f: $a8
	ld e, e                                          ; $4990: $5b
	ld d, [hl]                                       ; $4991: $56
	ld b, [hl]                                       ; $4992: $46
	inc [hl]                                         ; $4993: $34
	ld [$a0a9], a                                    ; $4994: $ea $a9 $a0
	cpl                                              ; $4997: $2f
	ld b, e                                          ; $4998: $43
	ldh a, [$5a]                                     ; $4999: $f0 $5a
	xor c                                            ; $499b: $a9
	ld l, d                                          ; $499c: $6a
	inc a                                            ; $499d: $3c
	ld d, b                                          ; $499e: $50
	and c                                            ; $499f: $a1
	ldh a, [$08]                                     ; $49a0: $f0 $08
	ld d, b                                          ; $49a2: $50
	inc [hl]                                         ; $49a3: $34
	ld h, a                                          ; $49a4: $67
	ld d, h                                          ; $49a5: $54
	ld h, a                                          ; $49a6: $67
	ld d, h                                          ; $49a7: $54
	and b                                            ; $49a8: $a0
	cpl                                              ; $49a9: $2f
	ld b, e                                          ; $49aa: $43
	ld h, h                                          ; $49ab: $64
	jr c, @-$52                                      ; $49ac: $38 $ac

	ld b, b                                          ; $49ae: $40
	ld b, c                                          ; $49af: $41
	ld a, [hl-]                                      ; $49b0: $3a
	ld b, a                                          ; $49b1: $47
	pop af                                           ; $49b2: $f1
	ld e, a                                          ; $49b3: $5f
	dec sp                                           ; $49b4: $3b
	adc [hl]                                         ; $49b5: $8e
	ld c, [hl]                                       ; $49b6: $4e
	ld a, [hl-]                                      ; $49b7: $3a
	ld b, l                                          ; $49b8: $45
	and b                                            ; $49b9: $a0
	ld d, $a8                                        ; $49ba: $16 $a8
	db $eb                                           ; $49bc: $eb
	rst FarCall                                          ; $49bd: $f7
	and c                                            ; $49be: $a1
	xor $1f                                          ; $49bf: $ee $1f
	inc [hl]                                         ; $49c1: $34
	ret nc                                           ; $49c2: $d0

	xor b                                            ; $49c3: $a8
	db $ed                                           ; $49c4: $ed
	xor d                                            ; $49c5: $aa
	inc [hl]                                         ; $49c6: $34
	xor $08                                          ; $49c7: $ee $08
	ld c, d                                          ; $49c9: $4a
	inc de                                           ; $49ca: $13
	sub h                                            ; $49cb: $94
	inc a                                            ; $49cc: $3c
	ld e, l                                          ; $49cd: $5d
	ld c, [hl]                                       ; $49ce: $4e
	ld c, c                                          ; $49cf: $49
	ld d, h                                          ; $49d0: $54
	ld b, h                                          ; $49d1: $44
	ld a, $a0                                        ; $49d2: $3e $a0
	cpl                                              ; $49d4: $2f
	ld b, e                                          ; $49d5: $43
	adc b                                            ; $49d6: $88
	sub c                                            ; $49d7: $91
	xor c                                            ; $49d8: $a9
	ldh a, [$ba]                                     ; $49d9: $f0 $ba
	ld a, l                                          ; $49db: $7d
	add e                                            ; $49dc: $83
	db $eb                                           ; $49dd: $eb
	adc $44                                          ; $49de: $ce $44
	ld c, h                                          ; $49e0: $4c
	xor b                                            ; $49e1: $a8
	adc [hl]                                         ; $49e2: $8e
	ld d, a                                          ; $49e3: $57
	pop af                                           ; $49e4: $f1
	inc d                                            ; $49e5: $14
	dec sp                                           ; $49e6: $3b
	ccf                                              ; $49e7: $3f
	ld h, a                                          ; $49e8: $67
	ld d, h                                          ; $49e9: $54
	add hl, sp                                       ; $49ea: $39
	and b                                            ; $49eb: $a0
	xor $10                                          ; $49ec: $ee $10
	xor b                                            ; $49ee: $a8
	ld l, e                                          ; $49ef: $6b
	and c                                            ; $49f0: $a1
	ld b, [hl]                                       ; $49f1: $46
	inc [hl]                                         ; $49f2: $34
	pop af                                           ; $49f3: $f1
	ld d, $53                                        ; $49f4: $16 $53
	ld a, [hl-]                                      ; $49f6: $3a
	jr c, jr_098_4a42                                ; $49f7: $38 $49

	xor h                                            ; $49f9: $ac
	db $eb                                           ; $49fa: $eb
	ld a, [hl]                                       ; $49fb: $7e
	ld b, a                                          ; $49fc: $47
	ldh a, [$c7]                                     ; $49fd: $f0 $c7
	ld c, l                                          ; $49ff: $4d
	ld h, c                                          ; $4a00: $61
	ld d, [hl]                                       ; $4a01: $56
	add hl, sp                                       ; $4a02: $39
	and b                                            ; $4a03: $a0
	cpl                                              ; $4a04: $2f
	ld b, e                                          ; $4a05: $43
	db $ec                                           ; $4a06: $ec
	rra                                              ; $4a07: $1f
	xor l                                            ; $4a08: $ad
	xor $06                                          ; $4a09: $ee $06
	ld b, a                                          ; $4a0b: $47
	ld c, b                                          ; $4a0c: $48
	and b                                            ; $4a0d: $a0
	cpl                                              ; $4a0e: $2f
	ld [$ac33], a                                    ; $4a0f: $ea $33 $ac
	jp hl                                            ; $4a12: $e9


	ld b, l                                          ; $4a13: $45
	and e                                            ; $4a14: $a3
	ld c, h                                          ; $4a15: $4c
	ld e, [hl]                                       ; $4a16: $5e
	ld c, h                                          ; $4a17: $4c
	ld e, [hl]                                       ; $4a18: $5e
	xor h                                            ; $4a19: $ac
	xor $15                                          ; $4a1a: $ee $15
	di                                               ; $4a1c: $f3
	ld h, e                                          ; $4a1d: $63
	dec sp                                           ; $4a1e: $3b
	ccf                                              ; $4a1f: $3f
	ld b, l                                          ; $4a20: $45
	and b                                            ; $4a21: $a0
	cpl                                              ; $4a22: $2f
	ld b, e                                          ; $4a23: $43
	ld e, [hl]                                       ; $4a24: $5e
	ld e, c                                          ; $4a25: $59
	dec sp                                           ; $4a26: $3b
	inc [hl]                                         ; $4a27: $34
	ld d, d                                          ; $4a28: $52
	dec a                                            ; $4a29: $3d
	xor c                                            ; $4a2a: $a9
	ld c, a                                          ; $4a2b: $4f
	add hl, sp                                       ; $4a2c: $39
	inc [hl]                                         ; $4a2d: $34
	pop af                                           ; $4a2e: $f1
	pop de                                           ; $4a2f: $d1
	ldh a, [c]                                       ; $4a30: $f2
	ld [hl], c                                       ; $4a31: $71
	ldh a, [$e5]                                     ; $4a32: $f0 $e5
	di                                               ; $4a34: $f3
	or d                                             ; $4a35: $b2
	ld c, a                                          ; $4a36: $4f
	inc de                                           ; $4a37: $13
	di                                               ; $4a38: $f3
	ld h, e                                          ; $4a39: $63
	dec sp                                           ; $4a3a: $3b
	dec a                                            ; $4a3b: $3d
	db $ec                                           ; $4a3c: $ec
	ret c                                            ; $4a3d: $d8

	and b                                            ; $4a3e: $a0
	jr c, jr_098_4a79                                ; $4a3f: $38 $38

	ld e, e                                          ; $4a41: $5b

jr_098_4a42:
	ld d, [hl]                                       ; $4a42: $56
	ld b, c                                          ; $4a43: $41
	inc a                                            ; $4a44: $3c
	xor b                                            ; $4a45: $a8
	di                                               ; $4a46: $f3
	add c                                            ; $4a47: $81
	pop af                                           ; $4a48: $f1
	sub d                                            ; $4a49: $92
	ld b, a                                          ; $4a4a: $47
	ld a, b                                          ; $4a4b: $78
	ld c, l                                          ; $4a4c: $4d
	ld c, [hl]                                       ; $4a4d: $4e
	ldh a, [$28]                                     ; $4a4e: $f0 $28
	ld e, e                                          ; $4a50: $5b
	ld d, [hl]                                       ; $4a51: $56
	inc de                                           ; $4a52: $13
	ld a, [hl-]                                      ; $4a53: $3a
	jr c, jr_098_4a97                                ; $4a54: $38 $41

	ld b, h                                          ; $4a56: $44
	inc a                                            ; $4a57: $3c
	ld d, b                                          ; $4a58: $50
	and b                                            ; $4a59: $a0
	cpl                                              ; $4a5a: $2f
	ld b, e                                          ; $4a5b: $43
	xor $2d                                          ; $4a5c: $ee $2d
	xor $2d                                          ; $4a5e: $ee $2d
	inc [hl]                                         ; $4a60: $34
	ld h, e                                          ; $4a61: $63
	inc a                                            ; $4a62: $3c
	ld d, a                                          ; $4a63: $57
	ld d, d                                          ; $4a64: $52
	ld a, $3d                                        ; $4a65: $3e $3d
	and b                                            ; $4a67: $a0
	xor $2d                                          ; $4a68: $ee $2d
	inc [hl]                                         ; $4a6a: $34
	ldh a, [$2b]                                     ; $4a6b: $f0 $2b
	ld e, c                                          ; $4a6d: $59
	pop af                                           ; $4a6e: $f1
	ld b, l                                          ; $4a6f: $45
	and b                                            ; $4a70: $a0
	cpl                                              ; $4a71: $2f
	ld b, e                                          ; $4a72: $43
	db $ec                                           ; $4a73: $ec
	push bc                                          ; $4a74: $c5
	xor h                                            ; $4a75: $ac
	db $ec                                           ; $4a76: $ec
	add $ec                                          ; $4a77: $c6 $ec

jr_098_4a79:
	rrca                                             ; $4a79: $0f
	and b                                            ; $4a7a: $a0
	ld e, [hl]                                       ; $4a7b: $5e
	ld e, c                                          ; $4a7c: $59
	dec sp                                           ; $4a7d: $3b
	inc [hl]                                         ; $4a7e: $34
	ld c, a                                          ; $4a7f: $4f
	add hl, sp                                       ; $4a80: $39
	ld a, d                                          ; $4a81: $7a
	ld c, [hl]                                       ; $4a82: $4e
	ld b, d                                          ; $4a83: $42
	ldh a, [c]                                       ; $4a84: $f2
	ld a, l                                          ; $4a85: $7d
	xor c                                            ; $4a86: $a9
	ret                                              ; $4a87: $c9


	sbc l                                            ; $4a88: $9d
	ld d, b                                          ; $4a89: $50
	jr c, jr_098_4a9f                                ; $4a8a: $38 $13

	ldh a, [$c7]                                     ; $4a8c: $f0 $c7
	ld c, l                                          ; $4a8e: $4d
	ccf                                              ; $4a8f: $3f
	ld c, a                                          ; $4a90: $4f
	pop af                                           ; $4a91: $f1
	ld l, c                                          ; $4a92: $69
	ld a, a                                          ; $4a93: $7f
	inc [hl]                                         ; $4a94: $34
	pop af                                           ; $4a95: $f1
	ld l, c                                          ; $4a96: $69

jr_098_4a97:
	ld a, a                                          ; $4a97: $7f
	and b                                            ; $4a98: $a0
	cpl                                              ; $4a99: $2f
	ld b, e                                          ; $4a9a: $43
	pop af                                           ; $4a9b: $f1
	call nz, $b7f0                                   ; $4a9c: $c4 $f0 $b7

jr_098_4a9f:
	pop af                                           ; $4a9f: $f1
	or h                                             ; $4aa0: $b4
	ld e, h                                          ; $4aa1: $5c
	ld b, a                                          ; $4aa2: $47
	ld a, [hl-]                                      ; $4aa3: $3a
	ld c, [hl]                                       ; $4aa4: $4e
	inc a                                            ; $4aa5: $3c
	ld c, a                                          ; $4aa6: $4f
	ld b, l                                          ; $4aa7: $45
	and b                                            ; $4aa8: $a0
	ld e, [hl]                                       ; $4aa9: $5e
	dec sp                                           ; $4aaa: $3b
	inc [hl]                                         ; $4aab: $34
	ld d, d                                          ; $4aac: $52
	ld e, e                                          ; $4aad: $5b
	ldh a, [c]                                       ; $4aae: $f2
	db $eb                                           ; $4aaf: $eb
	xor c                                            ; $4ab0: $a9
	jp hl                                            ; $4ab1: $e9


	pop hl                                           ; $4ab2: $e1
	and b                                            ; $4ab3: $a0
	cpl                                              ; $4ab4: $2f
	ld b, e                                          ; $4ab5: $43
	db $ec                                           ; $4ab6: $ec
	cp c                                             ; $4ab7: $b9
	ld d, b                                          ; $4ab8: $50
	ld e, b                                          ; $4ab9: $58
	xor h                                            ; $4aba: $ac
	jp hl                                            ; $4abb: $e9


	ld [hl], $13                                     ; $4abc: $36 $13
	jp hl                                            ; $4abe: $e9


	xor d                                            ; $4abf: $aa
	and c                                            ; $4ac0: $a1
	xor $1f                                          ; $4ac1: $ee $1f
	inc [hl]                                         ; $4ac3: $34
	jr c, jr_098_4afe                                ; $4ac4: $38 $38

	ld b, l                                          ; $4ac6: $45
	xor b                                            ; $4ac7: $a8
	ld e, e                                          ; $4ac8: $5b
	ld d, [hl]                                       ; $4ac9: $56
	inc [hl]                                         ; $4aca: $34
	db $eb                                           ; $4acb: $eb
	ld a, [hl]                                       ; $4acc: $7e
	ld c, e                                          ; $4acd: $4b
	inc de                                           ; $4ace: $13
	ld e, d                                          ; $4acf: $5a
	ld d, h                                          ; $4ad0: $54
	ld b, a                                          ; $4ad1: $47
	ld d, c                                          ; $4ad2: $51
	ld c, [hl]                                       ; $4ad3: $4e
	and c                                            ; $4ad4: $a1
	cpl                                              ; $4ad5: $2f
	ld b, e                                          ; $4ad6: $43
	jp hl                                            ; $4ad7: $e9


	ret                                              ; $4ad8: $c9


	xor h                                            ; $4ad9: $ac
	jr c, jr_098_4b14                                ; $4ada: $38 $38

	ld b, c                                          ; $4adc: $41
	db $ec                                           ; $4add: $ec
	ret c                                            ; $4ade: $d8

	and c                                            ; $4adf: $a1
	call c, $f034                                    ; $4ae0: $dc $34 $f0
	rlca                                             ; $4ae3: $07
	inc a                                            ; $4ae4: $3c
	dec sp                                           ; $4ae5: $3b
	dec a                                            ; $4ae6: $3d
	ld h, e                                          ; $4ae7: $63
	and b                                            ; $4ae8: $a0
	sbc c                                            ; $4ae9: $99
	dec a                                            ; $4aea: $3d
	ld a, c                                          ; $4aeb: $79
	ld h, c                                          ; $4aec: $61
	ld d, [hl]                                       ; $4aed: $56
	dec sp                                           ; $4aee: $3b
	ccf                                              ; $4aef: $3f
	xor h                                            ; $4af0: $ac
	ld [hl], b                                       ; $4af1: $70
	ld [hl], c                                       ; $4af2: $71
	ld e, c                                          ; $4af3: $59
	ld b, c                                          ; $4af4: $41
	xor b                                            ; $4af5: $a8
	ld e, b                                          ; $4af6: $58
	ld b, [hl]                                       ; $4af7: $46
	inc [hl]                                         ; $4af8: $34
	ld h, a                                          ; $4af9: $67
	ld d, h                                          ; $4afa: $54
	and b                                            ; $4afb: $a0
	xor $1f                                          ; $4afc: $ee $1f

jr_098_4afe:
	inc [hl]                                         ; $4afe: $34
	jr c, jr_098_4b39                                ; $4aff: $38 $38

	ld b, l                                          ; $4b01: $45
	xor b                                            ; $4b02: $a8
	ld l, e                                          ; $4b03: $6b
	inc a                                            ; $4b04: $3c
	inc [hl]                                         ; $4b05: $34
	ldh a, [c]                                       ; $4b06: $f2
	halt                                             ; $4b07: $76
	ldh a, [$9e]                                     ; $4b08: $f0 $9e
	ld b, a                                          ; $4b0a: $47
	ld a, [hl-]                                      ; $4b0b: $3a
	ld c, [hl]                                       ; $4b0c: $4e
	ld c, a                                          ; $4b0d: $4f
	ld b, d                                          ; $4b0e: $42
	inc de                                           ; $4b0f: $13
	ld b, [hl]                                       ; $4b10: $46
	ld c, [hl]                                       ; $4b11: $4e
	inc a                                            ; $4b12: $3c
	ld a, [hl-]                                      ; $4b13: $3a

jr_098_4b14:
	ld [hl], h                                       ; $4b14: $74
	and b                                            ; $4b15: $a0
	cpl                                              ; $4b16: $2f
	ld b, e                                          ; $4b17: $43
	db $eb                                           ; $4b18: $eb
	ld a, [hl-]                                      ; $4b19: $3a
	add hl, bc                                       ; $4b1a: $09
	cpl                                              ; $4b1b: $2f
	ld [$093a], a                                    ; $4b1c: $ea $3a $09
	cpl                                              ; $4b1f: $2f
	add sp, $53                                      ; $4b20: $e8 $53
	add hl, bc                                       ; $4b22: $09
	ldh a, [$08]                                     ; $4b23: $f0 $08
	ld d, b                                          ; $4b25: $50
	inc [hl]                                         ; $4b26: $34
	xor $15                                          ; $4b27: $ee $15
	di                                               ; $4b29: $f3
	ld h, e                                          ; $4b2a: $63
	ld e, a                                          ; $4b2b: $5f
	add hl, sp                                       ; $4b2c: $39
	xor h                                            ; $4b2d: $ac
	xor $15                                          ; $4b2e: $ee $15
	and b                                            ; $4b30: $a0
	cpl                                              ; $4b31: $2f
	ld b, e                                          ; $4b32: $43
	xor $15                                          ; $4b33: $ee $15
	inc [hl]                                         ; $4b35: $34
	xor $15                                          ; $4b36: $ee $15
	dec sp                                           ; $4b38: $3b

jr_098_4b39:
	ccf                                              ; $4b39: $3f
	ld c, b                                          ; $4b3a: $48
	xor h                                            ; $4b3b: $ac
	ld d, h                                          ; $4b3c: $54
	ld b, d                                          ; $4b3d: $42
	add d                                            ; $4b3e: $82
	pop af                                           ; $4b3f: $f1
	adc h                                            ; $4b40: $8c
	ld b, a                                          ; $4b41: $47
	ldh a, [$78]                                     ; $4b42: $f0 $78
	or $ab                                           ; $4b44: $f6 $ab
	ld h, d                                          ; $4b46: $62
	inc de                                           ; $4b47: $13
	pop af                                           ; $4b48: $f1
	ld c, d                                          ; $4b49: $4a
	ld e, l                                          ; $4b4a: $5d
	ld c, [hl]                                       ; $4b4b: $4e
	ld c, c                                          ; $4b4c: $49
	inc a                                            ; $4b4d: $3c
	ld a, [hl-]                                      ; $4b4e: $3a
	jr c, jr_098_4b93                                ; $4b4f: $38 $42

	and c                                            ; $4b51: $a1
	jr c, jr_098_4b8c                                ; $4b52: $38 $38

	ld e, e                                          ; $4b54: $5b
	ld d, [hl]                                       ; $4b55: $56
	ld b, c                                          ; $4b56: $41
	inc a                                            ; $4b57: $3c
	xor h                                            ; $4b58: $ac
	ldh a, [c]                                       ; $4b59: $f2
	halt                                             ; $4b5a: $76
	ldh a, [$9e]                                     ; $4b5b: $f0 $9e
	ld b, a                                          ; $4b5d: $47
	ld a, [hl-]                                      ; $4b5e: $3a
	ld c, [hl]                                       ; $4b5f: $4e
	ld b, c                                          ; $4b60: $41
	ld b, h                                          ; $4b61: $44
	inc a                                            ; $4b62: $3c
	ld d, b                                          ; $4b63: $50
	and b                                            ; $4b64: $a0
	cpl                                              ; $4b65: $2f
	ld b, e                                          ; $4b66: $43
	db $eb                                           ; $4b67: $eb
	dec sp                                           ; $4b68: $3b
	add hl, bc                                       ; $4b69: $09
	db $ec                                           ; $4b6a: $ec
	inc de                                           ; $4b6b: $13
	pop af                                           ; $4b6c: $f1
	call nz, Call_098_4c68                           ; $4b6d: $c4 $68 $4c
	add l                                            ; $4b70: $85
	xor l                                            ; $4b71: $ad
	ld b, b                                          ; $4b72: $40
	add hl, sp                                       ; $4b73: $39
	ld b, h                                          ; $4b74: $44
	inc [hl]                                         ; $4b75: $34
	xor $15                                          ; $4b76: $ee $15
	di                                               ; $4b78: $f3
	ld h, e                                          ; $4b79: $63
	ld e, a                                          ; $4b7a: $5f
	add hl, sp                                       ; $4b7b: $39
	ld b, l                                          ; $4b7c: $45
	and b                                            ; $4b7d: $a0
	cpl                                              ; $4b7e: $2f
	ld b, e                                          ; $4b7f: $43
	sbc $ac                                          ; $4b80: $de $ac
	xor $15                                          ; $4b82: $ee $15
	ld h, d                                          ; $4b84: $62
	di                                               ; $4b85: $f3
	ld h, e                                          ; $4b86: $63
	ld c, [hl]                                       ; $4b87: $4e
	ld b, d                                          ; $4b88: $42
	ld d, e                                          ; $4b89: $53
	adc e                                            ; $4b8a: $8b
	ld e, h                                          ; $4b8b: $5c

jr_098_4b8c:
	ld b, h                                          ; $4b8c: $44
	ld c, h                                          ; $4b8d: $4c
	and b                                            ; $4b8e: $a0
	db $ed                                           ; $4b8f: $ed
	ld b, e                                          ; $4b90: $43
	xor h                                            ; $4b91: $ac
	ldh a, [c]                                       ; $4b92: $f2

jr_098_4b93:
	halt                                             ; $4b93: $76
	ldh a, [$9e]                                     ; $4b94: $f0 $9e
	ld b, a                                          ; $4b96: $47
	ld a, [hl-]                                      ; $4b97: $3a
	ld c, [hl]                                       ; $4b98: $4e
	db $ec                                           ; $4b99: $ec
	ret c                                            ; $4b9a: $d8

	and b                                            ; $4b9b: $a0
	cpl                                              ; $4b9c: $2f
	ld b, e                                          ; $4b9d: $43
	ld [$099e], a                                    ; $4b9e: $ea $9e $09
	cpl                                              ; $4ba1: $2f
	ld b, e                                          ; $4ba2: $43
	ld [$a845], a                                    ; $4ba3: $ea $45 $a8
	db $eb                                           ; $4ba6: $eb
	ld a, [$ac4b]                                    ; $4ba7: $fa $4b $ac
	ld [$a046], a                                    ; $4baa: $ea $46 $a0
	ld l, [hl]                                       ; $4bad: $6e
	dec sp                                           ; $4bae: $3b
	add b                                            ; $4baf: $80
	ld e, l                                          ; $4bb0: $5d
	dec a                                            ; $4bb1: $3d
	ld b, d                                          ; $4bb2: $42
	xor c                                            ; $4bb3: $a9
	ld h, c                                          ; $4bb4: $61
	ld h, [hl]                                       ; $4bb5: $66
	ld e, c                                          ; $4bb6: $59
	db $eb                                           ; $4bb7: $eb
	ld [hl], c                                       ; $4bb8: $71
	ld e, e                                          ; $4bb9: $5b
	ld d, [hl]                                       ; $4bba: $56
	ld b, c                                          ; $4bbb: $41
	and b                                            ; $4bbc: $a0
	cpl                                              ; $4bbd: $2f
	ld b, e                                          ; $4bbe: $43
	ld d, d                                          ; $4bbf: $52
	inc [hl]                                         ; $4bc0: $34
	add a                                            ; $4bc1: $87
	ld a, $3d                                        ; $4bc2: $3e $3d
	sbc d                                            ; $4bc4: $9a
	inc de                                           ; $4bc5: $13
	ld b, [hl]                                       ; $4bc6: $46
	ld c, [hl]                                       ; $4bc7: $4e
	ld e, l                                          ; $4bc8: $5d
	ld e, d                                          ; $4bc9: $5a
	ld e, b                                          ; $4bca: $58
	and b                                            ; $4bcb: $a0
	ld e, b                                          ; $4bcc: $58
	ccf                                              ; $4bcd: $3f
	ld c, c                                          ; $4bce: $49
	inc [hl]                                         ; $4bcf: $34
	db $ec                                           ; $4bd0: $ec
	rrca                                             ; $4bd1: $0f
	ld a, [hl-]                                      ; $4bd2: $3a
	ld c, b                                          ; $4bd3: $48
	and b                                            ; $4bd4: $a0
	cpl                                              ; $4bd5: $2f
	ld b, e                                          ; $4bd6: $43
	ld h, h                                          ; $4bd7: $64
	jr c, jr_098_4c3e                                ; $4bd8: $38 $64

	jr c, @+$36                                      ; $4bda: $38 $34

	ldh a, [rAUD1LOW]                                ; $4bdc: $f0 $13
	ldh a, [c]                                       ; $4bde: $f2
	rst GetHLinHL                                          ; $4bdf: $cf
	ld a, $3a                                        ; $4be0: $3e $3a
	jr c, jr_098_4bf7                                ; $4be2: $38 $13

	ld b, d                                          ; $4be4: $42
	dec [hl]                                         ; $4be5: $35
	ld b, b                                          ; $4be6: $40
	ld c, l                                          ; $4be7: $4d
	ld b, l                                          ; $4be8: $45
	ld d, a                                          ; $4be9: $57
	inc [hl]                                         ; $4bea: $34
	pop af                                           ; $4beb: $f1
	ld hl, sp-$0f                                    ; $4bec: $f8 $f1
	ld d, b                                          ; $4bee: $50
	ld c, e                                          ; $4bef: $4b
	ld a, [hl-]                                      ; $4bf0: $3a
	inc a                                            ; $4bf1: $3c
	dec sp                                           ; $4bf2: $3b
	dec a                                            ; $4bf3: $3d
	and c                                            ; $4bf4: $a1
	xor $1f                                          ; $4bf5: $ee $1f

jr_098_4bf7:
	inc [hl]                                         ; $4bf7: $34
	add a                                            ; $4bf8: $87
	ldh a, [$5b]                                     ; $4bf9: $f0 $5b
	ldh a, [$5e]                                     ; $4bfb: $f0 $5e
	ld b, l                                          ; $4bfd: $45
	xor b                                            ; $4bfe: $a8
	db $dd                                           ; $4bff: $dd
	ldh a, [c]                                       ; $4c00: $f2
	halt                                             ; $4c01: $76
	ldh a, [$9e]                                     ; $4c02: $f0 $9e
	ld b, a                                          ; $4c04: $47
	xor $15                                          ; $4c05: $ee $15
	ld h, d                                          ; $4c07: $62
	di                                               ; $4c08: $f3
	ld h, e                                          ; $4c09: $63
	ld e, a                                          ; $4c0a: $5f
	add hl, sp                                       ; $4c0b: $39
	xor b                                            ; $4c0c: $a8
	xor $2d                                          ; $4c0d: $ee $2d
	ldh a, [$2b]                                     ; $4c0f: $f0 $2b
	ld e, c                                          ; $4c11: $59
	pop af                                           ; $4c12: $f1
	ld b, l                                          ; $4c13: $45
	and b                                            ; $4c14: $a0
	cpl                                              ; $4c15: $2f
	ld b, e                                          ; $4c16: $43
	jp hl                                            ; $4c17: $e9


	ret z                                            ; $4c18: $c8

	inc de                                           ; $4c19: $13
	db $ec                                           ; $4c1a: $ec
	rrca                                             ; $4c1b: $0f
	and c                                            ; $4c1c: $a1
	call c, Call_098_4634                            ; $4c1d: $dc $34 $46
	ld b, c                                          ; $4c20: $41
	ld a, [hl-]                                      ; $4c21: $3a
	ld b, d                                          ; $4c22: $42
	ld d, e                                          ; $4c23: $53
	inc de                                           ; $4c24: $13
	ld d, d                                          ; $4c25: $52
	dec a                                            ; $4c26: $3d
	sub h                                            ; $4c27: $94
	ccf                                              ; $4c28: $3f
	ld d, h                                          ; $4c29: $54
	ld a, [hl-]                                      ; $4c2a: $3a
	jr c, jr_098_4c66                                ; $4c2b: $38 $39

	ld h, c                                          ; $4c2d: $61
	ld b, a                                          ; $4c2e: $47
	xor h                                            ; $4c2f: $ac
	ldh a, [$0a]                                     ; $4c30: $f0 $0a
	ld d, l                                          ; $4c32: $55
	ld a, d                                          ; $4c33: $7a
	ld e, a                                          ; $4c34: $5f
	add hl, sp                                       ; $4c35: $39
	and b                                            ; $4c36: $a0
	ld c, e                                          ; $4c37: $4b
	ld b, [hl]                                       ; $4c38: $46
	inc [hl]                                         ; $4c39: $34
	ld c, e                                          ; $4c3a: $4b
	ld b, [hl]                                       ; $4c3b: $46
	xor l                                            ; $4c3c: $ad
	ld b, [hl]                                       ; $4c3d: $46

jr_098_4c3e:
	ld [hl], h                                       ; $4c3e: $74
	inc [hl]                                         ; $4c3f: $34
	ldh a, [c]                                       ; $4c40: $f2
	ld a, d                                          ; $4c41: $7a
	pop af                                           ; $4c42: $f1
	ld a, b                                          ; $4c43: $78
	inc a                                            ; $4c44: $3c
	ld c, c                                          ; $4c45: $49
	ld [hl], a                                       ; $4c46: $77
	dec sp                                           ; $4c47: $3b
	dec a                                            ; $4c48: $3d
	dec [hl]                                         ; $4c49: $35
	ld [hl+], a                                      ; $4c4a: $22
	inc de                                           ; $4c4b: $13
	ld b, [hl]                                       ; $4c4c: $46
	dec sp                                           ; $4c4d: $3b
	and d                                            ; $4c4e: $a2
	cpl                                              ; $4c4f: $2f
	ld b, e                                          ; $4c50: $43
	ld e, d                                          ; $4c51: $5a
	inc [hl]                                         ; $4c52: $34
	db $eb                                           ; $4c53: $eb
	rst FarCall                                          ; $4c54: $f7
	xor b                                            ; $4c55: $a8
	db $eb                                           ; $4c56: $eb
	ld a, [$eea0]                                    ; $4c57: $fa $a0 $ee
	dec d                                            ; $4c5a: $15
	di                                               ; $4c5b: $f3
	ld h, e                                          ; $4c5c: $63
	dec sp                                           ; $4c5d: $3b
	ld c, c                                          ; $4c5e: $49
	ld e, l                                          ; $4c5f: $5d
	ld a, e                                          ; $4c60: $7b
	inc de                                           ; $4c61: $13
	ld b, l                                          ; $4c62: $45
	inc a                                            ; $4c63: $3c
	dec sp                                           ; $4c64: $3b
	dec a                                            ; $4c65: $3d

jr_098_4c66:
	and b                                            ; $4c66: $a0
	cpl                                              ; $4c67: $2f

Call_098_4c68:
	ld b, e                                          ; $4c68: $43
	xor $10                                          ; $4c69: $ee $10
	xor $10                                          ; $4c6b: $ee $10
	xor b                                            ; $4c6d: $a8
	ld c, c                                          ; $4c6e: $49
	inc [hl]                                         ; $4c6f: $34
	ld c, c                                          ; $4c70: $49
	ld d, a                                          ; $4c71: $57
	ld b, [hl]                                       ; $4c72: $46
	ld e, [hl]                                       ; $4c73: $5e
	sbc h                                            ; $4c74: $9c
	xor b                                            ; $4c75: $a8
	pop af                                           ; $4c76: $f1
	ld hl, sp-$0f                                    ; $4c77: $f8 $f1
	ld d, b                                          ; $4c79: $50
	ld d, e                                          ; $4c7a: $53
	ld a, [hl-]                                      ; $4c7b: $3a
	ld d, l                                          ; $4c7c: $55
	ccf                                              ; $4c7d: $3f
	ld b, l                                          ; $4c7e: $45
	inc a                                            ; $4c7f: $3c
	dec sp                                           ; $4c80: $3b
	dec a                                            ; $4c81: $3d
	ld c, h                                          ; $4c82: $4c
	and b                                            ; $4c83: $a0
	add hl, bc                                       ; $4c84: $09
	ld d, $ac                                        ; $4c85: $16 $ac
	ld h, h                                          ; $4c87: $64
	ld c, e                                          ; $4c88: $4b
	ld b, l                                          ; $4c89: $45
	add hl, sp                                       ; $4c8a: $39
	and b                                            ; $4c8b: $a0
	cpl                                              ; $4c8c: $2f
	ld b, e                                          ; $4c8d: $43
	ld b, [hl]                                       ; $4c8e: $46
	dec sp                                           ; $4c8f: $3b
	xor h                                            ; $4c90: $ac
	db $ec                                           ; $4c91: $ec
	and $34                                          ; $4c92: $e6 $34
	ld h, h                                          ; $4c94: $64
	ld c, e                                          ; $4c95: $4b
	ld b, l                                          ; $4c96: $45
	add hl, sp                                       ; $4c97: $39
	and b                                            ; $4c98: $a0
	ld d, $a8                                        ; $4c99: $16 $a8
	ld d, h                                          ; $4c9b: $54
	ld c, l                                          ; $4c9c: $4d
	inc a                                            ; $4c9d: $3c
	ld d, b                                          ; $4c9e: $50
	sub h                                            ; $4c9f: $94
	inc a                                            ; $4ca0: $3c
	ld e, l                                          ; $4ca1: $5d
	ld c, [hl]                                       ; $4ca2: $4e
	ld b, d                                          ; $4ca3: $42
	and c                                            ; $4ca4: $a1
	cpl                                              ; $4ca5: $2f
	ld b, e                                          ; $4ca6: $43
	xor $1f                                          ; $4ca7: $ee $1f
	inc [hl]                                         ; $4ca9: $34
	ld b, b                                          ; $4caa: $40
	add hl, sp                                       ; $4cab: $39
	ld b, h                                          ; $4cac: $44
	ld b, l                                          ; $4cad: $45
	and b                                            ; $4cae: $a0
	ldh a, [$98]                                     ; $4caf: $f0 $98
	inc a                                            ; $4cb1: $3c
	xor $06                                          ; $4cb2: $ee $06
	ld b, a                                          ; $4cb4: $47
	inc de                                           ; $4cb5: $13
	ld h, a                                          ; $4cb6: $67
	ld d, l                                          ; $4cb7: $55
	add h                                            ; $4cb8: $84
	jr c, jr_098_4d09                                ; $4cb9: $38 $4e

	ld b, d                                          ; $4cbb: $42
	and c                                            ; $4cbc: $a1
	cpl                                              ; $4cbd: $2f
	ld b, e                                          ; $4cbe: $43
	jr c, jr_098_4d2f                                ; $4cbf: $38 $6e

	xor b                                            ; $4cc1: $a8
	ld d, d                                          ; $4cc2: $52
	ld b, h                                          ; $4cc3: $44
	ldh a, [$ec]                                     ; $4cc4: $f0 $ec
	ld [hl], c                                       ; $4cc6: $71
	ccf                                              ; $4cc7: $3f
	ld a, [hl-]                                      ; $4cc8: $3a
	jr c, @+$43                                      ; $4cc9: $38 $41

	ld b, h                                          ; $4ccb: $44
	and b                                            ; $4ccc: $a0
	ld c, a                                          ; $4ccd: $4f
	ld a, $34                                        ; $4cce: $3e $34
	ld b, l                                          ; $4cd0: $45
	inc a                                            ; $4cd1: $3c
	dec sp                                           ; $4cd2: $3b
	dec a                                            ; $4cd3: $3d
	ld d, b                                          ; $4cd4: $50
	xor h                                            ; $4cd5: $ac
	ld l, a                                          ; $4cd6: $6f
	ld c, c                                          ; $4cd7: $49
	ld [$a126], a                                    ; $4cd8: $ea $26 $a1
	cpl                                              ; $4cdb: $2f
	jr c, jr_098_4d16                                ; $4cdc: $38 $38

	ld b, l                                          ; $4cde: $45
	inc [hl]                                         ; $4cdf: $34
	xor $06                                          ; $4ce0: $ee $06
	ld b, a                                          ; $4ce2: $47
	ld h, a                                          ; $4ce3: $67
	ld d, h                                          ; $4ce4: $54
	add hl, sp                                       ; $4ce5: $39
	add hl, bc                                       ; $4ce6: $09
	db $ed                                           ; $4ce7: $ed
	ld b, c                                          ; $4ce8: $41
	xor c                                            ; $4ce9: $a9
	ld e, e                                          ; $4cea: $5b
	ld d, [hl]                                       ; $4ceb: $56
	ld b, [hl]                                       ; $4cec: $46
	inc [hl]                                         ; $4ced: $34
	ret                                              ; $4cee: $c9


	sbc c                                            ; $4cef: $99
	dec sp                                           ; $4cf0: $3b
	ccf                                              ; $4cf1: $3f
	ccf                                              ; $4cf2: $3f
	xor b                                            ; $4cf3: $a8
	pop af                                           ; $4cf4: $f1
	ld a, c                                          ; $4cf5: $79
	pop af                                           ; $4cf6: $f1
	ld h, d                                          ; $4cf7: $62
	ld a, $3f                                        ; $4cf8: $3e $3f
	ld d, l                                          ; $4cfa: $55
	ld c, [hl]                                       ; $4cfb: $4e
	inc a                                            ; $4cfc: $3c
	ld d, b                                          ; $4cfd: $50
	and b                                            ; $4cfe: $a0
	ld h, h                                          ; $4cff: $64
	sbc c                                            ; $4d00: $99
	dec a                                            ; $4d01: $3d
	ld a, c                                          ; $4d02: $79
	ld e, c                                          ; $4d03: $59
	xor b                                            ; $4d04: $a8
	ld b, b                                          ; $4d05: $40
	ld c, l                                          ; $4d06: $4d
	ld e, e                                          ; $4d07: $5b
	ld d, [hl]                                       ; $4d08: $56

jr_098_4d09:
	inc [hl]                                         ; $4d09: $34
	call $2fa0                                       ; $4d0a: $cd $a0 $2f
	ld b, e                                          ; $4d0d: $43
	db $dd                                           ; $4d0e: $dd
	ld h, a                                          ; $4d0f: $67
	ld d, h                                          ; $4d10: $54
	add hl, sp                                       ; $4d11: $39
	and b                                            ; $4d12: $a0
	cpl                                              ; $4d13: $2f
	ld [hl], b                                       ; $4d14: $70
	ld [hl], c                                       ; $4d15: $71

jr_098_4d16:
	ld b, c                                          ; $4d16: $41
	inc [hl]                                         ; $4d17: $34
	pop af                                           ; $4d18: $f1
	jr nc, jr_098_4d8c                               ; $4d19: $30 $71

	ccf                                              ; $4d1b: $3f
	ld h, h                                          ; $4d1c: $64
	ld d, l                                          ; $4d1d: $55
	ld b, l                                          ; $4d1e: $45
	add hl, bc                                       ; $4d1f: $09
	ld b, b                                          ; $4d20: $40
	add hl, sp                                       ; $4d21: $39
	inc a                                            ; $4d22: $3c
	ld [hl], h                                       ; $4d23: $74
	ld c, b                                          ; $4d24: $48
	inc [hl]                                         ; $4d25: $34
	ldh a, [$8d]                                     ; $4d26: $f0 $8d
	ldh a, [$9e]                                     ; $4d28: $f0 $9e
	xor b                                            ; $4d2a: $a8
	sub b                                            ; $4d2b: $90
	ld a, $6c                                        ; $4d2c: $3e $6c
	ld b, a                                          ; $4d2e: $47

jr_098_4d2f:
	ld a, $ec                                        ; $4d2f: $3e $ec
	add hl, de                                       ; $4d31: $19
	ld e, l                                          ; $4d32: $5d
	ld e, d                                          ; $4d33: $5a
	ld c, b                                          ; $4d34: $48
	and b                                            ; $4d35: $a0
	cpl                                              ; $4d36: $2f
	ld b, e                                          ; $4d37: $43
	ret                                              ; $4d38: $c9


	xor h                                            ; $4d39: $ac
	ld [$a034], a                                    ; $4d3a: $ea $34 $a0
	cpl                                              ; $4d3d: $2f
	ld b, e                                          ; $4d3e: $43
	ld b, [hl]                                       ; $4d3f: $46
	dec sp                                           ; $4d40: $3b
	inc [hl]                                         ; $4d41: $34
	db $ed                                           ; $4d42: $ed
	xor d                                            ; $4d43: $aa
	jr c, jr_098_4d7e                                ; $4d44: $38 $38

	ld c, c                                          ; $4d46: $49
	ld d, h                                          ; $4d47: $54
	ld e, a                                          ; $4d48: $5f
	inc de                                           ; $4d49: $13
	ld b, a                                          ; $4d4a: $47
	inc [hl]                                         ; $4d4b: $34
	db $ec                                           ; $4d4c: $ec
	and $eb                                          ; $4d4d: $e6 $eb
	ld h, [hl]                                       ; $4d4f: $66
	and b                                            ; $4d50: $a0
	cpl                                              ; $4d51: $2f
	ld b, e                                          ; $4d52: $43
	db $ec                                           ; $4d53: $ec
	and $a0                                          ; $4d54: $e6 $a0
	ld b, [hl]                                       ; $4d56: $46
	dec sp                                           ; $4d57: $3b
	inc [hl]                                         ; $4d58: $34
	ld h, h                                          ; $4d59: $64
	ld c, e                                          ; $4d5a: $4b
	ld b, l                                          ; $4d5b: $45
	add hl, sp                                       ; $4d5c: $39
	xor b                                            ; $4d5d: $a8
	ld d, $a0                                        ; $4d5e: $16 $a0
	cpl                                              ; $4d60: $2f
	ld b, e                                          ; $4d61: $43
	ld c, h                                          ; $4d62: $4c
	ld e, [hl]                                       ; $4d63: $5e
	inc [hl]                                         ; $4d64: $34
	ld l, d                                          ; $4d65: $6a
	ld l, b                                          ; $4d66: $68
	ld b, d                                          ; $4d67: $42
	inc de                                           ; $4d68: $13
	db $ec                                           ; $4d69: $ec
	jp $ea34                                         ; $4d6a: $c3 $34 $ea


	ld h, $a1                                        ; $4d6d: $26 $a1
	ld e, [hl]                                       ; $4d6f: $5e
	dec sp                                           ; $4d70: $3b
	xor c                                            ; $4d71: $a9
	ld h, e                                          ; $4d72: $63
	inc [hl]                                         ; $4d73: $34
	ld l, a                                          ; $4d74: $6f
	ld c, c                                          ; $4d75: $49
	and c                                            ; $4d76: $a1
	cpl                                              ; $4d77: $2f
	ld b, e                                          ; $4d78: $43
	xor $1f                                          ; $4d79: $ee $1f
	xor b                                            ; $4d7b: $a8
	xor $06                                          ; $4d7c: $ee $06

jr_098_4d7e:
	ld b, a                                          ; $4d7e: $47
	call $46a0                                       ; $4d7f: $cd $a0 $46
	inc [hl]                                         ; $4d82: $34
	ld h, c                                          ; $4d83: $61
	ld h, [hl]                                       ; $4d84: $66
	inc [hl]                                         ; $4d85: $34
	ret                                              ; $4d86: $c9


	inc de                                           ; $4d87: $13
	sbc c                                            ; $4d88: $99
	dec sp                                           ; $4d89: $3b
	ccf                                              ; $4d8a: $3f
	ccf                                              ; $4d8b: $3f

jr_098_4d8c:
	xor b                                            ; $4d8c: $a8
	ld d, c                                          ; $4d8d: $51
	sbc l                                            ; $4d8e: $9d
	pop af                                           ; $4d8f: $f1
	ld a, c                                          ; $4d90: $79
	pop af                                           ; $4d91: $f1
	ld h, d                                          ; $4d92: $62
	ld a, $3f                                        ; $4d93: $3e $3f
	ld d, l                                          ; $4d95: $55
	ld c, [hl]                                       ; $4d96: $4e
	inc a                                            ; $4d97: $3c
	ld d, b                                          ; $4d98: $50
	and b                                            ; $4d99: $a0
	ld h, h                                          ; $4d9a: $64
	ld c, e                                          ; $4d9b: $4b
	ld b, l                                          ; $4d9c: $45
	add hl, sp                                       ; $4d9d: $39
	inc de                                           ; $4d9e: $13
	ld d, $a0                                        ; $4d9f: $16 $a0
	db $ed                                           ; $4da1: $ed
	ld b, c                                          ; $4da2: $41
	xor c                                            ; $4da3: $a9
	ld h, a                                          ; $4da4: $67
	ld d, l                                          ; $4da5: $55
	ld h, a                                          ; $4da6: $67
	ld d, l                                          ; $4da7: $55
	and b                                            ; $4da8: $a0
	cpl                                              ; $4da9: $2f
	ld b, e                                          ; $4daa: $43
	jp hl                                            ; $4dab: $e9


	ld d, l                                          ; $4dac: $55
	and b                                            ; $4dad: $a0
	ld d, $a8                                        ; $4dae: $16 $a8
	ld h, h                                          ; $4db0: $64
	ld c, e                                          ; $4db1: $4b
	ld b, l                                          ; $4db2: $45
	add hl, sp                                       ; $4db3: $39
	and b                                            ; $4db4: $a0
	xor $1f                                          ; $4db5: $ee $1f
	inc [hl]                                         ; $4db7: $34
	jr c, jr_098_4df2                                ; $4db8: $38 $38

	ld b, l                                          ; $4dba: $45
	xor b                                            ; $4dbb: $a8
	jp hl                                            ; $4dbc: $e9


	ld d, l                                          ; $4dbd: $55
	inc a                                            ; $4dbe: $3c
	and c                                            ; $4dbf: $a1
	cpl                                              ; $4dc0: $2f
	ld b, e                                          ; $4dc1: $43
	xor $1f                                          ; $4dc2: $ee $1f
	inc [hl]                                         ; $4dc4: $34
	ld h, a                                          ; $4dc5: $67
	ld d, h                                          ; $4dc6: $54
	add hl, sp                                       ; $4dc7: $39
	and b                                            ; $4dc8: $a0
	ld l, e                                          ; $4dc9: $6b
	and c                                            ; $4dca: $a1
	db $ec                                           ; $4dcb: $ec
	dec h                                            ; $4dcc: $25
	xor e                                            ; $4dcd: $ab
	ldh a, [$bc]                                     ; $4dce: $f0 $bc
	ldh a, [$e2]                                     ; $4dd0: $f0 $e2
	ld d, e                                          ; $4dd2: $53
	ld b, [hl]                                       ; $4dd3: $46
	ld c, [hl]                                       ; $4dd4: $4e
	ld b, d                                          ; $4dd5: $42
	and b                                            ; $4dd6: $a0
	cpl                                              ; $4dd7: $2f
	ld b, e                                          ; $4dd8: $43
	rst JumpTable                                          ; $4dd9: $c7
	ld c, b                                          ; $4dda: $48
	and b                                            ; $4ddb: $a0
	ld b, b                                          ; $4ddc: $40
	ld c, l                                          ; $4ddd: $4d
	ld e, e                                          ; $4dde: $5b
	ld d, [hl]                                       ; $4ddf: $56
	ld c, b                                          ; $4de0: $48
	and b                                            ; $4de1: $a0
	cpl                                              ; $4de2: $2f
	ld [$ac33], a                                    ; $4de3: $ea $33 $ac
	ld [$33b0], a                                    ; $4de6: $ea $b0 $33
	add hl, bc                                       ; $4de9: $09
	ld h, h                                          ; $4dea: $64
	push af                                          ; $4deb: $f5
	sbc $58                                          ; $4dec: $de $58
	ld b, c                                          ; $4dee: $41
	ccf                                              ; $4def: $3f
	inc de                                           ; $4df0: $13
	pop af                                           ; $4df1: $f1

jr_098_4df2:
	cp l                                             ; $4df2: $bd
	ld l, b                                          ; $4df3: $68
	inc [hl]                                         ; $4df4: $34
	ld d, h                                          ; $4df5: $54
	ld d, h                                          ; $4df6: $54
	ld h, d                                          ; $4df7: $62
	di                                               ; $4df8: $f3
	ld b, l                                          ; $4df9: $45
	dec sp                                           ; $4dfa: $3b
	ccf                                              ; $4dfb: $3f
	ld c, [hl]                                       ; $4dfc: $4e
	ld b, d                                          ; $4dfd: $42
	inc a                                            ; $4dfe: $3c
	ld a, [hl-]                                      ; $4dff: $3a
	xor c                                            ; $4e00: $a9
	pop af                                           ; $4e01: $f1
	cp e                                             ; $4e02: $bb
	ld e, [hl]                                       ; $4e03: $5e
	ld d, b                                          ; $4e04: $50
	ld c, l                                          ; $4e05: $4d
	ld c, [hl]                                       ; $4e06: $4e
	ld b, l                                          ; $4e07: $45
	ld c, h                                          ; $4e08: $4c
	and b                                            ; $4e09: $a0
	db $ec                                           ; $4e0a: $ec
	inc de                                           ; $4e0b: $13
	di                                               ; $4e0c: $f3
	ld [hl], b                                       ; $4e0d: $70
	ldh a, [$2c]                                     ; $4e0e: $f0 $2c
	ld b, h                                          ; $4e10: $44
	ld b, l                                          ; $4e11: $45
	ld c, h                                          ; $4e12: $4c
	and b                                            ; $4e13: $a0
	di                                               ; $4e14: $f3
	rst SubAFromBC                                          ; $4e15: $e7
	ldh a, [$b6]                                     ; $4e16: $f0 $b6
	ld b, d                                          ; $4e18: $42
	db $ec                                           ; $4e19: $ec
	cp $53                                           ; $4e1a: $fe $53
	ld b, [hl]                                       ; $4e1c: $46
	dec sp                                           ; $4e1d: $3b
	ccf                                              ; $4e1e: $3f
	inc de                                           ; $4e1f: $13
	ld l, a                                          ; $4e20: $6f
	ld c, e                                          ; $4e21: $4b
	ldh a, [$80]                                     ; $4e22: $f0 $80
	ldh a, [$c5]                                     ; $4e24: $f0 $c5
	adc e                                            ; $4e26: $8b
	ld e, h                                          ; $4e27: $5c
	ld b, l                                          ; $4e28: $45
	and b                                            ; $4e29: $a0
	cpl                                              ; $4e2a: $2f
	ld b, e                                          ; $4e2b: $43
	db $ec                                           ; $4e2c: $ec
	push bc                                          ; $4e2d: $c5
	xor h                                            ; $4e2e: $ac
	db $ec                                           ; $4e2f: $ec
	add $ec                                          ; $4e30: $c6 $ec
	rrca                                             ; $4e32: $0f
	and b                                            ; $4e33: $a0
	ld b, [hl]                                       ; $4e34: $46
	inc [hl]                                         ; $4e35: $34
	ldh a, [$08]                                     ; $4e36: $f0 $08
	ld b, c                                          ; $4e38: $41
	ld c, c                                          ; $4e39: $49
	ld b, h                                          ; $4e3a: $44
	xor b                                            ; $4e3b: $a8
	ldh a, [$0a]                                     ; $4e3c: $f0 $0a
	jr c, jr_098_4e8c                                ; $4e3e: $38 $4c

	inc [hl]                                         ; $4e40: $34
	ldh a, [rBGP]                                    ; $4e41: $f0 $47
	ldh a, [$2a]                                     ; $4e43: $f0 $2a
	ld d, e                                          ; $4e45: $53
	ldh a, [c]                                       ; $4e46: $f2
	inc hl                                           ; $4e47: $23
	add b                                            ; $4e48: $80
	ld b, d                                          ; $4e49: $42
	and b                                            ; $4e4a: $a0
	cpl                                              ; $4e4b: $2f
	ld b, e                                          ; $4e4c: $43
	ld [$accc], a                                    ; $4e4d: $ea $cc $ac
	jp hl                                            ; $4e50: $e9


	ld [hl], $13                                     ; $4e51: $36 $13
	jp hl                                            ; $4e53: $e9


	xor d                                            ; $4e54: $aa
	and c                                            ; $4e55: $a1
	xor $1f                                          ; $4e56: $ee $1f
	inc [hl]                                         ; $4e58: $34
	jr c, jr_098_4e93                                ; $4e59: $38 $38

	ld b, l                                          ; $4e5b: $45
	xor b                                            ; $4e5c: $a8
	ld e, e                                          ; $4e5d: $5b
	ld d, [hl]                                       ; $4e5e: $56
	ld b, [hl]                                       ; $4e5f: $46
	inc [hl]                                         ; $4e60: $34
	jp hl                                            ; $4e61: $e9


	ret                                              ; $4e62: $c9


	inc de                                           ; $4e63: $13
	db $eb                                           ; $4e64: $eb
	ld a, [hl]                                       ; $4e65: $7e
	ld c, h                                          ; $4e66: $4c
	and b                                            ; $4e67: $a0
	ld [hl], b                                       ; $4e68: $70
	ld [hl], c                                       ; $4e69: $71
	ld b, c                                          ; $4e6a: $41
	ld c, h                                          ; $4e6b: $4c
	xor b                                            ; $4e6c: $a8
	pop af                                           ; $4e6d: $f1
	ld a, c                                          ; $4e6e: $79
	pop af                                           ; $4e6f: $f1
	ld h, d                                          ; $4e70: $62
	ld b, a                                          ; $4e71: $47
	ldh a, [rBGP]                                    ; $4e72: $f0 $47
	ldh a, [$2a]                                     ; $4e74: $f0 $2a
	ld d, e                                          ; $4e76: $53
	inc a                                            ; $4e77: $3c
	inc a                                            ; $4e78: $3c
	dec sp                                           ; $4e79: $3b
	ccf                                              ; $4e7a: $3f
	ld c, b                                          ; $4e7b: $48
	and b                                            ; $4e7c: $a0
	xor $1f                                          ; $4e7d: $ee $1f
	inc [hl]                                         ; $4e7f: $34
	ld h, a                                          ; $4e80: $67
	ld d, h                                          ; $4e81: $54
	add hl, sp                                       ; $4e82: $39
	xor b                                            ; $4e83: $a8
	inc hl                                           ; $4e84: $23
	ret                                              ; $4e85: $c9


	sbc c                                            ; $4e86: $99
	dec sp                                           ; $4e87: $3b
	ccf                                              ; $4e88: $3f
	scf                                              ; $4e89: $37
	inc de                                           ; $4e8a: $13
	ld b, [hl]                                       ; $4e8b: $46

jr_098_4e8c:
	ld c, l                                          ; $4e8c: $4d
	inc [hl]                                         ; $4e8d: $34
	ld a, [hl-]                                      ; $4e8e: $3a
	ld b, a                                          ; $4e8f: $47
	inc a                                            ; $4e90: $3c
	ld a, $50                                        ; $4e91: $3e $50

jr_098_4e93:
	and c                                            ; $4e93: $a1
	cpl                                              ; $4e94: $2f
	ld b, e                                          ; $4e95: $43
	db $eb                                           ; $4e96: $eb
	ld a, [hl-]                                      ; $4e97: $3a
	add hl, bc                                       ; $4e98: $09
	cpl                                              ; $4e99: $2f
	ld [$093a], a                                    ; $4e9a: $ea $3a $09
	cpl                                              ; $4e9d: $2f
	add sp, $53                                      ; $4e9e: $e8 $53
	add hl, bc                                       ; $4ea0: $09
	ld d, $4b                                        ; $4ea1: $16 $4b
	ld l, e                                          ; $4ea3: $6b
	inc a                                            ; $4ea4: $3c
	inc de                                           ; $4ea5: $13
	add a                                            ; $4ea6: $87
	ldh a, [c]                                       ; $4ea7: $f2
	rst SubAFromDE                                          ; $4ea8: $df
	ld h, d                                          ; $4ea9: $62
	ldh a, [c]                                       ; $4eaa: $f2
	sub [hl]                                         ; $4eab: $96
	jr c, @+$41                                      ; $4eac: $38 $3f

	ld c, [hl]                                       ; $4eae: $4e
	and c                                            ; $4eaf: $a1
	cpl                                              ; $4eb0: $2f
	ld b, e                                          ; $4eb1: $43
	sub c                                            ; $4eb2: $91
	ldh a, [$59]                                     ; $4eb3: $f0 $59
	db $ec                                           ; $4eb5: $ec
	ret c                                            ; $4eb6: $d8

	inc a                                            ; $4eb7: $3c
	and b                                            ; $4eb8: $a0
	ldh a, [$5a]                                     ; $4eb9: $f0 $5a
	add l                                            ; $4ebb: $85
	xor b                                            ; $4ebc: $a8
	ld e, d                                          ; $4ebd: $5a
	ld b, c                                          ; $4ebe: $41
	ld a, [hl-]                                      ; $4ebf: $3a
	ld b, d                                          ; $4ec0: $42
	and c                                            ; $4ec1: $a1
	cpl                                              ; $4ec2: $2f
	ld b, e                                          ; $4ec3: $43
	ld b, b                                          ; $4ec4: $40
	inc [hl]                                         ; $4ec5: $34
	ld b, b                                          ; $4ec6: $40
	ld c, l                                          ; $4ec7: $4d
	ld c, e                                          ; $4ec8: $4b
	xor $10                                          ; $4ec9: $ee $10
	xor b                                            ; $4ecb: $a8
	inc hl                                           ; $4ecc: $23
	db $eb                                           ; $4ecd: $eb
	dec sp                                           ; $4ece: $3b
	add hl, bc                                       ; $4ecf: $09
	ld l, e                                          ; $4ed0: $6b
	ld [hl], b                                       ; $4ed1: $70
	ld d, d                                          ; $4ed2: $52
	inc a                                            ; $4ed3: $3c
	ld a, $3f                                        ; $4ed4: $3e $3f
	xor $10                                          ; $4ed6: $ee $10
	add hl, bc                                       ; $4ed8: $09
	pop af                                           ; $4ed9: $f1
	ld b, b                                          ; $4eda: $40
	ld e, c                                          ; $4edb: $59
	ld [hl], e                                       ; $4edc: $73
	inc [hl]                                         ; $4edd: $34
	db $ed                                           ; $4ede: $ed
	ld b, c                                          ; $4edf: $41
	ld b, a                                          ; $4ee0: $47
	ldh a, [c]                                       ; $4ee1: $f2
	ld [hl], b                                       ; $4ee2: $70
	db $ec                                           ; $4ee3: $ec
	ret c                                            ; $4ee4: $d8

	and d                                            ; $4ee5: $a2
	ld d, h                                          ; $4ee6: $54
	ld b, c                                          ; $4ee7: $41
	ld a, [hl-]                                      ; $4ee8: $3a
	ldh a, [$28]                                     ; $4ee9: $f0 $28
	inc [hl]                                         ; $4eeb: $34
	ldh a, [hDisp0_SCX]                                     ; $4eec: $f0 $84
	add h                                            ; $4eee: $84
	ld c, d                                          ; $4eef: $4a
	inc de                                           ; $4ef0: $13
	pop af                                           ; $4ef1: $f1
	ld h, $38                                        ; $4ef2: $26 $38
	ccf                                              ; $4ef4: $3f
	jr c, jr_098_4f34                                ; $4ef5: $38 $3d

	ld d, b                                          ; $4ef7: $50
	inc [hl]                                         ; $4ef8: $34
	ld d, d                                          ; $4ef9: $52
	ld c, [hl]                                       ; $4efa: $4e
	ld c, d                                          ; $4efb: $4a
	pop af                                           ; $4efc: $f1
	ld [hl], b                                       ; $4efd: $70
	ld c, b                                          ; $4efe: $48
	add hl, bc                                       ; $4eff: $09
	cpl                                              ; $4f00: $2f
	ld b, e                                          ; $4f01: $43
	ld [$099e], a                                    ; $4f02: $ea $9e $09
	ld c, a                                          ; $4f05: $4f
	add hl, sp                                       ; $4f06: $39
	inc [hl]                                         ; $4f07: $34
	jr c, jr_098_4f42                                ; $4f08: $38 $38

	db $ec                                           ; $4f0a: $ec
	cp $53                                           ; $4f0b: $fe $53
	xor e                                            ; $4f0d: $ab
	inc hl                                           ; $4f0e: $23
	pop af                                           ; $4f0f: $f1
	ld b, b                                          ; $4f10: $40
	ld e, c                                          ; $4f11: $59
	ld [hl], e                                       ; $4f12: $73
	inc [hl]                                         ; $4f13: $34
	db $ed                                           ; $4f14: $ed
	ld b, c                                          ; $4f15: $41
	ld b, a                                          ; $4f16: $47
	ldh a, [rAUD3ENA]                                ; $4f17: $f0 $1a
	ldh a, [rBCPD]                                   ; $4f19: $f0 $69
	db $ec                                           ; $4f1b: $ec
	ret c                                            ; $4f1c: $d8

	and d                                            ; $4f1d: $a2

jr_098_4f1e:
	ld l, a                                          ; $4f1e: $6f
	dec a                                            ; $4f1f: $3d
	ld h, c                                          ; $4f20: $61
	ld c, d                                          ; $4f21: $4a
	inc de                                           ; $4f22: $13
	ldh a, [c]                                       ; $4f23: $f2
	ld sp, hl                                        ; $4f24: $f9
	jr c, jr_098_4f1e                                ; $4f25: $38 $f7

	ld d, $64                                        ; $4f27: $16 $64
	add hl, sp                                       ; $4f29: $39
	ld b, l                                          ; $4f2a: $45
	and d                                            ; $4f2b: $a2
	cpl                                              ; $4f2c: $2f
	ld b, e                                          ; $4f2d: $43
	ld l, e                                          ; $4f2e: $6b
	add d                                            ; $4f2f: $82
	dec sp                                           ; $4f30: $3b
	ccf                                              ; $4f31: $3f
	ld c, [hl]                                       ; $4f32: $4e
	ld b, c                                          ; $4f33: $41

jr_098_4f34:
	ld b, h                                          ; $4f34: $44
	scf                                              ; $4f35: $37
	inc de                                           ; $4f36: $13

jr_098_4f37:
	xor $16                                          ; $4f37: $ee $16
	ld b, h                                          ; $4f39: $44
	ld b, l                                          ; $4f3a: $45
	inc [hl]                                         ; $4f3b: $34
	ldh a, [$0a]                                     ; $4f3c: $f0 $0a
	ld d, l                                          ; $4f3e: $55
	inc [hl]                                         ; $4f3f: $34
	ldh a, [$e1]                                     ; $4f40: $f0 $e1

jr_098_4f42:
	ldh a, [rSB]                                     ; $4f42: $f0 $01
	ld c, [hl]                                       ; $4f44: $4e
	sub a                                            ; $4f45: $97
	and d                                            ; $4f46: $a2
	ld c, d                                          ; $4f47: $4a
	ld c, a                                          ; $4f48: $4f
	inc [hl]                                         ; $4f49: $34
	ld d, h                                          ; $4f4a: $54
	ld b, d                                          ; $4f4b: $42
	ld d, d                                          ; $4f4c: $52
	ld d, d                                          ; $4f4d: $52
	ld e, e                                          ; $4f4e: $5b
	ld d, [hl]                                       ; $4f4f: $56
	xor e                                            ; $4f50: $ab
	pop af                                           ; $4f51: $f1
	ld l, a                                          ; $4f52: $6f
	ld b, d                                          ; $4f53: $42
	add h                                            ; $4f54: $84
	dec a                                            ; $4f55: $3d
	ld h, c                                          ; $4f56: $61
	ld d, e                                          ; $4f57: $53
	ld c, b                                          ; $4f58: $48
	and b                                            ; $4f59: $a0
	ld l, a                                          ; $4f5a: $6f
	ld c, a                                          ; $4f5b: $4f
	ldh a, [$fc]                                     ; $4f5c: $f0 $fc
	add hl, sp                                       ; $4f5e: $39
	ld h, e                                          ; $4f5f: $63
	and d                                            ; $4f60: $a2
	cpl                                              ; $4f61: $2f
	ld b, e                                          ; $4f62: $43
	ld l, e                                          ; $4f63: $6b
	add d                                            ; $4f64: $82
	dec sp                                           ; $4f65: $3b
	ccf                                              ; $4f66: $3f
	ld c, [hl]                                       ; $4f67: $4e
	ld b, c                                          ; $4f68: $41
	ld b, h                                          ; $4f69: $44
	scf                                              ; $4f6a: $37
	inc de                                           ; $4f6b: $13
	halt                                             ; $4f6c: $76
	ld b, a                                          ; $4f6d: $47
	pop af                                           ; $4f6e: $f1
	dec h                                            ; $4f6f: $25
	ld a, c                                          ; $4f70: $79
	ccf                                              ; $4f71: $3f
	ldh a, [$0a]                                     ; $4f72: $f0 $0a
	ld d, l                                          ; $4f74: $55
	ldh a, [$e1]                                     ; $4f75: $f0 $e1
	ldh a, [rSB]                                     ; $4f77: $f0 $01
	ld e, a                                          ; $4f79: $5f
	and d                                            ; $4f7a: $a2
	cpl                                              ; $4f7b: $2f
	ld b, e                                          ; $4f7c: $43
	ld [$a845], a                                    ; $4f7d: $ea $45 $a8
	db $ec                                           ; $4f80: $ec
	and $4b                                          ; $4f81: $e6 $4b
	inc [hl]                                         ; $4f83: $34
	ld [$a046], a                                    ; $4f84: $ea $46 $a0
	add a                                            ; $4f87: $87
	ldh a, [$5b]                                     ; $4f88: $f0 $5b
	ldh a, [$5e]                                     ; $4f8a: $f0 $5e
	xor c                                            ; $4f8c: $a9
	pop af                                           ; $4f8d: $f1
	ld hl, sp-$0f                                    ; $4f8e: $f8 $f1
	ld d, b                                          ; $4f90: $50
	ld c, e                                          ; $4f91: $4b
	ldh a, [rAUD1LOW]                                ; $4f92: $f0 $13
	jr c, jr_098_4f37                                ; $4f94: $38 $a1

	cpl                                              ; $4f96: $2f
	ld b, e                                          ; $4f97: $43
	add a                                            ; $4f98: $87
	ldh a, [$5b]                                     ; $4f99: $f0 $5b
	ldh a, [$5e]                                     ; $4f9b: $f0 $5e
	ld b, h                                          ; $4f9d: $44
	ld b, l                                          ; $4f9e: $45
	xor b                                            ; $4f9f: $a8
	ld [$44e5], a                                    ; $4fa0: $ea $e5 $44
	ld b, l                                          ; $4fa3: $45
	and b                                            ; $4fa4: $a0
	ld [hl], b                                       ; $4fa5: $70
	ld [hl], c                                       ; $4fa6: $71
	ld b, c                                          ; $4fa7: $41
	ld c, h                                          ; $4fa8: $4c
	dec [hl]                                         ; $4fa9: $35
	rla                                              ; $4faa: $17
	ld l, a                                          ; $4fab: $6f
	ld c, a                                          ; $4fac: $4f
	xor $06                                          ; $4fad: $ee $06
	ld b, a                                          ; $4faf: $47
	inc de                                           ; $4fb0: $13
	ldh a, [$fc]                                     ; $4fb1: $f0 $fc
	jr c, jr_098_4ff2                                ; $4fb3: $38 $3d

	inc a                                            ; $4fb5: $3c
	dec sp                                           ; $4fb6: $3b
	dec a                                            ; $4fb7: $3d
	ld b, c                                          ; $4fb8: $41
	ld b, h                                          ; $4fb9: $44
	ld e, l                                          ; $4fba: $5d
	ld e, d                                          ; $4fbb: $5a
	ld c, b                                          ; $4fbc: $48
	and b                                            ; $4fbd: $a0
	cpl                                              ; $4fbe: $2f
	ld b, e                                          ; $4fbf: $43
	pop hl                                           ; $4fc0: $e1
	ld b, a                                          ; $4fc1: $47
	inc de                                           ; $4fc2: $13
	ldh a, [$fc]                                     ; $4fc3: $f0 $fc
	ld h, e                                          ; $4fc5: $63
	ld a, c                                          ; $4fc6: $79
	ld c, [hl]                                       ; $4fc7: $4e
	ld a, [hl-]                                      ; $4fc8: $3a
	ld b, c                                          ; $4fc9: $41
	ccf                                              ; $4fca: $3f
	ld c, d                                          ; $4fcb: $4a
	ld e, h                                          ; $4fcc: $5c
	ld a, [hl-]                                      ; $4fcd: $3a
	jr c, @+$47                                      ; $4fce: $38 $45

	and b                                            ; $4fd0: $a0
	ld c, d                                          ; $4fd1: $4a
	ld c, a                                          ; $4fd2: $4f
	xor $10                                          ; $4fd3: $ee $10
	and b                                            ; $4fd5: $a0
	cpl                                              ; $4fd6: $2f
	ld b, e                                          ; $4fd7: $43
	ld e, e                                          ; $4fd8: $5b
	ld d, [hl]                                       ; $4fd9: $56
	ld b, [hl]                                       ; $4fda: $46
	xor h                                            ; $4fdb: $ac
	db $ec                                           ; $4fdc: $ec
	push bc                                          ; $4fdd: $c5
	db $ec                                           ; $4fde: $ec
	rrca                                             ; $4fdf: $0f
	and b                                            ; $4fe0: $a0
	xor $1f                                          ; $4fe1: $ee $1f
	ld c, b                                          ; $4fe3: $48
	and b                                            ; $4fe4: $a0
	cpl                                              ; $4fe5: $2f
	ld b, e                                          ; $4fe6: $43
	ld c, e                                          ; $4fe7: $4b
	ld [hl], h                                       ; $4fe8: $74
	inc [hl]                                         ; $4fe9: $34
	ld c, e                                          ; $4fea: $4b
	ld [hl], h                                       ; $4feb: $74
	xor l                                            ; $4fec: $ad
	add a                                            ; $4fed: $87
	ldh a, [$5b]                                     ; $4fee: $f0 $5b
	ldh a, [$5e]                                     ; $4ff0: $f0 $5e

jr_098_4ff2:
	ld [hl], $ec                                     ; $4ff2: $36 $ec
	and $a0                                          ; $4ff4: $e6 $a0
	ld c, e                                          ; $4ff6: $4b
	ld [hl], h                                       ; $4ff7: $74
	inc [hl]                                         ; $4ff8: $34
	ld c, e                                          ; $4ff9: $4b
	ld [hl], h                                       ; $4ffa: $74
	xor l                                            ; $4ffb: $ad
	xor $1f                                          ; $4ffc: $ee $1f
	inc [hl]                                         ; $4ffe: $34
	add a                                            ; $4fff: $87
	ldh a, [$5b]                                     ; $5000: $f0 $5b
	ldh a, [$5e]                                     ; $5002: $f0 $5e
	ld c, b                                          ; $5004: $48
	inc hl                                           ; $5005: $23
	ld c, d                                          ; $5006: $4a
	ld c, a                                          ; $5007: $4f
	ld c, b                                          ; $5008: $48
	add hl, bc                                       ; $5009: $09
	cpl                                              ; $500a: $2f
	ld b, e                                          ; $500b: $43
	db $eb                                           ; $500c: $eb
	rst FarCall                                          ; $500d: $f7
	and c                                            ; $500e: $a1
	ld l, e                                          ; $500f: $6b
	ld c, a                                          ; $5010: $4f
	ld a, c                                          ; $5011: $79
	sbc h                                            ; $5012: $9c
	ld b, a                                          ; $5013: $47
	ldh a, [$e1]                                     ; $5014: $f0 $e1
	ldh a, [rSB]                                     ; $5016: $f0 $01
	ccf                                              ; $5018: $3f
	ld e, h                                          ; $5019: $5c
	dec a                                            ; $501a: $3d
	inc de                                           ; $501b: $13
	db $ed                                           ; $501c: $ed
	ld e, l                                          ; $501d: $5d
	ld d, e                                          ; $501e: $53
	ldh a, [c]                                       ; $501f: $f2
	ld a, b                                          ; $5020: $78
	ld a, c                                          ; $5021: $79
	ld a, [hl-]                                      ; $5022: $3a
	jr c, jr_098_5067                                ; $5023: $38 $42

	ld c, b                                          ; $5025: $48
	and b                                            ; $5026: $a0
	cpl                                              ; $5027: $2f
	ld b, e                                          ; $5028: $43
	db $ed                                           ; $5029: $ed
	xor a                                            ; $502a: $af
	ld a, [hl-]                                      ; $502b: $3a
	jr c, jr_098_5073                                ; $502c: $38 $45

	xor b                                            ; $502e: $a8
	ldh a, [$e9]                                     ; $502f: $f0 $e9
	ldh a, [$0b]                                     ; $5031: $f0 $0b
	ld d, e                                          ; $5033: $53
	ld b, [hl]                                       ; $5034: $46
	ld c, l                                          ; $5035: $4d
	ld e, e                                          ; $5036: $5b
	ld d, [hl]                                       ; $5037: $56
	ld b, [hl]                                       ; $5038: $46
	and b                                            ; $5039: $a0
	db $eb                                           ; $503a: $eb
	ld [hl], h                                       ; $503b: $74
	ld e, l                                          ; $503c: $5d
	ld e, d                                          ; $503d: $5a
	ld c, h                                          ; $503e: $4c
	xor l                                            ; $503f: $ad
	ld b, b                                          ; $5040: $40
	ld c, l                                          ; $5041: $4d
	ld c, d                                          ; $5042: $4a
	ld c, a                                          ; $5043: $4f
	ld c, b                                          ; $5044: $48
	add hl, bc                                       ; $5045: $09
	add hl, bc                                       ; $5046: $09
	ld b, l                                          ; $5047: $45
	ld h, h                                          ; $5048: $64
	inc [hl]                                         ; $5049: $34
	ld [de], a                                       ; $504a: $12
	xor b                                            ; $504b: $a8
	xor $08                                          ; $504c: $ee $08
	inc a                                            ; $504e: $3c
	and c                                            ; $504f: $a1
	cpl                                              ; $5050: $2f
	ld b, e                                          ; $5051: $43
	ld l, e                                          ; $5052: $6b
	ld b, h                                          ; $5053: $44
	inc [hl]                                         ; $5054: $34
	adc e                                            ; $5055: $8b
	ldh a, [$72]                                     ; $5056: $f0 $72
	inc a                                            ; $5058: $3c
	xor l                                            ; $5059: $ad
	db $ed                                           ; $505a: $ed
	sub [hl]                                         ; $505b: $96
	ld a, [hl-]                                      ; $505c: $3a
	ld h, h                                          ; $505d: $64
	ldh a, [$f6]                                     ; $505e: $f0 $f6
	ldh a, [rAUDVOL]                                 ; $5060: $f0 $24
	ld b, h                                          ; $5062: $44
	and b                                            ; $5063: $a0
	xor $08                                          ; $5064: $ee $08
	ld b, h                                          ; $5066: $44

jr_098_5067:
	dec sp                                           ; $5067: $3b
	dec a                                            ; $5068: $3d
	ld d, b                                          ; $5069: $50
	ld e, b                                          ; $506a: $58
	xor h                                            ; $506b: $ac
	halt                                             ; $506c: $76
	ld c, c                                          ; $506d: $49
	xor $06                                          ; $506e: $ee $06
	ld b, a                                          ; $5070: $47
	sub h                                            ; $5071: $94
	inc a                                            ; $5072: $3c

jr_098_5073:
	ld e, l                                          ; $5073: $5d
	ld a, [hl-]                                      ; $5074: $3a
	jr c, jr_098_50b3                                ; $5075: $38 $3c

	and c                                            ; $5077: $a1
	cpl                                              ; $5078: $2f
	ld b, e                                          ; $5079: $43
	db $ed                                           ; $507a: $ed
	dec d                                            ; $507b: $15
	xor $08                                          ; $507c: $ee $08
	ld a, [hl-]                                      ; $507e: $3a
	ld b, d                                          ; $507f: $42
	inc a                                            ; $5080: $3c
	and c                                            ; $5081: $a1
	jr c, jr_098_50b8                                ; $5082: $38 $34

	jr c, jr_098_50be                                ; $5084: $38 $38

	db $ec                                           ; $5086: $ec
	ret c                                            ; $5087: $d8

	inc a                                            ; $5088: $3c
	dec [hl]                                         ; $5089: $35
	rla                                              ; $508a: $17
	db $ec                                           ; $508b: $ec
	ld a, [de]                                       ; $508c: $1a
	xor h                                            ; $508d: $ac
	ldh a, [$ab]                                     ; $508e: $f0 $ab
	ld b, d                                          ; $5090: $42
	ldh a, [$f9]                                     ; $5091: $f0 $f9
	pop af                                           ; $5093: $f1
	ldh [c], a                                       ; $5094: $e2
	ld h, d                                          ; $5095: $62
	db $f4                                           ; $5096: $f4
	ld d, [hl]                                       ; $5097: $56
	ld [hl], c                                       ; $5098: $71
	ld b, l                                          ; $5099: $45
	add hl, sp                                       ; $509a: $39
	adc l                                            ; $509b: $8d
	and b                                            ; $509c: $a0
	cpl                                              ; $509d: $2f
	ld [hl-], a                                      ; $509e: $32
	adc e                                            ; $509f: $8b
	ldh a, [$72]                                     ; $50a0: $f0 $72
	ld b, d                                          ; $50a2: $42
	ldh a, [$f8]                                     ; $50a3: $f0 $f8
	xor h                                            ; $50a5: $ac

jr_098_50a6:
	pop hl                                           ; $50a6: $e1
	ld h, d                                          ; $50a7: $62
	ldh a, [$3b]                                     ; $50a8: $f0 $3b
	ld e, [hl]                                       ; $50aa: $5e
	ld a, [hl-]                                      ; $50ab: $3a
	inc a                                            ; $50ac: $3c
	dec sp                                           ; $50ad: $3b
	dec a                                            ; $50ae: $3d
	ld a, [hl-]                                      ; $50af: $3a
	xor l                                            ; $50b0: $ad
	ld c, c                                          ; $50b1: $49
	ld d, a                                          ; $50b2: $57

jr_098_50b3:
	ld b, [hl]                                       ; $50b3: $46
	ld e, [hl]                                       ; $50b4: $5e
	sbc h                                            ; $50b5: $9c
	inc [hl]                                         ; $50b6: $34
	ld b, b                                          ; $50b7: $40

jr_098_50b8:
	add hl, sp                                       ; $50b8: $39
	ld d, c                                          ; $50b9: $51
	ld c, [hl]                                       ; $50ba: $4e
	inc a                                            ; $50bb: $3c
	and e                                            ; $50bc: $a3
	cpl                                              ; $50bd: $2f

jr_098_50be:
	ld b, e                                          ; $50be: $43
	ld b, [hl]                                       ; $50bf: $46
	ld b, [hl]                                       ; $50c0: $46
	inc [hl]                                         ; $50c1: $34
	jr c, @+$3a                                      ; $50c2: $38 $38

	ld b, l                                          ; $50c4: $45
	and b                                            ; $50c5: $a0
	ld e, e                                          ; $50c6: $5b
	ld d, [hl]                                       ; $50c7: $56
	inc [hl]                                         ; $50c8: $34
	sub h                                            ; $50c9: $94
	inc a                                            ; $50ca: $3c
	ld e, l                                          ; $50cb: $5d
	ld b, l                                          ; $50cc: $45
	add hl, sp                                       ; $50cd: $39
	adc l                                            ; $50ce: $8d
	and b                                            ; $50cf: $a0
	cpl                                              ; $50d0: $2f
	ld b, e                                          ; $50d1: $43
	adc e                                            ; $50d2: $8b
	ldh a, [$72]                                     ; $50d3: $f0 $72
	ld c, c                                          ; $50d5: $49
	ld e, e                                          ; $50d6: $5b
	ld d, [hl]                                       ; $50d7: $56
	ld a, [hl-]                                      ; $50d8: $3a
	xor l                                            ; $50d9: $ad
	db $ec                                           ; $50da: $ec
	add hl, bc                                       ; $50db: $09
	ld b, d                                          ; $50dc: $42
	inc [hl]                                         ; $50dd: $34
	pop af                                           ; $50de: $f1
	ldh [c], a                                       ; $50df: $e2
	ld a, h                                          ; $50e0: $7c
	ld b, [hl]                                       ; $50e1: $46
	ldh a, [rSCY]                                    ; $50e2: $f0 $42
	ld c, l                                          ; $50e4: $4d
	ld c, [hl]                                       ; $50e5: $4e
	inc de                                           ; $50e6: $13
	db $ed                                           ; $50e7: $ed
	sub a                                            ; $50e8: $97
	ldh a, [rSCX]                                    ; $50e9: $f0 $43
	pop af                                           ; $50eb: $f1
	jr nz, jr_098_513d                               ; $50ec: $20 $4f

	inc [hl]                                         ; $50ee: $34
	ldh a, [c]                                       ; $50ef: $f2
	ld d, a                                          ; $50f0: $57
	ldh a, [rAUD1LOW]                                ; $50f1: $f0 $13
	ld a, $44                                        ; $50f3: $3e $44
	adc l                                            ; $50f5: $8d
	and b                                            ; $50f6: $a0
	ld h, h                                          ; $50f7: $64
	jr c, jr_098_50a6                                ; $50f8: $38 $ac

	ld l, e                                          ; $50fa: $6b
	ldh a, [$fe]                                     ; $50fb: $f0 $fe
	add b                                            ; $50fd: $80
	ldh a, [$fe]                                     ; $50fe: $f0 $fe
	add b                                            ; $5100: $80
	add d                                            ; $5101: $82
	dec sp                                           ; $5102: $3b
	ccf                                              ; $5103: $3f
	ld b, c                                          ; $5104: $41
	ld b, h                                          ; $5105: $44
	ld b, l                                          ; $5106: $45
	xor b                                            ; $5107: $a8
	ldh a, [$08]                                     ; $5108: $f0 $08
	ld d, b                                          ; $510a: $50
	inc [hl]                                         ; $510b: $34
	ld b, [hl]                                       ; $510c: $46
	ld b, b                                          ; $510d: $40
	ld d, h                                          ; $510e: $54
	ld [hl], d                                       ; $510f: $72
	ccf                                              ; $5110: $3f
	ld l, h                                          ; $5111: $6c
	ld e, a                                          ; $5112: $5f
	ld b, l                                          ; $5113: $45
	and b                                            ; $5114: $a0
	cpl                                              ; $5115: $2f
	ld b, e                                          ; $5116: $43
	ld e, [hl]                                       ; $5117: $5e
	dec sp                                           ; $5118: $3b
	inc [hl]                                         ; $5119: $34
	ld e, d                                          ; $511a: $5a
	ld c, l                                          ; $511b: $4d
	and c                                            ; $511c: $a1
	ldh a, [$08]                                     ; $511d: $f0 $08
	ld d, b                                          ; $511f: $50
	inc [hl]                                         ; $5120: $34
	ld b, [hl]                                       ; $5121: $46
	ld b, b                                          ; $5122: $40
	ld d, h                                          ; $5123: $54
	ld b, d                                          ; $5124: $42
	ldh a, [hDisp0_SCX]                                     ; $5125: $f0 $84
	db $ed                                           ; $5127: $ed
	adc h                                            ; $5128: $8c
	xor h                                            ; $5129: $ac
	ldh a, [$80]                                     ; $512a: $f0 $80
	ldh a, [$c5]                                     ; $512c: $f0 $c5
	jr c, jr_098_5168                                ; $512e: $38 $38

	ld e, e                                          ; $5130: $5b
	ld d, [hl]                                       ; $5131: $56
	ld b, c                                          ; $5132: $41
	xor b                                            ; $5133: $a8
	db $dd                                           ; $5134: $dd
	jp hl                                            ; $5135: $e9


	ld a, b                                          ; $5136: $78
	and b                                            ; $5137: $a0
	cpl                                              ; $5138: $2f
	ld b, e                                          ; $5139: $43
	db $ec                                           ; $513a: $ec
	add hl, bc                                       ; $513b: $09
	xor h                                            ; $513c: $ac

jr_098_513d:
	di                                               ; $513d: $f3
	pop af                                           ; $513e: $f1
	di                                               ; $513f: $f3
	ldh a, [c]                                       ; $5140: $f2
	ld b, d                                          ; $5141: $42
	ldh a, [rBGP]                                    ; $5142: $f0 $47
	ldh a, [c]                                       ; $5144: $f2
	ld [bc], a                                       ; $5145: $02
	ldh a, [c]                                       ; $5146: $f2
	ld d, a                                          ; $5147: $57
	ld d, d                                          ; $5148: $52
	ld c, d                                          ; $5149: $4a
	ld a, b                                          ; $514a: $78
	dec a                                            ; $514b: $3d
	ld b, d                                          ; $514c: $42
	ld b, a                                          ; $514d: $47
	xor h                                            ; $514e: $ac
	ldh a, [c]                                       ; $514f: $f2
	add b                                            ; $5150: $80
	ld b, a                                          ; $5151: $47
	jr c, jr_098_51a2                                ; $5152: $38 $4e

	ld b, d                                          ; $5154: $42
	ld d, e                                          ; $5155: $53
	inc de                                           ; $5156: $13
	adc e                                            ; $5157: $8b
	ldh a, [$72]                                     ; $5158: $f0 $72
	ld a, [hl-]                                      ; $515a: $3a
	ld b, c                                          ; $515b: $41
	ld b, h                                          ; $515c: $44
	ld c, a                                          ; $515d: $4f
	ld b, c                                          ; $515e: $41
	ld a, [hl-]                                      ; $515f: $3a
	ld [hl], h                                       ; $5160: $74
	and b                                            ; $5161: $a0
	cpl                                              ; $5162: $2f
	ld b, e                                          ; $5163: $43
	db $f4                                           ; $5164: $f4
	inc bc                                           ; $5165: $03
	db $f4                                           ; $5166: $f4
	rra                                              ; $5167: $1f

jr_098_5168:
	di                                               ; $5168: $f3
	ld a, [bc]                                       ; $5169: $0a
	ld c, e                                          ; $516a: $4b
	inc de                                           ; $516b: $13
	ld d, c                                          ; $516c: $51

jr_098_516d:
	ld [hl], b                                       ; $516d: $70
	inc a                                            ; $516e: $3c
	dec sp                                           ; $516f: $3b
	dec a                                            ; $5170: $3d
	ld e, l                                          ; $5171: $5d
	ld e, d                                          ; $5172: $5a
	ld a, [hl-]                                      ; $5173: $3a
	ld [hl], h                                       ; $5174: $74
	and b                                            ; $5175: $a0
	ld l, e                                          ; $5176: $6b
	db $f4                                           ; $5177: $f4
	ldh a, [$5e]                                     ; $5178: $f0 $5e
	ld a, [hl-]                                      ; $517a: $3a
	jr c, jr_098_516d                                ; $517b: $38 $f0

	jp nc, $3f3e                                     ; $517d: $d2 $3e $3f

	ld b, c                                          ; $5180: $41
	ld b, h                                          ; $5181: $44
	ld b, l                                          ; $5182: $45
	inc de                                           ; $5183: $13
	ldh a, [$08]                                     ; $5184: $f0 $08
	ld d, b                                          ; $5186: $50
	inc [hl]                                         ; $5187: $34
	ld b, [hl]                                       ; $5188: $46
	ld b, b                                          ; $5189: $40
	ld d, h                                          ; $518a: $54
	ld [hl], d                                       ; $518b: $72
	ccf                                              ; $518c: $3f
	ld l, h                                          ; $518d: $6c
	ld e, a                                          ; $518e: $5f
	ld b, l                                          ; $518f: $45
	and b                                            ; $5190: $a0
	cpl                                              ; $5191: $2f
	ld b, e                                          ; $5192: $43
	ld e, [hl]                                       ; $5193: $5e
	dec sp                                           ; $5194: $3b
	inc [hl]                                         ; $5195: $34
	ld l, e                                          ; $5196: $6b
	ld h, d                                          ; $5197: $62
	and c                                            ; $5198: $a1
	ld b, [hl]                                       ; $5199: $46
	ld c, l                                          ; $519a: $4d
	xor h                                            ; $519b: $ac
	db $f4                                           ; $519c: $f4
	rst AddAOntoHL                                          ; $519d: $ef
	ldh a, [$dc]                                     ; $519e: $f0 $dc

Jump_098_51a0:
jr_098_51a0:
	di                                               ; $51a0: $f3
	dec b                                            ; $51a1: $05

jr_098_51a2:
	ldh a, [$ca]                                     ; $51a2: $f0 $ca
	ld b, d                                          ; $51a4: $42
	ldh a, [c]                                       ; $51a5: $f2
	cpl                                              ; $51a6: $2f
	ldh a, [c]                                       ; $51a7: $f2
	dec d                                            ; $51a8: $15
	ldh a, [c]                                       ; $51a9: $f2
	jr nz, jr_098_51a0                               ; $51aa: $20 $f4

Jump_098_51ac:
	inc b                                            ; $51ac: $04
	inc a                                            ; $51ad: $3c
	ld a, [hl-]                                      ; $51ae: $3a
	xor c                                            ; $51af: $a9
	db $dd                                           ; $51b0: $dd
	jp hl                                            ; $51b1: $e9


	ld a, b                                          ; $51b2: $78
	and b                                            ; $51b3: $a0
	cpl                                              ; $51b4: $2f
	ld b, e                                          ; $51b5: $43
	halt                                             ; $51b6: $76
	inc [hl]                                         ; $51b7: $34
	ldh a, [rIF]                                     ; $51b8: $f0 $0f
	add e                                            ; $51ba: $83
	xor b                                            ; $51bb: $a8
	db $ec                                           ; $51bc: $ec
	push bc                                          ; $51bd: $c5
	ldh a, [rBGP]                                    ; $51be: $f0 $47
	ldh a, [$2a]                                     ; $51c0: $f0 $2a
	db $ec                                           ; $51c2: $ec
	jr nz, jr_098_523f                               ; $51c3: $20 $7a

	ld c, [hl]                                       ; $51c5: $4e
	and b                                            ; $51c6: $a0
	ret                                              ; $51c7: $c9


	sbc c                                            ; $51c8: $99
	ccf                                              ; $51c9: $3f
	ld b, l                                          ; $51ca: $45
	xor h                                            ; $51cb: $ac
	ld d, h                                          ; $51cc: $54
	ld b, d                                          ; $51cd: $42
	ldh a, [$d6]                                     ; $51ce: $f0 $d6
	ld b, d                                          ; $51d0: $42
	db $ec                                           ; $51d1: $ec
	jp $134f                                         ; $51d2: $c3 $4f $13


	halt                                             ; $51d5: $76
	ldh a, [rSTAT]                                   ; $51d6: $f0 $41
	ld c, e                                          ; $51d8: $4b
	inc [hl]                                         ; $51d9: $34
	xor $06                                          ; $51da: $ee $06
	ld b, h                                          ; $51dc: $44
	adc l                                            ; $51dd: $8d
	and b                                            ; $51de: $a0
	cpl                                              ; $51df: $2f
	ld b, e                                          ; $51e0: $43
	ld d, d                                          ; $51e1: $52
	dec a                                            ; $51e2: $3d
	inc [hl]                                         ; $51e3: $34
	ld h, h                                          ; $51e4: $64
	sbc [hl]                                         ; $51e5: $9e
	ld c, c                                          ; $51e6: $49
	and c                                            ; $51e7: $a1
	ld b, b                                          ; $51e8: $40
	add hl, sp                                       ; $51e9: $39
	ldh a, [$64]                                     ; $51ea: $f0 $64
	ld b, b                                          ; $51ec: $40
	add hl, sp                                       ; $51ed: $39
	ld a, [hl-]                                      ; $51ee: $3a
	inc de                                           ; $51ef: $13
	ldh a, [$d2]                                     ; $51f0: $f0 $d2
	ld d, c                                          ; $51f2: $51
	ld c, [hl]                                       ; $51f3: $4e
	ld a, [hl-]                                      ; $51f4: $3a
	ld b, l                                          ; $51f5: $45
	xor b                                            ; $51f6: $a8
	xor $08                                          ; $51f7: $ee $08
	ld b, l                                          ; $51f9: $45
	ld d, a                                          ; $51fa: $57
	inc [hl]                                         ; $51fb: $34
	ldh a, [hDisp0_SCX]                                     ; $51fc: $f0 $84
	add h                                            ; $51fe: $84
	ld b, d                                          ; $51ff: $42
	ldh a, [$38]                                     ; $5200: $f0 $38
	ld d, e                                          ; $5202: $53
	xor h                                            ; $5203: $ac
	pop af                                           ; $5204: $f1
	ld d, e                                          ; $5205: $53
	db $f4                                           ; $5206: $f4
	and b                                            ; $5207: $a0
	ld a, $6e                                        ; $5208: $3e $6e
	ld d, c                                          ; $520a: $51
	jr c, jr_098_524e                                ; $520b: $38 $41

	ld b, h                                          ; $520d: $44
	ld b, l                                          ; $520e: $45
	and b                                            ; $520f: $a0
	cpl                                              ; $5210: $2f
	ld b, e                                          ; $5211: $43
	ld l, e                                          ; $5212: $6b
	ld d, e                                          ; $5213: $53
	and c                                            ; $5214: $a1
	jr c, jr_098_524f                                ; $5215: $38 $38

	ld b, d                                          ; $5217: $42
	jr c, jr_098_5252                                ; $5218: $38 $38

	ld b, d                                          ; $521a: $42
	xor h                                            ; $521b: $ac
	db $ec                                           ; $521c: $ec
	xor $42                                          ; $521d: $ee $42
	ld d, h                                          ; $521f: $54
	ld c, c                                          ; $5220: $49
	xor b                                            ; $5221: $a8
	ld e, e                                          ; $5222: $5b
	ld d, [hl]                                       ; $5223: $56
	ld b, [hl]                                       ; $5224: $46
	inc [hl]                                         ; $5225: $34
	xor $1d                                          ; $5226: $ee $1d
	ld a, $3d                                        ; $5228: $3e $3d
	inc a                                            ; $522a: $3c
	ld d, b                                          ; $522b: $50
	ld a, [hl-]                                      ; $522c: $3a
	and b                                            ; $522d: $a0
	ld e, b                                          ; $522e: $58
	ld b, [hl]                                       ; $522f: $46
	inc [hl]                                         ; $5230: $34
	db $ec                                           ; $5231: $ec
	rlca                                             ; $5232: $07
	xor b                                            ; $5233: $a8
	ld [de], a                                       ; $5234: $12
	and b                                            ; $5235: $a0
	cpl                                              ; $5236: $2f
	ld b, e                                          ; $5237: $43
	ld c, e                                          ; $5238: $4b
	ld [hl], h                                       ; $5239: $74
	xor l                                            ; $523a: $ad
	ld h, a                                          ; $523b: $67
	ld d, h                                          ; $523c: $54
	add hl, sp                                       ; $523d: $39
	adc l                                            ; $523e: $8d

jr_098_523f:
	and b                                            ; $523f: $a0
	ld b, b                                          ; $5240: $40
	ld b, c                                          ; $5241: $41
	ld a, [hl-]                                      ; $5242: $3a
	inc [hl]                                         ; $5243: $34
	ld a, a                                          ; $5244: $7f
	ld b, d                                          ; $5245: $42
	pop af                                           ; $5246: $f1
	or h                                             ; $5247: $b4
	ld e, l                                          ; $5248: $5d
	dec a                                            ; $5249: $3d
	pop af                                           ; $524a: $f1
	dec l                                            ; $524b: $2d
	inc de                                           ; $524c: $13
	sub h                                            ; $524d: $94

jr_098_524e:
	ld d, c                                          ; $524e: $51

jr_098_524f:
	ld a, [hl-]                                      ; $524f: $3a
	ld b, l                                          ; $5250: $45
	dec [hl]                                         ; $5251: $35

jr_098_5252:
	halt                                             ; $5252: $76
	db $ed                                           ; $5253: $ed
	ld b, e                                          ; $5254: $43
	ld a, [hl-]                                      ; $5255: $3a
	ld [hl], h                                       ; $5256: $74
	ld c, b                                          ; $5257: $48
	and b                                            ; $5258: $a0
	cpl                                              ; $5259: $2f
	ld b, e                                          ; $525a: $43
	pop af                                           ; $525b: $f1
	halt                                             ; $525c: $76
	ld l, [hl]                                       ; $525d: $6e
	jr c, @+$41                                      ; $525e: $38 $3f

	ccf                                              ; $5260: $3f
	ld c, a                                          ; $5261: $4f
	xor h                                            ; $5262: $ac
	db $eb                                           ; $5263: $eb
	inc [hl]                                         ; $5264: $34
	inc a                                            ; $5265: $3c
	ld c, b                                          ; $5266: $48
	add hl, bc                                       ; $5267: $09
	ld b, b                                          ; $5268: $40
	add hl, sp                                       ; $5269: $39
	ld b, b                                          ; $526a: $40
	add hl, sp                                       ; $526b: $39
	xor h                                            ; $526c: $ac
	db $ec                                           ; $526d: $ec
	adc l                                            ; $526e: $8d
	ld c, c                                          ; $526f: $49
	ld h, a                                          ; $5270: $67
	ld d, h                                          ; $5271: $54
	add hl, sp                                       ; $5272: $39
	adc l                                            ; $5273: $8d
	and b                                            ; $5274: $a0
	cpl                                              ; $5275: $2f
	ld b, e                                          ; $5276: $43
	db $dd                                           ; $5277: $dd
	ld h, a                                          ; $5278: $67
	ld d, l                                          ; $5279: $55
	inc a                                            ; $527a: $3c
	and b                                            ; $527b: $a0
	ld h, h                                          ; $527c: $64
	ld h, h                                          ; $527d: $64
	inc [hl]                                         ; $527e: $34
	ld b, b                                          ; $527f: $40
	ld b, d                                          ; $5280: $42
	ldh a, [$c0]                                     ; $5281: $f0 $c0
	ld a, a                                          ; $5283: $7f
	ld b, h                                          ; $5284: $44
	adc l                                            ; $5285: $8d
	and b                                            ; $5286: $a0
	cpl                                              ; $5287: $2f
	ld b, e                                          ; $5288: $43
	ld b, [hl]                                       ; $5289: $46
	dec sp                                           ; $528a: $3b
	inc [hl]                                         ; $528b: $34
	di                                               ; $528c: $f3
	dec a                                            ; $528d: $3d
	ldh a, [c]                                       ; $528e: $f2
	or $f1                                           ; $528f: $f6 $f1
	ld b, h                                          ; $5291: $44
	ld b, h                                          ; $5292: $44
	xor b                                            ; $5293: $a8
	ret                                              ; $5294: $c9


	ld [hl], d                                       ; $5295: $72
	ccf                                              ; $5296: $3f
	ld h, a                                          ; $5297: $67
	ld d, h                                          ; $5298: $54
	add hl, sp                                       ; $5299: $39
	adc l                                            ; $529a: $8d
	and b                                            ; $529b: $a0
	db $dd                                           ; $529c: $dd
	db $ed                                           ; $529d: $ed
	jp nc, $0ef1                                     ; $529e: $d2 $f1 $0e

	ld h, h                                          ; $52a1: $64
	add hl, sp                                       ; $52a2: $39
	adc l                                            ; $52a3: $8d
	xor b                                            ; $52a4: $a8
	db $ed                                           ; $52a5: $ed
	jp nc, $2fa0                                     ; $52a6: $d2 $a0 $2f

	ld [hl-], a                                      ; $52a9: $32
	db $ed                                           ; $52aa: $ed
	jp nc, $3f3b                                     ; $52ab: $d2 $3b $3f

	xor h                                            ; $52ae: $ac
	ld l, e                                          ; $52af: $6b
	db $f4                                           ; $52b0: $f4
	dec h                                            ; $52b1: $25
	ld c, d                                          ; $52b2: $4a
	ld c, a                                          ; $52b3: $4f
	db $f4                                           ; $52b4: $f4
	xor $3b                                          ; $52b5: $ee $3b
	ccf                                              ; $52b7: $3f
	ld c, [hl]                                       ; $52b8: $4e
	ld a, [hl-]                                      ; $52b9: $3a
	ld c, b                                          ; $52ba: $48
	and e                                            ; $52bb: $a3
	ld b, [hl]                                       ; $52bc: $46
	dec sp                                           ; $52bd: $3b
	inc [hl]                                         ; $52be: $34
	pop af                                           ; $52bf: $f1
	ld c, b                                          ; $52c0: $48
	ld b, h                                          ; $52c1: $44
	and b                                            ; $52c2: $a0
	cpl                                              ; $52c3: $2f
	ld [$093a], a                                    ; $52c4: $ea $3a $09
	cpl                                              ; $52c7: $2f
	ld d, h                                          ; $52c8: $54
	ld d, h                                          ; $52c9: $54
	ld c, e                                          ; $52ca: $4b
	pop af                                           ; $52cb: $f1
	dec h                                            ; $52cc: $25
	ld a, c                                          ; $52cd: $79
	ccf                                              ; $52ce: $3f
	inc [hl]                                         ; $52cf: $34
	ldh a, [$e1]                                     ; $52d0: $f0 $e1
	ldh a, [rSB]                                     ; $52d2: $f0 $01
	ld c, [hl]                                       ; $52d4: $4e
	ld b, c                                          ; $52d5: $41
	ld b, h                                          ; $52d6: $44
	add hl, bc                                       ; $52d7: $09
	cpl                                              ; $52d8: $2f
	db $dd                                           ; $52d9: $dd
	xor $06                                          ; $52da: $ee $06
	ld b, a                                          ; $52dc: $47
	ldh a, [$fc]                                     ; $52dd: $f0 $fc
	add hl, sp                                       ; $52df: $39
	sub a                                            ; $52e0: $97
	add hl, bc                                       ; $52e1: $09
	cpl                                              ; $52e2: $2f
	ld b, e                                          ; $52e3: $43
	ld b, [hl]                                       ; $52e4: $46
	dec sp                                           ; $52e5: $3b
	inc [hl]                                         ; $52e6: $34
	sub e                                            ; $52e7: $93
	ldh a, [rSC]                                     ; $52e8: $f0 $02
	ld e, c                                          ; $52ea: $59
	sub e                                            ; $52eb: $93
	db $f4                                           ; $52ec: $f4
	ld d, a                                          ; $52ed: $57
	ldh a, [c]                                       ; $52ee: $f2
	ld sp, $a844                                     ; $52ef: $31 $44 $a8
	ldh a, [$6e]                                     ; $52f2: $f0 $6e
	ld e, c                                          ; $52f4: $59
	ld a, l                                          ; $52f5: $7d
	pop af                                           ; $52f6: $f1
	ld b, l                                          ; $52f7: $45
	add [hl]                                         ; $52f8: $86
	ldh a, [$de]                                     ; $52f9: $f0 $de
	ld e, c                                          ; $52fb: $59
	add [hl]                                         ; $52fc: $86
	ldh a, [$3d]                                     ; $52fd: $f0 $3d
	ld h, l                                          ; $52ff: $65
	ldh a, [$de]                                     ; $5300: $f0 $de
	sbc b                                            ; $5302: $98
	ldh a, [$7c]                                     ; $5303: $f0 $7c
	add e                                            ; $5305: $83
	xor b                                            ; $5306: $a8
	ld b, e                                          ; $5307: $43
	ldh a, [rHDMA4]                                  ; $5308: $f0 $54
	ldh a, [rAUD1HIGH]                               ; $530a: $f0 $14
	ld b, l                                          ; $530c: $45
	inc [hl]                                         ; $530d: $34
	add a                                            ; $530e: $87
	ldh a, [c]                                       ; $530f: $f2
	rst SubAFromDE                                          ; $5310: $df
	ld h, d                                          ; $5311: $62
	ldh a, [c]                                       ; $5312: $f2
	sub [hl]                                         ; $5313: $96
	ld e, l                                          ; $5314: $5d
	ldh a, [$eb]                                     ; $5315: $f0 $eb
	inc de                                           ; $5317: $13
	ld h, h                                          ; $5318: $64
	sbc [hl]                                         ; $5319: $9e
	ld b, a                                          ; $531a: $47
	ld c, e                                          ; $531b: $4b
	ldh a, [rAUD1LOW]                                ; $531c: $f0 $13
	di                                               ; $531e: $f3
	dec [hl]                                         ; $531f: $35
	ld b, d                                          ; $5320: $42
	add d                                            ; $5321: $82
	pop af                                           ; $5322: $f1
	adc h                                            ; $5323: $8c
	ld b, h                                          ; $5324: $44
	ld a, [hl-]                                      ; $5325: $3a
	and b                                            ; $5326: $a0
	ldh a, [rHDMA5]                                  ; $5327: $f0 $55
	ldh a, [rBCPS]                                   ; $5329: $f0 $68
	ld a, [hl-]                                      ; $532b: $3a
	ldh a, [$f8]                                     ; $532c: $f0 $f8
	ld b, h                                          ; $532e: $44
	ld a, [hl-]                                      ; $532f: $3a
	xor b                                            ; $5330: $a8
	halt                                             ; $5331: $76
	ld b, a                                          ; $5332: $47
	db $ed                                           ; $5333: $ed
	ld b, e                                          ; $5334: $43
	xor h                                            ; $5335: $ac
	add a                                            ; $5336: $87
	ld e, h                                          ; $5337: $5c
	ld a, [hl-]                                      ; $5338: $3a
	ldh a, [c]                                       ; $5339: $f2
	rst SubAFromDE                                          ; $533a: $df
	sbc l                                            ; $533b: $9d
	ld d, b                                          ; $533c: $50
	jr c, jr_098_5385                                ; $533d: $38 $46

	ld c, [hl]                                       ; $533f: $4e
	adc l                                            ; $5340: $8d
	and b                                            ; $5341: $a0
	cpl                                              ; $5342: $2f
	ld b, e                                          ; $5343: $43
	ldh a, [$5a]                                     ; $5344: $f0 $5a
	ld e, c                                          ; $5346: $59
	dec sp                                           ; $5347: $3b
	inc [hl]                                         ; $5348: $34
	ret nz                                           ; $5349: $c0

	xor b                                            ; $534a: $a8
	ld e, d                                          ; $534b: $5a
	ld b, c                                          ; $534c: $41
	ld a, [hl-]                                      ; $534d: $3a
	ldh a, [c]                                       ; $534e: $f2
	rst SubAFromDE                                          ; $534f: $df
	and c                                            ; $5350: $a1
	ld b, b                                          ; $5351: $40
	ld c, l                                          ; $5352: $4d
	ld c, e                                          ; $5353: $4b
	ld b, h                                          ; $5354: $44
	ld a, [hl-]                                      ; $5355: $3a
	ld [hl], h                                       ; $5356: $74
	xor h                                            ; $5357: $ac
	ld h, h                                          ; $5358: $64
	jr c, jr_098_538f                                ; $5359: $38 $34

	ld a, [hl-]                                      ; $535b: $3a
	ld b, c                                          ; $535c: $41
	inc a                                            ; $535d: $3c
	ld a, b                                          ; $535e: $78
	ld c, [hl]                                       ; $535f: $4e
	adc l                                            ; $5360: $8d
	and d                                            ; $5361: $a2
	cpl                                              ; $5362: $2f
	ld b, e                                          ; $5363: $43
	ld h, h                                          ; $5364: $64
	sbc [hl]                                         ; $5365: $9e
	ld a, [hl-]                                      ; $5366: $3a
	ld [hl], h                                       ; $5367: $74
	xor h                                            ; $5368: $ac
	ld [hl], b                                       ; $5369: $70
	ld d, d                                          ; $536a: $52
	inc a                                            ; $536b: $3c
	ld b, b                                          ; $536c: $40
	add hl, sp                                       ; $536d: $39
	ld c, c                                          ; $536e: $49
	ld a, $3f                                        ; $536f: $3e $3f
	ld c, a                                          ; $5371: $4f
	xor l                                            ; $5372: $ad
	add hl, sp                                       ; $5373: $39
	ld h, e                                          ; $5374: $63
	dec sp                                           ; $5375: $3b
	inc [hl]                                         ; $5376: $34
	ldh a, [c]                                       ; $5377: $f2
	ld [hl], b                                       ; $5378: $70
	ld b, h                                          ; $5379: $44
	and d                                            ; $537a: $a2
	cpl                                              ; $537b: $2f
	ld b, e                                          ; $537c: $43
	db $ec                                           ; $537d: $ec
	inc de                                           ; $537e: $13
	pop af                                           ; $537f: $f1
	call nz, $bcf1                                   ; $5380: $c4 $f1 $bc
	ld e, l                                          ; $5383: $5d
	ld b, h                                          ; $5384: $44

jr_098_5385:
	ld c, h                                          ; $5385: $4c
	and b                                            ; $5386: $a0
	ld l, e                                          ; $5387: $6b
	inc [hl]                                         ; $5388: $34
	ldh a, [$d0]                                     ; $5389: $f0 $d0
	ld a, a                                          ; $538b: $7f

Jump_098_538c:
	ldh a, [hDisp1_WY]                                     ; $538c: $f0 $95
	ld a, [hl-]                                      ; $538e: $3a

jr_098_538f:
	ld d, h                                          ; $538f: $54
	ld c, c                                          ; $5390: $49
	inc de                                           ; $5391: $13
	add d                                            ; $5392: $82
	dec sp                                           ; $5393: $3b
	ccf                                              ; $5394: $3f
	ld c, [hl]                                       ; $5395: $4e
	ld b, c                                          ; $5396: $41
	ld b, h                                          ; $5397: $44
	ld b, l                                          ; $5398: $45
	and b                                            ; $5399: $a0
	cpl                                              ; $539a: $2f
	ld b, e                                          ; $539b: $43
	ld b, [hl]                                       ; $539c: $46
	ld e, c                                          ; $539d: $59
	ld b, c                                          ; $539e: $41
	inc [hl]                                         ; $539f: $34
	adc e                                            ; $53a0: $8b
	ldh a, [$72]                                     ; $53a1: $f0 $72
	ld c, c                                          ; $53a3: $49
	ld a, [hl-]                                      ; $53a4: $3a
	ld b, c                                          ; $53a5: $41
	inc a                                            ; $53a6: $3c
	inc de                                           ; $53a7: $13
	ld a, b                                          ; $53a8: $78
	ld c, [hl]                                       ; $53a9: $4e
	ld b, c                                          ; $53aa: $41
	ld e, e                                          ; $53ab: $5b
	ld d, [hl]                                       ; $53ac: $56
	ld a, [hl-]                                      ; $53ad: $3a
	inc a                                            ; $53ae: $3c
	dec sp                                           ; $53af: $3b
	dec a                                            ; $53b0: $3d
	and b                                            ; $53b1: $a0
	ld h, h                                          ; $53b2: $64
	jr c, jr_098_53e9                                ; $53b3: $38 $34

	ldh a, [rAUD3ENA]                                ; $53b5: $f0 $1a
	ldh a, [rBCPD]                                   ; $53b7: $f0 $69
	db $ec                                           ; $53b9: $ec
	daa                                              ; $53ba: $27
	and d                                            ; $53bb: $a2
	cpl                                              ; $53bc: $2f
	ld b, e                                          ; $53bd: $43
	ldh a, [$6f]                                     ; $53be: $f0 $6f
	dec sp                                           ; $53c0: $3b
	dec a                                            ; $53c1: $3d
	xor l                                            ; $53c2: $ad
	ld b, [hl]                                       ; $53c3: $46
	ld c, l                                          ; $53c4: $4d
	inc [hl]                                         ; $53c5: $34
	adc e                                            ; $53c6: $8b
	ldh a, [$72]                                     ; $53c7: $f0 $72
	ld c, e                                          ; $53c9: $4b
	xor h                                            ; $53ca: $ac
	ld e, d                                          ; $53cb: $5a
	ld d, h                                          ; $53cc: $54
	ld d, d                                          ; $53cd: $52
	ld c, d                                          ; $53ce: $4a
	ldh a, [$e1]                                     ; $53cf: $f0 $e1
	ldh a, [rSB]                                     ; $53d1: $f0 $01
	dec a                                            ; $53d3: $3d
	ld b, d                                          ; $53d4: $42
	inc a                                            ; $53d5: $3c
	ld a, [hl-]                                      ; $53d6: $3a
	and c                                            ; $53d7: $a1
	db $eb                                           ; $53d8: $eb
	ld e, l                                          ; $53d9: $5d
	inc [hl]                                         ; $53da: $34
	pop af                                           ; $53db: $f1
	jp hl                                            ; $53dc: $e9


	inc a                                            ; $53dd: $3c
	dec sp                                           ; $53de: $3b
	dec a                                            ; $53df: $3d
	ld b, l                                          ; $53e0: $45
	and b                                            ; $53e1: $a0
	cpl                                              ; $53e2: $2f
	ld b, e                                          ; $53e3: $43
	ld h, h                                          ; $53e4: $64
	sbc [hl]                                         ; $53e5: $9e
	ld a, [hl-]                                      ; $53e6: $3a
	ld [hl], h                                       ; $53e7: $74
	xor h                                            ; $53e8: $ac

jr_098_53e9:
	halt                                             ; $53e9: $76
	ld d, e                                          ; $53ea: $53
	ldh a, [$e1]                                     ; $53eb: $f0 $e1
	ldh a, [rSB]                                     ; $53ed: $f0 $01
	ld e, a                                          ; $53ef: $5f
	dec sp                                           ; $53f0: $3b
	ccf                                              ; $53f1: $3f
	add d                                            ; $53f2: $82
	dec sp                                           ; $53f3: $3b
	dec a                                            ; $53f4: $3d
	ld d, b                                          ; $53f5: $50
	xor h                                            ; $53f6: $ac
	sbc $34                                          ; $53f7: $de $34
	ldh a, [$e1]                                     ; $53f9: $f0 $e1
	ldh a, [rSB]                                     ; $53fb: $f0 $01
	ld l, [hl]                                       ; $53fd: $6e
	ld d, e                                          ; $53fe: $53
	dec sp                                           ; $53ff: $3b
	ccf                                              ; $5400: $3f
	and b                                            ; $5401: $a0
	halt                                             ; $5402: $76
	ld c, e                                          ; $5403: $4b
	inc [hl]                                         ; $5404: $34
	ld h, h                                          ; $5405: $64
	sbc [hl]                                         ; $5406: $9e
	ld b, d                                          ; $5407: $42
	db $ed                                           ; $5408: $ed
	ld l, a                                          ; $5409: $6f
	ld h, c                                          ; $540a: $61
	ld h, d                                          ; $540b: $62
	inc de                                           ; $540c: $13
	ld d, l                                          ; $540d: $55
	ld b, c                                          ; $540e: $41
	ld c, d                                          ; $540f: $4a
	ld b, h                                          ; $5410: $44
	ld a, [hl-]                                      ; $5411: $3a
	ld c, b                                          ; $5412: $48
	dec [hl]                                         ; $5413: $35
	inc hl                                           ; $5414: $23
	inc de                                           ; $5415: $13
	ld c, d                                          ; $5416: $4a
	ld c, a                                          ; $5417: $4f
	inc [hl]                                         ; $5418: $34
	jr c, @+$3a                                      ; $5419: $38 $38

	db $ec                                           ; $541b: $ec
	ret c                                            ; $541c: $d8

	inc a                                            ; $541d: $3c
	inc de                                           ; $541e: $13
	pop af                                           ; $541f: $f1
	ld hl, sp-$0f                                    ; $5420: $f8 $f1
	ld d, b                                          ; $5422: $50
	ld c, a                                          ; $5423: $4f
	ld a, [hl-]                                      ; $5424: $3a
	ld e, b                                          ; $5425: $58
	ld b, b                                          ; $5426: $40
	add hl, sp                                       ; $5427: $39
	ld b, h                                          ; $5428: $44
	ld a, $a0                                        ; $5429: $3e $a0
	cpl                                              ; $542b: $2f
	ld b, e                                          ; $542c: $43
	ld c, a                                          ; $542d: $4f
	add hl, sp                                       ; $542e: $39
	ldh a, [rHDMA4]                                  ; $542f: $f0 $54
	ld a, $4a                                        ; $5431: $3e $4a
	inc de                                           ; $5433: $13
	ldh a, [c]                                       ; $5434: $f2
	ld a, d                                          ; $5435: $7a
	pop af                                           ; $5436: $f1
	ld a, b                                          ; $5437: $78
	ld c, c                                          ; $5438: $49
	ld d, h                                          ; $5439: $54
	ld b, h                                          ; $543a: $44
	dec sp                                           ; $543b: $3b
	dec a                                            ; $543c: $3d
	ld b, c                                          ; $543d: $41
	ld b, h                                          ; $543e: $44
	ld b, l                                          ; $543f: $45
	and b                                            ; $5440: $a0
	db $ed                                           ; $5441: $ed
	ld b, l                                          ; $5442: $45
	inc [hl]                                         ; $5443: $34
	db $ec                                           ; $5444: $ec
	rrca                                             ; $5445: $0f
	ld a, [hl-]                                      ; $5446: $3a
	and b                                            ; $5447: $a0
	cpl                                              ; $5448: $2f
	ld b, e                                          ; $5449: $43
	ld h, h                                          ; $544a: $64
	jr c, jr_098_5481                                ; $544b: $38 $34

	ld d, h                                          ; $544d: $54
	ld d, b                                          ; $544e: $50
	inc [hl]                                         ; $544f: $34
	ldh a, [$e1]                                     ; $5450: $f0 $e1
	ldh a, [rSB]                                     ; $5452: $f0 $01
	ld c, [hl]                                       ; $5454: $4e
	ld a, [hl-]                                      ; $5455: $3a
	and b                                            ; $5456: $a0
	cpl                                              ; $5457: $2f
	ld b, e                                          ; $5458: $43
	db $ed                                           ; $5459: $ed
	ld d, l                                          ; $545a: $55
	inc [hl]                                         ; $545b: $34
	ldh a, [$6f]                                     ; $545c: $f0 $6f
	dec sp                                           ; $545e: $3b
	dec a                                            ; $545f: $3d
	sub a                                            ; $5460: $97
	and b                                            ; $5461: $a0
	halt                                             ; $5462: $76
	ldh a, [rSTAT]                                   ; $5463: $f0 $41
	ld c, e                                          ; $5465: $4b
	xor h                                            ; $5466: $ac
	ld a, [hl-]                                      ; $5467: $3a
	ld b, c                                          ; $5468: $41
	ccf                                              ; $5469: $3f
	ldh a, [$9c]                                     ; $546a: $f0 $9c
	jr c, jr_098_54af                                ; $546c: $38 $41

	ld b, h                                          ; $546e: $44
	xor b                                            ; $546f: $a8
	ld d, h                                          ; $5470: $54
	ld b, c                                          ; $5471: $41
	ld a, [hl-]                                      ; $5472: $3a
	ld b, a                                          ; $5473: $47
	ld c, a                                          ; $5474: $4f
	ldh a, [$9c]                                     ; $5475: $f0 $9c
	jr c, jr_098_54ef                                ; $5477: $38 $76

	ld h, d                                          ; $5479: $62
	di                                               ; $547a: $f3
	ld a, [de]                                       ; $547b: $1a
	dec sp                                           ; $547c: $3b
	dec a                                            ; $547d: $3d
	xor h                                            ; $547e: $ac
	ldh a, [$d4]                                     ; $547f: $f0 $d4

jr_098_5481:
	ld h, d                                          ; $5481: $62
	db $f4                                           ; $5482: $f4
	sbc a                                            ; $5483: $9f
	add hl, sp                                       ; $5484: $39
	adc l                                            ; $5485: $8d
	and b                                            ; $5486: $a0
	cpl                                              ; $5487: $2f
	ld b, e                                          ; $5488: $43
	ld h, h                                          ; $5489: $64
	sbc [hl]                                         ; $548a: $9e
	ld c, e                                          ; $548b: $4b
	inc [hl]                                         ; $548c: $34
	ldh a, [$08]                                     ; $548d: $f0 $08
	ld c, c                                          ; $548f: $49
	ld b, c                                          ; $5490: $41
	ld e, d                                          ; $5491: $5a
	ldh a, [c]                                       ; $5492: $f2
	reti                                             ; $5493: $d9


	ld b, a                                          ; $5494: $47
	inc de                                           ; $5495: $13
	ldh a, [$d9]                                     ; $5496: $f0 $d9
	dec a                                            ; $5498: $3d
	ld a, [hl-]                                      ; $5499: $3a
	inc a                                            ; $549a: $3c
	dec sp                                           ; $549b: $3b
	dec a                                            ; $549c: $3d
	db $ec                                           ; $549d: $ec
	ret c                                            ; $549e: $d8

	inc a                                            ; $549f: $3c
	and b                                            ; $54a0: $a0
	jr c, jr_098_5511                                ; $54a1: $38 $6e

	jr c, jr_098_5513                                ; $54a3: $38 $6e

	xor h                                            ; $54a5: $ac
	halt                                             ; $54a6: $76
	ld d, e                                          ; $54a7: $53
	jr c, jr_098_54e7                                ; $54a8: $38 $3d

	inc a                                            ; $54aa: $3c
	ld d, b                                          ; $54ab: $50
	ld d, h                                          ; $54ac: $54
	ld b, b                                          ; $54ad: $40
	xor h                                            ; $54ae: $ac

jr_098_54af:
	db $ed                                           ; $54af: $ed
	dec d                                            ; $54b0: $15
	ldh a, [$31]                                     ; $54b1: $f0 $31
	ldh a, [$7f]                                     ; $54b3: $f0 $7f
	pop af                                           ; $54b5: $f1
	ld c, e                                          ; $54b6: $4b
	ldh a, [$3e]                                     ; $54b7: $f0 $3e
	ld b, d                                          ; $54b9: $42
	ldh a, [$7f]                                     ; $54ba: $f0 $7f
	ld h, d                                          ; $54bc: $62
	inc de                                           ; $54bd: $13
	pop af                                           ; $54be: $f1
	xor l                                            ; $54bf: $ad
	db $f4                                           ; $54c0: $f4
	adc l                                            ; $54c1: $8d
	ld c, d                                          ; $54c2: $4a
	ld e, h                                          ; $54c3: $5c
	dec a                                            ; $54c4: $3d
	ld b, c                                          ; $54c5: $41
	ld b, h                                          ; $54c6: $44
	ld b, l                                          ; $54c7: $45
	and b                                            ; $54c8: $a0
	cpl                                              ; $54c9: $2f
	ld b, e                                          ; $54ca: $43
	xor $2d                                          ; $54cb: $ee $2d
	xor $2d                                          ; $54cd: $ee $2d
	xor h                                            ; $54cf: $ac
	ld b, b                                          ; $54d0: $40
	ld c, l                                          ; $54d1: $4d
	ld c, e                                          ; $54d2: $4b
	ld b, [hl]                                       ; $54d3: $46
	ld d, a                                          ; $54d4: $57
	ld d, e                                          ; $54d5: $53
	ld c, c                                          ; $54d6: $49
	add hl, sp                                       ; $54d7: $39
	and b                                            ; $54d8: $a0
	db $ec                                           ; $54d9: $ec
	reti                                             ; $54da: $d9


	ldh a, [rHDMA1]                                  ; $54db: $f0 $51
	add b                                            ; $54dd: $80
	ldh a, [$8c]                                     ; $54de: $f0 $8c
	ld e, h                                          ; $54e0: $5c
	ld c, a                                          ; $54e1: $4f
	ld b, d                                          ; $54e2: $42

jr_098_54e3:
	ld c, e                                          ; $54e3: $4b
	xor h                                            ; $54e4: $ac
	ldh a, [$f9]                                     ; $54e5: $f0 $f9

jr_098_54e7:
	ld b, h                                          ; $54e7: $44
	ld a, [hl-]                                      ; $54e8: $3a
	xor l                                            ; $54e9: $ad
	db $ed                                           ; $54ea: $ed
	dec d                                            ; $54eb: $15
	ld b, b                                          ; $54ec: $40
	add hl, sp                                       ; $54ed: $39
	ld [hl], a                                       ; $54ee: $77

jr_098_54ef:
	add hl, sp                                       ; $54ef: $39
	ld b, h                                          ; $54f0: $44
	ld e, a                                          ; $54f1: $5f
	add hl, sp                                       ; $54f2: $39
	and b                                            ; $54f3: $a0
	cpl                                              ; $54f4: $2f
	ld b, e                                          ; $54f5: $43
	xor $2d                                          ; $54f6: $ee $2d
	inc [hl]                                         ; $54f8: $34
	or [hl]                                          ; $54f9: $b6
	xor b                                            ; $54fa: $a8
	ld e, e                                          ; $54fb: $5b
	ld d, [hl]                                       ; $54fc: $56
	ld b, [hl]                                       ; $54fd: $46
	inc [hl]                                         ; $54fe: $34
	db $ed                                           ; $54ff: $ed
	ld e, b                                          ; $5500: $58
	and b                                            ; $5501: $a0
	ld c, e                                          ; $5502: $4b
	ld [hl], h                                       ; $5503: $74
	inc [hl]                                         ; $5504: $34
	ld c, e                                          ; $5505: $4b
	ld [hl], h                                       ; $5506: $74
	xor l                                            ; $5507: $ad
	halt                                             ; $5508: $76
	ldh a, [rSTAT]                                   ; $5509: $f0 $41
	ld [hl], h                                       ; $550b: $74
	inc [hl]                                         ; $550c: $34
	ldh a, [$e1]                                     ; $550d: $f0 $e1
	ldh a, [rSB]                                     ; $550f: $f0 $01

jr_098_5511:
	pop af                                           ; $5511: $f1
	cp [hl]                                          ; $5512: $be

jr_098_5513:
	ld b, h                                          ; $5513: $44
	ld e, l                                          ; $5514: $5d
	ld c, e                                          ; $5515: $4b
	inc de                                           ; $5516: $13
	pop af                                           ; $5517: $f1
	jr jr_098_5552                                   ; $5518: $18 $38

	ld c, a                                          ; $551a: $4f
	ld b, c                                          ; $551b: $41
	ld a, [hl-]                                      ; $551c: $3a
	and b                                            ; $551d: $a0
	cpl                                              ; $551e: $2f
	ld b, e                                          ; $551f: $43
	ld h, h                                          ; $5520: $64
	sbc [hl]                                         ; $5521: $9e
	ld b, h                                          ; $5522: $44
	ld e, l                                          ; $5523: $5d
	ld b, h                                          ; $5524: $44
	ld b, l                                          ; $5525: $45
	and b                                            ; $5526: $a0
	add hl, bc                                       ; $5527: $09
	cpl                                              ; $5528: $2f
	ld h, $ed                                        ; $5529: $26 $ed
	rst JumpTable                                          ; $552b: $c7
	pop af                                           ; $552c: $f1
	ld [de], a                                       ; $552d: $12
	ld e, c                                          ; $552e: $59
	ld h, l                                          ; $552f: $65
	dec h                                            ; $5530: $25
	add hl, bc                                       ; $5531: $09
	cpl                                              ; $5532: $2f
	ld b, e                                          ; $5533: $43
	ld b, [hl]                                       ; $5534: $46
	ld c, l                                          ; $5535: $4d
	inc [hl]                                         ; $5536: $34
	ld h, h                                          ; $5537: $64

jr_098_5538:
	pop af                                           ; $5538: $f1
	call c, Call_098_4158                            ; $5539: $dc $58 $41
	inc a                                            ; $553c: $3c
	ld a, [hl-]                                      ; $553d: $3a
	xor c                                            ; $553e: $a9
	ld c, e                                          ; $553f: $4b
	ld e, c                                          ; $5540: $59
	jr c, jr_098_54e3                                ; $5541: $38 $a0

	cpl                                              ; $5543: $2f
	db $f4                                           ; $5544: $f4
	sbc [hl]                                         ; $5545: $9e
	jr nc, jr_098_5538                               ; $5546: $30 $f0

	inc d                                            ; $5548: $14
	pop af                                           ; $5549: $f1
	push de                                          ; $554a: $d5
	di                                               ; $554b: $f3
	ld [hl], h                                       ; $554c: $74
	ld c, d                                          ; $554d: $4a
	ld e, c                                          ; $554e: $59
	ld d, c                                          ; $554f: $51
	and b                                            ; $5550: $a0
	cpl                                              ; $5551: $2f

jr_098_5552:
	ld b, e                                          ; $5552: $43
	db $ed                                           ; $5553: $ed
	ld d, l                                          ; $5554: $55
	ld e, c                                          ; $5555: $59
	and b                                            ; $5556: $a0
	cpl                                              ; $5557: $2f
	ld b, e                                          ; $5558: $43
	add sp, $04                                      ; $5559: $e8 $04
	inc a                                            ; $555b: $3c
	ld d, b                                          ; $555c: $50
	add hl, bc                                       ; $555d: $09
	cpl                                              ; $555e: $2f
	ld b, e                                          ; $555f: $43
	ldh a, [rAUD1HIGH]                               ; $5560: $f0 $14
	pop af                                           ; $5562: $f1
	push de                                          ; $5563: $d5
	di                                               ; $5564: $f3
	ld [hl], h                                       ; $5565: $74
	ld h, d                                          ; $5566: $62
	ld c, a                                          ; $5567: $4f
	ld d, b                                          ; $5568: $50
	dec sp                                           ; $5569: $3b
	dec a                                            ; $556a: $3d
	xor b                                            ; $556b: $a8
	db $ec                                           ; $556c: $ec
	rla                                              ; $556d: $17
	and b                                            ; $556e: $a0
	cpl                                              ; $556f: $2f
	ld b, e                                          ; $5570: $43
	add sp, $04                                      ; $5571: $e8 $04
	ld c, c                                          ; $5573: $49
	inc [hl]                                         ; $5574: $34
	add hl, bc                                       ; $5575: $09
	cpl                                              ; $5576: $2f
	ld b, e                                          ; $5577: $43
	db $ec                                           ; $5578: $ec
	add hl, bc                                       ; $5579: $09
	ld [$ac88], a                                    ; $557a: $ea $88 $ac
	ret                                              ; $557d: $c9


	inc [hl]                                         ; $557e: $34
	ld [$a034], a                                    ; $557f: $ea $34 $a0
	cpl                                              ; $5582: $2f
	ld b, e                                          ; $5583: $43
	ld e, b                                          ; $5584: $58
	ccf                                              ; $5585: $3f
	inc [hl]                                         ; $5586: $34
	ldh a, [hDisp1_OBP1]                                     ; $5587: $f0 $94
	pop af                                           ; $5589: $f1
	ld l, l                                          ; $558a: $6d
	ld b, a                                          ; $558b: $47
	inc de                                           ; $558c: $13
	sub h                                            ; $558d: $94
	inc a                                            ; $558e: $3c
	ld e, l                                          ; $558f: $5d
	ld c, [hl]                                       ; $5590: $4e
	ld c, c                                          ; $5591: $49
	ld d, c                                          ; $5592: $51
	ld c, [hl]                                       ; $5593: $4e
	inc a                                            ; $5594: $3c
	ld c, b                                          ; $5595: $48
	and b                                            ; $5596: $a0
	cpl                                              ; $5597: $2f
	ld b, e                                          ; $5598: $43
	ld e, b                                          ; $5599: $58
	ccf                                              ; $559a: $3f
	xor h                                            ; $559b: $ac
	ld d, h                                          ; $559c: $54
	ld c, l                                          ; $559d: $4d
	inc a                                            ; $559e: $3c
	ld d, b                                          ; $559f: $50
	ld e, d                                          ; $55a0: $5a
	add hl, sp                                       ; $55a1: $39
	ld d, c                                          ; $55a2: $51
	ld c, [hl]                                       ; $55a3: $4e
	inc a                                            ; $55a4: $3c
	ld a, [hl-]                                      ; $55a5: $3a
	and b                                            ; $55a6: $a0
	cpl                                              ; $55a7: $2f
	db $ed                                           ; $55a8: $ed
	xor c                                            ; $55a9: $a9
	ld h, d                                          ; $55aa: $62
	ldh a, [$3b]                                     ; $55ab: $f0 $3b
	dec sp                                           ; $55ad: $3b
	ccf                                              ; $55ae: $3f
	db $ec                                           ; $55af: $ec
	ld e, b                                          ; $55b0: $58
	ld d, l                                          ; $55b1: $55
	inc a                                            ; $55b2: $3c
	add hl, bc                                       ; $55b3: $09
	cpl                                              ; $55b4: $2f
	pop hl                                           ; $55b5: $e1
	ld c, c                                          ; $55b6: $49
	db $ec                                           ; $55b7: $ec
	ld e, b                                          ; $55b8: $58
	ld d, l                                          ; $55b9: $55
	inc a                                            ; $55ba: $3c
	add hl, bc                                       ; $55bb: $09
	cpl                                              ; $55bc: $2f
	xor $08                                          ; $55bd: $ee $08
	ld c, d                                          ; $55bf: $4a
	db $ec                                           ; $55c0: $ec
	ld e, b                                          ; $55c1: $58
	ld d, l                                          ; $55c2: $55
	inc a                                            ; $55c3: $3c
	add hl, bc                                       ; $55c4: $09
	cpl                                              ; $55c5: $2f
	ld b, e                                          ; $55c6: $43
	or h                                             ; $55c7: $b4
	xor h                                            ; $55c8: $ac
	ldh a, [$98]                                     ; $55c9: $f0 $98
	ld h, d                                          ; $55cb: $62
	ldh a, [$3b]                                     ; $55cc: $f0 $3b
	ld h, h                                          ; $55ce: $64
	add hl, sp                                       ; $55cf: $39
	inc a                                            ; $55d0: $3c
	ld a, [hl-]                                      ; $55d1: $3a
	and b                                            ; $55d2: $a0
	cpl                                              ; $55d3: $2f
	ld b, e                                          ; $55d4: $43
	db $ec                                           ; $55d5: $ec
	reti                                             ; $55d6: $d9


	inc [hl]                                         ; $55d7: $34
	ld l, [hl]                                       ; $55d8: $6e
	ld [hl], c                                       ; $55d9: $71
	ld b, l                                          ; $55da: $45
	add hl, sp                                       ; $55db: $39
	and b                                            ; $55dc: $a0
	cpl                                              ; $55dd: $2f
	ld b, e                                          ; $55de: $43
	ld e, b                                          ; $55df: $58
	dec sp                                           ; $55e0: $3b
	ld e, h                                          ; $55e1: $5c
	pop af                                           ; $55e2: $f1
	pop bc                                           ; $55e3: $c1
	dec sp                                           ; $55e4: $3b
	dec a                                            ; $55e5: $3d
	ld b, d                                          ; $55e6: $42
	ld b, a                                          ; $55e7: $47
	inc de                                           ; $55e8: $13
	ld b, b                                          ; $55e9: $40
	ld c, l                                          ; $55ea: $4d
	ld c, e                                          ; $55eb: $4b
	ld c, d                                          ; $55ec: $4a
	ld e, h                                          ; $55ed: $5c
	ld a, [hl-]                                      ; $55ee: $3a
	jr c, @+$3c                                      ; $55ef: $38 $3a

	and b                                            ; $55f1: $a0
	cpl                                              ; $55f2: $2f
	ld b, e                                          ; $55f3: $43
	db $eb                                           ; $55f4: $eb
	inc [hl]                                         ; $55f5: $34
	xor h                                            ; $55f6: $ac
	ld [$48b0], a                                    ; $55f7: $ea $b0 $48
	and b                                            ; $55fa: $a0
	cpl                                              ; $55fb: $2f
	ld b, e                                          ; $55fc: $43
	ld e, e                                          ; $55fd: $5b
	ld d, [hl]                                       ; $55fe: $56
	ld b, [hl]                                       ; $55ff: $46
	xor h                                            ; $5600: $ac
	sub h                                            ; $5601: $94
	inc a                                            ; $5602: $3c
	ld e, l                                          ; $5603: $5d
	ld c, [hl]                                       ; $5604: $4e
	ld c, c                                          ; $5605: $49
	ld d, c                                          ; $5606: $51
	ld c, [hl]                                       ; $5607: $4e
	inc a                                            ; $5608: $3c
	ld c, b                                          ; $5609: $48
	and b                                            ; $560a: $a0
	cpl                                              ; $560b: $2f
	ld [hl-], a                                      ; $560c: $32
	ld e, b                                          ; $560d: $58
	ccf                                              ; $560e: $3f
	xor h                                            ; $560f: $ac
	ldh a, [$0a]                                     ; $5610: $f0 $0a
	pop af                                           ; $5612: $f1
	jr jr_098_5679                                   ; $5613: $18 $64

	pop af                                           ; $5615: $f1
	add hl, bc                                       ; $5616: $09
	ld d, a                                          ; $5617: $57
	ld b, a                                          ; $5618: $47
	jr c, jr_098_566f                                ; $5619: $38 $54

	add hl, sp                                       ; $561b: $39
	inc a                                            ; $561c: $3c
	ld a, [hl-]                                      ; $561d: $3a
	and e                                            ; $561e: $a3
	cpl                                              ; $561f: $2f
	db $ed                                           ; $5620: $ed
	ld l, [hl]                                       ; $5621: $6e
	ldh a, [rAUD1HIGH]                               ; $5622: $f0 $14
	ld c, e                                          ; $5624: $4b
	db $ed                                           ; $5625: $ed
	ld a, c                                          ; $5626: $79
	ld b, h                                          ; $5627: $44
	xor b                                            ; $5628: $a8
	ld l, d                                          ; $5629: $6a
	ldh a, [rAUD1HIGH]                               ; $562a: $f0 $14
	ld d, h                                          ; $562c: $54
	ld b, b                                          ; $562d: $40
	inc [hl]                                         ; $562e: $34
	jr c, jr_098_5669                                ; $562f: $38 $38

	sbc d                                            ; $5631: $9a
	ld b, [hl]                                       ; $5632: $46
	ld c, [hl]                                       ; $5633: $4e
	ld c, c                                          ; $5634: $49
	inc de                                           ; $5635: $13
	jr c, jr_098_5670                                ; $5636: $38 $38

	ld a, [hl-]                                      ; $5638: $3a
	ld b, [hl]                                       ; $5639: $46
	and e                                            ; $563a: $a3
	cpl                                              ; $563b: $2f
	db $ed                                           ; $563c: $ed
	ld l, [hl]                                       ; $563d: $6e
	ldh a, [rAUD1HIGH]                               ; $563e: $f0 $14
	ld d, h                                          ; $5640: $54
	ld b, b                                          ; $5641: $40
	xor h                                            ; $5642: $ac
	jr c, @+$3a                                      ; $5643: $38 $38

	sbc d                                            ; $5645: $9a
	ld d, e                                          ; $5646: $53
	ld b, [hl]                                       ; $5647: $46
	ld c, [hl]                                       ; $5648: $4e
	ld c, c                                          ; $5649: $49
	jr c, jr_098_5684                                ; $564a: $38 $38

	ld a, [hl-]                                      ; $564c: $3a
	ld b, [hl]                                       ; $564d: $46
	and e                                            ; $564e: $a3
	cpl                                              ; $564f: $2f
	db $ed                                           ; $5650: $ed
	ld l, [hl]                                       ; $5651: $6e
	ldh a, [rAUD1HIGH]                               ; $5652: $f0 $14
	ld c, e                                          ; $5654: $4b
	xor h                                            ; $5655: $ac
	jr c, jr_098_5690                                ; $5656: $38 $38

	sbc d                                            ; $5658: $9a
	ld d, e                                          ; $5659: $53
	ld b, [hl]                                       ; $565a: $46
	ld c, [hl]                                       ; $565b: $4e
	ld c, c                                          ; $565c: $49
	jr c, jr_098_5697                                ; $565d: $38 $38

	ld a, [hl-]                                      ; $565f: $3a
	ld b, [hl]                                       ; $5660: $46
	and e                                            ; $5661: $a3
	cpl                                              ; $5662: $2f
	ld [hl-], a                                      ; $5663: $32
	ld e, b                                          ; $5664: $58
	ccf                                              ; $5665: $3f
	inc [hl]                                         ; $5666: $34
	db $ec                                           ; $5667: $ec
	push bc                                          ; $5668: $c5

jr_098_5669:
	inc de                                           ; $5669: $13
	db $ec                                           ; $566a: $ec
	rrca                                             ; $566b: $0f
	ld a, [hl-]                                      ; $566c: $3a
	and e                                            ; $566d: $a3
	cpl                                              ; $566e: $2f

jr_098_566f:
	ld b, e                                          ; $566f: $43

jr_098_5670:
	ld b, [hl]                                       ; $5670: $46
	ld c, l                                          ; $5671: $4d
	xor c                                            ; $5672: $a9
	jp hl                                            ; $5673: $e9


	or l                                             ; $5674: $b5
	dec [hl]                                         ; $5675: $35
	inc hl                                           ; $5676: $23
	inc de                                           ; $5677: $13
	db $eb                                           ; $5678: $eb

jr_098_5679:
	inc [hl]                                         ; $5679: $34
	inc [hl]                                         ; $567a: $34
	ld [$48b0], a                                    ; $567b: $ea $b0 $48
	and b                                            ; $567e: $a0
	cpl                                              ; $567f: $2f
	ld b, e                                          ; $5680: $43
	ld c, c                                          ; $5681: $49
	inc [hl]                                         ; $5682: $34
	ld [hl], a                                       ; $5683: $77

jr_098_5684:
	dec sp                                           ; $5684: $3b
	dec a                                            ; $5685: $3d
	ld e, l                                          ; $5686: $5d
	ld e, d                                          ; $5687: $5a
	xor b                                            ; $5688: $a8
	db $ed                                           ; $5689: $ed
	halt                                             ; $568a: $76
	ldh a, [rDMA]                                    ; $568b: $f0 $46
	ldh a, [c]                                       ; $568d: $f2
	ld [hl], h                                       ; $568e: $74
	db $ec                                           ; $568f: $ec

jr_098_5690:
	dec b                                            ; $5690: $05
	ld l, [hl]                                       ; $5691: $6e
	xor b                                            ; $5692: $a8
	db $eb                                           ; $5693: $eb

jr_098_5694:
	inc [hl]                                         ; $5694: $34
	inc [hl]                                         ; $5695: $34
	ld b, [hl]                                       ; $5696: $46

jr_098_5697:
	ld e, h                                          ; $5697: $5c
	ld d, b                                          ; $5698: $50
	ld [hl], c                                       ; $5699: $71
	ld c, [hl]                                       ; $569a: $4e
	inc a                                            ; $569b: $3c
	ld c, b                                          ; $569c: $48
	and b                                            ; $569d: $a0
	cpl                                              ; $569e: $2f
	ld b, e                                          ; $569f: $43
	db $eb                                           ; $56a0: $eb
	inc a                                            ; $56a1: $3c
	xor h                                            ; $56a2: $ac
	add sp, -$38                                     ; $56a3: $e8 $c8
	and b                                            ; $56a5: $a0
	cpl                                              ; $56a6: $2f
	ld [$ac10], a                                    ; $56a7: $ea $10 $ac
	jp hl                                            ; $56aa: $e9


	add l                                            ; $56ab: $85
	add hl, bc                                       ; $56ac: $09
	cpl                                              ; $56ad: $2f
	ld [$0912], a                                    ; $56ae: $ea $12 $09
	cpl                                              ; $56b1: $2f
	jp hl                                            ; $56b2: $e9


	add [hl]                                         ; $56b3: $86
	add hl, bc                                       ; $56b4: $09
	cpl                                              ; $56b5: $2f
	ld b, e                                          ; $56b6: $43
	db $eb                                           ; $56b7: $eb
	dec a                                            ; $56b8: $3d
	inc de                                           ; $56b9: $13
	ld [$a011], a                                    ; $56ba: $ea $11 $a0
	add hl, bc                                       ; $56bd: $09
	cpl                                              ; $56be: $2f
	ld [hl-], a                                      ; $56bf: $32
	ld l, e                                          ; $56c0: $6b
	ld h, d                                          ; $56c1: $62
	ld h, h                                          ; $56c2: $64
	ldh a, [$c8]                                     ; $56c3: $f0 $c8
	jr c, jr_098_56da                                ; $56c5: $38 $13

	db $ec                                           ; $56c7: $ec
	inc c                                            ; $56c8: $0c
	ld a, [hl-]                                      ; $56c9: $3a
	and e                                            ; $56ca: $a3
	db $ec                                           ; $56cb: $ec
	or e                                             ; $56cc: $b3
	ld sp, $2f09                                     ; $56cd: $31 $09 $2f
	ld [$ac28], a                                    ; $56d0: $ea $28 $ac
	db $ed                                           ; $56d3: $ed
	pop hl                                           ; $56d4: $e1
	ld d, e                                          ; $56d5: $53
	ldh a, [$3e]                                     ; $56d6: $f0 $3e
	ld d, e                                          ; $56d8: $53
	ld d, a                                          ; $56d9: $57

jr_098_56da:
	ld d, d                                          ; $56da: $52
	ld d, c                                          ; $56db: $51
	ld b, l                                          ; $56dc: $45
	add hl, sp                                       ; $56dd: $39
	ld b, a                                          ; $56de: $47
	and e                                            ; $56df: $a3
	cpl                                              ; $56e0: $2f
	ld [hl-], a                                      ; $56e1: $32
	ld b, b                                          ; $56e2: $40
	ld b, d                                          ; $56e3: $42
	ldh a, [$c8]                                     ; $56e4: $f0 $c8
	jr c, jr_098_5694                                ; $56e6: $38 $ac

	di                                               ; $56e8: $f3
	and a                                            ; $56e9: $a7
	ld e, [hl]                                       ; $56ea: $5e
	ccf                                              ; $56eb: $3f
	ld a, $41                                        ; $56ec: $3e $41
	adc l                                            ; $56ee: $8d
	ld b, l                                          ; $56ef: $45
	add hl, sp                                       ; $56f0: $39
	and e                                            ; $56f1: $a3
	cpl                                              ; $56f2: $2f
	ld [hl-], a                                      ; $56f3: $32
	ld b, c                                          ; $56f4: $41
	xor c                                            ; $56f5: $a9
	pop af                                           ; $56f6: $f1
	sub $42                                          ; $56f7: $d6 $42
	ldh a, [$d3]                                     ; $56f9: $f0 $d3
	pop af                                           ; $56fb: $f1
	ld [hl], $53                                     ; $56fc: $36 $53
	inc de                                           ; $56fe: $13
	jp hl                                            ; $56ff: $e9


	ld a, [bc]                                       ; $5700: $0a
	and e                                            ; $5701: $a3
	db $ec                                           ; $5702: $ec
	or h                                             ; $5703: $b4
	ld sp, $2f09                                     ; $5704: $31 $09 $2f
	ld [$ac28], a                                    ; $5707: $ea $28 $ac
	ldh a, [c]                                       ; $570a: $f2
	cp a                                             ; $570b: $bf
	di                                               ; $570c: $f3
	sbc h                                            ; $570d: $9c
	ld c, d                                          ; $570e: $4a
	jr c, jr_098_5761                                ; $570f: $38 $50

	ld c, l                                          ; $5711: $4d
	ld d, d                                          ; $5712: $52
	ld d, c                                          ; $5713: $51
	ld b, l                                          ; $5714: $45
	add hl, sp                                       ; $5715: $39
	ld b, a                                          ; $5716: $47
	and e                                            ; $5717: $a3
	cpl                                              ; $5718: $2f
	ld [hl-], a                                      ; $5719: $32
	ld b, c                                          ; $571a: $41
	xor c                                            ; $571b: $a9
	pop af                                           ; $571c: $f1
	ld de, $65f0                                     ; $571d: $11 $f0 $65
	ld b, d                                          ; $5720: $42
	ldh a, [$75]                                     ; $5721: $f0 $75
	adc h                                            ; $5723: $8c
	ld d, e                                          ; $5724: $53
	inc de                                           ; $5725: $13
	jp hl                                            ; $5726: $e9


	ld a, [bc]                                       ; $5727: $0a
	and e                                            ; $5728: $a3
	db $ec                                           ; $5729: $ec
	or l                                             ; $572a: $b5
	ld sp, $2f09                                     ; $572b: $31 $09 $2f
	ld [hl-], a                                      ; $572e: $32
	ldh a, [$98]                                     ; $572f: $f0 $98
	ld c, c                                          ; $5731: $49
	ld b, d                                          ; $5732: $42
	sbc d                                            ; $5733: $9a
	ld h, d                                          ; $5734: $62
	inc de                                           ; $5735: $13
	ldh a, [c]                                       ; $5736: $f2
	or a                                             ; $5737: $b7
	ldh a, [$c8]                                     ; $5738: $f0 $c8
	db $ec                                           ; $573a: $ec
	inc c                                            ; $573b: $0c
	ld a, [hl-]                                      ; $573c: $3a
	and e                                            ; $573d: $a3
	cpl                                              ; $573e: $2f
	ld [$1328], a                                    ; $573f: $ea $28 $13
	db $ed                                           ; $5742: $ed
	xor c                                            ; $5743: $a9
	db $eb                                           ; $5744: $eb
	ld a, c                                          ; $5745: $79
	inc de                                           ; $5746: $13
	add sp, -$2c                                     ; $5747: $e8 $d4
	and e                                            ; $5749: $a3
	cpl                                              ; $574a: $2f
	ld [$1328], a                                    ; $574b: $ea $28 $13
	db $ec                                           ; $574e: $ec
	rst SubAFromDE                                          ; $574f: $df
	db $eb                                           ; $5750: $eb
	ld a, c                                          ; $5751: $79
	inc de                                           ; $5752: $13
	add sp, -$2c                                     ; $5753: $e8 $d4
	and e                                            ; $5755: $a3
	cpl                                              ; $5756: $2f
	ld [$1328], a                                    ; $5757: $ea $28 $13
	db $ec                                           ; $575a: $ec
	ldh [$eb], a                                     ; $575b: $e0 $eb
	ld a, c                                          ; $575d: $79
	inc de                                           ; $575e: $13
	add sp, -$2c                                     ; $575f: $e8 $d4

jr_098_5761:
	and e                                            ; $5761: $a3
	cpl                                              ; $5762: $2f
	ld [$1328], a                                    ; $5763: $ea $28 $13
	db $ec                                           ; $5766: $ec
	pop hl                                           ; $5767: $e1
	db $eb                                           ; $5768: $eb
	ld a, c                                          ; $5769: $79
	inc de                                           ; $576a: $13
	add sp, -$2c                                     ; $576b: $e8 $d4
	and e                                            ; $576d: $a3
	cpl                                              ; $576e: $2f
	ld [$1328], a                                    ; $576f: $ea $28 $13
	db $ed                                           ; $5772: $ed
	ld d, e                                          ; $5773: $53
	db $eb                                           ; $5774: $eb
	ld a, c                                          ; $5775: $79
	inc de                                           ; $5776: $13
	add sp, -$2c                                     ; $5777: $e8 $d4
	and e                                            ; $5779: $a3
	cpl                                              ; $577a: $2f
	ld [$1328], a                                    ; $577b: $ea $28 $13
	db $eb                                           ; $577e: $eb
	ld a, [$79eb]                                    ; $577f: $fa $eb $79
	inc de                                           ; $5782: $13
	add sp, -$2c                                     ; $5783: $e8 $d4
	and e                                            ; $5785: $a3
	cpl                                              ; $5786: $2f
	ld [$1328], a                                    ; $5787: $ea $28 $13
	db $eb                                           ; $578a: $eb
	db $fc                                           ; $578b: $fc
	db $eb                                           ; $578c: $eb
	ld a, c                                          ; $578d: $79
	inc de                                           ; $578e: $13
	add sp, -$2c                                     ; $578f: $e8 $d4
	and e                                            ; $5791: $a3
	cpl                                              ; $5792: $2f
	ld [$1328], a                                    ; $5793: $ea $28 $13
	db $ec                                           ; $5796: $ec
	and $eb                                          ; $5797: $e6 $eb
	ld a, c                                          ; $5799: $79
	inc de                                           ; $579a: $13
	add sp, -$2c                                     ; $579b: $e8 $d4
	and e                                            ; $579d: $a3
	cpl                                              ; $579e: $2f
	ld [hl-], a                                      ; $579f: $32
	ld b, c                                          ; $57a0: $41
	xor c                                            ; $57a1: $a9
	ld b, b                                          ; $57a2: $40
	ld b, d                                          ; $57a3: $42
	ld a, a                                          ; $57a4: $7f
	ld b, a                                          ; $57a5: $47
	ld a, [hl-]                                      ; $57a6: $3a
	dec sp                                           ; $57a7: $3b
	ccf                                              ; $57a8: $3f
	ld e, h                                          ; $57a9: $5c
	dec a                                            ; $57aa: $3d
	sub a                                            ; $57ab: $97
	and e                                            ; $57ac: $a3
	cpl                                              ; $57ad: $2f
	ld [hl-], a                                      ; $57ae: $32
	ld h, h                                          ; $57af: $64
	ld l, h                                          ; $57b0: $6c
	ld d, l                                          ; $57b1: $55
	ld e, e                                          ; $57b2: $5b
	ld c, d                                          ; $57b3: $4a
	ld c, a                                          ; $57b4: $4f
	xor h                                            ; $57b5: $ac
	pop af                                           ; $57b6: $f1
	ld e, a                                          ; $57b7: $5f
	ld e, h                                          ; $57b8: $5c
	ld b, a                                          ; $57b9: $47
	jr c, jr_098_5810                                ; $57ba: $38 $54

	add hl, sp                                       ; $57bc: $39
	inc a                                            ; $57bd: $3c
	ld a, [hl-]                                      ; $57be: $3a
	and e                                            ; $57bf: $a3
	add hl, bc                                       ; $57c0: $09
	cpl                                              ; $57c1: $2f
	ld [hl-], a                                      ; $57c2: $32
	db $ed                                           ; $57c3: $ed
	ld d, l                                          ; $57c4: $55
	inc [hl]                                         ; $57c5: $34
	ld l, d                                          ; $57c6: $6a
	ldh a, [rAUD1HIGH]                               ; $57c7: $f0 $14
	ld c, e                                          ; $57c9: $4b
	inc de                                           ; $57ca: $13
	jr c, jr_098_5805                                ; $57cb: $38 $38

	sbc d                                            ; $57cd: $9a
	ld b, [hl]                                       ; $57ce: $46
	ld d, a                                          ; $57cf: $57
	ld b, b                                          ; $57d0: $40
	add hl, sp                                       ; $57d1: $39
	ld a, [hl-]                                      ; $57d2: $3a
	inc de                                           ; $57d3: $13
	ld a, a                                          ; $57d4: $7f
	ld d, e                                          ; $57d5: $53
	ld d, c                                          ; $57d6: $51
	ld c, [hl]                                       ; $57d7: $4e
	adc l                                            ; $57d8: $8d
	and e                                            ; $57d9: $a3
	cpl                                              ; $57da: $2f
	db $ed                                           ; $57db: $ed
	ld l, [hl]                                       ; $57dc: $6e
	ldh a, [rAUD1HIGH]                               ; $57dd: $f0 $14
	xor $2d                                          ; $57df: $ee $2d
	jr c, @-$64                                      ; $57e1: $38 $9a

	inc de                                           ; $57e3: $13
	ld b, [hl]                                       ; $57e4: $46
	ld d, a                                          ; $57e5: $57
	ld b, b                                          ; $57e6: $40
	add hl, sp                                       ; $57e7: $39
	ld a, [hl-]                                      ; $57e8: $3a
	ld a, a                                          ; $57e9: $7f
	ld d, e                                          ; $57ea: $53
	ld d, c                                          ; $57eb: $51
	ld c, [hl]                                       ; $57ec: $4e
	adc l                                            ; $57ed: $8d
	and e                                            ; $57ee: $a3
	cpl                                              ; $57ef: $2f
	ld [hl-], a                                      ; $57f0: $32
	ld d, d                                          ; $57f1: $52
	ld [hl], h                                       ; $57f2: $74
	xor h                                            ; $57f3: $ac
	ld d, h                                          ; $57f4: $54
	ld b, c                                          ; $57f5: $41
	ld a, [hl-]                                      ; $57f6: $3a
	ld c, a                                          ; $57f7: $4f
	ld b, c                                          ; $57f8: $41
	ld b, h                                          ; $57f9: $44
	ld a, [hl-]                                      ; $57fa: $3a
	and e                                            ; $57fb: $a3
	cpl                                              ; $57fc: $2f
	ld [hl-], a                                      ; $57fd: $32
	db $ec                                           ; $57fe: $ec
	rst SubAFromBC                                          ; $57ff: $e7
	xor h                                            ; $5800: $ac
	add b                                            ; $5801: $80
	jr c, jr_098_5843                                ; $5802: $38 $3f

	ld a, [hl-]                                      ; $5804: $3a

jr_098_5805:
	jr c, jr_098_5841                                ; $5805: $38 $3a

	ld c, b                                          ; $5807: $48
	and e                                            ; $5808: $a3
	add hl, bc                                       ; $5809: $09
	ld [$132b], a                                    ; $580a: $ea $2b $13
	add sp, -$2e                                     ; $580d: $e8 $d2
	and b                                            ; $580f: $a0

jr_098_5810:
	cpl                                              ; $5810: $2f
	ld b, e                                          ; $5811: $43
	ld b, [hl]                                       ; $5812: $46
	inc [hl]                                         ; $5813: $34
	ld b, [hl]                                       ; $5814: $46
	ld [hl], h                                       ; $5815: $74
	xor l                                            ; $5816: $ad
	db $eb                                           ; $5817: $eb
	ld h, c                                          ; $5818: $61
	inc [hl]                                         ; $5819: $34
	db $eb                                           ; $581a: $eb
	ld e, [hl]                                       ; $581b: $5e
	and b                                            ; $581c: $a0
	ld c, h                                          ; $581d: $4c
	add l                                            ; $581e: $85
	inc [hl]                                         ; $581f: $34
	ld d, h                                          ; $5820: $54
	ld c, l                                          ; $5821: $4d
	inc a                                            ; $5822: $3c
	ld d, b                                          ; $5823: $50
	inc de                                           ; $5824: $13
	db $ec                                           ; $5825: $ec
	ld e, b                                          ; $5826: $58
	inc a                                            ; $5827: $3c
	ld a, [hl-]                                      ; $5828: $3a
	jr c, @+$4a                                      ; $5829: $38 $48

	and c                                            ; $582b: $a1
	cpl                                              ; $582c: $2f
	ld b, e                                          ; $582d: $43
	ld b, [hl]                                       ; $582e: $46
	inc [hl]                                         ; $582f: $34
	ld b, [hl]                                       ; $5830: $46
	ld [hl], h                                       ; $5831: $74
	xor l                                            ; $5832: $ad
	db $eb                                           ; $5833: $eb
	ld h, c                                          ; $5834: $61
	inc [hl]                                         ; $5835: $34
	db $eb                                           ; $5836: $eb
	ld e, [hl]                                       ; $5837: $5e
	xor b                                            ; $5838: $a8
	pop af                                           ; $5839: $f1
	pop hl                                           ; $583a: $e1
	ldh a, [c]                                       ; $583b: $f2
	or h                                             ; $583c: $b4
	ld d, e                                          ; $583d: $53
	jr c, jr_098_5878                                ; $583e: $38 $38

	ld c, h                                          ; $5840: $4c

jr_098_5841:
	and b                                            ; $5841: $a0
	ld b, [hl]                                       ; $5842: $46

jr_098_5843:
	inc [hl]                                         ; $5843: $34
	ld b, [hl]                                       ; $5844: $46
	ld d, a                                          ; $5845: $57
	ld d, e                                          ; $5846: $53
	ld c, c                                          ; $5847: $49
	add hl, sp                                       ; $5848: $39
	ld c, b                                          ; $5849: $48
	dec [hl]                                         ; $584a: $35
	rla                                              ; $584b: $17
	ld c, h                                          ; $584c: $4c
	add l                                            ; $584d: $85
	inc [hl]                                         ; $584e: $34
	ld d, h                                          ; $584f: $54
	ld c, l                                          ; $5850: $4d
	inc a                                            ; $5851: $3c
	ld d, b                                          ; $5852: $50
	inc de                                           ; $5853: $13
	db $ec                                           ; $5854: $ec
	ld e, b                                          ; $5855: $58
	inc a                                            ; $5856: $3c
	ld a, [hl-]                                      ; $5857: $3a
	jr c, @+$4a                                      ; $5858: $38 $48

	and c                                            ; $585a: $a1
	cpl                                              ; $585b: $2f
	jr c, jr_098_5896                                ; $585c: $38 $38

	ld c, h                                          ; $585e: $4c
	inc [hl]                                         ; $585f: $34
	db $ec                                           ; $5860: $ec
	rlca                                             ; $5861: $07
	add hl, bc                                       ; $5862: $09
	db $ec                                           ; $5863: $ec
	cp c                                             ; $5864: $b9
	xor h                                            ; $5865: $ac
	pop af                                           ; $5866: $f1
	pop bc                                           ; $5867: $c1
	ld d, b                                          ; $5868: $50
	ld c, l                                          ; $5869: $4d
	ld a, [hl-]                                      ; $586a: $3a
	ld d, l                                          ; $586b: $55
	ccf                                              ; $586c: $3f
	xor b                                            ; $586d: $a8
	ld e, e                                          ; $586e: $5b
	ld d, [hl]                                       ; $586f: $56
	ld b, [hl]                                       ; $5870: $46
	inc [hl]                                         ; $5871: $34
	ldh a, [$0a]                                     ; $5872: $f0 $0a
	ld d, l                                          ; $5874: $55
	ld h, a                                          ; $5875: $67
	ld e, h                                          ; $5876: $5c
	ld d, d                                          ; $5877: $52

jr_098_5878:
	ld a, $66                                        ; $5878: $3e $66
	and b                                            ; $587a: $a0
	cpl                                              ; $587b: $2f
	add sp, -$2a                                     ; $587c: $e8 $d6
	add hl, bc                                       ; $587e: $09
	ld b, b                                          ; $587f: $40
	add hl, sp                                       ; $5880: $39
	xor l                                            ; $5881: $ad
	db $eb                                           ; $5882: $eb
	ccf                                              ; $5883: $3f
	xor h                                            ; $5884: $ac
	ld [$48e4], a                                    ; $5885: $ea $e4 $48
	and b                                            ; $5888: $a0
	cpl                                              ; $5889: $2f
	ld b, e                                          ; $588a: $43
	jp hl                                            ; $588b: $e9


	or d                                             ; $588c: $b2
	inc de                                           ; $588d: $13
	db $ed                                           ; $588e: $ed
	xor c                                            ; $588f: $a9
	db $ed                                           ; $5890: $ed
	dec b                                            ; $5891: $05
	inc de                                           ; $5892: $13
	ld [$a03b], a                                    ; $5893: $ea $3b $a0

jr_098_5896:
	xor $2d                                          ; $5896: $ee $2d
	inc [hl]                                         ; $5898: $34
	db $ed                                           ; $5899: $ed
	xor b                                            ; $589a: $a8
	ld c, d                                          ; $589b: $4a
	ld d, c                                          ; $589c: $51
	and b                                            ; $589d: $a0
	cpl                                              ; $589e: $2f
	ld b, e                                          ; $589f: $43
	ld [$ac2b], a                                    ; $58a0: $ea $2b $ac
	add sp, -$2e                                     ; $58a3: $e8 $d2
	xor b                                            ; $58a5: $a8
	ld de, $aeea                                     ; $58a6: $11 $ea $ae
	and b                                            ; $58a9: $a0
	ld d, $a8                                        ; $58aa: $16 $a8
	ld [$ac4b], a                                    ; $58ac: $ea $4b $ac
	add sp, -$2e                                     ; $58af: $e8 $d2
	and b                                            ; $58b1: $a0
	cpl                                              ; $58b2: $2f
	ld b, e                                          ; $58b3: $43
	db $ed                                           ; $58b4: $ed
	xor c                                            ; $58b5: $a9
	xor b                                            ; $58b6: $a8
	db $eb                                           ; $58b7: $eb
	ld [hl], b                                       ; $58b8: $70
	and c                                            ; $58b9: $a1
	ld e, [hl]                                       ; $58ba: $5e
	dec sp                                           ; $58bb: $3b
	xor c                                            ; $58bc: $a9
	xor $1f                                          ; $58bd: $ee $1f
	inc [hl]                                         ; $58bf: $34
	ldh a, [$ea]                                     ; $58c0: $f0 $ea
	ld b, l                                          ; $58c2: $45
	and b                                            ; $58c3: $a0
	cpl                                              ; $58c4: $2f
	ld b, e                                          ; $58c5: $43
	or h                                             ; $58c6: $b4
	xor h                                            ; $58c7: $ac
	ld [$1325], a                                    ; $58c8: $ea $25 $13
	db $eb                                           ; $58cb: $eb
	ld e, h                                          ; $58cc: $5c
	and c                                            ; $58cd: $a1
	add hl, sp                                       ; $58ce: $39
	inc [hl]                                         ; $58cf: $34
	xor $1f                                          ; $58d0: $ee $1f
	xor l                                            ; $58d2: $ad
	ldh a, [$66]                                     ; $58d3: $f0 $66
	ld b, c                                          ; $58d5: $41
	ld c, d                                          ; $58d6: $4a
	ld c, b                                          ; $58d7: $48
	and b                                            ; $58d8: $a0
	ld d, $a8                                        ; $58d9: $16 $a8
	db $eb                                           ; $58db: $eb
	ld h, c                                          ; $58dc: $61
	inc [hl]                                         ; $58dd: $34
	db $eb                                           ; $58de: $eb
	ld e, [hl]                                       ; $58df: $5e
	xor b                                            ; $58e0: $a8
	ld l, d                                          ; $58e1: $6a
	ldh a, [rAUD1HIGH]                               ; $58e2: $f0 $14
	ld c, a                                          ; $58e4: $4f
	db $eb                                           ; $58e5: $eb
	sub [hl]                                         ; $58e6: $96
	and b                                            ; $58e7: $a0
	xor $1f                                          ; $58e8: $ee $1f
	inc [hl]                                         ; $58ea: $34
	ldh a, [$ea]                                     ; $58eb: $f0 $ea
	ld b, l                                          ; $58ed: $45
	and b                                            ; $58ee: $a0
	jr c, @+$3a                                      ; $58ef: $38 $38

	ld h, e                                          ; $58f1: $63
	ld c, h                                          ; $58f2: $4c
	xor b                                            ; $58f3: $a8
	ld [$a0a9], a                                    ; $58f4: $ea $a9 $a0
	ld d, $a8                                        ; $58f7: $16 $a8
	db $eb                                           ; $58f9: $eb
	ld h, c                                          ; $58fa: $61
	xor h                                            ; $58fb: $ac
	add sp, -$2e                                     ; $58fc: $e8 $d2
	and b                                            ; $58fe: $a0
	xor $1f                                          ; $58ff: $ee $1f
	inc [hl]                                         ; $5901: $34
	ldh a, [$ea]                                     ; $5902: $f0 $ea
	ld b, h                                          ; $5904: $44
	ld e, l                                          ; $5905: $5d
	ld e, d                                          ; $5906: $5a
	xor h                                            ; $5907: $ac
	ld l, e                                          ; $5908: $6b
	inc a                                            ; $5909: $3c
	and c                                            ; $590a: $a1
	cpl                                              ; $590b: $2f
	ld b, e                                          ; $590c: $43
	ld [$1325], a                                    ; $590d: $ea $25 $13
	db $eb                                           ; $5910: $eb
	ld e, h                                          ; $5911: $5c
	and c                                            ; $5912: $a1
	call c, $eaac                                    ; $5913: $dc $ac $ea
	xor c                                            ; $5916: $a9
	inc a                                            ; $5917: $3c
	and b                                            ; $5918: $a0
	cpl                                              ; $5919: $2f
	ld b, e                                          ; $591a: $43
	or h                                             ; $591b: $b4
	xor h                                            ; $591c: $ac
	ldh a, [$f0]                                     ; $591d: $f0 $f0
	ld c, d                                          ; $591f: $4a
	sbc c                                            ; $5920: $99
	dec sp                                           ; $5921: $3b
	ccf                                              ; $5922: $3f
	ld c, [hl]                                       ; $5923: $4e
	ld b, l                                          ; $5924: $45
	and b                                            ; $5925: $a0
	ret                                              ; $5926: $c9


	xor h                                            ; $5927: $ac
	ldh a, [rBGP]                                    ; $5928: $f0 $47
	ldh a, [$2a]                                     ; $592a: $f0 $2a
	ld d, e                                          ; $592c: $53
	inc a                                            ; $592d: $3c
	inc a                                            ; $592e: $3c
	ld c, [hl]                                       ; $592f: $4e
	ld c, c                                          ; $5930: $49
	ld [hl], a                                       ; $5931: $77
	add hl, sp                                       ; $5932: $39
	inc a                                            ; $5933: $3c
	ld d, b                                          ; $5934: $50
	xor h                                            ; $5935: $ac
	ldh a, [rSVBK]                                   ; $5936: $f0 $70
	ld b, d                                          ; $5938: $42
	ldh a, [$38]                                     ; $5939: $f0 $38
	ld b, a                                          ; $593b: $47
	ld h, a                                          ; $593c: $67
	ld d, l                                          ; $593d: $55
	ld h, e                                          ; $593e: $63
	and b                                            ; $593f: $a0
	cpl                                              ; $5940: $2f
	ld b, e                                          ; $5941: $43
	xor $1f                                          ; $5942: $ee $1f
	inc [hl]                                         ; $5944: $34
	ldh a, [rTAC]                                    ; $5945: $f0 $07
	inc a                                            ; $5947: $3c
	dec sp                                           ; $5948: $3b
	dec a                                            ; $5949: $3d
	xor b                                            ; $594a: $a8
	ld b, b                                          ; $594b: $40
	ld c, l                                          ; $594c: $4d
	ld e, e                                          ; $594d: $5b
	ld d, [hl]                                       ; $594e: $56
	inc [hl]                                         ; $594f: $34
	sbc c                                            ; $5950: $99
	dec sp                                           ; $5951: $3b
	ccf                                              ; $5952: $3f
	ld c, [hl]                                       ; $5953: $4e
	ld b, l                                          ; $5954: $45
	and b                                            ; $5955: $a0
	ld b, b                                          ; $5956: $40
	ld c, l                                          ; $5957: $4d
	ld e, e                                          ; $5958: $5b
	ld d, [hl]                                       ; $5959: $56
	and b                                            ; $595a: $a0
	cpl                                              ; $595b: $2f
	ld h, $ed                                        ; $595c: $26 $ed
	ld e, h                                          ; $595e: $5c
	dec h                                            ; $595f: $25
	add hl, bc                                       ; $5960: $09
	cpl                                              ; $5961: $2f
	ld h, $ed                                        ; $5962: $26 $ed
	rst JumpTable                                          ; $5964: $c7
	pop af                                           ; $5965: $f1
	ld [de], a                                       ; $5966: $12
	ld e, c                                          ; $5967: $59
	ld h, l                                          ; $5968: $65
	dec h                                            ; $5969: $25
	add hl, bc                                       ; $596a: $09
	cpl                                              ; $596b: $2f
	ld [hl-], a                                      ; $596c: $32
	ld b, [hl]                                       ; $596d: $46
	dec sp                                           ; $596e: $3b
	xor h                                            ; $596f: $ac
	db $ed                                           ; $5970: $ed
	xor c                                            ; $5971: $a9
	ld d, e                                          ; $5972: $53
	ld a, b                                          ; $5973: $78
	dec a                                            ; $5974: $3d
	ld b, d                                          ; $5975: $42
	inc a                                            ; $5976: $3c
	ld a, [hl-]                                      ; $5977: $3a
	ld [hl], $33                                     ; $5978: $36 $33
	add hl, bc                                       ; $597a: $09
	ld [hl], b                                       ; $597b: $70
	ld [hl], c                                       ; $597c: $71
	ld b, c                                          ; $597d: $41
	ld c, h                                          ; $597e: $4c
	xor b                                            ; $597f: $a8
	ldh a, [$ac]                                     ; $5980: $f0 $ac
	ldh a, [$9a]                                     ; $5982: $f0 $9a
	ld e, l                                          ; $5984: $5d
	ld b, a                                          ; $5985: $47
	ldh a, [rBGP]                                    ; $5986: $f0 $47
	ldh a, [$2a]                                     ; $5988: $f0 $2a
	ld d, e                                          ; $598a: $53
	inc de                                           ; $598b: $13
	inc a                                            ; $598c: $3c
	inc a                                            ; $598d: $3c
	dec sp                                           ; $598e: $3b
	ld h, c                                          ; $598f: $61
	ld d, [hl]                                       ; $5990: $56
	dec sp                                           ; $5991: $3b
	ccf                                              ; $5992: $3f
	ld c, b                                          ; $5993: $48
	and b                                            ; $5994: $a0
	cpl                                              ; $5995: $2f
	ld b, e                                          ; $5996: $43
	pop af                                           ; $5997: $f1
	ld e, $f0                                        ; $5998: $1e $f0
	xor h                                            ; $599a: $ac
	ld h, d                                          ; $599b: $62
	ldh a, [$ac]                                     ; $599c: $f0 $ac
	ccf                                              ; $599e: $3f
	ld e, h                                          ; $599f: $5c
	dec a                                            ; $59a0: $3d
	ld b, c                                          ; $59a1: $41
	ld b, h                                          ; $59a2: $44
	ld c, b                                          ; $59a3: $48
	and b                                            ; $59a4: $a0
	ld h, h                                          ; $59a5: $64
	inc a                                            ; $59a6: $3c
	ld a, $55                                        ; $59a7: $3e $55
	ld a, [hl-]                                      ; $59a9: $3a
	jr c, jr_098_59e8                                ; $59aa: $38 $3c

	ld a, [hl-]                                      ; $59ac: $3a
	and c                                            ; $59ad: $a1
	cpl                                              ; $59ae: $2f
	db $ec                                           ; $59af: $ec
	rst SubAFromHL                                          ; $59b0: $d7
	ldh a, [rPCM12]                                  ; $59b1: $f0 $76
	ldh a, [rTMA]                                    ; $59b3: $f0 $06
	add hl, sp                                       ; $59b5: $39
	ld b, l                                          ; $59b6: $45
	add hl, bc                                       ; $59b7: $09
	adc b                                            ; $59b8: $88
	sub c                                            ; $59b9: $91
	xor c                                            ; $59ba: $a9
	db $ec                                           ; $59bb: $ec
	cp c                                             ; $59bc: $b9
	xor b                                            ; $59bd: $a8
	ld b, b                                          ; $59be: $40
	ld c, l                                          ; $59bf: $4d
	ld e, e                                          ; $59c0: $5b
	ld d, [hl]                                       ; $59c1: $56
	inc [hl]                                         ; $59c2: $34
	ld [$a0a9], a                                    ; $59c3: $ea $a9 $a0
	cpl                                              ; $59c6: $2f
	ld [$0964], a                                    ; $59c7: $ea $64 $09
	ld b, b                                          ; $59ca: $40
	add hl, sp                                       ; $59cb: $39
	xor c                                            ; $59cc: $a9
	ld e, e                                          ; $59cd: $5b
	ld d, [hl]                                       ; $59ce: $56
	ld b, [hl]                                       ; $59cf: $46
	inc [hl]                                         ; $59d0: $34
	ld [$a8d3], a                                    ; $59d1: $ea $d3 $a8
	ret                                              ; $59d4: $c9


	sbc c                                            ; $59d5: $99
	dec sp                                           ; $59d6: $3b
	ccf                                              ; $59d7: $3f
	ccf                                              ; $59d8: $3f
	ld c, h                                          ; $59d9: $4c
	and b                                            ; $59da: $a0
	ld h, h                                          ; $59db: $64
	sbc c                                            ; $59dc: $99
	dec a                                            ; $59dd: $3d
	ld a, c                                          ; $59de: $79
	xor b                                            ; $59df: $a8
	jp hl                                            ; $59e0: $e9


	ld a, [hl+]                                      ; $59e1: $2a
	and b                                            ; $59e2: $a0
	ld h, e                                          ; $59e3: $63
	ld d, a                                          ; $59e4: $57
	ld c, c                                          ; $59e5: $49
	ldh a, [$c9]                                     ; $59e6: $f0 $c9

jr_098_59e8:
	jr c, jr_098_5a29                                ; $59e8: $38 $3f

	ld c, [hl]                                       ; $59ea: $4e
	ld c, h                                          ; $59eb: $4c
	and b                                            ; $59ec: $a0
	cpl                                              ; $59ed: $2f
	ld b, e                                          ; $59ee: $43
	or h                                             ; $59ef: $b4
	xor h                                            ; $59f0: $ac
	ld [$a03c], a                                    ; $59f1: $ea $3c $a0
	call c, Call_098_40a8                            ; $59f4: $dc $a8 $40
	ld c, l                                          ; $59f7: $4d
	ld e, e                                          ; $59f8: $5b
	ld d, [hl]                                       ; $59f9: $56
	inc [hl]                                         ; $59fa: $34
	ld [$a0a9], a                                    ; $59fb: $ea $a9 $a0
	ld c, h                                          ; $59fe: $4c
	add l                                            ; $59ff: $85
	xor h                                            ; $5a00: $ac
	ld [$424c], a                                    ; $5a01: $ea $4c $42
	and c                                            ; $5a04: $a1
	cpl                                              ; $5a05: $2f
	ld b, e                                          ; $5a06: $43
	ld [$a8d1], a                                    ; $5a07: $ea $d1 $a8
	db $ed                                           ; $5a0a: $ed
	xor c                                            ; $5a0b: $a9
	ld c, e                                          ; $5a0c: $4b
	and c                                            ; $5a0d: $a1
	ld l, a                                          ; $5a0e: $6f
	ld c, a                                          ; $5a0f: $4f
	pop af                                           ; $5a10: $f1
	ld [hl], a                                       ; $5a11: $77
	ld a, h                                          ; $5a12: $7c
	xor b                                            ; $5a13: $a8
	db $ed                                           ; $5a14: $ed
	ld b, e                                          ; $5a15: $43
	xor l                                            ; $5a16: $ad
	ld b, [hl]                                       ; $5a17: $46
	dec sp                                           ; $5a18: $3b
	inc [hl]                                         ; $5a19: $34
	ld h, h                                          ; $5a1a: $64
	ld l, h                                          ; $5a1b: $6c
	ld d, l                                          ; $5a1c: $55
	ld e, e                                          ; $5a1d: $5b
	ldh a, [$d8]                                     ; $5a1e: $f0 $d8
	inc a                                            ; $5a20: $3c
	ld a, [hl-]                                      ; $5a21: $3a
	jr c, @-$5d                                      ; $5a22: $38 $a1

	ld b, b                                          ; $5a24: $40
	ld c, l                                          ; $5a25: $4d
	ld e, e                                          ; $5a26: $5b
	ld d, [hl]                                       ; $5a27: $56
	xor h                                            ; $5a28: $ac

jr_098_5a29:
	ld l, a                                          ; $5a29: $6f
	db $ed                                           ; $5a2a: $ed
	ld b, e                                          ; $5a2b: $43
	inc [hl]                                         ; $5a2c: $34
	db $ed                                           ; $5a2d: $ed
	inc c                                            ; $5a2e: $0c
	xor b                                            ; $5a2f: $a8
	ld b, [hl]                                       ; $5a30: $46
	dec sp                                           ; $5a31: $3b
	inc [hl]                                         ; $5a32: $34
	ld h, h                                          ; $5a33: $64
	ld l, h                                          ; $5a34: $6c
	ld d, l                                          ; $5a35: $55
	ld e, e                                          ; $5a36: $5b
	ldh a, [$d8]                                     ; $5a37: $f0 $d8
	ld d, h                                          ; $5a39: $54
	add hl, sp                                       ; $5a3a: $39
	ld b, l                                          ; $5a3b: $45
	and b                                            ; $5a3c: $a0
	ld b, b                                          ; $5a3d: $40
	ld c, l                                          ; $5a3e: $4d
	ld e, e                                          ; $5a3f: $5b
	ld d, [hl]                                       ; $5a40: $56
	xor h                                            ; $5a41: $ac
	ld l, a                                          ; $5a42: $6f
	ld c, a                                          ; $5a43: $4f
	db $ed                                           ; $5a44: $ed
	inc c                                            ; $5a45: $0c
	xor b                                            ; $5a46: $a8
	ld b, [hl]                                       ; $5a47: $46
	dec sp                                           ; $5a48: $3b
	inc [hl]                                         ; $5a49: $34
	ld h, h                                          ; $5a4a: $64
	ld l, h                                          ; $5a4b: $6c
	ld d, l                                          ; $5a4c: $55
	ld e, e                                          ; $5a4d: $5b
	ldh a, [$d8]                                     ; $5a4e: $f0 $d8
	inc a                                            ; $5a50: $3c
	ld a, [hl-]                                      ; $5a51: $3a
	jr c, @-$5d                                      ; $5a52: $38 $a1

	cpl                                              ; $5a54: $2f
	ld b, e                                          ; $5a55: $43
	ld [$a8c3], a                                    ; $5a56: $ea $c3 $a8
	db $ec                                           ; $5a59: $ec
	rlca                                             ; $5a5a: $07
	and b                                            ; $5a5b: $a0
	ld c, h                                          ; $5a5c: $4c
	add l                                            ; $5a5d: $85
	inc [hl]                                         ; $5a5e: $34
	db $eb                                           ; $5a5f: $eb
	ld d, b                                          ; $5a60: $50
	and c                                            ; $5a61: $a1
	cpl                                              ; $5a62: $2f
	ld b, e                                          ; $5a63: $43
	jp hl                                            ; $5a64: $e9


	jp z, $46a0                                      ; $5a65: $ca $a0 $46

	dec sp                                           ; $5a68: $3b
	inc [hl]                                         ; $5a69: $34
	ld l, a                                          ; $5a6a: $6f
	ld c, c                                          ; $5a6b: $49
	ldh a, [$cd]                                     ; $5a6c: $f0 $cd
	ld e, e                                          ; $5a6e: $5b
	xor b                                            ; $5a6f: $a8
	db $ec                                           ; $5a70: $ec
	cp c                                             ; $5a71: $b9
	ld c, h                                          ; $5a72: $4c
	xor b                                            ; $5a73: $a8
	ldh a, [$5c]                                     ; $5a74: $f0 $5c
	jr c, jr_098_5aba                                ; $5a76: $38 $42

	ld e, e                                          ; $5a78: $5b
	ld d, [hl]                                       ; $5a79: $56
	ld a, [hl-]                                      ; $5a7a: $3a
	ld d, l                                          ; $5a7b: $55
	ccf                                              ; $5a7c: $3f
	and b                                            ; $5a7d: $a0
	cpl                                              ; $5a7e: $2f
	ld b, e                                          ; $5a7f: $43
	ldh a, [$08]                                     ; $5a80: $f0 $08
	ld b, c                                          ; $5a82: $41
	ld c, c                                          ; $5a83: $49
	ldh a, [$08]                                     ; $5a84: $f0 $08
	ld b, c                                          ; $5a86: $41
	ld c, c                                          ; $5a87: $49
	and b                                            ; $5a88: $a0
	ldh a, [$5a]                                     ; $5a89: $f0 $5a
	add l                                            ; $5a8b: $85
	inc [hl]                                         ; $5a8c: $34
	db $ec                                           ; $5a8d: $ec
	sub $4c                                          ; $5a8e: $d6 $4c
	xor b                                            ; $5a90: $a8
	ld d, h                                          ; $5a91: $54
	ld b, d                                          ; $5a92: $42
	sbc l                                            ; $5a93: $9d
	ld d, b                                          ; $5a94: $50
	jr c, jr_098_5ad9                                ; $5a95: $38 $42

	db $ed                                           ; $5a97: $ed
	ld h, e                                          ; $5a98: $63
	ld d, e                                          ; $5a99: $53
	inc de                                           ; $5a9a: $13
	db $ed                                           ; $5a9b: $ed
	xor d                                            ; $5a9c: $aa
	ld a, [hl]                                       ; $5a9d: $7e
	jr c, jr_098_5ae2                                ; $5a9e: $38 $42

	inc a                                            ; $5aa0: $3c
	ld c, a                                          ; $5aa1: $4f
	ld c, h                                          ; $5aa2: $4c
	and b                                            ; $5aa3: $a0
	cpl                                              ; $5aa4: $2f
	ld b, e                                          ; $5aa5: $43
	db $ed                                           ; $5aa6: $ed
	xor c                                            ; $5aa7: $a9

Call_098_5aa8:
	ld b, d                                          ; $5aa8: $42
	ld c, e                                          ; $5aa9: $4b
	xor h                                            ; $5aaa: $ac
	db $eb                                           ; $5aab: $eb
	ld d, b                                          ; $5aac: $50
	ld b, d                                          ; $5aad: $42
	xor c                                            ; $5aae: $a9
	ld [hl], d                                       ; $5aaf: $72
	ld a, c                                          ; $5ab0: $79
	ccf                                              ; $5ab1: $3f
	ld b, l                                          ; $5ab2: $45
	and b                                            ; $5ab3: $a0
	ld e, [hl]                                       ; $5ab4: $5e
	dec sp                                           ; $5ab5: $3b
	ld c, b                                          ; $5ab6: $48
	xor h                                            ; $5ab7: $ac
	ldh a, [$34]                                     ; $5ab8: $f0 $34

jr_098_5aba:
	ld b, a                                          ; $5aba: $47
	db $ec                                           ; $5abb: $ec
	ld [$2fa0], sp                                   ; $5abc: $08 $a0 $2f
	ld b, e                                          ; $5abf: $43
	db $ed                                           ; $5ac0: $ed
	ld l, e                                          ; $5ac1: $6b
	db $ec                                           ; $5ac2: $ec
	ret c                                            ; $5ac3: $d8

	inc a                                            ; $5ac4: $3c
	xor b                                            ; $5ac5: $a8
	db $ed                                           ; $5ac6: $ed
	ld e, l                                          ; $5ac7: $5d
	ld b, h                                          ; $5ac8: $44
	ld e, l                                          ; $5ac9: $5d
	sbc h                                            ; $5aca: $9c
	ld c, [hl]                                       ; $5acb: $4e
	jr c, jr_098_5b08                                ; $5acc: $38 $3a

	ld [hl], h                                       ; $5ace: $74
	and b                                            ; $5acf: $a0
	ld c, d                                          ; $5ad0: $4a
	ld c, a                                          ; $5ad1: $4f
	inc [hl]                                         ; $5ad2: $34
	ldh a, [$08]                                     ; $5ad3: $f0 $08
	ld d, b                                          ; $5ad5: $50
	inc [hl]                                         ; $5ad6: $34
	ld l, e                                          ; $5ad7: $6b
	sbc d                                            ; $5ad8: $9a

jr_098_5ad9:
	ld c, a                                          ; $5ad9: $4f
	inc de                                           ; $5ada: $13
	pop af                                           ; $5adb: $f1
	rst SubAFromHL                                          ; $5adc: $d7
	ldh a, [$cf]                                     ; $5add: $f0 $cf
	ld d, e                                          ; $5adf: $53
	jr c, jr_098_5b1a                                ; $5ae0: $38 $38

jr_098_5ae2:
	dec sp                                           ; $5ae2: $3b
	ccf                                              ; $5ae3: $3f
	add d                                            ; $5ae4: $82
	add hl, sp                                       ; $5ae5: $39
	ld c, d                                          ; $5ae6: $4a
	ld a, $66                                        ; $5ae7: $3e $66
	add hl, sp                                       ; $5ae9: $39
	and b                                            ; $5aea: $a0
	cpl                                              ; $5aeb: $2f
	ld b, e                                          ; $5aec: $43
	ldh a, [$34]                                     ; $5aed: $f0 $34
	ld b, a                                          ; $5aef: $47
	db $ec                                           ; $5af0: $ec
	ld [$7fac], sp                                   ; $5af1: $08 $ac $7f
	ld b, a                                          ; $5af4: $47
	ld a, $3a                                        ; $5af5: $3e $3a
	jr c, jr_098_5b35                                ; $5af7: $38 $3c

	ld d, b                                          ; $5af9: $50
	xor b                                            ; $5afa: $a8
	ld [hl-], a                                      ; $5afb: $32
	ld d, c                                          ; $5afc: $51
	dec sp                                           ; $5afd: $3b
	ldh a, [rSB]                                     ; $5afe: $f0 $01
	ld e, c                                          ; $5b00: $59
	pop af                                           ; $5b01: $f1
	sub c                                            ; $5b02: $91
	ld a, $38                                        ; $5b03: $3e $38

jr_098_5b05:
	and e                                            ; $5b05: $a3
	ld b, [hl]                                       ; $5b06: $46
	dec sp                                           ; $5b07: $3b

jr_098_5b08:
	xor l                                            ; $5b08: $ad
	ld c, d                                          ; $5b09: $4a
	ld c, a                                          ; $5b0a: $4f
	inc [hl]                                         ; $5b0b: $34
	ld l, d                                          ; $5b0c: $6a
	ldh a, [rAUD1HIGH]                               ; $5b0d: $f0 $14
	ld b, d                                          ; $5b0f: $42
	ldh a, [$5c]                                     ; $5b10: $f0 $5c
	jr c, jr_098_5b05                                ; $5b12: $38 $f1

	ld h, e                                          ; $5b14: $63
	ld h, d                                          ; $5b15: $62
	inc de                                           ; $5b16: $13
	db $ed                                           ; $5b17: $ed
	adc b                                            ; $5b18: $88
	inc [hl]                                         ; $5b19: $34

jr_098_5b1a:
	pop af                                           ; $5b1a: $f1
	sbc l                                            ; $5b1b: $9d
	jr c, jr_098_5b7a                                ; $5b1c: $38 $5c

	dec sp                                           ; $5b1e: $3b
	dec a                                            ; $5b1f: $3d
	ld b, d                                          ; $5b20: $42
	ld b, l                                          ; $5b21: $45
	and b                                            ; $5b22: $a0
	cpl                                              ; $5b23: $2f
	ld b, e                                          ; $5b24: $43
	db $ed                                           ; $5b25: $ed
	xor c                                            ; $5b26: $a9
	ld c, e                                          ; $5b27: $4b
	db $eb                                           ; $5b28: $eb
	ld d, b                                          ; $5b29: $50
	ld b, d                                          ; $5b2a: $42
	and c                                            ; $5b2b: $a1
	ld h, e                                          ; $5b2c: $63
	inc [hl]                                         ; $5b2d: $34
	ld l, a                                          ; $5b2e: $6f
	ld b, d                                          ; $5b2f: $42
	ld c, e                                          ; $5b30: $4b
	ld c, b                                          ; $5b31: $48
	xor h                                            ; $5b32: $ac
	ld b, b                                          ; $5b33: $40
	add hl, sp                                       ; $5b34: $39

jr_098_5b35:
	dec [hl]                                         ; $5b35: $35
	ld d, c                                          ; $5b36: $51
	inc [hl]                                         ; $5b37: $34
	pop af                                           ; $5b38: $f1
	sub [hl]                                         ; $5b39: $96
	pop af                                           ; $5b3a: $f1
	ld e, c                                          ; $5b3b: $59
	ld b, l                                          ; $5b3c: $45
	and b                                            ; $5b3d: $a0
	cpl                                              ; $5b3e: $2f
	ld b, e                                          ; $5b3f: $43
	adc b                                            ; $5b40: $88
	sub c                                            ; $5b41: $91
	inc a                                            ; $5b42: $3c
	ld a, [hl-]                                      ; $5b43: $3a
	ld [hl], h                                       ; $5b44: $74
	xor c                                            ; $5b45: $a9
	ld [hl], d                                       ; $5b46: $72
	ld a, c                                          ; $5b47: $79
	ccf                                              ; $5b48: $3f
	ld b, l                                          ; $5b49: $45
	and b                                            ; $5b4a: $a0
	ldh a, [$34]                                     ; $5b4b: $f0 $34
	ld b, a                                          ; $5b4d: $47
	db $ec                                           ; $5b4e: $ec
	ld [$46ad], sp                                   ; $5b4f: $08 $ad $46
	dec sp                                           ; $5b52: $3b
	inc [hl]                                         ; $5b53: $34
	pop af                                           ; $5b54: $f1
	add c                                            ; $5b55: $81
	ld c, c                                          ; $5b56: $49
	db $eb                                           ; $5b57: $eb
	ld d, [hl]                                       ; $5b58: $56
	xor b                                            ; $5b59: $a8
	ld c, a                                          ; $5b5a: $4f
	add hl, sp                                       ; $5b5b: $39
	ldh a, [$fa]                                     ; $5b5c: $f0 $fa
	ld [hl], c                                       ; $5b5e: $71
	ld a, [hl-]                                      ; $5b5f: $3a
	jr c, jr_098_5bae                                ; $5b60: $38 $4c

	and b                                            ; $5b62: $a0
	cpl                                              ; $5b63: $2f
	ld b, e                                          ; $5b64: $43
	xor $10                                          ; $5b65: $ee $10
	xor $10                                          ; $5b67: $ee $10
	xor b                                            ; $5b69: $a8
	ld [hl-], a                                      ; $5b6a: $32
	ld e, h                                          ; $5b6b: $5c
	dec sp                                           ; $5b6c: $3b
	ld c, c                                          ; $5b6d: $49
	db $ed                                           ; $5b6e: $ed
	ld l, e                                          ; $5b6f: $6b
	ld b, h                                          ; $5b70: $44
	ld a, [hl-]                                      ; $5b71: $3a
	ld c, b                                          ; $5b72: $48
	and e                                            ; $5b73: $a3
	ld [$a0dd], a                                    ; $5b74: $ea $dd $a0
	cpl                                              ; $5b77: $2f
	ld b, e                                          ; $5b78: $43
	db $eb                                           ; $5b79: $eb

jr_098_5b7a:
	adc h                                            ; $5b7a: $8c
	xor h                                            ; $5b7b: $ac
	jp hl                                            ; $5b7c: $e9


	or [hl]                                          ; $5b7d: $b6
	and b                                            ; $5b7e: $a0
	ldh a, [$31]                                     ; $5b7f: $f0 $31
	ld c, e                                          ; $5b81: $4b
	ld l, a                                          ; $5b82: $6f
	ld c, h                                          ; $5b83: $4c
	xor h                                            ; $5b84: $ac
	ldh a, [$d4]                                     ; $5b85: $f0 $d4
	ldh a, [hDisp0_OBP1]                                     ; $5b87: $f0 $87
	ld b, a                                          ; $5b89: $47
	ldh a, [c]                                       ; $5b8a: $f2
	sub h                                            ; $5b8b: $94
	ld a, a                                          ; $5b8c: $7f
	ld h, d                                          ; $5b8d: $62
	db $ec                                           ; $5b8e: $ec
	rst FarCall                                          ; $5b8f: $f7
	dec sp                                           ; $5b90: $3b
	ccf                                              ; $5b91: $3f
	xor b                                            ; $5b92: $a8
	ld h, h                                          ; $5b93: $64
	ldh a, [$c8]                                     ; $5b94: $f0 $c8
	jr c, jr_098_5bd6                                ; $5b96: $38 $3e

	dec a                                            ; $5b98: $3d
	ld b, d                                          ; $5b99: $42
	ld c, b                                          ; $5b9a: $48
	and b                                            ; $5b9b: $a0
	cpl                                              ; $5b9c: $2f
	ld b, e                                          ; $5b9d: $43
	ldh a, [$5a]                                     ; $5b9e: $f0 $5a
	add l                                            ; $5ba0: $85
	inc [hl]                                         ; $5ba1: $34
	ldh a, [c]                                       ; $5ba2: $f2
	sub h                                            ; $5ba3: $94
	ld a, a                                          ; $5ba4: $7f
	ld c, h                                          ; $5ba5: $4c
	add l                                            ; $5ba6: $85
	xor b                                            ; $5ba7: $a8
	db $ec                                           ; $5ba8: $ec
	db $d3                                           ; $5ba9: $d3
	and c                                            ; $5baa: $a1
	db $ed                                           ; $5bab: $ed
	ld b, e                                          ; $5bac: $43
	xor h                                            ; $5bad: $ac

jr_098_5bae:
	db $ed                                           ; $5bae: $ed
	ld a, c                                          ; $5baf: $79
	ld b, d                                          ; $5bb0: $42
	ld c, c                                          ; $5bb1: $49
	ld e, h                                          ; $5bb2: $5c
	ld b, a                                          ; $5bb3: $47
	xor l                                            ; $5bb4: $ad
	add hl, sp                                       ; $5bb5: $39
	xor $1f                                          ; $5bb6: $ee $1f
	inc [hl]                                         ; $5bb8: $34
	ld l, e                                          ; $5bb9: $6b
	ld c, d                                          ; $5bba: $4a
	ld c, a                                          ; $5bbb: $4f
	ld a, [hl-]                                      ; $5bbc: $3a
	jr c, jr_098_5c01                                ; $5bbd: $38 $42

	xor b                                            ; $5bbf: $a8
	ld c, a                                          ; $5bc0: $4f
	add hl, sp                                       ; $5bc1: $39
	inc [hl]                                         ; $5bc2: $34
	or b                                             ; $5bc3: $b0
	and b                                            ; $5bc4: $a0
	cpl                                              ; $5bc5: $2f
	ld b, e                                          ; $5bc6: $43
	ld b, b                                          ; $5bc7: $40
	add hl, sp                                       ; $5bc8: $39
	ld b, h                                          ; $5bc9: $44
	ld c, h                                          ; $5bca: $4c
	inc [hl]                                         ; $5bcb: $34
	ld a, d                                          ; $5bcc: $7a
	ld e, a                                          ; $5bcd: $5f
	add hl, sp                                       ; $5bce: $39
	xor b                                            ; $5bcf: $a8
	ld [hl-], a                                      ; $5bd0: $32
	ld l, e                                          ; $5bd1: $6b
	ld b, h                                          ; $5bd2: $44
	ld e, a                                          ; $5bd3: $5f
	add hl, sp                                       ; $5bd4: $39
	inc [hl]                                         ; $5bd5: $34

jr_098_5bd6:
	ld a, a                                          ; $5bd6: $7f
	ld b, a                                          ; $5bd7: $47
	ld a, [hl-]                                      ; $5bd8: $3a
	ld c, [hl]                                       ; $5bd9: $4e
	ld a, [hl-]                                      ; $5bda: $3a
	and e                                            ; $5bdb: $a3
	ld l, l                                          ; $5bdc: $6d
	ldh a, [rAUD1HIGH]                               ; $5bdd: $f0 $14
	ld b, d                                          ; $5bdf: $42
	ldh a, [c]                                       ; $5be0: $f2
	ld [bc], a                                       ; $5be1: $02
	ld c, e                                          ; $5be2: $4b
	inc de                                           ; $5be3: $13

jr_098_5be4:
	pop af                                           ; $5be4: $f1
	rra                                              ; $5be5: $1f
	db $f4                                           ; $5be6: $f4
	ld d, h                                          ; $5be7: $54
	ld b, a                                          ; $5be8: $47
	ld b, [hl]                                       ; $5be9: $46
	ld d, a                                          ; $5bea: $57
	inc a                                            ; $5beb: $3c
	xor l                                            ; $5bec: $ad
	ld l, d                                          ; $5bed: $6a
	ldh a, [rAUD1HIGH]                               ; $5bee: $f0 $14
	xor $2d                                          ; $5bf0: $ee $2d
	jr c, jr_098_5be4                                ; $5bf2: $38 $f0

	inc d                                            ; $5bf4: $14
	ld b, a                                          ; $5bf5: $47
	inc de                                           ; $5bf6: $13
	ld a, [hl-]                                      ; $5bf7: $3a
	ld d, a                                          ; $5bf8: $57
	ld b, b                                          ; $5bf9: $40
	add hl, sp                                       ; $5bfa: $39
	ld a, [hl-]                                      ; $5bfb: $3a
	ld a, a                                          ; $5bfc: $7f
	ld d, e                                          ; $5bfd: $53
	ld d, c                                          ; $5bfe: $51
	ld c, [hl]                                       ; $5bff: $4e
	ld h, e                                          ; $5c00: $63

jr_098_5c01:
	and b                                            ; $5c01: $a0
	cpl                                              ; $5c02: $2f
	ld b, e                                          ; $5c03: $43
	rst JumpTable                                          ; $5c04: $c7
	xor c                                            ; $5c05: $a9
	jp hl                                            ; $5c06: $e9


	ld [hl+], a                                      ; $5c07: $22
	inc a                                            ; $5c08: $3c
	and c                                            ; $5c09: $a1
	xor $1f                                          ; $5c0a: $ee $1f
	inc [hl]                                         ; $5c0c: $34
	or b                                             ; $5c0d: $b0
	and b                                            ; $5c0e: $a0
	ldh a, [$8d]                                     ; $5c0f: $f0 $8d
	ld d, a                                          ; $5c11: $57
	ld h, e                                          ; $5c12: $63
	sbc h                                            ; $5c13: $9c
	inc a                                            ; $5c14: $3c
	ld a, [hl-]                                      ; $5c15: $3a
	inc de                                           ; $5c16: $13
	ldh a, [rAUD1ENV]                                ; $5c17: $f0 $12
	sbc a                                            ; $5c19: $9f
	ldh a, [rTIMA]                                   ; $5c1a: $f0 $05
	pop af                                           ; $5c1c: $f1
	rrca                                             ; $5c1d: $0f
	ld h, d                                          ; $5c1e: $62
	xor h                                            ; $5c1f: $ac
	pop af                                           ; $5c20: $f1
	sub c                                            ; $5c21: $91
	jr c, jr_098_5c66                                ; $5c22: $38 $42

	ldh a, [$8d]                                     ; $5c24: $f0 $8d
	ld d, b                                          ; $5c26: $50
	ld a, [hl-]                                      ; $5c27: $3a
	jr c, jr_098_5c6f                                ; $5c28: $38 $45

	add hl, sp                                       ; $5c2a: $39
	ld b, a                                          ; $5c2b: $47
	inc de                                           ; $5c2c: $13
	pop af                                           ; $5c2d: $f1
	sub b                                            ; $5c2e: $90
	ld [hl], b                                       ; $5c2f: $70
	ld a, $52                                        ; $5c30: $3e $52
	ld a, $66                                        ; $5c32: $3e $66
	add hl, sp                                       ; $5c34: $39

jr_098_5c35:
	and b                                            ; $5c35: $a0
	ld l, d                                          ; $5c36: $6a
	ldh a, [rAUD1HIGH]                               ; $5c37: $f0 $14
	ld c, a                                          ; $5c39: $4f
	jr c, jr_098_5c74                                ; $5c3a: $38 $38

	ldh a, [rAUD1HIGH]                               ; $5c3c: $f0 $14
	ld b, a                                          ; $5c3e: $47
	inc de                                           ; $5c3f: $13
	ld a, [hl-]                                      ; $5c40: $3a
	ld c, [hl]                                       ; $5c41: $4e
	ld b, l                                          ; $5c42: $45
	add hl, sp                                       ; $5c43: $39
	ld b, a                                          ; $5c44: $47
	inc de                                           ; $5c45: $13
	ld h, h                                          ; $5c46: $64
	pop af                                           ; $5c47: $f1
	ld d, a                                          ; $5c48: $57
	jr c, jr_098_5c35                                ; $5c49: $38 $ea

	jr nz, @+$4e                                     ; $5c4b: $20 $4c

	and b                                            ; $5c4d: $a0
	cpl                                              ; $5c4e: $2f
	ld b, e                                          ; $5c4f: $43
	ld b, b                                          ; $5c50: $40
	add hl, sp                                       ; $5c51: $39
	ld b, h                                          ; $5c52: $44
	ld c, h                                          ; $5c53: $4c
	xor b                                            ; $5c54: $a8
	jp hl                                            ; $5c55: $e9


	ld [hl+], a                                      ; $5c56: $22
	inc a                                            ; $5c57: $3c
	and c                                            ; $5c58: $a1
	cpl                                              ; $5c59: $2f
	ld b, e                                          ; $5c5a: $43
	ld b, [hl]                                       ; $5c5b: $46
	dec sp                                           ; $5c5c: $3b
	inc [hl]                                         ; $5c5d: $34
	db $ed                                           ; $5c5e: $ed
	xor c                                            ; $5c5f: $a9
	xor b                                            ; $5c60: $a8
	jp hl                                            ; $5c61: $e9


	ld d, c                                          ; $5c62: $51
	and b                                            ; $5c63: $a0
	cpl                                              ; $5c64: $2f
	ld [hl-], a                                      ; $5c65: $32

jr_098_5c66:
	db $eb                                           ; $5c66: $eb
	dec a                                            ; $5c67: $3d
	inc de                                           ; $5c68: $13
	ldh a, [rAUD2LEN]                                ; $5c69: $f0 $16
	ldh a, [$c0]                                     ; $5c6b: $f0 $c0
	ld a, $3f                                        ; $5c6d: $3e $3f

jr_098_5c6f:
	ld h, h                                          ; $5c6f: $64
	db $ec                                           ; $5c70: $ec
	ld l, $a3                                        ; $5c71: $2e $a3
	add hl, bc                                       ; $5c73: $09

jr_098_5c74:
	ld d, $35                                        ; $5c74: $16 $35
	rla                                              ; $5c76: $17
	ld [$132b], a                                    ; $5c77: $ea $2b $13
	add sp, -$2e                                     ; $5c7a: $e8 $d2
	and b                                            ; $5c7c: $a0
	cpl                                              ; $5c7d: $2f
	ld b, e                                          ; $5c7e: $43
	ld b, [hl]                                       ; $5c7f: $46
	inc [hl]                                         ; $5c80: $34
	db $ec                                           ; $5c81: $ec
	rst SubAFromDE                                          ; $5c82: $df
	dec [hl]                                         ; $5c83: $35
	rla                                              ; $5c84: $17
	db $eb                                           ; $5c85: $eb
	ld h, c                                          ; $5c86: $61
	inc [hl]                                         ; $5c87: $34
	db $eb                                           ; $5c88: $eb
	ld e, [hl]                                       ; $5c89: $5e
	xor b                                            ; $5c8a: $a8
	add sp, -$1c                                     ; $5c8b: $e8 $e4
	and c                                            ; $5c8d: $a1
	db $ed                                           ; $5c8e: $ed
	ld c, [hl]                                       ; $5c8f: $4e
	inc [hl]                                         ; $5c90: $34
	inc hl                                           ; $5c91: $23
	db $ec                                           ; $5c92: $ec
	cp c                                             ; $5c93: $b9
	ld d, b                                          ; $5c94: $50
	ld c, b                                          ; $5c95: $48
	xor h                                            ; $5c96: $ac
	ld [$1325], a                                    ; $5c97: $ea $25 $13
	ld h, a                                          ; $5c9a: $67
	ld e, h                                          ; $5c9b: $5c
	ld d, d                                          ; $5c9c: $52
	ld a, c                                          ; $5c9d: $79
	ld b, c                                          ; $5c9e: $41
	inc a                                            ; $5c9f: $3c
	and c                                            ; $5ca0: $a1
	cpl                                              ; $5ca1: $2f
	jr c, @+$3a                                      ; $5ca2: $38 $38

	ld c, h                                          ; $5ca4: $4c
	inc [hl]                                         ; $5ca5: $34
	db $ec                                           ; $5ca6: $ec
	rlca                                             ; $5ca7: $07
	add hl, bc                                       ; $5ca8: $09
	db $ec                                           ; $5ca9: $ec
	cp c                                             ; $5caa: $b9
	ld c, b                                          ; $5cab: $48

jr_098_5cac:
	dec [hl]                                         ; $5cac: $35
	inc hl                                           ; $5cad: $23
	inc de                                           ; $5cae: $13
	jp z, $eaac                                      ; $5caf: $ca $ac $ea

	xor c                                            ; $5cb2: $a9
	and b                                            ; $5cb3: $a0
	cpl                                              ; $5cb4: $2f
	add sp, -$2a                                     ; $5cb5: $e8 $d6
	add hl, bc                                       ; $5cb7: $09
	cp [hl]                                          ; $5cb8: $be
	ld c, b                                          ; $5cb9: $48
	dec [hl]                                         ; $5cba: $35
	inc hl                                           ; $5cbb: $23
	inc de                                           ; $5cbc: $13
	ld [$13e4], a                                    ; $5cbd: $ea $e4 $13
	db $eb                                           ; $5cc0: $eb
	ccf                                              ; $5cc1: $3f
	and b                                            ; $5cc2: $a0
	cpl                                              ; $5cc3: $2f
	ld b, e                                          ; $5cc4: $43
	jp hl                                            ; $5cc5: $e9


	or d                                             ; $5cc6: $b2
	inc de                                           ; $5cc7: $13
	db $ec                                           ; $5cc8: $ec
	rst SubAFromDE                                          ; $5cc9: $df
	db $ed                                           ; $5cca: $ed
	dec b                                            ; $5ccb: $05
	inc de                                           ; $5ccc: $13
	ld [$a03b], a                                    ; $5ccd: $ea $3b $a0
	xor $2d                                          ; $5cd0: $ee $2d
	inc [hl]                                         ; $5cd2: $34
	db $ed                                           ; $5cd3: $ed
	add d                                            ; $5cd4: $82
	ld c, d                                          ; $5cd5: $4a
	ld d, c                                          ; $5cd6: $51
	and b                                            ; $5cd7: $a0
	cpl                                              ; $5cd8: $2f
	ld b, e                                          ; $5cd9: $43
	ld [$ac2b], a                                    ; $5cda: $ea $2b $ac
	add sp, -$2e                                     ; $5cdd: $e8 $d2
	xor b                                            ; $5cdf: $a8
	ld de, $aeea                                     ; $5ce0: $11 $ea $ae
	and b                                            ; $5ce3: $a0
	ld d, $a8                                        ; $5ce4: $16 $a8
	ld [$ac4b], a                                    ; $5ce6: $ea $4b $ac
	add sp, -$2e                                     ; $5ce9: $e8 $d2
	and b                                            ; $5ceb: $a0
	cpl                                              ; $5cec: $2f
	ld b, e                                          ; $5ced: $43
	db $ec                                           ; $5cee: $ec
	rst SubAFromDE                                          ; $5cef: $df
	xor b                                            ; $5cf0: $a8
	db $eb                                           ; $5cf1: $eb
	ld [hl], b                                       ; $5cf2: $70
	and c                                            ; $5cf3: $a1
	ld e, [hl]                                       ; $5cf4: $5e
	dec sp                                           ; $5cf5: $3b
	xor c                                            ; $5cf6: $a9
	ldh a, [$d8]                                     ; $5cf7: $f0 $d8
	inc [hl]                                         ; $5cf9: $34
	ldh a, [$ea]                                     ; $5cfa: $f0 $ea
	ld c, d                                          ; $5cfc: $4a
	ld d, c                                          ; $5cfd: $51
	and b                                            ; $5cfe: $a0
	cpl                                              ; $5cff: $2f
	ld b, e                                          ; $5d00: $43
	or h                                             ; $5d01: $b4
	xor h                                            ; $5d02: $ac
	ld [$1325], a                                    ; $5d03: $ea $25 $13
	ld h, a                                          ; $5d06: $67
	inc a                                            ; $5d07: $3c
	ld a, [hl-]                                      ; $5d08: $3a
	jr c, jr_098_5cac                                ; $5d09: $38 $a1

	ld c, e                                          ; $5d0b: $4b
	inc [hl]                                         ; $5d0c: $34
	xor $2d                                          ; $5d0d: $ee $2d
	xor b                                            ; $5d0f: $a8
	ldh a, [$66]                                     ; $5d10: $f0 $66
	ld b, c                                          ; $5d12: $41
	ld c, d                                          ; $5d13: $4a
	ld c, b                                          ; $5d14: $48
	and b                                            ; $5d15: $a0
	cpl                                              ; $5d16: $2f
	ld b, e                                          ; $5d17: $43
	ld b, b                                          ; $5d18: $40
	ld c, l                                          ; $5d19: $4d
	ld e, e                                          ; $5d1a: $5b
	ld d, [hl]                                       ; $5d1b: $56
	xor h                                            ; $5d1c: $ac
	add sp, -$70                                     ; $5d1d: $e8 $90
	inc de                                           ; $5d1f: $13
	db $ec                                           ; $5d20: $ec
	ld a, [bc]                                       ; $5d21: $0a
	and c                                            ; $5d22: $a1

jr_098_5d23:
	xor $2d                                          ; $5d23: $ee $2d
	inc [hl]                                         ; $5d25: $34
	ld b, b                                          ; $5d26: $40
	ld c, l                                          ; $5d27: $4d
	ld c, d                                          ; $5d28: $4a
	jr c, @+$3a                                      ; $5d29: $38 $38

	ld c, d                                          ; $5d2b: $4a
	ld d, c                                          ; $5d2c: $51
	xor b                                            ; $5d2d: $a8
	jp z, Jump_098_51ac                              ; $5d2e: $ca $ac $51

	sbc l                                            ; $5d31: $9d
	ld b, a                                          ; $5d32: $47
	ld h, a                                          ; $5d33: $67
	ld e, h                                          ; $5d34: $5c
	ld d, d                                          ; $5d35: $52
	ld d, c                                          ; $5d36: $51
	ld c, h                                          ; $5d37: $4c
	and b                                            ; $5d38: $a0
	ld d, $a8                                        ; $5d39: $16 $a8
	pop af                                           ; $5d3b: $f1
	ld e, h                                          ; $5d3c: $5c
	ldh a, [rAUD1HIGH]                               ; $5d3d: $f0 $14
	inc [hl]                                         ; $5d3f: $34
	db $eb                                           ; $5d40: $eb
	ld h, c                                          ; $5d41: $61
	xor h                                            ; $5d42: $ac
	add sp, -$2e                                     ; $5d43: $e8 $d2
	and b                                            ; $5d45: $a0
	cpl                                              ; $5d46: $2f
	ld b, e                                          ; $5d47: $43
	ld c, c                                          ; $5d48: $49
	ld d, h                                          ; $5d49: $54
	ld e, a                                          ; $5d4a: $5f
	ld c, d                                          ; $5d4b: $4a
	inc [hl]                                         ; $5d4c: $34
	db $ec                                           ; $5d4d: $ec
	rst SubAFromDE                                          ; $5d4e: $df
	xor b                                            ; $5d4f: $a8
	db $eb                                           ; $5d50: $eb
	ld [hl], b                                       ; $5d51: $70
	and c                                            ; $5d52: $a1
	xor $2d                                          ; $5d53: $ee $2d
	inc [hl]                                         ; $5d55: $34
	ldh a, [$ea]                                     ; $5d56: $f0 $ea
	ld c, d                                          ; $5d58: $4a
	ld d, c                                          ; $5d59: $51
	ld b, l                                          ; $5d5a: $45
	and b                                            ; $5d5b: $a0
	jr c, jr_098_5d96                                ; $5d5c: $38 $38

	ld c, d                                          ; $5d5e: $4a
	ld d, c                                          ; $5d5f: $51
	ld c, h                                          ; $5d60: $4c
	xor b                                            ; $5d61: $a8
	ld [$a0a9], a                                    ; $5d62: $ea $a9 $a0
	ld d, $a8                                        ; $5d65: $16 $a8
	db $eb                                           ; $5d67: $eb
	ld h, c                                          ; $5d68: $61
	xor h                                            ; $5d69: $ac
	add sp, -$2e                                     ; $5d6a: $e8 $d2
	and b                                            ; $5d6c: $a0
	xor $2d                                          ; $5d6d: $ee $2d
	inc [hl]                                         ; $5d6f: $34
	ldh a, [$ea]                                     ; $5d70: $f0 $ea
	ld c, d                                          ; $5d72: $4a
	ld d, c                                          ; $5d73: $51
	ld e, l                                          ; $5d74: $5d
	ld e, d                                          ; $5d75: $5a
	ld c, b                                          ; $5d76: $48
	and b                                            ; $5d77: $a0
	cpl                                              ; $5d78: $2f
	ld b, e                                          ; $5d79: $43
	ld [$1325], a                                    ; $5d7a: $ea $25 $13
	ld h, a                                          ; $5d7d: $67
	inc a                                            ; $5d7e: $3c
	ld a, [hl-]                                      ; $5d7f: $3a
	jr c, jr_098_5d23                                ; $5d80: $38 $a1

	or [hl]                                          ; $5d82: $b6
	xor b                                            ; $5d83: $a8
	ld [$3ca9], a                                    ; $5d84: $ea $a9 $3c
	and b                                            ; $5d87: $a0
	cpl                                              ; $5d88: $2f
	ld b, e                                          ; $5d89: $43
	ld b, b                                          ; $5d8a: $40
	ld c, l                                          ; $5d8b: $4d
	ld e, e                                          ; $5d8c: $5b
	ld d, [hl]                                       ; $5d8d: $56
	and b                                            ; $5d8e: $a0
	cpl                                              ; $5d8f: $2f
	ld h, $ed                                        ; $5d90: $26 $ed
	ld e, h                                          ; $5d92: $5c
	dec h                                            ; $5d93: $25
	add hl, bc                                       ; $5d94: $09
	cpl                                              ; $5d95: $2f

jr_098_5d96:
	ld [hl-], a                                      ; $5d96: $32
	or h                                             ; $5d97: $b4
	xor h                                            ; $5d98: $ac
	ldh a, [$d4]                                     ; $5d99: $f0 $d4
	pop af                                           ; $5d9b: $f1
	ld a, [hl+]                                      ; $5d9c: $2a
	ld b, a                                          ; $5d9d: $47
	ld h, a                                          ; $5d9e: $67
	dec sp                                           ; $5d9f: $3b
	ccf                                              ; $5da0: $3f
	ld l, h                                          ; $5da1: $6c
	ld c, [hl]                                       ; $5da2: $4e
	inc a                                            ; $5da3: $3c
	and e                                            ; $5da4: $a3
	xor $2d                                          ; $5da5: $ee $2d
	inc [hl]                                         ; $5da7: $34
	jr c, jr_098_5de2                                ; $5da8: $38 $38

	ld c, d                                          ; $5daa: $4a
	ld d, c                                          ; $5dab: $51
	ld b, l                                          ; $5dac: $45
	xor b                                            ; $5dad: $a8
	jp z, $f034                                      ; $5dae: $ca $34 $f0

	call nc, $2af1                                   ; $5db1: $d4 $f1 $2a
	ld b, d                                          ; $5db4: $42
	sbc [hl]                                         ; $5db5: $9e
	ld c, d                                          ; $5db6: $4a
	ld c, b                                          ; $5db7: $48
	and b                                            ; $5db8: $a0
	cpl                                              ; $5db9: $2f
	ld b, e                                          ; $5dba: $43
	ld d, d                                          ; $5dbb: $52
	ld b, h                                          ; $5dbc: $44
	inc [hl]                                         ; $5dbd: $34
	db $ec                                           ; $5dbe: $ec
	rst SubAFromDE                                          ; $5dbf: $df
	ld c, e                                          ; $5dc0: $4b
	inc de                                           ; $5dc1: $13
	jp hl                                            ; $5dc2: $e9


	scf                                              ; $5dc3: $37
	and b                                            ; $5dc4: $a0
	ld d, c                                          ; $5dc5: $51
	jr c, jr_098_5e1a                                ; $5dc6: $38 $52

	ld a, c                                          ; $5dc8: $79
	ld b, c                                          ; $5dc9: $41
	xor b                                            ; $5dca: $a8
	ld h, h                                          ; $5dcb: $64
	sbc c                                            ; $5dcc: $99
	dec a                                            ; $5dcd: $3d
	ld a, c                                          ; $5dce: $79
	ld a, $52                                        ; $5dcf: $3e $52
	ld a, $3d                                        ; $5dd1: $3e $3d
	and b                                            ; $5dd3: $a0
	cpl                                              ; $5dd4: $2f
	ld b, e                                          ; $5dd5: $43
	or h                                             ; $5dd6: $b4
	xor h                                            ; $5dd7: $ac
	ldh a, [$0a]                                     ; $5dd8: $f0 $0a
	pop af                                           ; $5dda: $f1
	jr @-$14                                         ; $5ddb: $18 $ea

	inc a                                            ; $5ddd: $3c
	inc a                                            ; $5dde: $3c
	and b                                            ; $5ddf: $a0
	or [hl]                                          ; $5de0: $b6
	xor b                                            ; $5de1: $a8

jr_098_5de2:
	jp z, $ea34                                      ; $5de2: $ca $34 $ea

	xor c                                            ; $5de5: $a9
	and b                                            ; $5de6: $a0
	ld l, e                                          ; $5de7: $6b
	ld h, d                                          ; $5de8: $62
	ld h, h                                          ; $5de9: $64
	ldh a, [$c8]                                     ; $5dea: $f0 $c8
	jr c, jr_098_5e01                                ; $5dec: $38 $13

	ld a, $3d                                        ; $5dee: $3e $3d
	ld b, d                                          ; $5df0: $42
	ld c, d                                          ; $5df1: $4a
	ld d, c                                          ; $5df2: $51
	inc a                                            ; $5df3: $3c
	and c                                            ; $5df4: $a1
	cpl                                              ; $5df5: $2f
	ld b, e                                          ; $5df6: $43
	ld [$a8d1], a                                    ; $5df7: $ea $d1 $a8
	db $ec                                           ; $5dfa: $ec
	rst SubAFromDE                                          ; $5dfb: $df
	ld c, e                                          ; $5dfc: $4b
	and c                                            ; $5dfd: $a1
	ld h, e                                          ; $5dfe: $63
	inc [hl]                                         ; $5dff: $34
	ld l, a                                          ; $5e00: $6f

jr_098_5e01:
	db $ed                                           ; $5e01: $ed
	ld b, e                                          ; $5e02: $43
	db $ed                                           ; $5e03: $ed
	add h                                            ; $5e04: $84
	ld c, d                                          ; $5e05: $4a
	ld d, c                                          ; $5e06: $51
	xor b                                            ; $5e07: $a8
	db $ed                                           ; $5e08: $ed
	ld b, e                                          ; $5e09: $43
	xor h                                            ; $5e0a: $ac
	db $eb                                           ; $5e0b: $eb
	ld c, a                                          ; $5e0c: $4f
	ld c, d                                          ; $5e0d: $4a
	ld d, c                                          ; $5e0e: $51
	inc a                                            ; $5e0f: $3c
	ld d, b                                          ; $5e10: $50
	ld c, b                                          ; $5e11: $48
	and b                                            ; $5e12: $a0
	cpl                                              ; $5e13: $2f
	ld b, e                                          ; $5e14: $43
	rst JumpTable                                          ; $5e15: $c7
	xor b                                            ; $5e16: $a8
	jp hl                                            ; $5e17: $e9


	jr c, jr_098_5e2d                                ; $5e18: $38 $13

jr_098_5e1a:
	db $ec                                           ; $5e1a: $ec
	ld l, a                                          ; $5e1b: $6f
	and c                                            ; $5e1c: $a1
	rst JumpTable                                          ; $5e1d: $c7
	ld c, d                                          ; $5e1e: $4a
	ld d, c                                          ; $5e1f: $51
	ld c, h                                          ; $5e20: $4c
	and b                                            ; $5e21: $a0
	ld b, b                                          ; $5e22: $40
	ld c, l                                          ; $5e23: $4d
	ld a, [hl-]                                      ; $5e24: $3a
	ld d, b                                          ; $5e25: $50
	xor h                                            ; $5e26: $ac
	ld l, a                                          ; $5e27: $6f
	db $ed                                           ; $5e28: $ed
	ld b, e                                          ; $5e29: $43
	db $ed                                           ; $5e2a: $ed
	add h                                            ; $5e2b: $84
	ld c, d                                          ; $5e2c: $4a

jr_098_5e2d:
	ld d, c                                          ; $5e2d: $51
	and b                                            ; $5e2e: $a0
	ld b, b                                          ; $5e2f: $40
	ld c, l                                          ; $5e30: $4d
	ld a, [hl-]                                      ; $5e31: $3a
	ld d, b                                          ; $5e32: $50
	xor h                                            ; $5e33: $ac
	ld l, a                                          ; $5e34: $6f
	ld c, a                                          ; $5e35: $4f
	db $ed                                           ; $5e36: $ed
	add h                                            ; $5e37: $84
	ld c, d                                          ; $5e38: $4a
	ld d, c                                          ; $5e39: $51
	and b                                            ; $5e3a: $a0
	or [hl]                                          ; $5e3b: $b6
	and b                                            ; $5e3c: $a0
	ld e, d                                          ; $5e3d: $5a
	add hl, sp                                       ; $5e3e: $39
	ld c, d                                          ; $5e3f: $4a
	ld a, $3d                                        ; $5e40: $3e $3d
	and c                                            ; $5e42: $a1
	cpl                                              ; $5e43: $2f
	ld b, e                                          ; $5e44: $43
	jp hl                                            ; $5e45: $e9


	jp z, $88a0                                      ; $5e46: $ca $a0 $88

	sub c                                            ; $5e49: $91
	ld c, d                                          ; $5e4a: $4a
	ld d, c                                          ; $5e4b: $51
	inc a                                            ; $5e4c: $3c
	xor c                                            ; $5e4d: $a9
	ld l, a                                          ; $5e4e: $6f
	ld c, a                                          ; $5e4f: $4f
	db $ed                                           ; $5e50: $ed
	ld l, e                                          ; $5e51: $6b
	ld a, [hl-]                                      ; $5e52: $3a
	ld b, c                                          ; $5e53: $41
	ld c, d                                          ; $5e54: $4a
	ld d, c                                          ; $5e55: $51
	ld b, l                                          ; $5e56: $45
	and b                                            ; $5e57: $a0
	cpl                                              ; $5e58: $2f
	ld b, e                                          ; $5e59: $43
	db $d3                                           ; $5e5a: $d3
	xor c                                            ; $5e5b: $a9
	ld c, a                                          ; $5e5c: $4f
	ld a, $3c                                        ; $5e5d: $3e $3c
	ld a, $3d                                        ; $5e5f: $3e $3d
	ld d, b                                          ; $5e61: $50
	xor h                                            ; $5e62: $ac
	add sp, -$12                                     ; $5e63: $e8 $ee
	and b                                            ; $5e65: $a0
	ldh a, [rSCY]                                    ; $5e66: $f0 $42
	ldh a, [rSCY]                                    ; $5e68: $f0 $42
	inc [hl]                                         ; $5e6a: $34
	ld b, b                                          ; $5e6b: $40
	add hl, sp                                       ; $5e6c: $39
	inc a                                            ; $5e6d: $3c
	ld c, a                                          ; $5e6e: $4f
	inc de                                           ; $5e6f: $13
	ld a, $4d                                        ; $5e70: $3e $4d
	ld d, d                                          ; $5e72: $52
	ld a, c                                          ; $5e73: $79
	ld b, c                                          ; $5e74: $41
	ld c, h                                          ; $5e75: $4c
	and b                                            ; $5e76: $a0
	db $ec                                           ; $5e77: $ec
	inc b                                            ; $5e78: $04
	ld c, h                                          ; $5e79: $4c
	and b                                            ; $5e7a: $a0
	cpl                                              ; $5e7b: $2f
	ld b, e                                          ; $5e7c: $43
	db $ec                                           ; $5e7d: $ec
	rst SubAFromDE                                          ; $5e7e: $df
	ld b, d                                          ; $5e7f: $42
	ld c, e                                          ; $5e80: $4b
	xor h                                            ; $5e81: $ac
	db $eb                                           ; $5e82: $eb
	ld d, b                                          ; $5e83: $50
	ld b, d                                          ; $5e84: $42
	xor c                                            ; $5e85: $a9
	ld [hl], d                                       ; $5e86: $72
	ld a, c                                          ; $5e87: $79
	ccf                                              ; $5e88: $3f
	ld b, l                                          ; $5e89: $45
	and b                                            ; $5e8a: $a0
	xor $2d                                          ; $5e8b: $ee $2d
	inc [hl]                                         ; $5e8d: $34
	ld e, d                                          ; $5e8e: $5a
	add hl, sp                                       ; $5e8f: $39
	sub a                                            ; $5e90: $97
	and b                                            ; $5e91: $a0
	cpl                                              ; $5e92: $2f
	ld b, e                                          ; $5e93: $43
	db $ed                                           ; $5e94: $ed
	ld l, e                                          ; $5e95: $6b
	db $ec                                           ; $5e96: $ec
	ret c                                            ; $5e97: $d8

	inc a                                            ; $5e98: $3c
	xor h                                            ; $5e99: $ac
	db $ed                                           ; $5e9a: $ed
	ld e, l                                          ; $5e9b: $5d
	ld b, h                                          ; $5e9c: $44
	ld e, l                                          ; $5e9d: $5d
	sbc h                                            ; $5e9e: $9c
	ld c, [hl]                                       ; $5e9f: $4e
	jr c, jr_098_5edc                                ; $5ea0: $38 $3a

	ld [hl], h                                       ; $5ea2: $74
	and b                                            ; $5ea3: $a0
	ld c, d                                          ; $5ea4: $4a
	ld c, a                                          ; $5ea5: $4f
	inc [hl]                                         ; $5ea6: $34
	pop af                                           ; $5ea7: $f1
	ld d, l                                          ; $5ea8: $55
	ld a, [hl-]                                      ; $5ea9: $3a
	ld c, [hl]                                       ; $5eaa: $4e
	inc de                                           ; $5eab: $13
	ldh a, [c]                                       ; $5eac: $f2
	and [hl]                                         ; $5ead: $a6
	ldh a, [$59]                                     ; $5eae: $f0 $59
	ld c, d                                          ; $5eb0: $4a
	ld d, c                                          ; $5eb1: $51
	inc a                                            ; $5eb2: $3c
	ld d, b                                          ; $5eb3: $50
	ld c, b                                          ; $5eb4: $48
	and b                                            ; $5eb5: $a0
	cpl                                              ; $5eb6: $2f
	ld b, e                                          ; $5eb7: $43
	ldh a, [$34]                                     ; $5eb8: $f0 $34
	ld b, a                                          ; $5eba: $47
	db $ec                                           ; $5ebb: $ec
	ld [$7fac], sp                                   ; $5ebc: $08 $ac $7f
	ld b, a                                          ; $5ebf: $47
	ld a, $3a                                        ; $5ec0: $3e $3a
	jr c, jr_098_5f00                                ; $5ec2: $38 $3c

	ld d, b                                          ; $5ec4: $50
	xor b                                            ; $5ec5: $a8
	ld [hl-], a                                      ; $5ec6: $32
	ld d, c                                          ; $5ec7: $51
	dec sp                                           ; $5ec8: $3b
	ldh a, [rSB]                                     ; $5ec9: $f0 $01
	ld e, c                                          ; $5ecb: $59
	pop af                                           ; $5ecc: $f1
	sub c                                            ; $5ecd: $91
	ld a, $38                                        ; $5ece: $3e $38
	and e                                            ; $5ed0: $a3
	ld b, b                                          ; $5ed1: $40
	inc [hl]                                         ; $5ed2: $34
	ld b, b                                          ; $5ed3: $40
	ld b, c                                          ; $5ed4: $41
	ld a, [hl-]                                      ; $5ed5: $3a
	ld b, a                                          ; $5ed6: $47
	inc de                                           ; $5ed7: $13
	ld a, a                                          ; $5ed8: $7f
	ld b, a                                          ; $5ed9: $47
	ld d, c                                          ; $5eda: $51
	ld c, [hl]                                       ; $5edb: $4e

jr_098_5edc:
	ld d, h                                          ; $5edc: $54
	ld c, c                                          ; $5edd: $49
	ld a, [hl-]                                      ; $5ede: $3a
	jr c, jr_098_5f2a                                ; $5edf: $38 $49

	inc de                                           ; $5ee1: $13
	ld [hl], a                                       ; $5ee2: $77
	jr c, jr_098_5f37                                ; $5ee3: $38 $52

	ld d, c                                          ; $5ee5: $51
	and b                                            ; $5ee6: $a0
	cpl                                              ; $5ee7: $2f
	ld b, e                                          ; $5ee8: $43
	db $ec                                           ; $5ee9: $ec
	rst SubAFromDE                                          ; $5eea: $df
	ld c, e                                          ; $5eeb: $4b
	inc de                                           ; $5eec: $13
	db $eb                                           ; $5eed: $eb
	ld d, b                                          ; $5eee: $50
	ld b, d                                          ; $5eef: $42
	and c                                            ; $5ef0: $a1
	ld l, a                                          ; $5ef1: $6f
	ld b, d                                          ; $5ef2: $42
	ld c, e                                          ; $5ef3: $4b
	ld c, b                                          ; $5ef4: $48
	xor h                                            ; $5ef5: $ac
	jr c, jr_098_5f30                                ; $5ef6: $38 $38

	db $ec                                           ; $5ef8: $ec
	ret c                                            ; $5ef9: $d8

	ld c, d                                          ; $5efa: $4a
	ld d, c                                          ; $5efb: $51
	inc a                                            ; $5efc: $3c
	and b                                            ; $5efd: $a0
	cpl                                              ; $5efe: $2f
	ld b, e                                          ; $5eff: $43

jr_098_5f00:
	ldh a, [$34]                                     ; $5f00: $f0 $34
	ld b, a                                          ; $5f02: $47
	db $ec                                           ; $5f03: $ec
	ld [$edad], sp                                   ; $5f04: $08 $ad $ed
	ld l, e                                          ; $5f07: $6b
	ld c, d                                          ; $5f08: $4a
	ld a, $66                                        ; $5f09: $3e $66
	add hl, sp                                       ; $5f0b: $39
	and c                                            ; $5f0c: $a1
	xor $2d                                          ; $5f0d: $ee $2d
	xor b                                            ; $5f0f: $a8
	jr c, jr_098_5f46                                ; $5f10: $38 $34

	jr c, jr_098_5f72                                ; $5f12: $38 $5e

	xor h                                            ; $5f14: $ac
	ld b, b                                          ; $5f15: $40
	add hl, sp                                       ; $5f16: $39
	ld e, e                                          ; $5f17: $5b
	ld d, [hl]                                       ; $5f18: $56
	ld a, [hl-]                                      ; $5f19: $3a
	ld d, l                                          ; $5f1a: $55
	ccf                                              ; $5f1b: $3f
	ld c, b                                          ; $5f1c: $48
	and b                                            ; $5f1d: $a0
	cpl                                              ; $5f1e: $2f
	ld b, e                                          ; $5f1f: $43
	db $ec                                           ; $5f20: $ec
	rst SubAFromDE                                          ; $5f21: $df
	ccf                                              ; $5f22: $3f
	xor h                                            ; $5f23: $ac
	ldh a, [c]                                       ; $5f24: $f2
	ld [hl], e                                       ; $5f25: $73
	ldh a, [hDisp1_WX]                                     ; $5f26: $f0 $96
	ld b, h                                          ; $5f28: $44
	ld c, h                                          ; $5f29: $4c

jr_098_5f2a:
	ld c, b                                          ; $5f2a: $48
	and b                                            ; $5f2b: $a0
	ld l, d                                          ; $5f2c: $6a
	ldh a, [rAUD1HIGH]                               ; $5f2d: $f0 $14
	ld c, e                                          ; $5f2f: $4b

jr_098_5f30:
	db $ed                                           ; $5f30: $ed
	ld a, c                                          ; $5f31: $79
	ld c, d                                          ; $5f32: $4a
	ld d, c                                          ; $5f33: $51
	ld c, h                                          ; $5f34: $4c
	and b                                            ; $5f35: $a0
	cpl                                              ; $5f36: $2f

jr_098_5f37:
	ld b, e                                          ; $5f37: $43
	db $eb                                           ; $5f38: $eb
	adc h                                            ; $5f39: $8c
	xor h                                            ; $5f3a: $ac
	jp hl                                            ; $5f3b: $e9


	or [hl]                                          ; $5f3c: $b6
	and b                                            ; $5f3d: $a0
	ld l, d                                          ; $5f3e: $6a
	ldh a, [rAUD1HIGH]                               ; $5f3f: $f0 $14
	ld d, h                                          ; $5f41: $54
	ld b, b                                          ; $5f42: $40
	inc [hl]                                         ; $5f43: $34
	ld l, a                                          ; $5f44: $6f
	ld b, d                                          ; $5f45: $42

jr_098_5f46:
	ldh a, [$c8]                                     ; $5f46: $f0 $c8
	jr c, jr_098_5f9d                                ; $5f48: $38 $53

	inc de                                           ; $5f4a: $13
	ldh a, [$d4]                                     ; $5f4b: $f0 $d4
	ldh a, [hDisp0_OBP1]                                     ; $5f4d: $f0 $87
	ld b, a                                          ; $5f4f: $47
	ldh a, [rOCPS]                                   ; $5f50: $f0 $6a
	ld e, e                                          ; $5f52: $5b
	ld c, [hl]                                       ; $5f53: $4e
	ld c, c                                          ; $5f54: $49
	inc de                                           ; $5f55: $13
	jr c, @+$3a                                      ; $5f56: $38 $38

	ld b, d                                          ; $5f58: $42
	ld c, d                                          ; $5f59: $4a
	ld d, c                                          ; $5f5a: $51
	ld e, l                                          ; $5f5b: $5d
	ld e, d                                          ; $5f5c: $5a
	ld c, b                                          ; $5f5d: $48
	and b                                            ; $5f5e: $a0
	cpl                                              ; $5f5f: $2f
	ld b, e                                          ; $5f60: $43
	ld e, h                                          ; $5f61: $5c
	dec sp                                           ; $5f62: $3b
	ld c, c                                          ; $5f63: $49
	inc a                                            ; $5f64: $3c
	ld a, [hl-]                                      ; $5f65: $3a
	add hl, sp                                       ; $5f66: $39
	ld b, l                                          ; $5f67: $45
	xor b                                            ; $5f68: $a8
	db $ed                                           ; $5f69: $ed
	ld b, e                                          ; $5f6a: $43
	inc [hl]                                         ; $5f6b: $34
	db $ec                                           ; $5f6c: $ec
	rst SubAFromDE                                          ; $5f6d: $df
	ld b, d                                          ; $5f6e: $42
	inc de                                           ; $5f6f: $13
	ldh a, [$c8]                                     ; $5f70: $f0 $c8

jr_098_5f72:
	jr c, jr_098_5fb8                                ; $5f72: $38 $44

	ld c, a                                          ; $5f74: $4f
	ld b, c                                          ; $5f75: $41
	and b                                            ; $5f76: $a0
	sbc $40                                          ; $5f77: $de $40
	add hl, sp                                       ; $5f79: $39
	ld [hl], a                                       ; $5f7a: $77
	jr c, jr_098_5fcf                                ; $5f7b: $38 $52

	ld d, c                                          ; $5f7d: $51
	inc a                                            ; $5f7e: $3c
	and c                                            ; $5f7f: $a1
	cpl                                              ; $5f80: $2f
	ld b, e                                          ; $5f81: $43
	db $ec                                           ; $5f82: $ec
	dec l                                            ; $5f83: $2d
	and b                                            ; $5f84: $a0
	ld b, h                                          ; $5f85: $44
	dec sp                                           ; $5f86: $3b
	dec a                                            ; $5f87: $3d
	ld d, b                                          ; $5f88: $50
	xor l                                            ; $5f89: $ad
	ld c, d                                          ; $5f8a: $4a
	ld c, a                                          ; $5f8b: $4f
	inc [hl]                                         ; $5f8c: $34
	ld c, a                                          ; $5f8d: $4f
	add hl, sp                                       ; $5f8e: $39
	ldh a, [rHDMA4]                                  ; $5f8f: $f0 $54
	ld a, $13                                        ; $5f91: $3e $13
	sbc c                                            ; $5f93: $99
	add b                                            ; $5f94: $80
	ld d, h                                          ; $5f95: $54
	ld c, c                                          ; $5f96: $49
	ld b, a                                          ; $5f97: $47
	ld a, $52                                        ; $5f98: $3e $52
	ld d, c                                          ; $5f9a: $51
	and b                                            ; $5f9b: $a0
	cpl                                              ; $5f9c: $2f

jr_098_5f9d:
	ld b, e                                          ; $5f9d: $43
	ldh a, [$5d]                                     ; $5f9e: $f0 $5d
	ld a, [hl-]                                      ; $5fa0: $3a
	inc [hl]                                         ; $5fa1: $34
	db $ec                                           ; $5fa2: $ec
	rst SubAFromDE                                          ; $5fa3: $df
	xor b                                            ; $5fa4: $a8
	jp hl                                            ; $5fa5: $e9


	ld [hl+], a                                      ; $5fa6: $22
	inc a                                            ; $5fa7: $3c
	and c                                            ; $5fa8: $a1
	or [hl]                                          ; $5fa9: $b6
	xor b                                            ; $5faa: $a8
	or b                                             ; $5fab: $b0
	and b                                            ; $5fac: $a0
	db $ed                                           ; $5fad: $ed
	push bc                                          ; $5fae: $c5
	inc a                                            ; $5faf: $3c
	ld d, b                                          ; $5fb0: $50
	ld a, [hl]                                       ; $5fb1: $7e
	jr c, jr_098_6008                                ; $5fb2: $38 $54

	ld c, c                                          ; $5fb4: $49
	ld d, e                                          ; $5fb5: $53
	inc de                                           ; $5fb6: $13
	ld b, [hl]                                       ; $5fb7: $46

jr_098_5fb8:
	ld d, a                                          ; $5fb8: $57
	ld d, d                                          ; $5fb9: $52
	ld a, $3d                                        ; $5fba: $3e $3d
	ld b, d                                          ; $5fbc: $42
	ld c, d                                          ; $5fbd: $4a
	xor h                                            ; $5fbe: $ac
	db $ed                                           ; $5fbf: $ed
	ld h, b                                          ; $5fc0: $60
	ld b, d                                          ; $5fc1: $42
	ldh a, [rAUD1HIGH]                               ; $5fc2: $f0 $14
	ld b, a                                          ; $5fc4: $47
	ld a, [hl-]                                      ; $5fc5: $3a
	ld d, a                                          ; $5fc6: $57
	ld b, b                                          ; $5fc7: $40
	add hl, sp                                       ; $5fc8: $39
	ld c, d                                          ; $5fc9: $4a
	ld d, c                                          ; $5fca: $51
	and b                                            ; $5fcb: $a0
	cpl                                              ; $5fcc: $2f
	ld b, e                                          ; $5fcd: $43
	ld e, [hl]                                       ; $5fce: $5e

jr_098_5fcf:
	dec sp                                           ; $5fcf: $3b
	inc [hl]                                         ; $5fd0: $34
	jr c, jr_098_600b                                ; $5fd1: $38 $38

	sbc d                                            ; $5fd3: $9a
	dec sp                                           ; $5fd4: $3b
	ccf                                              ; $5fd5: $3f
	and c                                            ; $5fd6: $a1
	ld a, [hl-]                                      ; $5fd7: $3a
	inc [hl]                                         ; $5fd8: $34
	ld l, e                                          ; $5fd9: $6b

jr_098_5fda:
	ld c, d                                          ; $5fda: $4a
	ld c, a                                          ; $5fdb: $4f
	ld a, [hl-]                                      ; $5fdc: $3a
	jr c, jr_098_6029                                ; $5fdd: $38 $4a

	ld d, c                                          ; $5fdf: $51
	xor l                                            ; $5fe0: $ad
	db $ec                                           ; $5fe1: $ec
	push bc                                          ; $5fe2: $c5
	ld a, d                                          ; $5fe3: $7a
	ld d, a                                          ; $5fe4: $57
	ld d, d                                          ; $5fe5: $52
	ld a, c                                          ; $5fe6: $79
	ld b, c                                          ; $5fe7: $41
	inc a                                            ; $5fe8: $3c
	and c                                            ; $5fe9: $a1
	cpl                                              ; $5fea: $2f
	ld b, e                                          ; $5feb: $43
	ld a, a                                          ; $5fec: $7f
	ld b, a                                          ; $5fed: $47
	ld a, [hl-]                                      ; $5fee: $3a
	ld c, [hl]                                       ; $5fef: $4e
	ld e, l                                          ; $5ff0: $5d
	ld e, d                                          ; $5ff1: $5a
	xor h                                            ; $5ff2: $ac
	db $ec                                           ; $5ff3: $ec
	rrca                                             ; $5ff4: $0f
	and c                                            ; $5ff5: $a1
	rst JumpTable                                          ; $5ff6: $c7
	ld a, $52                                        ; $5ff7: $3e $52
	ld a, $66                                        ; $5ff9: $3e $66
	add hl, sp                                       ; $5ffb: $39
	and b                                            ; $5ffc: $a0
	ld h, e                                          ; $5ffd: $63
	sbc h                                            ; $5ffe: $9c
	inc a                                            ; $5fff: $3c
	ld a, [hl-]                                      ; $6000: $3a
	ldh a, [rBGP]                                    ; $6001: $f0 $47
	ldh a, [$2a]                                     ; $6003: $f0 $2a
	ld c, d                                          ; $6005: $4a
	ld d, c                                          ; $6006: $51
	ld d, e                                          ; $6007: $53

jr_098_6008:
	xor h                                            ; $6008: $ac
	pop af                                           ; $6009: $f1
	sub c                                            ; $600a: $91

jr_098_600b:
	jr c, jr_098_604f                                ; $600b: $38 $42

	ldh a, [$8d]                                     ; $600d: $f0 $8d
	ld d, b                                          ; $600f: $50
	ld a, [hl-]                                      ; $6010: $3a
	jr c, @+$15                                      ; $6011: $38 $13

	ldh a, [rAUD1ENV]                                ; $6013: $f0 $12
	sbc a                                            ; $6015: $9f
	ldh a, [rTIMA]                                   ; $6016: $f0 $05
	pop af                                           ; $6018: $f1
	rrca                                             ; $6019: $0f
	ld b, a                                          ; $601a: $47
	ld a, $52                                        ; $601b: $3e $52
	ld a, $66                                        ; $601d: $3e $66
	add hl, sp                                       ; $601f: $39
	and b                                            ; $6020: $a0
	ld l, d                                          ; $6021: $6a

jr_098_6022:
	ldh a, [rAUD1HIGH]                               ; $6022: $f0 $14
	ld c, a                                          ; $6024: $4f
	jr c, jr_098_605f                                ; $6025: $38 $38

	ldh a, [rAUD1HIGH]                               ; $6027: $f0 $14

jr_098_6029:
	ld b, a                                          ; $6029: $47
	inc de                                           ; $602a: $13
	ld a, [hl-]                                      ; $602b: $3a
	ld d, a                                          ; $602c: $57
	ld d, d                                          ; $602d: $52
	ld d, c                                          ; $602e: $51
	ld b, l                                          ; $602f: $45
	add hl, sp                                       ; $6030: $39
	ld b, a                                          ; $6031: $47
	xor h                                            ; $6032: $ac
	ld h, h                                          ; $6033: $64
	pop af                                           ; $6034: $f1
	ld d, a                                          ; $6035: $57
	jr c, jr_098_6022                                ; $6036: $38 $ea

	jr nz, jr_098_5fda                               ; $6038: $20 $a0

	cpl                                              ; $603a: $2f
	ld b, e                                          ; $603b: $43
	ld b, b                                          ; $603c: $40
	add hl, sp                                       ; $603d: $39
	ld b, h                                          ; $603e: $44
	ld c, h                                          ; $603f: $4c
	xor b                                            ; $6040: $a8
	jp hl                                            ; $6041: $e9


	ld [hl+], a                                      ; $6042: $22
	inc a                                            ; $6043: $3c
	and c                                            ; $6044: $a1
	add hl, bc                                       ; $6045: $09
	db $eb                                           ; $6046: $eb
	ld e, [hl]                                       ; $6047: $5e
	and b                                            ; $6048: $a0
	cpl                                              ; $6049: $2f
	ld b, e                                          ; $604a: $43
	db $eb                                           ; $604b: $eb
	ld h, c                                          ; $604c: $61
	inc [hl]                                         ; $604d: $34
	db $eb                                           ; $604e: $eb

jr_098_604f:
	ld e, [hl]                                       ; $604f: $5e
	xor b                                            ; $6050: $a8
	db $ec                                           ; $6051: $ec
	ldh [rHDMA3], a                                  ; $6052: $e0 $53
	ldh a, [rSVBK]                                   ; $6054: $f0 $70
	ld b, a                                          ; $6056: $47
	ld a, b                                          ; $6057: $78
	ld c, [hl]                                       ; $6058: $4e
	ld a, [hl-]                                      ; $6059: $3a
	ld b, c                                          ; $605a: $41
	ccf                                              ; $605b: $3f
	xor h                                            ; $605c: $ac
	db $ec                                           ; $605d: $ec
	rst SubAFromBC                                          ; $605e: $e7

jr_098_605f:
	inc [hl]                                         ; $605f: $34
	ld [hl], c                                       ; $6060: $71
	sbc h                                            ; $6061: $9c
	ld d, b                                          ; $6062: $50
	ld a, $38                                        ; $6063: $3e $38
	ld c, h                                          ; $6065: $4c
	and b                                            ; $6066: $a0
	call nc, $d8ec                                   ; $6067: $d4 $ec $d8
	xor b                                            ; $606a: $a8
	ld e, b                                          ; $606b: $58
	ld b, [hl]                                       ; $606c: $46
	inc [hl]                                         ; $606d: $34
	ld d, h                                          ; $606e: $54
	ld c, l                                          ; $606f: $4d
	inc a                                            ; $6070: $3c
	ld d, b                                          ; $6071: $50
	inc de                                           ; $6072: $13
	db $ec                                           ; $6073: $ec
	ld e, b                                          ; $6074: $58
	ld d, l                                          ; $6075: $55
	ld h, e                                          ; $6076: $63
	ld b, l                                          ; $6077: $45
	and b                                            ; $6078: $a0
	cpl                                              ; $6079: $2f
	jr c, jr_098_60b4                                ; $607a: $38 $38

	ld c, h                                          ; $607c: $4c
	inc [hl]                                         ; $607d: $34
	db $ec                                           ; $607e: $ec
	rlca                                             ; $607f: $07
	add hl, bc                                       ; $6080: $09
	sub c                                            ; $6081: $91
	ldh a, [$59]                                     ; $6082: $f0 $59
	ld c, h                                          ; $6084: $4c
	xor b                                            ; $6085: $a8
	ldh a, [$08]                                     ; $6086: $f0 $08
	ld d, b                                          ; $6088: $50
	inc [hl]                                         ; $6089: $34
	ldh a, [$0a]                                     ; $608a: $f0 $0a
	ld d, l                                          ; $608c: $55
	ld h, a                                          ; $608d: $67
	ld d, l                                          ; $608e: $55
	ld h, e                                          ; $608f: $63
	ld b, l                                          ; $6090: $45
	and b                                            ; $6091: $a0
	cpl                                              ; $6092: $2f
	add sp, -$2a                                     ; $6093: $e8 $d6
	add hl, bc                                       ; $6095: $09
	db $ec                                           ; $6096: $ec
	rst SubAFromBC                                          ; $6097: $e7
	xor h                                            ; $6098: $ac
	ld l, a                                          ; $6099: $6f
	ld h, d                                          ; $609a: $62
	pop af                                           ; $609b: $f1
	ld [hl-], a                                      ; $609c: $32
	ld d, b                                          ; $609d: $50
	ld a, c                                          ; $609e: $79
	dec a                                            ; $609f: $3d
	ld d, h                                          ; $60a0: $54
	ld c, c                                          ; $60a1: $49
	ld h, d                                          ; $60a2: $62
	xor h                                            ; $60a3: $ac
	ldh a, [$d7]                                     ; $60a4: $f0 $d7
	pop af                                           ; $60a6: $f1
	sub c                                            ; $60a7: $91
	ld e, b                                          ; $60a8: $58
	ld a, c                                          ; $60a9: $79
	ccf                                              ; $60aa: $3f
	rst SubAFromDE                                          ; $60ab: $df
	ld h, e                                          ; $60ac: $63
	and b                                            ; $60ad: $a0
	cpl                                              ; $60ae: $2f
	ld b, e                                          ; $60af: $43
	jp hl                                            ; $60b0: $e9


	or d                                             ; $60b1: $b2
	inc de                                           ; $60b2: $13
	db $ec                                           ; $60b3: $ec

jr_098_60b4:
	ldh [$ed], a                                     ; $60b4: $e0 $ed
	dec b                                            ; $60b6: $05
	inc de                                           ; $60b7: $13
	ld [$a03b], a                                    ; $60b8: $ea $3b $a0
	xor $2d                                          ; $60bb: $ee $2d
	inc [hl]                                         ; $60bd: $34
	db $ed                                           ; $60be: $ed
	or d                                             ; $60bf: $b2
	ld c, d                                          ; $60c0: $4a
	ld d, c                                          ; $60c1: $51
	and b                                            ; $60c2: $a0
	cpl                                              ; $60c3: $2f
	ld b, e                                          ; $60c4: $43
	ld [$ac2b], a                                    ; $60c5: $ea $2b $ac
	add sp, -$2e                                     ; $60c8: $e8 $d2
	xor b                                            ; $60ca: $a8
	ld de, $aeea                                     ; $60cb: $11 $ea $ae
	and b                                            ; $60ce: $a0
	ld d, $a8                                        ; $60cf: $16 $a8
	ld [$ac4b], a                                    ; $60d1: $ea $4b $ac
	db $eb                                           ; $60d4: $eb
	ld e, [hl]                                       ; $60d5: $5e
	and b                                            ; $60d6: $a0
	cpl                                              ; $60d7: $2f
	ld b, e                                          ; $60d8: $43
	db $ec                                           ; $60d9: $ec
	ldh [$a8], a                                     ; $60da: $e0 $a8
	db $eb                                           ; $60dc: $eb
	ld [hl], b                                       ; $60dd: $70
	and c                                            ; $60de: $a1
	pop af                                           ; $60df: $f1
	ld h, e                                          ; $60e0: $63
	ldh a, [$5c]                                     ; $60e1: $f0 $5c
	ld d, l                                          ; $60e3: $55
	inc [hl]                                         ; $60e4: $34
	ldh a, [$ea]                                     ; $60e5: $f0 $ea
	ld b, l                                          ; $60e7: $45
	and b                                            ; $60e8: $a0
	cpl                                              ; $60e9: $2f
	ld b, e                                          ; $60ea: $43
	or h                                             ; $60eb: $b4
	xor h                                            ; $60ec: $ac
	ld [$1325], a                                    ; $60ed: $ea $25 $13
	db $eb                                           ; $60f0: $eb
	ld e, h                                          ; $60f1: $5c
	and c                                            ; $60f2: $a1
	db $eb                                           ; $60f3: $eb
	inc [hl]                                         ; $60f4: $34
	ld h, e                                          ; $60f5: $63
	ld c, h                                          ; $60f6: $4c
	xor b                                            ; $60f7: $a8
	ret nc                                           ; $60f8: $d0

	and b                                            ; $60f9: $a0
	ld d, $a8                                        ; $60fa: $16 $a8
	db $eb                                           ; $60fc: $eb
	ld e, [hl]                                       ; $60fd: $5e
	and b                                            ; $60fe: $a0
	call c, $f0a8                                    ; $60ff: $dc $a8 $f0
	ld [$8249], a                                    ; $6102: $ea $49 $82
	ld e, [hl]                                       ; $6105: $5e
	ld a, e                                          ; $6106: $7b
	ldh a, [$ea]                                     ; $6107: $f0 $ea
	ld c, h                                          ; $6109: $4c
	and b                                            ; $610a: $a0
	ld d, d                                          ; $610b: $52
	inc [hl]                                         ; $610c: $34
	ldh a, [$9a]                                     ; $610d: $f0 $9a
	ld e, h                                          ; $610f: $5c
	ldh a, [rTMA]                                    ; $6110: $f0 $06
	dec sp                                           ; $6112: $3b
	ccf                                              ; $6113: $3f
	inc de                                           ; $6114: $13
	rst SubAFromDE                                          ; $6115: $df
	ld h, e                                          ; $6116: $63
	and b                                            ; $6117: $a0
	db $eb                                           ; $6118: $eb
	ld e, [hl]                                       ; $6119: $5e
	xor b                                            ; $611a: $a8
	ld l, e                                          ; $611b: $6b
	ld b, d                                          ; $611c: $42
	ldh a, [rAUD2LEN]                                ; $611d: $f0 $16
	and c                                            ; $611f: $a1
	ld c, c                                          ; $6120: $49
	ld d, a                                          ; $6121: $57
	ld b, [hl]                                       ; $6122: $46
	ld e, [hl]                                       ; $6123: $5e
	sbc h                                            ; $6124: $9c
	ld c, e                                          ; $6125: $4b
	ld c, h                                          ; $6126: $4c
	and b                                            ; $6127: $a0
	cpl                                              ; $6128: $2f
	ld b, e                                          ; $6129: $43
	ld [$1325], a                                    ; $612a: $ea $25 $13
	db $eb                                           ; $612d: $eb
	ld e, h                                          ; $612e: $5c
	and c                                            ; $612f: $a1
	ld d, d                                          ; $6130: $52
	inc [hl]                                         ; $6131: $34
	jr c, jr_098_616c                                ; $6132: $38 $38

	ld c, d                                          ; $6134: $4a
	ld a, $66                                        ; $6135: $3e $66
	add hl, sp                                       ; $6137: $39
	and b                                            ; $6138: $a0
	cpl                                              ; $6139: $2f
	ld b, e                                          ; $613a: $43
	ld b, b                                          ; $613b: $40
	ld c, l                                          ; $613c: $4d
	ld e, e                                          ; $613d: $5b
	ld d, [hl]                                       ; $613e: $56
	xor h                                            ; $613f: $ac
	add sp, -$70                                     ; $6140: $e8 $90
	inc de                                           ; $6142: $13
	db $ec                                           ; $6143: $ec
	ld a, [bc]                                       ; $6144: $0a
	and c                                            ; $6145: $a1
	ld [$a8d2], a                                    ; $6146: $ea $d2 $a8
	ld b, b                                          ; $6149: $40
	ld c, l                                          ; $614a: $4d
	ld e, e                                          ; $614b: $5b
	ld d, [hl]                                       ; $614c: $56
	and b                                            ; $614d: $a0
	cpl                                              ; $614e: $2f
	ld h, $ed                                        ; $614f: $26 $ed
	ld e, h                                          ; $6151: $5c
	dec h                                            ; $6152: $25
	add hl, bc                                       ; $6153: $09
	cpl                                              ; $6154: $2f
	ld [hl-], a                                      ; $6155: $32
	or h                                             ; $6156: $b4
	xor h                                            ; $6157: $ac
	ldh a, [$d4]                                     ; $6158: $f0 $d4
	pop af                                           ; $615a: $f1
	ld a, [hl+]                                      ; $615b: $2a
	ld b, a                                          ; $615c: $47
	ld h, a                                          ; $615d: $67
	dec sp                                           ; $615e: $3b
	ccf                                              ; $615f: $3f
	ld l, h                                          ; $6160: $6c
	ld c, [hl]                                       ; $6161: $4e
	inc a                                            ; $6162: $3c
	and e                                            ; $6163: $a3
	cpl                                              ; $6164: $2f
	ld b, e                                          ; $6165: $43
	ld d, d                                          ; $6166: $52
	ld b, h                                          ; $6167: $44

jr_098_6168:
	inc [hl]                                         ; $6168: $34
	db $ec                                           ; $6169: $ec
	ldh [rWX], a                                     ; $616a: $e0 $4b

jr_098_616c:
	inc de                                           ; $616c: $13
	jp hl                                            ; $616d: $e9


	scf                                              ; $616e: $37
	and b                                            ; $616f: $a0
	sbc c                                            ; $6170: $99
	dec a                                            ; $6171: $3d
	ld a, c                                          ; $6172: $79
	ldh [$a0], a                                     ; $6173: $e0 $a0
	cpl                                              ; $6175: $2f
	ld b, e                                          ; $6176: $43
	or h                                             ; $6177: $b4
	xor h                                            ; $6178: $ac
	ldh a, [$0a]                                     ; $6179: $f0 $0a
	pop af                                           ; $617b: $f1
	jr jr_098_6168                                   ; $617c: $18 $ea

	inc a                                            ; $617e: $3c
	inc a                                            ; $617f: $3c
	and b                                            ; $6180: $a0
	ldh a, [$d4]                                     ; $6181: $f0 $d4
	ldh a, [hDisp0_OBP1]                                     ; $6183: $f0 $87
	ld a, [hl-]                                      ; $6185: $3a
	ld b, c                                          ; $6186: $41
	ccf                                              ; $6187: $3f
	xor h                                            ; $6188: $ac
	ldh a, [$9f]                                     ; $6189: $f0 $9f
	ld e, e                                          ; $618b: $5b
	ccf                                              ; $618c: $3f
	ld a, [hl-]                                      ; $618d: $3a
	jr c, jr_098_61ed                                ; $618e: $38 $5d

	ld e, d                                          ; $6190: $5a
	xor h                                            ; $6191: $ac
	ld c, c                                          ; $6192: $49
	ld d, a                                          ; $6193: $57
	ld b, [hl]                                       ; $6194: $46
	ld e, [hl]                                       ; $6195: $5e
	sbc h                                            ; $6196: $9c
	ld h, a                                          ; $6197: $67
	ld d, l                                          ; $6198: $55
	ld h, e                                          ; $6199: $63
	and b                                            ; $619a: $a0
	ld e, d                                          ; $619b: $5a
	add hl, sp                                       ; $619c: $39
	ld a, c                                          ; $619d: $79
	xor h                                            ; $619e: $ac
	db $eb                                           ; $619f: $eb
	ld d, l                                          ; $61a0: $55
	ld d, h                                          ; $61a1: $54
	ld c, c                                          ; $61a2: $49
	ld c, d                                          ; $61a3: $4a
	ld c, a                                          ; $61a4: $4f
	inc de                                           ; $61a5: $13
	ld h, h                                          ; $61a6: $64
	ldh a, [$c8]                                     ; $61a7: $f0 $c8
	jr c, jr_098_61e9                                ; $61a9: $38 $3e

	dec a                                            ; $61ab: $3d
	ld b, c                                          ; $61ac: $41
	ld c, d                                          ; $61ad: $4a
	ld a, $66                                        ; $61ae: $3e $66
	add hl, sp                                       ; $61b0: $39
	and b                                            ; $61b1: $a0
	cpl                                              ; $61b2: $2f
	ld b, e                                          ; $61b3: $43
	ld [$a8d1], a                                    ; $61b4: $ea $d1 $a8
	db $ec                                           ; $61b7: $ec
	ldh [rWX], a                                     ; $61b8: $e0 $4b
	and c                                            ; $61ba: $a1
	db $ed                                           ; $61bb: $ed
	inc c                                            ; $61bc: $0c
	and b                                            ; $61bd: $a0
	ldh a, [$34]                                     ; $61be: $f0 $34
	ld b, a                                          ; $61c0: $47
	xor h                                            ; $61c1: $ac
	ld l, e                                          ; $61c2: $6b
	ld c, a                                          ; $61c3: $4f
	ld h, h                                          ; $61c4: $64
	ldh a, [$c8]                                     ; $61c5: $f0 $c8
	jr c, jr_098_6207                                ; $61c7: $38 $3e

	ccf                                              ; $61c9: $3f
	ld a, [hl-]                                      ; $61ca: $3a
	jr c, jr_098_6230                                ; $61cb: $38 $63

	and b                                            ; $61cd: $a0
	ld h, h                                          ; $61ce: $64
	ldh a, [$c8]                                     ; $61cf: $f0 $c8
	jr c, jr_098_620d                                ; $61d1: $38 $3a

	ld b, c                                          ; $61d3: $41
	ccf                                              ; $61d4: $3f
	inc de                                           ; $61d5: $13
	ld a, $3a                                        ; $61d6: $3e $3a
	jr c, jr_098_623d                                ; $61d8: $38 $63

	ld b, l                                          ; $61da: $45
	and b                                            ; $61db: $a0
	cpl                                              ; $61dc: $2f
	ld b, e                                          ; $61dd: $43
	rst JumpTable                                          ; $61de: $c7
	xor l                                            ; $61df: $ad
	jp hl                                            ; $61e0: $e9


	jr c, jr_098_61f6                                ; $61e1: $38 $13

	ldh a, [$d8]                                     ; $61e3: $f0 $d8
	inc a                                            ; $61e5: $3c
	ld a, [hl-]                                      ; $61e6: $3a
	jr c, @-$5d                                      ; $61e7: $38 $a1

jr_098_61e9:
	call c, Call_098_5aa8                            ; $61e9: $dc $a8 $5a
	add hl, sp                                       ; $61ec: $39

jr_098_61ed:
	sub a                                            ; $61ed: $97
	inc [hl]                                         ; $61ee: $34
	ld l, a                                          ; $61ef: $6f
	xor $2d                                          ; $61f0: $ee $2d
	jr c, jr_098_6257                                ; $61f2: $38 $63

	and b                                            ; $61f4: $a0
	cpl                                              ; $61f5: $2f

jr_098_61f6:
	ld b, e                                          ; $61f6: $43
	db $eb                                           ; $61f7: $eb
	sub d                                            ; $61f8: $92
	xor b                                            ; $61f9: $a8
	db $ed                                           ; $61fa: $ed
	ld l, e                                          ; $61fb: $6b
	ld b, h                                          ; $61fc: $44
	dec sp                                           ; $61fd: $3b
	dec a                                            ; $61fe: $3d
	ld b, l                                          ; $61ff: $45
	and b                                            ; $6200: $a0
	cpl                                              ; $6201: $2f
	ld b, e                                          ; $6202: $43
	db $eb                                           ; $6203: $eb
	sub d                                            ; $6204: $92
	xor b                                            ; $6205: $a8
	db $eb                                           ; $6206: $eb

jr_098_6207:
	sbc h                                            ; $6207: $9c
	and b                                            ; $6208: $a0
	db $ec                                           ; $6209: $ec
	cp c                                             ; $620a: $b9
	ld h, e                                          ; $620b: $63
	ld c, h                                          ; $620c: $4c

jr_098_620d:
	xor b                                            ; $620d: $a8
	ldh a, [$9f]                                     ; $620e: $f0 $9f
	ld e, e                                          ; $6210: $5b
	ld c, l                                          ; $6211: $4d
	ld c, [hl]                                       ; $6212: $4e
	add h                                            ; $6213: $84
	ld c, e                                          ; $6214: $4b
	inc de                                           ; $6215: $13
	pop af                                           ; $6216: $f1
	and d                                            ; $6217: $a2
	ld a, c                                          ; $6218: $79
	ld c, h                                          ; $6219: $4c
	and b                                            ; $621a: $a0
	cpl                                              ; $621b: $2f
	ld b, e                                          ; $621c: $43
	rst JumpTable                                          ; $621d: $c7
	ld b, h                                          ; $621e: $44
	ld c, h                                          ; $621f: $4c
	ld c, b                                          ; $6220: $48
	and b                                            ; $6221: $a0
	cpl                                              ; $6222: $2f
	ld b, e                                          ; $6223: $43
	db $eb                                           ; $6224: $eb
	sub d                                            ; $6225: $92
	xor b                                            ; $6226: $a8
	ldh a, [rAUD2HIGH]                               ; $6227: $f0 $19
	db $eb                                           ; $6229: $eb
	sbc h                                            ; $622a: $9c
	and b                                            ; $622b: $a0
	cpl                                              ; $622c: $2f
	ld b, e                                          ; $622d: $43
	db $eb                                           ; $622e: $eb
	sub d                                            ; $622f: $92

jr_098_6230:
	xor b                                            ; $6230: $a8
	pop af                                           ; $6231: $f1
	add hl, de                                       ; $6232: $19
	db $eb                                           ; $6233: $eb

jr_098_6234:
	sbc h                                            ; $6234: $9c
	and b                                            ; $6235: $a0
	cpl                                              ; $6236: $2f
	ld b, e                                          ; $6237: $43
	db $eb                                           ; $6238: $eb
	sub d                                            ; $6239: $92
	xor b                                            ; $623a: $a8
	pop af                                           ; $623b: $f1
	sub [hl]                                         ; $623c: $96

jr_098_623d:
	db $eb                                           ; $623d: $eb
	sbc h                                            ; $623e: $9c
	and b                                            ; $623f: $a0
	pop af                                           ; $6240: $f1
	db $fc                                           ; $6241: $fc
	ldh a, [rOCPS]                                   ; $6242: $f0 $6a
	ld c, h                                          ; $6244: $4c
	xor b                                            ; $6245: $a8
	ld b, b                                          ; $6246: $40
	ld c, l                                          ; $6247: $4d
	ld a, [hl-]                                      ; $6248: $3a
	ld d, b                                          ; $6249: $50
	pop af                                           ; $624a: $f1
	ld e, a                                          ; $624b: $5f
	inc a                                            ; $624c: $3c
	ld a, [hl-]                                      ; $624d: $3a
	ld d, l                                          ; $624e: $55
	ccf                                              ; $624f: $3f
	ld c, a                                          ; $6250: $4f
	inc de                                           ; $6251: $13
	ldh a, [$cd]                                     ; $6252: $f0 $cd
	ld e, e                                          ; $6254: $5b
	ld b, l                                          ; $6255: $45
	and b                                            ; $6256: $a0

jr_098_6257:
	cpl                                              ; $6257: $2f
	ld b, e                                          ; $6258: $43
	rst JumpTable                                          ; $6259: $c7
	ld b, h                                          ; $625a: $44
	ld e, l                                          ; $625b: $5d
	ld e, d                                          ; $625c: $5a
	ld c, b                                          ; $625d: $48
	and b                                            ; $625e: $a0
	cpl                                              ; $625f: $2f
	ld b, e                                          ; $6260: $43
	db $eb                                           ; $6261: $eb
	and e                                            ; $6262: $a3
	xor l                                            ; $6263: $ad
	db $eb                                           ; $6264: $eb
	pop de                                           ; $6265: $d1
	and b                                            ; $6266: $a0
	cpl                                              ; $6267: $2f
	ld b, e                                          ; $6268: $43
	db $eb                                           ; $6269: $eb
	and e                                            ; $626a: $a3
	xor l                                            ; $626b: $ad
	db $ed                                           ; $626c: $ed
	rst SubAFromDE                                          ; $626d: $df
	ld b, h                                          ; $626e: $44
	dec sp                                           ; $626f: $3b
	dec a                                            ; $6270: $3d
	ld b, l                                          ; $6271: $45
	and b                                            ; $6272: $a0
	db $ed                                           ; $6273: $ed
	ld e, l                                          ; $6274: $5d
	ld b, d                                          ; $6275: $42
	pop af                                           ; $6276: $f1
	ld h, e                                          ; $6277: $63
	ld h, d                                          ; $6278: $62
	inc de                                           ; $6279: $13
	pop af                                           ; $627a: $f1
	add c                                            ; $627b: $81
	ld c, c                                          ; $627c: $49
	ld d, c                                          ; $627d: $51
	dec a                                            ; $627e: $3d
	ld [hl], c                                       ; $627f: $71
	ld b, a                                          ; $6280: $47
	inc de                                           ; $6281: $13
	ld h, h                                          ; $6282: $64
	pop af                                           ; $6283: $f1
	add [hl]                                         ; $6284: $86
	ld h, d                                          ; $6285: $62
	sub h                                            ; $6286: $94
	ld d, c                                          ; $6287: $51
	ld a, [hl-]                                      ; $6288: $3a
	ld b, c                                          ; $6289: $41
	ccf                                              ; $628a: $3f
	xor h                                            ; $628b: $ac
	pop af                                           ; $628c: $f1
	or d                                             ; $628d: $b2
	pop af                                           ; $628e: $f1
	ld c, b                                          ; $628f: $48
	ld l, h                                          ; $6290: $6c
	dec a                                            ; $6291: $3d
	jr c, jr_098_6234                                ; $6292: $38 $a0

	cpl                                              ; $6294: $2f
	ld [hl-], a                                      ; $6295: $32
	db $f4                                           ; $6296: $f4
	xor [hl]                                         ; $6297: $ae
	ld b, a                                          ; $6298: $47
	inc [hl]                                         ; $6299: $34
	ldh a, [$d0]                                     ; $629a: $f0 $d0
	pop af                                           ; $629c: $f1
	and d                                            ; $629d: $a2
	ld b, h                                          ; $629e: $44
	adc l                                            ; $629f: $8d
	ld c, b                                          ; $62a0: $48
	and e                                            ; $62a1: $a3
	ld [$a0dd], a                                    ; $62a2: $ea $dd $a0
	cpl                                              ; $62a5: $2f
	ld b, e                                          ; $62a6: $43
	ld b, b                                          ; $62a7: $40
	add hl, sp                                       ; $62a8: $39
	ld b, h                                          ; $62a9: $44
	ld c, h                                          ; $62aa: $4c
	xor h                                            ; $62ab: $ac
	jp hl                                            ; $62ac: $e9


	or [hl]                                          ; $62ad: $b6
	and b                                            ; $62ae: $a0
	ld l, d                                          ; $62af: $6a
	ldh a, [rAUD1HIGH]                               ; $62b0: $f0 $14
	ld d, h                                          ; $62b2: $54
	ld b, b                                          ; $62b3: $40
	xor h                                            ; $62b4: $ac
	ld e, h                                          ; $62b5: $5c
	dec sp                                           ; $62b6: $3b
	ld c, c                                          ; $62b7: $49
	inc [hl]                                         ; $62b8: $34
	pop af                                           ; $62b9: $f1
	ld d, e                                          ; $62ba: $53
	db $f4                                           ; $62bb: $f4
	and b                                            ; $62bc: $a0
	ld e, b                                          ; $62bd: $58
	ld a, c                                          ; $62be: $79
	ccf                                              ; $62bf: $3f
	inc de                                           ; $62c0: $13
	ld [hl], d                                       ; $62c1: $72
	ld a, c                                          ; $62c2: $79
	ld c, [hl]                                       ; $62c3: $4e
	ld h, e                                          ; $62c4: $63
	and b                                            ; $62c5: $a0
	cpl                                              ; $62c6: $2f
	ld b, e                                          ; $62c7: $43
	ld l, e                                          ; $62c8: $6b
	ld h, d                                          ; $62c9: $62
	and c                                            ; $62ca: $a1
	ld c, c                                          ; $62cb: $49
	ld d, a                                          ; $62cc: $57
	ld b, [hl]                                       ; $62cd: $46
	ld e, [hl]                                       ; $62ce: $5e
	sbc h                                            ; $62cf: $9c
	inc [hl]                                         ; $62d0: $34
	db $ed                                           ; $62d1: $ed
	inc c                                            ; $62d2: $0c
	xor b                                            ; $62d3: $a8
	ld e, b                                          ; $62d4: $58
	ld b, [hl]                                       ; $62d5: $46
	inc [hl]                                         ; $62d6: $34
	db $ec                                           ; $62d7: $ec
	ld [hl-], a                                      ; $62d8: $32
	and b                                            ; $62d9: $a0
	cpl                                              ; $62da: $2f
	ld b, e                                          ; $62db: $43
	rst JumpTable                                          ; $62dc: $c7
	ld b, h                                          ; $62dd: $44
	ld c, h                                          ; $62de: $4c
	xor b                                            ; $62df: $a8
	ld a, d                                          ; $62e0: $7a
	ld e, a                                          ; $62e1: $5f
	add hl, sp                                       ; $62e2: $39
	and b                                            ; $62e3: $a0
	ld l, d                                          ; $62e4: $6a
	ldh a, [rAUD1HIGH]                               ; $62e5: $f0 $14
	ld c, e                                          ; $62e7: $4b
	xor h                                            ; $62e8: $ac
	jr c, jr_098_6323                                ; $62e9: $38 $38

	ldh a, [rAUD1HIGH]                               ; $62eb: $f0 $14
	ld b, a                                          ; $62ed: $47
	ld a, [hl-]                                      ; $62ee: $3a
	ld d, a                                          ; $62ef: $57
	call c, $2fa0                                    ; $62f0: $dc $a0 $2f
	ld b, e                                          ; $62f3: $43
	ld e, d                                          ; $62f4: $5a
	inc [hl]                                         ; $62f5: $34
	db $ec                                           ; $62f6: $ec
	db $d3                                           ; $62f7: $d3
	and c                                            ; $62f8: $a1
	ld l, a                                          ; $62f9: $6f
	ld d, e                                          ; $62fa: $53
	ld b, b                                          ; $62fb: $40
	add hl, sp                                       ; $62fc: $39
	ldh a, [$ec]                                     ; $62fd: $f0 $ec
	ld [hl], c                                       ; $62ff: $71
	dec a                                            ; $6300: $3d
	inc a                                            ; $6301: $3c
	ld d, b                                          ; $6302: $50
	ld b, l                                          ; $6303: $45
	and b                                            ; $6304: $a0
	cpl                                              ; $6305: $2f
	ld b, e                                          ; $6306: $43
	rst JumpTable                                          ; $6307: $c7
	xor c                                            ; $6308: $a9
	ld e, e                                          ; $6309: $5b
	ld d, [hl]                                       ; $630a: $56
	ld b, [hl]                                       ; $630b: $46
	inc [hl]                                         ; $630c: $34
	db $ec                                           ; $630d: $ec
	rrca                                             ; $630e: $0f
	and c                                            ; $630f: $a1
	call c, $2fa0                                    ; $6310: $dc $a0 $2f
	ld b, e                                          ; $6313: $43
	db $eb                                           ; $6314: $eb
	adc h                                            ; $6315: $8c
	xor h                                            ; $6316: $ac
	jp hl                                            ; $6317: $e9


	or [hl]                                          ; $6318: $b6
	and b                                            ; $6319: $a0
	ld d, d                                          ; $631a: $52
	inc [hl]                                         ; $631b: $34
	ld b, b                                          ; $631c: $40
	ld c, l                                          ; $631d: $4d
	ld b, h                                          ; $631e: $44
	ld e, l                                          ; $631f: $5d
	ld b, d                                          ; $6320: $42
	sbc d                                            ; $6321: $9a
	ld b, h                                          ; $6322: $44

jr_098_6323:
	ld e, l                                          ; $6323: $5d
	ld e, d                                          ; $6324: $5a
	xor b                                            ; $6325: $a8
	ld e, b                                          ; $6326: $58
	ld b, [hl]                                       ; $6327: $46
	inc [hl]                                         ; $6328: $34
	db $ec                                           ; $6329: $ec
	ld [hl-], a                                      ; $632a: $32
	and b                                            ; $632b: $a0
	ldh a, [c]                                       ; $632c: $f2
	pop bc                                           ; $632d: $c1
	pop af                                           ; $632e: $f1
	ld a, d                                          ; $632f: $7a
	ldh a, [c]                                       ; $6330: $f2
	or a                                             ; $6331: $b7
	ldh a, [$c8]                                     ; $6332: $f0 $c8
	ld b, d                                          ; $6334: $42
	ldh a, [$d4]                                     ; $6335: $f0 $d4
	ldh a, [hDisp0_OBP1]                                     ; $6337: $f0 $87
	dec sp                                           ; $6339: $3b
	ccf                                              ; $633a: $3f
	inc de                                           ; $633b: $13
	jr c, jr_098_6378                                ; $633c: $38 $3a

	jr c, jr_098_6382                                ; $633e: $38 $42

	inc a                                            ; $6340: $3c
	ld a, $50                                        ; $6341: $3e $50
	ld c, b                                          ; $6343: $48
	and c                                            ; $6344: $a1
	cpl                                              ; $6345: $2f
	ld b, e                                          ; $6346: $43
	ld e, [hl]                                       ; $6347: $5e
	dec sp                                           ; $6348: $3b
	inc [hl]                                         ; $6349: $34
	ld l, e                                          ; $634a: $6b
	inc a                                            ; $634b: $3c
	add d                                            ; $634c: $82
	dec sp                                           ; $634d: $3b
	dec a                                            ; $634e: $3d
	and c                                            ; $634f: $a1
	ldh a, [$34]                                     ; $6350: $f0 $34
	ld b, a                                          ; $6352: $47
	xor b                                            ; $6353: $a8
	ld e, b                                          ; $6354: $58
	ld b, [hl]                                       ; $6355: $46
	inc [hl]                                         ; $6356: $34
	db $ec                                           ; $6357: $ec
	ld [hl-], a                                      ; $6358: $32
	and b                                            ; $6359: $a0
	add hl, bc                                       ; $635a: $09
	add sp, -$39                                     ; $635b: $e8 $c7
	xor b                                            ; $635d: $a8
	db $eb                                           ; $635e: $eb
	ld h, c                                          ; $635f: $61
	inc [hl]                                         ; $6360: $34
	db $eb                                           ; $6361: $eb
	ld e, [hl]                                       ; $6362: $5e
	and b                                            ; $6363: $a0
	cpl                                              ; $6364: $2f
	ld b, e                                          ; $6365: $43
	ld b, [hl]                                       ; $6366: $46
	dec sp                                           ; $6367: $3b
	inc [hl]                                         ; $6368: $34
	db $ec                                           ; $6369: $ec
	pop hl                                           ; $636a: $e1
	xor b                                            ; $636b: $a8
	db $eb                                           ; $636c: $eb
	ld h, c                                          ; $636d: $61
	db $eb                                           ; $636e: $eb
	ld e, [hl]                                       ; $636f: $5e
	xor b                                            ; $6370: $a8
	add sp, -$1c                                     ; $6371: $e8 $e4
	and c                                            ; $6373: $a1
	ld c, h                                          ; $6374: $4c
	add l                                            ; $6375: $85
	inc [hl]                                         ; $6376: $34
	ld c, h                                          ; $6377: $4c

jr_098_6378:
	add l                                            ; $6378: $85
	inc [hl]                                         ; $6379: $34
	ld d, h                                          ; $637a: $54
	ld c, l                                          ; $637b: $4d
	inc a                                            ; $637c: $3c
	ld d, b                                          ; $637d: $50
	inc de                                           ; $637e: $13
	db $ec                                           ; $637f: $ec
	ld e, b                                          ; $6380: $58
	ld e, h                                          ; $6381: $5c

jr_098_6382:
	ld d, d                                          ; $6382: $52
	ld a, $66                                        ; $6383: $3e $66
	add hl, sp                                       ; $6385: $39
	ld b, l                                          ; $6386: $45
	and b                                            ; $6387: $a0
	cpl                                              ; $6388: $2f
	jr c, jr_098_63c3                                ; $6389: $38 $38

	ld c, h                                          ; $638b: $4c
	inc [hl]                                         ; $638c: $34
	db $ec                                           ; $638d: $ec
	rlca                                             ; $638e: $07
	add hl, bc                                       ; $638f: $09
	db $ed                                           ; $6390: $ed
	ld b, c                                          ; $6391: $41
	scf                                              ; $6392: $37
	xor c                                            ; $6393: $a9
	ld e, e                                          ; $6394: $5b
	ld d, [hl]                                       ; $6395: $56
	ld b, [hl]                                       ; $6396: $46
	inc [hl]                                         ; $6397: $34

jr_098_6398:
	call $2fa0                                       ; $6398: $cd $a0 $2f
	add sp, -$2a                                     ; $639b: $e8 $d6
	add hl, bc                                       ; $639d: $09
	ld b, b                                          ; $639e: $40
	add hl, sp                                       ; $639f: $39
	xor l                                            ; $63a0: $ad
	ld h, c                                          ; $63a1: $61
	ld h, [hl]                                       ; $63a2: $66
	dec sp                                           ; $63a3: $3b
	ldh a, [c]                                       ; $63a4: $f2
	sbc $57                                          ; $63a5: $de $57
	ldh a, [$8d]                                     ; $63a7: $f0 $8d
	ldh a, [$9e]                                     ; $63a9: $f0 $9e
	ld c, h                                          ; $63ab: $4c
	xor b                                            ; $63ac: $a8
	ld b, b                                          ; $63ad: $40
	ld c, l                                          ; $63ae: $4d
	ld e, e                                          ; $63af: $5b
	ld d, [hl]                                       ; $63b0: $56
	ld c, b                                          ; $63b1: $48
	and b                                            ; $63b2: $a0
	cpl                                              ; $63b3: $2f
	ld b, e                                          ; $63b4: $43
	jp hl                                            ; $63b5: $e9


	or d                                             ; $63b6: $b2
	inc de                                           ; $63b7: $13
	db $ec                                           ; $63b8: $ec
	pop hl                                           ; $63b9: $e1
	db $ed                                           ; $63ba: $ed
	dec b                                            ; $63bb: $05
	inc de                                           ; $63bc: $13
	ld [$a03b], a                                    ; $63bd: $ea $3b $a0
	xor $2d                                          ; $63c0: $ee $2d
	inc [hl]                                         ; $63c2: $34

jr_098_63c3:
	db $ed                                           ; $63c3: $ed
	cp l                                             ; $63c4: $bd
	ld c, d                                          ; $63c5: $4a
	ld d, c                                          ; $63c6: $51
	and b                                            ; $63c7: $a0
	cpl                                              ; $63c8: $2f
	ld b, e                                          ; $63c9: $43
	ld [$ac2b], a                                    ; $63ca: $ea $2b $ac
	add sp, -$2e                                     ; $63cd: $e8 $d2
	xor b                                            ; $63cf: $a8
	ld de, $aeea                                     ; $63d0: $11 $ea $ae
	and b                                            ; $63d3: $a0
	ld d, $a8                                        ; $63d4: $16 $a8
	db $eb                                           ; $63d6: $eb
	ld h, c                                          ; $63d7: $61
	xor h                                            ; $63d8: $ac
	db $eb                                           ; $63d9: $eb
	ld e, [hl]                                       ; $63da: $5e
	and b                                            ; $63db: $a0
	cpl                                              ; $63dc: $2f
	ld b, e                                          ; $63dd: $43
	db $ec                                           ; $63de: $ec
	pop hl                                           ; $63df: $e1
	xor b                                            ; $63e0: $a8
	db $eb                                           ; $63e1: $eb
	ld [hl], b                                       ; $63e2: $70
	and c                                            ; $63e3: $a1
	ld e, [hl]                                       ; $63e4: $5e
	dec sp                                           ; $63e5: $3b
	xor c                                            ; $63e6: $a9
	ldh a, [$ea]                                     ; $63e7: $f0 $ea
	ld b, l                                          ; $63e9: $45
	and b                                            ; $63ea: $a0
	cpl                                              ; $63eb: $2f
	ld b, e                                          ; $63ec: $43
	or h                                             ; $63ed: $b4
	xor h                                            ; $63ee: $ac
	ld [$1325], a                                    ; $63ef: $ea $25 $13
	ld h, a                                          ; $63f2: $67
	inc a                                            ; $63f3: $3c
	ld a, [hl-]                                      ; $63f4: $3a
	jr c, jr_098_6398                                ; $63f5: $38 $a1

	ldh a, [$c3]                                     ; $63f7: $f0 $c3
	inc [hl]                                         ; $63f9: $34
	db $ed                                           ; $63fa: $ed
	ld l, l                                          ; $63fb: $6d
	inc [hl]                                         ; $63fc: $34
	ret nc                                           ; $63fd: $d0

	and b                                            ; $63fe: $a0
	cpl                                              ; $63ff: $2f
	ld b, e                                          ; $6400: $43
	ld b, b                                          ; $6401: $40
	ld c, l                                          ; $6402: $4d
	ld e, e                                          ; $6403: $5b
	ld d, [hl]                                       ; $6404: $56
	xor h                                            ; $6405: $ac
	add sp, -$70                                     ; $6406: $e8 $90
	inc de                                           ; $6408: $13
	db $ec                                           ; $6409: $ec
	ld a, [bc]                                       ; $640a: $0a
	and c                                            ; $640b: $a1
	db $ec                                           ; $640c: $ec
	sub c                                            ; $640d: $91
	xor b                                            ; $640e: $a8
	ldh a, [rTAC]                                    ; $640f: $f0 $07
	inc a                                            ; $6411: $3c
	dec sp                                           ; $6412: $3b
	dec a                                            ; $6413: $3d
	ld h, e                                          ; $6414: $63
	xor b                                            ; $6415: $a8
	ld d, c                                          ; $6416: $51
	sbc l                                            ; $6417: $9d
	ld b, a                                          ; $6418: $47
	ld h, a                                          ; $6419: $67
	ld d, l                                          ; $641a: $55
	inc a                                            ; $641b: $3c
	ld d, b                                          ; $641c: $50
	and b                                            ; $641d: $a0
	ld d, $a8                                        ; $641e: $16 $a8
	add sp, -$39                                     ; $6420: $e8 $c7
	xor b                                            ; $6422: $a8
	db $eb                                           ; $6423: $eb
	ld h, c                                          ; $6424: $61
	inc [hl]                                         ; $6425: $34
	db $eb                                           ; $6426: $eb
	ld e, [hl]                                       ; $6427: $5e
	and b                                            ; $6428: $a0
	xor $1f                                          ; $6429: $ee $1f
	inc [hl]                                         ; $642b: $34
	ldh a, [$ea]                                     ; $642c: $f0 $ea
	ld b, l                                          ; $642e: $45
	and b                                            ; $642f: $a0
	cpl                                              ; $6430: $2f
	ld b, e                                          ; $6431: $43
	or h                                             ; $6432: $b4
	xor h                                            ; $6433: $ac
	ld [$1325], a                                    ; $6434: $ea $25 $13
	db $eb                                           ; $6437: $eb
	ld e, h                                          ; $6438: $5c
	and c                                            ; $6439: $a1
	db $ec                                           ; $643a: $ec
	sub c                                            ; $643b: $91
	xor b                                            ; $643c: $a8
	ldh a, [rTAC]                                    ; $643d: $f0 $07
	inc a                                            ; $643f: $3c
	dec sp                                           ; $6440: $3b
	dec a                                            ; $6441: $3d
	ld h, e                                          ; $6442: $63
	xor b                                            ; $6443: $a8
	ld d, c                                          ; $6444: $51
	sbc l                                            ; $6445: $9d
	ld b, a                                          ; $6446: $47
	ld h, a                                          ; $6447: $67
	ld d, l                                          ; $6448: $55
	ld h, e                                          ; $6449: $63
	and b                                            ; $644a: $a0
	xor $1f                                          ; $644b: $ee $1f
	inc [hl]                                         ; $644d: $34
	ldh a, [$ea]                                     ; $644e: $f0 $ea
	ld b, h                                          ; $6450: $44
	ld e, l                                          ; $6451: $5d
	ld e, d                                          ; $6452: $5a
	xor h                                            ; $6453: $ac
	ld l, e                                          ; $6454: $6b
	and c                                            ; $6455: $a1
	cpl                                              ; $6456: $2f
	ld b, e                                          ; $6457: $43
	ld [$1325], a                                    ; $6458: $ea $25 $13
	db $eb                                           ; $645b: $eb
	ld e, h                                          ; $645c: $5c
	and c                                            ; $645d: $a1
	db $ec                                           ; $645e: $ec
	sub c                                            ; $645f: $91
	xor b                                            ; $6460: $a8
	ld d, c                                          ; $6461: $51
	sbc l                                            ; $6462: $9d
	ld b, a                                          ; $6463: $47
	ld h, a                                          ; $6464: $67
	ld d, l                                          ; $6465: $55
	ld h, e                                          ; $6466: $63
	and b                                            ; $6467: $a0
	cpl                                              ; $6468: $2f
	ld b, e                                          ; $6469: $43
	ld b, b                                          ; $646a: $40
	ld c, l                                          ; $646b: $4d
	ld e, e                                          ; $646c: $5b
	ld d, [hl]                                       ; $646d: $56
	and b                                            ; $646e: $a0
	cpl                                              ; $646f: $2f
	ld h, $ed                                        ; $6470: $26 $ed
	ld e, h                                          ; $6472: $5c
	dec h                                            ; $6473: $25
	add hl, bc                                       ; $6474: $09
	cpl                                              ; $6475: $2f
	ld [hl-], a                                      ; $6476: $32
	or h                                             ; $6477: $b4
	xor h                                            ; $6478: $ac
	ldh a, [$d4]                                     ; $6479: $f0 $d4
	pop af                                           ; $647b: $f1
	ld a, [hl+]                                      ; $647c: $2a
	ld b, a                                          ; $647d: $47
	ld h, a                                          ; $647e: $67
	dec sp                                           ; $647f: $3b
	ccf                                              ; $6480: $3f
	ld l, h                                          ; $6481: $6c
	ld c, [hl]                                       ; $6482: $4e
	inc a                                            ; $6483: $3c
	and e                                            ; $6484: $a3
	db $ed                                           ; $6485: $ed
	ld l, l                                          ; $6486: $6d
	inc [hl]                                         ; $6487: $34
	ret nc                                           ; $6488: $d0

	and b                                            ; $6489: $a0
	cpl                                              ; $648a: $2f
	ld b, e                                          ; $648b: $43
	ld d, d                                          ; $648c: $52
	ld b, h                                          ; $648d: $44
	inc [hl]                                         ; $648e: $34
	db $ec                                           ; $648f: $ec
	pop hl                                           ; $6490: $e1

jr_098_6491:
	ld c, e                                          ; $6491: $4b
	inc de                                           ; $6492: $13
	jp hl                                            ; $6493: $e9


	scf                                              ; $6494: $37
	and b                                            ; $6495: $a0
	db $ec                                           ; $6496: $ec
	cpl                                              ; $6497: $2f
	xor b                                            ; $6498: $a8
	ld h, h                                          ; $6499: $64
	sbc c                                            ; $649a: $99
	dec a                                            ; $649b: $3d
	ld a, c                                          ; $649c: $79
	and b                                            ; $649d: $a0
	cpl                                              ; $649e: $2f
	ld b, e                                          ; $649f: $43
	or h                                             ; $64a0: $b4
	xor h                                            ; $64a1: $ac
	ldh a, [$0a]                                     ; $64a2: $f0 $0a
	pop af                                           ; $64a4: $f1
	jr jr_098_6491                                   ; $64a5: $18 $ea

	inc a                                            ; $64a7: $3c
	inc a                                            ; $64a8: $3c
	and b                                            ; $64a9: $a0
	ld b, b                                          ; $64aa: $40
	ld c, l                                          ; $64ab: $4d
	ld e, e                                          ; $64ac: $5b
	ld d, [hl]                                       ; $64ad: $56
	xor h                                            ; $64ae: $ac
	ld [hl], l                                       ; $64af: $75
	ld [hl], e                                       ; $64b0: $73
	ldh a, [$f2]                                     ; $64b1: $f0 $f2
	pop af                                           ; $64b3: $f1
	ld c, c                                          ; $64b4: $49
	ld e, c                                          ; $64b5: $59
	and b                                            ; $64b6: $a0
	ld c, h                                          ; $64b7: $4c
	add l                                            ; $64b8: $85
	xor h                                            ; $64b9: $ac
	ld l, e                                          ; $64ba: $6b
	inc [hl]                                         ; $64bb: $34
	ld h, h                                          ; $64bc: $64
	ldh a, [$c8]                                     ; $64bd: $f0 $c8
	jr c, jr_098_64ff                                ; $64bf: $38 $3e

	dec a                                            ; $64c1: $3d
	ld b, d                                          ; $64c2: $42
	xor c                                            ; $64c3: $a9
	db $ec                                           ; $64c4: $ec
	db $ed                                           ; $64c5: $ed
	ld b, l                                          ; $64c6: $45
	and b                                            ; $64c7: $a0
	cpl                                              ; $64c8: $2f
	ld b, e                                          ; $64c9: $43
	ld [$a8d1], a                                    ; $64ca: $ea $d1 $a8
	db $ec                                           ; $64cd: $ec
	pop hl                                           ; $64ce: $e1
	ld c, e                                          ; $64cf: $4b
	and c                                            ; $64d0: $a1
	ld h, e                                          ; $64d1: $63
	inc [hl]                                         ; $64d2: $34
	ld l, a                                          ; $64d3: $6f
	db $ed                                           ; $64d4: $ed
	ld b, e                                          ; $64d5: $43
	db $ed                                           ; $64d6: $ed
	add h                                            ; $64d7: $84
	ld b, l                                          ; $64d8: $45
	xor b                                            ; $64d9: $a8
	ld b, [hl]                                       ; $64da: $46
	dec sp                                           ; $64db: $3b
	inc [hl]                                         ; $64dc: $34
	ldh a, [$08]                                     ; $64dd: $f0 $08
	ld d, b                                          ; $64df: $50
	xor h                                            ; $64e0: $ac
	ld h, h                                          ; $64e1: $64
	ld l, h                                          ; $64e2: $6c
	ld d, l                                          ; $64e3: $55
	ld e, e                                          ; $64e4: $5b
	ldh a, [$d8]                                     ; $64e5: $f0 $d8
	ld d, h                                          ; $64e7: $54
	add hl, sp                                       ; $64e8: $39
	ld b, l                                          ; $64e9: $45
	and b                                            ; $64ea: $a0
	ld l, a                                          ; $64eb: $6f
	ld c, e                                          ; $64ec: $4b
	ldh a, [$57]                                     ; $64ed: $f0 $57
	ldh a, [$ae]                                     ; $64ef: $f0 $ae
	ld a, [hl-]                                      ; $64f1: $3a
	pop af                                           ; $64f2: $f1

Jump_098_64f3:
	ld [hl], b                                       ; $64f3: $70
	add h                                            ; $64f4: $84
	ld d, e                                          ; $64f5: $53
	inc de                                           ; $64f6: $13
	sub h                                            ; $64f7: $94

jr_098_64f8:
	ld a, b                                          ; $64f8: $78
	ld d, d                                          ; $64f9: $52
	ld d, c                                          ; $64fa: $51
	ld b, l                                          ; $64fb: $45
	add hl, sp                                       ; $64fc: $39
	ld b, a                                          ; $64fd: $47
	dec sp                                           ; $64fe: $3b

jr_098_64ff:
	ccf                                              ; $64ff: $3f
	xor h                                            ; $6500: $ac
	db $eb                                           ; $6501: $eb
	dec b                                            ; $6502: $05
	xor b                                            ; $6503: $a8
	db $ec                                           ; $6504: $ec
	jr nz, jr_098_64f8                               ; $6505: $20 $f1

	nop                                              ; $6507: $00
	ld e, [hl]                                       ; $6508: $5e
	ld a, [hl-]                                      ; $6509: $3a
	ld e, b                                          ; $650a: $58
	jr c, jr_098_6552                                ; $650b: $38 $45

	and b                                            ; $650d: $a0
	cpl                                              ; $650e: $2f
	ld b, e                                          ; $650f: $43
	or h                                             ; $6510: $b4
	xor h                                            ; $6511: $ac
	halt                                             ; $6512: $76
	ld c, e                                          ; $6513: $4b
	db $ec                                           ; $6514: $ec
	or e                                             ; $6515: $b3
	ld b, h                                          ; $6516: $44
	ld b, l                                          ; $6517: $45
	and b                                            ; $6518: $a0
	cpl                                              ; $6519: $2f
	ld b, e                                          ; $651a: $43
	or h                                             ; $651b: $b4
	xor h                                            ; $651c: $ac
	halt                                             ; $651d: $76
	ld c, e                                          ; $651e: $4b
	db $ec                                           ; $651f: $ec
	or h                                             ; $6520: $b4
	ld b, h                                          ; $6521: $44
	ld b, l                                          ; $6522: $45
	and b                                            ; $6523: $a0
	cpl                                              ; $6524: $2f
	ld b, e                                          ; $6525: $43
	ld b, b                                          ; $6526: $40
	inc [hl]                                         ; $6527: $34
	or h                                             ; $6528: $b4
	xor h                                            ; $6529: $ac
	halt                                             ; $652a: $76
	ld c, e                                          ; $652b: $4b
	db $ec                                           ; $652c: $ec
	or h                                             ; $652d: $b4
	ld b, h                                          ; $652e: $44
	ld b, l                                          ; $652f: $45
	and b                                            ; $6530: $a0
	db $ec                                           ; $6531: $ec
	ldh a, [$34]                                     ; $6532: $f0 $34
	ld b, b                                          ; $6534: $40
	add hl, sp                                       ; $6535: $39
	xor b                                            ; $6536: $a8
	ld b, [hl]                                       ; $6537: $46
	dec sp                                           ; $6538: $3b
	inc [hl]                                         ; $6539: $34
	ld h, h                                          ; $653a: $64
	ld l, h                                          ; $653b: $6c
	ld d, l                                          ; $653c: $55
	ld e, e                                          ; $653d: $5b
	ld d, e                                          ; $653e: $53
	ld b, [hl]                                       ; $653f: $46
	ld c, [hl]                                       ; $6540: $4e
	ld h, e                                          ; $6541: $63
	ld b, l                                          ; $6542: $45
	xor b                                            ; $6543: $a8
	ldh a, [$d8]                                     ; $6544: $f0 $d8
	ld e, h                                          ; $6546: $5c
	ld b, a                                          ; $6547: $47
	ld [$a0a9], a                                    ; $6548: $ea $a9 $a0
	ld b, b                                          ; $654b: $40
	ld c, l                                          ; $654c: $4d
	ld e, e                                          ; $654d: $5b
	ld d, [hl]                                       ; $654e: $56
	xor h                                            ; $654f: $ac
	ld l, a                                          ; $6550: $6f
	ld c, a                                          ; $6551: $4f

jr_098_6552:
	pop af                                           ; $6552: $f1
	nop                                              ; $6553: $00
	ld e, [hl]                                       ; $6554: $5e
	ld a, [hl-]                                      ; $6555: $3a
	jr c, jr_098_65bb                                ; $6556: $38 $63

	xor b                                            ; $6558: $a8
	ld b, [hl]                                       ; $6559: $46
	dec sp                                           ; $655a: $3b
	inc [hl]                                         ; $655b: $34
	ld h, h                                          ; $655c: $64
	ld l, h                                          ; $655d: $6c
	ld d, l                                          ; $655e: $55
	ld e, e                                          ; $655f: $5b
	ld b, [hl]                                       ; $6560: $46
	ld c, [hl]                                       ; $6561: $4e
	ld h, e                                          ; $6562: $63
	ld b, l                                          ; $6563: $45
	xor b                                            ; $6564: $a8
	ldh a, [$d8]                                     ; $6565: $f0 $d8
	ld e, h                                          ; $6567: $5c
	ld b, a                                          ; $6568: $47
	ld [$a0a9], a                                    ; $6569: $ea $a9 $a0
	cpl                                              ; $656c: $2f
	ld b, e                                          ; $656d: $43
	ld [$a8c3], a                                    ; $656e: $ea $c3 $a8
	db $ec                                           ; $6571: $ec
	rlca                                             ; $6572: $07
	and b                                            ; $6573: $a0
	ld c, h                                          ; $6574: $4c
	add l                                            ; $6575: $85
	inc [hl]                                         ; $6576: $34
	db $eb                                           ; $6577: $eb
	ld d, b                                          ; $6578: $50
	and c                                            ; $6579: $a1
	cpl                                              ; $657a: $2f
	ld b, e                                          ; $657b: $43
	jp hl                                            ; $657c: $e9


	jp z, $eea0                                      ; $657d: $ca $a0 $ee

	inc d                                            ; $6580: $14
	inc [hl]                                         ; $6581: $34
	ld l, a                                          ; $6582: $6f
	ld c, c                                          ; $6583: $49
	ldh a, [$cd]                                     ; $6584: $f0 $cd
	ld e, e                                          ; $6586: $5b
	xor c                                            ; $6587: $a9
	db $db                                           ; $6588: $db
	db $ec                                           ; $6589: $ec
	dec bc                                           ; $658a: $0b
	and b                                            ; $658b: $a0
	cpl                                              ; $658c: $2f
	ld b, e                                          ; $658d: $43
	ld e, [hl]                                       ; $658e: $5e
	dec sp                                           ; $658f: $3b
	xor c                                            ; $6590: $a9
	ld l, e                                          ; $6591: $6b
	ld d, e                                          ; $6592: $53
	db $db                                           ; $6593: $db
	ld a, [hl-]                                      ; $6594: $3a
	jr c, @+$3d                                      ; $6595: $38 $3b

	ccf                                              ; $6597: $3f
	and c                                            ; $6598: $a1
	db $ed                                           ; $6599: $ed
	ld l, e                                          ; $659a: $6b
	ld d, e                                          ; $659b: $53
	sub h                                            ; $659c: $94
	dec a                                            ; $659d: $3d
	inc a                                            ; $659e: $3c
	ld d, b                                          ; $659f: $50
	xor h                                            ; $65a0: $ac
	ld b, [hl]                                       ; $65a1: $46
	ld a, [hl-]                                      ; $65a2: $3a
	dec a                                            ; $65a3: $3d
	ld b, d                                          ; $65a4: $42
	ld h, d                                          ; $65a5: $62
	ld [hl], d                                       ; $65a6: $72
	ccf                                              ; $65a7: $3f
	inc [hl]                                         ; $65a8: $34
	add a                                            ; $65a9: $87
	ldh a, [c]                                       ; $65aa: $f2
	ld bc, $1338                                     ; $65ab: $01 $38 $13
	ld a, $45                                        ; $65ae: $3e $45
	add hl, sp                                       ; $65b0: $39
	ld c, c                                          ; $65b1: $49
	ld [hl], a                                       ; $65b2: $77
	dec sp                                           ; $65b3: $3b
	dec a                                            ; $65b4: $3d
	ld b, d                                          ; $65b5: $42
	ld b, a                                          ; $65b6: $47
	and b                                            ; $65b7: $a0
	cpl                                              ; $65b8: $2f
	ld b, e                                          ; $65b9: $43
	db $ec                                           ; $65ba: $ec

jr_098_65bb:
	rst SubAFromBC                                          ; $65bb: $e7
	inc a                                            ; $65bc: $3c
	ld d, b                                          ; $65bd: $50
	xor h                                            ; $65be: $ac
	ld b, b                                          ; $65bf: $40
	ld b, c                                          ; $65c0: $41
	ld a, [hl-]                                      ; $65c1: $3a
	sbc d                                            ; $65c2: $9a
	ldh a, [$a4]                                     ; $65c3: $f0 $a4
	ld e, [hl]                                       ; $65c5: $5e
	ccf                                              ; $65c6: $3f
	ld c, b                                          ; $65c7: $48
	and b                                            ; $65c8: $a0
	xor $14                                          ; $65c9: $ee $14
	inc [hl]                                         ; $65cb: $34
	di                                               ; $65cc: $f3
	or l                                             ; $65cd: $b5
	ld a, $3c                                        ; $65ce: $3e $3c
	dec sp                                           ; $65d0: $3b
	ldh [$a0], a                                     ; $65d1: $e0 $a0
	cpl                                              ; $65d3: $2f
	ld b, e                                          ; $65d4: $43
	ld l, e                                          ; $65d5: $6b
	ld d, e                                          ; $65d6: $53
	di                                               ; $65d7: $f3
	or l                                             ; $65d8: $b5
	ld a, $38                                        ; $65d9: $3e $38
	dec sp                                           ; $65db: $3b
	ccf                                              ; $65dc: $3f
	xor c                                            ; $65dd: $a9
	db $ec                                           ; $65de: $ec
	pop hl                                           ; $65df: $e1
	ld b, d                                          ; $65e0: $42
	ld c, e                                          ; $65e1: $4b
	inc de                                           ; $65e2: $13
	db $eb                                           ; $65e3: $eb
	ld d, b                                          ; $65e4: $50
	ld b, d                                          ; $65e5: $42
	and c                                            ; $65e6: $a1
	sub c                                            ; $65e7: $91
	ldh a, [$59]                                     ; $65e8: $f0 $59
	inc [hl]                                         ; $65ea: $34
	db $ed                                           ; $65eb: $ed
	ld l, e                                          ; $65ec: $6b
	ld b, l                                          ; $65ed: $45
	xor b                                            ; $65ee: $a8
	ld l, b                                          ; $65ef: $68
	ldh a, [c]                                       ; $65f0: $f2
	inc b                                            ; $65f1: $04
	ld b, d                                          ; $65f2: $42
	ld h, a                                          ; $65f3: $67
	jr c, jr_098_6649                                ; $65f4: $38 $53

	ld a, [hl]                                       ; $65f6: $7e
	jr c, jr_098_6635                                ; $65f7: $38 $3c

	ld d, b                                          ; $65f9: $50
	and b                                            ; $65fa: $a0
	cpl                                              ; $65fb: $2f
	ld b, e                                          ; $65fc: $43
	ld l, d                                          ; $65fd: $6a
	ldh a, [rAUD1HIGH]                               ; $65fe: $f0 $14
	db $ed                                           ; $6600: $ed
	adc b                                            ; $6601: $88
	ld b, d                                          ; $6602: $42
	pop af                                           ; $6603: $f1
	ld h, e                                          ; $6604: $63
	ld h, d                                          ; $6605: $62
	inc de                                           ; $6606: $13
	ld d, h                                          ; $6607: $54
	ld d, h                                          ; $6608: $54
	ld c, d                                          ; $6609: $4a
	pop af                                           ; $660a: $f1
	sbc l                                            ; $660b: $9d
	jr c, @+$5e                                      ; $660c: $38 $5c

	dec sp                                           ; $660e: $3b
	dec a                                            ; $660f: $3d
	ld b, h                                          ; $6610: $44
	ld e, l                                          ; $6611: $5d
	ld b, h                                          ; $6612: $44
	ld b, l                                          ; $6613: $45
	and b                                            ; $6614: $a0
	ld b, b                                          ; $6615: $40
	ld b, c                                          ; $6616: $41
	ld a, [hl-]                                      ; $6617: $3a
	ld d, h                                          ; $6618: $54
	ld c, c                                          ; $6619: $49
	ld a, [hl-]                                      ; $661a: $3a
	jr c, @+$65                                      ; $661b: $38 $63

	xor b                                            ; $661d: $a8
	ldh a, [$d4]                                     ; $661e: $f0 $d4
	ldh a, [hDisp0_OBP1]                                     ; $6620: $f0 $87
	ld c, e                                          ; $6622: $4b
	ld h, c                                          ; $6623: $61
	ld d, [hl]                                       ; $6624: $56
	ld b, c                                          ; $6625: $41
	ld c, c                                          ; $6626: $49
	inc de                                           ; $6627: $13
	ld [hl], d                                       ; $6628: $72
	ccf                                              ; $6629: $3f
	ld c, [hl]                                       ; $662a: $4e
	dec sp                                           ; $662b: $3b
	ccf                                              ; $662c: $3f
	sbc d                                            ; $662d: $9a
	ld b, l                                          ; $662e: $45
	and b                                            ; $662f: $a0
	cpl                                              ; $6630: $2f
	ld b, e                                          ; $6631: $43
	ld e, h                                          ; $6632: $5c
	dec sp                                           ; $6633: $3b
	ld c, c                                          ; $6634: $49

jr_098_6635:
	inc [hl]                                         ; $6635: $34
	ldh a, [$d4]                                     ; $6636: $f0 $d4
	ldh a, [hDisp0_OBP1]                                     ; $6638: $f0 $87
	ld c, e                                          ; $663a: $4b
	inc de                                           ; $663b: $13
	db $ec                                           ; $663c: $ec
	pop hl                                           ; $663d: $e1
	ld b, a                                          ; $663e: $47
	inc de                                           ; $663f: $13
	ld b, h                                          ; $6640: $44
	ld d, d                                          ; $6641: $52
	ld e, b                                          ; $6642: $58
	ld c, l                                          ; $6643: $4d
	ccf                                              ; $6644: $3f
	ld c, [hl]                                       ; $6645: $4e
	ld b, c                                          ; $6646: $41
	ld b, h                                          ; $6647: $44
	ld c, b                                          ; $6648: $48

jr_098_6649:
	and b                                            ; $6649: $a0
	ld l, e                                          ; $664a: $6b
	ld h, d                                          ; $664b: $62
	add d                                            ; $664c: $82
	dec sp                                           ; $664d: $3b
	ccf                                              ; $664e: $3f
	ld c, a                                          ; $664f: $4f
	xor h                                            ; $6650: $ac
	ldh a, [$e4]                                     ; $6651: $f0 $e4
	ld e, l                                          ; $6653: $5d
	di                                               ; $6654: $f3
	adc d                                            ; $6655: $8a
	ld b, d                                          ; $6656: $42
	xor $00                                          ; $6657: $ee $00
	ld e, [hl]                                       ; $6659: $5e
	ld b, l                                          ; $665a: $45
	and b                                            ; $665b: $a0
	cpl                                              ; $665c: $2f
	ld b, e                                          ; $665d: $43
	xor $10                                          ; $665e: $ee $10
	xor $10                                          ; $6660: $ee $10
	xor b                                            ; $6662: $a8
	ld [hl-], a                                      ; $6663: $32
	ld d, l                                          ; $6664: $55
	ld b, b                                          ; $6665: $40
	inc [hl]                                         ; $6666: $34
	pop af                                           ; $6667: $f1
	sub c                                            ; $6668: $91
	ld a, $38                                        ; $6669: $3e $38
	adc l                                            ; $666b: $8d
	and e                                            ; $666c: $a3
	ld l, d                                          ; $666d: $6a
	ldh a, [$0d]                                     ; $666e: $f0 $0d
	ld c, e                                          ; $6670: $4b
	inc de                                           ; $6671: $13
	db $ed                                           ; $6672: $ed
	rst SubAFromDE                                          ; $6673: $df
	ld d, e                                          ; $6674: $53
	sub h                                            ; $6675: $94
	ld c, [hl]                                       ; $6676: $4e
	inc a                                            ; $6677: $3c
	ld c, a                                          ; $6678: $4f
	ld b, l                                          ; $6679: $45
	and b                                            ; $667a: $a0
	db $ed                                           ; $667b: $ed
	ld h, c                                          ; $667c: $61
	pop af                                           ; $667d: $f1
	ld e, a                                          ; $667e: $5f
	jr c, jr_098_66c0                                ; $667f: $38 $3f

	ld c, a                                          ; $6681: $4f
	inc de                                           ; $6682: $13
	ld e, h                                          ; $6683: $5c
	dec sp                                           ; $6684: $3b
	ld c, c                                          ; $6685: $49
	inc [hl]                                         ; $6686: $34
	db $ed                                           ; $6687: $ed
	rst SubAFromDE                                          ; $6688: $df
	ld b, l                                          ; $6689: $45
	and b                                            ; $668a: $a0
	ld b, [hl]                                       ; $668b: $46
	ld c, e                                          ; $668c: $4b
	ld c, e                                          ; $668d: $4b
	ld c, e                                          ; $668e: $4b
	ld c, e                                          ; $668f: $4b
	ld c, e                                          ; $6690: $4b
	xor b                                            ; $6691: $a8
	db $ec                                           ; $6692: $ec
	rst SubAFromBC                                          ; $6693: $e7
	inc de                                           ; $6694: $13

jr_098_6695:
	di                                               ; $6695: $f3

jr_098_6696:
	dec [hl]                                         ; $6696: $35
	ldh a, [c]                                       ; $6697: $f2
	rlca                                             ; $6698: $07
	ld d, e                                          ; $6699: $53
	jr c, jr_098_66d4                                ; $669a: $38 $38

	ld h, e                                          ; $669c: $63
	ld c, h                                          ; $669d: $4c
	and b                                            ; $669e: $a0
	cpl                                              ; $669f: $2f
	ld b, e                                          ; $66a0: $43
	ld [hl], a                                       ; $66a1: $77
	jr c, jr_098_6695                                ; $66a2: $38 $f1

	inc d                                            ; $66a4: $14
	ld d, a                                          ; $66a5: $57
	inc de                                           ; $66a6: $13
	ldh a, [c]                                       ; $66a7: $f2
	ld bc, $5439                                     ; $66a8: $01 $39 $54
	ld c, c                                          ; $66ab: $49
	ld a, [hl-]                                      ; $66ac: $3a
	jr c, jr_098_66f3                                ; $66ad: $38 $44

	ld e, a                                          ; $66af: $5f
	add hl, sp                                       ; $66b0: $39
	xor b                                            ; $66b1: $a8
	db $ec                                           ; $66b2: $ec
	pop hl                                           ; $66b3: $e1
	ld c, e                                          ; $66b4: $4b
	db $eb                                           ; $66b5: $eb
	ld d, b                                          ; $66b6: $50
	ld b, d                                          ; $66b7: $42
	and c                                            ; $66b8: $a1
	ld l, a                                          ; $66b9: $6f
	ld c, e                                          ; $66ba: $4b
	inc [hl]                                         ; $66bb: $34
	sub c                                            ; $66bc: $91
	ldh a, [$59]                                     ; $66bd: $f0 $59
	db $ed                                           ; $66bf: $ed

jr_098_66c0:
	ld l, e                                          ; $66c0: $6b
	ld b, l                                          ; $66c1: $45
	and b                                            ; $66c2: $a0
	cpl                                              ; $66c3: $2f
	ld b, e                                          ; $66c4: $43
	ld d, l                                          ; $66c5: $55
	ld b, b                                          ; $66c6: $40
	inc [hl]                                         ; $66c7: $34
	ld d, c                                          ; $66c8: $51
	dec sp                                           ; $66c9: $3b
	ldh a, [rSB]                                     ; $66ca: $f0 $01
	ld e, c                                          ; $66cc: $59
	xor b                                            ; $66cd: $a8

jr_098_66ce:
	pop af                                           ; $66ce: $f1
	sub c                                            ; $66cf: $91
	ld a, $38                                        ; $66d0: $3e $38
	and b                                            ; $66d2: $a0
	ld e, h                                          ; $66d3: $5c

jr_098_66d4:
	dec sp                                           ; $66d4: $3b
	ld c, c                                          ; $66d5: $49
	xor h                                            ; $66d6: $ac
	ld l, b                                          ; $66d7: $68
	ldh a, [c]                                       ; $66d8: $f2
	inc b                                            ; $66d9: $04
	ld b, d                                          ; $66da: $42
	ld h, a                                          ; $66db: $67
	jr c, jr_098_6720                                ; $66dc: $38 $42

	ldh a, [$f5]                                     ; $66de: $f0 $f5
	jr c, jr_098_6727                                ; $66e0: $38 $45

	ld c, h                                          ; $66e2: $4c
	and b                                            ; $66e3: $a0
	cpl                                              ; $66e4: $2f
	ld b, e                                          ; $66e5: $43
	ld b, b                                          ; $66e6: $40
	ld b, c                                          ; $66e7: $41
	ld a, [hl-]                                      ; $66e8: $3a
	sbc d                                            ; $66e9: $9a
	ld c, e                                          ; $66ea: $4b
	ld a, [hl-]                                      ; $66eb: $3a
	jr c, jr_098_6696                                ; $66ec: $38 $a8

	halt                                             ; $66ee: $76
	inc [hl]                                         ; $66ef: $34
	ld c, a                                          ; $66f0: $4f
	add hl, sp                                       ; $66f1: $39
	ld l, l                                          ; $66f2: $6d

jr_098_66f3:
	ldh a, [$d3]                                     ; $66f3: $f0 $d3
	pop af                                           ; $66f5: $f1
	ld e, a                                          ; $66f6: $5f
	jr c, jr_098_6738                                ; $66f7: $38 $3f

	ld d, l                                          ; $66f9: $55
	ld c, [hl]                                       ; $66fa: $4e
	and b                                            ; $66fb: $a0
	ld [$a0dd], a                                    ; $66fc: $ea $dd $a0
	cpl                                              ; $66ff: $2f
	ld b, e                                          ; $6700: $43
	db $eb                                           ; $6701: $eb
	adc h                                            ; $6702: $8c
	xor h                                            ; $6703: $ac
	jp hl                                            ; $6704: $e9


	or [hl]                                          ; $6705: $b6
	and b                                            ; $6706: $a0
	ld c, a                                          ; $6707: $4f
	add hl, sp                                       ; $6708: $39
	ld d, c                                          ; $6709: $51
	sbc l                                            ; $670a: $9d
	xor h                                            ; $670b: $ac
	ldh a, [rHDMA3]                                  ; $670c: $f0 $53
	ld e, [hl]                                       ; $670e: $5e
	ld a, [hl-]                                      ; $670f: $3a
	ld d, l                                          ; $6710: $55
	ld a, [hl-]                                      ; $6711: $3a
	dec sp                                           ; $6712: $3b
	ld h, c                                          ; $6713: $61
	ld d, [hl]                                       ; $6714: $56
	add hl, sp                                       ; $6715: $39
	inc de                                           ; $6716: $13
	inc a                                            ; $6717: $3c
	ld c, a                                          ; $6718: $4f
	ld a, $4d                                        ; $6719: $3e $4d
	ld a, [hl-]                                      ; $671b: $3a
	jr c, jr_098_676a                                ; $671c: $38 $4c

	and b                                            ; $671e: $a0
	cpl                                              ; $671f: $2f

jr_098_6720:
	ld b, e                                          ; $6720: $43
	ld e, d                                          ; $6721: $5a
	inc [hl]                                         ; $6722: $34
	db $eb                                           ; $6723: $eb
	rst FarCall                                          ; $6724: $f7
	xor c                                            ; $6725: $a9
	db $ec                                           ; $6726: $ec

jr_098_6727:
	pop hl                                           ; $6727: $e1
	ld d, b                                          ; $6728: $50
	ld a, $55                                        ; $6729: $3e $55
	ld a, [hl-]                                      ; $672b: $3a
	jr c, jr_098_66ce                                ; $672c: $38 $a0

	rst JumpTable                                          ; $672e: $c7
	ld c, h                                          ; $672f: $4c
	xor b                                            ; $6730: $a8
	ld l, a                                          ; $6731: $6f
	ld d, b                                          ; $6732: $50
	ld a, $55                                        ; $6733: $3e $55
	db $ec                                           ; $6735: $ec
	dec bc                                           ; $6736: $0b
	xor b                                            ; $6737: $a8

jr_098_6738:
	ld e, b                                          ; $6738: $58
	ld b, [hl]                                       ; $6739: $46
	inc [hl]                                         ; $673a: $34
	or b                                             ; $673b: $b0
	and b                                            ; $673c: $a0
	ld l, e                                          ; $673d: $6b
	ld b, h                                          ; $673e: $44
	inc a                                            ; $673f: $3c
	inc [hl]                                         ; $6740: $34
	ld l, d                                          ; $6741: $6a
	ldh a, [rAUD1HIGH]                               ; $6742: $f0 $14
	ld c, e                                          ; $6744: $4b
	inc de                                           ; $6745: $13
	jr c, jr_098_6780                                ; $6746: $38 $38

	ldh a, [rAUD1HIGH]                               ; $6748: $f0 $14
	ld b, a                                          ; $674a: $47
	ld a, [hl-]                                      ; $674b: $3a
	ld d, a                                          ; $674c: $57
	ld b, b                                          ; $674d: $40
	add hl, sp                                       ; $674e: $39
	ld a, [hl-]                                      ; $674f: $3a

jr_098_6750:
	ld a, a                                          ; $6750: $7f
	ld d, e                                          ; $6751: $53
	ld d, c                                          ; $6752: $51
	ld c, [hl]                                       ; $6753: $4e
	ld h, e                                          ; $6754: $63
	and b                                            ; $6755: $a0
	cpl                                              ; $6756: $2f
	ld b, e                                          ; $6757: $43
	db $ec                                           ; $6758: $ec
	db $d3                                           ; $6759: $d3
	and c                                            ; $675a: $a1
	ldh a, [$8c]                                     ; $675b: $f0 $8c
	inc [hl]                                         ; $675d: $34
	ldh a, [$34]                                     ; $675e: $f0 $34
	ld b, a                                          ; $6760: $47
	ld a, [hl]                                       ; $6761: $7e
	jr c, jr_098_6750                                ; $6762: $38 $ec

	ret c                                            ; $6764: $d8

	xor b                                            ; $6765: $a8
	ldh a, [$08]                                     ; $6766: $f0 $08
	ld d, b                                          ; $6768: $50
	inc [hl]                                         ; $6769: $34

jr_098_676a:
	or b                                             ; $676a: $b0
	and b                                            ; $676b: $a0
	cpl                                              ; $676c: $2f
	ld b, e                                          ; $676d: $43
	ld b, b                                          ; $676e: $40
	ld c, l                                          ; $676f: $4d
	ld e, e                                          ; $6770: $5b
	ld d, [hl]                                       ; $6771: $56
	inc [hl]                                         ; $6772: $34
	ld a, d                                          ; $6773: $7a
	ld e, a                                          ; $6774: $5f
	add hl, sp                                       ; $6775: $39
	and b                                            ; $6776: $a0
	ld b, [hl]                                       ; $6777: $46
	ld e, c                                          ; $6778: $59
	dec sp                                           ; $6779: $3b
	xor h                                            ; $677a: $ac
	ld [$a0dd], a                                    ; $677b: $ea $dd $a0
	pop af                                           ; $677e: $f1
	sub c                                            ; $677f: $91

jr_098_6780:
	jr c, jr_098_67c4                                ; $6780: $38 $42

	ldh a, [$8d]                                     ; $6782: $f0 $8d
	ld d, b                                          ; $6784: $50
	ld a, [hl-]                                      ; $6785: $3a
	jr c, jr_098_67cd                                ; $6786: $38 $45

	add hl, sp                                       ; $6788: $39
	ld b, a                                          ; $6789: $47
	xor h                                            ; $678a: $ac
	ldh a, [rAUD1ENV]                                ; $678b: $f0 $12
	sbc a                                            ; $678d: $9f
	ldh a, [rTIMA]                                   ; $678e: $f0 $05
	pop af                                           ; $6790: $f1
	rrca                                             ; $6791: $0f
	ld h, d                                          ; $6792: $62
	inc de                                           ; $6793: $13
	pop af                                           ; $6794: $f1
	ld b, b                                          ; $6795: $40
	ld h, l                                          ; $6796: $65
	ldh a, [$7e]                                     ; $6797: $f0 $7e
	ldh a, [rWX]                                     ; $6799: $f0 $4b
	ld a, l                                          ; $679b: $7d
	ld a, $52                                        ; $679c: $3e $52
	ld a, $66                                        ; $679e: $3e $66
	add hl, sp                                       ; $67a0: $39
	and b                                            ; $67a1: $a0
	ld l, d                                          ; $67a2: $6a
	ldh a, [rAUD1HIGH]                               ; $67a3: $f0 $14
	ld c, a                                          ; $67a5: $4f
	jr c, jr_098_67e0                                ; $67a6: $38 $38

	ldh a, [rAUD1HIGH]                               ; $67a8: $f0 $14
	ld b, a                                          ; $67aa: $47
	inc de                                           ; $67ab: $13
	ld a, [hl-]                                      ; $67ac: $3a
	ld c, [hl]                                       ; $67ad: $4e
	ld c, c                                          ; $67ae: $49
	jr c, jr_098_67e9                                ; $67af: $38 $38

	ld h, e                                          ; $67b1: $63
	ld c, h                                          ; $67b2: $4c
	and b                                            ; $67b3: $a0
	cpl                                              ; $67b4: $2f
	ld b, e                                          ; $67b5: $43
	ld b, b                                          ; $67b6: $40
	add hl, sp                                       ; $67b7: $39
	ld b, h                                          ; $67b8: $44
	ld c, h                                          ; $67b9: $4c
	xor b                                            ; $67ba: $a8
	jp hl                                            ; $67bb: $e9


	ld [hl+], a                                      ; $67bc: $22
	inc a                                            ; $67bd: $3c
	and c                                            ; $67be: $a1
	call c, $b0a8                                    ; $67bf: $dc $a8 $b0
	and b                                            ; $67c2: $a0
	add hl, bc                                       ; $67c3: $09

jr_098_67c4:
	db $eb                                           ; $67c4: $eb
	ld h, c                                          ; $67c5: $61
	inc de                                           ; $67c6: $13
	db $eb                                           ; $67c7: $eb
	ld e, [hl]                                       ; $67c8: $5e
	and b                                            ; $67c9: $a0
	cpl                                              ; $67ca: $2f
	ld b, e                                          ; $67cb: $43
	db $eb                                           ; $67cc: $eb

jr_098_67cd:
	ld h, c                                          ; $67cd: $61
	inc [hl]                                         ; $67ce: $34
	db $eb                                           ; $67cf: $eb
	ld e, [hl]                                       ; $67d0: $5e
	xor b                                            ; $67d1: $a8
	add sp, -$1c                                     ; $67d2: $e8 $e4
	xor c                                            ; $67d4: $a9
	db $ed                                           ; $67d5: $ed
	ld d, e                                          ; $67d6: $53
	and b                                            ; $67d7: $a0
	ld d, h                                          ; $67d8: $54
	ld c, l                                          ; $67d9: $4d
	inc a                                            ; $67da: $3c
	ld d, b                                          ; $67db: $50
	inc de                                           ; $67dc: $13
	db $ec                                           ; $67dd: $ec
	ld e, b                                          ; $67de: $58
	dec sp                                           ; $67df: $3b

jr_098_67e0:
	ccf                                              ; $67e0: $3f
	ld b, [hl]                                       ; $67e1: $46
	ldh a, [rSB]                                     ; $67e2: $f0 $01
	ccf                                              ; $67e4: $3f
	ld c, a                                          ; $67e5: $4f
	inc de                                           ; $67e6: $13
	ret nc                                           ; $67e7: $d0

	and b                                            ; $67e8: $a0

jr_098_67e9:
	cpl                                              ; $67e9: $2f
	jr c, jr_098_6824                                ; $67ea: $38 $38

	ld c, h                                          ; $67ec: $4c
	inc [hl]                                         ; $67ed: $34
	db $ec                                           ; $67ee: $ec
	rlca                                             ; $67ef: $07
	add hl, bc                                       ; $67f0: $09
	add sp, -$4e                                     ; $67f1: $e8 $b2
	inc de                                           ; $67f3: $13
	ld [hl], d                                       ; $67f4: $72
	dec a                                            ; $67f5: $3d
	ld d, h                                          ; $67f6: $54
	ld c, c                                          ; $67f7: $49
	ldh a, [rAUD1LOW]                                ; $67f8: $f0 $13
	jr c, jr_098_6859                                ; $67fa: $38 $5d

	ld e, d                                          ; $67fc: $5a
	xor b                                            ; $67fd: $a8
	ld b, b                                          ; $67fe: $40
	ld c, l                                          ; $67ff: $4d
	ld e, e                                          ; $6800: $5b
	ld d, [hl]                                       ; $6801: $56
	inc [hl]                                         ; $6802: $34
	ld [$a0a9], a                                    ; $6803: $ea $a9 $a0
	cpl                                              ; $6806: $2f
	add sp, -$2a                                     ; $6807: $e8 $d6
	add hl, bc                                       ; $6809: $09
	ld l, e                                          ; $680a: $6b
	ld b, l                                          ; $680b: $45
	scf                                              ; $680c: $37
	ld [hl+], a                                      ; $680d: $22
	inc de                                           ; $680e: $13
	ld d, h                                          ; $680f: $54
	ld b, d                                          ; $6810: $42
	ld l, a                                          ; $6811: $6f
	ld d, e                                          ; $6812: $53
	inc [hl]                                         ; $6813: $34
	ld h, e                                          ; $6814: $63
	ldh a, [rAUD1SWEEP]                              ; $6815: $f0 $10
	ld h, e                                          ; $6817: $63
	ldh a, [rAUD1SWEEP]                              ; $6818: $f0 $10
	inc de                                           ; $681a: $13
	ld a, b                                          ; $681b: $78
	ccf                                              ; $681c: $3f
	ld b, [hl]                                       ; $681d: $46
	ldh a, [rSB]                                     ; $681e: $f0 $01
	dec a                                            ; $6820: $3d
	ld b, d                                          ; $6821: $42
	ld b, a                                          ; $6822: $47
	xor b                                            ; $6823: $a8

jr_098_6824:
	ldh a, [rHDMA5]                                  ; $6824: $f0 $55
	ldh a, [rBCPS]                                   ; $6826: $f0 $68
	ld d, c                                          ; $6828: $51
	ld c, [hl]                                       ; $6829: $4e
	ld h, e                                          ; $682a: $63
	ld c, h                                          ; $682b: $4c
	and b                                            ; $682c: $a0
	cpl                                              ; $682d: $2f
	ld b, e                                          ; $682e: $43
	jp hl                                            ; $682f: $e9


	or d                                             ; $6830: $b2
	inc de                                           ; $6831: $13
	db $ed                                           ; $6832: $ed
	ld d, e                                          ; $6833: $53
	db $ed                                           ; $6834: $ed
	dec b                                            ; $6835: $05
	inc de                                           ; $6836: $13
	ld [$a03b], a                                    ; $6837: $ea $3b $a0
	xor $2d                                          ; $683a: $ee $2d
	inc [hl]                                         ; $683c: $34
	ldh a, [$b3]                                     ; $683d: $f0 $b3
	ld c, d                                          ; $683f: $4a
	ld d, c                                          ; $6840: $51
	and b                                            ; $6841: $a0
	cpl                                              ; $6842: $2f
	ld b, e                                          ; $6843: $43
	ld [$ac2b], a                                    ; $6844: $ea $2b $ac
	add sp, -$2e                                     ; $6847: $e8 $d2
	xor b                                            ; $6849: $a8
	ld de, $aeea                                     ; $684a: $11 $ea $ae
	and b                                            ; $684d: $a0
	ld d, $a8                                        ; $684e: $16 $a8
	ld [$ac4b], a                                    ; $6850: $ea $4b $ac
	db $eb                                           ; $6853: $eb
	ld e, [hl]                                       ; $6854: $5e
	and b                                            ; $6855: $a0
	cpl                                              ; $6856: $2f
	ld b, e                                          ; $6857: $43
	ld c, c                                          ; $6858: $49

jr_098_6859:
	ld d, h                                          ; $6859: $54
	ld e, a                                          ; $685a: $5f
	ld c, d                                          ; $685b: $4a
	inc [hl]                                         ; $685c: $34
	db $ed                                           ; $685d: $ed
	ld d, e                                          ; $685e: $53
	xor b                                            ; $685f: $a8
	db $eb                                           ; $6860: $eb
	ld [hl], b                                       ; $6861: $70
	and c                                            ; $6862: $a1
	ldh a, [$cc]                                     ; $6863: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $6865: $f0 $88
	ld c, e                                          ; $6867: $4b
	inc [hl]                                         ; $6868: $34
	ldh a, [$c9]                                     ; $6869: $f0 $c9
	jr c, jr_098_68ac                                ; $686b: $38 $3f

	ld c, [hl]                                       ; $686d: $4e
	ld h, e                                          ; $686e: $63
	ld b, l                                          ; $686f: $45
	and b                                            ; $6870: $a0
	cpl                                              ; $6871: $2f
	ld b, e                                          ; $6872: $43
	or h                                             ; $6873: $b4
	xor h                                            ; $6874: $ac
	ld [$1325], a                                    ; $6875: $ea $25 $13
	db $eb                                           ; $6878: $eb
	ld e, h                                          ; $6879: $5c
	and c                                            ; $687a: $a1
	call c, $d4a8                                    ; $687b: $dc $a8 $d4
	ld h, e                                          ; $687e: $63
	ld b, l                                          ; $687f: $45
	and b                                            ; $6880: $a0
	cpl                                              ; $6881: $2f
	ld b, e                                          ; $6882: $43
	ld b, b                                          ; $6883: $40
	ld c, l                                          ; $6884: $4d
	ld e, e                                          ; $6885: $5b
	ld d, [hl]                                       ; $6886: $56
	xor h                                            ; $6887: $ac
	add sp, -$70                                     ; $6888: $e8 $90
	inc de                                           ; $688a: $13
	db $ec                                           ; $688b: $ec
	ld a, [bc]                                       ; $688c: $0a
	and c                                            ; $688d: $a1
	ld [$a8d2], a                                    ; $688e: $ea $d2 $a8
	ld l, a                                          ; $6891: $6f
	ld h, d                                          ; $6892: $62
	sbc c                                            ; $6893: $99
	dec a                                            ; $6894: $3d
	ld a, c                                          ; $6895: $79
	ld a, [hl-]                                      ; $6896: $3a
	jr c, @+$47                                      ; $6897: $38 $45

	add hl, sp                                       ; $6899: $39
	ld b, a                                          ; $689a: $47
	ld c, h                                          ; $689b: $4c
	and b                                            ; $689c: $a0
	ld d, $a8                                        ; $689d: $16 $a8
	db $eb                                           ; $689f: $eb
	ld h, c                                          ; $68a0: $61
	inc [hl]                                         ; $68a1: $34
	db $eb                                           ; $68a2: $eb
	ld e, [hl]                                       ; $68a3: $5e
	xor b                                            ; $68a4: $a8
	ld l, e                                          ; $68a5: $6b
	ld b, d                                          ; $68a6: $42

jr_098_68a7:
	ldh a, [rAUD2LEN]                                ; $68a7: $f0 $16
	inc a                                            ; $68a9: $3c
	ld a, $50                                        ; $68aa: $3e $50

jr_098_68ac:
	and c                                            ; $68ac: $a1
	cpl                                              ; $68ad: $2f
	ld b, e                                          ; $68ae: $43
	db $ed                                           ; $68af: $ed
	ld d, e                                          ; $68b0: $53
	xor b                                            ; $68b1: $a8
	db $eb                                           ; $68b2: $eb
	ld [hl], b                                       ; $68b3: $70
	and c                                            ; $68b4: $a1
	call c, $f0a8                                    ; $68b5: $dc $a8 $f0
	call z, $88f0                                    ; $68b8: $cc $f0 $88
	ld c, e                                          ; $68bb: $4b
	ldh a, [$c9]                                     ; $68bc: $f0 $c9
	jr c, @+$41                                      ; $68be: $38 $3f

	ld c, [hl]                                       ; $68c0: $4e
	ld h, e                                          ; $68c1: $63
	ld b, l                                          ; $68c2: $45
	and b                                            ; $68c3: $a0
	call c, $f0a8                                    ; $68c4: $dc $a8 $f0

jr_098_68c7:
	inc [hl]                                         ; $68c7: $34
	ld b, a                                          ; $68c8: $47
	inc a                                            ; $68c9: $3c
	ld d, d                                          ; $68ca: $52
	ld h, e                                          ; $68cb: $63
	ld a, [hl-]                                      ; $68cc: $3a
	jr c, @+$65                                      ; $68cd: $38 $63

	ld b, l                                          ; $68cf: $45
	and b                                            ; $68d0: $a0
	ld [$a8d2], a                                    ; $68d1: $ea $d2 $a8
	ld b, b                                          ; $68d4: $40
	ld c, l                                          ; $68d5: $4d
	ld e, e                                          ; $68d6: $5b
	ld d, [hl]                                       ; $68d7: $56
	inc [hl]                                         ; $68d8: $34
	ldh a, [$c7]                                     ; $68d9: $f0 $c7
	ld c, l                                          ; $68db: $4d
	ld a, [hl-]                                      ; $68dc: $3a
	jr c, jr_098_6924                                ; $68dd: $38 $45

	add hl, sp                                       ; $68df: $39
	ld c, h                                          ; $68e0: $4c
	and b                                            ; $68e1: $a0
	db $eb                                           ; $68e2: $eb
	ld h, c                                          ; $68e3: $61
	inc [hl]                                         ; $68e4: $34
	db $eb                                           ; $68e5: $eb
	ld e, [hl]                                       ; $68e6: $5e
	xor b                                            ; $68e7: $a8
	ld l, e                                          ; $68e8: $6b
	ld b, d                                          ; $68e9: $42
	xor $1c                                          ; $68ea: $ee $1c
	and c                                            ; $68ec: $a1
	ldh a, [$cc]                                     ; $68ed: $f0 $cc
	ldh a, [hDisp0_WY]                                     ; $68ef: $f0 $88
	ld c, e                                          ; $68f1: $4b
	ldh a, [$c9]                                     ; $68f2: $f0 $c9
	jr c, jr_098_6935                                ; $68f4: $38 $3f

	ld c, [hl]                                       ; $68f6: $4e
	ld e, l                                          ; $68f7: $5d
	ld e, d                                          ; $68f8: $5a
	xor h                                            ; $68f9: $ac
	ld l, e                                          ; $68fa: $6b
	and c                                            ; $68fb: $a1
	cpl                                              ; $68fc: $2f
	ld b, e                                          ; $68fd: $43
	ld [$1325], a                                    ; $68fe: $ea $25 $13
	ld h, a                                          ; $6901: $67
	inc a                                            ; $6902: $3c
	ld a, [hl-]                                      ; $6903: $3a
	jr c, jr_098_68a7                                ; $6904: $38 $a1

	call c, $f0a8                                    ; $6906: $dc $a8 $f0
	ld [$bef3], a                                    ; $6909: $ea $f3 $be
	ld a, $47                                        ; $690c: $3e $47
	xor $2d                                          ; $690e: $ee $2d
	jr c, jr_098_6975                                ; $6910: $38 $63

	ld c, h                                          ; $6912: $4c
	and b                                            ; $6913: $a0
	call c, $f1a8                                    ; $6914: $dc $a8 $f1
	ld a, [de]                                       ; $6917: $1a
	pop af                                           ; $6918: $f1
	inc c                                            ; $6919: $0c
	ld b, a                                          ; $691a: $47
	inc [hl]                                         ; $691b: $34
	ldh a, [$c7]                                     ; $691c: $f0 $c7
	ld c, l                                          ; $691e: $4d
	ld a, [hl-]                                      ; $691f: $3a
	jr c, @+$4c                                      ; $6920: $38 $4a

	ld a, b                                          ; $6922: $78
	ld a, [hl-]                                      ; $6923: $3a

jr_098_6924:
	ld e, b                                          ; $6924: $58
	jr c, jr_098_68c7                                ; $6925: $38 $a0

	cpl                                              ; $6927: $2f
	ld h, $ed                                        ; $6928: $26 $ed
	ld e, h                                          ; $692a: $5c
	dec h                                            ; $692b: $25
	add hl, bc                                       ; $692c: $09
	cpl                                              ; $692d: $2f
	ld [hl-], a                                      ; $692e: $32
	or h                                             ; $692f: $b4
	xor h                                            ; $6930: $ac
	ldh a, [$d4]                                     ; $6931: $f0 $d4
	pop af                                           ; $6933: $f1
	ld a, [hl+]                                      ; $6934: $2a

jr_098_6935:
	ld b, a                                          ; $6935: $47
	ld h, a                                          ; $6936: $67
	dec sp                                           ; $6937: $3b
	ccf                                              ; $6938: $3f
	ld l, h                                          ; $6939: $6c
	ld c, [hl]                                       ; $693a: $4e
	inc a                                            ; $693b: $3c
	and e                                            ; $693c: $a3
	cpl                                              ; $693d: $2f
	ld b, e                                          ; $693e: $43
	ld d, d                                          ; $693f: $52
	ld b, h                                          ; $6940: $44
	inc [hl]                                         ; $6941: $34
	db $ed                                           ; $6942: $ed
	ld d, e                                          ; $6943: $53
	ld c, e                                          ; $6944: $4b
	inc de                                           ; $6945: $13
	jp hl                                            ; $6946: $e9


	scf                                              ; $6947: $37
	and b                                            ; $6948: $a0
	ld h, h                                          ; $6949: $64
	ld d, d                                          ; $694a: $52
	dec a                                            ; $694b: $3d
	ld a, c                                          ; $694c: $79
	xor b                                            ; $694d: $a8
	ldh a, [$80]                                     ; $694e: $f0 $80
	ldh a, [$c5]                                     ; $6950: $f0 $c5
	inc [hl]                                         ; $6952: $34
	ldh a, [$c9]                                     ; $6953: $f0 $c9
	jr c, jr_098_6996                                ; $6955: $38 $3f

	ld c, [hl]                                       ; $6957: $4e
	ld b, d                                          ; $6958: $42
	ld c, h                                          ; $6959: $4c
	and b                                            ; $695a: $a0
	cpl                                              ; $695b: $2f
	ld b, e                                          ; $695c: $43
	or h                                             ; $695d: $b4
	xor h                                            ; $695e: $ac
	ld [$a03c], a                                    ; $695f: $ea $3c $a0
	call c, $d0a8                                    ; $6962: $dc $a8 $d0
	and b                                            ; $6965: $a0
	ld l, e                                          ; $6966: $6b
	ld h, d                                          ; $6967: $62
	ld h, h                                          ; $6968: $64
	ldh a, [$c8]                                     ; $6969: $f0 $c8
	jr c, @+$15                                      ; $696b: $38 $13

	ld a, $3d                                        ; $696d: $3e $3d
	ld b, d                                          ; $696f: $42
	inc a                                            ; $6970: $3c
	ld a, $50                                        ; $6971: $3e $50
	and c                                            ; $6973: $a1
	cpl                                              ; $6974: $2f

jr_098_6975:
	ld b, e                                          ; $6975: $43
	ld [$a8d1], a                                    ; $6976: $ea $d1 $a8
	db $ed                                           ; $6979: $ed

jr_098_697a:
	ld d, e                                          ; $697a: $53
	ld c, e                                          ; $697b: $4b
	and c                                            ; $697c: $a1
	ld l, a                                          ; $697d: $6f
	ld b, a                                          ; $697e: $47
	ldh a, [rSCY]                                    ; $697f: $f0 $42
	ld e, b                                          ; $6981: $58
	ld h, e                                          ; $6982: $63
	ld a, $38                                        ; $6983: $3e $38
	ldh a, [$ab]                                     ; $6985: $f0 $ab
	pop af                                           ; $6987: $f1
	ld a, [bc]                                       ; $6988: $0a
	ld d, e                                          ; $6989: $53
	xor h                                            ; $698a: $ac
	pop af                                           ; $698b: $f1
	and [hl]                                         ; $698c: $a6
	ld c, l                                          ; $698d: $4d
	ld c, [hl]                                       ; $698e: $4e
	ld b, l                                          ; $698f: $45
	add hl, sp                                       ; $6990: $39
	ld b, a                                          ; $6991: $47
	ld c, h                                          ; $6992: $4c
	and b                                            ; $6993: $a0
	cpl                                              ; $6994: $2f
	ld b, e                                          ; $6995: $43

jr_098_6996:
	ld b, b                                          ; $6996: $40
	add hl, sp                                       ; $6997: $39
	inc [hl]                                         ; $6998: $34
	pop af                                           ; $6999: $f1
	and [hl]                                         ; $699a: $a6
	ld c, l                                          ; $699b: $4d
	ld c, [hl]                                       ; $699c: $4e
	ld c, c                                          ; $699d: $49
	jr c, @+$3a                                      ; $699e: $38 $38

	ld c, h                                          ; $69a0: $4c
	and b                                            ; $69a1: $a0
	ldh a, [$31]                                     ; $69a2: $f0 $31
	ld c, e                                          ; $69a4: $4b
	inc [hl]                                         ; $69a5: $34
	ld c, a                                          ; $69a6: $4f
	add hl, sp                                       ; $69a7: $39
	xor l                                            ; $69a8: $ad
	ld b, b                                          ; $69a9: $40
	inc [hl]                                         ; $69aa: $34
	ld b, b                                          ; $69ab: $40
	ld b, c                                          ; $69ac: $41
	ld a, [hl-]                                      ; $69ad: $3a
	sbc d                                            ; $69ae: $9a
	inc de                                           ; $69af: $13
	ld e, d                                          ; $69b0: $5a
	add hl, sp                                       ; $69b1: $39
	ld c, d                                          ; $69b2: $4a
	ld c, a                                          ; $69b3: $4f
	jr c, @+$3a                                      ; $69b4: $38 $38

	db $ec                                           ; $69b6: $ec
	ret c                                            ; $69b7: $d8

	ld b, d                                          ; $69b8: $42
	and b                                            ; $69b9: $a0
	cpl                                              ; $69ba: $2f
	ld b, e                                          ; $69bb: $43
	ldh a, [$34]                                     ; $69bc: $f0 $34
	ld b, a                                          ; $69be: $47
	inc [hl]                                         ; $69bf: $34
	ld b, b                                          ; $69c0: $40
	ld b, c                                          ; $69c1: $41
	ld a, [hl-]                                      ; $69c2: $3a
	xor b                                            ; $69c3: $a8
	ld b, [hl]                                       ; $69c4: $46
	dec sp                                           ; $69c5: $3b
	inc [hl]                                         ; $69c6: $34
	ld h, h                                          ; $69c7: $64
	ld l, h                                          ; $69c8: $6c
	ld d, l                                          ; $69c9: $55
	ld e, e                                          ; $69ca: $5b
	ld d, e                                          ; $69cb: $53
	ld b, [hl]                                       ; $69cc: $46
	ld c, [hl]                                       ; $69cd: $4e
	ld b, l                                          ; $69ce: $45
	xor b                                            ; $69cf: $a8
	pop af                                           ; $69d0: $f1
	ld e, a                                          ; $69d1: $5f
	ld e, h                                          ; $69d2: $5c
	ld b, a                                          ; $69d3: $47
	ld h, a                                          ; $69d4: $67
	inc a                                            ; $69d5: $3c
	ld a, [hl-]                                      ; $69d6: $3a
	jr c, jr_098_697a                                ; $69d7: $38 $a1

	rst JumpTable                                          ; $69d9: $c7
	ld c, h                                          ; $69da: $4c
	and b                                            ; $69db: $a0
	ldh a, [c]                                       ; $69dc: $f2
	rra                                              ; $69dd: $1f
	ldh a, [$38]                                     ; $69de: $f0 $38
	ld d, e                                          ; $69e0: $53
	add d                                            ; $69e1: $82
	ld h, e                                          ; $69e2: $63
	ld a, [hl-]                                      ; $69e3: $3a
	jr c, jr_098_6a20                                ; $69e4: $38 $3a

	ld d, b                                          ; $69e6: $50
	xor h                                            ; $69e7: $ac
	ld l, a                                          ; $69e8: $6f
	ld c, a                                          ; $69e9: $4f
	db $ed                                           ; $69ea: $ed
	add h                                            ; $69eb: $84
	ld b, a                                          ; $69ec: $47
	ld a, $3f                                        ; $69ed: $3e $3f
	ld h, h                                          ; $69ef: $64
	ld d, l                                          ; $69f0: $55
	ld h, e                                          ; $69f1: $63
	and b                                            ; $69f2: $a0
	cpl                                              ; $69f3: $2f
	ld b, e                                          ; $69f4: $43
	ld b, b                                          ; $69f5: $40
	ld d, a                                          ; $69f6: $57
	ld d, [hl]                                       ; $69f7: $56
	inc [hl]                                         ; $69f8: $34
	ld b, b                                          ; $69f9: $40
	add hl, sp                                       ; $69fa: $39
	ld b, h                                          ; $69fb: $44
	xor b                                            ; $69fc: $a8
	ld e, e                                          ; $69fd: $5b
	ld d, [hl]                                       ; $69fe: $56
	ld b, [hl]                                       ; $69ff: $46
	inc [hl]                                         ; $6a00: $34
	ld h, h                                          ; $6a01: $64
	ld l, h                                          ; $6a02: $6c
	ld d, l                                          ; $6a03: $55
	ld e, e                                          ; $6a04: $5b
	inc de                                           ; $6a05: $13
	pop af                                           ; $6a06: $f1
	ld e, a                                          ; $6a07: $5f
	ld e, h                                          ; $6a08: $5c
	ld b, a                                          ; $6a09: $47
	call $d0a0                                       ; $6a0a: $cd $a0 $d0
	and b                                            ; $6a0d: $a0
	db $ec                                           ; $6a0e: $ec
	db $d3                                           ; $6a0f: $d3
	inc [hl]                                         ; $6a10: $34
	ldh a, [c]                                       ; $6a11: $f2
	rra                                              ; $6a12: $1f
	ldh a, [$38]                                     ; $6a13: $f0 $38
	ld a, [hl-]                                      ; $6a15: $3a
	ld b, c                                          ; $6a16: $41
	inc a                                            ; $6a17: $3c
	ld b, a                                          ; $6a18: $47
	inc de                                           ; $6a19: $13
	pop af                                           ; $6a1a: $f1
	nop                                              ; $6a1b: $00
	ld e, [hl]                                       ; $6a1c: $5e
	ld a, [hl-]                                      ; $6a1d: $3a
	ld e, l                                          ; $6a1e: $5d
	ld c, l                                          ; $6a1f: $4d

jr_098_6a20:
	ld a, e                                          ; $6a20: $7b
	ld a, [hl-]                                      ; $6a21: $3a
	ld d, b                                          ; $6a22: $50
	ld a, [hl-]                                      ; $6a23: $3a
	jr c, jr_098_6a68                                ; $6a24: $38 $42

	and c                                            ; $6a26: $a1
	cpl                                              ; $6a27: $2f
	ld b, e                                          ; $6a28: $43
	rst JumpTable                                          ; $6a29: $c7
	ld b, h                                          ; $6a2a: $44
	ld c, h                                          ; $6a2b: $4c
	xor b                                            ; $6a2c: $a8
	ld b, [hl]                                       ; $6a2d: $46
	dec sp                                           ; $6a2e: $3b
	inc [hl]                                         ; $6a2f: $34
	ld h, h                                          ; $6a30: $64
	ld l, h                                          ; $6a31: $6c
	ld d, l                                          ; $6a32: $55
	ld e, e                                          ; $6a33: $5b
	inc de                                           ; $6a34: $13
	pop af                                           ; $6a35: $f1
	ld e, a                                          ; $6a36: $5f
	ld e, h                                          ; $6a37: $5c
	ld b, a                                          ; $6a38: $47
	call $eca0                                       ; $6a39: $cd $a0 $ec
	reti                                             ; $6a3c: $d9


	inc [hl]                                         ; $6a3d: $34
	db $ed                                           ; $6a3e: $ed
	ld l, e                                          ; $6a3f: $6b
	ld b, h                                          ; $6a40: $44
	ld h, e                                          ; $6a41: $63
	xor b                                            ; $6a42: $a8
	ldh a, [$d4]                                     ; $6a43: $f0 $d4
	ldh a, [hDisp0_OBP1]                                     ; $6a45: $f0 $87
	ld c, a                                          ; $6a47: $4f
	ld l, a                                          ; $6a48: $6f
	ld b, d                                          ; $6a49: $42
	adc d                                            ; $6a4a: $8a
	ld a, $58                                        ; $6a4b: $3e $58
	ld b, a                                          ; $6a4d: $47
	inc de                                           ; $6a4e: $13
	ldh a, [$d8]                                     ; $6a4f: $f0 $d8
	jr c, jr_098_6aaf                                ; $6a51: $38 $5c

	ld h, d                                          ; $6a53: $62
	ld a, $3f                                        ; $6a54: $3e $3f
	ld a, $52                                        ; $6a56: $3e $52
	add hl, sp                                       ; $6a58: $39
	ld b, d                                          ; $6a59: $42
	ld c, h                                          ; $6a5a: $4c
	and b                                            ; $6a5b: $a0
	cpl                                              ; $6a5c: $2f
	ld b, e                                          ; $6a5d: $43
	halt                                             ; $6a5e: $76
	ld b, d                                          ; $6a5f: $42
	ld [hl], d                                       ; $6a60: $72
	ld c, [hl]                                       ; $6a61: $4e
	and c                                            ; $6a62: $a1
	ld l, e                                          ; $6a63: $6b
	inc [hl]                                         ; $6a64: $34
	ldh a, [$cd]                                     ; $6a65: $f0 $cd
	ld e, e                                          ; $6a67: $5b

jr_098_6a68:
	ld a, [hl-]                                      ; $6a68: $3a
	ld b, d                                          ; $6a69: $42
	xor c                                            ; $6a6a: $a9
	jp nc, $f034                                     ; $6a6b: $d2 $34 $f0

	add hl, hl                                       ; $6a6e: $29
	ld a, $55                                        ; $6a6f: $3e $55
	ld a, [hl-]                                      ; $6a71: $3a
	ld d, l                                          ; $6a72: $55
	ld a, [hl-]                                      ; $6a73: $3a
	dec sp                                           ; $6a74: $3b
	dec a                                            ; $6a75: $3d
	ld h, e                                          ; $6a76: $63
	and b                                            ; $6a77: $a0
	cpl                                              ; $6a78: $2f
	ld b, e                                          ; $6a79: $43
	ld e, h                                          ; $6a7a: $5c
	dec sp                                           ; $6a7b: $3b
	ld c, c                                          ; $6a7c: $49
	xor h                                            ; $6a7d: $ac
	ld l, h                                          ; $6a7e: $6c
	ld b, c                                          ; $6a7f: $41
	ld a, [hl-]                                      ; $6a80: $3a
	db $ed                                           ; $6a81: $ed
	ld l, e                                          ; $6a82: $6b
	ld a, [hl-]                                      ; $6a83: $3a
	ld b, c                                          ; $6a84: $41
	ld b, h                                          ; $6a85: $44
	and b                                            ; $6a86: $a0
	db $ec                                           ; $6a87: $ec
	reti                                             ; $6a88: $d9


	inc [hl]                                         ; $6a89: $34
	ld d, h                                          ; $6a8a: $54
	ld b, d                                          ; $6a8b: $42
	pop af                                           ; $6a8c: $f1
	rst SubAFromHL                                          ; $6a8d: $d7
	ldh a, [$0d]                                     ; $6a8e: $f0 $0d
	ld c, h                                          ; $6a90: $4c
	xor b                                            ; $6a91: $a8
	ldh a, [$d4]                                     ; $6a92: $f0 $d4
	ldh a, [hDisp0_OBP1]                                     ; $6a94: $f0 $87
	ld c, e                                          ; $6a96: $4b
	inc [hl]                                         ; $6a97: $34
	ld a, [hl]                                       ; $6a98: $7e
	ld d, l                                          ; $6a99: $55
	ld [hl], d                                       ; $6a9a: $72
	ccf                                              ; $6a9b: $3f
	ld c, [hl]                                       ; $6a9c: $4e
	ld h, e                                          ; $6a9d: $63
	ld c, h                                          ; $6a9e: $4c
	and b                                            ; $6a9f: $a0
	cpl                                              ; $6aa0: $2f
	ld b, e                                          ; $6aa1: $43
	rst JumpTable                                          ; $6aa2: $c7
	ld c, b                                          ; $6aa3: $48
	and b                                            ; $6aa4: $a0
	ld hl, $10ee                                     ; $6aa5: $21 $ee $10
	xor $10                                          ; $6aa8: $ee $10
	and b                                            ; $6aaa: $a0
	cpl                                              ; $6aab: $2f
	ld b, e                                          ; $6aac: $43
	db $ed                                           ; $6aad: $ed
	ld d, e                                          ; $6aae: $53

jr_098_6aaf:
	xor b                                            ; $6aaf: $a8
	db $eb                                           ; $6ab0: $eb
	rst FarCall                                          ; $6ab1: $f7
	and c                                            ; $6ab2: $a1
	db $eb                                           ; $6ab3: $eb
	ld e, b                                          ; $6ab4: $58
	inc [hl]                                         ; $6ab5: $34
	ld [hl], d                                       ; $6ab6: $72
	ld c, l                                          ; $6ab7: $4d
	ld c, [hl]                                       ; $6ab8: $4e
	inc de                                           ; $6ab9: $13
	ld a, [hl-]                                      ; $6aba: $3a
	ld b, c                                          ; $6abb: $41
	ccf                                              ; $6abc: $3f
	inc [hl]                                         ; $6abd: $34
	ld l, d                                          ; $6abe: $6a
	ldh a, [rAUD1HIGH]                               ; $6abf: $f0 $14
	ld c, e                                          ; $6ac1: $4b
	add b                                            ; $6ac2: $80
	jr c, jr_098_6b04                                ; $6ac3: $38 $3f

	ld c, [hl]                                       ; $6ac5: $4e
	ld h, e                                          ; $6ac6: $63
	ld c, h                                          ; $6ac7: $4c
	and b                                            ; $6ac8: $a0
	cpl                                              ; $6ac9: $2f
	ld b, e                                          ; $6aca: $43
	ld h, h                                          ; $6acb: $64
	inc [hl]                                         ; $6acc: $34
	halt                                             ; $6acd: $76
	ld c, e                                          ; $6ace: $4b
	xor h                                            ; $6acf: $ac
	add b                                            ; $6ad0: $80
	jr c, @+$41                                      ; $6ad1: $38 $3f

	ld a, [hl-]                                      ; $6ad3: $3a
	jr c, jr_098_6b17                                ; $6ad4: $38 $41

	ld b, h                                          ; $6ad6: $44
	ld e, l                                          ; $6ad7: $5d
	ld e, d                                          ; $6ad8: $5a
	ld c, b                                          ; $6ad9: $48
	and b                                            ; $6ada: $a0
	ld c, a                                          ; $6adb: $4f
	add hl, sp                                       ; $6adc: $39
	ld d, c                                          ; $6add: $51
	sbc l                                            ; $6ade: $9d
	inc [hl]                                         ; $6adf: $34
	db $ed                                           ; $6ae0: $ed
	ld a, c                                          ; $6ae1: $79
	ld c, h                                          ; $6ae2: $4c
	and b                                            ; $6ae3: $a0
	cpl                                              ; $6ae4: $2f
	ld b, e                                          ; $6ae5: $43
	db $eb                                           ; $6ae6: $eb
	adc h                                            ; $6ae7: $8c
	xor h                                            ; $6ae8: $ac
	jp hl                                            ; $6ae9: $e9


	or [hl]                                          ; $6aea: $b6
	and b                                            ; $6aeb: $a0
	cpl                                              ; $6aec: $2f
	ld b, e                                          ; $6aed: $43
	db $eb                                           ; $6aee: $eb
	rst FarCall                                          ; $6aef: $f7
	and c                                            ; $6af0: $a1
	ldh a, [$8c]                                     ; $6af1: $f0 $8c
	inc [hl]                                         ; $6af3: $34
	ldh a, [$34]                                     ; $6af4: $f0 $34
	ld b, a                                          ; $6af6: $47
	ld l, e                                          ; $6af7: $6b
	ld c, d                                          ; $6af8: $4a
	ld c, a                                          ; $6af9: $4f
	ld a, [hl-]                                      ; $6afa: $3a
	jr c, jr_098_6b60                                ; $6afb: $38 $63

	and b                                            ; $6afd: $a0
	cpl                                              ; $6afe: $2f
	ld b, e                                          ; $6aff: $43
	ld h, h                                          ; $6b00: $64
	inc a                                            ; $6b01: $3c
	ld a, $3a                                        ; $6b02: $3e $3a

jr_098_6b04:
	inc [hl]                                         ; $6b04: $34
	db $ed                                           ; $6b05: $ed
	ld d, e                                          ; $6b06: $53
	xor b                                            ; $6b07: $a8
	ld b, b                                          ; $6b08: $40
	ld c, l                                          ; $6b09: $4d
	ld e, e                                          ; $6b0a: $5b
	ld d, [hl]                                       ; $6b0b: $56
	inc [hl]                                         ; $6b0c: $34
	db $ec                                           ; $6b0d: $ec
	rrca                                             ; $6b0e: $0f
	and c                                            ; $6b0f: $a1
	call c, $b0a8                                    ; $6b10: $dc $a8 $b0
	and b                                            ; $6b13: $a0
	ld l, d                                          ; $6b14: $6a
	ldh a, [rAUD1HIGH]                               ; $6b15: $f0 $14

jr_098_6b17:
	ld c, e                                          ; $6b17: $4b
	inc [hl]                                         ; $6b18: $34
	ldh a, [$b6]                                     ; $6b19: $f0 $b6
	ldh a, [hDisp0_WY]                                     ; $6b1b: $f0 $88
	ld b, d                                          ; $6b1d: $42
	add h                                            ; $6b1e: $84
	ld c, c                                          ; $6b1f: $49
	inc de                                           ; $6b20: $13
	ldh a, [$9a]                                     ; $6b21: $f0 $9a
	ld e, h                                          ; $6b23: $5c
	ldh a, [rTMA]                                    ; $6b24: $f0 $06
	ld h, h                                          ; $6b26: $64
	add hl, sp                                       ; $6b27: $39
	inc a                                            ; $6b28: $3c
	ld a, $50                                        ; $6b29: $3e $50
	and b                                            ; $6b2b: $a0
	cpl                                              ; $6b2c: $2f
	ld b, e                                          ; $6b2d: $43
	ld e, [hl]                                       ; $6b2e: $5e
	dec sp                                           ; $6b2f: $3b
	xor c                                            ; $6b30: $a9
	db $ed                                           ; $6b31: $ed
	ld d, e                                          ; $6b32: $53
	ld b, d                                          ; $6b33: $42
	db $ed                                           ; $6b34: $ed
	call nz, $3c47                                   ; $6b35: $c4 $47 $3c
	ld a, [hl-]                                      ; $6b38: $3a
	add hl, sp                                       ; $6b39: $39
	inc de                                           ; $6b3a: $13
	ldh a, [$ab]                                     ; $6b3b: $f0 $ab
	ld d, e                                          ; $6b3d: $53
	jr c, jr_098_6b8e                                ; $6b3e: $38 $4e

	ld b, d                                          ; $6b40: $42
	and c                                            ; $6b41: $a1
	jr c, jr_098_6b92                                ; $6b42: $38 $4e

	ld b, a                                          ; $6b44: $47
	xor $2d                                          ; $6b45: $ee $2d
	ld c, [hl]                                       ; $6b47: $4e
	ld e, l                                          ; $6b48: $5d
	ld e, d                                          ; $6b49: $5a
	xor b                                            ; $6b4a: $a8
	ret                                              ; $6b4b: $c9


	db $ed                                           ; $6b4c: $ed
	xor e                                            ; $6b4d: $ab
	ld a, [hl-]                                      ; $6b4e: $3a
	ld b, d                                          ; $6b4f: $42
	ld b, l                                          ; $6b50: $45
	and b                                            ; $6b51: $a0
	cpl                                              ; $6b52: $2f
	ld b, e                                          ; $6b53: $43
	ld b, b                                          ; $6b54: $40
	ld b, c                                          ; $6b55: $41
	ld a, [hl-]                                      ; $6b56: $3a
	inc [hl]                                         ; $6b57: $34
	db $ed                                           ; $6b58: $ed
	ld b, b                                          ; $6b59: $40
	jr c, jr_098_6b96                                ; $6b5a: $38 $3a

	ld [hl], h                                       ; $6b5c: $74
	xor b                                            ; $6b5d: $a8
	halt                                             ; $6b5e: $76
	ld b, h                                          ; $6b5f: $44

jr_098_6b60:
	dec sp                                           ; $6b60: $3b
	dec a                                            ; $6b61: $3d
	ld d, b                                          ; $6b62: $50
	xor h                                            ; $6b63: $ac
	ld d, c                                          ; $6b64: $51
	sbc l                                            ; $6b65: $9d
	ld a, a                                          ; $6b66: $7f
	ld d, e                                          ; $6b67: $53
	add b                                            ; $6b68: $80
	ld d, l                                          ; $6b69: $55
	ld b, d                                          ; $6b6a: $42
	ld b, a                                          ; $6b6b: $47
	ld c, b                                          ; $6b6c: $48
	and b                                            ; $6b6d: $a0
	sbc $34                                          ; $6b6e: $de $34
	db $ed                                           ; $6b70: $ed
	xor e                                            ; $6b71: $ab
	ld c, h                                          ; $6b72: $4c
	ld c, b                                          ; $6b73: $48
	and b                                            ; $6b74: $a0
	cpl                                              ; $6b75: $2f
	ld b, e                                          ; $6b76: $43
	ld e, [hl]                                       ; $6b77: $5e
	dec sp                                           ; $6b78: $3b
	inc [hl]                                         ; $6b79: $34
	ld l, e                                          ; $6b7a: $6b
	inc a                                            ; $6b7b: $3c
	add d                                            ; $6b7c: $82
	dec sp                                           ; $6b7d: $3b
	dec a                                            ; $6b7e: $3d
	and c                                            ; $6b7f: $a1
	ld b, b                                          ; $6b80: $40
	ld c, l                                          ; $6b81: $4d
	ld e, e                                          ; $6b82: $5b
	ld d, [hl]                                       ; $6b83: $56
	xor h                                            ; $6b84: $ac
	or b                                             ; $6b85: $b0
	and b                                            ; $6b86: $a0
	cpl                                              ; $6b87: $2f
	ld b, e                                          ; $6b88: $43
	ld b, [hl]                                       ; $6b89: $46
	dec sp                                           ; $6b8a: $3b
	inc [hl]                                         ; $6b8b: $34
	xor $2d                                          ; $6b8c: $ee $2d

jr_098_6b8e:
	xor $2d                                          ; $6b8e: $ee $2d
	xor b                                            ; $6b90: $a8
	ld a, d                                          ; $6b91: $7a

jr_098_6b92:
	ld e, a                                          ; $6b92: $5f
	add hl, sp                                       ; $6b93: $39
	and b                                            ; $6b94: $a0
	ldh a, [c]                                       ; $6b95: $f2

jr_098_6b96:
	rra                                              ; $6b96: $1f
	ldh a, [$38]                                     ; $6b97: $f0 $38
	inc [hl]                                         ; $6b99: $34
	ld l, d                                          ; $6b9a: $6a
	ldh a, [rAUD1HIGH]                               ; $6b9b: $f0 $14
	ld c, e                                          ; $6b9d: $4b

jr_098_6b9e:
	inc de                                           ; $6b9e: $13
	jr c, jr_098_6bd9                                ; $6b9f: $38 $38

	ldh a, [rAUD1HIGH]                               ; $6ba1: $f0 $14
	ld b, a                                          ; $6ba3: $47
	ld a, [hl-]                                      ; $6ba4: $3a
	ld c, [hl]                                       ; $6ba5: $4e
	ld h, e                                          ; $6ba6: $63
	ld c, h                                          ; $6ba7: $4c
	and b                                            ; $6ba8: $a0
	cpl                                              ; $6ba9: $2f
	ld b, e                                          ; $6baa: $43
	ld b, b                                          ; $6bab: $40
	add hl, sp                                       ; $6bac: $39
	ld b, h                                          ; $6bad: $44
	ld c, h                                          ; $6bae: $4c
	xor b                                            ; $6baf: $a8
	db $ec                                           ; $6bb0: $ec
	rst SubAFromBC                                          ; $6bb1: $e7
	inc [hl]                                         ; $6bb2: $34
	db $ed                                           ; $6bb3: $ed
	ld d, e                                          ; $6bb4: $53
	ld c, c                                          ; $6bb5: $49
	inc de                                           ; $6bb6: $13
	xor $06                                          ; $6bb7: $ee $06
	ld b, h                                          ; $6bb9: $44
	inc a                                            ; $6bba: $3c
	ld d, b                                          ; $6bbb: $50
	ld c, h                                          ; $6bbc: $4c
	and b                                            ; $6bbd: $a0
	xor $14                                          ; $6bbe: $ee $14
	xor h                                            ; $6bc0: $ac
	db $eb                                           ; $6bc1: $eb
	ld [hl], h                                       ; $6bc2: $74
	db $ec                                           ; $6bc3: $ec
	ret c                                            ; $6bc4: $d8

	and b                                            ; $6bc5: $a0
	cpl                                              ; $6bc6: $2f
	ld b, e                                          ; $6bc7: $43
	sub c                                            ; $6bc8: $91
	ldh a, [$59]                                     ; $6bc9: $f0 $59
	ld c, d                                          ; $6bcb: $4a
	ld a, $66                                        ; $6bcc: $3e $66
	add hl, sp                                       ; $6bce: $39
	xor b                                            ; $6bcf: $a8
	ld b, b                                          ; $6bd0: $40
	ld c, l                                          ; $6bd1: $4d
	ld e, e                                          ; $6bd2: $5b
	ld d, [hl]                                       ; $6bd3: $56
	inc [hl]                                         ; $6bd4: $34
	ld a, d                                          ; $6bd5: $7a
	ld e, a                                          ; $6bd6: $5f
	add hl, sp                                       ; $6bd7: $39
	ld b, l                                          ; $6bd8: $45

jr_098_6bd9:
	and b                                            ; $6bd9: $a0
	add hl, bc                                       ; $6bda: $09
	db $eb                                           ; $6bdb: $eb
	ld h, c                                          ; $6bdc: $61
	inc de                                           ; $6bdd: $13
	db $eb                                           ; $6bde: $eb
	ld e, [hl]                                       ; $6bdf: $5e
	and b                                            ; $6be0: $a0
	cpl                                              ; $6be1: $2f
	ld b, e                                          ; $6be2: $43
	db $eb                                           ; $6be3: $eb
	ld h, c                                          ; $6be4: $61
	inc [hl]                                         ; $6be5: $34
	db $eb                                           ; $6be6: $eb
	ld e, [hl]                                       ; $6be7: $5e
	xor b                                            ; $6be8: $a8
	add sp, -$1c                                     ; $6be9: $e8 $e4
	xor c                                            ; $6beb: $a9
	db $eb                                           ; $6bec: $eb
	ld a, [$4ca0]                                    ; $6bed: $fa $a0 $4c
	add l                                            ; $6bf0: $85
	inc [hl]                                         ; $6bf1: $34
	ld d, h                                          ; $6bf2: $54
	ld c, l                                          ; $6bf3: $4d
	inc a                                            ; $6bf4: $3c
	ld d, b                                          ; $6bf5: $50
	inc de                                           ; $6bf6: $13
	db $ec                                           ; $6bf7: $ec
	ld e, b                                          ; $6bf8: $58
	inc a                                            ; $6bf9: $3c
	ld a, [hl-]                                      ; $6bfa: $3a
	jr c, jr_098_6b9e                                ; $6bfb: $38 $a1

	cpl                                              ; $6bfd: $2f

jr_098_6bfe:
	jr c, @+$3a                                      ; $6bfe: $38 $38

	ld c, h                                          ; $6c00: $4c
	inc [hl]                                         ; $6c01: $34
	db $ec                                           ; $6c02: $ec
	rlca                                             ; $6c03: $07
	add hl, bc                                       ; $6c04: $09
	ld e, e                                          ; $6c05: $5b
	ld d, [hl]                                       ; $6c06: $56
	ld b, [hl]                                       ; $6c07: $46
	inc [hl]                                         ; $6c08: $34
	pop af                                           ; $6c09: $f1
	jr jr_098_6bfe                                   ; $6c0a: $18 $f2

	sub c                                            ; $6c0c: $91
	ld c, d                                          ; $6c0d: $4a
	inc de                                           ; $6c0e: $13
	call $ea35                                       ; $6c0f: $cd $35 $ea
	ld l, $a0                                        ; $6c12: $2e $a0
	cpl                                              ; $6c14: $2f
	add sp, -$2a                                     ; $6c15: $e8 $d6
	add hl, bc                                       ; $6c17: $09
	db $ec                                           ; $6c18: $ec
	ld b, e                                          ; $6c19: $43
	inc [hl]                                         ; $6c1a: $34
	xor $05                                          ; $6c1b: $ee $05
	add l                                            ; $6c1d: $85
	xor c                                            ; $6c1e: $a9
	pop af                                           ; $6c1f: $f1
	ld d, d                                          ; $6c20: $52
	sub b                                            ; $6c21: $90
	ld a, $6c                                        ; $6c22: $3e $6c
	ld b, a                                          ; $6c24: $47
	ld a, $3f                                        ; $6c25: $3e $3f
	dec a                                            ; $6c27: $3d
	ld b, d                                          ; $6c28: $42
	ld b, a                                          ; $6c29: $47
	xor l                                            ; $6c2a: $ad
	ld e, e                                          ; $6c2b: $5b
	ld d, [hl]                                       ; $6c2c: $56
	ld b, [hl]                                       ; $6c2d: $46
	inc [hl]                                         ; $6c2e: $34
	ret nc                                           ; $6c2f: $d0

	and b                                            ; $6c30: $a0
	cpl                                              ; $6c31: $2f
	ld b, e                                          ; $6c32: $43
	jp hl                                            ; $6c33: $e9


	or d                                             ; $6c34: $b2
	inc de                                           ; $6c35: $13
	db $eb                                           ; $6c36: $eb
	ld a, [$05ed]                                    ; $6c37: $fa $ed $05
	inc de                                           ; $6c3a: $13
	ld [$a03b], a                                    ; $6c3b: $ea $3b $a0
	xor $2d                                          ; $6c3e: $ee $2d
	inc [hl]                                         ; $6c40: $34
	db $ed                                           ; $6c41: $ed
	ld d, c                                          ; $6c42: $51
	ld c, d                                          ; $6c43: $4a
	ld d, c                                          ; $6c44: $51
	and b                                            ; $6c45: $a0
	cpl                                              ; $6c46: $2f
	ld b, e                                          ; $6c47: $43
	ld [$ac2b], a                                    ; $6c48: $ea $2b $ac
	add sp, -$2e                                     ; $6c4b: $e8 $d2
	xor b                                            ; $6c4d: $a8
	ld de, $aeea                                     ; $6c4e: $11 $ea $ae
	and b                                            ; $6c51: $a0
	ld d, $a8                                        ; $6c52: $16 $a8
	db $eb                                           ; $6c54: $eb
	ld h, c                                          ; $6c55: $61
	inc [hl]                                         ; $6c56: $34
	db $eb                                           ; $6c57: $eb
	ld e, [hl]                                       ; $6c58: $5e
	and b                                            ; $6c59: $a0
	cpl                                              ; $6c5a: $2f
	ld b, e                                          ; $6c5b: $43
	ld c, c                                          ; $6c5c: $49
	ld d, h                                          ; $6c5d: $54
	ld e, a                                          ; $6c5e: $5f
	ld c, d                                          ; $6c5f: $4a
	inc [hl]                                         ; $6c60: $34
	db $eb                                           ; $6c61: $eb
	ld a, [$eba8]                                    ; $6c62: $fa $a8 $eb
	ld [hl], b                                       ; $6c65: $70
	and c                                            ; $6c66: $a1
	xor $1f                                          ; $6c67: $ee $1f
	inc [hl]                                         ; $6c69: $34
	ldh a, [$ea]                                     ; $6c6a: $f0 $ea
	ld b, l                                          ; $6c6c: $45
	and b                                            ; $6c6d: $a0
	cpl                                              ; $6c6e: $2f
	ld b, e                                          ; $6c6f: $43
	or h                                             ; $6c70: $b4
	xor h                                            ; $6c71: $ac
	ld [$1325], a                                    ; $6c72: $ea $25 $13
	db $eb                                           ; $6c75: $eb
	ld e, h                                          ; $6c76: $5c
	and c                                            ; $6c77: $a1
	pop af                                           ; $6c78: $f1
	ld a, [hl]                                       ; $6c79: $7e
	dec sp                                           ; $6c7a: $3b
	inc [hl]                                         ; $6c7b: $34
	ld l, a                                          ; $6c7c: $6f
	ld c, c                                          ; $6c7d: $49
	ld c, b                                          ; $6c7e: $48
	xor c                                            ; $6c7f: $a9
	xor $1f                                          ; $6c80: $ee $1f
	inc [hl]                                         ; $6c82: $34
	ld h, a                                          ; $6c83: $67
	ld d, l                                          ; $6c84: $55
	ld h, a                                          ; $6c85: $67
	ld d, l                                          ; $6c86: $55
	and b                                            ; $6c87: $a0
	cpl                                              ; $6c88: $2f
	ld b, e                                          ; $6c89: $43
	ld b, b                                          ; $6c8a: $40
	ld c, l                                          ; $6c8b: $4d
	ld e, e                                          ; $6c8c: $5b
	ld d, [hl]                                       ; $6c8d: $56
	xor h                                            ; $6c8e: $ac
	add sp, -$70                                     ; $6c8f: $e8 $90
	inc de                                           ; $6c91: $13
	db $ec                                           ; $6c92: $ec
	ld a, [bc]                                       ; $6c93: $0a
	and c                                            ; $6c94: $a1
	xor $1f                                          ; $6c95: $ee $1f
	inc [hl]                                         ; $6c97: $34
	ldh a, [rTAC]                                    ; $6c98: $f0 $07
	inc a                                            ; $6c9a: $3c
	dec sp                                           ; $6c9b: $3b
	dec a                                            ; $6c9c: $3d
	xor b                                            ; $6c9d: $a8
	ldh a, [$d4]                                     ; $6c9e: $f0 $d4
	pop af                                           ; $6ca0: $f1
	ld a, [hl+]                                      ; $6ca1: $2a
	ld b, d                                          ; $6ca2: $42
	sbc [hl]                                         ; $6ca3: $9e
	ld c, h                                          ; $6ca4: $4c
	xor b                                            ; $6ca5: $a8
	ld b, b                                          ; $6ca6: $40
	ld c, l                                          ; $6ca7: $4d
	ld e, e                                          ; $6ca8: $5b
	ld d, [hl]                                       ; $6ca9: $56
	and b                                            ; $6caa: $a0
	ld d, $a8                                        ; $6cab: $16 $a8
	db $eb                                           ; $6cad: $eb
	ld h, c                                          ; $6cae: $61
	inc [hl]                                         ; $6caf: $34
	db $eb                                           ; $6cb0: $eb
	ld e, [hl]                                       ; $6cb1: $5e
	xor b                                            ; $6cb2: $a8
	ld l, e                                          ; $6cb3: $6b
	inc [hl]                                         ; $6cb4: $34
	db $eb                                           ; $6cb5: $eb
	rst FarCall                                          ; $6cb6: $f7
	and c                                            ; $6cb7: $a1
	cpl                                              ; $6cb8: $2f
	ld b, e                                          ; $6cb9: $43
	db $eb                                           ; $6cba: $eb
	ld a, [$eba8]                                    ; $6cbb: $fa $a8 $eb
	ld [hl], b                                       ; $6cbe: $70
	and c                                            ; $6cbf: $a1
	xor $1f                                          ; $6cc0: $ee $1f
	inc [hl]                                         ; $6cc2: $34
	ldh a, [$ea]                                     ; $6cc3: $f0 $ea
	inc [hl]                                         ; $6cc5: $34
	ldh a, [$ea]                                     ; $6cc6: $f0 $ea
	and b                                            ; $6cc8: $a0
	jp hl                                            ; $6cc9: $e9


	db $fc                                           ; $6cca: $fc
	xor b                                            ; $6ccb: $a8
	ld l, a                                          ; $6ccc: $6f
	ld c, a                                          ; $6ccd: $4f
	ld h, a                                          ; $6cce: $67
	ld e, h                                          ; $6ccf: $5c
	dec a                                            ; $6cd0: $3d
	jr c, jr_098_6d1c                                ; $6cd1: $38 $49

	inc de                                           ; $6cd3: $13
	ld [hl], a                                       ; $6cd4: $77
	dec sp                                           ; $6cd5: $3b
	ccf                                              ; $6cd6: $3f
	dec a                                            ; $6cd7: $3d
	ld b, d                                          ; $6cd8: $42
	ld b, l                                          ; $6cd9: $45
	and b                                            ; $6cda: $a0
	xor $1f                                          ; $6cdb: $ee $1f
	inc [hl]                                         ; $6cdd: $34
	ldh a, [rTAC]                                    ; $6cde: $f0 $07
	inc a                                            ; $6ce0: $3c
	dec sp                                           ; $6ce1: $3b
	dec a                                            ; $6ce2: $3d
	xor b                                            ; $6ce3: $a8
	ldh a, [$d4]                                     ; $6ce4: $f0 $d4
	pop af                                           ; $6ce6: $f1
	ld a, [hl+]                                      ; $6ce7: $2a
	ld b, d                                          ; $6ce8: $42
	sbc [hl]                                         ; $6ce9: $9e
	ld c, h                                          ; $6cea: $4c
	and b                                            ; $6ceb: $a0
	ldh a, [$ea]                                     ; $6cec: $f0 $ea
	ld b, h                                          ; $6cee: $44
	ld e, l                                          ; $6cef: $5d
	ld e, d                                          ; $6cf0: $5a
	inc [hl]                                         ; $6cf1: $34
	ld l, e                                          ; $6cf2: $6b
	and c                                            ; $6cf3: $a1
	cpl                                              ; $6cf4: $2f
	ld b, e                                          ; $6cf5: $43
	ld [$1325], a                                    ; $6cf6: $ea $25 $13
	ld h, a                                          ; $6cf9: $67
	inc a                                            ; $6cfa: $3c
	ld a, [hl-]                                      ; $6cfb: $3a
	jr c, @-$5d                                      ; $6cfc: $38 $a1

	jr c, jr_098_6d38                                ; $6cfe: $38 $38

	ld b, l                                          ; $6d00: $45
	xor b                                            ; $6d01: $a8
	db $ec                                           ; $6d02: $ec
	db $10                                           ; $6d03: $10
	xor h                                            ; $6d04: $ac
	ld h, a                                          ; $6d05: $67
	ld e, h                                          ; $6d06: $5c
	dec a                                            ; $6d07: $3d
	inc a                                            ; $6d08: $3c
	dec sp                                           ; $6d09: $3b
	dec a                                            ; $6d0a: $3d
	ld a, $a0                                        ; $6d0b: $3e $a0
	jr c, jr_098_6d47                                ; $6d0d: $38 $38

	ld h, e                                          ; $6d0f: $63
	xor b                                            ; $6d10: $a8
	ldh a, [$d4]                                     ; $6d11: $f0 $d4
	pop af                                           ; $6d13: $f1
	ld a, [hl+]                                      ; $6d14: $2a
	ld b, d                                          ; $6d15: $42
	sbc [hl]                                         ; $6d16: $9e
	ld c, h                                          ; $6d17: $4c
	xor b                                            ; $6d18: $a8
	ld b, b                                          ; $6d19: $40
	ld c, l                                          ; $6d1a: $4d
	ld e, e                                          ; $6d1b: $5b

jr_098_6d1c:
	ld d, [hl]                                       ; $6d1c: $56
	and b                                            ; $6d1d: $a0
	cpl                                              ; $6d1e: $2f
	ld h, $ed                                        ; $6d1f: $26 $ed
	ld e, h                                          ; $6d21: $5c
	dec h                                            ; $6d22: $25
	add hl, bc                                       ; $6d23: $09
	cpl                                              ; $6d24: $2f
	ld [hl-], a                                      ; $6d25: $32
	or h                                             ; $6d26: $b4
	xor h                                            ; $6d27: $ac
	ldh a, [$d4]                                     ; $6d28: $f0 $d4
	pop af                                           ; $6d2a: $f1
	ld a, [hl+]                                      ; $6d2b: $2a
	ld b, a                                          ; $6d2c: $47
	ld h, a                                          ; $6d2d: $67
	dec sp                                           ; $6d2e: $3b
	ccf                                              ; $6d2f: $3f
	ld l, h                                          ; $6d30: $6c
	ld c, [hl]                                       ; $6d31: $4e
	inc a                                            ; $6d32: $3c
	and e                                            ; $6d33: $a3
	ldh a, [$80]                                     ; $6d34: $f0 $80
	ldh a, [$c5]                                     ; $6d36: $f0 $c5

jr_098_6d38:
	inc [hl]                                         ; $6d38: $34
	ldh a, [$c9]                                     ; $6d39: $f0 $c9
	jr c, jr_098_6d7c                                ; $6d3b: $38 $3f

	ld c, [hl]                                       ; $6d3d: $4e
	ld c, h                                          ; $6d3e: $4c
	and b                                            ; $6d3f: $a0
	cpl                                              ; $6d40: $2f
	ld b, e                                          ; $6d41: $43
	or h                                             ; $6d42: $b4
	xor h                                            ; $6d43: $ac
	ld [$a03c], a                                    ; $6d44: $ea $3c $a0

jr_098_6d47:
	xor $1f                                          ; $6d47: $ee $1f
	inc [hl]                                         ; $6d49: $34
	ld h, a                                          ; $6d4a: $67
	ld d, h                                          ; $6d4b: $54
	add hl, sp                                       ; $6d4c: $39
	and b                                            ; $6d4d: $a0
	ld [$a14c], a                                    ; $6d4e: $ea $4c $a1
	cpl                                              ; $6d51: $2f
	ld b, e                                          ; $6d52: $43
	ld [$a8d1], a                                    ; $6d53: $ea $d1 $a8
	db $eb                                           ; $6d56: $eb
	ld a, [$a14b]                                    ; $6d57: $fa $4b $a1
	ld l, a                                          ; $6d5a: $6f
	ld c, e                                          ; $6d5b: $4b
	inc [hl]                                         ; $6d5c: $34
	ld d, d                                          ; $6d5d: $52
	ld [hl], h                                       ; $6d5e: $74
	ld c, b                                          ; $6d5f: $48
	ld c, h                                          ; $6d60: $4c
	xor b                                            ; $6d61: $a8
	ld b, b                                          ; $6d62: $40
	add hl, sp                                       ; $6d63: $39
	jr c, jr_098_6d9f                                ; $6d64: $38 $39

	sbc d                                            ; $6d66: $9a
	ld b, l                                          ; $6d67: $45
	and b                                            ; $6d68: $a0
	cpl                                              ; $6d69: $2f
	ld b, e                                          ; $6d6a: $43
	ld l, e                                          ; $6d6b: $6b
	ld b, d                                          ; $6d6c: $42
	sbc d                                            ; $6d6d: $9a
	ld b, h                                          ; $6d6e: $44
	ld b, l                                          ; $6d6f: $45
	and b                                            ; $6d70: $a0
	ld b, [hl]                                       ; $6d71: $46
	dec sp                                           ; $6d72: $3b
	inc [hl]                                         ; $6d73: $34
	ldh a, [$08]                                     ; $6d74: $f0 $08
	ld d, b                                          ; $6d76: $50
	xor h                                            ; $6d77: $ac
	ld h, h                                          ; $6d78: $64
	ld l, h                                          ; $6d79: $6c
	ld d, l                                          ; $6d7a: $55
	ld e, e                                          ; $6d7b: $5b

jr_098_6d7c:
	ld d, e                                          ; $6d7c: $53
	ld b, [hl]                                       ; $6d7d: $46
	ld c, [hl]                                       ; $6d7e: $4e
	ld b, l                                          ; $6d7f: $45
	xor b                                            ; $6d80: $a8
	ld h, a                                          ; $6d81: $67
	inc a                                            ; $6d82: $3c
	ld a, [hl-]                                      ; $6d83: $3a
	ld e, h                                          ; $6d84: $5c
	ld d, [hl]                                       ; $6d85: $56
	and b                                            ; $6d86: $a0
	ld b, [hl]                                       ; $6d87: $46
	dec sp                                           ; $6d88: $3b
	inc [hl]                                         ; $6d89: $34
	ldh a, [$08]                                     ; $6d8a: $f0 $08
	ld d, b                                          ; $6d8c: $50
	xor h                                            ; $6d8d: $ac
	ld h, h                                          ; $6d8e: $64
	ld l, h                                          ; $6d8f: $6c
	ld d, l                                          ; $6d90: $55
	ld e, e                                          ; $6d91: $5b
	ld d, e                                          ; $6d92: $53
	ld b, [hl]                                       ; $6d93: $46
	ld c, [hl]                                       ; $6d94: $4e
	ld b, l                                          ; $6d95: $45
	xor b                                            ; $6d96: $a8
	ldh a, [$08]                                     ; $6d97: $f0 $08
	ld d, b                                          ; $6d99: $50
	inc [hl]                                         ; $6d9a: $34
	ld h, a                                          ; $6d9b: $67
	ld d, h                                          ; $6d9c: $54
	ld h, a                                          ; $6d9d: $67
	ld d, h                                          ; $6d9e: $54

jr_098_6d9f:
	and b                                            ; $6d9f: $a0
	ld d, d                                          ; $6da0: $52
	inc [hl]                                         ; $6da1: $34
	pop af                                           ; $6da2: $f1
	ld l, [hl]                                       ; $6da3: $6e
	ldh a, [$cf]                                     ; $6da4: $f0 $cf
	ld c, c                                          ; $6da6: $49
	ld c, h                                          ; $6da7: $4c
	xor b                                            ; $6da8: $a8
	ldh a, [$08]                                     ; $6da9: $f0 $08
	ld d, b                                          ; $6dab: $50
	inc [hl]                                         ; $6dac: $34
	ld h, h                                          ; $6dad: $64
	ld l, h                                          ; $6dae: $6c
	ld d, l                                          ; $6daf: $55
	ld e, e                                          ; $6db0: $5b
	ld d, e                                          ; $6db1: $53
	ld b, [hl]                                       ; $6db2: $46
	ld c, [hl]                                       ; $6db3: $4e
	ld b, l                                          ; $6db4: $45
	xor b                                            ; $6db5: $a8
	pop af                                           ; $6db6: $f1
	ld e, a                                          ; $6db7: $5f
	ld e, h                                          ; $6db8: $5c
	ld b, a                                          ; $6db9: $47
	call $2fa0                                       ; $6dba: $cd $a0 $2f
	ld b, e                                          ; $6dbd: $43
	ld [$a8c3], a                                    ; $6dbe: $ea $c3 $a8
	db $ec                                           ; $6dc1: $ec
	rlca                                             ; $6dc2: $07
	and b                                            ; $6dc3: $a0
	db $eb                                           ; $6dc4: $eb
	sub d                                            ; $6dc5: $92
	ld [hl], d                                       ; $6dc6: $72
	ccf                                              ; $6dc7: $3f
	xor h                                            ; $6dc8: $ac
	db $ed                                           ; $6dc9: $ed
	ld l, e                                          ; $6dca: $6b
	ld a, [hl-]                                      ; $6dcb: $3a
	ld b, c                                          ; $6dcc: $41
	ccf                                              ; $6dcd: $3f
	inc [hl]                                         ; $6dce: $34
	db $eb                                           ; $6dcf: $eb
	cp e                                             ; $6dd0: $bb
	xor b                                            ; $6dd1: $a8
	ld c, h                                          ; $6dd2: $4c
	inc [hl]                                         ; $6dd3: $34
	db $eb                                           ; $6dd4: $eb
	ld d, b                                          ; $6dd5: $50
	and c                                            ; $6dd6: $a1
	cpl                                              ; $6dd7: $2f
	ld b, e                                          ; $6dd8: $43
	jp hl                                            ; $6dd9: $e9


	jp z, $3aa0                                      ; $6dda: $ca $a0 $3a

	ld b, c                                          ; $6ddd: $41
	ld b, h                                          ; $6dde: $44
	inc [hl]                                         ; $6ddf: $34
	ldh a, [$cd]                                     ; $6de0: $f0 $cd
	ld e, e                                          ; $6de2: $5b
	xor b                                            ; $6de3: $a8
	ldh a, [$98]                                     ; $6de4: $f0 $98
	ld c, d                                          ; $6de6: $4a
	ld c, a                                          ; $6de7: $4f
	inc [hl]                                         ; $6de8: $34
	db $ed                                           ; $6de9: $ed
	ld l, e                                          ; $6dea: $6b
	dec sp                                           ; $6deb: $3b
	ccf                                              ; $6dec: $3f
	ldh a, [$78]                                     ; $6ded: $f0 $78
	ld e, e                                          ; $6def: $5b
	and b                                            ; $6df0: $a0
	cpl                                              ; $6df1: $2f
	ld b, e                                          ; $6df2: $43
	ldh a, [$08]                                     ; $6df3: $f0 $08
	ld b, c                                          ; $6df5: $41
	ld c, c                                          ; $6df6: $49
	ldh a, [$08]                                     ; $6df7: $f0 $08
	ld b, c                                          ; $6df9: $41
	ld c, c                                          ; $6dfa: $49
	and b                                            ; $6dfb: $a0
	db $ec                                           ; $6dfc: $ec
	sub $5b                                          ; $6dfd: $d6 $5b
	ld d, [hl]                                       ; $6dff: $56
	ld b, c                                          ; $6e00: $41
	xor b                                            ; $6e01: $a8
	ld l, a                                          ; $6e02: $6f
	ld b, d                                          ; $6e03: $42
	ldh a, [$38]                                     ; $6e04: $f0 $38
	ld d, e                                          ; $6e06: $53
	db $ec                                           ; $6e07: $ec
	ld [$a84c], sp                                   ; $6e08: $08 $4c $a8
	ld a, [hl-]                                      ; $6e0b: $3a
	ld b, c                                          ; $6e0c: $41
	dec a                                            ; $6e0d: $3d
	dec sp                                           ; $6e0e: $3b
	ccf                                              ; $6e0f: $3f
	inc [hl]                                         ; $6e10: $34
	db $ed                                           ; $6e11: $ed
	ld l, e                                          ; $6e12: $6b
	ld b, h                                          ; $6e13: $44
	inc a                                            ; $6e14: $3c
	ld d, b                                          ; $6e15: $50
	and b                                            ; $6e16: $a0
	cpl                                              ; $6e17: $2f
	ld b, e                                          ; $6e18: $43
	ld b, b                                          ; $6e19: $40
	ld d, a                                          ; $6e1a: $57
	ld d, [hl]                                       ; $6e1b: $56
	ld b, b                                          ; $6e1c: $40
	add hl, sp                                       ; $6e1d: $39
	ld b, h                                          ; $6e1e: $44
	and b                                            ; $6e1f: $a0
	ld b, h                                          ; $6e20: $44
	dec sp                                           ; $6e21: $3b
	ld e, b                                          ; $6e22: $58
	ld e, c                                          ; $6e23: $59
	dec sp                                           ; $6e24: $3b
	and b                                            ; $6e25: $a0
	cpl                                              ; $6e26: $2f
	ld b, e                                          ; $6e27: $43
	db $eb                                           ; $6e28: $eb
	ld a, [$40a8]                                    ; $6e29: $fa $a8 $40
	ld c, l                                          ; $6e2c: $4d
	ld c, e                                          ; $6e2d: $4b
	ld a, [hl-]                                      ; $6e2e: $3a
	jr c, jr_098_6e72                                ; $6e2f: $38 $41

	db $ec                                           ; $6e31: $ec
	ret c                                            ; $6e32: $d8

	and c                                            ; $6e33: $a1
	ld [hl], b                                       ; $6e34: $70
	ld [hl], c                                       ; $6e35: $71
	ld e, c                                          ; $6e36: $59
	ld b, c                                          ; $6e37: $41
	xor b                                            ; $6e38: $a8
	add b                                            ; $6e39: $80
	jr c, jr_098_6e88                                ; $6e3a: $38 $4c

	and b                                            ; $6e3c: $a0
	cpl                                              ; $6e3d: $2f
	ld b, e                                          ; $6e3e: $43
	ldh a, [$34]                                     ; $6e3f: $f0 $34
	ld b, a                                          ; $6e41: $47
	db $ec                                           ; $6e42: $ec
	ld [$38a8], sp                                   ; $6e43: $08 $a8 $38
	jr c, jr_098_6e8d                                ; $6e46: $38 $45

	ld a, [hl-]                                      ; $6e48: $3a
	ld [hl], h                                       ; $6e49: $74
	inc [hl]                                         ; $6e4a: $34
	db $ed                                           ; $6e4b: $ed
	ld l, e                                          ; $6e4c: $6b
	ld c, d                                          ; $6e4d: $4a
	and b                                            ; $6e4e: $a0
	ld [$a0dd], a                                    ; $6e4f: $ea $dd $a0
	cpl                                              ; $6e52: $2f
	ld b, e                                          ; $6e53: $43
	db $eb                                           ; $6e54: $eb
	adc h                                            ; $6e55: $8c
	xor h                                            ; $6e56: $ac
	jp hl                                            ; $6e57: $e9


	or [hl]                                          ; $6e58: $b6
	and b                                            ; $6e59: $a0
	ld b, [hl]                                       ; $6e5a: $46
	ld e, c                                          ; $6e5b: $59
	ld b, [hl]                                       ; $6e5c: $46
	xor h                                            ; $6e5d: $ac
	sub b                                            ; $6e5e: $90
	ld a, $38                                        ; $6e5f: $3e $38
	ldh a, [rAUD1ENV]                                ; $6e61: $f0 $12
	sbc a                                            ; $6e63: $9f
	ldh a, [rTIMA]                                   ; $6e64: $f0 $05
	pop af                                           ; $6e66: $f1
	rrca                                             ; $6e67: $0f
	ld c, c                                          ; $6e68: $49
	ld c, a                                          ; $6e69: $4f
	xor h                                            ; $6e6a: $ac
	ld h, h                                          ; $6e6b: $64
	ldh a, [$34]                                     ; $6e6c: $f0 $34
	ld c, l                                          ; $6e6e: $4d
	ld c, h                                          ; $6e6f: $4c
	and b                                            ; $6e70: $a0
	cpl                                              ; $6e71: $2f

jr_098_6e72:
	ld b, e                                          ; $6e72: $43
	ld b, b                                          ; $6e73: $40
	add hl, sp                                       ; $6e74: $39
	ld b, h                                          ; $6e75: $44
	ld c, h                                          ; $6e76: $4c
	and b                                            ; $6e77: $a0
	ld a, [hl-]                                      ; $6e78: $3a
	ld b, c                                          ; $6e79: $41
	inc a                                            ; $6e7a: $3c
	inc de                                           ; $6e7b: $13
	db $db                                           ; $6e7c: $db
	ld a, [hl-]                                      ; $6e7d: $3a
	jr c, jr_098_6eba                                ; $6e7e: $38 $3a

	ld [hl], h                                       ; $6e80: $74
	and b                                            ; $6e81: $a0
	cpl                                              ; $6e82: $2f
	ld b, e                                          ; $6e83: $43
	db $ec                                           ; $6e84: $ec
	push bc                                          ; $6e85: $c5
	inc [hl]                                         ; $6e86: $34
	ld a, d                                          ; $6e87: $7a

jr_098_6e88:
	ld e, a                                          ; $6e88: $5f
	add hl, sp                                       ; $6e89: $39
	ld b, l                                          ; $6e8a: $45
	and b                                            ; $6e8b: $a0
	ld e, [hl]                                       ; $6e8c: $5e

jr_098_6e8d:
	dec sp                                           ; $6e8d: $3b
	inc [hl]                                         ; $6e8e: $34
	ld c, a                                          ; $6e8f: $4f
	add hl, sp                                       ; $6e90: $39
	ld a, d                                          ; $6e91: $7a
	ld c, [hl]                                       ; $6e92: $4e
	ld b, d                                          ; $6e93: $42
	and c                                            ; $6e94: $a1
	cpl                                              ; $6e95: $2f
	ld b, e                                          ; $6e96: $43
	db $ed                                           ; $6e97: $ed
	ld b, e                                          ; $6e98: $43
	inc [hl]                                         ; $6e99: $34
	db $ed                                           ; $6e9a: $ed
	ld d, a                                          ; $6e9b: $57
	inc de                                           ; $6e9c: $13
	ld e, d                                          ; $6e9d: $5a
	ld d, h                                          ; $6e9e: $54
	ld c, a                                          ; $6e9f: $4f
	ldh a, [hLCDCIntHandlerIdx]                                     ; $6ea0: $f0 $81
	jr c, jr_098_6ee3                                ; $6ea2: $38 $3f

	ld a, [hl-]                                      ; $6ea4: $3a
	jr c, jr_098_6eec                                ; $6ea5: $38 $45

	and b                                            ; $6ea7: $a0
	ld l, d                                          ; $6ea8: $6a
	ldh a, [rAUD1HIGH]                               ; $6ea9: $f0 $14
	ld c, a                                          ; $6eab: $4f
	inc [hl]                                         ; $6eac: $34
	xor $06                                          ; $6ead: $ee $06
	ld b, a                                          ; $6eaf: $47
	inc de                                           ; $6eb0: $13
	pop af                                           ; $6eb1: $f1
	ld l, [hl]                                       ; $6eb2: $6e
	ldh a, [$cf]                                     ; $6eb3: $f0 $cf
	ld a, [hl-]                                      ; $6eb5: $3a
	ldh a, [$28]                                     ; $6eb6: $f0 $28
	ld b, a                                          ; $6eb8: $47
	ld h, a                                          ; $6eb9: $67

jr_098_6eba:
	ld e, h                                          ; $6eba: $5c
	dec a                                            ; $6ebb: $3d
	jr c, jr_098_6f0a                                ; $6ebc: $38 $4c

	and b                                            ; $6ebe: $a0
	cpl                                              ; $6ebf: $2f
	ld b, e                                          ; $6ec0: $43
	ld b, b                                          ; $6ec1: $40
	add hl, sp                                       ; $6ec2: $39
	ld b, h                                          ; $6ec3: $44
	ld c, h                                          ; $6ec4: $4c
	xor b                                            ; $6ec5: $a8
	ld h, a                                          ; $6ec6: $67
	ld e, h                                          ; $6ec7: $5c
	dec a                                            ; $6ec8: $3d
	jr c, jr_098_6f17                                ; $6ec9: $38 $4c

	xor b                                            ; $6ecb: $a8
	jp hl                                            ; $6ecc: $e9


	ld [hl+], a                                      ; $6ecd: $22
	inc a                                            ; $6ece: $3c
	and c                                            ; $6ecf: $a1
	ld e, [hl]                                       ; $6ed0: $5e
	dec sp                                           ; $6ed1: $3b
	xor c                                            ; $6ed2: $a9
	ld c, a                                          ; $6ed3: $4f
	add hl, sp                                       ; $6ed4: $39
	ld a, d                                          ; $6ed5: $7a
	dec sp                                           ; $6ed6: $3b
	ld h, c                                          ; $6ed7: $61
	ld d, [hl]                                       ; $6ed8: $56
	add hl, sp                                       ; $6ed9: $39
	and c                                            ; $6eda: $a1
	cpl                                              ; $6edb: $2f
	ld b, e                                          ; $6edc: $43
	db $ed                                           ; $6edd: $ed
	ld b, e                                          ; $6ede: $43
	inc [hl]                                         ; $6edf: $34
	ld h, h                                          ; $6ee0: $64
	ldh a, [c]                                       ; $6ee1: $f2
	ld [hl], e                                       ; $6ee2: $73

jr_098_6ee3:
	ldh a, [rLYC]                                    ; $6ee3: $f0 $45
	ld c, e                                          ; $6ee5: $4b
	xor h                                            ; $6ee6: $ac
	ld e, d                                          ; $6ee7: $5a
	ld d, h                                          ; $6ee8: $54
	ld c, a                                          ; $6ee9: $4f
	ldh a, [hLCDCIntHandlerIdx]                                     ; $6eea: $f0 $81

jr_098_6eec:
	jr c, jr_098_6f2d                                ; $6eec: $38 $3f

	ld a, [hl-]                                      ; $6eee: $3a
	jr c, jr_098_6f2f                                ; $6eef: $38 $3e

	ld c, b                                          ; $6ef1: $48
	and b                                            ; $6ef2: $a0
	ld c, c                                          ; $6ef3: $49
	ld d, h                                          ; $6ef4: $54
	ld e, a                                          ; $6ef5: $5f
	ld d, e                                          ; $6ef6: $53
	xor h                                            ; $6ef7: $ac
	ld b, [hl]                                       ; $6ef8: $46
	ld c, [hl]                                       ; $6ef9: $4e
	ld b, c                                          ; $6efa: $41
	ld b, h                                          ; $6efb: $44
	ld a, [hl-]                                      ; $6efc: $3a
	inc [hl]                                         ; $6efd: $34
	ld d, h                                          ; $6efe: $54
	ld c, l                                          ; $6eff: $4d
	ld d, e                                          ; $6f00: $53
	and b                                            ; $6f01: $a0
	cpl                                              ; $6f02: $2f
	ld b, e                                          ; $6f03: $43
	ld e, [hl]                                       ; $6f04: $5e
	dec sp                                           ; $6f05: $3b
	inc [hl]                                         ; $6f06: $34
	ld b, [hl]                                       ; $6f07: $46
	ld c, [hl]                                       ; $6f08: $4e
	ld b, d                                          ; $6f09: $42

jr_098_6f0a:
	and c                                            ; $6f0a: $a1
	ldh a, [$08]                                     ; $6f0b: $f0 $08
	ld d, b                                          ; $6f0d: $50
	inc [hl]                                         ; $6f0e: $34
	ldh a, [$0a]                                     ; $6f0f: $f0 $0a
	ld d, l                                          ; $6f11: $55
	call $46a0                                       ; $6f12: $cd $a0 $46
	dec sp                                           ; $6f15: $3b
	inc [hl]                                         ; $6f16: $34

jr_098_6f17:
	db $ec                                           ; $6f17: $ec
	or [hl]                                          ; $6f18: $b6
	ld b, d                                          ; $6f19: $42
	inc de                                           ; $6f1a: $13
	ldh a, [c]                                       ; $6f1b: $f2
	ld [bc], a                                       ; $6f1c: $02
	ldh a, [$7a]                                     ; $6f1d: $f0 $7a
	ld h, d                                          ; $6f1f: $62
	ldh a, [$d9]                                     ; $6f20: $f0 $d9
	ccf                                              ; $6f22: $3f
	ld a, [hl-]                                      ; $6f23: $3a
	ld e, h                                          ; $6f24: $5c
	ld d, [hl]                                       ; $6f25: $56
	and b                                            ; $6f26: $a0
	cpl                                              ; $6f27: $2f
	ld b, e                                          ; $6f28: $43
	ldh a, [$5a]                                     ; $6f29: $f0 $5a
	add l                                            ; $6f2b: $85
	inc [hl]                                         ; $6f2c: $34

jr_098_6f2d:
	db $ec                                           ; $6f2d: $ec
	or [hl]                                          ; $6f2e: $b6

jr_098_6f2f:
	inc a                                            ; $6f2f: $3c
	xor b                                            ; $6f30: $a8
	jr c, jr_098_6f6b                                ; $6f31: $38 $38

	ld a, [hl-]                                      ; $6f33: $3a

Call_098_6f34:
	ld [hl], h                                       ; $6f34: $74
	dec [hl]                                         ; $6f35: $35
	inc hl                                           ; $6f36: $23
	inc de                                           ; $6f37: $13
	jp hl                                            ; $6f38: $e9


	ld [hl+], a                                      ; $6f39: $22
	inc a                                            ; $6f3a: $3c
	and c                                            ; $6f3b: $a1
	ld l, d                                          ; $6f3c: $6a
	ldh a, [rAUD1HIGH]                               ; $6f3d: $f0 $14
	ld c, a                                          ; $6f3f: $4f
	inc [hl]                                         ; $6f40: $34
	pop af                                           ; $6f41: $f1
	ld l, [hl]                                       ; $6f42: $6e
	ldh a, [$cf]                                     ; $6f43: $f0 $cf
	ld a, [hl-]                                      ; $6f45: $3a
	ld c, c                                          ; $6f46: $49
	ld d, h                                          ; $6f47: $54
	ld e, a                                          ; $6f48: $5f
	ld b, a                                          ; $6f49: $47
	inc de                                           ; $6f4a: $13
	ld h, a                                          ; $6f4b: $67
	ld e, l                                          ; $6f4c: $5d
	ld c, [hl]                                       ; $6f4d: $4e
	ld c, c                                          ; $6f4e: $49
	jr c, jr_098_6f89                                ; $6f4f: $38 $38

	ld c, h                                          ; $6f51: $4c
	and b                                            ; $6f52: $a0
	cpl                                              ; $6f53: $2f
	ld b, e                                          ; $6f54: $43
	ld b, b                                          ; $6f55: $40
	add hl, sp                                       ; $6f56: $39
	ld b, h                                          ; $6f57: $44
	ld c, h                                          ; $6f58: $4c
	xor b                                            ; $6f59: $a8
	jp hl                                            ; $6f5a: $e9


	ld [hl+], a                                      ; $6f5b: $22
	inc a                                            ; $6f5c: $3c
	and c                                            ; $6f5d: $a1
	call c, Call_098_6fa8                            ; $6f5e: $dc $a8 $6f
	ld c, a                                          ; $6f61: $4f
	xor $07                                          ; $6f62: $ee $07
	ld b, [hl]                                       ; $6f64: $46
	ld c, [hl]                                       ; $6f65: $4e
	ld a, $a0                                        ; $6f66: $3e $a0
	add hl, bc                                       ; $6f68: $09
	ld d, $a8                                        ; $6f69: $16 $a8

jr_098_6f6b:
	ld [$132b], a                                    ; $6f6b: $ea $2b $13
	add sp, -$2e                                     ; $6f6e: $e8 $d2
	and b                                            ; $6f70: $a0
	cpl                                              ; $6f71: $2f
	ld b, e                                          ; $6f72: $43
	ld b, [hl]                                       ; $6f73: $46
	dec sp                                           ; $6f74: $3b
	inc [hl]                                         ; $6f75: $34
	db $eb                                           ; $6f76: $eb
	db $fc                                           ; $6f77: $fc
	xor b                                            ; $6f78: $a8
	db $eb                                           ; $6f79: $eb
	ld h, c                                          ; $6f7a: $61
	inc [hl]                                         ; $6f7b: $34
	db $eb                                           ; $6f7c: $eb
	ld e, [hl]                                       ; $6f7d: $5e
	xor b                                            ; $6f7e: $a8
	add sp, -$1c                                     ; $6f7f: $e8 $e4
	and c                                            ; $6f81: $a1
	ld [$1325], a                                    ; $6f82: $ea $25 $13
	ld h, a                                          ; $6f85: $67
	ld e, h                                          ; $6f86: $5c
	ld d, d                                          ; $6f87: $52
	ld a, c                                          ; $6f88: $79

jr_098_6f89:
	ld b, c                                          ; $6f89: $41
	inc a                                            ; $6f8a: $3c
	and c                                            ; $6f8b: $a1
	cpl                                              ; $6f8c: $2f
	jr c, jr_098_6fc7                                ; $6f8d: $38 $38

	ld c, h                                          ; $6f8f: $4c
	inc [hl]                                         ; $6f90: $34
	db $ec                                           ; $6f91: $ec
	rlca                                             ; $6f92: $07
	add hl, bc                                       ; $6f93: $09
	db $ed                                           ; $6f94: $ed
	ld d, l                                          ; $6f95: $55
	ld e, c                                          ; $6f96: $59
	xor b                                            ; $6f97: $a8
	ld b, b                                          ; $6f98: $40
	ld c, l                                          ; $6f99: $4d
	ld e, e                                          ; $6f9a: $5b
	ld d, [hl]                                       ; $6f9b: $56
	xor h                                            ; $6f9c: $ac
	ld h, a                                          ; $6f9d: $67
	ld e, h                                          ; $6f9e: $5c
	ld d, d                                          ; $6f9f: $52
	ld a, $66                                        ; $6fa0: $3e $66
	and b                                            ; $6fa2: $a0
	cpl                                              ; $6fa3: $2f
	add sp, -$2a                                     ; $6fa4: $e8 $d6
	add hl, bc                                       ; $6fa6: $09
	ret nc                                           ; $6fa7: $d0

Call_098_6fa8:
	ld e, c                                          ; $6fa8: $59
	ld b, h                                          ; $6fa9: $44
	xor b                                            ; $6faa: $a8
	ldh a, [rSCY]                                    ; $6fab: $f0 $42
	ld b, c                                          ; $6fad: $41
	and b                                            ; $6fae: $a0
	cpl                                              ; $6faf: $2f
	ld b, e                                          ; $6fb0: $43
	jp hl                                            ; $6fb1: $e9


	or d                                             ; $6fb2: $b2
	inc de                                           ; $6fb3: $13
	db $eb                                           ; $6fb4: $eb
	db $fc                                           ; $6fb5: $fc
	db $ed                                           ; $6fb6: $ed
	dec b                                            ; $6fb7: $05
	inc de                                           ; $6fb8: $13
	ld [$a03b], a                                    ; $6fb9: $ea $3b $a0
	jp hl                                            ; $6fbc: $e9


	cp $a0                                           ; $6fbd: $fe $a0
	cpl                                              ; $6fbf: $2f
	ld b, e                                          ; $6fc0: $43
	ld [$ac2b], a                                    ; $6fc1: $ea $2b $ac
	add sp, -$2e                                     ; $6fc4: $e8 $d2
	xor b                                            ; $6fc6: $a8

jr_098_6fc7:
	ld de, $aeea                                     ; $6fc7: $11 $ea $ae
	and b                                            ; $6fca: $a0
	ld h, h                                          ; $6fcb: $64
	ldh a, [c]                                       ; $6fcc: $f2
	ld a, l                                          ; $6fcd: $7d
	inc [hl]                                         ; $6fce: $34
	ld [de], a                                       ; $6fcf: $12
	inc a                                            ; $6fd0: $3c
	dec [hl]                                         ; $6fd1: $35
	rla                                              ; $6fd2: $17
	db $eb                                           ; $6fd3: $eb
	ld h, c                                          ; $6fd4: $61
	ld h, h                                          ; $6fd5: $64
	ld [hl], c                                       ; $6fd6: $71
	ld c, d                                          ; $6fd7: $4a
	ld c, c                                          ; $6fd8: $49
	ld e, b                                          ; $6fd9: $58
	ld b, c                                          ; $6fda: $41
	xor b                                            ; $6fdb: $a8
	ld e, d                                          ; $6fdc: $5a
	add hl, sp                                       ; $6fdd: $39
	ld a, $3d                                        ; $6fde: $3e $3d
	ld b, c                                          ; $6fe0: $41
	ld b, h                                          ; $6fe1: $44
	ld [hl], $ed                                     ; $6fe2: $36 $ed
	ld d, a                                          ; $6fe4: $57
	and c                                            ; $6fe5: $a1
	cpl                                              ; $6fe6: $2f
	ld b, e                                          ; $6fe7: $43
	ld b, [hl]                                       ; $6fe8: $46
	ld [hl], $46                                     ; $6fe9: $36 $46
	ld c, l                                          ; $6feb: $4d
	xor c                                            ; $6fec: $a9
	adc e                                            ; $6fed: $8b
	ldh a, [$72]                                     ; $6fee: $f0 $72
	inc a                                            ; $6ff0: $3c
	and c                                            ; $6ff1: $a1
	ld b, [hl]                                       ; $6ff2: $46
	ld [hl], h                                       ; $6ff3: $74
	xor b                                            ; $6ff4: $a8
	ld e, d                                          ; $6ff5: $5a
	add hl, sp                                       ; $6ff6: $39
	inc a                                            ; $6ff7: $3c
	ld a, $3d                                        ; $6ff8: $3e $3d
	ld b, d                                          ; $6ffa: $42
	inc a                                            ; $6ffb: $3c
	and c                                            ; $6ffc: $a1
	cpl                                              ; $6ffd: $2f
	ld b, e                                          ; $6ffe: $43
	db $eb                                           ; $6fff: $eb
	db $fc                                           ; $7000: $fc
	ld c, e                                          ; $7001: $4b
	inc de                                           ; $7002: $13
	jr c, jr_098_7053                                ; $7003: $38 $4e

	inc a                                            ; $7005: $3c
	ld a, [hl-]                                      ; $7006: $3a
	and c                                            ; $7007: $a1
	xor $27                                          ; $7008: $ee $27
	ld a, [hl-]                                      ; $700a: $3a
	ld d, b                                          ; $700b: $50
	db $ed                                           ; $700c: $ed
	ld h, d                                          ; $700d: $62
	ld c, c                                          ; $700e: $49
	inc de                                           ; $700f: $13
	ldh a, [hDisp1_OBP1]                                     ; $7010: $f0 $94
	pop af                                           ; $7012: $f1
	ld l, l                                          ; $7013: $6d
	ld b, a                                          ; $7014: $47
	sub h                                            ; $7015: $94
	inc a                                            ; $7016: $3c
	ld e, l                                          ; $7017: $5d
	dec a                                            ; $7018: $3d
	sub a                                            ; $7019: $97

jr_098_701a:
	and b                                            ; $701a: $a0
	cpl                                              ; $701b: $2f
	ld b, e                                          ; $701c: $43
	rst JumpTable                                          ; $701d: $c7
	inc a                                            ; $701e: $3c
	ld c, b                                          ; $701f: $48
	dec [hl]                                         ; $7020: $35
	rla                                              ; $7021: $17
	ldh a, [rTAC]                                    ; $7022: $f0 $07
	inc a                                            ; $7024: $3c
	dec sp                                           ; $7025: $3b
	dec a                                            ; $7026: $3d
	ld b, l                                          ; $7027: $45
	xor h                                            ; $7028: $ac
	ld e, e                                          ; $7029: $5b
	ld d, [hl]                                       ; $702a: $56
	ld b, [hl]                                       ; $702b: $46
	ld d, d                                          ; $702c: $52
	dec a                                            ; $702d: $3d
	ld l, d                                          ; $702e: $6a
	ldh a, [$0d]                                     ; $702f: $f0 $0d
	db $ed                                           ; $7031: $ed
	halt                                             ; $7032: $76
	ld d, c                                          ; $7033: $51
	ld c, [hl]                                       ; $7034: $4e
	ld b, l                                          ; $7035: $45
	and b                                            ; $7036: $a0
	ld b, [hl]                                       ; $7037: $46
	ld [hl], h                                       ; $7038: $74
	inc [hl]                                         ; $7039: $34
	ld b, b                                          ; $703a: $40
	add hl, sp                                       ; $703b: $39
	ld a, $3f                                        ; $703c: $3e $3f
	ld d, l                                          ; $703e: $55
	ld c, l                                          ; $703f: $4d
	xor b                                            ; $7040: $a8
	db $ec                                           ; $7041: $ec
	ld sp, $2fa0                                     ; $7042: $31 $a0 $2f
	ld h, $ed                                        ; $7045: $26 $ed
	ld e, h                                          ; $7047: $5c
	dec h                                            ; $7048: $25
	add hl, bc                                       ; $7049: $09
	cpl                                              ; $704a: $2f
	ld b, e                                          ; $704b: $43
	db $eb                                           ; $704c: $eb
	inc [hl]                                         ; $704d: $34
	xor h                                            ; $704e: $ac
	ld [$48b0], a                                    ; $704f: $ea $b0 $48
	and b                                            ; $7052: $a0

jr_098_7053:
	ld d, $a8                                        ; $7053: $16 $a8
	ld [$ac4b], a                                    ; $7055: $ea $4b $ac
	add sp, -$2e                                     ; $7058: $e8 $d2
	and b                                            ; $705a: $a0
	cpl                                              ; $705b: $2f
	ld b, e                                          ; $705c: $43
	db $eb                                           ; $705d: $eb
	db $fc                                           ; $705e: $fc
	xor b                                            ; $705f: $a8
	db $eb                                           ; $7060: $eb
	ld [hl], b                                       ; $7061: $70
	and c                                            ; $7062: $a1
	add hl, sp                                       ; $7063: $39
	inc [hl]                                         ; $7064: $34
	xor $1f                                          ; $7065: $ee $1f
	xor b                                            ; $7067: $a8
	ldh a, [$ea]                                     ; $7068: $f0 $ea
	ld c, d                                          ; $706a: $4a
	ld d, c                                          ; $706b: $51
	and b                                            ; $706c: $a0
	cpl                                              ; $706d: $2f
	ld b, e                                          ; $706e: $43
	or h                                             ; $706f: $b4
	xor h                                            ; $7070: $ac
	ld [$1325], a                                    ; $7071: $ea $25 $13
	ld h, a                                          ; $7074: $67
	inc a                                            ; $7075: $3c
	ld a, [hl-]                                      ; $7076: $3a
	jr c, jr_098_701a                                ; $7077: $38 $a1

	xor $1f                                          ; $7079: $ee $1f
	xor b                                            ; $707b: $a8
	ld h, a                                          ; $707c: $67
	ld e, h                                          ; $707d: $5c
	ld d, d                                          ; $707e: $52
	ld d, c                                          ; $707f: $51
	and b                                            ; $7080: $a0
	cpl                                              ; $7081: $2f
	ld b, e                                          ; $7082: $43
	ld b, b                                          ; $7083: $40
	ld c, l                                          ; $7084: $4d
	ld e, e                                          ; $7085: $5b
	ld d, [hl]                                       ; $7086: $56
	xor h                                            ; $7087: $ac
	add sp, -$70                                     ; $7088: $e8 $90
	inc de                                           ; $708a: $13
	db $ec                                           ; $708b: $ec
	ld a, [bc]                                       ; $708c: $0a
	and c                                            ; $708d: $a1
	ld b, b                                          ; $708e: $40
	ld c, l                                          ; $708f: $4d
	ld c, d                                          ; $7090: $4a
	jr c, @+$3a                                      ; $7091: $38 $38

	ld c, d                                          ; $7093: $4a
	ld d, c                                          ; $7094: $51
	xor b                                            ; $7095: $a8
	ld b, b                                          ; $7096: $40
	ld c, l                                          ; $7097: $4d
	ld e, e                                          ; $7098: $5b
	ld d, [hl]                                       ; $7099: $56
	xor h                                            ; $709a: $ac
	ld d, c                                          ; $709b: $51
	sbc l                                            ; $709c: $9d
	ld b, a                                          ; $709d: $47
	ld h, a                                          ; $709e: $67
	ld d, l                                          ; $709f: $55
	ld c, h                                          ; $70a0: $4c
	and b                                            ; $70a1: $a0
	cpl                                              ; $70a2: $2f
	ld b, e                                          ; $70a3: $43
	ld b, b                                          ; $70a4: $40
	ld c, l                                          ; $70a5: $4d
	ld e, e                                          ; $70a6: $5b
	ld d, [hl]                                       ; $70a7: $56
	and b                                            ; $70a8: $a0
	ld d, $a8                                        ; $70a9: $16 $a8
	db $eb                                           ; $70ab: $eb
	ld h, c                                          ; $70ac: $61
	xor h                                            ; $70ad: $ac

jr_098_70ae:
	add sp, -$2e                                     ; $70ae: $e8 $d2
	and b                                            ; $70b0: $a0
	cpl                                              ; $70b1: $2f
	ld b, e                                          ; $70b2: $43
	ld c, c                                          ; $70b3: $49
	ld d, h                                          ; $70b4: $54
	ld e, a                                          ; $70b5: $5f
	ld c, d                                          ; $70b6: $4a
	inc [hl]                                         ; $70b7: $34
	db $eb                                           ; $70b8: $eb
	db $fc                                           ; $70b9: $fc
	xor b                                            ; $70ba: $a8
	db $eb                                           ; $70bb: $eb
	ld [hl], b                                       ; $70bc: $70
	and c                                            ; $70bd: $a1
	xor $1f                                          ; $70be: $ee $1f
	xor b                                            ; $70c0: $a8
	ldh a, [$ea]                                     ; $70c1: $f0 $ea
	ld c, d                                          ; $70c3: $4a
	ld d, c                                          ; $70c4: $51
	ld b, l                                          ; $70c5: $45
	and b                                            ; $70c6: $a0
	xor $1f                                          ; $70c7: $ee $1f
	xor b                                            ; $70c9: $a8
	jr c, jr_098_7104                                ; $70ca: $38 $38

	ld b, l                                          ; $70cc: $45
	and b                                            ; $70cd: $a0
	xor $1f                                          ; $70ce: $ee $1f
	inc [hl]                                         ; $70d0: $34
	ldh a, [rTAC]                                    ; $70d1: $f0 $07
	inc a                                            ; $70d3: $3c
	dec sp                                           ; $70d4: $3b
	dec a                                            ; $70d5: $3d
	xor b                                            ; $70d6: $a8
	ld b, b                                          ; $70d7: $40
	ld c, l                                          ; $70d8: $4d
	ld e, e                                          ; $70d9: $5b
	ld d, [hl]                                       ; $70da: $56
	xor h                                            ; $70db: $ac
	ld d, c                                          ; $70dc: $51
	sbc l                                            ; $70dd: $9d
	ld h, a                                          ; $70de: $67
	ld d, l                                          ; $70df: $55
	ld c, h                                          ; $70e0: $4c
	and b                                            ; $70e1: $a0
	db $eb                                           ; $70e2: $eb
	ld h, c                                          ; $70e3: $61
	xor h                                            ; $70e4: $ac
	add sp, -$2e                                     ; $70e5: $e8 $d2
	xor b                                            ; $70e7: $a8
	db $eb                                           ; $70e8: $eb
	pop af                                           ; $70e9: $f1
	ld c, d                                          ; $70ea: $4a
	ld d, c                                          ; $70eb: $51
	inc a                                            ; $70ec: $3c
	and c                                            ; $70ed: $a1
	cpl                                              ; $70ee: $2f
	ld b, e                                          ; $70ef: $43
	jr c, jr_098_7160                                ; $70f0: $38 $6e

	inc [hl]                                         ; $70f2: $34
	db $eb                                           ; $70f3: $eb
	db $fc                                           ; $70f4: $fc
	ld c, e                                          ; $70f5: $4b
	inc de                                           ; $70f6: $13
	db $eb                                           ; $70f7: $eb
	ld [hl], b                                       ; $70f8: $70
	and c                                            ; $70f9: $a1
	xor $27                                          ; $70fa: $ee $27
	ld c, e                                          ; $70fc: $4b
	ldh a, [$ea]                                     ; $70fd: $f0 $ea
	ld c, d                                          ; $70ff: $4a
	ld d, c                                          ; $7100: $51
	ld b, l                                          ; $7101: $45
	and b                                            ; $7102: $a0
	cpl                                              ; $7103: $2f

jr_098_7104:
	ld b, e                                          ; $7104: $43
	ld [$1325], a                                    ; $7105: $ea $25 $13
	ld h, a                                          ; $7108: $67
	inc a                                            ; $7109: $3c
	ld a, [hl-]                                      ; $710a: $3a
	jr c, jr_098_70ae                                ; $710b: $38 $a1

	db $eb                                           ; $710d: $eb
	ld e, c                                          ; $710e: $59
	inc a                                            ; $710f: $3c
	ld a, [hl-]                                      ; $7110: $3a
	xor b                                            ; $7111: $a8
	xor $1f                                          ; $7112: $ee $1f
	inc [hl]                                         ; $7114: $34
	ld h, a                                          ; $7115: $67
	ld e, h                                          ; $7116: $5c
	ld d, d                                          ; $7117: $52
	ld d, c                                          ; $7118: $51
	and b                                            ; $7119: $a0
	xor $1f                                          ; $711a: $ee $1f
	xor b                                            ; $711c: $a8
	ldh a, [$d4]                                     ; $711d: $f0 $d4
	pop af                                           ; $711f: $f1
	ld a, [hl+]                                      ; $7120: $2a
	ld b, d                                          ; $7121: $42
	sbc [hl]                                         ; $7122: $9e
	ld c, d                                          ; $7123: $4a
	ld d, c                                          ; $7124: $51
	ld c, h                                          ; $7125: $4c
	and c                                            ; $7126: $a1
	cpl                                              ; $7127: $2f
	ld b, e                                          ; $7128: $43
	ld b, b                                          ; $7129: $40
	add hl, sp                                       ; $712a: $39
	xor b                                            ; $712b: $a8
	ld b, b                                          ; $712c: $40
	ld c, l                                          ; $712d: $4d
	ld e, e                                          ; $712e: $5b
	ld d, [hl]                                       ; $712f: $56
	and b                                            ; $7130: $a0
	cpl                                              ; $7131: $2f
	ld [hl-], a                                      ; $7132: $32
	or h                                             ; $7133: $b4
	xor h                                            ; $7134: $ac
	ldh a, [$d4]                                     ; $7135: $f0 $d4
	pop af                                           ; $7137: $f1
	ld a, [hl+]                                      ; $7138: $2a
	ld b, a                                          ; $7139: $47
	ld h, a                                          ; $713a: $67
	dec sp                                           ; $713b: $3b
	ccf                                              ; $713c: $3f
	ld l, h                                          ; $713d: $6c
	ld c, [hl]                                       ; $713e: $4e
	inc a                                            ; $713f: $3c
	and e                                            ; $7140: $a3
	cpl                                              ; $7141: $2f
	ld b, e                                          ; $7142: $43
	ld d, d                                          ; $7143: $52
	ld b, h                                          ; $7144: $44
	inc [hl]                                         ; $7145: $34
	db $eb                                           ; $7146: $eb
	db $fc                                           ; $7147: $fc
	ld c, e                                          ; $7148: $4b
	inc de                                           ; $7149: $13
	jp hl                                            ; $714a: $e9


	scf                                              ; $714b: $37
	and b                                            ; $714c: $a0
	db $eb                                           ; $714d: $eb
	ccf                                              ; $714e: $3f
	xor b                                            ; $714f: $a8
	xor $27                                          ; $7150: $ee $27

jr_098_7152:
	jp hl                                            ; $7152: $e9


	xor [hl]                                         ; $7153: $ae
	and b                                            ; $7154: $a0
	cpl                                              ; $7155: $2f
	ld b, e                                          ; $7156: $43
	ldh a, [$34]                                     ; $7157: $f0 $34
	ld b, a                                          ; $7159: $47
	inc [hl]                                         ; $715a: $34
	jr c, jr_098_7195                                ; $715b: $38 $38

	ld b, l                                          ; $715d: $45
	and b                                            ; $715e: $a0
	cpl                                              ; $715f: $2f

jr_098_7160:
	ld b, e                                          ; $7160: $43
	or h                                             ; $7161: $b4
	xor h                                            ; $7162: $ac
	ldh a, [$0a]                                     ; $7163: $f0 $0a
	pop af                                           ; $7165: $f1
	jr jr_098_7152                                   ; $7166: $18 $ea

	inc a                                            ; $7168: $3c
	inc a                                            ; $7169: $3c
	and b                                            ; $716a: $a0
	xor $1f                                          ; $716b: $ee $1f
	and b                                            ; $716d: $a0
	ld l, e                                          ; $716e: $6b
	ld h, d                                          ; $716f: $62
	ld h, h                                          ; $7170: $64
	ldh a, [$c8]                                     ; $7171: $f0 $c8
	jr c, jr_098_7188                                ; $7173: $38 $13

	ld a, $3d                                        ; $7175: $3e $3d
	ld b, c                                          ; $7177: $41
	ld c, d                                          ; $7178: $4a
	ld d, c                                          ; $7179: $51
	inc a                                            ; $717a: $3c
	and c                                            ; $717b: $a1
	cpl                                              ; $717c: $2f
	ld b, e                                          ; $717d: $43
	ld [$a8d1], a                                    ; $717e: $ea $d1 $a8
	db $eb                                           ; $7181: $eb
	db $fc                                           ; $7182: $fc
	ld c, e                                          ; $7183: $4b
	and c                                            ; $7184: $a1
	xor $27                                          ; $7185: $ee $27
	ld c, e                                          ; $7187: $4b

jr_098_7188:
	ld c, h                                          ; $7188: $4c
	inc [hl]                                         ; $7189: $34
	inc hl                                           ; $718a: $23
	inc de                                           ; $718b: $13
	ldh a, [$bc]                                     ; $718c: $f0 $bc
	ldh a, [c]                                       ; $718e: $f2
	inc bc                                           ; $718f: $03

jr_098_7190:
	ld c, c                                          ; $7190: $49
	ld c, a                                          ; $7191: $4f
	dec sp                                           ; $7192: $3b
	ld c, c                                          ; $7193: $49
	inc de                                           ; $7194: $13

jr_098_7195:
	pop af                                           ; $7195: $f1
	ld h, b                                          ; $7196: $60
	ld a, [hl]                                       ; $7197: $7e
	ld d, l                                          ; $7198: $55
	ld a, [hl-]                                      ; $7199: $3a
	ld c, l                                          ; $719a: $4d
	ld c, [hl]                                       ; $719b: $4e
	ld b, l                                          ; $719c: $45
	add hl, sp                                       ; $719d: $39
	ld b, a                                          ; $719e: $47
	xor h                                            ; $719f: $ac
	ld h, h                                          ; $71a0: $64
	ldh a, [$c8]                                     ; $71a1: $f0 $c8
	jr c, jr_098_7190                                ; $71a3: $38 $eb

	ld d, [hl]                                       ; $71a5: $56
	and b                                            ; $71a6: $a0
	cpl                                              ; $71a7: $2f
	ld b, e                                          ; $71a8: $43
	rst JumpTable                                          ; $71a9: $c7
	xor b                                            ; $71aa: $a8
	jp hl                                            ; $71ab: $e9


	jr c, jr_098_71c1                                ; $71ac: $38 $13

	pop af                                           ; $71ae: $f1
	ld e, a                                          ; $71af: $5f
	ld e, h                                          ; $71b0: $5c
	ld b, a                                          ; $71b1: $47
	call $eea0                                       ; $71b2: $cd $a0 $ee
	rra                                              ; $71b5: $1f
	inc [hl]                                         ; $71b6: $34
	ld h, a                                          ; $71b7: $67
	ld d, l                                          ; $71b8: $55
	and b                                            ; $71b9: $a0
	xor $27                                          ; $71ba: $ee $27
	ld c, e                                          ; $71bc: $4b
	ld c, h                                          ; $71bd: $4c
	inc [hl]                                         ; $71be: $34
	inc hl                                           ; $71bf: $23
	inc de                                           ; $71c0: $13

jr_098_71c1:
	ld h, h                                          ; $71c1: $64
	ei                                               ; $71c2: $fb
	jp nc, Jump_098_538c                             ; $71c3: $d2 $8c $53

	jr c, jr_098_7203                                ; $71c6: $38 $3b

	ldh a, [$36]                                     ; $71c8: $f0 $36
	jr c, jr_098_71df                                ; $71ca: $38 $13

	ldh a, [$b7]                                     ; $71cc: $f0 $b7
	ldh a, [$8c]                                     ; $71ce: $f0 $8c
	ld c, l                                          ; $71d0: $4d
	ld d, d                                          ; $71d1: $52
	ld d, c                                          ; $71d2: $51
	ld b, l                                          ; $71d3: $45
	add hl, sp                                       ; $71d4: $39
	ld b, a                                          ; $71d5: $47
	xor h                                            ; $71d6: $ac
	ld h, h                                          ; $71d7: $64
	ldh a, [$c8]                                     ; $71d8: $f0 $c8
	jr c, jr_098_721a                                ; $71da: $38 $3e

	dec a                                            ; $71dc: $3d
	ld b, l                                          ; $71dd: $45
	and b                                            ; $71de: $a0

jr_098_71df:
	cpl                                              ; $71df: $2f
	ld b, e                                          ; $71e0: $43
	rst JumpTable                                          ; $71e1: $c7
	xor b                                            ; $71e2: $a8
	jp hl                                            ; $71e3: $e9


	jr c, jr_098_71f9                                ; $71e4: $38 $13

	pop af                                           ; $71e6: $f1
	ld e, a                                          ; $71e7: $5f
	ld e, h                                          ; $71e8: $5c
	ld b, a                                          ; $71e9: $47
	ld h, a                                          ; $71ea: $67
	inc a                                            ; $71eb: $3c
	ld a, [hl-]                                      ; $71ec: $3a
	jr c, jr_098_7190                                ; $71ed: $38 $a1

	xor $27                                          ; $71ef: $ee $27
	ld c, e                                          ; $71f1: $4b
	ld c, h                                          ; $71f2: $4c
	xor b                                            ; $71f3: $a8
	ld b, [hl]                                       ; $71f4: $46
	dec sp                                           ; $71f5: $3b
	inc [hl]                                         ; $71f6: $34
	ld h, h                                          ; $71f7: $64
	ld l, h                                          ; $71f8: $6c

jr_098_71f9:
	ld d, l                                          ; $71f9: $55
	ld e, e                                          ; $71fa: $5b
	ld b, h                                          ; $71fb: $44
	xor b                                            ; $71fc: $a8
	pop af                                           ; $71fd: $f1
	ld e, a                                          ; $71fe: $5f
	ld e, h                                          ; $71ff: $5c
	ld b, a                                          ; $7200: $47
	ld h, a                                          ; $7201: $67
	ld d, h                                          ; $7202: $54

jr_098_7203:
	ld e, c                                          ; $7203: $59
	ld b, l                                          ; $7204: $45
	and b                                            ; $7205: $a0
	cpl                                              ; $7206: $2f
	ld b, e                                          ; $7207: $43
	ld [$a8c3], a                                    ; $7208: $ea $c3 $a8
	db $ec                                           ; $720b: $ec
	rlca                                             ; $720c: $07
	and b                                            ; $720d: $a0
	ld e, d                                          ; $720e: $5a
	add hl, sp                                       ; $720f: $39
	ld c, d                                          ; $7210: $4a
	ld a, $3d                                        ; $7211: $3e $3d
	and c                                            ; $7213: $a1
	cpl                                              ; $7214: $2f
	ld b, e                                          ; $7215: $43
	jp hl                                            ; $7216: $e9


	jp z, Jump_098_51a0                              ; $7217: $ca $a0 $51

jr_098_721a:
	dec sp                                           ; $721a: $3b
	ld [hl], b                                       ; $721b: $70
	ld e, c                                          ; $721c: $59
	jr c, @-$56                                      ; $721d: $38 $a8

	xor $27                                          ; $721f: $ee $27
	ld c, c                                          ; $7221: $49
	xor $06                                          ; $7222: $ee $06
	ld b, h                                          ; $7224: $44
	and b                                            ; $7225: $a0
	cpl                                              ; $7226: $2f
	ld b, e                                          ; $7227: $43
	db $d3                                           ; $7228: $d3
	xor c                                            ; $7229: $a9
	ld c, a                                          ; $722a: $4f
	ld a, $3c                                        ; $722b: $3e $3c
	ld a, $3d                                        ; $722d: $3e $3d
	ld d, b                                          ; $722f: $50
	xor h                                            ; $7230: $ac
	add sp, -$12                                     ; $7231: $e8 $ee
	and b                                            ; $7233: $a0
	xor $27                                          ; $7234: $ee $27
	ld c, e                                          ; $7236: $4b
	ld c, h                                          ; $7237: $4c
	xor b                                            ; $7238: $a8
	ldh a, [c]                                       ; $7239: $f2
	ld a, c                                          ; $723a: $79
	inc a                                            ; $723b: $3c
	ld d, b                                          ; $723c: $50
	inc [hl]                                         ; $723d: $34
	ld d, l                                          ; $723e: $55
	ld e, e                                          ; $723f: $5b
	pop af                                           ; $7240: $f1
	ld h, e                                          ; $7241: $63
	ld c, e                                          ; $7242: $4b
	inc de                                           ; $7243: $13
	jr c, jr_098_727e                                ; $7244: $38 $38

	ld b, c                                          ; $7246: $41
	ld b, h                                          ; $7247: $44
	and b                                            ; $7248: $a0
	cpl                                              ; $7249: $2f
	ld b, e                                          ; $724a: $43
	rst JumpTable                                          ; $724b: $c7
	ld c, b                                          ; $724c: $48
	and b                                            ; $724d: $a0
	ld a, [hl-]                                      ; $724e: $3a
	ld e, c                                          ; $724f: $59
	ld b, c                                          ; $7250: $41
	ld b, h                                          ; $7251: $44
	xor b                                            ; $7252: $a8
	pop af                                           ; $7253: $f1
	ld e, c                                          ; $7254: $59
	inc a                                            ; $7255: $3c
	ld [hl], h                                       ; $7256: $74
	and b                                            ; $7257: $a0
	ld a, [hl-]                                      ; $7258: $3a
	ld e, c                                          ; $7259: $59
	ld b, c                                          ; $725a: $41
	ld b, h                                          ; $725b: $44
	xor b                                            ; $725c: $a8
	ldh a, [rAUD2HIGH]                               ; $725d: $f0 $19
	pop af                                           ; $725f: $f1
	ld e, c                                          ; $7260: $59
	inc a                                            ; $7261: $3c
	ld [hl], h                                       ; $7262: $74
	and b                                            ; $7263: $a0
	ld a, [hl-]                                      ; $7264: $3a
	ld e, c                                          ; $7265: $59
	ld b, c                                          ; $7266: $41
	ld b, h                                          ; $7267: $44
	xor b                                            ; $7268: $a8
	pop af                                           ; $7269: $f1
	add hl, de                                       ; $726a: $19
	pop af                                           ; $726b: $f1
	ld e, c                                          ; $726c: $59
	inc a                                            ; $726d: $3c
	ld [hl], h                                       ; $726e: $74
	and b                                            ; $726f: $a0
	ld a, [hl-]                                      ; $7270: $3a
	ld e, c                                          ; $7271: $59
	ld b, c                                          ; $7272: $41
	ld b, h                                          ; $7273: $44
	xor b                                            ; $7274: $a8
	pop af                                           ; $7275: $f1
	sub [hl]                                         ; $7276: $96
	pop af                                           ; $7277: $f1
	ld e, c                                          ; $7278: $59
	inc a                                            ; $7279: $3c
	ld [hl], h                                       ; $727a: $74
	and b                                            ; $727b: $a0
	cpl                                              ; $727c: $2f
	ld b, e                                          ; $727d: $43

jr_098_727e:
	db $eb                                           ; $727e: $eb
	db $fc                                           ; $727f: $fc
	ld b, d                                          ; $7280: $42
	ld c, e                                          ; $7281: $4b
	xor h                                            ; $7282: $ac
	db $eb                                           ; $7283: $eb
	ld d, b                                          ; $7284: $50
	ld b, d                                          ; $7285: $42
	and c                                            ; $7286: $a1
	xor $27                                          ; $7287: $ee $27
	ld b, d                                          ; $7289: $42
	ld c, e                                          ; $728a: $4b
	ld c, h                                          ; $728b: $4c
	xor h                                            ; $728c: $ac
	db $ed                                           ; $728d: $ed
	ld l, e                                          ; $728e: $6b
	ld b, h                                          ; $728f: $44
	ld b, l                                          ; $7290: $45
	and b                                            ; $7291: $a0
	cpl                                              ; $7292: $2f
	ld b, e                                          ; $7293: $43
	ld b, [hl]                                       ; $7294: $46
	dec sp                                           ; $7295: $3b
	inc [hl]                                         ; $7296: $34
	ld b, b                                          ; $7297: $40
	add hl, sp                                       ; $7298: $39
	xor b                                            ; $7299: $a8
	db $ec                                           ; $729a: $ec
	cp c                                             ; $729b: $b9
	ld c, h                                          ; $729c: $4c
	and b                                            ; $729d: $a0
	xor $1f                                          ; $729e: $ee $1f
	xor b                                            ; $72a0: $a8
	ldh a, [c]                                       ; $72a1: $f2
	ld a, c                                          ; $72a2: $79
	inc a                                            ; $72a3: $3c
	ld d, b                                          ; $72a4: $50
	inc [hl]                                         ; $72a5: $34
	ld d, l                                          ; $72a6: $55
	ld e, e                                          ; $72a7: $5b
	pop af                                           ; $72a8: $f1
	ld h, e                                          ; $72a9: $63
	ld c, e                                          ; $72aa: $4b
	inc de                                           ; $72ab: $13
	jr c, jr_098_72e6                                ; $72ac: $38 $38

	ld b, c                                          ; $72ae: $41
	ld b, h                                          ; $72af: $44
	and b                                            ; $72b0: $a0
	ld b, [hl]                                       ; $72b1: $46
	ld e, c                                          ; $72b2: $59
	dec sp                                           ; $72b3: $3b
	and b                                            ; $72b4: $a0
	cpl                                              ; $72b5: $2f
	ld b, e                                          ; $72b6: $43
	xor $10                                          ; $72b7: $ee $10
	xor $10                                          ; $72b9: $ee $10
	and b                                            ; $72bb: $a0
	jr c, @+$3a                                      ; $72bc: $38 $38

	ld a, [hl-]                                      ; $72be: $3a
	ld [hl], h                                       ; $72bf: $74
	xor b                                            ; $72c0: $a8
	xor $27                                          ; $72c1: $ee $27
	ld c, a                                          ; $72c3: $4f
	ld l, l                                          ; $72c4: $6d
	ldh a, [$0d]                                     ; $72c5: $f0 $0d
	ld d, h                                          ; $72c7: $54
	ld c, l                                          ; $72c8: $4d
	xor h                                            ; $72c9: $ac
	pop af                                           ; $72ca: $f1
	ld e, a                                          ; $72cb: $5f
	jr c, jr_098_730d                                ; $72cc: $38 $3f

	ld l, h                                          ; $72ce: $6c
	dec a                                            ; $72cf: $3d
	jr c, jr_098_7313                                ; $72d0: $38 $41

	ld b, h                                          ; $72d2: $44
	and b                                            ; $72d3: $a0
	cpl                                              ; $72d4: $2f
	ld b, e                                          ; $72d5: $43
	ldh a, [$b5]                                     ; $72d6: $f0 $b5
	inc [hl]                                         ; $72d8: $34
	db $eb                                           ; $72d9: $eb
	db $fc                                           ; $72da: $fc
	xor b                                            ; $72db: $a8
	ld b, b                                          ; $72dc: $40
	ld b, c                                          ; $72dd: $41
	ld a, [hl-]                                      ; $72de: $3a
	ld b, a                                          ; $72df: $47
	inc de                                           ; $72e0: $13
	jr c, jr_098_731b                                ; $72e1: $38 $38

	ld c, a                                          ; $72e3: $4f
	ld b, c                                          ; $72e4: $41
	db $ec                                           ; $72e5: $ec

jr_098_72e6:
	ret c                                            ; $72e6: $d8

	ld b, l                                          ; $72e7: $45
	and b                                            ; $72e8: $a0
	db $ed                                           ; $72e9: $ed
	ld b, e                                          ; $72ea: $43
	inc [hl]                                         ; $72eb: $34
	xor $27                                          ; $72ec: $ee $27
	xor b                                            ; $72ee: $a8
	ld l, l                                          ; $72ef: $6d
	ldh a, [$0d]                                     ; $72f0: $f0 $0d
	ld c, a                                          ; $72f2: $4f
	pop af                                           ; $72f3: $f1
	ld e, a                                          ; $72f4: $5f
	jr c, jr_098_7334                                ; $72f5: $38 $3d

	ld d, h                                          ; $72f7: $54
	ld c, c                                          ; $72f8: $49
	inc de                                           ; $72f9: $13
	ldh a, [rAUD1LOW]                                ; $72fa: $f0 $13
	jr c, @+$43                                      ; $72fc: $38 $41

	ld b, h                                          ; $72fe: $44
	ld c, a                                          ; $72ff: $4f
	ld b, c                                          ; $7300: $41
	and b                                            ; $7301: $a0
	cpl                                              ; $7302: $2f
	ld b, e                                          ; $7303: $43
	ld e, b                                          ; $7304: $58
	dec sp                                           ; $7305: $3b
	ld e, h                                          ; $7306: $5c
	inc [hl]                                         ; $7307: $34
	pop af                                           ; $7308: $f1
	ld e, a                                          ; $7309: $5f
	jr c, @+$3f                                      ; $730a: $38 $3d

	ld b, d                                          ; $730c: $42

jr_098_730d:
	ld c, e                                          ; $730d: $4b
	xor h                                            ; $730e: $ac
	db $eb                                           ; $730f: $eb
	ld d, b                                          ; $7310: $50
	ld b, d                                          ; $7311: $42
	and c                                            ; $7312: $a1

jr_098_7313:
	db $ed                                           ; $7313: $ed
	ld l, e                                          ; $7314: $6b
	and b                                            ; $7315: $a0
	cpl                                              ; $7316: $2f
	ld b, e                                          ; $7317: $43
	ld b, b                                          ; $7318: $40
	inc [hl]                                         ; $7319: $34
	ld b, b                                          ; $731a: $40

jr_098_731b:
	ld c, l                                          ; $731b: $4d
	ld a, [hl-]                                      ; $731c: $3a
	ld d, b                                          ; $731d: $50
	xor h                                            ; $731e: $ac
	jr c, jr_098_7359                                ; $731f: $38 $38

	db $ec                                           ; $7321: $ec
	ret c                                            ; $7322: $d8

	and b                                            ; $7323: $a0
	db $ed                                           ; $7324: $ed
	ld b, e                                          ; $7325: $43
	inc [hl]                                         ; $7326: $34
	ld l, l                                          ; $7327: $6d
	ldh a, [$0d]                                     ; $7328: $f0 $0d
	sbc l                                            ; $732a: $9d
	ld d, b                                          ; $732b: $50
	jr c, jr_098_7341                                ; $732c: $38 $13

	pop af                                           ; $732e: $f1
	ld e, a                                          ; $732f: $5f
	jr c, jr_098_7371                                ; $7330: $38 $3f

	ld l, h                                          ; $7332: $6c
	dec a                                            ; $7333: $3d

jr_098_7334:
	jr c, jr_098_7385                                ; $7334: $38 $4f

	ld b, c                                          ; $7336: $41
	and b                                            ; $7337: $a0
	cpl                                              ; $7338: $2f
	ld [hl-], a                                      ; $7339: $32
	db $ed                                           ; $733a: $ed
	ld l, e                                          ; $733b: $6b
	pop af                                           ; $733c: $f1
	ld e, a                                          ; $733d: $5f
	jr c, jr_098_737d                                ; $733e: $38 $3d

	ld a, [hl-]                                      ; $7340: $3a

jr_098_7341:
	ld d, b                                          ; $7341: $50
	xor h                                            ; $7342: $ac
	db $ed                                           ; $7343: $ed
	adc c                                            ; $7344: $89
	ld a, $3a                                        ; $7345: $3e $3a
	ld e, b                                          ; $7347: $58
	jr c, @-$5b                                      ; $7348: $38 $a3

	ld c, a                                          ; $734a: $4f
	add hl, sp                                       ; $734b: $39
	db $ed                                           ; $734c: $ed
	ld a, c                                          ; $734d: $79
	inc de                                           ; $734e: $13
	ld a, $61                                        ; $734f: $3e $61
	ld d, [hl]                                       ; $7351: $56
	xor $1f                                          ; $7352: $ee $1f
	ld c, d                                          ; $7354: $4a
	ld d, c                                          ; $7355: $51
	ld c, h                                          ; $7356: $4c
	and b                                            ; $7357: $a0
	cpl                                              ; $7358: $2f

jr_098_7359:
	ld b, e                                          ; $7359: $43
	db $eb                                           ; $735a: $eb
	adc h                                            ; $735b: $8c
	xor h                                            ; $735c: $ac
	jp hl                                            ; $735d: $e9


	or [hl]                                          ; $735e: $b6
	and b                                            ; $735f: $a0
	xor $27                                          ; $7360: $ee $27
	ld c, a                                          ; $7362: $4f
	inc [hl]                                         ; $7363: $34
	ld b, [hl]                                       ; $7364: $46
	ld c, c                                          ; $7365: $49
	ld l, l                                          ; $7366: $6d
	ldh a, [rAUD1HIGH]                               ; $7367: $f0 $14
	ldh a, [$0a]                                     ; $7369: $f0 $0a
	ld d, l                                          ; $736b: $55
	inc de                                           ; $736c: $13
	ldh a, [rTIMA]                                   ; $736d: $f0 $05
	ld d, d                                          ; $736f: $52
	ld c, l                                          ; $7370: $4d

jr_098_7371:
	ccf                                              ; $7371: $3f
	dec a                                            ; $7372: $3d
	ld d, b                                          ; $7373: $50
	xor h                                            ; $7374: $ac
	xor $06                                          ; $7375: $ee $06
	ld b, a                                          ; $7377: $47
	db $ed                                           ; $7378: $ed
	ld a, c                                          ; $7379: $79
	ld c, d                                          ; $737a: $4a
	ld e, h                                          ; $737b: $5c
	dec a                                            ; $737c: $3d

jr_098_737d:
	ld b, d                                          ; $737d: $42
	ld b, a                                          ; $737e: $47
	ld c, b                                          ; $737f: $48
	and b                                            ; $7380: $a0
	cpl                                              ; $7381: $2f
	ld b, e                                          ; $7382: $43
	rst JumpTable                                          ; $7383: $c7
	ld b, h                                          ; $7384: $44

jr_098_7385:
	ld c, h                                          ; $7385: $4c
	and b                                            ; $7386: $a0
	db $ed                                           ; $7387: $ed
	ld a, c                                          ; $7388: $79
	db $eb                                           ; $7389: $eb
	ld d, [hl]                                       ; $738a: $56
	ld d, b                                          ; $738b: $50
	xor h                                            ; $738c: $ac
	db $db                                           ; $738d: $db
	ld a, [hl-]                                      ; $738e: $3a
	jr c, jr_098_73fe                                ; $738f: $38 $6d

	ldh a, [rAUD1HIGH]                               ; $7391: $f0 $14
	ldh a, [$2a]                                     ; $7393: $f0 $2a
	ld b, a                                          ; $7395: $47
	inc de                                           ; $7396: $13
	ld a, [hl-]                                      ; $7397: $3a
	ld d, a                                          ; $7398: $57
	ld b, b                                          ; $7399: $40
	add hl, sp                                       ; $739a: $39
	and b                                            ; $739b: $a0
	cpl                                              ; $739c: $2f
	ld b, e                                          ; $739d: $43
	db $ed                                           ; $739e: $ed
	ld a, c                                          ; $739f: $79
	ld a, $3f                                        ; $73a0: $3e $3f
	ld c, a                                          ; $73a2: $4f
	xor h                                            ; $73a3: $ac
	adc e                                            ; $73a4: $8b
	ldh a, [$72]                                     ; $73a5: $f0 $72
	db $ed                                           ; $73a7: $ed
	dec b                                            ; $73a8: $05
	ld c, e                                          ; $73a9: $4b
	xor h                                            ; $73aa: $ac
	ldh a, [$d2]                                     ; $73ab: $f0 $d2
	ld h, d                                          ; $73ad: $62
	sub h                                            ; $73ae: $94
	ld d, c                                          ; $73af: $51
	inc a                                            ; $73b0: $3c
	ld d, b                                          ; $73b1: $50
	and b                                            ; $73b2: $a0
	xor $1f                                          ; $73b3: $ee $1f
	xor b                                            ; $73b5: $a8
	ld c, d                                          ; $73b6: $4a
	ld c, a                                          ; $73b7: $4f
	ld a, [hl-]                                      ; $73b8: $3a
	ld [hl], h                                       ; $73b9: $74
	ld c, b                                          ; $73ba: $48
	and b                                            ; $73bb: $a0
	cpl                                              ; $73bc: $2f
	ld b, e                                          ; $73bd: $43
	or h                                             ; $73be: $b4
	xor h                                            ; $73bf: $ac
	db $ec                                           ; $73c0: $ec
	push bc                                          ; $73c1: $c5
	inc [hl]                                         ; $73c2: $34
	db $ec                                           ; $73c3: $ec
	rrca                                             ; $73c4: $0f
	and c                                            ; $73c5: $a1
	add hl, sp                                       ; $73c6: $39
	inc [hl]                                         ; $73c7: $34
	xor $1f                                          ; $73c8: $ee $1f
	and b                                            ; $73ca: $a0
	ld l, d                                          ; $73cb: $6a
	ldh a, [rAUD1HIGH]                               ; $73cc: $f0 $14
	ld c, e                                          ; $73ce: $4b
	xor h                                            ; $73cf: $ac
	ld c, c                                          ; $73d0: $49
	ccf                                              ; $73d1: $3f
	ld c, a                                          ; $73d2: $4f
	jr c, jr_098_740d                                ; $73d3: $38 $38

	ldh a, [rAUD1HIGH]                               ; $73d5: $f0 $14
	ld b, a                                          ; $73d7: $47
	inc de                                           ; $73d8: $13
	ld a, [hl-]                                      ; $73d9: $3a
	ld d, a                                          ; $73da: $57
	or [hl]                                          ; $73db: $b6
	and c                                            ; $73dc: $a1
	cpl                                              ; $73dd: $2f
	ld b, e                                          ; $73de: $43
	adc b                                            ; $73df: $88
	sub c                                            ; $73e0: $91
	xor h                                            ; $73e1: $ac
	ld b, b                                          ; $73e2: $40
	add hl, sp                                       ; $73e3: $39
	ld b, h                                          ; $73e4: $44
	ld c, c                                          ; $73e5: $49
	jr c, jr_098_7420                                ; $73e6: $38 $38

	ld c, h                                          ; $73e8: $4c
	and b                                            ; $73e9: $a0
	xor $1f                                          ; $73ea: $ee $1f
	inc [hl]                                         ; $73ec: $34
	db $ed                                           ; $73ed: $ed
	ld b, e                                          ; $73ee: $43
	ldh a, [$bc]                                     ; $73ef: $f0 $bc
	ldh a, [c]                                       ; $73f1: $f2
	inc bc                                           ; $73f2: $03
	ld c, c                                          ; $73f3: $49
	xor h                                            ; $73f4: $ac
	ldh a, [hDisp1_OBP1]                                     ; $73f5: $f0 $94
	pop af                                           ; $73f7: $f1
	ld l, l                                          ; $73f8: $6d
	ld c, d                                          ; $73f9: $4a
	ld e, h                                          ; $73fa: $5c
	dec a                                            ; $73fb: $3d
	ld b, c                                          ; $73fc: $41
	ld b, h                                          ; $73fd: $44

jr_098_73fe:
	ld c, a                                          ; $73fe: $4f
	ld b, c                                          ; $73ff: $41
	xor b                                            ; $7400: $a8
	pop af                                           ; $7401: $f1
	ld a, [de]                                       ; $7402: $1a
	pop af                                           ; $7403: $f1
	inc c                                            ; $7404: $0c
	ld b, b                                          ; $7405: $40
	add hl, sp                                       ; $7406: $39
	ld a, [hl-]                                      ; $7407: $3a
	ld c, [hl]                                       ; $7408: $4e
	ld c, c                                          ; $7409: $49
	ld [hl], a                                       ; $740a: $77
	add hl, sp                                       ; $740b: $39
	ld b, l                                          ; $740c: $45

jr_098_740d:
	and b                                            ; $740d: $a0
	cpl                                              ; $740e: $2f
	ld b, e                                          ; $740f: $43
	rst JumpTable                                          ; $7410: $c7
	xor b                                            ; $7411: $a8
	ld b, [hl]                                       ; $7412: $46
	ld d, a                                          ; $7413: $57
	ld d, e                                          ; $7414: $53
	ld c, c                                          ; $7415: $49
	add hl, sp                                       ; $7416: $39
	xor b                                            ; $7417: $a8
	ld e, e                                          ; $7418: $5b
	ld d, [hl]                                       ; $7419: $56
	ld b, [hl]                                       ; $741a: $46
	inc [hl]                                         ; $741b: $34
	ld a, d                                          ; $741c: $7a
	ld e, a                                          ; $741d: $5f
	add hl, sp                                       ; $741e: $39
	and b                                            ; $741f: $a0

jr_098_7420:
	ld l, d                                          ; $7420: $6a
	ldh a, [rAUD1HIGH]                               ; $7421: $f0 $14
	ld c, e                                          ; $7423: $4b
	db $ed                                           ; $7424: $ed
	ld a, c                                          ; $7425: $79
	ld c, d                                          ; $7426: $4a
	ld d, c                                          ; $7427: $51
	ld c, h                                          ; $7428: $4c
	and b                                            ; $7429: $a0
	db $eb                                           ; $742a: $eb
	pop af                                           ; $742b: $f1
	ld c, e                                          ; $742c: $4b
	xor h                                            ; $742d: $ac
	ld h, c                                          ; $742e: $61
	ld d, [hl]                                       ; $742f: $56
	ld b, c                                          ; $7430: $41
	ld c, c                                          ; $7431: $49
	db $ed                                           ; $7432: $ed
	ld a, c                                          ; $7433: $79
	inc de                                           ; $7434: $13
	ld c, d                                          ; $7435: $4a
	ld e, h                                          ; $7436: $5c
	ld [$a11e], a                                    ; $7437: $ea $1e $a1
	cpl                                              ; $743a: $2f
	ld b, e                                          ; $743b: $43
	pop af                                           ; $743c: $f1
	sub d                                            ; $743d: $92
	ldh a, [rTAC]                                    ; $743e: $f0 $07
	xor h                                            ; $7440: $ac
	add a                                            ; $7441: $87
	ldh a, [$5b]                                     ; $7442: $f0 $5b
	ldh a, [$5e]                                     ; $7444: $f0 $5e
	ld b, h                                          ; $7446: $44
	ld c, c                                          ; $7447: $49
	ld [hl], a                                       ; $7448: $77
	add hl, sp                                       ; $7449: $39
	ld b, l                                          ; $744a: $45
	and b                                            ; $744b: $a0
	ld b, b                                          ; $744c: $40
	ld c, l                                          ; $744d: $4d

jr_098_744e:
	ld a, [hl-]                                      ; $744e: $3a
	ld d, b                                          ; $744f: $50
	inc [hl]                                         ; $7450: $34
	db $ec                                           ; $7451: $ec
	ld [$a048], sp                                   ; $7452: $08 $48 $a0
	cpl                                              ; $7455: $2f
	ld b, e                                          ; $7456: $43
	ld b, b                                          ; $7457: $40
	ld c, l                                          ; $7458: $4d
	ld e, e                                          ; $7459: $5b
	ld d, [hl]                                       ; $745a: $56
	inc [hl]                                         ; $745b: $34
	db $ec                                           ; $745c: $ec
	rrca                                             ; $745d: $0f
	and c                                            ; $745e: $a1
	xor $1f                                          ; $745f: $ee $1f
	inc [hl]                                         ; $7461: $34
	ld a, d                                          ; $7462: $7a
	ld c, [hl]                                       ; $7463: $4e
	and b                                            ; $7464: $a0
	ld l, d                                          ; $7465: $6a
	ldh a, [rAUD1HIGH]                               ; $7466: $f0 $14
	ld c, a                                          ; $7468: $4f
	jr c, jr_098_74a3                                ; $7469: $38 $38

	ldh a, [rAUD1HIGH]                               ; $746b: $f0 $14
	ld b, a                                          ; $746d: $47
	inc de                                           ; $746e: $13
	ld a, [hl-]                                      ; $746f: $3a
	ld c, [hl]                                       ; $7470: $4e
	ld c, c                                          ; $7471: $49
	jr c, @+$3a                                      ; $7472: $38 $38

	ld a, [hl-]                                      ; $7474: $3a
	ld [hl], h                                       ; $7475: $74
	and b                                            ; $7476: $a0
	cpl                                              ; $7477: $2f
	ld b, e                                          ; $7478: $43
	ld b, b                                          ; $7479: $40
	add hl, sp                                       ; $747a: $39
	ld b, h                                          ; $747b: $44
	ld c, h                                          ; $747c: $4c
	xor b                                            ; $747d: $a8
	jp hl                                            ; $747e: $e9


	ld [hl+], a                                      ; $747f: $22
	inc a                                            ; $7480: $3c
	and c                                            ; $7481: $a1
	add hl, bc                                       ; $7482: $09
	ld d, $a8                                        ; $7483: $16 $a8
	ld [$132b], a                                    ; $7485: $ea $2b $13
	db $eb                                           ; $7488: $eb
	ld e, [hl]                                       ; $7489: $5e
	and b                                            ; $748a: $a0
	cpl                                              ; $748b: $2f
	ld b, e                                          ; $748c: $43
	ld b, [hl]                                       ; $748d: $46
	dec sp                                           ; $748e: $3b
	inc [hl]                                         ; $748f: $34
	db $ec                                           ; $7490: $ec
	and $a8                                          ; $7491: $e6 $a8
	db $eb                                           ; $7493: $eb
	ld h, c                                          ; $7494: $61
	inc [hl]                                         ; $7495: $34
	db $eb                                           ; $7496: $eb
	ld e, [hl]                                       ; $7497: $5e
	xor b                                            ; $7498: $a8
	add sp, -$1c                                     ; $7499: $e8 $e4
	and c                                            ; $749b: $a1
	ld b, l                                          ; $749c: $45
	inc a                                            ; $749d: $3c
	dec sp                                           ; $749e: $3b
	dec a                                            ; $749f: $3d
	ld d, b                                          ; $74a0: $50
	inc [hl]                                         ; $74a1: $34
	ld d, h                                          ; $74a2: $54

jr_098_74a3:
	ld c, l                                          ; $74a3: $4d
	inc a                                            ; $74a4: $3c
	ld d, b                                          ; $74a5: $50
	inc de                                           ; $74a6: $13
	db $ec                                           ; $74a7: $ec
	ld e, b                                          ; $74a8: $58
	inc a                                            ; $74a9: $3c
	ld a, [hl-]                                      ; $74aa: $3a
	jr c, jr_098_744e                                ; $74ab: $38 $a1

	cpl                                              ; $74ad: $2f

jr_098_74ae:
	jr c, jr_098_74e8                                ; $74ae: $38 $38

	ld c, h                                          ; $74b0: $4c
	inc [hl]                                         ; $74b1: $34
	db $ec                                           ; $74b2: $ec
	rlca                                             ; $74b3: $07
	add hl, bc                                       ; $74b4: $09
	ld e, e                                          ; $74b5: $5b
	ld d, [hl]                                       ; $74b6: $56
	ld b, [hl]                                       ; $74b7: $46
	inc [hl]                                         ; $74b8: $34
	ld [$a0a9], a                                    ; $74b9: $ea $a9 $a0
	cpl                                              ; $74bc: $2f
	add sp, -$2a                                     ; $74bd: $e8 $d6
	add hl, bc                                       ; $74bf: $09
	ld b, b                                          ; $74c0: $40
	add hl, sp                                       ; $74c1: $39
	ld c, b                                          ; $74c2: $48
	dec [hl]                                         ; $74c3: $35
	inc hl                                           ; $74c4: $23
	inc de                                           ; $74c5: $13
	ld b, b                                          ; $74c6: $40
	ld c, l                                          ; $74c7: $4d
	ld e, e                                          ; $74c8: $5b
	ld d, [hl]                                       ; $74c9: $56
	and b                                            ; $74ca: $a0
	cpl                                              ; $74cb: $2f
	ld b, e                                          ; $74cc: $43
	jp hl                                            ; $74cd: $e9


	or d                                             ; $74ce: $b2
	inc de                                           ; $74cf: $13
	db $ec                                           ; $74d0: $ec
	and $ed                                          ; $74d1: $e6 $ed
	dec b                                            ; $74d3: $05
	inc de                                           ; $74d4: $13
	ld [$a03b], a                                    ; $74d5: $ea $3b $a0
	xor $2d                                          ; $74d8: $ee $2d
	inc [hl]                                         ; $74da: $34
	xor $09                                          ; $74db: $ee $09
	ld c, d                                          ; $74dd: $4a
	ld d, c                                          ; $74de: $51
	and b                                            ; $74df: $a0
	cpl                                              ; $74e0: $2f
	ld b, e                                          ; $74e1: $43
	ld [$ac2b], a                                    ; $74e2: $ea $2b $ac
	add sp, -$2e                                     ; $74e5: $e8 $d2
	xor b                                            ; $74e7: $a8

jr_098_74e8:
	ld de, $aeea                                     ; $74e8: $11 $ea $ae
	and b                                            ; $74eb: $a0
	ld d, $a8                                        ; $74ec: $16 $a8
	ld [$344b], a                                    ; $74ee: $ea $4b $34
	db $eb                                           ; $74f1: $eb
	ld e, [hl]                                       ; $74f2: $5e
	and b                                            ; $74f3: $a0
	cpl                                              ; $74f4: $2f
	ld b, e                                          ; $74f5: $43
	db $ec                                           ; $74f6: $ec
	and $a8                                          ; $74f7: $e6 $a8
	db $eb                                           ; $74f9: $eb
	ld [hl], b                                       ; $74fa: $70
	and c                                            ; $74fb: $a1
	add hl, sp                                       ; $74fc: $39
	inc [hl]                                         ; $74fd: $34

jr_098_74fe:
	xor $1f                                          ; $74fe: $ee $1f
	and b                                            ; $7500: $a0
	cpl                                              ; $7501: $2f
	ld b, e                                          ; $7502: $43
	or h                                             ; $7503: $b4
	xor h                                            ; $7504: $ac
	ld [$1325], a                                    ; $7505: $ea $25 $13
	ld h, a                                          ; $7508: $67
	inc a                                            ; $7509: $3c
	ld a, [hl-]                                      ; $750a: $3a
	jr c, jr_098_74ae                                ; $750b: $38 $a1

	ld e, [hl]                                       ; $750d: $5e
	dec sp                                           ; $750e: $3b
	inc [hl]                                         ; $750f: $34
	ld l, a                                          ; $7510: $6f
	ld c, c                                          ; $7511: $49
	xor c                                            ; $7512: $a9
	xor $1f                                          ; $7513: $ee $1f
	inc [hl]                                         ; $7515: $34
	ld h, a                                          ; $7516: $67
	ld d, l                                          ; $7517: $55
	ld h, e                                          ; $7518: $63
	and b                                            ; $7519: $a0
	cpl                                              ; $751a: $2f
	ld b, e                                          ; $751b: $43
	ld b, b                                          ; $751c: $40
	ld c, l                                          ; $751d: $4d
	ld e, e                                          ; $751e: $5b
	ld d, [hl]                                       ; $751f: $56
	xor h                                            ; $7520: $ac
	add sp, -$70                                     ; $7521: $e8 $90
	inc de                                           ; $7523: $13
	db $ec                                           ; $7524: $ec
	ld a, [bc]                                       ; $7525: $0a
	and c                                            ; $7526: $a1
	xor $1f                                          ; $7527: $ee $1f
	inc [hl]                                         ; $7529: $34
	ldh a, [rTAC]                                    ; $752a: $f0 $07
	inc a                                            ; $752c: $3c
	dec sp                                           ; $752d: $3b
	dec a                                            ; $752e: $3d
	ld h, e                                          ; $752f: $63
	xor b                                            ; $7530: $a8
	ld b, b                                          ; $7531: $40
	ld c, l                                          ; $7532: $4d
	ld e, e                                          ; $7533: $5b
	ld d, [hl]                                       ; $7534: $56
	inc [hl]                                         ; $7535: $34
	ld d, c                                          ; $7536: $51
	sbc l                                            ; $7537: $9d
	ld b, a                                          ; $7538: $47
	ld h, a                                          ; $7539: $67
	ld d, l                                          ; $753a: $55
	ld c, h                                          ; $753b: $4c
	and b                                            ; $753c: $a0
	xor $1f                                          ; $753d: $ee $1f
	inc [hl]                                         ; $753f: $34
	ld h, a                                          ; $7540: $67
	ld d, l                                          ; $7541: $55
	ld h, e                                          ; $7542: $63
	and b                                            ; $7543: $a0
	xor $1f                                          ; $7544: $ee $1f
	inc [hl]                                         ; $7546: $34
	ldh a, [rTAC]                                    ; $7547: $f0 $07
	inc a                                            ; $7549: $3c
	dec sp                                           ; $754a: $3b
	dec a                                            ; $754b: $3d
	ld h, e                                          ; $754c: $63
	xor b                                            ; $754d: $a8
	ld b, b                                          ; $754e: $40
	ld c, l                                          ; $754f: $4d
	ld e, e                                          ; $7550: $5b
	ld d, [hl]                                       ; $7551: $56
	and b                                            ; $7552: $a0
	cpl                                              ; $7553: $2f
	ld b, e                                          ; $7554: $43
	ld [$1325], a                                    ; $7555: $ea $25 $13
	ld h, a                                          ; $7558: $67
	inc a                                            ; $7559: $3c
	ld a, [hl-]                                      ; $755a: $3a
	jr c, jr_098_74fe                                ; $755b: $38 $a1

	xor $1f                                          ; $755d: $ee $1f
	inc [hl]                                         ; $755f: $34
	jr c, jr_098_759a                                ; $7560: $38 $38

	ld b, l                                          ; $7562: $45
	and b                                            ; $7563: $a0
	xor $1f                                          ; $7564: $ee $1f
	xor b                                            ; $7566: $a8
	ld b, b                                          ; $7567: $40
	ld c, l                                          ; $7568: $4d
	ld e, e                                          ; $7569: $5b
	ld d, [hl]                                       ; $756a: $56
	inc [hl]                                         ; $756b: $34
	ldh a, [$d4]                                     ; $756c: $f0 $d4
	pop af                                           ; $756e: $f1
	ld a, [hl+]                                      ; $756f: $2a
	ld b, d                                          ; $7570: $42
	sbc [hl]                                         ; $7571: $9e
	ld c, d                                          ; $7572: $4a
	and b                                            ; $7573: $a0
	cpl                                              ; $7574: $2f
	ld b, e                                          ; $7575: $43
	ld b, b                                          ; $7576: $40
	ld c, l                                          ; $7577: $4d

jr_098_7578:
	ld e, e                                          ; $7578: $5b
	ld d, [hl]                                       ; $7579: $56
	and b                                            ; $757a: $a0
	cpl                                              ; $757b: $2f
	ld h, $ed                                        ; $757c: $26 $ed
	ld e, h                                          ; $757e: $5c
	dec h                                            ; $757f: $25
	add hl, bc                                       ; $7580: $09
	cpl                                              ; $7581: $2f
	ld [hl-], a                                      ; $7582: $32
	or h                                             ; $7583: $b4
	xor h                                            ; $7584: $ac
	ldh a, [$d4]                                     ; $7585: $f0 $d4
	pop af                                           ; $7587: $f1
	ld a, [hl+]                                      ; $7588: $2a
	ld b, a                                          ; $7589: $47
	ld h, a                                          ; $758a: $67
	dec sp                                           ; $758b: $3b
	ccf                                              ; $758c: $3f
	ld l, h                                          ; $758d: $6c
	ld c, [hl]                                       ; $758e: $4e
	inc a                                            ; $758f: $3c

jr_098_7590:
	and e                                            ; $7590: $a3
	ld d, $a8                                        ; $7591: $16 $a8
	db $eb                                           ; $7593: $eb
	ld h, c                                          ; $7594: $61
	inc [hl]                                         ; $7595: $34
	db $eb                                           ; $7596: $eb
	ld e, [hl]                                       ; $7597: $5e
	and b                                            ; $7598: $a0
	cpl                                              ; $7599: $2f

jr_098_759a:
	ld b, e                                          ; $759a: $43
	ld c, c                                          ; $759b: $49
	ld d, h                                          ; $759c: $54
	ld e, a                                          ; $759d: $5f
	ld c, d                                          ; $759e: $4a
	inc [hl]                                         ; $759f: $34

jr_098_75a0:
	db $ec                                           ; $75a0: $ec
	and $a8                                          ; $75a1: $e6 $a8
	db $eb                                           ; $75a3: $eb
	ld [hl], b                                       ; $75a4: $70
	and c                                            ; $75a5: $a1
	xor $1f                                          ; $75a6: $ee $1f
	inc [hl]                                         ; $75a8: $34
	ldh a, [$ea]                                     ; $75a9: $f0 $ea
	ld b, l                                          ; $75ab: $45
	and b                                            ; $75ac: $a0
	cpl                                              ; $75ad: $2f
	ld b, e                                          ; $75ae: $43
	or h                                             ; $75af: $b4
	xor h                                            ; $75b0: $ac
	ldh a, [$0a]                                     ; $75b1: $f0 $0a
	pop af                                           ; $75b3: $f1
	jr jr_098_75a0                                   ; $75b4: $18 $ea

	inc a                                            ; $75b6: $3c
	inc a                                            ; $75b7: $3c
	and b                                            ; $75b8: $a0
	xor $1f                                          ; $75b9: $ee $1f
	xor b                                            ; $75bb: $a8
	call c, $eaa0                                    ; $75bc: $dc $a0 $ea
	ld c, h                                          ; $75bf: $4c
	ld b, d                                          ; $75c0: $42
	and c                                            ; $75c1: $a1
	cpl                                              ; $75c2: $2f
	ld b, e                                          ; $75c3: $43
	ld [$a8d1], a                                    ; $75c4: $ea $d1 $a8
	db $ec                                           ; $75c7: $ec
	and $4b                                          ; $75c8: $e6 $4b
	and c                                            ; $75ca: $a1
	ld h, e                                          ; $75cb: $63
	inc [hl]                                         ; $75cc: $34
	ld l, a                                          ; $75cd: $6f
	ld c, e                                          ; $75ce: $4b
	xor l                                            ; $75cf: $ad
	ld b, [hl]                                       ; $75d0: $46
	dec sp                                           ; $75d1: $3b
	inc [hl]                                         ; $75d2: $34
	ld h, h                                          ; $75d3: $64
	ld l, h                                          ; $75d4: $6c
	ld d, l                                          ; $75d5: $55
	ld e, e                                          ; $75d6: $5b
	ldh a, [$d8]                                     ; $75d7: $f0 $d8
	ld d, h                                          ; $75d9: $54
	add hl, sp                                       ; $75da: $39
	ld b, l                                          ; $75db: $45
	and b                                            ; $75dc: $a0
	cpl                                              ; $75dd: $2f
	ld b, e                                          ; $75de: $43
	rst JumpTable                                          ; $75df: $c7
	ld b, h                                          ; $75e0: $44
	ld c, h                                          ; $75e1: $4c
	xor b                                            ; $75e2: $a8
	pop af                                           ; $75e3: $f1
	ld e, a                                          ; $75e4: $5f
	ld e, h                                          ; $75e5: $5c
	ld b, a                                          ; $75e6: $47
	ld h, a                                          ; $75e7: $67
	ld d, h                                          ; $75e8: $54
	add hl, sp                                       ; $75e9: $39
	and b                                            ; $75ea: $a0
	ld l, a                                          ; $75eb: $6f
	ld c, e                                          ; $75ec: $4b
	inc [hl]                                         ; $75ed: $34
	ld d, h                                          ; $75ee: $54
	ld b, d                                          ; $75ef: $42
	pop af                                           ; $75f0: $f1
	ld l, c                                          ; $75f1: $69
	ldh a, [hDisp1_OBP0]                                     ; $75f2: $f0 $93
	ld d, e                                          ; $75f4: $53
	inc de                                           ; $75f5: $13
	jr c, jr_098_7578                                ; $75f6: $38 $80

	ld d, d                                          ; $75f8: $52
	ld c, d                                          ; $75f9: $4a
	ld c, a                                          ; $75fa: $4f
	pop af                                           ; $75fb: $f1
	ld h, c                                          ; $75fc: $61
	ld d, l                                          ; $75fd: $55
	ld b, l                                          ; $75fe: $45
	add hl, sp                                       ; $75ff: $39
	ld b, a                                          ; $7600: $47
	dec sp                                           ; $7601: $3b
	ccf                                              ; $7602: $3f
	ld c, b                                          ; $7603: $48
	and b                                            ; $7604: $a0
	cpl                                              ; $7605: $2f
	ld b, e                                          ; $7606: $43
	ld d, c                                          ; $7607: $51
	inc [hl]                                         ; $7608: $34
	ld d, c                                          ; $7609: $51
	ld [hl], b                                       ; $760a: $70
	jr c, jr_098_7590                                ; $760b: $38 $83

jr_098_760d:
	ldh a, [$c2]                                     ; $760d: $f0 $c2
	ld e, c                                          ; $760f: $59
	ldh a, [$03]                                     ; $7610: $f0 $03
	ld b, d                                          ; $7612: $42
	inc de                                           ; $7613: $13
	add a                                            ; $7614: $87
	ld e, h                                          ; $7615: $5c
	jr c, jr_098_767c                                ; $7616: $38 $64

	ldh a, [$c8]                                     ; $7618: $f0 $c8
	jr c, jr_098_7660                                ; $761a: $38 $44

	ld c, h                                          ; $761c: $4c
	xor b                                            ; $761d: $a8
	jp hl                                            ; $761e: $e9


	jr c, jr_098_760d                                ; $761f: $38 $ec

	ld l, a                                          ; $7621: $6f
	and c                                            ; $7622: $a1
	xor $1f                                          ; $7623: $ee $1f
	inc [hl]                                         ; $7625: $34
	ret nc                                           ; $7626: $d0

	and b                                            ; $7627: $a0
	cpl                                              ; $7628: $2f
	ld b, e                                          ; $7629: $43
	rst JumpTable                                          ; $762a: $c7
	xor b                                            ; $762b: $a8
	jp hl                                            ; $762c: $e9


	jr c, jr_098_7642                                ; $762d: $38 $13

	db $ec                                           ; $762f: $ec
	ld l, a                                          ; $7630: $6f
	and c                                            ; $7631: $a1
	ret nc                                           ; $7632: $d0

	and b                                            ; $7633: $a0
	ld e, [hl]                                       ; $7634: $5e
	dec sp                                           ; $7635: $3b
	ld c, b                                          ; $7636: $48
	ld h, e                                          ; $7637: $63
	inc [hl]                                         ; $7638: $34
	ld l, a                                          ; $7639: $6f
	ld c, e                                          ; $763a: $4b
	xor l                                            ; $763b: $ad
	pop af                                           ; $763c: $f1
	dec d                                            ; $763d: $15
	ld c, l                                          ; $763e: $4d
	ld h, c                                          ; $763f: $61
	ld d, [hl]                                       ; $7640: $56
	dec sp                                           ; $7641: $3b

jr_098_7642:
	dec a                                            ; $7642: $3d
	ld c, b                                          ; $7643: $48
	and b                                            ; $7644: $a0
	rst JumpTable                                          ; $7645: $c7
	ld c, h                                          ; $7646: $4c
	and b                                            ; $7647: $a0
	ld l, a                                          ; $7648: $6f
	ld c, e                                          ; $7649: $4b
	xor h                                            ; $764a: $ac
	ld c, a                                          ; $764b: $4f
	dec sp                                           ; $764c: $3b
	ld c, c                                          ; $764d: $49
	ldh a, [$7f]                                     ; $764e: $f0 $7f
	ld h, d                                          ; $7650: $62
	db $ec                                           ; $7651: $ec
	rst FarCall                                          ; $7652: $f7
	dec sp                                           ; $7653: $3b
	ccf                                              ; $7654: $3f
	ld c, h                                          ; $7655: $4c
	and b                                            ; $7656: $a0
	ldh a, [$32]                                     ; $7657: $f0 $32
	ldh a, [$7e]                                     ; $7659: $f0 $7e
	ld a, [hl-]                                      ; $765b: $3a
	pop af                                           ; $765c: $f1
	ld a, [bc]                                       ; $765d: $0a
	pop af                                           ; $765e: $f1
	inc h                                            ; $765f: $24

jr_098_7660:
	ld h, d                                          ; $7660: $62
	inc de                                           ; $7661: $13
	ld a, [hl-]                                      ; $7662: $3a
	ld h, h                                          ; $7663: $64
	ld a, $3f                                        ; $7664: $3e $3f
	ld d, l                                          ; $7666: $55
	ld b, h                                          ; $7667: $44
	ld e, b                                          ; $7668: $58
	jr c, jr_098_76b3                                ; $7669: $38 $48

	inc h                                            ; $766b: $24
	dec sp                                           ; $766c: $3b
	ccf                                              ; $766d: $3f
	ld c, h                                          ; $766e: $4c
	and b                                            ; $766f: $a0
	db $eb                                           ; $7670: $eb
	ld d, b                                          ; $7671: $50
	and c                                            ; $7672: $a1
	cpl                                              ; $7673: $2f
	ld b, e                                          ; $7674: $43
	jp hl                                            ; $7675: $e9


	jp z, $eea0                                      ; $7676: $ca $a0 $ee

	db $10                                           ; $7679: $10
	and b                                            ; $767a: $a0
	cpl                                              ; $767b: $2f

jr_098_767c:
	ld b, e                                          ; $767c: $43
	db $eb                                           ; $767d: $eb
	rst FarCall                                          ; $767e: $f7
	xor c                                            ; $767f: $a9
	db $ec                                           ; $7680: $ec
	and $4b                                          ; $7681: $e6 $4b
	inc [hl]                                         ; $7683: $34
	ld c, a                                          ; $7684: $4f
	ld a, $3c                                        ; $7685: $3e $3c
	ld a, $3f                                        ; $7687: $3e $3f
	di                                               ; $7689: $f3
	ld [hl], $a1                                     ; $768a: $36 $a1
	ld b, h                                          ; $768c: $44
	ld c, c                                          ; $768d: $49
	inc [hl]                                         ; $768e: $34
	jr c, jr_098_76c9                                ; $768f: $38 $38

	ld b, c                                          ; $7691: $41
	ld b, h                                          ; $7692: $44
	ld e, l                                          ; $7693: $5d
	ld e, d                                          ; $7694: $5a
	ld c, h                                          ; $7695: $4c
	add l                                            ; $7696: $85
	and b                                            ; $7697: $a0
	cpl                                              ; $7698: $2f
	ld b, e                                          ; $7699: $43
	ld e, [hl]                                       ; $769a: $5e
	ld c, b                                          ; $769b: $48
	inc [hl]                                         ; $769c: $34
	ld c, a                                          ; $769d: $4f
	inc [hl]                                         ; $769e: $34
	ld c, a                                          ; $769f: $4f
	ld a, $3c                                        ; $76a0: $3e $3c
	ld a, $3f                                        ; $76a2: $3e $3f
	ld c, b                                          ; $76a4: $48
	and b                                            ; $76a5: $a0
	ld l, d                                          ; $76a6: $6a
	ldh a, [rAUD1HIGH]                               ; $76a7: $f0 $14
	ld c, a                                          ; $76a9: $4f
	inc de                                           ; $76aa: $13
	pop af                                           ; $76ab: $f1
	ld h, e                                          ; $76ac: $63
	ld d, e                                          ; $76ad: $53
	ldh a, [$5c]                                     ; $76ae: $f0 $5c
	call c, $a048                                    ; $76b0: $dc $48 $a0

jr_098_76b3:
	cpl                                              ; $76b3: $2f
	ld b, e                                          ; $76b4: $43
	ld b, b                                          ; $76b5: $40
	inc [hl]                                         ; $76b6: $34
	ld b, b                                          ; $76b7: $40
	ld b, c                                          ; $76b8: $41
	ld a, [hl-]                                      ; $76b9: $3a
	ld d, h                                          ; $76ba: $54
	ld c, c                                          ; $76bb: $49
	ld a, [hl-]                                      ; $76bc: $3a
	jr c, jr_098_7704                                ; $76bd: $38 $45

	xor b                                            ; $76bf: $a8
	ld d, h                                          ; $76c0: $54
	ld d, h                                          ; $76c1: $54
	ld c, d                                          ; $76c2: $4a
	ldh a, [$5c]                                     ; $76c3: $f0 $5c
	pop af                                           ; $76c5: $f1
	ld h, e                                          ; $76c6: $63
	ld h, d                                          ; $76c7: $62
	inc de                                           ; $76c8: $13

jr_098_76c9:
	pop af                                           ; $76c9: $f1
	sbc l                                            ; $76ca: $9d
	jr c, @-$0d                                      ; $76cb: $38 $f1

	inc d                                            ; $76cd: $14
	dec sp                                           ; $76ce: $3b
	dec a                                            ; $76cf: $3d
	ld b, c                                          ; $76d0: $41
	ld b, h                                          ; $76d1: $44
	ld b, l                                          ; $76d2: $45
	xor b                                            ; $76d3: $a8
	ldh a, [$d7]                                     ; $76d4: $f0 $d7
	ld c, e                                          ; $76d6: $4b
	ldh a, [$3e]                                     ; $76d7: $f0 $3e
	ldh a, [c]                                       ; $76d9: $f2
	sbc d                                            ; $76da: $9a
	ld b, [hl]                                       ; $76db: $46
	ld c, [hl]                                       ; $76dc: $4e
	ld b, d                                          ; $76dd: $42
	ld l, h                                          ; $76de: $6c
	and d                                            ; $76df: $a2
	ld [$a1af], a                                    ; $76e0: $ea $af $a1
	cpl                                              ; $76e3: $2f
	ld b, e                                          ; $76e4: $43
	xor $1f                                          ; $76e5: $ee $1f
	inc [hl]                                         ; $76e7: $34
	xor $1f                                          ; $76e8: $ee $1f
	and b                                            ; $76ea: $a0
	xor $1f                                          ; $76eb: $ee $1f
	ld c, b                                          ; $76ed: $48
	ld e, h                                          ; $76ee: $5c
	dec sp                                           ; $76ef: $3b
	ld c, c                                          ; $76f0: $49
	call c, $f1a0                                    ; $76f1: $dc $a0 $f1
	db $fc                                           ; $76f4: $fc
	ldh a, [rOCPS]                                   ; $76f5: $f0 $6a
	ld c, h                                          ; $76f7: $4c
	xor b                                            ; $76f8: $a8
	ld a, [hl]                                       ; $76f9: $7e
	ld d, l                                          ; $76fa: $55
	ld c, a                                          ; $76fb: $4f
	ldh a, [$5c]                                     ; $76fc: $f0 $5c
	ld d, l                                          ; $76fe: $55
	ld c, a                                          ; $76ff: $4f
	ld a, [hl-]                                      ; $7700: $3a
	ld a, $3b                                        ; $7701: $3e $3b
	ccf                                              ; $7703: $3f

jr_098_7704:
	ld c, c                                          ; $7704: $49
	ld d, h                                          ; $7705: $54
	ld c, h                                          ; $7706: $4c
	and b                                            ; $7707: $a0
	cpl                                              ; $7708: $2f
	ld b, e                                          ; $7709: $43
	db $ec                                           ; $770a: $ec
	and $42                                          ; $770b: $e6 $42
	ld c, e                                          ; $770d: $4b
	xor h                                            ; $770e: $ac
	db $eb                                           ; $770f: $eb
	ld d, b                                          ; $7710: $50
	ld b, d                                          ; $7711: $42
	xor c                                            ; $7712: $a9
	ld [hl], d                                       ; $7713: $72
	ld a, c                                          ; $7714: $79
	ccf                                              ; $7715: $3f
	ld b, l                                          ; $7716: $45
	and b                                            ; $7717: $a0
	ld e, [hl]                                       ; $7718: $5e
	ld [hl], $63                                     ; $7719: $36 $63
	inc [hl]                                         ; $771b: $34
	ld l, a                                          ; $771c: $6f
	ld c, e                                          ; $771d: $4b
	ld c, b                                          ; $771e: $48
	ld [hl+], a                                      ; $771f: $22
	xor $2d                                          ; $7720: $ee $2d
	ld c, b                                          ; $7722: $48
	and b                                            ; $7723: $a0
	cpl                                              ; $7724: $2f
	ld b, e                                          ; $7725: $43
	ld c, b                                          ; $7726: $48
	dec [hl]                                         ; $7727: $35
	ld [hl-], a                                      ; $7728: $32
	ld b, h                                          ; $7729: $44
	inc [hl]                                         ; $772a: $34
	db $ed                                           ; $772b: $ed
	rst SubAFromDE                                          ; $772c: $df
	ld c, b                                          ; $772d: $48
	inc sp                                           ; $772e: $33
	inc de                                           ; $772f: $13
	inc hl                                           ; $7730: $23
	pop af                                           ; $7731: $f1
	rra                                              ; $7732: $1f
	ld a, a                                          ; $7733: $7f
	sub h                                            ; $7734: $94
	ld a, $3f                                        ; $7735: $3e $3f
	ld c, h                                          ; $7737: $4c
	ld c, b                                          ; $7738: $48
	and b                                            ; $7739: $a0
	ld d, d                                          ; $773a: $52
	inc [hl]                                         ; $773b: $34
	pop af                                           ; $773c: $f1
	ld h, e                                          ; $773d: $63
	ld d, e                                          ; $773e: $53
	ldh a, [$5c]                                     ; $773f: $f0 $5c
	jr c, jr_098_7785                                ; $7741: $38 $42

	ld c, e                                          ; $7743: $4b
	xor h                                            ; $7744: $ac
	ld l, d                                          ; $7745: $6a
	ld b, a                                          ; $7746: $47
	ldh a, [$bb]                                     ; $7747: $f0 $bb
	ld d, d                                          ; $7749: $52
	dec sp                                           ; $774a: $3b
	dec a                                            ; $774b: $3d
	sbc d                                            ; $774c: $9a
	db $ec                                           ; $774d: $ec
	ret c                                            ; $774e: $d8

	inc a                                            ; $774f: $3c
	ld d, b                                          ; $7750: $50
	xor e                                            ; $7751: $ab
	pop af                                           ; $7752: $f1
	sbc e                                            ; $7753: $9b
	ld c, l                                          ; $7754: $4d
	ccf                                              ; $7755: $3f
	ld c, [hl]                                       ; $7756: $4e
	ld e, l                                          ; $7757: $5d
	ld e, d                                          ; $7758: $5a
	ld c, h                                          ; $7759: $4c
	and b                                            ; $775a: $a0
	cpl                                              ; $775b: $2f
	ld b, e                                          ; $775c: $43
	rst JumpTable                                          ; $775d: $c7
	ld a, [hl-]                                      ; $775e: $3a
	ld b, d                                          ; $775f: $42
	and c                                            ; $7760: $a1
	add hl, sp                                       ; $7761: $39
	inc [hl]                                         ; $7762: $34
	di                                               ; $7763: $f3
	ld l, e                                          ; $7764: $6b
	jr c, jr_098_77a1                                ; $7765: $38 $3a

	ld b, c                                          ; $7767: $41
	inc a                                            ; $7768: $3c
	ld b, a                                          ; $7769: $47
	xor e                                            ; $776a: $ab
	inc hl                                           ; $776b: $23
	ld l, a                                          ; $776c: $6f
	ld c, e                                          ; $776d: $4b
	ld [hl], c                                       ; $776e: $71
	ldh a, [rSB]                                     ; $776f: $f0 $01
	ld a, [hl-]                                      ; $7771: $3a
	jr c, jr_098_77d7                                ; $7772: $38 $63

	ld b, l                                          ; $7774: $45
	and d                                            ; $7775: $a2
	cpl                                              ; $7776: $2f
	ld b, e                                          ; $7777: $43
	rst JumpTable                                          ; $7778: $c7
	ld b, b                                          ; $7779: $40
	add hl, sp                                       ; $777a: $39
	xor b                                            ; $777b: $a8
	ld b, b                                          ; $777c: $40
	ld c, l                                          ; $777d: $4d
	ld c, d                                          ; $777e: $4a
	ld d, h                                          ; $777f: $54
	ld b, b                                          ; $7780: $40
	inc [hl]                                         ; $7781: $34
	db $ec                                           ; $7782: $ec
	and $44                                          ; $7783: $e6 $44

jr_098_7785:
	ld b, l                                          ; $7785: $45
	and b                                            ; $7786: $a0
	cpl                                              ; $7787: $2f
	ld b, e                                          ; $7788: $43
	ld a, [hl-]                                      ; $7789: $3a
	inc [hl]                                         ; $778a: $34
	ld l, e                                          ; $778b: $6b
	pop af                                           ; $778c: $f1
	ld [hl-], a                                      ; $778d: $32
	dec sp                                           ; $778e: $3b
	ccf                                              ; $778f: $3f
	ld c, [hl]                                       ; $7790: $4e
	ld b, d                                          ; $7791: $42
	ld c, b                                          ; $7792: $48
	and b                                            ; $7793: $a0
	ld d, l                                          ; $7794: $55
	inc [hl]                                         ; $7795: $34
	ld d, l                                          ; $7796: $55
	ld l, [hl]                                       ; $7797: $6e
	ld a, $59                                        ; $7798: $3e $59
	and b                                            ; $779a: $a0
	cpl                                              ; $779b: $2f
	ld b, e                                          ; $779c: $43
	ld c, b                                          ; $779d: $48
	dec sp                                           ; $779e: $3b
	ccf                                              ; $779f: $3f
	xor h                                            ; $77a0: $ac

jr_098_77a1:
	db $ec                                           ; $77a1: $ec
	and $48                                          ; $77a2: $e6 $48
	ld c, a                                          ; $77a4: $4f
	ld a, $3c                                        ; $77a5: $3e $3c
	ld a, $3f                                        ; $77a7: $3e $3f
	ld c, b                                          ; $77a9: $48
	and b                                            ; $77aa: $a0
	xor $2d                                          ; $77ab: $ee $2d
	and b                                            ; $77ad: $a0
	cpl                                              ; $77ae: $2f
	ld b, e                                          ; $77af: $43
	ldh a, [rSB]                                     ; $77b0: $f0 $01
	dec sp                                           ; $77b2: $3b
	scf                                              ; $77b3: $37
	ld [hl-], a                                      ; $77b4: $32
	db $ed                                           ; $77b5: $ed
	rst SubAFromDE                                          ; $77b6: $df
	ld c, b                                          ; $77b7: $48
	inc sp                                           ; $77b8: $33
	add hl, bc                                       ; $77b9: $09
	ldh a, [c]                                       ; $77ba: $f2
	ld bc, $3e39                                     ; $77bb: $01 $39 $3e
	inc a                                            ; $77be: $3c
	ld a, [hl-]                                      ; $77bf: $3a
	jr c, jr_098_77fd                                ; $77c0: $38 $3b

	ccf                                              ; $77c2: $3f
	ldh a, [$78]                                     ; $77c3: $f0 $78
	ld e, e                                          ; $77c5: $5b
	xor b                                            ; $77c6: $a8
	ld l, d                                          ; $77c7: $6a
	ld d, d                                          ; $77c8: $52
	ld c, d                                          ; $77c9: $4a
	inc [hl]                                         ; $77ca: $34
	ld d, h                                          ; $77cb: $54
	ld c, l                                          ; $77cc: $4d
	pop af                                           ; $77cd: $f1
	ld c, e                                          ; $77ce: $4b
	ldh a, [$f0]                                     ; $77cf: $f0 $f0
	ld b, d                                          ; $77d1: $42

jr_098_77d2:
	ld d, l                                          ; $77d2: $55
	ld e, e                                          ; $77d3: $5b
	inc de                                           ; $77d4: $13
	ldh a, [$d8]                                     ; $77d5: $f0 $d8

jr_098_77d7:
	jr c, jr_098_7816                                ; $77d7: $38 $3d

	ld d, h                                          ; $77d9: $54
	ld c, c                                          ; $77da: $49
	ld a, [hl-]                                      ; $77db: $3a
	jr c, jr_098_782d                                ; $77dc: $38 $4f

	ld b, c                                          ; $77de: $41
	and b                                            ; $77df: $a0
	cpl                                              ; $77e0: $2f
	ld b, e                                          ; $77e1: $43
	ld b, b                                          ; $77e2: $40
	inc [hl]                                         ; $77e3: $34
	ld b, b                                          ; $77e4: $40
	ld c, l                                          ; $77e5: $4d
	ld c, e                                          ; $77e6: $4b
	ld b, b                                          ; $77e7: $40
	ld c, l                                          ; $77e8: $4d
	ld c, d                                          ; $77e9: $4a
	inc de                                           ; $77ea: $13

jr_098_77eb:
	ld d, c                                          ; $77eb: $51
	ld [hl], b                                       ; $77ec: $70
	jr c, jr_098_77eb                                ; $77ed: $38 $fc

	inc sp                                           ; $77ef: $33
	ldh a, [hDisp0_LCDC]                                     ; $77f0: $f0 $82
	ld b, h                                          ; $77f2: $44
	ld c, c                                          ; $77f3: $49
	ld [hl], a                                       ; $77f4: $77
	add hl, sp                                       ; $77f5: $39
	sub a                                            ; $77f6: $97
	and b                                            ; $77f7: $a0
	ld c, d                                          ; $77f8: $4a
	ld a, $66                                        ; $77f9: $3e $66
	and c                                            ; $77fb: $a1
	cpl                                              ; $77fc: $2f

jr_098_77fd:
	ld b, e                                          ; $77fd: $43
	ld c, e                                          ; $77fe: $4b
	ld c, e                                          ; $77ff: $4b
	ld c, e                                          ; $7800: $4b
	ld c, b                                          ; $7801: $48
	and b                                            ; $7802: $a0
	ld b, [hl]                                       ; $7803: $46
	ld c, e                                          ; $7804: $4b
	ld c, e                                          ; $7805: $4b
	ld c, e                                          ; $7806: $4b
	ld c, e                                          ; $7807: $4b
	and b                                            ; $7808: $a0

jr_098_7809:
	cpl                                              ; $7809: $2f
	ld [hl-], a                                      ; $780a: $32
	ldh a, [$71]                                     ; $780b: $f0 $71
	ld e, a                                          ; $780d: $5f
	ld a, $55                                        ; $780e: $3e $55
	inc de                                           ; $7810: $13
	pop af                                           ; $7811: $f1
	ld h, e                                          ; $7812: $63
	ld b, d                                          ; $7813: $42
	ldh a, [$5c]                                     ; $7814: $f0 $5c

jr_098_7816:
	jr c, jr_098_7809                                ; $7816: $38 $f1

	ld b, [hl]                                       ; $7818: $46
	ld b, h                                          ; $7819: $44
	ld c, b                                          ; $781a: $48
	inc sp                                           ; $781b: $33
	add hl, bc                                       ; $781c: $09
	cpl                                              ; $781d: $2f
	ld b, e                                          ; $781e: $43
	ldh a, [$d8]                                     ; $781f: $f0 $d8
	inc [hl]                                         ; $7821: $34
	ldh a, [$d8]                                     ; $7822: $f0 $d8
	ld e, d                                          ; $7824: $5a
	jr c, jr_098_77d2                                ; $7825: $38 $ab

	ldh a, [c]                                       ; $7827: $f2
	ld bc, $3a39                                     ; $7828: $01 $39 $3a
	ld b, l                                          ; $782b: $45
	ld c, b                                          ; $782c: $48

jr_098_782d:
	and b                                            ; $782d: $a0
	xor $2d                                          ; $782e: $ee $2d
	xor b                                            ; $7830: $a8
	ld l, a                                          ; $7831: $6f
	ld b, d                                          ; $7832: $42
	and b                                            ; $7833: $a0
	cpl                                              ; $7834: $2f
	ld b, e                                          ; $7835: $43
	ld c, b                                          ; $7836: $48
	inc hl                                           ; $7837: $23
	db $ec                                           ; $7838: $ec
	and $4f                                          ; $7839: $e6 $4f
	inc de                                           ; $783b: $13
	db $ed                                           ; $783c: $ed
	rst SubAFromDE                                          ; $783d: $df
	db $ec                                           ; $783e: $ec
	ret c                                            ; $783f: $d8

	inc a                                            ; $7840: $3c
	and d                                            ; $7841: $a2
	db $d3                                           ; $7842: $d3
	ld c, b                                          ; $7843: $48
	inc [hl]                                         ; $7844: $34
	ld c, e                                          ; $7845: $4b
	ld b, [hl]                                       ; $7846: $46
	xor e                                            ; $7847: $ab
	pop af                                           ; $7848: $f1
	cp l                                             ; $7849: $bd
	ldh a, [rAUD1HIGH]                               ; $784a: $f0 $14
	ld b, d                                          ; $784c: $42
	sbc d                                            ; $784d: $9a
	ld a, [hl-]                                      ; $784e: $3a
	ld d, e                                          ; $784f: $53
	ld d, b                                          ; $7850: $50
	ld c, b                                          ; $7851: $48
	and b                                            ; $7852: $a0
	cpl                                              ; $7853: $2f
	ld b, e                                          ; $7854: $43
	ld d, d                                          ; $7855: $52
	inc [hl]                                         ; $7856: $34
	pop af                                           ; $7857: $f1
	cp l                                             ; $7858: $bd
	ldh a, [rAUD1HIGH]                               ; $7859: $f0 $14
	ld c, b                                          ; $785b: $48
	and b                                            ; $785c: $a0
	ld e, h                                          ; $785d: $5c
	dec sp                                           ; $785e: $3b
	ld c, c                                          ; $785f: $49
	ld d, h                                          ; $7860: $54
	ld d, h                                          ; $7861: $54
	ld b, d                                          ; $7862: $42
	ldh a, [$d4]                                     ; $7863: $f0 $d4
	pop af                                           ; $7865: $f1
	ld a, [hl+]                                      ; $7866: $2a
	ld c, e                                          ; $7867: $4b
	inc de                                           ; $7868: $13
	db $ed                                           ; $7869: $ed
	rst SubAFromDE                                          ; $786a: $df
	ld a, $3c                                        ; $786b: $3e $3c
	ldh a, [rAUD1LOW]                                ; $786d: $f0 $13
	jr c, jr_098_78b2                                ; $786f: $38 $41

	ld b, h                                          ; $7871: $44
	ld h, e                                          ; $7872: $63
	and b                                            ; $7873: $a0
	cpl                                              ; $7874: $2f
	ld b, e                                          ; $7875: $43
	rst JumpTable                                          ; $7876: $c7
	ld b, h                                          ; $7877: $44
	ld c, h                                          ; $7878: $4c
	xor b                                            ; $7879: $a8
	halt                                             ; $787a: $76
	ld c, a                                          ; $787b: $4f
	ld b, b                                          ; $787c: $40

jr_098_787d:
	add hl, sp                                       ; $787d: $39
	ld [hl], a                                       ; $787e: $77
	add hl, sp                                       ; $787f: $39
	ld b, l                                          ; $7880: $45
	and b                                            ; $7881: $a0
	ld e, e                                          ; $7882: $5b
	ld d, [hl]                                       ; $7883: $56
	inc [hl]                                         ; $7884: $34
	pop af                                           ; $7885: $f1
	ld h, e                                          ; $7886: $63
	ld b, d                                          ; $7887: $42
	ldh a, [$5c]                                     ; $7888: $f0 $5c
	jr c, jr_098_787d                                ; $788a: $38 $f1

	ld b, d                                          ; $788c: $42
	ldh a, [$cd]                                     ; $788d: $f0 $cd
	ldh a, [c]                                       ; $788f: $f2
	ld sp, $6a13                                     ; $7890: $31 $13 $6a
	ldh a, [rAUD1HIGH]                               ; $7893: $f0 $14
	ld c, a                                          ; $7895: $4f
	db $eb                                           ; $7896: $eb
	sub [hl]                                         ; $7897: $96
	and b                                            ; $7898: $a0
	cpl                                              ; $7899: $2f
	ld b, e                                          ; $789a: $43
	rst JumpTable                                          ; $789b: $c7
	ld b, h                                          ; $789c: $44
	ld c, h                                          ; $789d: $4c
	xor b                                            ; $789e: $a8
	ld [hl-], a                                      ; $789f: $32
	ld l, e                                          ; $78a0: $6b
	inc a                                            ; $78a1: $3c
	ldh a, [$64]                                     ; $78a2: $f0 $64
	ld b, h                                          ; $78a4: $44
	ld a, [hl-]                                      ; $78a5: $3a
	ld [hl], h                                       ; $78a6: $74
	inc sp                                           ; $78a7: $33
	add hl, bc                                       ; $78a8: $09
	ld l, d                                          ; $78a9: $6a
	ldh a, [rAUD1HIGH]                               ; $78aa: $f0 $14
	ld c, e                                          ; $78ac: $4b
	db $ed                                           ; $78ad: $ed
	ld a, c                                          ; $78ae: $79
	ld b, h                                          ; $78af: $44
	ld c, h                                          ; $78b0: $4c
	and b                                            ; $78b1: $a0

jr_098_78b2:
	cpl                                              ; $78b2: $2f
	ld b, e                                          ; $78b3: $43
	db $eb                                           ; $78b4: $eb
	adc h                                            ; $78b5: $8c
	xor h                                            ; $78b6: $ac
	jp hl                                            ; $78b7: $e9


	or [hl]                                          ; $78b8: $b6
	and b                                            ; $78b9: $a0
	db $ed                                           ; $78ba: $ed
	ld a, c                                          ; $78bb: $79
	ldh a, [$d7]                                     ; $78bc: $f0 $d7
	ld b, d                                          ; $78be: $42
	pop af                                           ; $78bf: $f1
	dec hl                                           ; $78c0: $2b
	pop af                                           ; $78c1: $f1
	db $ec                                           ; $78c2: $ec
	ld c, e                                          ; $78c3: $4b
	inc de                                           ; $78c4: $13
	ld e, d                                          ; $78c5: $5a
	add hl, sp                                       ; $78c6: $39
	ld d, c                                          ; $78c7: $51
	ld c, [hl]                                       ; $78c8: $4e
	ld b, d                                          ; $78c9: $42
	and c                                            ; $78ca: $a1
	cpl                                              ; $78cb: $2f
	ld b, e                                          ; $78cc: $43
	ld d, d                                          ; $78cd: $52
	ld b, h                                          ; $78ce: $44
	ld c, e                                          ; $78cf: $4b
	dec sp                                           ; $78d0: $3b
	ld e, h                                          ; $78d1: $5c
	ld d, a                                          ; $78d2: $57
	ld c, c                                          ; $78d3: $49
	inc de                                           ; $78d4: $13
	ldh a, [$ec]                                     ; $78d5: $f0 $ec
	ld [hl], c                                       ; $78d7: $71

jr_098_78d8:
	ccf                                              ; $78d8: $3f
	ld a, [hl-]                                      ; $78d9: $3a
	jr c, jr_098_7924                                ; $78da: $38 $48

	dec [hl]                                         ; $78dc: $35
	db $ec                                           ; $78dd: $ec
	and $4b                                          ; $78de: $e6 $4b
	and c                                            ; $78e0: $a1
	ldh a, [c]                                       ; $78e1: $f2
	jp nc, $adf2                                     ; $78e2: $d2 $f2 $ad

jr_098_78e5:
	adc c                                            ; $78e5: $89
	sbc a                                            ; $78e6: $9f
	ld b, a                                          ; $78e7: $47
	inc de                                           ; $78e8: $13
	db $eb                                           ; $78e9: $eb
	adc e                                            ; $78ea: $8b
	dec sp                                           ; $78eb: $3b
	ccf                                              ; $78ec: $3f
	ld c, b                                          ; $78ed: $48
	and b                                            ; $78ee: $a0
	cpl                                              ; $78ef: $2f
	ld b, e                                          ; $78f0: $43
	ldh a, [$5a]                                     ; $78f1: $f0 $5a
	add l                                            ; $78f3: $85
	inc [hl]                                         ; $78f4: $34
	ld d, c                                          ; $78f5: $51
	ld [hl], b                                       ; $78f6: $70
	jr c, jr_098_78e5                                ; $78f7: $38 $ec

	ret c                                            ; $78f9: $d8

	xor b                                            ; $78fa: $a8
	db $ec                                           ; $78fb: $ec
	and $3a                                          ; $78fc: $e6 $3a
	ld d, b                                          ; $78fe: $50
	inc de                                           ; $78ff: $13
	di                                               ; $7900: $f3
	dec h                                            ; $7901: $25
	ld d, d                                          ; $7902: $52
	dec sp                                           ; $7903: $3b
	ccf                                              ; $7904: $3f
	ld c, a                                          ; $7905: $4f
	db $ec                                           ; $7906: $ec
	ld a, [bc]                                       ; $7907: $0a
	and b                                            ; $7908: $a0
	db $ed                                           ; $7909: $ed
	ld b, c                                          ; $790a: $41
	ld b, a                                          ; $790b: $47
	xor c                                            ; $790c: $a9
	ld e, e                                          ; $790d: $5b
	ld d, [hl]                                       ; $790e: $56
	xor e                                            ; $790f: $ab
	sbc h                                            ; $7910: $9c
	dec sp                                           ; $7911: $3b
	ld c, c                                          ; $7912: $49
	di                                               ; $7913: $f3
	dec h                                            ; $7914: $25
	ld d, d                                          ; $7915: $52
	ld e, [hl]                                       ; $7916: $5e
	ccf                                              ; $7917: $3f
	jr c, jr_098_795f                                ; $7918: $38 $45

	add hl, sp                                       ; $791a: $39
	inc a                                            ; $791b: $3c
	ld a, [hl-]                                      ; $791c: $3a
	ld c, b                                          ; $791d: $48
	and b                                            ; $791e: $a0
	cpl                                              ; $791f: $2f
	ld b, e                                          ; $7920: $43
	ld e, [hl]                                       ; $7921: $5e
	dec sp                                           ; $7922: $3b
	inc [hl]                                         ; $7923: $34

jr_098_7924:
	ld l, e                                          ; $7924: $6b
	and c                                            ; $7925: $a1
	add hl, sp                                       ; $7926: $39
	xor $1f                                          ; $7927: $ee $1f
	inc [hl]                                         ; $7929: $34
	ld l, e                                          ; $792a: $6b
	ld c, d                                          ; $792b: $4a
	ld c, a                                          ; $792c: $4f
	ld a, [hl-]                                      ; $792d: $3a
	jr c, jr_098_78d8                                ; $792e: $38 $a8

	ld e, b                                          ; $7930: $58
	ld b, [hl]                                       ; $7931: $46
	inc [hl]                                         ; $7932: $34
	ld a, d                                          ; $7933: $7a
	ld e, a                                          ; $7934: $5f
	and b                                            ; $7935: $a0
	ld l, d                                          ; $7936: $6a
	ldh a, [rAUD1HIGH]                               ; $7937: $f0 $14
	ld c, e                                          ; $7939: $4b
	xor h                                            ; $793a: $ac
	jr c, jr_098_7975                                ; $793b: $38 $38

	ldh a, [rAUD1HIGH]                               ; $793d: $f0 $14
	ld b, a                                          ; $793f: $47
	ld a, [hl-]                                      ; $7940: $3a
	ld d, a                                          ; $7941: $57
	ld b, b                                          ; $7942: $40
	add hl, sp                                       ; $7943: $39
	xor l                                            ; $7944: $ad
	ldh a, [$5f]                                     ; $7945: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $7947: $f0 $94
	inc a                                            ; $7949: $3c
	ld d, b                                          ; $794a: $50
	ld a, [hl]                                       ; $794b: $7e
	jr c, @+$56                                      ; $794c: $38 $54

	ld c, c                                          ; $794e: $49
	ld b, [hl]                                       ; $794f: $46
	dec sp                                           ; $7950: $3b
	dec a                                            ; $7951: $3d
	inc a                                            ; $7952: $3c
	ld d, b                                          ; $7953: $50
	ld c, h                                          ; $7954: $4c
	and b                                            ; $7955: $a0
	cpl                                              ; $7956: $2f
	ld b, e                                          ; $7957: $43
	rst JumpTable                                          ; $7958: $c7
	xor c                                            ; $7959: $a9
	ld [hl-], a                                      ; $795a: $32
	ld h, h                                          ; $795b: $64
	ld l, h                                          ; $795c: $6c
	ld d, l                                          ; $795d: $55
	ld e, e                                          ; $795e: $5b

jr_098_795f:
	ld b, d                                          ; $795f: $42
	sbc d                                            ; $7960: $9a
	db $ec                                           ; $7961: $ec
	ret c                                            ; $7962: $d8

	ld b, l                                          ; $7963: $45
	ld a, [hl-]                                      ; $7964: $3a
	ld c, b                                          ; $7965: $48
	inc sp                                           ; $7966: $33
	add hl, bc                                       ; $7967: $09
	ld e, b                                          ; $7968: $58
	ld b, [hl]                                       ; $7969: $46
	inc [hl]                                         ; $796a: $34
	db $ec                                           ; $796b: $ec
	rrca                                             ; $796c: $0f
	and b                                            ; $796d: $a0
	cpl                                              ; $796e: $2f
	ld b, e                                          ; $796f: $43
	ld b, b                                          ; $7970: $40
	add hl, sp                                       ; $7971: $39
	ld b, h                                          ; $7972: $44
	ld c, h                                          ; $7973: $4c
	xor b                                            ; $7974: $a8

jr_098_7975:
	ld a, d                                          ; $7975: $7a
	ld e, a                                          ; $7976: $5f
	add hl, sp                                       ; $7977: $39
	and b                                            ; $7978: $a0
	ldh a, [rAUD1ENV]                                ; $7979: $f0 $12
	sbc a                                            ; $797b: $9f
	ldh a, [rTIMA]                                   ; $797c: $f0 $05
	pop af                                           ; $797e: $f1
	rrca                                             ; $797f: $0f
	ld c, a                                          ; $7980: $4f
	inc de                                           ; $7981: $13
	ldh a, [$8d]                                     ; $7982: $f0 $8d
	ld d, a                                          ; $7984: $57
	ldh a, [rHDMA4]                                  ; $7985: $f0 $54
	ld a, [hl-]                                      ; $7987: $3a
	jr c, jr_098_79ed                                ; $7988: $38 $63

	ld b, l                                          ; $798a: $45
	xor b                                            ; $798b: $a8
	pop af                                           ; $798c: $f1
	sub c                                            ; $798d: $91
	jr c, jr_098_79d2                                ; $798e: $38 $42

	ldh a, [rAUD1LOW]                                ; $7990: $f0 $13
	jr c, jr_098_79d9                                ; $7992: $38 $45

	add hl, sp                                       ; $7994: $39
	ld b, a                                          ; $7995: $47
	sub d                                            ; $7996: $92
	adc [hl]                                         ; $7997: $8e
	ld e, a                                          ; $7998: $5f
	add hl, sp                                       ; $7999: $39
	ld c, h                                          ; $799a: $4c
	and b                                            ; $799b: $a0
	ld l, d                                          ; $799c: $6a
	ldh a, [rAUD1HIGH]                               ; $799d: $f0 $14
	ld c, e                                          ; $799f: $4b

jr_098_79a0:
	xor h                                            ; $79a0: $ac
	jr c, jr_098_79db                                ; $79a1: $38 $38

	ldh a, [rAUD1HIGH]                               ; $79a3: $f0 $14
	ld b, a                                          ; $79a5: $47
	ld a, $45                                        ; $79a6: $3e $45
	add hl, sp                                       ; $79a8: $39
	ld c, h                                          ; $79a9: $4c
	and b                                            ; $79aa: $a0
	cpl                                              ; $79ab: $2f
	ld b, e                                          ; $79ac: $43
	ld b, b                                          ; $79ad: $40
	add hl, sp                                       ; $79ae: $39
	ld b, h                                          ; $79af: $44
	ld c, h                                          ; $79b0: $4c
	xor b                                            ; $79b1: $a8
	jp hl                                            ; $79b2: $e9


	ld [hl+], a                                      ; $79b3: $22
	inc a                                            ; $79b4: $3c
	and c                                            ; $79b5: $a1
	xor $1f                                          ; $79b6: $ee $1f
	and b                                            ; $79b8: $a0
	add hl, bc                                       ; $79b9: $09
	cpl                                              ; $79ba: $2f
	ld b, e                                          ; $79bb: $43
	add sp, $04                                      ; $79bc: $e8 $04
	ld d, e                                          ; $79be: $53
	ld h, h                                          ; $79bf: $64
	sbc [hl]                                         ; $79c0: $9e
	ld b, a                                          ; $79c1: $47
	inc de                                           ; $79c2: $13
	adc e                                            ; $79c3: $8b
	ldh a, [$c0]                                     ; $79c4: $f0 $c0
	ld h, d                                          ; $79c6: $62
	ldh a, [c]                                       ; $79c7: $f2
	add $79                                          ; $79c8: $c6 $79
	ccf                                              ; $79ca: $3f
	jr c, @+$50                                      ; $79cb: $38 $4e

	db $ed                                           ; $79cd: $ed
	ld b, e                                          ; $79ce: $43
	scf                                              ; $79cf: $37
	and c                                            ; $79d0: $a1
	cpl                                              ; $79d1: $2f

jr_098_79d2:
	ld b, e                                          ; $79d2: $43
	ld b, b                                          ; $79d3: $40
	inc [hl]                                         ; $79d4: $34
	ld b, b                                          ; $79d5: $40
	ld b, c                                          ; $79d6: $41
	ld a, [hl-]                                      ; $79d7: $3a
	pop af                                           ; $79d8: $f1

jr_098_79d9:
	or d                                             ; $79d9: $b2
	pop af                                           ; $79da: $f1

jr_098_79db:
	ld c, b                                          ; $79db: $48
	ld a, [hl-]                                      ; $79dc: $3a
	xor l                                            ; $79dd: $ad
	add sp, $04                                      ; $79de: $e8 $04
	ld c, e                                          ; $79e0: $4b
	halt                                             ; $79e1: $76
	ld b, a                                          ; $79e2: $47
	ld c, b                                          ; $79e3: $48
	and b                                            ; $79e4: $a0
	cpl                                              ; $79e5: $2f
	ld b, e                                          ; $79e6: $43
	db $dd                                           ; $79e7: $dd
	ld d, h                                          ; $79e8: $54
	add hl, sp                                       ; $79e9: $39
	ld a, [hl-]                                      ; $79ea: $3a
	dec sp                                           ; $79eb: $3b
	dec a                                            ; $79ec: $3d

jr_098_79ed:
	ld d, b                                          ; $79ed: $50
	xor h                                            ; $79ee: $ac
	add sp, $04                                      ; $79ef: $e8 $04
	ld b, a                                          ; $79f1: $47
	ldh a, [hDisp1_WX]                                     ; $79f2: $f0 $96
	ldh a, [c]                                       ; $79f4: $f2
	sbc l                                            ; $79f5: $9d
	ldh a, [$0c]                                     ; $79f6: $f0 $0c
	ld d, l                                          ; $79f8: $55
	ld a, $3c                                        ; $79f9: $3e $3c
	ld a, [hl-]                                      ; $79fb: $3a
	jr c, jr_098_79a0                                ; $79fc: $38 $a2

	cpl                                              ; $79fe: $2f
	ld b, e                                          ; $79ff: $43
	jr c, jr_098_7a3a                                ; $7a00: $38 $38

	ld a, [hl-]                                      ; $7a02: $3a
	scf                                              ; $7a03: $37
	and d                                            ; $7a04: $a2
	pop af                                           ; $7a05: $f1
	ld l, d                                          ; $7a06: $6a
	ldh a, [$be]                                     ; $7a07: $f0 $be
	ld c, c                                          ; $7a09: $49
	ld d, h                                          ; $7a0a: $54
	ld e, a                                          ; $7a0b: $5f
	ld b, h                                          ; $7a0c: $44
	and d                                            ; $7a0d: $a2
	cpl                                              ; $7a0e: $2f
	ld b, e                                          ; $7a0f: $43
	ldh a, [$d7]                                     ; $7a10: $f0 $d7
	pop af                                           ; $7a12: $f1
	sub c                                            ; $7a13: $91
	ld d, c                                          ; $7a14: $51
	ld c, [hl]                                       ; $7a15: $4e
	ld a, [hl-]                                      ; $7a16: $3a
	ld b, l                                          ; $7a17: $45
	dec [hl]                                         ; $7a18: $35
	rla                                              ; $7a19: $17
	ldh a, [$e4]                                     ; $7a1a: $f0 $e4
	ld e, l                                          ; $7a1c: $5d
	dec a                                            ; $7a1d: $3d
	ld d, b                                          ; $7a1e: $50
	ldh a, [$57]                                     ; $7a1f: $f0 $57
	ldh a, [hDisp1_WX]                                     ; $7a21: $f0 $96
	ld b, a                                          ; $7a23: $47
	xor h                                            ; $7a24: $ac
	pop af                                           ; $7a25: $f1
	ld de, $f162                                     ; $7a26: $11 $62 $f1
	ld e, a                                          ; $7a29: $5f
	jr c, jr_098_7a6b                                ; $7a2a: $38 $3f

	ld c, a                                          ; $7a2c: $4f
	ld d, b                                          ; $7a2d: $50
	add hl, sp                                       ; $7a2e: $39
	sub a                                            ; $7a2f: $97
	and b                                            ; $7a30: $a0
	jr c, jr_098_7aa1                                ; $7a31: $38 $6e

	inc [hl]                                         ; $7a33: $34
	ld l, [hl]                                       ; $7a34: $6e
	ld [hl], c                                       ; $7a35: $71
	ccf                                              ; $7a36: $3f
	ld h, h                                          ; $7a37: $64
	ld d, l                                          ; $7a38: $55

jr_098_7a39:
	ld b, l                                          ; $7a39: $45

jr_098_7a3a:
	and b                                            ; $7a3a: $a0
	cpl                                              ; $7a3b: $2f
	ld b, e                                          ; $7a3c: $43
	db $ed                                           ; $7a3d: $ed
	ld e, l                                          ; $7a3e: $5d
	ld b, a                                          ; $7a3f: $47
	ldh a, [$67]                                     ; $7a40: $f0 $67
	ldh a, [$9f]                                     ; $7a42: $f0 $9f
	ld d, e                                          ; $7a44: $53
	inc de                                           ; $7a45: $13
	ldh a, [rAUD1LOW]                                ; $7a46: $f0 $13
	jr c, jr_098_7a8f                                ; $7a48: $38 $45

	add hl, sp                                       ; $7a4a: $39
	ld b, h                                          ; $7a4b: $44
	ld a, [hl-]                                      ; $7a4c: $3a
	xor b                                            ; $7a4d: $a8
	ld d, d                                          ; $7a4e: $52
	dec a                                            ; $7a4f: $3d
	ld l, d                                          ; $7a50: $6a
	ldh a, [$0d]                                     ; $7a51: $f0 $0d
	ld b, a                                          ; $7a53: $47
	ld a, $3f                                        ; $7a54: $3e $3f
	ld l, [hl]                                       ; $7a56: $6e
	ld c, [hl]                                       ; $7a57: $4e
	and b                                            ; $7a58: $a0
	add sp, $04                                      ; $7a59: $e8 $04
	ld d, e                                          ; $7a5b: $53
	ld h, h                                          ; $7a5c: $64
	sbc [hl]                                         ; $7a5d: $9e
	ld b, a                                          ; $7a5e: $47
	inc de                                           ; $7a5f: $13
	adc e                                            ; $7a60: $8b
	ldh a, [$c0]                                     ; $7a61: $f0 $c0
	ld h, d                                          ; $7a63: $62
	ldh a, [c]                                       ; $7a64: $f2
	add $79                                          ; $7a65: $c6 $79
	ccf                                              ; $7a67: $3f
	jr c, jr_098_7ab8                                ; $7a68: $38 $4e

	db $ed                                           ; $7a6a: $ed

jr_098_7a6b:
	ld b, e                                          ; $7a6b: $43
	scf                                              ; $7a6c: $37
	and c                                            ; $7a6d: $a1
	ld b, b                                          ; $7a6e: $40
	inc [hl]                                         ; $7a6f: $34
	ld b, b                                          ; $7a70: $40
	ld b, c                                          ; $7a71: $41
	ld a, [hl-]                                      ; $7a72: $3a
	pop af                                           ; $7a73: $f1
	or d                                             ; $7a74: $b2
	pop af                                           ; $7a75: $f1
	ld c, b                                          ; $7a76: $48
	ld a, [hl-]                                      ; $7a77: $3a
	xor l                                            ; $7a78: $ad
	add sp, $04                                      ; $7a79: $e8 $04
	ld c, e                                          ; $7a7b: $4b
	halt                                             ; $7a7c: $76
	ld b, a                                          ; $7a7d: $47
	ld c, b                                          ; $7a7e: $48
	and b                                            ; $7a7f: $a0
	db $dd                                           ; $7a80: $dd
	ld d, h                                          ; $7a81: $54
	add hl, sp                                       ; $7a82: $39
	ld a, [hl-]                                      ; $7a83: $3a
	dec sp                                           ; $7a84: $3b
	dec a                                            ; $7a85: $3d
	ld d, b                                          ; $7a86: $50
	xor h                                            ; $7a87: $ac
	add sp, $04                                      ; $7a88: $e8 $04
	ld b, a                                          ; $7a8a: $47
	ldh a, [hDisp1_WX]                                     ; $7a8b: $f0 $96
	ldh a, [c]                                       ; $7a8d: $f2
	sbc l                                            ; $7a8e: $9d

jr_098_7a8f:
	ldh a, [$0c]                                     ; $7a8f: $f0 $0c
	ld d, l                                          ; $7a91: $55
	ld a, $3c                                        ; $7a92: $3e $3c

jr_098_7a94:
	ld a, [hl-]                                      ; $7a94: $3a
	jr c, jr_098_7a39                                ; $7a95: $38 $a2

	jr c, jr_098_7ad1                                ; $7a97: $38 $38

	ld a, [hl-]                                      ; $7a99: $3a
	and d                                            ; $7a9a: $a2
	cpl                                              ; $7a9b: $2f
	pop af                                           ; $7a9c: $f1
	ld l, d                                          ; $7a9d: $6a
	ldh a, [$be]                                     ; $7a9e: $f0 $be
	ld c, c                                          ; $7aa0: $49

jr_098_7aa1:
	ld d, h                                          ; $7aa1: $54
	ld e, a                                          ; $7aa2: $5f
	ld b, h                                          ; $7aa3: $44
	and d                                            ; $7aa4: $a2
	cpl                                              ; $7aa5: $2f
	ld b, e                                          ; $7aa6: $43
	pop af                                           ; $7aa7: $f1
	ld l, d                                          ; $7aa8: $6a
	ldh a, [$be]                                     ; $7aa9: $f0 $be
	ld c, c                                          ; $7aab: $49
	ld d, h                                          ; $7aac: $54
	ld e, a                                          ; $7aad: $5f
	ld b, h                                          ; $7aae: $44
	and d                                            ; $7aaf: $a2
	ldh a, [$d7]                                     ; $7ab0: $f0 $d7
	pop af                                           ; $7ab2: $f1
	sub c                                            ; $7ab3: $91
	ld d, c                                          ; $7ab4: $51
	ld c, [hl]                                       ; $7ab5: $4e
	ld a, [hl-]                                      ; $7ab6: $3a
	ld b, l                                          ; $7ab7: $45

jr_098_7ab8:
	dec [hl]                                         ; $7ab8: $35
	rla                                              ; $7ab9: $17
	ldh a, [$e4]                                     ; $7aba: $f0 $e4
	ld e, l                                          ; $7abc: $5d
	dec a                                            ; $7abd: $3d
	ld d, b                                          ; $7abe: $50
	ldh a, [$57]                                     ; $7abf: $f0 $57
	ldh a, [hDisp1_WX]                                     ; $7ac1: $f0 $96
	ld b, a                                          ; $7ac3: $47
	xor h                                            ; $7ac4: $ac
	pop af                                           ; $7ac5: $f1
	ld de, $f162                                     ; $7ac6: $11 $62 $f1
	ld e, a                                          ; $7ac9: $5f
	jr c, jr_098_7b0b                                ; $7aca: $38 $3f

	ld c, a                                          ; $7acc: $4f
	ld d, b                                          ; $7acd: $50
	add hl, sp                                       ; $7ace: $39
	sub a                                            ; $7acf: $97
	and b                                            ; $7ad0: $a0

jr_098_7ad1:
	cpl                                              ; $7ad1: $2f
	jr c, jr_098_7b42                                ; $7ad2: $38 $6e

	inc [hl]                                         ; $7ad4: $34
	ld l, [hl]                                       ; $7ad5: $6e
	ld [hl], c                                       ; $7ad6: $71
	ccf                                              ; $7ad7: $3f
	ld h, h                                          ; $7ad8: $64
	ld d, l                                          ; $7ad9: $55
	ld b, l                                          ; $7ada: $45
	add hl, bc                                       ; $7adb: $09
	cpl                                              ; $7adc: $2f
	ld b, e                                          ; $7add: $43
	jr c, jr_098_7b4e                                ; $7ade: $38 $6e

	inc [hl]                                         ; $7ae0: $34
	ld l, [hl]                                       ; $7ae1: $6e
	ld [hl], c                                       ; $7ae2: $71
	ccf                                              ; $7ae3: $3f
	ld h, h                                          ; $7ae4: $64
	ld d, l                                          ; $7ae5: $55
	ld b, l                                          ; $7ae6: $45
	and b                                            ; $7ae7: $a0
	db $ed                                           ; $7ae8: $ed
	ld e, l                                          ; $7ae9: $5d
	ld b, a                                          ; $7aea: $47
	ldh a, [$67]                                     ; $7aeb: $f0 $67
	ldh a, [$9f]                                     ; $7aed: $f0 $9f
	ld d, e                                          ; $7aef: $53
	inc de                                           ; $7af0: $13
	ldh a, [rAUD1LOW]                                ; $7af1: $f0 $13
	jr c, jr_098_7b3a                                ; $7af3: $38 $45

	add hl, sp                                       ; $7af5: $39
	ld b, h                                          ; $7af6: $44
	ld a, [hl-]                                      ; $7af7: $3a
	xor b                                            ; $7af8: $a8
	ld d, d                                          ; $7af9: $52
	dec a                                            ; $7afa: $3d
	ld l, d                                          ; $7afb: $6a
	ldh a, [$0d]                                     ; $7afc: $f0 $0d
	ld b, a                                          ; $7afe: $47
	ld a, $3f                                        ; $7aff: $3e $3f
	ld l, [hl]                                       ; $7b01: $6e
	ld c, [hl]                                       ; $7b02: $4e
	and b                                            ; $7b03: $a0
	db $eb                                           ; $7b04: $eb
	rst FarCall                                          ; $7b05: $f7
	and c                                            ; $7b06: $a1
	cpl                                              ; $7b07: $2f
	ld b, e                                          ; $7b08: $43
	db $ed                                           ; $7b09: $ed
	xor c                                            ; $7b0a: $a9

jr_098_7b0b:
	xor b                                            ; $7b0b: $a8
	ld [$a8a1], a                                    ; $7b0c: $ea $a1 $a8
	halt                                             ; $7b0f: $76
	ld c, c                                          ; $7b10: $49
	ld b, [hl]                                       ; $7b11: $46
	jr c, jr_098_7a94                                ; $7b12: $38 $80

	ld c, c                                          ; $7b14: $49
	xor h                                            ; $7b15: $ac
	jp hl                                            ; $7b16: $e9


	add a                                            ; $7b17: $87
	and c                                            ; $7b18: $a1
	ld e, [hl]                                       ; $7b19: $5e
	dec sp                                           ; $7b1a: $3b
	inc [hl]                                         ; $7b1b: $34
	ld b, b                                          ; $7b1c: $40
	ld b, c                                          ; $7b1d: $41
	ld a, [hl-]                                      ; $7b1e: $3a
	xor $10                                          ; $7b1f: $ee $10
	dec [hl]                                         ; $7b21: $35
	rla                                              ; $7b22: $17
	jp hl                                            ; $7b23: $e9


	adc b                                            ; $7b24: $88
	inc hl                                           ; $7b25: $23
	inc de                                           ; $7b26: $13
	pop af                                           ; $7b27: $f1
	sbc $3b                                          ; $7b28: $de $3b
	ld h, c                                          ; $7b2a: $61
	ld d, [hl]                                       ; $7b2b: $56
	add hl, sp                                       ; $7b2c: $39
	ld a, [hl-]                                      ; $7b2d: $3a
	xor $10                                          ; $7b2e: $ee $10
	dec [hl]                                         ; $7b30: $35
	ld [hl+], a                                      ; $7b31: $22
	inc de                                           ; $7b32: $13
	db $eb                                           ; $7b33: $eb
	db $f4                                           ; $7b34: $f4
	inc [hl]                                         ; $7b35: $34
	jp hl                                            ; $7b36: $e9


	adc c                                            ; $7b37: $89
	inc de                                           ; $7b38: $13
	db $eb                                           ; $7b39: $eb

jr_098_7b3a:
	push af                                          ; $7b3a: $f5
	and c                                            ; $7b3b: $a1
	cpl                                              ; $7b3c: $2f
	ld b, e                                          ; $7b3d: $43
	xor $1f                                          ; $7b3e: $ee $1f
	dec [hl]                                         ; $7b40: $35
	rla                                              ; $7b41: $17

jr_098_7b42:
	db $ed                                           ; $7b42: $ed
	xor c                                            ; $7b43: $a9
	ld [$1315], a                                    ; $7b44: $ea $15 $13
	db $ec                                           ; $7b47: $ec
	ld b, b                                          ; $7b48: $40
	ld d, l                                          ; $7b49: $55
	ld c, l                                          ; $7b4a: $4d
	and b                                            ; $7b4b: $a0
	db $ed                                           ; $7b4c: $ed
	ld c, a                                          ; $7b4d: $4f

jr_098_7b4e:
	ld a, [hl-]                                      ; $7b4e: $3a
	ld [hl], h                                       ; $7b4f: $74
	xor $10                                          ; $7b50: $ee $10
	ld h, b                                          ; $7b52: $60
	and b                                            ; $7b53: $a0
	db $ec                                           ; $7b54: $ec
	reti                                             ; $7b55: $d9


	inc [hl]                                         ; $7b56: $34
	ld b, [hl]                                       ; $7b57: $46
	ld a, [hl-]                                      ; $7b58: $3a
	dec a                                            ; $7b59: $3d
	inc a                                            ; $7b5a: $3c
	ld a, [hl-]                                      ; $7b5b: $3a
	and b                                            ; $7b5c: $a0
	cpl                                              ; $7b5d: $2f
	ld b, e                                          ; $7b5e: $43
	ld b, [hl]                                       ; $7b5f: $46
	ld d, a                                          ; $7b60: $57
	ld d, e                                          ; $7b61: $53
	ld c, c                                          ; $7b62: $49
	add hl, sp                                       ; $7b63: $39
	inc [hl]                                         ; $7b64: $34
	db $ed                                           ; $7b65: $ed
	xor c                                            ; $7b66: $a9
	xor b                                            ; $7b67: $a8
	ldh a, [$9f]                                     ; $7b68: $f0 $9f

jr_098_7b6a:
	ld e, e                                          ; $7b6a: $5b
	ccf                                              ; $7b6b: $3f
	jr c, @+$3f                                      ; $7b6c: $38 $3d

	ld b, l                                          ; $7b6e: $45
	and b                                            ; $7b6f: $a0
	db $eb                                           ; $7b70: $eb
	ccf                                              ; $7b71: $3f
	xor b                                            ; $7b72: $a8
	ld l, a                                          ; $7b73: $6f
	xor $10                                          ; $7b74: $ee $10
	db $ec                                           ; $7b76: $ec
	reti                                             ; $7b77: $d9


	xor $10                                          ; $7b78: $ee $10
	and b                                            ; $7b7a: $a0
	cpl                                              ; $7b7b: $2f
	ld b, e                                          ; $7b7c: $43
	ld b, b                                          ; $7b7d: $40
	add hl, sp                                       ; $7b7e: $39
	inc a                                            ; $7b7f: $3c
	xor $10                                          ; $7b80: $ee $10
	dec [hl]                                         ; $7b82: $35
	rla                                              ; $7b83: $17
	ld d, d                                          ; $7b84: $52
	ld b, h                                          ; $7b85: $44
	ld d, d                                          ; $7b86: $52
	ld b, h                                          ; $7b87: $44
	ldh a, [rRP]                                     ; $7b88: $f0 $56
	ld b, d                                          ; $7b8a: $42
	ldh a, [$63]                                     ; $7b8b: $f0 $63
	pop af                                           ; $7b8d: $f1
	ld c, h                                          ; $7b8e: $4c
	ld b, a                                          ; $7b8f: $47
	ld c, e                                          ; $7b90: $4b
	inc de                                           ; $7b91: $13
	pop af                                           ; $7b92: $f1
	ld b, $3c                                        ; $7b93: $06 $3c
	dec sp                                           ; $7b95: $3b
	dec a                                            ; $7b96: $3d
	ld b, d                                          ; $7b97: $42
	inc a                                            ; $7b98: $3c
	xor $10                                          ; $7b99: $ee $10
	and b                                            ; $7b9b: $a0
	db $eb                                           ; $7b9c: $eb
	or $13                                           ; $7b9d: $f6 $13
	ldh a, [$e4]                                     ; $7b9f: $f0 $e4
	ld e, l                                          ; $7ba1: $5d
	ld h, c                                          ; $7ba2: $61
	ld d, [hl]                                       ; $7ba3: $56
	dec sp                                           ; $7ba4: $3b
	dec a                                            ; $7ba5: $3d
	ld c, h                                          ; $7ba6: $4c
	xor b                                            ; $7ba7: $a8
	ld c, a                                          ; $7ba8: $4f
	add hl, sp                                       ; $7ba9: $39
	ldh a, [$a4]                                     ; $7baa: $f0 $a4
	ld e, [hl]                                       ; $7bac: $5e
	ld c, [hl]                                       ; $7bad: $4e
	ld b, d                                          ; $7bae: $42
	ld c, a                                          ; $7baf: $4f
	ldh a, [$f3]                                     ; $7bb0: $f0 $f3
	ld c, l                                          ; $7bb2: $4d
	dec a                                            ; $7bb3: $3d
	ld h, e                                          ; $7bb4: $63
	xor $10                                          ; $7bb5: $ee $10
	inc de                                           ; $7bb7: $13
	db $eb                                           ; $7bb8: $eb
	xor b                                            ; $7bb9: $a8
	and b                                            ; $7bba: $a0
	db $ec                                           ; $7bbb: $ec
	db $db                                           ; $7bbc: $db
	ldh a, [$57]                                     ; $7bbd: $f0 $57
	ldh a, [$ae]                                     ; $7bbf: $f0 $ae
	ld b, h                                          ; $7bc1: $44
	inc a                                            ; $7bc2: $3c
	ld d, b                                          ; $7bc3: $50
	ld h, b                                          ; $7bc4: $60
	inc de                                           ; $7bc5: $13
	ldh a, [$ec]                                     ; $7bc6: $f0 $ec
	ld [hl], c                                       ; $7bc8: $71
	ld d, b                                          ; $7bc9: $50
	ld c, l                                          ; $7bca: $4d
	ld a, [hl-]                                      ; $7bcb: $3a
	jr c, jr_098_7c31                                ; $7bcc: $38 $63

	and b                                            ; $7bce: $a0
	cpl                                              ; $7bcf: $2f
	ld b, e                                          ; $7bd0: $43
	db $ec                                           ; $7bd1: $ec
	jp c, $e913                                      ; $7bd2: $da $13 $e9

	adc d                                            ; $7bd5: $8a
	and b                                            ; $7bd6: $a0
	db $eb                                           ; $7bd7: $eb
	rst FarCall                                          ; $7bd8: $f7
	ld c, d                                          ; $7bd9: $4a
	ld d, c                                          ; $7bda: $51
	inc a                                            ; $7bdb: $3c
	and c                                            ; $7bdc: $a1
	cpl                                              ; $7bdd: $2f
	ld b, e                                          ; $7bde: $43
	db $ed                                           ; $7bdf: $ed
	add e                                            ; $7be0: $83
	xor b                                            ; $7be1: $a8
	ld [$a8a1], a                                    ; $7be2: $ea $a1 $a8
	halt                                             ; $7be5: $76
	ld c, c                                          ; $7be6: $49
	ld b, [hl]                                       ; $7be7: $46
	jr c, jr_098_7b6a                                ; $7be8: $38 $80

	ld c, c                                          ; $7bea: $49
	xor h                                            ; $7beb: $ac
	jp hl                                            ; $7bec: $e9


	add a                                            ; $7bed: $87
	and c                                            ; $7bee: $a1
	ld e, [hl]                                       ; $7bef: $5e
	dec sp                                           ; $7bf0: $3b
	inc [hl]                                         ; $7bf1: $34
	ld b, b                                          ; $7bf2: $40
	ld b, c                                          ; $7bf3: $41
	ld a, [hl-]                                      ; $7bf4: $3a
	ld d, h                                          ; $7bf5: $54
	ld c, c                                          ; $7bf6: $49
	xor $10                                          ; $7bf7: $ee $10
	xor b                                            ; $7bf9: $a8
	di                                               ; $7bfa: $f3
	inc bc                                           ; $7bfb: $03
	ld e, [hl]                                       ; $7bfc: $5e
	ld d, b                                          ; $7bfd: $50
	ld c, l                                          ; $7bfe: $4d
	ld d, d                                          ; $7bff: $52
	ld a, c                                          ; $7c00: $79
	ld b, c                                          ; $7c01: $41
	xor $10                                          ; $7c02: $ee $10
	dec [hl]                                         ; $7c04: $35
	ld [hl+], a                                      ; $7c05: $22
	inc de                                           ; $7c06: $13
	db $eb                                           ; $7c07: $eb
	db $f4                                           ; $7c08: $f4
	inc [hl]                                         ; $7c09: $34
	jp hl                                            ; $7c0a: $e9


	adc c                                            ; $7c0b: $89
	xor $10                                          ; $7c0c: $ee $10
	inc de                                           ; $7c0e: $13
	jr c, jr_098_7c6e                                ; $7c0f: $38 $5d

	ld d, d                                          ; $7c11: $52
	ld a, c                                          ; $7c12: $79
	ld b, c                                          ; $7c13: $41
	inc a                                            ; $7c14: $3c
	and c                                            ; $7c15: $a1
	cpl                                              ; $7c16: $2f
	ld b, e                                          ; $7c17: $43
	xor $1f                                          ; $7c18: $ee $1f
	dec [hl]                                         ; $7c1a: $35
	rla                                              ; $7c1b: $17
	db $ed                                           ; $7c1c: $ed
	add e                                            ; $7c1d: $83
	ld [$1315], a                                    ; $7c1e: $ea $15 $13
	db $ec                                           ; $7c21: $ec
	ld b, b                                          ; $7c22: $40
	ld d, l                                          ; $7c23: $55
	ld c, l                                          ; $7c24: $4d
	ld c, [hl]                                       ; $7c25: $4e
	ld b, h                                          ; $7c26: $44
	ld e, l                                          ; $7c27: $5d
	ld c, d                                          ; $7c28: $4a
	jr c, jr_098_7c63                                ; $7c29: $38 $38

	ld b, l                                          ; $7c2b: $45
	and b                                            ; $7c2c: $a0
	cp [hl]                                          ; $7c2d: $be
	xor $10                                          ; $7c2e: $ee $10
	ld h, b                                          ; $7c30: $60

jr_098_7c31:
	and b                                            ; $7c31: $a0
	ld l, a                                          ; $7c32: $6f
	ld c, e                                          ; $7c33: $4b
	ld b, [hl]                                       ; $7c34: $46
	ld a, [hl-]                                      ; $7c35: $3a
	dec a                                            ; $7c36: $3d
	ld c, c                                          ; $7c37: $49
	inc de                                           ; $7c38: $13

jr_098_7c39:
	sbc h                                            ; $7c39: $9c
	dec sp                                           ; $7c3a: $3b
	ld c, c                                          ; $7c3b: $49
	xor $10                                          ; $7c3c: $ee $10
	and b                                            ; $7c3e: $a0
	cpl                                              ; $7c3f: $2f
	ld b, e                                          ; $7c40: $43
	ld b, [hl]                                       ; $7c41: $46
	ld d, a                                          ; $7c42: $57
	ld d, e                                          ; $7c43: $53
	ld c, c                                          ; $7c44: $49
	add hl, sp                                       ; $7c45: $39
	inc [hl]                                         ; $7c46: $34
	db $ed                                           ; $7c47: $ed
	add e                                            ; $7c48: $83
	xor b                                            ; $7c49: $a8
	ldh a, [$9f]                                     ; $7c4a: $f0 $9f
	ld e, e                                          ; $7c4c: $5b
	ccf                                              ; $7c4d: $3f
	jr c, jr_098_7c8d                                ; $7c4e: $38 $3d

	ld b, l                                          ; $7c50: $45
	and b                                            ; $7c51: $a0
	db $eb                                           ; $7c52: $eb
	ccf                                              ; $7c53: $3f
	xor b                                            ; $7c54: $a8
	ld l, a                                          ; $7c55: $6f
	xor $10                                          ; $7c56: $ee $10
	and b                                            ; $7c58: $a0
	cpl                                              ; $7c59: $2f
	ld b, e                                          ; $7c5a: $43
	ld b, b                                          ; $7c5b: $40
	ld d, h                                          ; $7c5c: $54
	inc a                                            ; $7c5d: $3c
	ld d, b                                          ; $7c5e: $50
	ldh a, [$bc]                                     ; $7c5f: $f0 $bc
	ld c, e                                          ; $7c61: $4b
	inc de                                           ; $7c62: $13

jr_098_7c63:
	add d                                            ; $7c63: $82
	ld h, e                                          ; $7c64: $63
	ld a, [hl-]                                      ; $7c65: $3a
	ld d, l                                          ; $7c66: $55
	ccf                                              ; $7c67: $3f
	jr c, jr_098_7ca2                                ; $7c68: $38 $38

	ld b, l                                          ; $7c6a: $45
	xor $10                                          ; $7c6b: $ee $10
	and b                                            ; $7c6d: $a0

jr_098_7c6e:
	db $eb                                           ; $7c6e: $eb
	or $13                                           ; $7c6f: $f6 $13
	ldh a, [$e4]                                     ; $7c71: $f0 $e4
	ld e, l                                          ; $7c73: $5d
	ccf                                              ; $7c74: $3f
	ld [$4cb4], a                                    ; $7c75: $ea $b4 $4c
	xor b                                            ; $7c78: $a8
	ld d, h                                          ; $7c79: $54
	ld c, l                                          ; $7c7a: $4d
	pop af                                           ; $7c7b: $f1
	ld c, e                                          ; $7c7c: $4b
	ldh a, [$3e]                                     ; $7c7d: $f0 $3e
	ldh a, [$a4]                                     ; $7c7f: $f0 $a4
	ld e, [hl]                                       ; $7c81: $5e
	ld c, [hl]                                       ; $7c82: $4e
	ld b, d                                          ; $7c83: $42
	ld c, e                                          ; $7c84: $4b
	di                                               ; $7c85: $f3
	inc e                                            ; $7c86: $1c
	jr c, jr_098_7cd3                                ; $7c87: $38 $4a

	ld d, c                                          ; $7c89: $51
	xor $10                                          ; $7c8a: $ee $10
	xor b                                            ; $7c8c: $a8

jr_098_7c8d:
	db $eb                                           ; $7c8d: $eb
	xor b                                            ; $7c8e: $a8
	and b                                            ; $7c8f: $a0
	ld d, c                                          ; $7c90: $51
	jr c, jr_098_7ce5                                ; $7c91: $38 $52

	ld a, c                                          ; $7c93: $79
	ld b, c                                          ; $7c94: $41
	xor $10                                          ; $7c95: $ee $10
	xor b                                            ; $7c97: $a8
	db $ec                                           ; $7c98: $ec
	reti                                             ; $7c99: $d9


	inc [hl]                                         ; $7c9a: $34
	ldh a, [$ec]                                     ; $7c9b: $f0 $ec
	ld [hl], c                                       ; $7c9d: $71
	ld d, b                                          ; $7c9e: $50
	ld c, l                                          ; $7c9f: $4d
	ld d, d                                          ; $7ca0: $52
	ld a, c                                          ; $7ca1: $79

jr_098_7ca2:
	ld b, c                                          ; $7ca2: $41
	xor $10                                          ; $7ca3: $ee $10
	and b                                            ; $7ca5: $a0
	db $eb                                           ; $7ca6: $eb
	rst FarCall                                          ; $7ca7: $f7
	inc a                                            ; $7ca8: $3c
	ld a, $50                                        ; $7ca9: $3e $50
	and c                                            ; $7cab: $a1
	cpl                                              ; $7cac: $2f
	ld b, e                                          ; $7cad: $43
	db $ed                                           ; $7cae: $ed
	or e                                             ; $7caf: $b3
	xor b                                            ; $7cb0: $a8
	ld [$a8a1], a                                    ; $7cb1: $ea $a1 $a8
	halt                                             ; $7cb4: $76
	ld c, c                                          ; $7cb5: $49
	ld b, [hl]                                       ; $7cb6: $46
	jr c, jr_098_7c39                                ; $7cb7: $38 $80

	ld c, c                                          ; $7cb9: $49
	xor h                                            ; $7cba: $ac
	jp hl                                            ; $7cbb: $e9


	add a                                            ; $7cbc: $87
	and c                                            ; $7cbd: $a1
	ld b, b                                          ; $7cbe: $40
	ld b, c                                          ; $7cbf: $41
	ld a, [hl-]                                      ; $7cc0: $3a
	ld d, h                                          ; $7cc1: $54
	ld c, c                                          ; $7cc2: $49
	ld h, d                                          ; $7cc3: $62
	ldh a, [$0c]                                     ; $7cc4: $f0 $0c
	jr c, jr_098_7d07                                ; $7cc6: $38 $3f

	inc de                                           ; $7cc8: $13
	ld a, [hl-]                                      ; $7cc9: $3a
	ld b, c                                          ; $7cca: $41
	ld b, a                                          ; $7ccb: $47
	ld a, [hl-]                                      ; $7ccc: $3a
	ld c, [hl]                                       ; $7ccd: $4e
	ld b, d                                          ; $7cce: $42
	xor c                                            ; $7ccf: $a9
	ld e, d                                          ; $7cd0: $5a
	add hl, sp                                       ; $7cd1: $39
	ld a, [hl-]                                      ; $7cd2: $3a

jr_098_7cd3:
	dec sp                                           ; $7cd3: $3b
	ccf                                              ; $7cd4: $3f
	ld c, a                                          ; $7cd5: $4f
	jr c, jr_098_7d10                                ; $7cd6: $38 $38

	ld b, d                                          ; $7cd8: $42
	ld a, [hl-]                                      ; $7cd9: $3a
	ld d, b                                          ; $7cda: $50
	xor h                                            ; $7cdb: $ac
	db $ec                                           ; $7cdc: $ec
	db $ed                                           ; $7cdd: $ed
	ld b, [hl]                                       ; $7cde: $46
	ldh a, [rSB]                                     ; $7cdf: $f0 $01
	ccf                                              ; $7ce1: $3f
	ld c, a                                          ; $7ce2: $4f
	jr c, jr_098_7d1d                                ; $7ce3: $38 $38

jr_098_7ce5:
	ld h, e                                          ; $7ce5: $63
	and b                                            ; $7ce6: $a0
	cpl                                              ; $7ce7: $2f
	ld b, e                                          ; $7ce8: $43
	xor $1f                                          ; $7ce9: $ee $1f
	dec [hl]                                         ; $7ceb: $35
	rla                                              ; $7cec: $17
	db $ed                                           ; $7ced: $ed
	or e                                             ; $7cee: $b3
	ld [$1315], a                                    ; $7cef: $ea $15 $13
	db $ec                                           ; $7cf2: $ec
	ld b, b                                          ; $7cf3: $40
	ld d, l                                          ; $7cf4: $55
	ld c, l                                          ; $7cf5: $4d
	and b                                            ; $7cf6: $a0
	call c, $10ee                                    ; $7cf7: $dc $ee $10
	and b                                            ; $7cfa: $a0
	ld l, [hl]                                       ; $7cfb: $6e
	ld c, e                                          ; $7cfc: $4b
	ld d, a                                          ; $7cfd: $57
	xor h                                            ; $7cfe: $ac
	ld l, a                                          ; $7cff: $6f
	ld h, d                                          ; $7d00: $62
	ldh a, [$63]                                     ; $7d01: $f0 $63
	pop af                                           ; $7d03: $f1
	dec sp                                           ; $7d04: $3b
	ld a, $3f                                        ; $7d05: $3e $3f

jr_098_7d07:
	ld d, l                                          ; $7d07: $55
	ld c, l                                          ; $7d08: $4d
	ld c, [hl]                                       ; $7d09: $4e
	ld b, d                                          ; $7d0a: $42
	ld c, e                                          ; $7d0b: $4b
	xor h                                            ; $7d0c: $ac
	ld b, [hl]                                       ; $7d0d: $46
	ld a, [hl-]                                      ; $7d0e: $3a
	dec a                                            ; $7d0f: $3d

jr_098_7d10:
	ld b, h                                          ; $7d10: $44
	ld e, l                                          ; $7d11: $5d
	ld b, d                                          ; $7d12: $42
	ld b, l                                          ; $7d13: $45
	add hl, sp                                       ; $7d14: $39
	ld c, h                                          ; $7d15: $4c
	and b                                            ; $7d16: $a0
	cpl                                              ; $7d17: $2f
	ld b, e                                          ; $7d18: $43
	sub c                                            ; $7d19: $91
	ldh a, [$59]                                     ; $7d1a: $f0 $59
	ld b, h                                          ; $7d1c: $44

jr_098_7d1d:
	ld b, l                                          ; $7d1d: $45
	inc [hl]                                         ; $7d1e: $34
	db $ed                                           ; $7d1f: $ed
	or e                                             ; $7d20: $b3
	xor b                                            ; $7d21: $a8
	ldh a, [$9f]                                     ; $7d22: $f0 $9f
	ld e, e                                          ; $7d24: $5b
	ccf                                              ; $7d25: $3f
	jr c, jr_098_7d65                                ; $7d26: $38 $3d

	ld b, l                                          ; $7d28: $45
	and b                                            ; $7d29: $a0
	ld l, [hl]                                       ; $7d2a: $6e
	ld c, e                                          ; $7d2b: $4b
	ld d, a                                          ; $7d2c: $57
	xor h                                            ; $7d2d: $ac
	ld b, [hl]                                       ; $7d2e: $46
	ld a, [hl-]                                      ; $7d2f: $3a
	dec a                                            ; $7d30: $3d
	ld c, e                                          ; $7d31: $4b
	ld l, a                                          ; $7d32: $6f
	ld b, d                                          ; $7d33: $42
	db $ed                                           ; $7d34: $ed
	ld d, h                                          ; $7d35: $54
	ld b, a                                          ; $7d36: $47
	inc de                                           ; $7d37: $13
	ld a, [hl-]                                      ; $7d38: $3a
	dec sp                                           ; $7d39: $3b
	ccf                                              ; $7d3a: $3f
	ld c, a                                          ; $7d3b: $4f
	ld d, b                                          ; $7d3c: $50
	add hl, sp                                       ; $7d3d: $39
	ld a, $3c                                        ; $7d3e: $3e $3c
	db $ec                                           ; $7d40: $ec
	dec bc                                           ; $7d41: $0b
	and b                                            ; $7d42: $a0
	cpl                                              ; $7d43: $2f

jr_098_7d44:
	ld b, e                                          ; $7d44: $43
	ld b, b                                          ; $7d45: $40
	add hl, sp                                       ; $7d46: $39
	inc a                                            ; $7d47: $3c
	xor $10                                          ; $7d48: $ee $10
	xor b                                            ; $7d4a: $a8
	ld c, d                                          ; $7d4b: $4a
	ld c, a                                          ; $7d4c: $4f
	inc [hl]                                         ; $7d4d: $34
	ldh a, [rRP]                                     ; $7d4e: $f0 $56
	ld b, d                                          ; $7d50: $42
	ldh a, [c]                                       ; $7d51: $f2
	reti                                             ; $7d52: $d9


	ld b, a                                          ; $7d53: $47
	ldh a, [$d9]                                     ; $7d54: $f0 $d9
	ccf                                              ; $7d56: $3f
	ld c, [hl]                                       ; $7d57: $4e
	ld a, [hl-]                                      ; $7d58: $3a
	ld d, b                                          ; $7d59: $50
	xor $10                                          ; $7d5a: $ee $10
	and b                                            ; $7d5c: $a0
	db $eb                                           ; $7d5d: $eb
	or $13                                           ; $7d5e: $f6 $13
	db $eb                                           ; $7d60: $eb
	ld b, b                                          ; $7d61: $40
	xor $10                                          ; $7d62: $ee $10
	xor b                                            ; $7d64: $a8

jr_098_7d65:
	ld b, [hl]                                       ; $7d65: $46
	ld a, [hl-]                                      ; $7d66: $3a
	dec a                                            ; $7d67: $3d
	ld c, e                                          ; $7d68: $4b
	db $ed                                           ; $7d69: $ed
	ld d, h                                          ; $7d6a: $54
	ld b, a                                          ; $7d6b: $47
	ld c, a                                          ; $7d6c: $4f
	ld a, [hl-]                                      ; $7d6d: $3a
	ld d, b                                          ; $7d6e: $50
	ld a, [hl-]                                      ; $7d6f: $3a
	jr c, jr_098_7dd5                                ; $7d70: $38 $63

	xor b                                            ; $7d72: $a8
	db $eb                                           ; $7d73: $eb
	xor b                                            ; $7d74: $a8
	and b                                            ; $7d75: $a0
	cpl                                              ; $7d76: $2f
	ld b, e                                          ; $7d77: $43
	ld h, h                                          ; $7d78: $64
	inc [hl]                                         ; $7d79: $34
	halt                                             ; $7d7a: $76
	ld c, e                                          ; $7d7b: $4b
	xor h                                            ; $7d7c: $ac
	pop af                                           ; $7d7d: $f1
	dec b                                            ; $7d7e: $05
	ldh a, [$03]                                     ; $7d7f: $f0 $03
	pop af                                           ; $7d81: $f1
	dec b                                            ; $7d82: $05
	ld [hl], e                                       ; $7d83: $73
	ld l, c                                          ; $7d84: $69
	pop af                                           ; $7d85: $f1
	ld c, e                                          ; $7d86: $4b
	ldh a, [$a3]                                     ; $7d87: $f0 $a3
	ld a, [hl-]                                      ; $7d89: $3a
	ld b, d                                          ; $7d8a: $42
	inc a                                            ; $7d8b: $3c
	xor $10                                          ; $7d8c: $ee $10
	and b                                            ; $7d8e: $a0
	ld e, d                                          ; $7d8f: $5a
	ld h, c                                          ; $7d90: $61
	ld d, b                                          ; $7d91: $50
	ld c, a                                          ; $7d92: $4f
	inc de                                           ; $7d93: $13
	ldh a, [rPCM12]                                  ; $7d94: $f0 $76
	dec a                                            ; $7d96: $3d
	ld d, a                                          ; $7d97: $57
	ldh a, [c]                                       ; $7d98: $f2
	add $3b                                          ; $7d99: $c6 $3b
	dec a                                            ; $7d9b: $3d
	ld d, a                                          ; $7d9c: $57
	ld c, h                                          ; $7d9d: $4c
	xor b                                            ; $7d9e: $a8
	db $ec                                           ; $7d9f: $ec
	db $db                                           ; $7da0: $db
	db $ed                                           ; $7da1: $ed
	ld d, h                                          ; $7da2: $54
	ld b, a                                          ; $7da3: $47
	inc de                                           ; $7da4: $13
	ld a, [hl-]                                      ; $7da5: $3a
	dec sp                                           ; $7da6: $3b
	ccf                                              ; $7da7: $3f
	ld c, a                                          ; $7da8: $4f
	ld d, b                                          ; $7da9: $50
	ld h, h                                          ; $7daa: $64
	add hl, sp                                       ; $7dab: $39
	inc a                                            ; $7dac: $3c
	ld a, $50                                        ; $7dad: $3e $50
	and b                                            ; $7daf: $a0
	db $ec                                           ; $7db0: $ec
	call c, $1337                                    ; $7db1: $dc $37 $13
	db $eb                                           ; $7db4: $eb
	rst FarCall                                          ; $7db5: $f7
	and c                                            ; $7db6: $a1
	cpl                                              ; $7db7: $2f
	ld b, e                                          ; $7db8: $43
	db $ed                                           ; $7db9: $ed
	cp [hl]                                          ; $7dba: $be
	xor b                                            ; $7dbb: $a8
	ld [$a8a1], a                                    ; $7dbc: $ea $a1 $a8
	halt                                             ; $7dbf: $76
	ld c, c                                          ; $7dc0: $49
	ld b, [hl]                                       ; $7dc1: $46
	jr c, jr_098_7d44                                ; $7dc2: $38 $80

	ld c, c                                          ; $7dc4: $49
	xor h                                            ; $7dc5: $ac
	jp hl                                            ; $7dc6: $e9


	add a                                            ; $7dc7: $87
	and c                                            ; $7dc8: $a1
	jp hl                                            ; $7dc9: $e9


	db $e4                                           ; $7dca: $e4
	scf                                              ; $7dcb: $37
	inc de                                           ; $7dcc: $13
	ld a, [hl-]                                      ; $7dcd: $3a
	inc [hl]                                         ; $7dce: $34
	ld l, e                                          ; $7dcf: $6b
	ccf                                              ; $7dd0: $3f
	ld d, h                                          ; $7dd1: $54
	ld c, c                                          ; $7dd2: $49
	ldh a, [$0c]                                     ; $7dd3: $f0 $0c

jr_098_7dd5:
	ld d, l                                          ; $7dd5: $55
	ld b, d                                          ; $7dd6: $42
	ld b, l                                          ; $7dd7: $45
	dec [hl]                                         ; $7dd8: $35
	ld [hl+], a                                      ; $7dd9: $22
	inc de                                           ; $7dda: $13
	db $eb                                           ; $7ddb: $eb
	db $f4                                           ; $7ddc: $f4
	xor $10                                          ; $7ddd: $ee $10
	xor b                                            ; $7ddf: $a8
	jp hl                                            ; $7de0: $e9


	adc c                                            ; $7de1: $89
	db $eb                                           ; $7de2: $eb
	push af                                          ; $7de3: $f5
	and c                                            ; $7de4: $a1
	cpl                                              ; $7de5: $2f
	ld b, e                                          ; $7de6: $43
	xor $1f                                          ; $7de7: $ee $1f
	dec [hl]                                         ; $7de9: $35
	rla                                              ; $7dea: $17
	db $ed                                           ; $7deb: $ed
	cp [hl]                                          ; $7dec: $be
	ld [$1315], a                                    ; $7ded: $ea $15 $13
	db $ec                                           ; $7df0: $ec
	ld b, b                                          ; $7df1: $40
	ld d, l                                          ; $7df2: $55
	ld c, l                                          ; $7df3: $4d
	and b                                            ; $7df4: $a0
	ldh a, [hDisp0_WX]                                     ; $7df5: $f0 $89
	pop af                                           ; $7df7: $f1
	inc sp                                           ; $7df8: $33
	ld a, l                                          ; $7df9: $7d
	ld l, c                                          ; $7dfa: $69
	xor $10                                          ; $7dfb: $ee $10
	inc de                                           ; $7dfd: $13
	ret                                              ; $7dfe: $c9


	ldh a, [$a4]                                     ; $7dff: $f0 $a4
	ld e, [hl]                                       ; $7e01: $5e
	ld e, b                                          ; $7e02: $58
	ld a, c                                          ; $7e03: $79
	ccf                                              ; $7e04: $3f
	xor $10                                          ; $7e05: $ee $10
	and b                                            ; $7e07: $a0
	db $ed                                           ; $7e08: $ed
	ld a, l                                          ; $7e09: $7d
	pop af                                           ; $7e0a: $f1
	ld d, h                                          ; $7e0b: $54
	add e                                            ; $7e0c: $83
	di                                               ; $7e0d: $f3
	sub [hl]                                         ; $7e0e: $96
	ld e, c                                          ; $7e0f: $59
	xor b                                            ; $7e10: $a8
	db $ec                                           ; $7e11: $ec
	reti                                             ; $7e12: $d9


	inc [hl]                                         ; $7e13: $34
	ld b, [hl]                                       ; $7e14: $46
	ld a, [hl-]                                      ; $7e15: $3a
	dec a                                            ; $7e16: $3d
	ld b, h                                          ; $7e17: $44
	ld e, l                                          ; $7e18: $5d
	ld b, l                                          ; $7e19: $45
	and b                                            ; $7e1a: $a0
	cpl                                              ; $7e1b: $2f
	ld b, e                                          ; $7e1c: $43
	ld b, [hl]                                       ; $7e1d: $46
	ld d, a                                          ; $7e1e: $57
	ld d, e                                          ; $7e1f: $53
	ld c, c                                          ; $7e20: $49
	add hl, sp                                       ; $7e21: $39
	inc [hl]                                         ; $7e22: $34

jr_098_7e23:
	db $ed                                           ; $7e23: $ed
	cp [hl]                                          ; $7e24: $be
	xor b                                            ; $7e25: $a8
	ldh a, [$9f]                                     ; $7e26: $f0 $9f
	ld e, e                                          ; $7e28: $5b
	ccf                                              ; $7e29: $3f
	jr c, jr_098_7e69                                ; $7e2a: $38 $3d

	ld b, l                                          ; $7e2c: $45
	and b                                            ; $7e2d: $a0
	pop af                                           ; $7e2e: $f1
	daa                                              ; $7e2f: $27
	inc [hl]                                         ; $7e30: $34
	db $ec                                           ; $7e31: $ec
	cpl                                              ; $7e32: $2f
	xor $10                                          ; $7e33: $ee $10
	inc de                                           ; $7e35: $13
	ld [hl], b                                       ; $7e36: $70
	ld [hl], c                                       ; $7e37: $71
	ld b, c                                          ; $7e38: $41
	ld c, h                                          ; $7e39: $4c
	xor $10                                          ; $7e3a: $ee $10
	ld l, a                                          ; $7e3c: $6f
	xor $10                                          ; $7e3d: $ee $10
	and b                                            ; $7e3f: $a0
	cpl                                              ; $7e40: $2f
	ld b, e                                          ; $7e41: $43
	ldh a, [$c3]                                     ; $7e42: $f0 $c3
	ld e, c                                          ; $7e44: $59
	ldh a, [rAUD3LOW]                                ; $7e45: $f0 $1d
	ld a, l                                          ; $7e47: $7d
	ldh a, [$a6]                                     ; $7e48: $f0 $a6
	ld [hl], e                                       ; $7e4a: $73
	scf                                              ; $7e4b: $37
	inc de                                           ; $7e4c: $13
	ld b, b                                          ; $7e4d: $40
	add hl, sp                                       ; $7e4e: $39
	inc a                                            ; $7e4f: $3c
	xor $10                                          ; $7e50: $ee $10
	ldh a, [$57]                                     ; $7e52: $f0 $57
	ldh a, [hDisp1_WX]                                     ; $7e54: $f0 $96
	ld b, a                                          ; $7e56: $47
	pop af                                           ; $7e57: $f1
	ld de, $f162                                     ; $7e58: $11 $62 $f1
	ld e, a                                          ; $7e5b: $5f
	ld d, l                                          ; $7e5c: $55
	ld b, l                                          ; $7e5d: $45
	and b                                            ; $7e5e: $a0
	ldh a, [$c3]                                     ; $7e5f: $f0 $c3
	ld e, c                                          ; $7e61: $59
	ldh a, [rAUD3LOW]                                ; $7e62: $f0 $1d
	ld a, l                                          ; $7e64: $7d
	ldh a, [$a6]                                     ; $7e65: $f0 $a6
	ld [hl], e                                       ; $7e67: $73
	xor h                                            ; $7e68: $ac

jr_098_7e69:
	db $eb                                           ; $7e69: $eb
	or $eb                                           ; $7e6a: $f6 $eb
	ld b, b                                          ; $7e6c: $40
	xor b                                            ; $7e6d: $a8
	ld b, [hl]                                       ; $7e6e: $46
	ld a, [hl-]                                      ; $7e6f: $3a
	dec a                                            ; $7e70: $3d
	ld c, c                                          ; $7e71: $49
	ld c, e                                          ; $7e72: $4b
	ldh a, [$9a]                                     ; $7e73: $f0 $9a
	ld e, h                                          ; $7e75: $5c
	ldh a, [rTMA]                                    ; $7e76: $f0 $06
	jr c, @+$5e                                      ; $7e78: $38 $5c

	ld c, l                                          ; $7e7a: $4d
	ld a, [hl-]                                      ; $7e7b: $3a
	jr c, jr_098_7ee1                                ; $7e7c: $38 $63

	xor $10                                          ; $7e7e: $ee $10
	xor b                                            ; $7e80: $a8
	db $eb                                           ; $7e81: $eb
	xor b                                            ; $7e82: $a8
	and b                                            ; $7e83: $a0
	db $ed                                           ; $7e84: $ed
	sbc [hl]                                         ; $7e85: $9e
	xor b                                            ; $7e86: $a8
	ld d, h                                          ; $7e87: $54
	ld d, h                                          ; $7e88: $54
	ld c, d                                          ; $7e89: $4a
	ld c, e                                          ; $7e8a: $4b
	ldh a, [$ec]                                     ; $7e8b: $f0 $ec
	ld [hl], c                                       ; $7e8d: $71
	ld d, b                                          ; $7e8e: $50
	ld c, l                                          ; $7e8f: $4d
	ld a, [hl-]                                      ; $7e90: $3a
	jr c, jr_098_7ef6                                ; $7e91: $38 $63

	xor $10                                          ; $7e93: $ee $10
	and b                                            ; $7e95: $a0
	cpl                                              ; $7e96: $2f
	ld b, e                                          ; $7e97: $43
	xor $25                                          ; $7e98: $ee $25
	xor b                                            ; $7e9a: $a8
	ld [$a8a1], a                                    ; $7e9b: $ea $a1 $a8
	halt                                             ; $7e9e: $76
	ld c, c                                          ; $7e9f: $49
	ld b, [hl]                                       ; $7ea0: $46
	jr c, jr_098_7e23                                ; $7ea1: $38 $80

	ld c, c                                          ; $7ea3: $49
	xor h                                            ; $7ea4: $ac
	jp hl                                            ; $7ea5: $e9


	add a                                            ; $7ea6: $87
	and c                                            ; $7ea7: $a1
	db $eb                                           ; $7ea8: $eb
	db $f4                                           ; $7ea9: $f4
	xor h                                            ; $7eaa: $ac
	di                                               ; $7eab: $f3
	inc bc                                           ; $7eac: $03
	ld e, [hl]                                       ; $7ead: $5e
	ld a, [hl-]                                      ; $7eae: $3a
	jr c, jr_098_7efa                                ; $7eaf: $38 $49

	db $eb                                           ; $7eb1: $eb
	push af                                          ; $7eb2: $f5
	inc a                                            ; $7eb3: $3c
	ld a, $50                                        ; $7eb4: $3e $50
	and c                                            ; $7eb6: $a1
	cpl                                              ; $7eb7: $2f
	ld b, e                                          ; $7eb8: $43
	xor $1f                                          ; $7eb9: $ee $1f
	dec [hl]                                         ; $7ebb: $35
	rla                                              ; $7ebc: $17
	xor $25                                          ; $7ebd: $ee $25
	ld [$1315], a                                    ; $7ebf: $ea $15 $13
	db $ec                                           ; $7ec2: $ec
	ld b, b                                          ; $7ec3: $40
	ld d, l                                          ; $7ec4: $55
	ld c, l                                          ; $7ec5: $4d
	and b                                            ; $7ec6: $a0
	call c, $ee85                                    ; $7ec7: $dc $85 $ee
	db $10                                           ; $7eca: $10
	and b                                            ; $7ecb: $a0
	db $ec                                           ; $7ecc: $ec
	reti                                             ; $7ecd: $d9


	inc de                                           ; $7ece: $13
	ld l, a                                          ; $7ecf: $6f
	ld b, a                                          ; $7ed0: $47
	ldh a, [rSCY]                                    ; $7ed1: $f0 $42
	ld e, b                                          ; $7ed3: $58
	ld h, e                                          ; $7ed4: $63
	ld a, $38                                        ; $7ed5: $3e $38
	ld b, d                                          ; $7ed7: $42
	ld c, e                                          ; $7ed8: $4b
	xor h                                            ; $7ed9: $ac
	ld b, [hl]                                       ; $7eda: $46
	ld a, [hl-]                                      ; $7edb: $3a
	dec a                                            ; $7edc: $3d
	ld b, h                                          ; $7edd: $44
	ld e, l                                          ; $7ede: $5d
	ld c, h                                          ; $7edf: $4c
	and b                                            ; $7ee0: $a0

jr_098_7ee1:
	cpl                                              ; $7ee1: $2f
	ld b, e                                          ; $7ee2: $43
	ld b, [hl]                                       ; $7ee3: $46
	ld d, a                                          ; $7ee4: $57
	ld d, e                                          ; $7ee5: $53
	ld c, c                                          ; $7ee6: $49
	add hl, sp                                       ; $7ee7: $39
	inc [hl]                                         ; $7ee8: $34
	xor $25                                          ; $7ee9: $ee $25
	xor b                                            ; $7eeb: $a8
	ldh a, [$9f]                                     ; $7eec: $f0 $9f
	ld e, e                                          ; $7eee: $5b

jr_098_7eef:
	ccf                                              ; $7eef: $3f
	jr c, jr_098_7f2f                                ; $7ef0: $38 $3d

	ld b, l                                          ; $7ef2: $45
	and b                                            ; $7ef3: $a0
	ld b, [hl]                                       ; $7ef4: $46
	ld a, [hl-]                                      ; $7ef5: $3a

jr_098_7ef6:
	dec a                                            ; $7ef6: $3d
	ld c, e                                          ; $7ef7: $4b
	ld d, d                                          ; $7ef8: $52
	ld b, h                                          ; $7ef9: $44

jr_098_7efa:
	ld l, a                                          ; $7efa: $6f
	ld b, d                                          ; $7efb: $42
	ldh a, [$63]                                     ; $7efc: $f0 $63
	pop af                                           ; $7efe: $f1
	ld c, h                                          ; $7eff: $4c
	inc de                                           ; $7f00: $13
	ld b, a                                          ; $7f01: $47
	ld c, e                                          ; $7f02: $4b
	inc [hl]                                         ; $7f03: $34
	ldh a, [c]                                       ; $7f04: $f2
	db $fc                                           ; $7f05: $fc
	jr c, jr_098_7f47                                ; $7f06: $38 $3f

	jr c, @+$3c                                      ; $7f08: $38 $3a

	jr c, jr_098_7f51                                ; $7f0a: $38 $45

	add hl, sp                                       ; $7f0c: $39
	ld c, h                                          ; $7f0d: $4c
	and b                                            ; $7f0e: $a0
	cpl                                              ; $7f0f: $2f
	ld b, e                                          ; $7f10: $43
	ld b, b                                          ; $7f11: $40
	add hl, sp                                       ; $7f12: $39
	inc a                                            ; $7f13: $3c
	xor $10                                          ; $7f14: $ee $10
	inc [hl]                                         ; $7f16: $34
	ld c, a                                          ; $7f17: $4f
	dec sp                                           ; $7f18: $3b
	ld c, c                                          ; $7f19: $49
	ldh a, [$ab]                                     ; $7f1a: $f0 $ab
	ld h, d                                          ; $7f1c: $62
	inc de                                           ; $7f1d: $13
	db $f4                                           ; $7f1e: $f4
	db $ec                                           ; $7f1f: $ec
	inc a                                            ; $7f20: $3c
	ld a, [hl-]                                      ; $7f21: $3a
	jr c, jr_098_7f6d                                ; $7f22: $38 $49

	xor $05                                          ; $7f24: $ee $05
	ld a, [hl-]                                      ; $7f26: $3a
	ld b, d                                          ; $7f27: $42
	inc a                                            ; $7f28: $3c
	xor $10                                          ; $7f29: $ee $10
	and b                                            ; $7f2b: $a0
	db $eb                                           ; $7f2c: $eb
	or $13                                           ; $7f2d: $f6 $13

jr_098_7f2f:
	ldh a, [$e4]                                     ; $7f2f: $f0 $e4
	ld e, l                                          ; $7f31: $5d
	ldh [$a8], a                                     ; $7f32: $e0 $a8
	ld c, a                                          ; $7f34: $4f
	add hl, sp                                       ; $7f35: $39
	ld b, [hl]                                       ; $7f36: $46
	ld a, [hl-]                                      ; $7f37: $3a
	dec a                                            ; $7f38: $3d
	ld c, c                                          ; $7f39: $49
	ld c, e                                          ; $7f3a: $4b
	xor h                                            ; $7f3b: $ac
	ldh a, [$9a]                                     ; $7f3c: $f0 $9a
	ld e, h                                          ; $7f3e: $5c
	ldh a, [rTMA]                                    ; $7f3f: $f0 $06
	dec sp                                           ; $7f41: $3b
	ccf                                              ; $7f42: $3f
	jr c, jr_098_7f95                                ; $7f43: $38 $50

	ld c, l                                          ; $7f45: $4d
	ld a, [hl-]                                      ; $7f46: $3a

jr_098_7f47:
	jr c, jr_098_7fac                                ; $7f47: $38 $63

	xor b                                            ; $7f49: $a8
	db $eb                                           ; $7f4a: $eb
	xor b                                            ; $7f4b: $a8
	and b                                            ; $7f4c: $a0
	ld e, d                                          ; $7f4d: $5a
	ld h, c                                          ; $7f4e: $61
	ld d, b                                          ; $7f4f: $50
	ld c, a                                          ; $7f50: $4f

jr_098_7f51:
	inc de                                           ; $7f51: $13
	ldh a, [$5d]                                     ; $7f52: $f0 $5d
	ld h, e                                          ; $7f54: $63
	ld d, a                                          ; $7f55: $57
	ldh a, [$74]                                     ; $7f56: $f0 $74
	ld e, [hl]                                       ; $7f58: $5e
	ld a, $ec                                        ; $7f59: $3e $ec
	dec bc                                           ; $7f5b: $0b
	and b                                            ; $7f5c: $a0
	ld e, d                                          ; $7f5d: $5a
	ld a, $3d                                        ; $7f5e: $3e $3d
	ld b, d                                          ; $7f60: $42
	and c                                            ; $7f61: $a1
	cpl                                              ; $7f62: $2f
	ld b, e                                          ; $7f63: $43
	xor $26                                          ; $7f64: $ee $26
	xor b                                            ; $7f66: $a8
	ld [$a8a1], a                                    ; $7f67: $ea $a1 $a8
	halt                                             ; $7f6a: $76
	ld c, c                                          ; $7f6b: $49
	ld b, [hl]                                       ; $7f6c: $46

jr_098_7f6d:
	jr c, jr_098_7eef                                ; $7f6d: $38 $80

	ld c, c                                          ; $7f6f: $49
	xor h                                            ; $7f70: $ac
	jp hl                                            ; $7f71: $e9


	add a                                            ; $7f72: $87
	and c                                            ; $7f73: $a1
	ld e, [hl]                                       ; $7f74: $5e
	ld e, c                                          ; $7f75: $59
	dec sp                                           ; $7f76: $3b
	scf                                              ; $7f77: $37
	inc de                                           ; $7f78: $13
	ld e, d                                          ; $7f79: $5a
	dec sp                                           ; $7f7a: $3b
	ld h, c                                          ; $7f7b: $61
	ld c, d                                          ; $7f7c: $4a
	ld c, a                                          ; $7f7d: $4f
	jr c, jr_098_7fb8                                ; $7f7e: $38 $38

	ld e, e                                          ; $7f80: $5b
	ld d, [hl]                                       ; $7f81: $56
	ld b, c                                          ; $7f82: $41
	and b                                            ; $7f83: $a0
	cpl                                              ; $7f84: $2f
	ld b, e                                          ; $7f85: $43
	jr c, jr_098_7ff6                                ; $7f86: $38 $6e

	xor h                                            ; $7f88: $ac
	ld c, e                                          ; $7f89: $4b
	dec sp                                           ; $7f8a: $3b
	ld e, h                                          ; $7f8b: $5c
	ld d, a                                          ; $7f8c: $57
	ld c, c                                          ; $7f8d: $49
	ld e, b                                          ; $7f8e: $58
	ld a, c                                          ; $7f8f: $79
	dec a                                            ; $7f90: $3d
	jr c, jr_098_7fd4                                ; $7f91: $38 $41

	ld b, h                                          ; $7f93: $44
	xor b                                            ; $7f94: $a8

jr_098_7f95:
	xor $26                                          ; $7f95: $ee $26
	ld [$1315], a                                    ; $7f97: $ea $15 $13
	db $ec                                           ; $7f9a: $ec
	ld b, b                                          ; $7f9b: $40
	ld d, l                                          ; $7f9c: $55
	ld c, l                                          ; $7f9d: $4d
	and b                                            ; $7f9e: $a0
	add hl, sp                                       ; $7f9f: $39
	ld e, c                                          ; $7fa0: $59
	ld b, c                                          ; $7fa1: $41
	xor $10                                          ; $7fa2: $ee $10
	and b                                            ; $7fa4: $a0
	ld l, [hl]                                       ; $7fa5: $6e
	dec sp                                           ; $7fa6: $3b
	ldh a, [$36]                                     ; $7fa7: $f0 $36
	inc [hl]                                         ; $7fa9: $34
	ld b, [hl]                                       ; $7faa: $46
	ld a, [hl-]                                      ; $7fab: $3a

jr_098_7fac:
	dec a                                            ; $7fac: $3d
	ld a, $3c                                        ; $7fad: $3e $3c
	inc de                                           ; $7faf: $13
	jr c, jr_098_7fec                                ; $7fb0: $38 $3a

	jr c, jr_098_7fef                                ; $7fb2: $38 $3b

	ccf                                              ; $7fb4: $3f
	add l                                            ; $7fb5: $85
	and b                                            ; $7fb6: $a0
	cpl                                              ; $7fb7: $2f

jr_098_7fb8:
	ld b, e                                          ; $7fb8: $43
	ld b, [hl]                                       ; $7fb9: $46
	ld d, a                                          ; $7fba: $57
	ld d, e                                          ; $7fbb: $53
	ld c, c                                          ; $7fbc: $49
	add hl, sp                                       ; $7fbd: $39
	inc [hl]                                         ; $7fbe: $34
	xor $26                                          ; $7fbf: $ee $26
	xor b                                            ; $7fc1: $a8
	ldh a, [$9f]                                     ; $7fc2: $f0 $9f
	ld e, e                                          ; $7fc4: $5b
	ccf                                              ; $7fc5: $3f
	jr c, @+$3f                                      ; $7fc6: $38 $3d

	ld b, l                                          ; $7fc8: $45
	and b                                            ; $7fc9: $a0
	ld [hl], b                                       ; $7fca: $70
	ld [hl], c                                       ; $7fcb: $71
	ld e, c                                          ; $7fcc: $59
	ld b, c                                          ; $7fcd: $41
	xor b                                            ; $7fce: $a8
	ld l, [hl]                                       ; $7fcf: $6e
	dec sp                                           ; $7fd0: $3b
	ldh a, [$36]                                     ; $7fd1: $f0 $36
	inc [hl]                                         ; $7fd3: $34

jr_098_7fd4:
	ld l, a                                          ; $7fd4: $6f
	xor $10                                          ; $7fd5: $ee $10
	and b                                            ; $7fd7: $a0
	cpl                                              ; $7fd8: $2f
	ld b, e                                          ; $7fd9: $43
	ld b, b                                          ; $7fda: $40
	add hl, sp                                       ; $7fdb: $39
	inc a                                            ; $7fdc: $3c
	xor $10                                          ; $7fdd: $ee $10
	xor b                                            ; $7fdf: $a8
	ldh a, [$f8]                                     ; $7fe0: $f0 $f8
	ld b, d                                          ; $7fe2: $42
	ldh a, [$38]                                     ; $7fe3: $f0 $38
	ld d, e                                          ; $7fe5: $53
	ldh a, [rAUDVOL]                                 ; $7fe6: $f0 $24
	pop af                                           ; $7fe8: $f1
	jp $b1f2                                         ; $7fe9: $c3 $f2 $b1


jr_098_7fec:
	db $f4                                           ; $7fec: $f4
	db $eb                                           ; $7fed: $eb
	ld b, h                                          ; $7fee: $44

jr_098_7fef:
	ld a, $3a                                        ; $7fef: $3e $3a
	xor $10                                          ; $7ff1: $ee $10
	and b                                            ; $7ff3: $a0
	ld b, h                                          ; $7ff4: $44
	dec sp                                           ; $7ff5: $3b

jr_098_7ff6:
	ld e, b                                          ; $7ff6: $58
	ld e, c                                          ; $7ff7: $59
	scf                                              ; $7ff8: $37
	db $eb                                           ; $7ff9: $eb
	or $13                                           ; $7ffa: $f6 $13
	db $eb                                           ; $7ffc: $eb
	ld b, b                                          ; $7ffd: $40
	xor b                                            ; $7ffe: $a8
	ld b, [hl]                                       ; $7fff: $46
